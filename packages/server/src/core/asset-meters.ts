import type { Database } from "@prodobit/database";
import { Hono } from "hono";
import { authMiddleware } from "./middleware/auth.js";
import { AssetMeterService } from "./services/AssetMeterService.js";

export const assetMeters = new Hono<{ Variables: { db: Database } }>();

// Apply auth middleware to all routes
assetMeters.use("*", authMiddleware);

// ============ ASSET METERS ============

// GET / - List all asset meters
assetMeters.get("/", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");

    const assetId = c.req.query("assetId");
    const meterType = c.req.query("meterType") as any;
    const isActive = c.req.query("isActive");

    const service = new AssetMeterService(db);
    const result = await service.getAssetMeters(user.tenantId, {
      assetId,
      meterType,
      isActive: isActive !== undefined ? isActive === "true" : undefined,
    });

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("List asset meters error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list asset meters",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /:id - Get asset meter by ID
assetMeters.get("/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const meterId = c.req.param("id");

    const service = new AssetMeterService(db);
    const meter = await service.getAssetMeterById(meterId, user.tenantId);

    if (!meter) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Asset meter not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: meter,
    });
  } catch (error) {
    console.error("Get asset meter error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get asset meter",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST / - Create new asset meter
assetMeters.post("/", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();

    const service = new AssetMeterService(db);
    const meter = await service.createAssetMeter(body, user.tenantId);

    return c.json(
      {
        success: true,
        data: meter,
        message: "Asset meter created successfully",
      },
      201
    );
  } catch (error) {
    console.error("Create asset meter error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create asset meter",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// PUT /:id - Update asset meter
assetMeters.put("/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const meterId = c.req.param("id");
    const body = await c.req.json();

    const service = new AssetMeterService(db);
    const meter = await service.updateAssetMeter(meterId, user.tenantId, body);

    if (!meter) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Asset meter not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: meter,
      message: "Asset meter updated successfully",
    });
  } catch (error) {
    console.error("Update asset meter error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to update asset meter",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// DELETE /:id - Delete asset meter
assetMeters.delete("/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const meterId = c.req.param("id");

    const service = new AssetMeterService(db);
    const success = await service.deleteAssetMeter(meterId, user.tenantId);

    if (!success) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Asset meter not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      message: "Asset meter deleted successfully",
    });
  } catch (error) {
    console.error("Delete asset meter error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to delete asset meter",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /:id/stats - Get meter statistics
assetMeters.get("/:id/stats", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const meterId = c.req.param("id");

    const service = new AssetMeterService(db);
    const stats = await service.getMeterStats(meterId, user.tenantId);

    return c.json({
      success: true,
      data: stats,
    });
  } catch (error) {
    console.error("Get meter stats error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get meter statistics",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// ============ METER READINGS ============

// GET /:id/readings - Get readings for a meter
assetMeters.get("/:id/readings", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const meterId = c.req.param("id");

    const service = new AssetMeterService(db);
    const readings = await service.getReadingsByMeter(meterId, user.tenantId);

    return c.json({
      success: true,
      data: readings,
    });
  } catch (error) {
    console.error("Get meter readings error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get meter readings",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /:id/readings - Create new reading for a meter
assetMeters.post("/:id/readings", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const meterId = c.req.param("id");
    const body = await c.req.json();

    const service = new AssetMeterService(db);
    const reading = await service.createMeterReading(
      { ...body, meterId },
      user.tenantId,
      user.id
    );

    return c.json(
      {
        success: true,
        data: reading,
        message: "Meter reading created successfully",
      },
      201
    );
  } catch (error) {
    console.error("Create meter reading error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create meter reading",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

export default assetMeters;
