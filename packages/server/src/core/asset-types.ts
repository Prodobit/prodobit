import type { Database } from "@prodobit/database";
import { Hono } from "hono";
import { authMiddleware } from "./middleware/auth.js";
import { AssetService } from "./services/AssetService.js";

export const assetTypes = new Hono<{ Variables: { db: Database } }>();

// Apply auth middleware to all routes
assetTypes.use("*", authMiddleware);

// GET / - List all asset types
assetTypes.get("/", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const category = c.req.query("category");

    const assetService = new AssetService(db);
    const result = await assetService.getAssetTypes(user.tenantId, category);

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("List asset types error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list asset types",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /:id - Get asset type by ID
assetTypes.get("/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const assetTypeId = c.req.param("id");

    const assetService = new AssetService(db);
    const assetType = await assetService.getAssetTypeById(
      assetTypeId,
      user.tenantId
    );

    if (!assetType) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Asset type not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: assetType,
    });
  } catch (error) {
    console.error("Get asset type error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get asset type",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST / - Create new asset type
assetTypes.post("/", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();

    const assetService = new AssetService(db);
    const assetType = await assetService.createAssetType(body, user.tenantId);

    return c.json(
      {
        success: true,
        data: assetType,
        message: "Asset type created successfully",
      },
      201
    );
  } catch (error) {
    console.error("Create asset type error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create asset type",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// PUT /:id - Update asset type
assetTypes.put("/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const assetTypeId = c.req.param("id");
    const body = await c.req.json();

    const assetService = new AssetService(db);
    const assetType = await assetService.updateAssetType(
      assetTypeId,
      user.tenantId,
      body
    );

    if (!assetType) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Asset type not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: assetType,
      message: "Asset type updated successfully",
    });
  } catch (error) {
    console.error("Update asset type error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to update asset type",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// DELETE /:id - Delete asset type
assetTypes.delete("/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const assetTypeId = c.req.param("id");

    const assetService = new AssetService(db);
    const deleted = await assetService.deleteAssetType(
      assetTypeId,
      user.tenantId
    );

    if (!deleted) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Asset type not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      message: "Asset type deleted successfully",
    });
  } catch (error) {
    console.error("Delete asset type error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to delete asset type",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});
