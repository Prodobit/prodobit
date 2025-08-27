import { Hono } from "hono";
import { eq, and, isNull, desc, gt, sql } from "drizzle-orm";
import {
  users,
  tenantMemberships,
  roles,
  tenants,
  userInvitations,
  authMethods,
} from "@prodobit/database";
import { authMiddleware } from "./middleware/auth.js";
import { requirePermission } from "./middleware/rbac.js";
import { TokenUtils } from "./utils/tokens.js";
import { EmailService } from "./utils/email.js";

const app = new Hono();

// Apply auth middleware to all routes
app.use("*", authMiddleware);

// Validation interfaces (using simple TypeScript validation instead of schema libraries)
interface CreateInvitationBody {
  email: string;
  roleId: string;
  message?: string | null;
  expiresInDays?: number;
  membershipExpiresAt?: string | null;
  accessLevel?: 'full' | 'limited';
  permissions?: Record<string, any>;
  resourceRestrictions?: Record<string, any>;
}

interface UpdateMembershipBody {
  roleId?: string;
  status?: 'active' | 'inactive' | 'suspended';
  accessLevel?: 'full' | 'limited';
  expiresAt?: string;
  permissions?: Record<string, any>;
  resourceRestrictions?: Record<string, any>;
}

// Simple validation functions
function validateCreateInvitation(body: any): CreateInvitationBody {
  if (!body.email || typeof body.email !== 'string') {
    throw new Error('Valid email is required');
  }
  if (!body.roleId || typeof body.roleId !== 'string') {
    throw new Error('Valid roleId is required');
  }
  
  return {
    email: body.email,
    roleId: body.roleId,
    message: body.message || null,
    expiresInDays: body.expiresInDays || 7,
    membershipExpiresAt: body.membershipExpiresAt || null,
    accessLevel: body.accessLevel || 'full',
    permissions: body.permissions || {},
    resourceRestrictions: body.resourceRestrictions || {},
  };
}

function validateUpdateMembership(body: any): UpdateMembershipBody {
  const result: UpdateMembershipBody = {};
  
  if (body.roleId !== undefined) result.roleId = body.roleId;
  if (body.status !== undefined) result.status = body.status;
  if (body.accessLevel !== undefined) result.accessLevel = body.accessLevel;
  if (body.expiresAt !== undefined) result.expiresAt = body.expiresAt;
  if (body.permissions !== undefined) result.permissions = body.permissions;
  if (body.resourceRestrictions !== undefined) result.resourceRestrictions = body.resourceRestrictions;
  
  return result;
}

// Get tenant members
app.get(
  "/tenants/:tenantId/members",
  requirePermission("tenant_members", "read"),
  async (c) => {
    try {
      const tenantId = c.req.param("tenantId");
      const db = c.get("db");

      const members = await db
        .select({
          membershipId: tenantMemberships.id,
          userId: users.id,
          displayName: users.displayName,
          status: tenantMemberships.status,
          role: tenantMemberships.role,
          roleName: tenantMemberships.role, // Use role as roleName since no roles table data
          accessLevel: tenantMemberships.accessLevel,
          permissions: tenantMemberships.permissions,
          resourceRestrictions: tenantMemberships.resourceRestrictions,
          expiresAt: tenantMemberships.expiresAt,
          joinedAt: tenantMemberships.joinedAt,
          lastLoginAt: tenantMemberships.lastLoginAt,
          invitedBy: tenantMemberships.invitedBy,
          invitedAt: tenantMemberships.invitedAt,
        })
        .from(tenantMemberships)
        .innerJoin(users, sql`${users.id} = ${tenantMemberships.userId}`)
        .where(
          and(
            sql`${tenantMemberships.tenantId} = ${tenantId}::uuid`,
            isNull(tenantMemberships.deletedAt)
          )
        )
        .orderBy(desc(tenantMemberships.joinedAt));

      return c.json({
        success: true,
        data: members,
      });
    } catch (error) {
      console.error("Error fetching tenant members:", error);
      return c.json(
        {
          success: false,
          error: "Failed to fetch tenant members",
        },
        500
      );
    }
  }
);

