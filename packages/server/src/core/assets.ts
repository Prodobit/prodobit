import type { Database } from "@prodobit/database";
import { Hono } from "hono";
import { authMiddleware } from "./middleware/auth.js";
import { AssetService } from "./services/AssetService.js";
import { AssetIssueService } from "../modules/asset-issue/service.js";
import { MaintenanceService } from "../modules/maintenance/service.js";
import { CalibrationService } from "../modules/calibration/service.js";

export const assets = new Hono<{ Variables: { db: Database } }>();

// Apply auth middleware to all routes
assets.use("*", authMiddleware);

// GET / - List all assets
assets.get("/", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");

    const assetService = new AssetService(db);
    const result = await assetService.getAssets({ tenantId: user.tenantId });

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("List assets error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list assets",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /:id - Get asset by ID
assets.get("/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const assetId = c.req.param("id");

    const assetService = new AssetService(db);
    const asset = await assetService.getAssetById(assetId, user.tenantId);

    if (!asset) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Asset not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: asset,
    });
  } catch (error) {
    console.error("Get asset error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get asset",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST / - Create new asset
assets.post("/", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();

    const assetService = new AssetService(db);
    const asset = await assetService.createAsset(body, user.tenantId);

    return c.json(
      {
        success: true,
        data: asset,
        message: "Asset created successfully",
      },
      201
    );
  } catch (error) {
    console.error("Create asset error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create asset",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// PUT /:id - Update asset
assets.put("/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const assetId = c.req.param("id");
    const body = await c.req.json();

    const assetService = new AssetService(db);
    const asset = await assetService.updateAsset(assetId, user.tenantId, body);

    return c.json({
      success: true,
      data: asset,
      message: "Asset updated successfully",
    });
  } catch (error) {
    console.error("Update asset error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to update asset",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// DELETE /:id - Delete asset
assets.delete("/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const assetId = c.req.param("id");

    const assetService = new AssetService(db);
    await assetService.deleteAsset(assetId, user.tenantId);

    return c.json({
      success: true,
      message: "Asset deleted successfully",
    });
  } catch (error) {
    console.error("Delete asset error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to delete asset",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// ==================== NESTED RESOURCES ====================

// GET /:assetId/issues - Get all issues for an asset
assets.get("/:assetId/issues", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const assetId = c.req.param("assetId");

    const assetIssueService = new AssetIssueService(db);
    const issues = await assetIssueService.getIssuesByAsset(assetId, user.tenantId);

    return c.json({
      success: true,
      data: issues,
    });
  } catch (error) {
    console.error("Get asset issues error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get asset issues",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /:assetId/maintenance-plans - Get all maintenance plans for an asset
assets.get("/:assetId/maintenance-plans", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const assetId = c.req.param("assetId");

    const maintenanceService = new MaintenanceService(db);
    const plans = await maintenanceService.getMaintenancePlans(user.tenantId, { assetId });

    return c.json({
      success: true,
      data: plans,
    });
  } catch (error) {
    console.error("Get asset maintenance plans error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get maintenance plans",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /:assetId/maintenance-records - Get all maintenance records for an asset
assets.get("/:assetId/maintenance-records", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const assetId = c.req.param("assetId");

    const maintenanceService = new MaintenanceService(db);
    const records = await maintenanceService.getMaintenanceRecords(user.tenantId, { assetId });

    return c.json({
      success: true,
      data: records,
    });
  } catch (error) {
    console.error("Get asset maintenance records error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get maintenance records",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /:assetId/calibration-plans - Get all calibration plans for an asset
assets.get("/:assetId/calibration-plans", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const assetId = c.req.param("assetId");

    const calibrationService = new CalibrationService(db);
    const plans = await calibrationService.getCalibrationPlans(user.tenantId, { assetId });

    return c.json({
      success: true,
      data: plans,
    });
  } catch (error) {
    console.error("Get asset calibration plans error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get calibration plans",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /:assetId/calibration-records - Get all calibration records for an asset
assets.get("/:assetId/calibration-records", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const assetId = c.req.param("assetId");

    const calibrationService = new CalibrationService(db);
    const records = await calibrationService.getCalibrationRecords(user.tenantId, { assetId });

    return c.json({
      success: true,
      data: records,
    });
  } catch (error) {
    console.error("Get asset calibration records error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get calibration records",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});