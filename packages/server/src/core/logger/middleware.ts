import type { Context, Next } from "hono";
import { logger, createLogger } from "./index.js";
import { nanoid } from "nanoid";

/**
 * Hono middleware for request logging
 * Adds logger to context and logs all requests
 */
export function loggerMiddleware() {
  return async (c: Context, next: Next) => {
    const requestId = nanoid();
    const start = Date.now();

    // Create request-scoped logger
    const requestLogger = createLogger({
      requestId,
      method: c.req.method,
      path: c.req.path,
    });

    // Add logger to context
    c.set("logger", requestLogger);
    c.set("requestId", requestId);

    // Log incoming request
    requestLogger.info(
      {
        method: c.req.method,
        url: c.req.url,
        userAgent: c.req.header("user-agent"),
      },
      "Incoming request"
    );

    try {
      await next();
    } catch (error) {
      // Log error
      requestLogger.error(
        {
          err: error instanceof Error ? error : new Error(String(error)),
          method: c.req.method,
          url: c.req.url,
        },
        "Request error"
      );
      throw error;
    } finally {
      // Log response
      const duration = Date.now() - start;
      const status = c.res.status;

      const logData = {
        method: c.req.method,
        url: c.req.url,
        status,
        duration,
      };

      if (status >= 500) {
        requestLogger.error(logData, "Request completed");
      } else if (status >= 400) {
        requestLogger.warn(logData, "Request completed");
      } else {
        requestLogger.info(logData, "Request completed");
      }
    }
  };
}

/**
 * Middleware to add tenant context to logger
 */
export function tenantLoggerMiddleware() {
  return async (c: Context, next: Next) => {
    const user = c.get("user");
    const baseLogger = c.get("logger") || logger;

    if (user?.tenantId) {
      const tenantLogger = baseLogger.child({
        tenantId: user.tenantId,
        userId: user.id,
      });
      c.set("logger", tenantLogger);
    }

    await next();
  };
}

/**
 * Type extension for Hono context
 */
declare module "hono" {
  interface ContextVariableMap {
    logger: import("pino").Logger;
    requestId: string;
  }
}
