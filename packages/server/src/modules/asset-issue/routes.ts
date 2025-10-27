import { Hono } from "hono";
import { type } from "arktype";
import {
  createAssetIssueRequest,
  updateAssetIssueRequest,
  assetIssueQuery,
} from "@prodobit/types";
import { AssetIssueService } from "./service.js";
import { authMiddleware } from "../../core/middleware/auth.js";
import { requirePermission } from "../../core/middleware/rbac.js";

const assetIssueRoutes = new Hono();

// Apply authentication to all routes
assetIssueRoutes.use("*", authMiddleware);

// GET /asset-issues - Get all asset issues with optional filters
assetIssueRoutes.get(
  "/",
  requirePermission("asset-issue", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const queryParams = c.req.query();
    const validation = assetIssueQuery(queryParams);

    let query = undefined;
    if (!(validation instanceof type.errors)) {
      query = validation;
    }

    const assetIssueService = new AssetIssueService(db);
    const issues = await assetIssueService.getAssetIssues(
      user.tenantId,
      query
    );

    return c.json({
      success: true,
      data: issues,
    });
  }
);

// GET /asset-issues/statistics - Get issue statistics
assetIssueRoutes.get(
  "/statistics",
  requirePermission("asset-issue", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const assetIssueService = new AssetIssueService(db);
    const stats = await assetIssueService.getIssueStatistics(user.tenantId);

    return c.json({
      success: true,
      data: stats,
    });
  }
);

// GET /asset-issues/critical - Get critical issues
assetIssueRoutes.get(
  "/critical",
  requirePermission("asset-issue", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const assetIssueService = new AssetIssueService(db);
    const issues = await assetIssueService.getCriticalIssues(user.tenantId);

    return c.json({
      success: true,
      data: issues,
    });
  }
);

// GET /asset-issues/:id - Get single asset issue
assetIssueRoutes.get(
  "/:id",
  requirePermission("asset-issue", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { id } = c.req.param();

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const assetIssueService = new AssetIssueService(db);
    const issue = await assetIssueService.getAssetIssueById(id, user.tenantId);

    if (!issue) {
      return c.json(
        {
          success: false,
          error: { code: "NOT_FOUND", message: "Asset issue not found" },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: issue,
    });
  }
);

// POST /asset-issues - Create new asset issue
assetIssueRoutes.post(
  "/",
  requirePermission("asset-issue", "write"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");

    const body = await c.req.json();
    const validation = createAssetIssueRequest(body);

    if (validation instanceof type.errors) {
      return c.json(
        {
          success: false,
          error: {
            code: "VALIDATION_ERROR",
            message: "Validation failed",
            details: validation,
          },
        },
        400
      );
    }

    const data = validation;

    if (!user?.tenantId || !user?.id) {
      return c.json({ error: "Tenant ID and User ID required" }, 400);
    }

    const assetIssueService = new AssetIssueService(db);

    try {
      const issue = await assetIssueService.createAssetIssue(
        data,
        user.tenantId,
        user.id
      );

      return c.json(
        {
          success: true,
          data: issue,
          message: "Asset issue created successfully",
        },
        201
      );
    } catch (error: any) {
      if (error.code === "23503") {
        // foreign key violation
        return c.json(
          {
            success: false,
            error: {
              code: "INVALID_REFERENCE",
              message: "Referenced asset or user not found",
            },
          },
          400
        );
      }
      throw error;
    }
  }
);

// PUT /asset-issues/:id - Update asset issue
assetIssueRoutes.put(
  "/:id",
  requirePermission("asset-issue", "write"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { id } = c.req.param();

    const body = await c.req.json();
    const validation = updateAssetIssueRequest(body);

    if (validation instanceof type.errors) {
      return c.json(
        {
          success: false,
          error: {
            code: "VALIDATION_ERROR",
            message: "Validation failed",
            details: validation,
          },
        },
        400
      );
    }

    const data = validation;

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const assetIssueService = new AssetIssueService(db);
    const issue = await assetIssueService.updateAssetIssue(
      id,
      user.tenantId,
      data
    );

    if (!issue) {
      return c.json(
        {
          success: false,
          error: { code: "NOT_FOUND", message: "Asset issue not found" },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: issue,
      message: "Asset issue updated successfully",
    });
  }
);

// DELETE /asset-issues/:id - Delete (soft delete) asset issue
assetIssueRoutes.delete(
  "/:id",
  requirePermission("asset-issue", "write"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { id } = c.req.param();

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const assetIssueService = new AssetIssueService(db);
    await assetIssueService.deleteAssetIssue(id, user.tenantId);

    return c.json({
      success: true,
      message: "Asset issue deleted successfully",
    });
  }
);

// GET /asset-issues/by-asset/:assetId - Get issues by asset
assetIssueRoutes.get(
  "/by-asset/:assetId",
  requirePermission("asset-issue", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { assetId } = c.req.param();

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const assetIssueService = new AssetIssueService(db);
    const issues = await assetIssueService.getIssuesByAsset(
      assetId,
      user.tenantId
    );

    return c.json({
      success: true,
      data: issues,
    });
  }
);

export { assetIssueRoutes };
