import type { Database } from "@prodobit/database";
import { Hono } from "hono";
import { authMiddleware } from "./middleware/auth.js";
import { AssetStockUsageService } from "./services/AssetStockUsageService.js";

export const assetStockUsages = new Hono<{ Variables: { db: Database } }>();

// Apply auth middleware to all routes
assetStockUsages.use("*", authMiddleware);

// GET / - List all asset stock usages
assetStockUsages.get("/", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");

    // Get query parameters
    const assetId = c.req.query("assetId");
    const itemId = c.req.query("itemId");
    const usageType = c.req.query("usageType") as
      | "maintenance"
      | "repair"
      | "calibration"
      | "replacement"
      | "routine"
      | undefined;
    const maintenanceRecordId = c.req.query("maintenanceRecordId");
    const calibrationRecordId = c.req.query("calibrationRecordId");
    const usedById = c.req.query("usedById");
    const fromDate = c.req.query("fromDate");
    const toDate = c.req.query("toDate");

    const service = new AssetStockUsageService(db);
    const result = await service.getAssetStockUsages(user.tenantId, {
      assetId,
      itemId,
      usageType,
      maintenanceRecordId,
      calibrationRecordId,
      usedById,
      fromDate,
      toDate,
    });

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("List asset stock usages error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list asset stock usages",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /:id - Get asset stock usage by ID
assetStockUsages.get("/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const usageId = c.req.param("id");

    const service = new AssetStockUsageService(db);
    const usage = await service.getAssetStockUsageById(usageId, user.tenantId);

    if (!usage) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Asset stock usage not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: usage,
    });
  } catch (error) {
    console.error("Get asset stock usage error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get asset stock usage",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST / - Create new asset stock usage
assetStockUsages.post("/", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();

    const service = new AssetStockUsageService(db);
    const usage = await service.createAssetStockUsage(body, user.tenantId);

    return c.json(
      {
        success: true,
        data: usage,
        message: "Asset stock usage created successfully",
      },
      201
    );
  } catch (error) {
    console.error("Create asset stock usage error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create asset stock usage",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /bulk - Bulk create asset stock usages
assetStockUsages.post("/bulk", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();

    if (!Array.isArray(body.usages)) {
      return c.json(
        {
          success: false,
          error: {
            code: "BAD_REQUEST",
            message: "usages array is required",
          },
        },
        400
      );
    }

    const service = new AssetStockUsageService(db);
    const usages = await service.bulkCreateUsages(body.usages, user.tenantId);

    return c.json(
      {
        success: true,
        data: usages,
        message: `${usages.length} asset stock usages created successfully`,
      },
      201
    );
  } catch (error) {
    console.error("Bulk create asset stock usages error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to bulk create asset stock usages",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// PUT /:id - Update asset stock usage
assetStockUsages.put("/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const usageId = c.req.param("id");
    const body = await c.req.json();

    const service = new AssetStockUsageService(db);
    const usage = await service.updateAssetStockUsage(
      usageId,
      user.tenantId,
      body
    );

    if (!usage) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Asset stock usage not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: usage,
      message: "Asset stock usage updated successfully",
    });
  } catch (error) {
    console.error("Update asset stock usage error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to update asset stock usage",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// DELETE /:id - Delete asset stock usage
assetStockUsages.delete("/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const usageId = c.req.param("id");

    const service = new AssetStockUsageService(db);
    const success = await service.deleteAssetStockUsage(usageId, user.tenantId);

    if (!success) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Asset stock usage not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      message: "Asset stock usage deleted successfully",
    });
  } catch (error) {
    console.error("Delete asset stock usage error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to delete asset stock usage",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /stats/:assetId - Get usage statistics for an asset
assetStockUsages.get("/stats/:assetId", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const assetId = c.req.param("assetId");

    const service = new AssetStockUsageService(db);
    const stats = await service.getAssetUsageStats(assetId, user.tenantId);

    return c.json({
      success: true,
      data: stats,
    });
  } catch (error) {
    console.error("Get asset usage stats error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get asset usage statistics",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

export default assetStockUsages;
