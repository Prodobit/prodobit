import type { Database } from "@prodobit/database";
import {
  authMethods,
  sessions,
  tenantMemberships,
  tenants,
  users,
} from "@prodobit/database";
import type {
  LogoutRequest,
  RefreshTokenRequest,
  RequestOTPRequest,
  ResendOTPRequest,
  VerifyOTPRequest,
} from "@prodobit/types";
import { and, eq } from "drizzle-orm";
import { Hono } from "hono";
import { authMiddleware } from "./middleware/auth.js";
import { RBACService } from "./middleware/rbac.js";
import { EmailService } from "./utils/email.js";
import { JwtTokenManager } from "./utils/jwt.js";
import { OTPManager } from "./utils/otp.js";
import { TokenUtils } from "./utils/tokens.js";

const auth = new Hono<{ Variables: { db: Database } }>();

// POST /api/v1/auth/check-user - Kullanıcının tenant durumunu kontrol et
auth.post("/check-user", async (c) => {
  try {
    const body = await c.req.json();
    const { email } = body;

    if (!email) {
      return c.json(
        {
          success: false,
          error: "Email is required",
        },
        400
      );
    }

    const db = c.get("db");

    // Check if user exists in database
    const existingUser = await db
      .select({
        user: users,
        authMethod: authMethods,
      })
      .from(authMethods)
      .innerJoin(users, eq(authMethods.userId, users.id))
      .where(
        and(
          eq(authMethods.provider, "email"),
          eq(authMethods.providerId, email)
        )
      )
      .limit(1);

    if (existingUser.length === 0) {
      // New user
      return c.json({
        success: true,
        requiresTenantSelection: true,
        isNewUser: true,
        tenants: [],
      });
    }

    // Existing user - get tenant memberships with tenant details
    const userTenantMemberships = await db
      .select({
        membership: tenantMemberships,
        tenant: tenants,
      })
      .from(tenantMemberships)
      .innerJoin(tenants, eq(tenantMemberships.tenantId, tenants.id))
      .where(
        and(
          eq(tenantMemberships.userId, existingUser[0].user.id),
          eq(tenantMemberships.status, "active")
        )
      );

    if (userTenantMemberships.length === 0) {
      // User exists but no tenant memberships
      return c.json({
        success: true,
        requiresTenantSelection: true,
        isNewUser: false,
        tenants: [],
      });
    }

    if (userTenantMemberships.length === 1) {
      // Single tenant - auto-select and send OTP
      const defaultTenant = userTenantMemberships[0];
      
      // Generate and store OTP
      const { code, expiresAt } = OTPManager.storeOTP(body.email, {
        expiresInMinutes: 10,
      });

      // Send OTP via email
      const emailResult = await EmailService.sendOTPEmail({
        email: body.email,
        code,
        expiresInMinutes: 10,
      });

      if (!emailResult.success) {
        return c.json(
          {
            success: false,
            error: {
              code: "EMAIL_ERROR",
              message: "Failed to send verification email",
              details: emailResult.error,
            },
          },
          500
        );
      }

      return c.json({
        success: true,
        requiresTenantSelection: false,
        isNewUser: false,
        message: "Verification code sent to your email",
        expiresAt: expiresAt.toISOString(),
        defaultTenantId: defaultTenant.membership.tenantId,
        defaultTenantName: defaultTenant.tenant.name,
      });
    }

    // Multiple tenants - require selection
    return c.json({
      success: true,
      requiresTenantSelection: true,
      isNewUser: false,
      tenants: userTenantMemberships.map(
        (item: {
          membership: { tenantId: string; role: string };
          tenant: { name: string };
        }) => ({
          id: item.membership.tenantId,
          name: item.tenant.name,
          role: item.membership.role,
        })
      ),
    });
  } catch (error) {
    console.error("Check user error:", error);
    return c.json(
      {
        success: false,
        error: "Internal server error",
      },
      500
    );
  }
});

