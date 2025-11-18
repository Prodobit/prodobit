import { Hono } from "hono";
import { type } from "arktype";
import {
  createIntegrationKeyRequest,
  updateIntegrationKeyRequest,
  integrationKeyQuery,
  usageStatsQuery,
  setRateLimitRequest,
} from "@prodobit/types";
import { IntegrationService } from "./service.js";
import { authMiddleware } from "../../core/middleware/auth.js";
import { requirePermission } from "../../core/middleware/rbac.js";
import type { ServerContext } from "../../framework/types.js";

export const integrationRoutes = new Hono<{ Variables: ServerContext }>();

// Apply authentication to all routes
integrationRoutes.use("*", authMiddleware);

/**
 * GET /integration/keys - List all API keys for tenant
 */
integrationRoutes.get(
  "/keys",
  requirePermission("integration", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const queryParams = c.req.query();
    const validation = integrationKeyQuery(queryParams);

    let query = undefined;
    if (!(validation instanceof type.errors)) {
      query = validation;
    }

    const integrationService = new IntegrationService(db);
    const keys = await integrationService.listApiKeys(user.tenantId, query);

    return c.json({
      success: true,
      data: keys,
    });
  }
);

/**
 * POST /integration/keys - Create a new API key
 */
integrationRoutes.post(
  "/keys",
  requirePermission("integration", "write"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const body = await c.req.json();
    const validation = createIntegrationKeyRequest(body);

    if (validation instanceof type.errors) {
      return c.json(
        {
          success: false,
          error: {
            code: "VALIDATION_ERROR",
            message: "Invalid request data",
            details: validation.summary,
          },
        },
        400
      );
    }

    const integrationService = new IntegrationService(db);
    const key = await integrationService.createApiKey(
      user.tenantId,
      validation,
      user.id
    );

    return c.json(
      {
        success: true,
        data: key,
        message:
          "API key created successfully. Save the apiKey value - it won't be shown again!",
      },
      201
    );
  }
);

/**
 * GET /integration/keys/:keyId - Get a specific API key
 */
integrationRoutes.get(
  "/keys/:keyId",
  requirePermission("integration", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const keyId = c.req.param("keyId");

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const integrationService = new IntegrationService(db);
    const key = await integrationService.getApiKeyById(keyId, user.tenantId);

    if (!key) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "API key not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: key,
    });
  }
);

/**
 * PATCH /integration/keys/:keyId - Update an API key
 */
integrationRoutes.patch(
  "/keys/:keyId",
  requirePermission("integration", "write"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const keyId = c.req.param("keyId");

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const body = await c.req.json();
    const validation = updateIntegrationKeyRequest(body);

    if (validation instanceof type.errors) {
      return c.json(
        {
          success: false,
          error: {
            code: "VALIDATION_ERROR",
            message: "Invalid request data",
            details: validation.summary,
          },
        },
        400
      );
    }

    const integrationService = new IntegrationService(db);

    try {
      const key = await integrationService.updateApiKey(
        keyId,
        user.tenantId,
        validation
      );

      return c.json({
        success: true,
        data: key,
      });
    } catch (error) {
      return c.json(
        {
          success: false,
          error: {
            code: "UPDATE_FAILED",
            message: error instanceof Error ? error.message : "Update failed",
          },
        },
        400
      );
    }
  }
);

/**
 * POST /integration/keys/:keyId/revoke - Revoke an API key
 */
integrationRoutes.post(
  "/keys/:keyId/revoke",
  requirePermission("integration", "write"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const keyId = c.req.param("keyId");

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const integrationService = new IntegrationService(db);
    const key = await integrationService.revokeApiKey(keyId, user.tenantId);

    if (!key) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "API key not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: key,
      message: "API key revoked successfully",
    });
  }
);

/**
 * DELETE /integration/keys/:keyId - Delete an API key
 */
integrationRoutes.delete(
  "/keys/:keyId",
  requirePermission("integration", "delete"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const keyId = c.req.param("keyId");

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const integrationService = new IntegrationService(db);
    await integrationService.deleteApiKey(keyId, user.tenantId);

    return c.json({
      success: true,
      message: "API key deleted successfully",
    });
  }
);

/**
 * GET /integration/scopes - Get available scopes
 */
integrationRoutes.get(
  "/scopes",
  requirePermission("integration", "read"),
  async (c) => {
    const db = c.get("db");

    const integrationService = new IntegrationService(db);
    const scopes = await integrationService.getAvailableScopes();

    return c.json({
      success: true,
      data: scopes,
    });
  }
);

/**
 * GET /integration/keys/:keyId/usage - Get usage statistics for a key
 */
integrationRoutes.get(
  "/keys/:keyId/usage",
  requirePermission("integration", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const keyId = c.req.param("keyId");

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    // Verify key belongs to tenant
    const integrationService = new IntegrationService(db);
    const key = await integrationService.getApiKeyById(keyId, user.tenantId);

    if (!key) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "API key not found",
          },
        },
        404
      );
    }

    const queryParams = c.req.query();
    const validation = usageStatsQuery({
      keyId,
      ...queryParams,
    });

    if (validation instanceof type.errors) {
      return c.json(
        {
          success: false,
          error: {
            code: "VALIDATION_ERROR",
            message: "Invalid query parameters",
            details: validation.summary,
          },
        },
        400
      );
    }

    const stats = await integrationService.getUsageStats(validation);

    return c.json({
      success: true,
      data: stats,
    });
  }
);

/**
 * GET /integration/keys/:keyId/rate-limits - Get rate limits for a key
 */
integrationRoutes.get(
  "/keys/:keyId/rate-limits",
  requirePermission("integration", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const keyId = c.req.param("keyId");

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    // Verify key belongs to tenant
    const integrationService = new IntegrationService(db);
    const key = await integrationService.getApiKeyById(keyId, user.tenantId);

    if (!key) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "API key not found",
          },
        },
        404
      );
    }

    const limits = await integrationService.getRateLimits(keyId);

    return c.json({
      success: true,
      data: limits,
    });
  }
);

/**
 * PUT /integration/keys/:keyId/rate-limits - Set/update rate limit for a key
 */
integrationRoutes.put(
  "/keys/:keyId/rate-limits",
  requirePermission("integration", "write"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const keyId = c.req.param("keyId");

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    // Verify key belongs to tenant
    const integrationService = new IntegrationService(db);
    const key = await integrationService.getApiKeyById(keyId, user.tenantId);

    if (!key) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "API key not found",
          },
        },
        404
      );
    }

    const body = await c.req.json();
    const validation = setRateLimitRequest(body);

    if (validation instanceof type.errors) {
      return c.json(
        {
          success: false,
          error: {
            code: "VALIDATION_ERROR",
            message: "Invalid request data",
            details: validation.summary,
          },
        },
        400
      );
    }

    const limit = await integrationService.setRateLimit(keyId, validation);

    return c.json({
      success: true,
      data: limit,
    });
  }
);
