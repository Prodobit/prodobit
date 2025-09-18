import type { Context, Next } from 'hono';
import type { Database } from '@prodobit/database';
import { CSRFTokenManager } from '../utils/csrf.js';
import { CookieManager } from '../utils/cookies.js';

/**
 * CSRF Protection Middleware
 * Implements Double-Submit Cookie pattern for CSRF protection
 */
export const csrfProtection = async (c: Context<{ Variables: { db: Database } }>, next: Next) => {
  const method = c.req.method.toUpperCase();
  
  // Skip CSRF check for safe methods
  if (['GET', 'HEAD', 'OPTIONS'].includes(method)) {
    return next();
  }

  // Skip CSRF check for auth endpoints that don't have established sessions yet
  const path = c.req.path;
  const skipPaths = [
    '/api/v1/auth/request-otp',
    '/api/v1/auth/verify-otp', 
    '/api/v1/auth/resend-otp',
    '/api/v1/auth/register-tenant',
    '/api/v1/auth/check-user',
    '/api/v1/auth/send-verification-email',
    '/api/v1/auth/verify-email',
    '/api/v1/auth/resend-verification-email',
    '/api/v1/auth/check-verification-status',
  ];
  
  if (skipPaths.some(skipPath => path.startsWith(skipPath))) {
    return next();
  }

  try {
    // Extract CSRF token from header or body
    const body = method === 'POST' || method === 'PUT' || method === 'PATCH' 
      ? await c.req.json().catch(() => ({}))
      : {};
    
    const headerToken = CSRFTokenManager.extractTokenFromRequest(
      Object.fromEntries(c.req.raw.headers.entries()),
      body
    );

    // Get CSRF token from cookie
    const cookieToken = CookieManager.getCSRFTokenFromCookie(c);

    if (!headerToken || !cookieToken) {
      return c.json({
        success: false,
        error: {
          code: 'CSRF_TOKEN_MISSING',
          message: 'CSRF token is required',
        },
      }, 403);
    }

    // Validate double-submit pattern
    if (!CSRFTokenManager.validateDoubleSubmit(headerToken, cookieToken)) {
      return c.json({
        success: false,
        error: {
          code: 'CSRF_TOKEN_INVALID',
          message: 'Invalid CSRF token',
        },
      }, 403);
    }

    // CSRF validation passed, continue with request
    return next();
  } catch (error) {
    console.error('CSRF validation error:', error);
    return c.json({
      success: false,
      error: {
        code: 'CSRF_VALIDATION_ERROR',
        message: 'CSRF validation failed',
      },
    }, 403);
  }
};

/**
 * Enhanced Auth Middleware with CSRF and device fingerprinting
 */
export const enhancedAuthMiddleware = async (c: Context<{ Variables: { db: Database } }>, next: Next) => {
  const authHeader = c.req.header('Authorization');
  if (!authHeader || !authHeader.startsWith('Bearer ')) {
    return c.json({
      success: false,
      error: {
        code: 'UNAUTHORIZED',
        message: 'Authentication token is required',
      },
    }, 401);
  }

  const token = authHeader.substring(7);
  if (!token) {
    return c.json({
      success: false,
      error: {
        code: 'UNAUTHORIZED', 
        message: 'Invalid token format',
      },
    }, 401);
  }

  try {
    const { JwtTokenManager } = await import('../utils/jwt.js');
    
    // Verify JWT token
    const payload = JwtTokenManager.verifyAccessToken(token);
    
    // Get current device fingerprint
    const currentFingerprint = CookieManager.generateDeviceFingerprint(c);
    
    // Get database and validate session
    const db = c.get('db');
    const { sessions } = await import('@prodobit/database');
    const { eq, and } = await import('drizzle-orm');
    const { TokenUtils } = await import('../utils/tokens.js');
    
    // Find active session with device fingerprint validation
    const session = await db
      .select()
      .from(sessions)
      .where(
        and(
          eq(sessions.userId, payload.sub),
          eq(sessions.status, 'active')
        )
      )
      .limit(1);

    if (session.length === 0) {
      return c.json({
        success: false,
        error: {
          code: 'UNAUTHORIZED',
          message: 'Session not found or expired',
        },
      }, 401);
    }

    const userSession = session[0];

    // Validate device fingerprint if available
    if (userSession.deviceFingerprint && userSession.deviceFingerprint !== currentFingerprint) {
      // Log suspicious activity
      console.warn('Device fingerprint mismatch', {
        userId: payload.sub,
        sessionId: userSession.id,
        expected: userSession.deviceFingerprint,
        actual: currentFingerprint,
      });

      // Optionally revoke session for security
      await db
        .update(sessions)
        .set({
          status: 'revoked',
          revokedAt: new Date(),
          revokedReason: 'suspicious_activity',
        })
        .where(eq(sessions.id, userSession.id));

      return c.json({
        success: false,
        error: {
          code: 'UNAUTHORIZED',
          message: 'Session security violation detected',
        },
      }, 401);
    }

    // Update last activity
    await db
      .update(sessions)
      .set({
        lastActivityAt: new Date(),
        updatedAt: new Date(),
      })
      .where(eq(sessions.id, userSession.id));

    // Set user context for downstream handlers
    c.set('user', {
      id: payload.sub,
      email: '', // Email will be fetched from DB if needed
      tenantId: payload.tenantId,
      roles: payload.roles || [],
      permissions: payload.permissions || [],
    });

    return next();
  } catch (error) {
    console.error('Enhanced auth middleware error:', error);
    return c.json({
      success: false,
      error: {
        code: 'UNAUTHORIZED',
        message: 'Invalid or expired token',
      },
    }, 401);
  }
};

/**
 * Rate limiting middleware for auth endpoints
 */
export const authRateLimit = (requests: number = 5, windowMs: number = 60000) => {
  const attempts = new Map<string, { count: number; resetTime: number }>();
  
  return async (c: Context, next: Next) => {
    const ip = c.req.header('CF-Connecting-IP') || 
               c.req.header('X-Forwarded-For') ||
               'unknown';
    
    const now = Date.now();
    const windowStart = now - windowMs;
    
    // Clean old entries
    for (const [key, value] of attempts.entries()) {
      if (value.resetTime < windowStart) {
        attempts.delete(key);
      }
    }
    
    const clientAttempts = attempts.get(ip);
    
    if (!clientAttempts) {
      attempts.set(ip, { count: 1, resetTime: now + windowMs });
    } else if (clientAttempts.resetTime < now) {
      // Reset window
      attempts.set(ip, { count: 1, resetTime: now + windowMs });
    } else {
      clientAttempts.count++;
      
      if (clientAttempts.count > requests) {
        const resetIn = Math.ceil((clientAttempts.resetTime - now) / 1000);
        
        return c.json({
          success: false,
          error: {
            code: 'RATE_LIMIT_EXCEEDED',
            message: `Too many requests. Try again in ${resetIn} seconds.`,
          },
        }, 429);
      }
    }
    
    return next();
  };
};