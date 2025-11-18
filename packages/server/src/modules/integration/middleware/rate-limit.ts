import type { Context, Next } from "hono";
import { IntegrationService } from "../service.js";

/**
 * Rate Limiting Middleware
 * Checks and enforces rate limits for API keys
 */
export const rateLimitMiddleware = async (c: Context, next: Next) => {
  try {
    const integrationKey = c.get("integrationKey");

    if (!integrationKey) {
      // If no integration key, skip rate limiting
      // (this middleware should be used after apiKeyAuthMiddleware)
      await next();
      return;
    }

    const db = c.get("db");
    const integrationService = new IntegrationService(db);

    // Check rate limits
    const rateLimitResult = await integrationService.checkRateLimit(
      integrationKey.id
    );

    if (!rateLimitResult.allowed && rateLimitResult.limit) {
      const { type, max, current, resetAt } = rateLimitResult.limit;

      // Calculate seconds until reset
      const now = new Date();
      const secondsUntilReset = Math.ceil(
        (resetAt.getTime() - now.getTime()) / 1000
      );

      return c.json(
        {
          success: false,
          error: {
            code: "RATE_LIMIT_EXCEEDED",
            message: `Rate limit exceeded for ${type}`,
            limit: {
              type,
              max,
              current,
              reset_at: resetAt.toISOString(),
              retry_after: secondsUntilReset,
            },
          },
        },
        429,
        {
          "X-RateLimit-Limit": max.toString(),
          "X-RateLimit-Remaining": Math.max(0, max - current).toString(),
          "X-RateLimit-Reset": Math.floor(resetAt.getTime() / 1000).toString(),
          "Retry-After": secondsUntilReset.toString(),
        }
      );
    }

    // Add rate limit headers to successful responses
    c.header("X-RateLimit-Limit", "1000"); // Default hour limit
    c.header("X-RateLimit-Remaining", "999"); // Placeholder

    await next();
  } catch (error) {
    console.error("Rate limiting error:", error);
    // Don't fail the request on rate limiting errors
    await next();
  }
};

/**
 * Create a custom rate limit middleware with specific limits
 */
export const createRateLimitMiddleware = (config: {
  maxRequests: number;
  windowMs: number;
  message?: string;
}) => {
  return async (c: Context, next: Next) => {
    try {
      const integrationKey = c.get("integrationKey");

      if (!integrationKey) {
        await next();
        return;
      }

      const db = c.get("db");
      const integrationService = new IntegrationService(db);

      const rateLimitResult = await integrationService.checkRateLimit(
        integrationKey.id
      );

      if (!rateLimitResult.allowed) {
        return c.json(
          {
            success: false,
            error: {
              code: "RATE_LIMIT_EXCEEDED",
              message:
                config.message ||
                `Rate limit exceeded: ${config.maxRequests} requests per ${config.windowMs}ms`,
            },
          },
          429
        );
      }

      await next();
    } catch (error) {
      console.error("Rate limiting error:", error);
      await next();
    }
  };
};

export default rateLimitMiddleware;