// Get tenant roles
app.get(
  "/tenants/:tenantId/roles",
  requirePermission("tenant_roles", "read"),
  async (c) => {
    try {
      const tenantId = c.req.param("tenantId");
      const db = c.get("db");

      const tenantRoles = await db
        .select({
          id: roles.id,
          name: roles.name,
          description: roles.description,
          isSystem: roles.isSystem,
          isActive: roles.isActive,
          color: roles.color,
        })
        .from(roles)
        .where(
          and(
            sql`${roles.tenantId} = ${tenantId}::uuid`,
            eq(roles.isActive, true),
            isNull(roles.deletedAt)
          )
        )
        .orderBy(roles.name);

      return c.json({
        success: true,
        data: tenantRoles,
      });
    } catch (error) {
      console.error("Error fetching tenant roles:", error);
      return c.json(
        {
          success: false,
          error: "Failed to fetch tenant roles",
        },
        500
      );
    }
  }
);

// Create user invitation
app.post(
  "/tenants/:tenantId/invitations",
  requirePermission("tenant_members", "create"),
  async (c) => {
    try {
      const tenantId = c.req.param("tenantId");
      const user = c.get("user");
      const invitedBy = user?.id;
      const body = await c.req.json();
      
      if (!invitedBy) {
        return c.json(
          {
            success: false,
            error: "Authentication required - user ID not found",
          },
          401
        );
      }

      let data: CreateInvitationBody;
      try {
        data = validateCreateInvitation(body);
      } catch (error) {
        return c.json(
          {
            success: false,
            error: error instanceof Error ? error.message : "Invalid request data",
          },
          400
        );
      }

      const db = c.get("db");
      
      // Check if user already has a pending invitation for this tenant
      const existingInvitation = await db
        .select()
        .from(userInvitations)
        .where(
          and(
            sql`${userInvitations.tenantId} = ${tenantId}::uuid`,
            eq(userInvitations.email, data.email),
            eq(userInvitations.status, "pending"),
            isNull(userInvitations.deletedAt)
          )
        )
        .limit(1);

      if (existingInvitation.length > 0) {
        return c.json(
          {
            success: false,
            error: "User already has a pending invitation for this tenant",
          },
          400
        );
      }

      // Generate secure token
      const token = TokenUtils.generateSecureToken();

      // Get tenant, role, and inviter details for email
      const invitationData = await db
        .select({
          tenantName: tenants.name,
          roleName: roles.name,
          inviterName: users.displayName,
        })
        .from(tenants)
        .innerJoin(roles, sql`${roles.id} = ${data.roleId}::uuid AND ${roles.tenantId} = ${tenantId}::uuid`)
        .innerJoin(users, eq(users.id, invitedBy))
        .where(sql`${tenants.id} = ${tenantId}::uuid`)
        .limit(1);

      if (invitationData.length === 0) {
        return c.json(
          {
            success: false,
            error: "Invalid tenant, role, or inviter",
          },
          400
        );
      }

      const { tenantName, roleName, inviterName } = invitationData[0];

      // Create invitation record
      const expiresAt = new Date();
      expiresAt.setDate(expiresAt.getDate() + (data.expiresInDays ?? 7));

      const [invitation] = await db
        .insert(userInvitations)
        .values({
          tenantId,
          email: data.email,
          roleId: data.roleId,
          invitedBy,
          token,
          message: data.message,
          expiresAt,
          membershipExpiresAt: data.membershipExpiresAt ? new Date(data.membershipExpiresAt) : null,
          permissions: data.permissions,
          accessLevel: data.accessLevel,
          resourceRestrictions: data.resourceRestrictions,
        })
        .returning();

      // Generate invitation URL
      const baseUrl = process.env.FRONTEND_URL || "http://localhost:3000";
      const invitationUrl = `${baseUrl}/accept-invitation?token=${token}`;

      // Send invitation email
      const emailResult = await EmailService.sendInvitationEmail({
        email: data.email,
        inviterName: inviterName || "Unknown",
        tenantName: tenantName || "Unknown Organization",
        roleName: roleName || "Unknown Role",
        invitationUrl,
        message: data.message ?? undefined,
        expiresInDays: data.expiresInDays ?? 7,
      });

      if (!emailResult.success) {
        // Rollback invitation if email fails
        await db
          .update(userInvitations)
          .set({ deletedAt: new Date() })
          .where(eq(userInvitations.id, invitation.id));

        return c.json(
          {
            success: false,
            error: `Failed to send invitation email: ${emailResult.error}`,
          },
          500
        );
      }

      return c.json({
        success: true,
        data: {
          id: invitation.id,
          email: invitation.email,
          status: invitation.status,
          roleName,
          inviterName: inviterName || "Unknown",
          tenantName: tenantName || "Unknown Organization",
          token: invitation.token,
          expiresAt: invitation.expiresAt,
          insertedAt: invitation.insertedAt,
          message: invitation.message,
        },
      });
    } catch (error) {
      console.error("Error creating invitation:", error);
      return c.json(
        {
          success: false,
          error: "Failed to create invitation",
        },
        500
      );
    }
  }
);

