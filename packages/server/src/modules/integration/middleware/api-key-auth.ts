import type { Context, Next } from "hono";
import { IntegrationService } from "../service.js";

// Extend Hono context to include integration key information
declare module "hono" {
  interface ContextVariableMap {
    integrationKey?: {
      id: string;
      tenantId: string;
      scopes: string[];
      environment: "test" | "live";
    };
    integrationTenantId?: string;
  }
}

/**
 * API Key Authentication Middleware
 * Validates API keys and sets integration context
 */
export const apiKeyAuthMiddleware = async (c: Context, next: Next) => {
  try {
    // Extract API key from header or query parameter
    const apiKey =
      c.req.header("X-API-Key") ||
      c.req.header("Authorization")?.replace("Bearer ", "") ||
      c.req.query("api_key");

    if (!apiKey) {
      return c.json(
        {
          success: false,
          error: {
            code: "UNAUTHORIZED",
            message: "API key required. Provide via X-API-Key header or api_key query parameter.",
          },
        },
        401
      );
    }

    // Verify API key
    const db = c.get("db");
    const integrationService = new IntegrationService(db);

    const keyData = await integrationService.verifyApiKey(apiKey);

    if (!keyData) {
      return c.json(
        {
          success: false,
          error: {
            code: "UNAUTHORIZED",
            message: "Invalid or expired API key",
          },
        },
        401
      );
    }

    // Set integration context
    c.set("integrationKey", {
      id: keyData.id,
      tenantId: keyData.tenantId,
      scopes: keyData.scopes,
      environment: keyData.environment as "test" | "live",
    });

    // Set tenant ID for tenant isolation
    c.set("integrationTenantId", keyData.tenantId);

    await next();
  } catch (error) {
    console.error("API key authentication error:", error);
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
 * Optional API Key Authentication Middleware
 * Doesn't require auth but adds context if key is present
 */
export const optionalApiKeyAuthMiddleware = async (c: Context, next: Next) => {
  try {
    const apiKey =
      c.req.header("X-API-Key") ||
      c.req.header("Authorization")?.replace("Bearer ", "") ||
      c.req.query("api_key");

    if (apiKey) {
      const db = c.get("db");
      const integrationService = new IntegrationService(db);

      const keyData = await integrationService.verifyApiKey(apiKey);

      if (keyData) {
        c.set("integrationKey", {
          id: keyData.id,
          tenantId: keyData.tenantId,
          scopes: keyData.scopes,
          environment: keyData.environment as "test" | "live",
        });
        c.set("integrationTenantId", keyData.tenantId);
      }
    }

    await next();
  } catch (error) {
    // Don't fail on optional auth errors
    await next();
  }
};

export default apiKeyAuthMiddleware;
