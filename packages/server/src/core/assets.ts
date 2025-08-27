import type { Database } from "@prodobit/database";
import { Hono } from "hono";
import { authMiddleware } from "./middleware/auth.js";
import { AssetService } from "./services/AssetService.js";

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