// Get tenant invitations
app.get(
  "/tenants/:tenantId/invitations",
  requirePermission("tenant_members", "read"),
  async (c) => {
    try {
      const tenantId = c.req.param("tenantId");
      const db = c.get("db");

      const invitations = await db
        .select({
          id: userInvitations.id,
          email: userInvitations.email,
          status: userInvitations.status,
          token: userInvitations.token,
          expiresAt: userInvitations.expiresAt,
          insertedAt: userInvitations.insertedAt,
          message: userInvitations.message,
          roleName: roles.name,
          inviterName: users.displayName,
          tenantName: tenants.name,
        })
        .from(userInvitations)
        .innerJoin(roles, eq(roles.id, userInvitations.roleId))
        .innerJoin(users, eq(users.id, userInvitations.invitedBy))
        .innerJoin(tenants, sql`${tenants.id} = ${userInvitations.tenantId}`)
        .where(
          and(
            sql`${userInvitations.tenantId} = ${tenantId}::uuid`,
            isNull(userInvitations.deletedAt)
          )
        )
        .orderBy(userInvitations.insertedAt);

      return c.json({
        success: true,
        data: invitations.map(inv => ({
          ...inv,
          inviterName: inv.inviterName || "Unknown",
          tenantName: inv.tenantName || "Unknown Organization",
        })),
      });
    } catch (error) {
      console.error("Error fetching invitations:", error);
      return c.json(
        {
          success: false,
          error: "Failed to fetch invitations",
        },
        500
      );
    }
  }
);

// Update tenant membership
app.patch(
  "/tenants/:tenantId/members/:membershipId",
  requirePermission("tenant_members", "update"),
  async (c) => {
    try {
      const tenantId = c.req.param("tenantId");
      const membershipId = c.req.param("membershipId");
      const body = await c.req.json();

      let data: UpdateMembershipBody;
      try {
        data = validateUpdateMembership(body);
      } catch (error) {
        return c.json(
          {
            success: false,
            error: error instanceof Error ? error.message : "Invalid request data",
          },
          400
        );
      }

      const db = c.get("db");
      const updateData: any = {
        updatedAt: new Date(),
      };

      if (data.roleId) updateData.role = data.roleId;
      if (data.status) updateData.status = data.status;
      if (data.accessLevel) updateData.accessLevel = data.accessLevel;
      if (data.expiresAt) updateData.expiresAt = new Date(data.expiresAt);
      if (data.permissions) updateData.permissions = data.permissions;
      if (data.resourceRestrictions) updateData.resourceRestrictions = data.resourceRestrictions;

      const [updatedMembership] = await db
        .update(tenantMemberships)
        .set(updateData)
        .where(
          and(
            eq(tenantMemberships.id, membershipId),
            sql`${tenantMemberships.tenantId} = ${tenantId}::uuid`,
            isNull(tenantMemberships.deletedAt)
          )
        )
        .returning();

      if (!updatedMembership) {
        return c.json(
          {
            success: false,
            error: "Membership not found",
          },
          404
        );
      }

      return c.json({
        success: true,
        data: updatedMembership,
      });
    } catch (error) {
      console.error("Error updating membership:", error);
      return c.json(
        {
          success: false,
          error: "Failed to update membership",
        },
        500
      );
    }
  }
);

// Remove tenant member
app.delete(
  "/tenants/:tenantId/members/:membershipId",
  requirePermission("tenant_members", "delete"),
  async (c) => {
    try {
      const tenantId = c.req.param("tenantId");
      const membershipId = c.req.param("membershipId");
      const db = c.get("db");

      const [deletedMembership] = await db
        .update(tenantMemberships)
        .set({
          deletedAt: new Date(),
          updatedAt: new Date(),
        })
        .where(
          and(
            eq(tenantMemberships.id, membershipId),
            sql`${tenantMemberships.tenantId} = ${tenantId}::uuid`,
            isNull(tenantMemberships.deletedAt)
          )
        )
        .returning();

      if (!deletedMembership) {
        return c.json(
          {
            success: false,
            error: "Membership not found",
          },
          404
        );
      }

      return c.json({
        success: true,
        message: "Member removed successfully",
      });
    } catch (error) {
      console.error("Error removing member:", error);
      return c.json(
        {
          success: false,
          error: "Failed to remove member",
        },
        500
      );
    }
  }
);

