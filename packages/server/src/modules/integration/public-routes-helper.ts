import { Hono } from "hono";
import type { ServerContext } from "../../framework/types.js";
import {
  apiKeyAuthMiddleware,
  rateLimitMiddleware,
} from "./middleware/index.js";
import { IntegrationService } from "./service.js";

/**
 * Create a public API router with integration middleware
 * This wraps routes with API key auth, rate limiting, and usage logging
 */
export function createPublicRouter() {
  const router = new Hono<{ Variables: ServerContext }>();

  // Apply integration middleware
  router.use("*", apiKeyAuthMiddleware);
  router.use("*", rateLimitMiddleware);

  // Add usage logging middleware
  router.use("*", async (c, next) => {
    const startTime = Date.now();

    await next();

    // Log usage after response
    const integrationKey = c.get("integrationKey");
    if (integrationKey) {
      const responseTime = Date.now() - startTime;
      const db = c.get("db");
      const integrationService = new IntegrationService(db);

      // Log asynchronously (don't block response)
      integrationService
        .logUsage({
          keyId: integrationKey.id,
          tenantId: integrationKey.tenantId,
          method: c.req.method,
          path: c.req.path,
          statusCode: c.res.status,
          responseTime,
          ipAddress: c.req.header("x-forwarded-for") || c.req.header("x-real-ip"),
          userAgent: c.req.header("user-agent"),
        })
        .catch((error) => {
          console.error("Failed to log integration usage:", error);
        });
    }
  });

  return router;
}

/**
 * Helper to get tenant ID from integration context
 * Use this in public route handlers to ensure tenant isolation
 */
export function getIntegrationTenantId(c: any): string | null {
  const integrationKey = c.get("integrationKey");
  return integrationKey?.tenantId || null;
}

/**
 * Helper to check if integration key has required scope
 * Can be used inline in route handlers
 */
export function hasScope(c: any, requiredScope: string): boolean {
  const integrationKey = c.get("integrationKey");
  return integrationKey?.scopes?.includes(requiredScope) || false;
}

/**
 * Middleware to add tenant ID from integration key to context
 * This makes public routes compatible with existing services that expect tenantId
 */
export const injectTenantFromIntegration = async (c: any, next: any) => {
  const integrationKey = c.get("integrationKey");
  if (integrationKey) {
    // Mock user object with integration context
    c.set("user", {
      id: integrationKey.id,
      email: `integration-${integrationKey.id}`,
      tenantId: integrationKey.tenantId,
      roles: ["integration"],
      permissions: integrationKey.scopes,
    });
  }
  await next();
};
