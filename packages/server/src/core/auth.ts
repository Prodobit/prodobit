import type { Database } from "@prodobit/database";
import {
  authMethods,
  emailVerificationTokens,
  sessions,
  tenantMemberships,
  tenants,
  users,
  roles as rolesTable,
  createDefaultTenantRoles,
  userInvitations,
} from "@prodobit/database";
import type {
  CheckVerificationStatusRequest,
  CheckVerificationStatusResponse,
  LogoutRequest,
  RefreshTokenRequest,
  RequestOTPRequest,
  ResendOTPRequest,
  ResendVerificationEmailRequest,
  SendVerificationEmailRequest,
  SendVerificationEmailResponse,
  VerifyEmailRequest,
  VerifyEmailResponse,
  VerifyOTPRequest,
} from "@prodobit/types";
import { and, desc, eq, sql } from "drizzle-orm";
import { Hono } from "hono";
import { authMiddleware } from "./middleware/auth.js";
import { RBACService } from "./middleware/rbac.js";
import { EmailService } from "./utils/email.js";
import { EmailVerificationService } from "./utils/email-verification.js";
import { JwtTokenManager } from "./utils/jwt.js";
import { OTPManager } from "./utils/otp.js";
import { TokenUtils } from "./utils/tokens.js";
import { CSRFTokenManager } from "./utils/csrf.js";
import { CookieManager } from "./utils/cookies.js";
import { SMSService } from "./utils/sms.js";
import { sendOTP, getProviderAndIdentifier } from "./utils/otp-sender.js";

const auth = new Hono<{ Variables: { db: Database } }>();