// Public route: Get invitation details by token
app.get("/invitations/:token", async (c) => {
  try {
    const token = c.req.param("token");
    const db = c.get("db");
    
    console.log('=== DEBUG: Get invitation by token ===');
    console.log('Token:', token);
    console.log('=====================================');

    const invitationData = await db
      .select({
        id: userInvitations.id,
        email: userInvitations.email,
        status: userInvitations.status,
        token: userInvitations.token,
        expiresAt: userInvitations.expiresAt,
        insertedAt: userInvitations.insertedAt,
        message: userInvitations.message,
        roleName: roles.name,
        inviterName: users.displayName,
        tenantName: tenants.name,
      })
      .from(userInvitations)
      .innerJoin(roles, eq(roles.id, userInvitations.roleId))
      .innerJoin(users, eq(users.id, userInvitations.invitedBy))
      .innerJoin(tenants, sql`${tenants.id} = ${userInvitations.tenantId}`)
      .where(
        and(
          eq(userInvitations.token, token),
          isNull(userInvitations.deletedAt)
        )
      )
      .limit(1);

    console.log('Query result count:', invitationData.length);
    if (invitationData.length > 0) {
      console.log('Found invitation:', {
        id: invitationData[0].id,
        email: invitationData[0].email,
        status: invitationData[0].status,
      });
    }

    if (invitationData.length === 0) {
      console.log('No invitation found with token:', token);
      return c.json(
        {
          success: false,
          error: "Invitation not found",
        },
        404
      );
    }

    const invitation = invitationData[0];

    return c.json({
      success: true,
      data: {
        ...invitation,
        inviterName: invitation.inviterName || "Unknown",
        tenantName: invitation.tenantName || "Unknown Organization",
      },
    });
  } catch (error) {
    console.error("Error fetching invitation:", error);
    return c.json(
      {
        success: false,
        error: "Failed to fetch invitation",
      },
      500
    );
  }
});

// Public route: Accept invitation
app.post("/invitations/:token/accept", authMiddleware, async (c) => {
  try {
    const token = c.req.param("token");
    const user = c.get("user");
    const userId = user?.id;
    const db = c.get("db");
    
    if (!userId) {
      return c.json(
        {
          success: false,
          error: "Authentication required",
        },
        401
      );
    }

    // Find and validate invitation
    const invitation = await db
      .select()
      .from(userInvitations)
      .where(
        and(
          eq(userInvitations.token, token),
          eq(userInvitations.status, "pending"),
          gt(userInvitations.expiresAt, new Date()),
          isNull(userInvitations.deletedAt)
        )
      )
      .limit(1);

    if (invitation.length === 0) {
      return c.json(
        {
          success: false,
          error: "Invalid or expired invitation",
        },
        400
      );
    }

    const inv = invitation[0];

    // Check if user already has membership
    const existingMembership = await db
      .select()
      .from(tenantMemberships)
      .where(
        and(
          sql`${tenantMemberships.userId} = ${userId}::uuid`,
          sql`${tenantMemberships.tenantId} = ${inv.tenantId}`,
          isNull(tenantMemberships.deletedAt)
        )
      )
      .limit(1);

    if (existingMembership.length > 0) {
      return c.json(
        {
          success: false,
          error: "User is already a member of this tenant",
        },
        400
      );
    }

    // Create tenant membership
    const [membership] = await db
      .insert(tenantMemberships)
      .values({
        userId,
        tenantId: inv.tenantId,
        role: inv.roleId,
        permissions: inv.permissions,
        accessLevel: inv.accessLevel,
        resourceRestrictions: inv.resourceRestrictions,
        expiresAt: inv.membershipExpiresAt,
        invitedBy: inv.invitedBy,
        invitedAt: inv.insertedAt,
        joinedAt: new Date(),
      })
      .returning();

    // Mark invitation as accepted
    await db
      .update(userInvitations)
      .set({
        status: "accepted",
        acceptedAt: new Date(),
        updatedAt: new Date(),
      })
      .where(eq(userInvitations.id, inv.id));

    return c.json({
      success: true,
      data: membership,
      message: "Invitation accepted successfully",
    });
  } catch (error) {
    console.error("Error accepting invitation:", error);
    return c.json(
      {
        success: false,
        error: "Failed to accept invitation",
      },
      500
    );
  }
});

export default app;