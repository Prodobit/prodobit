import type { Context, Next } from "hono";
import { JwtTokenManager } from "../utils/jwt.js";
import { eq } from "drizzle-orm";
import { users, sessions } from "@prodobit/database";
import type { JwtPayload, User } from "@prodobit/types";

// Extend Hono context to include auth information
declare module "hono" {
  interface ContextVariableMap {
    user: {
      id: string;
      email: string;
      tenantId: string;
      roles?: string[];
      permissions?: string[];
    };
    session: {
      id: string;
      userId: string;
      tenantId?: string;
    };
  }
}

/**
 * Authentication middleware - validates JWT tokens
 */
export const authMiddleware = async (c: Context, next: Next) => {
  try {
    const authHeader = c.req.header("Authorization");
    const token = JwtTokenManager.extractTokenFromHeader(authHeader);

    if (!token) {
      return c.json(
        {
          success: false,
          error: {
            code: "UNAUTHORIZED",
            message: "Access token required",
          },
        },
        401
      );
    }

    // Verify JWT token
    let payload: JwtPayload;
    try {
      payload = JwtTokenManager.verifyAccessToken(token);
    } catch (error) {
      return c.json(
        {
          success: false,
          error: {
            code: "UNAUTHORIZED",
            message: error instanceof Error ? error.message : "Invalid token",
          },
        },
        401
      );
    }

    const db = c.get("db");

    // Get user from database
    const user = await db
      .select({
        id: users.id,
        displayName: users.displayName,
        status: users.status,
      })
      .from(users)
      .where(eq(users.id, payload.sub))
      .limit(1);

    if (user.length === 0) {
      return c.json(
        {
          success: false,
          error: {
            code: "UNAUTHORIZED",
            message: "User not found",
          },
        },
        401
      );
    }

    if (user[0].status !== "active") {
      return c.json(
        {
          success: false,
          error: {
            code: "UNAUTHORIZED",
            message: "User account is not active",
          },
        },
        401
      );
    }

    // Verify session exists and is active
    const session = await db
      .select()
      .from(sessions)
      .where(eq(sessions.userId, payload.sub))
      .limit(1);

    if (session.length === 0 || session[0].status !== "active") {
      return c.json(
        {
          success: false,
          error: {
            code: "UNAUTHORIZED",
            message: "Session expired or invalid",
          },
        },
        401
      );
    }

    // Check if tenantId is present
    if (!payload.tenantId) {
      return c.json({ error: "Tenant ID is required" }, 401);
    }

    // Set user and session context
    c.set("user", {
      id: payload.sub,
      email: user[0].displayName || "", // TODO: Add email field to users table
      tenantId: payload.tenantId,
      roles: payload.roles,
      permissions: payload.permissions,
    });

    c.set("session", {
      id: session[0].id,
      userId: session[0].userId,
      tenantId: session[0].currentTenantId || undefined,
    });

    await next();
  } catch (error) {
    console.error("Auth middleware error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Authentication error",
        },
      },
      500
    );
  }
};

/**
 * Optional authentication middleware - doesn't require auth but adds user context if token present
 */
export const optionalAuthMiddleware = async (c: Context, next: Next) => {
  try {
    const authHeader = c.req.header("Authorization");
    const token = JwtTokenManager.extractTokenFromHeader(authHeader);

    if (token) {
      try {
        const payload = JwtTokenManager.verifyAccessToken(token);
        const db = c.get("db");

        const user = await db
          .select()
          .from(users)
          .where(eq(users.id, payload.sub))
          .limit(1);

        if (user.length > 0 && user[0].status === "active" && payload.tenantId) {
          c.set("user", {
            id: payload.sub,
            email: user[0].displayName || "",
            tenantId: payload.tenantId,
            roles: payload.roles,
            permissions: payload.permissions,
          });
        }
      } catch (error) {
        // Ignore token validation errors in optional middleware
      }
    }

    await next();
  } catch (error) {
    // Don't fail on optional auth errors
    await next();
  }
};

/**
 * Tenant context middleware - ensures user has access to specified tenant
 */
export const tenantContextMiddleware = (requireTenant = true) => {
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

      const tenantId = c.req.param("tenantId") || user.tenantId;

      if (requireTenant && !tenantId) {
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

      if (tenantId && user.tenantId !== tenantId) {
        return c.json(
          {
            success: false,
            error: {
              code: "FORBIDDEN",
              message: "Access denied to this tenant",
            },
          },
          403
        );
      }

      await next();
    } catch (error) {
      console.error("Tenant context middleware error:", error);
      return c.json(
        {
          success: false,
          error: {
            code: "INTERNAL_ERROR",
            message: "Tenant context error",
          },
        },
        500
      );
    }
  };
};

export default authMiddleware;