// POST /api/v1/auth/check-user - Kullanıcının tenant durumunu kontrol et
auth.post("/check-user", async (c) => {
  try {
    const body = await c.req.json();
    const { email, phone } = body;

    if (!email && !phone) {
      return c.json(
        {
          success: false,
          error: "Email or phone is required",
        },
        400
      );
    }

    const db = c.get("db");

    // Determine provider and identifier
    const provider = email ? "email" : "phone";
    const identifier = email || phone;

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
          eq(authMethods.provider, provider),
          eq(authMethods.providerId, identifier)
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
        role: rolesTable,
      })
      .from(tenantMemberships)
      .innerJoin(tenants, eq(tenantMemberships.tenantId, tenants.id))
      .innerJoin(rolesTable, eq(rolesTable.id, tenantMemberships.roleId))
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

      // Send OTP
      const otpResult = await sendOTP(identifier, provider as "email" | "phone");

      if (!otpResult.success) {
        return c.json(
          {
            success: false,
            error: {
              code: provider === "email" ? "EMAIL_ERROR" : "SMS_ERROR",
              message: `Failed to send verification ${provider === "email" ? "email" : "SMS"}`,
              details: otpResult.error,
            },
          },
          500
        );
      }

      const { expiresAt } = otpResult;

      return c.json({
        success: true,
        requiresTenantSelection: false,
        isNewUser: false,
        message: `Verification code sent to your ${provider}`,
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
          membership: { tenantId: string };
          tenant: { name: string };
          role: { name: string };
        }) => ({
          id: item.membership.tenantId,
          name: item.tenant.name,
          role: item.role.name,
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

    const providerInfo = getProviderAndIdentifier(body);
    if (!providerInfo) {
      return c.json(
        { success: false, message: "Email or phone is required" },
        400
      );
    }

    const { provider, identifier } = providerInfo;
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
        .innerJoin(
          authMethods,
          eq(tenantMemberships.userId, authMethods.userId)
        )
        .where(
          and(
            eq(authMethods.provider, provider),
            eq(authMethods.providerId, identifier),
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

      // Send OTP
      const otpResult = await sendOTP(identifier, provider);

      if (!otpResult.success) {
        return c.json(
          {
            success: false,
            error: {
              code: provider === "email" ? "EMAIL_ERROR" : "SMS_ERROR",
              message: `Failed to send verification ${provider === "email" ? "email" : "SMS"}`,
              details: otpResult.error,
            },
          },
          500
        );
      }

      const { expiresAt } = otpResult;

      return c.json({
        success: true,
        message: `Verification code sent to your ${provider}`,
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
          eq(authMethods.provider, provider),
          eq(authMethods.providerId, identifier)
        )
      )
      .limit(1);

    if (existingUser.length === 0) {
      // New user - send OTP for registration
      const otpResult = await sendOTP(identifier, provider);

      if (!otpResult.success) {
        return c.json(
          {
            success: false,
            error: {
              code: provider === "email" ? "EMAIL_ERROR" : "SMS_ERROR",
              message: `Failed to send verification ${provider === "email" ? "email" : "SMS"}`,
              details: otpResult.error,
            },
          },
          500
        );
      }

      return c.json({
        success: true,
        requiresTenantSelection: true,
        isNewUser: true,
        message: `Verification code sent to your ${provider}`,
        expiresAt: otpResult.expiresAt.toISOString(),
        tenants: [],
      });
    }

    // Existing user - get tenant memberships
    const userTenantMemberships = await db
      .select({
        membership: tenantMemberships,
        tenant: tenants,
        role: rolesTable,
      })
      .from(tenantMemberships)
      .innerJoin(tenants, eq(tenantMemberships.tenantId, tenants.id))
      .innerJoin(rolesTable, eq(rolesTable.id, tenantMemberships.roleId))
      .where(
        and(
          eq(tenantMemberships.userId, existingUser[0].user.id),
          eq(tenantMemberships.status, "active")
        )
      );

    if (userTenantMemberships.length === 0) {
      // User exists but no tenant memberships
      return c.json(
        {
          success: false,
          error: {
            code: "NO_TENANT_ACCESS",
            message: "User has no active tenant memberships",
          },
        },
        403
      );
    }

    if (userTenantMemberships.length === 1) {
      // Single tenant - auto-select and send OTP
      const defaultTenant = userTenantMemberships[0];

      const otpResult = await sendOTP(identifier, provider);

      if (!otpResult.success) {
        return c.json(
          {
            success: false,
            error: {
              code: provider === "email" ? "EMAIL_ERROR" : "SMS_ERROR",
              message: `Failed to send verification ${provider === "email" ? "email" : "SMS"}`,
              details: otpResult.error,
            },
          },
          500
        );
      }

      return c.json({
        success: true,
        requiresTenantSelection: false,
        isNewUser: false,
        message: `Verification code sent to your ${provider}`,
        expiresAt: otpResult.expiresAt.toISOString(),
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
        role: item.role.name,
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

    const providerInfo = getProviderAndIdentifier(body);
    if (!providerInfo) {
      return c.json(
        {
          success: false,
          message: "Email or phone is required",
        },
        400
      );
    }

    const { provider, identifier } = providerInfo;

    // Send OTP
    const otpResult = await sendOTP(identifier, provider);

    if (!otpResult.success) {
      return c.json(
        {
          success: false,
          error: {
            code: provider === "email" ? "EMAIL_ERROR" : "SMS_ERROR",
            message: `Failed to resend verification ${provider === "email" ? "email" : "SMS"}`,
            details: otpResult.error,
          },
        },
        500
      );
    }

    return c.json({
      success: true,
      message: `Verification code resent to your ${provider}`,
      expiresAt: otpResult.expiresAt.toISOString(),
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

    const providerInfo = getProviderAndIdentifier(body);
    if (!providerInfo) {
      return c.json(
        {
          success: false,
          error: {
            code: "INVALID_REQUEST",
            message: "Email or phone is required",
          },
        },
        400
      );
    }

    const { provider, identifier } = providerInfo;

    // Verify OTP (now async with Redis)
    const otpResult = await OTPManager.verifyOTP(identifier, provider, body.code);

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
          eq(authMethods.provider, provider),
          eq(authMethods.providerId, identifier)
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

      // Generate display name from identifier
      const displayName =
        provider === "email"
          ? identifier.split("@")[0]
          : `User_${identifier.slice(-4)}`;

      const newUser = await db
        .insert(users)
        .values({
          displayName,
          status: "active",
          twoFactorEnabled: false,
        })
        .returning();

      user = newUser[0];

      const newAuthMethod = await db
        .insert(authMethods)
        .values({
          userId: user.id,
          provider,
          providerId: identifier,
          verified: true, // OTP verified
          metadata:
            provider === "email"
              ? { email: identifier }
              : { phone: identifier },
        })
        .returning();

      authMethod = newAuthMethod[0];

      // Create default tenant membership for new user
      if (body.tenantId) {
        // Find the "user" role for this tenant
        const userRole = await db
          .select()
          .from(rolesTable)
          .where(
            and(
              eq(rolesTable.tenantId, body.tenantId),
              eq(rolesTable.name, "user")
            )
          )
          .limit(1);

        if (userRole.length > 0) {
          await db.insert(tenantMemberships).values({
            userId: user.id,
            tenantId: body.tenantId,
            roleId: userRole[0].id,
            status: "active",
            permissions: {},
            accessLevel: "full",
            resourceRestrictions: {},
            joinedAt: new Date(),
          });
        }
      }

      // Send welcome message for new users
      if (provider === "email") {
        await EmailService.sendWelcomeEmail(
          identifier,
          user.displayName || undefined
        );
      } else {
        await SMSService.sendWelcomeSMS(
          identifier,
          user.displayName || undefined
        );
      }
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

    // Generate CSRF token and device fingerprint first
    const csrfTokenPair = CSRFTokenManager.generateTokenPair();
    const deviceFingerprint = CookieManager.generateDeviceFingerprint(c);

    // Create session first to get sessionId
    const newSession = await db
      .insert(sessions)
      .values({
        userId: user.id,
        authMethodId: authMethod.id,
        currentTenantId: body.tenantId,
        refreshTokenHash: null, // Will be updated after token generation
        csrfTokenHash: csrfTokenPair.hash,
        expiresAt: new Date(Date.now() + 15 * 60 * 1000), // 15 minutes
        refreshExpiresAt: new Date(Date.now() + 7 * 24 * 60 * 60 * 1000), // 7 days
        userAgent: c.req.header("User-Agent"),
        ipAddress:
          c.req.header("CF-Connecting-IP") || c.req.header("X-Forwarded-For"),
        deviceFingerprint,
        status: "active",
      })
      .returning();

    const sessionId = newSession[0].id;

    // Generate tokens with sessionId
    const tokenPayload = {
      sub: user.id,
      tenantId,
      sessionId,
      roles: roles.map((r) => r.name),
      permissions,
    };
    const tokenPair = JwtTokenManager.generateTokenPair(tokenPayload);

    // Update session with refresh token hash
    await db
      .update(sessions)
      .set({
        refreshTokenHash: TokenUtils.hashToken(tokenPair.refreshToken),
        expiresAt: tokenPair.expiresAt,
        refreshExpiresAt: tokenPair.refreshExpiresAt,
      })
      .where(eq(sessions.id, sessionId));

    // Set secure cookies - now includes access token for client-side auth state
    CookieManager.setAccessTokenCookie(c, tokenPair.accessToken, tokenPair.expiresAt);
    CookieManager.setRefreshTokenCookie(c, tokenPair.refreshToken, tokenPair.refreshExpiresAt);
    CookieManager.setCSRFTokenCookie(c, csrfTokenPair.token, tokenPair.refreshExpiresAt); // CSRF should last as long as refresh token
    
    // Set tenant ID cookie for client-side access
    if (tenantId) {
      CookieManager.setTenantIdCookie(c, tenantId, tokenPair.refreshExpiresAt);
    }

    // Get tenant memberships with role information
    const memberships = await db
      .select({
        id: tenantMemberships.id,
        userId: tenantMemberships.userId,
        tenantId: tenantMemberships.tenantId,
        roleId: tenantMemberships.roleId,
        roleName: rolesTable.name,
        roleDescription: rolesTable.description,
        roleColor: rolesTable.color,
        status: tenantMemberships.status,
        permissions: tenantMemberships.permissions,
        accessLevel: tenantMemberships.accessLevel,
        resourceRestrictions: tenantMemberships.resourceRestrictions,
        expiresAt: tenantMemberships.expiresAt,
        joinedAt: tenantMemberships.joinedAt,
        lastLoginAt: tenantMemberships.lastLoginAt,
        insertedAt: tenantMemberships.insertedAt,
        updatedAt: tenantMemberships.updatedAt,
      })
      .from(tenantMemberships)
      .innerJoin(rolesTable, eq(rolesTable.id, tenantMemberships.roleId))
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
          expiresAt: tokenPair.expiresAt.toISOString(),
          csrfToken: csrfTokenPair.token,
        },
        authMethod: {
          id: authMethod.id,
          provider: authMethod.provider,
          providerId: authMethod.providerId,
          verified: authMethod.verified,
          metadata: authMethod.metadata,
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
    const db = c.get("db");

    // Get refresh token from request body (changed from cookie)
    const body = await c.req.json();
    const refreshToken = body.refreshToken;
    if (!refreshToken) {
      return c.json(
        {
          success: false,
          error: {
            code: "UNAUTHORIZED",
            message: "Refresh token not found",
          },
        },
        401
      );
    }

    // Verify refresh token
    let tokenPayload;
    try {
      tokenPayload = JwtTokenManager.verifyRefreshToken(refreshToken);
    } catch (error) {
      CookieManager.clearAuthCookies(c);
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
            TokenUtils.hashToken(refreshToken)
          ),
          eq(sessions.status, "active")
        )
      )
      .limit(1);

    if (session.length === 0) {
      CookieManager.clearAuthCookies(c);
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

    // Validate device fingerprint
    const currentFingerprint = CookieManager.generateDeviceFingerprint(c);
    if (session[0].deviceFingerprint && session[0].deviceFingerprint !== currentFingerprint) {
      // Revoke session for security
      await db
        .update(sessions)
        .set({
          status: "revoked",
          revokedAt: new Date(),
          revokedReason: "suspicious_activity",
        })
        .where(eq(sessions.id, session[0].id));

      CookieManager.clearAuthCookies(c);
      return c.json(
        {
          success: false,
          error: {
            code: "UNAUTHORIZED",
            message: "Session security violation detected",
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
      CookieManager.clearAuthCookies(c);
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

    // Generate new tokens (including new refresh token for rotation)
    const tokenPayloadForJwt = {
      sub: user[0].id,
      tenantId: tokenPayload.tenantId,
      sessionId: session[0].id, // Include sessionId for proper validation
      roles: roles.map((r) => r.name),
      permissions,
    };
    const tokenPair = JwtTokenManager.generateTokenPair(tokenPayloadForJwt);
    const csrfTokenPair = CSRFTokenManager.generateTokenPair();

    // Update session with new tokens
    await db
      .update(sessions)
      .set({
        refreshTokenHash: TokenUtils.hashToken(tokenPair.refreshToken),
        csrfTokenHash: csrfTokenPair.hash,
        expiresAt: tokenPair.expiresAt,
        refreshExpiresAt: tokenPair.refreshExpiresAt,
        lastActivityAt: new Date(),
        updatedAt: new Date(),
      })
      .where(eq(sessions.id, session[0].id));

    // Set new secure cookies - include access token for client-side auth state
    CookieManager.setAccessTokenCookie(c, tokenPair.accessToken, tokenPair.expiresAt);
    CookieManager.setRefreshTokenCookie(c, tokenPair.refreshToken, tokenPair.refreshExpiresAt);
    CookieManager.setCSRFTokenCookie(c, csrfTokenPair.token, tokenPair.refreshExpiresAt); // CSRF should last as long as refresh token
    
    // Preserve tenant ID cookie
    if (tokenPayload.tenantId) {
      CookieManager.setTenantIdCookie(c, tokenPayload.tenantId, tokenPair.refreshExpiresAt);
    }

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
          expiresAt: tokenPair.expiresAt.toISOString(),
          csrfToken: csrfTokenPair.token,
        },
      },
    });
  } catch (error) {
    console.error("Refresh token error:", error);
    CookieManager.clearAuthCookies(c);
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
      // Logout from current device only using refresh token
      const refreshToken = CookieManager.getRefreshTokenFromCookie(c);
      if (refreshToken) {
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
              eq(sessions.refreshTokenHash, TokenUtils.hashToken(refreshToken))
            )
          );
      }
    }

    // Clear auth cookies
    CookieManager.clearAuthCookies(c);

    return c.json({
      success: true,
      data: null,
      message: "Logged out successfully",
    });
  } catch (error) {
    console.error("Logout error:", error);
    // Clear cookies even on error
    CookieManager.clearAuthCookies(c);
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

    // Get tenant memberships with role information
    const memberships = await db
      .select({
        id: tenantMemberships.id,
        userId: tenantMemberships.userId,
        tenantId: tenantMemberships.tenantId,
        roleId: tenantMemberships.roleId,
        roleName: rolesTable.name,
        roleDescription: rolesTable.description,
        roleColor: rolesTable.color,
        status: tenantMemberships.status,
        permissions: tenantMemberships.permissions,
        accessLevel: tenantMemberships.accessLevel,
        resourceRestrictions: tenantMemberships.resourceRestrictions,
        ipRestrictions: tenantMemberships.ipRestrictions,
        timeRestrictions: tenantMemberships.timeRestrictions,
        expiresAt: tenantMemberships.expiresAt,
        invitedBy: tenantMemberships.invitedBy,
        invitedAt: tenantMemberships.invitedAt,
        joinedAt: tenantMemberships.joinedAt,
        lastLoginAt: tenantMemberships.lastLoginAt,
        insertedAt: tenantMemberships.insertedAt,
        updatedAt: tenantMemberships.updatedAt,
      })
      .from(tenantMemberships)
      .innerJoin(rolesTable, eq(rolesTable.id, tenantMemberships.roleId))
      .where(
        and(
          eq(tenantMemberships.userId, user.id),
          eq(tenantMemberships.status, "active")
        )
      );

    // Get auth method (primary auth method for the user)
    const authMethodResult = await db
      .select()
      .from(authMethods)
      .where(eq(authMethods.userId, user.id))
      .orderBy(desc(authMethods.insertedAt))
      .limit(1);

    const authMethod = authMethodResult[0] || null;

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
        authMethod: authMethod ? {
          id: authMethod.id,
          provider: authMethod.provider,
          providerId: authMethod.providerId,
          verified: authMethod.verified,
          metadata: authMethod.metadata,
        } : null,
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

// POST /api/v1/auth/register-tenant - Tenant kaydı (kullanıcı + tenant oluşturma)
auth.post("/register-tenant", async (c) => {
  try {
    // Config'den tenant kaydının aktif olup olmadığını kontrol et
    const config = c.get("config");
    if (config?.tenantRegistration?.enabled === false) {
      return c.json(
        {
          success: false,
          error: "Tenant registration is disabled",
        },
        403
      );
    }

    const body = await c.req.json();
    const {
      email,
      displayName,
      tenantName,
      tenantSlug,
      tenantDescription,
      settings,
    } = body;

    if (!email || !displayName || !tenantName) {
      return c.json(
        {
          success: false,
          error: "Email, display name and tenant name are required",
        },
        400
      );
    }

    const db = c.get("db");

    // Check if user already exists
    const existingUser = await db
      .select()
      .from(authMethods)
      .where(
        and(
          eq(authMethods.provider, "email"),
          eq(authMethods.providerId, email)
        )
      )
      .limit(1);

    if (existingUser.length > 0) {
      return c.json(
        {
          success: false,
          error: "User with this email already exists",
        },
        409
      );
    }

    // Check if tenant slug already exists (if provided)
    if (tenantSlug) {
      const existingTenant = await db
        .select()
        .from(tenants)
        .where(eq(tenants.slug, tenantSlug))
        .limit(1);

      if (existingTenant.length > 0) {
        return c.json(
          {
            success: false,
            error: "Tenant with this slug already exists",
          },
          409
        );
      }
    }

    // Start transaction
    const result = await db.transaction(async (tx) => {
      // 1. Create user
      const [newUser] = await tx
        .insert(users)
        .values({
          displayName,
          status: "active",
          twoFactorEnabled: false,
        })
        .returning();

      // 2. Create auth method
      const [newAuthMethod] = await tx
        .insert(authMethods)
        .values({
          userId: newUser.id,
          provider: "email",
          providerId: email,
          verified: false, // Email verification needed
        })
        .returning();

      // 3. Create tenant
      const [newTenant] = await tx
        .insert(tenants)
        .values({
          name: tenantName,
          slug:
            tenantSlug || tenantName.toLowerCase().replace(/[^a-z0-9]/g, "-"),
          description: tenantDescription,
          status: "active",
          settings: settings || {},
        })
        .returning();

      // 4. Create default roles for new tenant
      const defaultRoles = await createDefaultTenantRoles(tx, newTenant.id);

      // 5. Create tenant membership (admin role)
      const [newMembership] = await tx
        .insert(tenantMemberships)
        .values({
          userId: newUser.id,
          tenantId: newTenant.id,
          roleId: defaultRoles["admin"],
          status: "active",
          permissions: {},
          accessLevel: "full",
          resourceRestrictions: {},
          joinedAt: new Date(),
        })
        .returning();

      return {
        user: newUser,
        authMethod: newAuthMethod,
        tenant: newTenant,
        membership: newMembership,
        roleName: "admin", // We know it's admin because we just created it
      };
    });

    // Send email verification (if email service is configured)
    let emailSent = false;
    try {
      if (EmailService.isInitialized()) {
        // Generate verification token
        const tokenResult = await EmailVerificationService.generateVerificationToken(
          db,
          email,
          result.user.id
        );

        if (tokenResult.success) {
          // Build verification URL
          const baseUrl = process.env.FRONTEND_URL || "http://localhost:3000";
          const verificationUrl = `${baseUrl}/auth/verify-email?token=${tokenResult.token}`;

          // Send verification email
          const emailResult = await EmailService.sendVerificationEmail({
            email,
            verificationUrl,
            userName: result.user.displayName ?? undefined,
            expiresInHours: 24,
          });

          emailSent = emailResult.success;
        }
      }
    } catch (emailError) {
      console.error("Failed to send verification email:", emailError);
      // Don't fail the registration if email fails
    }

    return c.json(
      {
        success: true,
        message: emailSent
          ? "Registration successful. Please check your email to verify your account."
          : "Registration successful.",
        data: {
          user: {
            id: result.user.id,
            displayName: result.user.displayName,
            status: result.user.status,
          },
          tenant: {
            id: result.tenant.id,
            name: result.tenant.name,
            slug: result.tenant.slug,
            description: result.tenant.description,
            status: result.tenant.status,
          },
          membership: {
            roleId: result.membership.roleId,
            roleName: result.roleName,
            status: result.membership.status,
            accessLevel: result.membership.accessLevel,
          },
          requiresEmailVerification: !result.authMethod.verified,
        },
      },
      201
    );
  } catch (error) {
    console.error("Tenant registration error:", error);
    return c.json(
      {
        success: false,
        error: "Registration failed",
        details: error instanceof Error ? error.message : "Unknown error",
      },
      500
    );
  }
});

// POST /api/v1/auth/send-verification-email - Send verification email
auth.post("/send-verification-email", async (c) => {
  try {
    const body = (await c.req.json()) as SendVerificationEmailRequest;
    const { email } = body;

    if (!email) {
      return c.json({
        success: false,
        message: "Email is required",
      }, 400);
    }

    const db = c.get("db");

    // Check if user exists and get auth method
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
          eq(authMethods.providerId, email)
        )
      )
      .limit(1);

    if (existingAuthMethod.length === 0) {
      return c.json({
        success: false,
        message: "User with this email address does not exist",
      }, 404);
    }

    const authMethod = existingAuthMethod[0].authMethod;
    const user = existingAuthMethod[0].user;

    // Check if already verified
    if (authMethod.verified) {
      return c.json({
        success: false,
        message: "Email address is already verified",
      }, 400);
    }

    // Check rate limiting
    const rateLimitCheck = await EmailVerificationService.canSendVerificationEmail(db, email);
    if (!rateLimitCheck.canSend) {
      return c.json({
        success: false,
        message: rateLimitCheck.message,
      }, 429);
    }

    // Generate verification token
    const tokenResult = await EmailVerificationService.generateVerificationToken(
      db,
      email,
      user.id
    );

    if (!tokenResult.success) {
      return c.json({
        success: false,
        message: tokenResult.message,
        error: tokenResult.error,
      }, 500);
    }

    // Build verification URL - this would need to be configured based on your frontend URL
    const baseUrl = process.env.FRONTEND_URL || "http://localhost:3000";
    const verificationUrl = `${baseUrl}/auth/verify-email?token=${tokenResult.token}`;

    // Send verification email
    if (EmailService.isInitialized()) {
      const emailResult = await EmailService.sendVerificationEmail({
        email,
        verificationUrl,
        userName: user.displayName ?? undefined,
        expiresInHours: 24,
      });

      if (!emailResult.success) {
        return c.json({
          success: false,
          message: "Failed to send verification email",
          error: emailResult.error,
        }, 500);
      }
    } else {
      console.warn("EmailService not initialized, verification email not sent");
      return c.json({
        success: false,
        message: "Email service not configured",
      }, 500);
    }

    return c.json({
      success: true,
      message: "Verification email sent successfully",
      expiresAt: tokenResult.expiresAt?.toISOString(),
    });
  } catch (error) {
    console.error("Send verification email error:", error);
    return c.json({
      success: false,
      message: "Failed to send verification email",
      error: error instanceof Error ? error.message : "Unknown error",
    }, 500);
  }
});

// GET /api/v1/auth/verify-email/:token - Verify email with token
auth.get("/verify-email/:token", async (c) => {
  try {
    const token = c.req.param("token");

    if (!token) {
      return c.json({
        success: false,
        message: "Verification token is required",
      }, 400);
    }

    const db = c.get("db");

    // Verify the token
    const verifyResult = await EmailVerificationService.verifyToken(db, token);

    if (!verifyResult.success) {
      return c.json({
        success: false,
        message: verifyResult.message,
        error: verifyResult.error,
      }, 400);
    }

    const email = verifyResult.email!;

    // Update auth method to verified
    await db
      .update(authMethods)
      .set({
        verified: true,
        updatedAt: new Date(),
      })
      .where(
        and(
          eq(authMethods.provider, "email"),
          eq(authMethods.providerId, email)
        )
      );

    // Invalidate any remaining tokens for this email
    await EmailVerificationService.invalidateTokensForEmail(db, email);

    // For web browsers, you might want to redirect
    const redirectUrl = process.env.FRONTEND_URL 
      ? `${process.env.FRONTEND_URL}/auth/verification-success`
      : undefined;

    return c.json({
      success: true,
      message: "Email verified successfully",
      redirectUrl,
    });
  } catch (error) {
    console.error("Verify email error:", error);
    return c.json({
      success: false,
      message: "Email verification failed",
      error: error instanceof Error ? error.message : "Unknown error",
    }, 500);
  }
});

// POST /api/v1/auth/resend-verification-email - Resend verification email
auth.post("/resend-verification-email", async (c) => {
  try {
    const body = (await c.req.json()) as ResendVerificationEmailRequest;
    const { email } = body;

    if (!email) {
      return c.json({
        success: false,
        message: "Email is required",
      }, 400);
    }

    const db = c.get("db");

    // Check if user exists and get auth method
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
          eq(authMethods.providerId, email)
        )
      )
      .limit(1);

    if (existingAuthMethod.length === 0) {
      return c.json({
        success: false,
        message: "User with this email address does not exist",
      }, 404);
    }

    const authMethod = existingAuthMethod[0].authMethod;
    const user = existingAuthMethod[0].user;

    // Check if already verified
    if (authMethod.verified) {
      return c.json({
        success: false,
        message: "Email address is already verified",
      }, 400);
    }

    // Check rate limiting
    const rateLimitCheck = await EmailVerificationService.canSendVerificationEmail(db, email);
    if (!rateLimitCheck.canSend) {
      return c.json({
        success: false,
        message: rateLimitCheck.message,
      }, 429);
    }

    // Generate new verification token
    const tokenResult = await EmailVerificationService.generateVerificationToken(
      db,
      email,
      user.id
    );

    if (!tokenResult.success) {
      return c.json({
        success: false,
        message: tokenResult.message,
        error: tokenResult.error,
      }, 500);
    }

    // Build verification URL
    const baseUrl = process.env.FRONTEND_URL || "http://localhost:3000";
    const verificationUrl = `${baseUrl}/auth/verify-email?token=${tokenResult.token}`;

    // Send verification email
    if (EmailService.isInitialized()) {
      const emailResult = await EmailService.sendVerificationEmail({
        email,
        verificationUrl,
        userName: user.displayName ?? undefined,
        expiresInHours: 24,
      });

      if (!emailResult.success) {
        return c.json({
          success: false,
          message: "Failed to resend verification email",
          error: emailResult.error,
        }, 500);
      }
    } else {
      console.warn("EmailService not initialized, verification email not sent");
      return c.json({
        success: false,
        message: "Email service not configured",
      }, 500);
    }

    return c.json({
      success: true,
      message: "Verification email resent successfully",
      expiresAt: tokenResult.expiresAt?.toISOString(),
    });
  } catch (error) {
    console.error("Resend verification email error:", error);
    return c.json({
      success: false,
      message: "Failed to resend verification email",
      error: error instanceof Error ? error.message : "Unknown error",
    }, 500);
  }
});

// POST /api/v1/auth/check-verification-status - Check verification status
auth.post("/check-verification-status", async (c) => {
  try {
    const body = (await c.req.json()) as CheckVerificationStatusRequest;
    const { email } = body;

    if (!email) {
      return c.json({
        success: false,
        verified: false,
        message: "Email is required",
      }, 400);
    }

    const db = c.get("db");

    // Check if user exists and get auth method
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
          eq(authMethods.providerId, email)
        )
      )
      .limit(1);

    if (existingAuthMethod.length === 0) {
      return c.json({
        success: false,
        verified: false,
        message: "User with this email address does not exist",
      }, 404);
    }

    const authMethod = existingAuthMethod[0].authMethod;

    // Check verification status
    const isVerified = authMethod.verified;

    if (isVerified) {
      return c.json({
        success: true,
        verified: true,
        message: "Email address is verified",
      });
    }

    // Check for pending tokens
    const tokenInfo = await EmailVerificationService.hasValidToken(db, email);

    return c.json({
      success: true,
      verified: false,
      message: tokenInfo.exists 
        ? "Email verification pending - check your inbox"
        : "Email verification required",
      sentAt: tokenInfo.sentAt?.toISOString(),
      expiresAt: tokenInfo.expiresAt?.toISOString(),
    });
  } catch (error) {
    console.error("Check verification status error:", error);
    return c.json({
      success: false,
      verified: false,
      message: "Failed to check verification status",
      error: error instanceof Error ? error.message : "Unknown error",
    }, 500);
  }
});

