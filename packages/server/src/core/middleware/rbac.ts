import {
  permissions,
  rolePermissions,
  roles,
  tenantMemberships,
} from "@prodobit/database";
import type { PermissionCheck } from "@prodobit/types";
import { and, eq, sql } from "drizzle-orm";
import type { Context, Next } from "hono";

/**
 * RBAC Permission Service
 */
export class RBACService {
  /**
   * Get user permissions for a tenant
   */
  static async getUserPermissions(
    db: any,
    userId: string,
    tenantId?: string
  ): Promise<string[]> {
    try {
      // Get user roles in the tenant via tenantMemberships
      const userRoleQuery = db
        .select({
          permissionName: permissions.name,
        })
        .from(tenantMemberships)
        .innerJoin(roles, eq(tenantMemberships.roleId, roles.id))
        .innerJoin(rolePermissions, eq(roles.id, rolePermissions.roleId))
        .innerJoin(
          permissions,
          eq(rolePermissions.permissionId, permissions.id)
        )
        .where(
          and(
            eq(tenantMemberships.userId, userId),
            tenantId ? eq(tenantMemberships.tenantId, tenantId) : undefined,
            eq(tenantMemberships.status, "active"),
            eq(roles.isActive, true)
          )
        );

      const results = await userRoleQuery;
      return results.map((r: { permissionName: string }) => r.permissionName);
    } catch (error) {
      console.error("Error getting user permissions:", error);
      return [];
    }
  }

  /**
   * Check if user has specific permission
   */
  static async hasPermission(
    db: any,
    userId: string,
    check: PermissionCheck,
    tenantId?: string
  ): Promise<boolean> {
    try {
      // Simplified permission check - just check if user is tenant member
      const whereConditions = [
        sql`${tenantMemberships.userId} = ${userId}::uuid`,
        eq(tenantMemberships.status, "active"),
      ];

      if (tenantId) {
        whereConditions.push(
          sql`${tenantMemberships.tenantId} = ${tenantId}::uuid`
        );
      }

      const membership = await db
        .select({
          roleId: tenantMemberships.roleId,
          roleName: roles.name,
        })
        .from(tenantMemberships)
        .innerJoin(roles, eq(roles.id, tenantMemberships.roleId))
        .where(and(...whereConditions))
        .limit(1);

      // If user is active member, allow most operations
      if (membership.length > 0) {
        const userRole = membership[0].roleName;

        // Admin can do everything
        if (userRole === "admin") {
          return true;
        }

        // User can read most things
        if (userRole === "user" && check.action === "read") {
          return true;
        }

        // User cannot create/update/delete
        if (
          userRole === "user" &&
          ["create", "update", "delete"].includes(check.action)
        ) {
          return false;
        }
      }

      return false;
    } catch (error) {
      console.error("Error checking permission:", error);
      return false;
    }
  }

  /**
   * Check if user has any of the specified permissions
   */
  static async hasAnyPermission(
    db: any,
    userId: string,
    checks: PermissionCheck[],
    tenantId?: string
  ): Promise<boolean> {
    for (const check of checks) {
      if (await this.hasPermission(db, userId, check, tenantId)) {
        return true;
      }
    }
    return false;
  }

  /**
   * Check if user has all specified permissions
   */
  static async hasAllPermissions(
    db: any,
    userId: string,
    checks: PermissionCheck[],
    tenantId?: string
  ): Promise<boolean> {
    for (const check of checks) {
      if (!(await this.hasPermission(db, userId, check, tenantId))) {
        return false;
      }
    }
    return true;
  }

  /**
   * Get user roles in tenant
   */
  static async getUserRoles(
    db: any,
    userId: string,
    tenantId?: string
  ): Promise<Array<{ id: string; name: string; description?: string }>> {
    try {
      // Get roles from tenantMemberships instead of userRoles table
      const whereConditions = [
        sql`${tenantMemberships.userId} = ${userId}::uuid`,
        eq(tenantMemberships.status, "active"),
      ];

      if (tenantId) {
        whereConditions.push(
          sql`${tenantMemberships.tenantId} = ${tenantId}::uuid`
        );
      }

      const query = db
        .select({
          id: roles.id,
          name: roles.name,
          description: roles.description,
        })
        .from(tenantMemberships)
        .innerJoin(roles, eq(roles.id, tenantMemberships.roleId))
        .where(and(...whereConditions));

      return await query;
    } catch (error) {
      console.error("Error getting user roles:", error);
      return [];
    }
  }

  /**
   * Check if user is tenant member with specific role
   */
  static async isTenantMember(
    db: any,
    userId: string,
    tenantId: string,
    requiredRole?: string
  ): Promise<boolean> {
    try {
      const membership = await db
        .select({
          roleId: tenantMemberships.roleId,
          roleName: roles.name,
        })
        .from(tenantMemberships)
        .innerJoin(roles, eq(roles.id, tenantMemberships.roleId))
        .where(
          and(
            sql`${tenantMemberships.userId} = ${userId}::uuid`,
            sql`${tenantMemberships.tenantId} = ${tenantId}::uuid`,
            eq(tenantMemberships.status, "active")
          )
        )
        .limit(1);

      if (membership.length === 0) {
        return false;
      }

      if (requiredRole && membership[0].roleName !== requiredRole) {
        return false;
      }

      return true;
    } catch (error) {
      console.error("Error checking tenant membership:", error);
      return false;
    }
  }
}

