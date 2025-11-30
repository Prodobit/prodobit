import type { Database } from "@prodobit/database";
import { Hono } from "hono";
import { authMiddleware } from "./middleware/auth.js";
import { AssetStatusHistoryService } from "./services/AssetStatusHistoryService.js";

export const assetStatusHistory = new Hono<{ Variables: { db: Database } }>();

// Apply auth middleware to all routes
assetStatusHistory.use("*", authMiddleware);

// GET / - List all status history
assetStatusHistory.get("/", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");

    const assetId = c.req.query("assetId");
    const status = c.req.query("status");
    const changeReason = c.req.query("changeReason") as any;
    const changedById = c.req.query("changedById");
    const fromDate = c.req.query("fromDate");
    const toDate = c.req.query("toDate");

    const service = new AssetStatusHistoryService(db);
    const result = await service.getAssetStatusHistory(user.tenantId, {
      assetId,
      status,
      changeReason,
      changedById,
      fromDate,
      toDate,
    });

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("List status history error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list status history",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /:id - Get status history by ID
assetStatusHistory.get("/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const historyId = c.req.param("id");

    const service = new AssetStatusHistoryService(db);
    const history = await service.getStatusHistoryById(historyId, user.tenantId);

    if (!history) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Status history not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: history,
    });
  } catch (error) {
    console.error("Get status history error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get status history",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /asset/:assetId - Get history for a specific asset
assetStatusHistory.get("/asset/:assetId", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const assetId = c.req.param("assetId");

    const service = new AssetStatusHistoryService(db);
    const history = await service.getHistoryByAsset(assetId, user.tenantId);

    return c.json({
      success: true,
      data: history,
    });
  } catch (error) {
    console.error("Get asset history error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get asset status history",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /asset/:assetId/lifecycle - Get lifecycle summary for an asset
assetStatusHistory.get("/asset/:assetId/lifecycle", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const assetId = c.req.param("assetId");

    const service = new AssetStatusHistoryService(db);
    const summary = await service.getAssetLifecycleSummary(assetId, user.tenantId);

    return c.json({
      success: true,
      data: summary,
    });
  } catch (error) {
    console.error("Get lifecycle summary error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get lifecycle summary",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /asset/:assetId/status - Update asset status (creates history)
assetStatusHistory.post("/asset/:assetId/status", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const assetId = c.req.param("assetId");
    const body = await c.req.json();

    const service = new AssetStatusHistoryService(db);
    const result = await service.updateAssetStatus(
      assetId,
      user.tenantId,
      body,
      user.id
    );

    return c.json({
      success: true,
      data: result,
      message: "Asset status updated successfully",
    });
  } catch (error) {
    console.error("Update asset status error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to update asset status",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /by-status/:status - Get assets by status
assetStatusHistory.get("/by-status/:status", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const status = c.req.param("status");

    const service = new AssetStatusHistoryService(db);
    const assets = await service.getAssetsByStatus(status, user.tenantId);

    return c.json({
      success: true,
      data: assets,
    });
  } catch (error) {
    console.error("Get assets by status error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get assets by status",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

export default assetStatusHistory;