// POST /api/v1/auth/accept-invitation (PUBLIC)
auth.post("/accept-invitation", async (c) => {
  try {
    const db = c.get("db");
    const body = await c.req.json();
    const { token } = body;

    if (!token) {
      return c.json({
        success: false,
        error: {
          code: "INVALID_REQUEST",
          message: "Invitation token is required",
        },
      }, 400);
    }

    // Find invitation by token
    const invitation = await db
      .select()
      .from(userInvitations)
      .where(eq(userInvitations.token, token))
      .limit(1);

    if (invitation.length === 0) {
      return c.json({
        success: false,
        error: {
          code: "INVALID_TOKEN",
          message: "Invalid or expired invitation token",
        },
      }, 404);
    }

    const inv = invitation[0];

    // Check if invitation is still valid
    if (inv.status !== "pending") {
      return c.json({
        success: false,
        error: {
          code: "INVALID_STATUS",
          message: `Invitation has already been ${inv.status}`,
        },
      }, 400);
    }

    if (inv.expiresAt && new Date(inv.expiresAt) < new Date()) {
      return c.json({
        success: false,
        error: {
          code: "EXPIRED",
          message: "Invitation has expired",
        },
      }, 400);
    }

    // Check if user exists
    const existingUser = await db
      .select()
      .from(authMethods)
      .where(eq(authMethods.providerId, inv.email))
      .limit(1);

    let userId: string;

    if (existingUser.length > 0) {
      // Existing user - just add to tenant
      userId = existingUser[0].userId;
    } else {
      // New user - create user account automatically
      const newUser = await db
        .insert(users)
        .values({
          displayName: inv.email.split('@')[0], // Use email prefix as display name
          status: "active",
          twoFactorEnabled: false,
        })
        .returning();

      userId = newUser[0].id;

      // Create auth method for the new user
      await db.insert(authMethods).values({
        userId,
        provider: "email",
        providerId: inv.email,
        verified: true, // Auto-verify since they came from invitation
      });
    }

    // Check if user is already a member of this tenant
    const existingMembership = await db
      .select()
      .from(tenantMemberships)
      .where(
        and(
          eq(tenantMemberships.userId, userId),
          eq(tenantMemberships.tenantId, inv.tenantId)
        )
      )
      .limit(1);

    if (existingMembership.length > 0) {
      return c.json({
        success: false,
        error: {
          code: "ALREADY_MEMBER",
          message: "User is already a member of this tenant",
        },
      }, 400);
    }

    // Add user to tenant
    await db.insert(tenantMemberships).values({
      userId,
      tenantId: inv.tenantId,
      roleId: inv.roleId,
      status: "active",
      accessLevel: inv.accessLevel || "full",
      permissions: inv.permissions,
      invitedBy: inv.invitedBy,
      invitedAt: inv.insertedAt,
      joinedAt: new Date(),
    });

    // Update invitation status
    await db
      .update(userInvitations)
      .set({
        status: "accepted",
        acceptedAt: new Date(),
      })
      .where(eq(userInvitations.id, inv.id));

    return c.json({
      success: true,
      data: {
        message: "Invitation accepted successfully",
        tenantId: inv.tenantId,
      },
    });
  } catch (error) {
    console.error("Accept invitation error:", error);
    return c.json({
      success: false,
      error: {
        code: "INTERNAL_ERROR",
        message: "Failed to accept invitation",
      },
    }, 500);
  }
});