/**
 * RBAC middleware factory - requires specific permission
 */
export const requirePermission = (
  resource: string,
  action: string,
  scope: "tenant" | "global" | "own" = "tenant"
) => {
  return async (c: Context, next: Next) => {
    try {
      const user = c.get("user");
      if (!user) {
        return c.json(
          {
            success: false,
            error: {
              code: "UNAUTHORIZED",
              message: "Authentication required",
            },
          },
          401
        );
      }

      const db = c.get("db");
      const tenantId = user.tenantId || c.req.param("tenantId");

      const hasPermission = await RBACService.hasPermission(
        db,
        user.id,
        { resource, action, scope },
        tenantId
      );

      if (!hasPermission) {
        return c.json(
          {
            success: false,
            error: {
              code: "FORBIDDEN",
              message: `Permission denied: ${resource}:${action}`,
            },
          },
          403
        );
      }

      await next();
    } catch (error) {
      console.error("RBAC middleware error:", error);
      return c.json(
        {
          success: false,
          error: {
            code: "INTERNAL_ERROR",
            message: "Permission check failed",
          },
        },
        500
      );
    }
  };
};

/**
 * Require any of the specified permissions
 */
export const requireAnyPermission = (
  ...permissions: Array<{ resource: string; action: string }>
) => {
  return async (c: Context, next: Next) => {
    try {
      const user = c.get("user");
      if (!user) {
        return c.json(
          {
            success: false,
            error: {
              code: "UNAUTHORIZED",
              message: "Authentication required",
            },
          },
          401
        );
      }

      const db = c.get("db");
      const tenantId = user.tenantId || c.req.param("tenantId");

      const hasAnyPermission = await RBACService.hasAnyPermission(
        db,
        user.id,
        permissions.map((p) => ({ ...p, scope: "tenant" as const })),
        tenantId
      );

      if (!hasAnyPermission) {
        return c.json(
          {
            success: false,
            error: {
              code: "FORBIDDEN",
              message: "Insufficient permissions",
            },
          },
          403
        );
      }

      await next();
    } catch (error) {
      console.error("RBAC middleware error:", error);
      return c.json(
        {
          success: false,
          error: {
            code: "INTERNAL_ERROR",
            message: "Permission check failed",
          },
        },
        500
      );
    }
  };
};

/**
 * Require specific role
 */
export const requireRole = (roleName: string) => {
  return async (c: Context, next: Next) => {
    try {
      const user = c.get("user");
      if (!user) {
        return c.json(
          {
            success: false,
            error: {
              code: "UNAUTHORIZED",
              message: "Authentication required",
            },
          },
          401
        );
      }

      const db = c.get("db");
      const tenantId = user.tenantId || c.req.param("tenantId");

      const userRoles = await RBACService.getUserRoles(db, user.id, tenantId);
      const hasRole = userRoles.some((role) => role.name === roleName);

      if (!hasRole) {
        return c.json(
          {
            success: false,
            error: {
              code: "FORBIDDEN",
              message: `Role required: ${roleName}`,
            },
          },
          403
        );
      }

      await next();
    } catch (error) {
      console.error("Role middleware error:", error);
      return c.json(
        {
          success: false,
          error: {
            code: "INTERNAL_ERROR",
            message: "Role check failed",
          },
        },
        500
      );
    }
  };
};

/**
 * Require tenant membership
 */
export const requireTenantMember = (requiredRole?: string) => {
  return async (c: Context, next: Next) => {
    try {
      const user = c.get("user");
      if (!user) {
        return c.json(
          {
            success: false,
            error: {
              code: "UNAUTHORIZED",
              message: "Authentication required",
            },
          },
          401
        );
      }

      const db = c.get("db");
      const tenantId = user.tenantId || c.req.param("tenantId");

      if (!tenantId) {
        return c.json(
          {
            success: false,
            error: {
              code: "BAD_REQUEST",
              message: "Tenant ID required",
            },
          },
          400
        );
      }

      const isMember = await RBACService.isTenantMember(
        db,
        user.id,
        tenantId,
        requiredRole
      );

      if (!isMember) {
        return c.json(
          {
            success: false,
            error: {
              code: "FORBIDDEN",
              message: requiredRole
                ? `Tenant role required: ${requiredRole}`
                : "Tenant membership required",
            },
          },
          403
        );
      }

      await next();
    } catch (error) {
      console.error("Tenant membership middleware error:", error);
      return c.json(
        {
          success: false,
          error: {
            code: "INTERNAL_ERROR",
            message: "Membership check failed",
          },
        },
        500
      );
    }
  };
};

export default RBACService;