// POST /api/v1/auth/request-otp
auth.post("/request-otp", async (c) => {
  try {
    const body = (await c.req.json()) as RequestOTPRequest;
    
    if (!body.email) {
      return c.json({ success: false, message: "Email is required" }, 400);
    }

    const db = c.get("db");

    // Check if tenantId is provided (second request with selected tenant)
    if (body.tenantId) {
      // Validate that user has access to this tenant
      const userTenantMembership = await db
        .select({
          membership: tenantMemberships,
          tenant: tenants,
        })
        .from(tenantMemberships)
        .innerJoin(tenants, eq(tenantMemberships.tenantId, tenants.id))
        .innerJoin(authMethods, eq(tenantMemberships.userId, authMethods.userId))
        .where(
          and(
            eq(authMethods.provider, "email"),
            eq(authMethods.providerId, body.email),
            eq(tenantMemberships.tenantId, body.tenantId),
            eq(tenantMemberships.status, "active")
          )
        )
        .limit(1);

      if (userTenantMembership.length === 0) {
        return c.json(
          {
            success: false,
            error: {
              code: "UNAUTHORIZED",
              message: "Access to this tenant is not allowed",
            },
          },
          403
        );
      }

      // Generate and store OTP
      const { code, expiresAt } = OTPManager.storeOTP(body.email, {
        expiresInMinutes: 10,
      });

      // Send OTP via email
      const emailResult = await EmailService.sendOTPEmail({
        email: body.email,
        code,
        expiresInMinutes: 10,
      });

      if (!emailResult.success) {
        return c.json(
          {
            success: false,
            error: {
              code: "EMAIL_ERROR",
              message: "Failed to send verification email",
              details: emailResult.error,
            },
          },
          500
        );
      }

      return c.json({
        success: true,
        message: "Verification code sent to your email",
        expiresAt: expiresAt.toISOString(),
        selectedTenantId: userTenantMembership[0].membership.tenantId,
        selectedTenantName: userTenantMembership[0].tenant.name,
      });
    }

    // First request - check user's tenant status
    const existingUser = await db
      .select({
        user: users,
        authMethod: authMethods,
      })
      .from(authMethods)
      .innerJoin(users, eq(authMethods.userId, users.id))
      .where(
        and(
          eq(authMethods.provider, "email"),
          eq(authMethods.providerId, body.email)
        )
      )
      .limit(1);

    if (existingUser.length === 0) {
      // New user - send OTP for registration
      const { code, expiresAt } = OTPManager.storeOTP(body.email, {
        expiresInMinutes: 10,
      });

      const emailResult = await EmailService.sendOTPEmail({
        email: body.email,
        code,
        expiresInMinutes: 10,
      });

      if (!emailResult.success) {
        return c.json(
          {
            success: false,
            error: {
              code: "EMAIL_ERROR",
              message: "Failed to send verification email",
              details: emailResult.error,
            },
          },
          500
        );
      }

      return c.json({
        success: true,
        requiresTenantSelection: true,
        isNewUser: true,
        message: "Verification code sent to your email",
        expiresAt: expiresAt.toISOString(),
        tenants: [],
      });
    }

    // Existing user - get tenant memberships
    const userTenantMemberships = await db
      .select({
        membership: tenantMemberships,
        tenant: tenants,
      })
      .from(tenantMemberships)
      .innerJoin(tenants, eq(tenantMemberships.tenantId, tenants.id))
      .where(
        and(
          eq(tenantMemberships.userId, existingUser[0].user.id),
          eq(tenantMemberships.status, "active")
        )
      );

    if (userTenantMemberships.length === 0) {
      // User exists but no tenant memberships
      return c.json({
        success: false,
        error: {
          code: "NO_TENANT_ACCESS",
          message: "User has no active tenant memberships",
        },
      }, 403);
    }

    if (userTenantMemberships.length === 1) {
      // Single tenant - auto-select and send OTP
      const defaultTenant = userTenantMemberships[0];
      
      const { code, expiresAt } = OTPManager.storeOTP(body.email, {
        expiresInMinutes: 10,
      });

      const emailResult = await EmailService.sendOTPEmail({
        email: body.email,
        code,
        expiresInMinutes: 10,
      });

      if (!emailResult.success) {
        return c.json(
          {
            success: false,
            error: {
              code: "EMAIL_ERROR",
              message: "Failed to send verification email",
              details: emailResult.error,
            },
          },
          500
        );
      }

      return c.json({
        success: true,
        requiresTenantSelection: false,
        isNewUser: false,
        message: "Verification code sent to your email",
        expiresAt: expiresAt.toISOString(),
        defaultTenantId: defaultTenant.membership.tenantId,
        defaultTenantName: defaultTenant.tenant.name,
      });
    }

    // Multiple tenants - require selection, no OTP yet
    return c.json({
      success: true,
      requiresTenantSelection: true,
      isNewUser: false,
      message: "Please select your organization",
      tenants: userTenantMemberships.map((item) => ({
        id: item.membership.tenantId,
        name: item.tenant.name,
        role: item.membership.role,
      })),
    });

  } catch (error) {
    console.error("Request OTP error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to process OTP request",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /api/v1/auth/resend-otp
auth.post("/resend-otp", async (c) => {
  try {
    const body = (await c.req.json()) as ResendOTPRequest;

    // Generate and store new OTP
    const { code, expiresAt } = OTPManager.storeOTP(body.email, {
      expiresInMinutes: 10,
    });

    // Send OTP via email
    const emailResult = await EmailService.sendOTPEmail({
      email: body.email,
      code,
      expiresInMinutes: 10,
    });

    if (!emailResult.success) {
      return c.json(
        {
          success: false,
          error: {
            code: "EMAIL_ERROR",
            message: "Failed to resend verification email",
            details: emailResult.error,
          },
        },
        500
      );
    }

    return c.json({
      success: true,
      message: "Verification code resent to your email",
      expiresAt: expiresAt.toISOString(),
    });
  } catch (error) {
    console.error("Resend OTP error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to resend verification code",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /api/v1/auth/verify-otp (Login with OTP)
auth.post("/verify-otp", async (c) => {
  try {
    const body = (await c.req.json()) as VerifyOTPRequest;
    const db = c.get("db");

    // Verify OTP
    const otpResult = OTPManager.verifyOTP(body.email, body.code);

    if (!otpResult.success) {
      return c.json(
        {
          success: false,
          error: {
            code: "UNAUTHORIZED",
            message: otpResult.message,
            attemptsLeft: otpResult.attemptsLeft,
          },
        },
        401
      );
    }

    // Check if user exists
    let user = null;
    let authMethod = null;
    let isNewUser = false;

    const existingAuthMethod = await db
      .select({
        authMethod: authMethods,
        user: users,
      })
      .from(authMethods)
      .innerJoin(users, eq(authMethods.userId, users.id))
      .where(
        and(
          eq(authMethods.provider, "email"),
          eq(authMethods.providerId, body.email)
        )
      )
      .limit(1);

    if (existingAuthMethod.length > 0) {
      // Existing user
      authMethod = existingAuthMethod[0]!.authMethod;
      user = existingAuthMethod[0]!.user;
    } else {
      // New user - create account
      isNewUser = true;

      const newUser = await db
        .insert(users)
        .values({
          displayName: body.email.split("@")[0], // Use email prefix as display name
          status: "active",
          twoFactorEnabled: false,
        })
        .returning();

      user = newUser[0];

      const newAuthMethod = await db
        .insert(authMethods)
        .values({
          userId: user.id,
          provider: "email",
          providerId: body.email,
          verified: true, // OTP verified = email verified
          metadata: {
            email: body.email,
          },
        })
        .returning();

      authMethod = newAuthMethod[0];

      // Create default tenant membership for new user
      if (body.tenantId) {
        await db.insert(tenantMemberships).values({
          userId: user.id,
          tenantId: body.tenantId,
          role: "user", // Default role for new users
          status: "active",
          joinedAt: new Date(),
        });
      }

      // Send welcome email for new users
      await EmailService.sendWelcomeEmail(
        body.email,
        user.displayName || undefined
      );
    }

    // Check if user is active
    if (user.status !== "active") {
      return c.json(
        {
          success: false,
          error: {
            code: "UNAUTHORIZED",
            message: "Account is not active",
          },
        },
        401
      );
    }

    // Get user permissions and roles for token
    const permissions = await RBACService.getUserPermissions(
      db,
      user.id,
      body.tenantId
    );
    const roles = await RBACService.getUserRoles(db, user.id, body.tenantId);

    // Ensure we have a tenantId - either from request or user's default
    let tenantId = body.tenantId;
    if (!tenantId) {
      // If no tenantId provided, we should get user's default or first tenant
      // For now, throw error - this should be handled properly in production
      throw new Error("tenantId is required for token generation");
    }

    // Generate tokens
    const tokenPayload = {
      sub: user.id,
      tenantId,
      roles: roles.map((r) => r.name),
      permissions,
    };
    const tokenPair = JwtTokenManager.generateTokenPair(tokenPayload);

    // Create session
    await db
      .insert(sessions)
      .values({
        userId: user.id,
        authMethodId: authMethod.id,
        currentTenantId: body.tenantId,
        accessTokenHash: TokenUtils.hashToken(tokenPair.accessToken),
        refreshTokenHash: tokenPair.refreshToken
          ? TokenUtils.hashToken(tokenPair.refreshToken)
          : null,
        expiresAt: tokenPair.expiresAt,
        refreshExpiresAt: tokenPair.refreshExpiresAt,
        userAgent: c.req.header("User-Agent"),
        ipAddress:
          c.req.header("CF-Connecting-IP") || c.req.header("X-Forwarded-For"),
        status: "active",
      })
      .returning();

    // Get tenant memberships
    const memberships = await db
      .select()
      .from(tenantMemberships)
      .where(
        and(
          eq(tenantMemberships.userId, user.id),
          eq(tenantMemberships.status, "active")
        )
      );

    return c.json({
      success: true,
      data: {
        user: {
          id: user.id,
          displayName: user.displayName,
          twoFactorEnabled: user.twoFactorEnabled,
          status: user.status,
          insertedAt: user.insertedAt.toISOString(),
          updatedAt: user.updatedAt.toISOString(),
        },
        session: {
          accessToken: tokenPair.accessToken,
          refreshToken: tokenPair.refreshToken,
          expiresAt: tokenPair.expiresAt.toISOString(),
        },
        tenantMemberships: memberships,
        isNewUser,
      },
    });
  } catch (error) {
    console.error("Verify OTP error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Authentication failed",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /api/v1/auth/refresh
auth.post("/refresh", async (c) => {
  try {
    const body = (await c.req.json()) as RefreshTokenRequest;
    const db = c.get("db");

    // Verify refresh token
    let tokenPayload;
    try {
      tokenPayload = JwtTokenManager.verifyRefreshToken(body.refreshToken);
    } catch (error) {
      return c.json(
        {
          success: false,
          error: {
            code: "UNAUTHORIZED",
            message: "Invalid refresh token",
          },
        },
        401
      );
    }

    // Find active session with this refresh token
    const session = await db
      .select()
      .from(sessions)
      .where(
        and(
          eq(sessions.userId, tokenPayload.sub),
          eq(
            sessions.refreshTokenHash,
            TokenUtils.hashToken(body.refreshToken)
          ),
          eq(sessions.status, "active")
        )
      )
      .limit(1);

    if (session.length === 0) {
      return c.json(
        {
          success: false,
          error: {
            code: "UNAUTHORIZED",
            message: "Session not found or expired",
          },
        },
        401
      );
    }

    // Get user
    const user = await db
      .select()
      .from(users)
      .where(eq(users.id, tokenPayload.sub))
      .limit(1);

    if (user.length === 0 || user[0].status !== "active") {
      return c.json(
        {
          success: false,
          error: {
            code: "UNAUTHORIZED",
            message: "User not found or inactive",
          },
        },
        401
      );
    }

    // Get fresh permissions
    const permissions = await RBACService.getUserPermissions(
      db,
      user[0].id,
      tokenPayload.tenantId
    );
    const roles = await RBACService.getUserRoles(
      db,
      user[0].id,
      tokenPayload.tenantId
    );

    // Ensure tenantId exists for refresh token
    if (!tokenPayload.tenantId) {
      throw new Error("tenantId is required for token refresh");
    }

    // Generate new tokens
    const tokenPayloadForJwt = {
      sub: user[0].id,
      tenantId: tokenPayload.tenantId,
      roles: roles.map((r) => r.name),
      permissions,
    };
    const tokenPair = JwtTokenManager.generateTokenPair(tokenPayloadForJwt);

    // Update session
    await db
      .update(sessions)
      .set({
        accessTokenHash: TokenUtils.hashToken(tokenPair.accessToken),
        refreshTokenHash: tokenPair.refreshToken
          ? TokenUtils.hashToken(tokenPair.refreshToken)
          : null,
        expiresAt: tokenPair.expiresAt,
        refreshExpiresAt: tokenPair.refreshExpiresAt,
        lastActivityAt: new Date(),
        updatedAt: new Date(),
      })
      .where(eq(sessions.id, session[0].id));

    return c.json({
      success: true,
      data: {
        user: {
          id: user[0].id,
          displayName: user[0].displayName,
          twoFactorEnabled: user[0].twoFactorEnabled,
          status: user[0].status,
          insertedAt: user[0].insertedAt.toISOString(),
          updatedAt: user[0].updatedAt.toISOString(),
        },
        session: {
          accessToken: tokenPair.accessToken,
          refreshToken: tokenPair.refreshToken,
          expiresAt: tokenPair.expiresAt.toISOString(),
        },
      },
    });
  } catch (error) {
    console.error("Refresh token error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Token refresh failed",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /api/v1/auth/logout
auth.post("/logout", authMiddleware, async (c) => {
  try {
    const body = (await c.req.json()) as LogoutRequest;
    const db = c.get("db");
    const user = c.get("user");

    if (body.allDevices) {
      // Logout from all devices
      await db
        .update(sessions)
        .set({
          status: "revoked",
          revokedAt: new Date(),
          revokedReason: "user_logout",
          updatedAt: new Date(),
        })
        .where(eq(sessions.userId, user.id));
    } else {
      // Logout from current device only
      const authHeader = c.req.header("Authorization");
      const token = JwtTokenManager.extractTokenFromHeader(authHeader);

      if (token) {
        await db
          .update(sessions)
          .set({
            status: "revoked",
            revokedAt: new Date(),
            revokedReason: "user_logout",
            updatedAt: new Date(),
          })
          .where(
            and(
              eq(sessions.userId, user.id),
              eq(sessions.accessTokenHash, TokenUtils.hashToken(token))
            )
          );
      }
    }

    return c.json({
      success: true,
      data: null,
      message: "Logged out successfully",
    });
  } catch (error) {
    console.error("Logout error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Logout failed",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /api/v1/auth/me
auth.get("/me", authMiddleware, async (c) => {
  try {
    const user = c.get("user");
    const db = c.get("db");

    // Get full user details
    const userDetails = await db
      .select()
      .from(users)
      .where(eq(users.id, user.id))
      .limit(1);

    if (userDetails.length === 0) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "User not found",
          },
        },
        404
      );
    }

    // Get tenant memberships
    const memberships = await db
      .select()
      .from(tenantMemberships)
      .where(
        and(
          eq(tenantMemberships.userId, user.id),
          eq(tenantMemberships.status, "active")
        )
      );

    // Get roles and permissions
    const roles = await RBACService.getUserRoles(db, user.id, user.tenantId);
    const permissions = await RBACService.getUserPermissions(
      db,
      user.id,
      user.tenantId
    );

    return c.json({
      success: true,
      data: {
        user: {
          id: userDetails[0].id,
          displayName: userDetails[0].displayName,
          twoFactorEnabled: userDetails[0].twoFactorEnabled,
          status: userDetails[0].status,
          insertedAt: userDetails[0].insertedAt.toISOString(),
          updatedAt: userDetails[0].updatedAt.toISOString(),
        },
        tenantMemberships: memberships,
        roles,
        permissions,
        currentTenant: user.tenantId,
      },
    });
  } catch (error) {
    console.error("Get user error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get user information",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

export { auth };