// GET /api/v1/auth/sessions - List all active sessions for current user
auth.get("/sessions", authMiddleware, async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");

    const userSessions = await db
      .select({
        id: sessions.id,
        userId: sessions.userId,
        authMethodId: sessions.authMethodId,
        currentTenantId: sessions.currentTenantId,
        expiresAt: sessions.expiresAt,
        refreshExpiresAt: sessions.refreshExpiresAt,
        deviceType: sessions.deviceType,
        deviceName: sessions.deviceName,
        userAgent: sessions.userAgent,
        ipAddress: sessions.ipAddress,
        locationData: sessions.locationData,
        deviceFingerprint: sessions.deviceFingerprint,
        status: sessions.status,
        lastActivityAt: sessions.lastActivityAt,
        revokedAt: sessions.revokedAt,
        revokedReason: sessions.revokedReason,
        insertedAt: sessions.insertedAt,
        updatedAt: sessions.updatedAt,
      })
      .from(sessions)
      .where(
        and(
          eq(sessions.userId, user.id),
          eq(sessions.status, "active")
        )
      )
      .orderBy(desc(sessions.lastActivityAt));

    return c.json({
      success: true,
      data: userSessions,
    });
  } catch (error) {
    console.error("List sessions error:", error);
    return c.json(
      {
        success: false,
        error: "Failed to list sessions",
      },
      500
    );
  }
});

// DELETE /api/v1/auth/sessions/:id - Revoke a specific session
auth.delete("/sessions/:id", authMiddleware, async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const sessionId = c.req.param("id");
    const body = await c.req.json().catch(() => ({}));
    const reason = body.reason || "user_logout";

    // Check if session belongs to user
    const sessionToRevoke = await db
      .select()
      .from(sessions)
      .where(
        and(
          eq(sessions.id, sessionId),
          eq(sessions.userId, user.id)
        )
      )
      .limit(1);

    if (sessionToRevoke.length === 0) {
      return c.json(
        {
          success: false,
          error: "Session not found",
        },
        404
      );
    }

    // Revoke session
    await db
      .update(sessions)
      .set({
        status: "revoked",
        revokedAt: new Date(),
        revokedReason: reason,
        updatedAt: new Date(),
      })
      .where(eq(sessions.id, sessionId));

    return c.json({
      success: true,
      message: "Session revoked successfully",
    });
  } catch (error) {
    console.error("Revoke session error:", error);
    return c.json(
      {
        success: false,
        error: "Failed to revoke session",
      },
      500
    );
  }
});

// DELETE /api/v1/auth/sessions - Revoke all sessions except current
auth.delete("/sessions", authMiddleware, async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json().catch(() => ({}));
    const reason = body.reason || "user_logout";
    const excludeCurrent = body.excludeCurrent !== false; // Default true

    // Get current session from refresh token if we want to exclude it
    let currentSessionId: string | null = null;

    if (excludeCurrent) {
      const refreshToken = CookieManager.getRefreshTokenFromCookie(c);
      if (refreshToken) {
        const refreshTokenHash = TokenUtils.hashToken(refreshToken);
        const currentSession = await db
          .select()
          .from(sessions)
          .where(
            and(
              eq(sessions.userId, user.id),
              eq(sessions.refreshTokenHash, refreshTokenHash)
            )
          )
          .limit(1);

        if (currentSession.length > 0) {
          currentSessionId = currentSession[0].id;
        }
      }
    }

    // Build where conditions
    const conditions = [
      eq(sessions.userId, user.id),
      eq(sessions.status, "active"),
    ];

    if (currentSessionId) {
      // @ts-ignore - drizzle types issue with not()
      conditions.push(sql`${sessions.id} != ${currentSessionId}`);
    }

    // Revoke all sessions (except current if excludeCurrent is true)
    const result = await db
      .update(sessions)
      .set({
        status: "revoked",
        revokedAt: new Date(),
        revokedReason: reason,
        updatedAt: new Date(),
      })
      .where(and(...conditions))
      .returning();

    return c.json({
      success: true,
      message: `${result.length} session(s) revoked successfully`,
      revokedCount: result.length,
    });
  } catch (error) {
    console.error("Revoke all sessions error:", error);
    return c.json(
      {
        success: false,
        error: "Failed to revoke sessions",
      },
      500
    );
  }
});

export { auth };
