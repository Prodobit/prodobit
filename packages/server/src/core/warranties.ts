import type { Database } from "@prodobit/database";
import { Hono } from "hono";
import { authMiddleware } from "./middleware/auth.js";
import { WarrantyService } from "./services/WarrantyService.js";

export const warranties = new Hono<{ Variables: { db: Database } }>();

// Apply auth middleware to all routes
warranties.use("*", authMiddleware);

// GET / - List all warranties
warranties.get("/", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const query = c.req.query();

    const warrantyService = new WarrantyService(db);
    const result = await warrantyService.getWarranties({
      tenantId: user.tenantId,
      ...query,
    });

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("List warranties error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list warranties",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /expiring - Get expiring warranties
warranties.get("/expiring", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const days = Number(c.req.query("days")) || 30;

    const warrantyService = new WarrantyService(db);
    const result = await warrantyService.getExpiringWarranties(
      user.tenantId,
      days
    );

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("Get expiring warranties error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get expiring warranties",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /asset/:assetId - Get warranties for an asset
warranties.get("/asset/:assetId", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const assetId = c.req.param("assetId");

    const warrantyService = new WarrantyService(db);
    const result = await warrantyService.getWarrantiesByAsset(
      assetId,
      user.tenantId
    );

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("Get asset warranties error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get asset warranties",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /asset/:assetId/active - Get active warranty for an asset
warranties.get("/asset/:assetId/active", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const assetId = c.req.param("assetId");

    const warrantyService = new WarrantyService(db);
    const result = await warrantyService.getActiveWarranty(
      assetId,
      user.tenantId
    );

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("Get active warranty error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get active warranty",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /:id - Get warranty by ID
warranties.get("/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const warrantyId = c.req.param("id");

    const warrantyService = new WarrantyService(db);
    const warranty = await warrantyService.getWarrantyById(
      warrantyId,
      user.tenantId
    );

    if (!warranty) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Warranty not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: warranty,
    });
  } catch (error) {
    console.error("Get warranty error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get warranty",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST / - Create new warranty
warranties.post("/", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();

    const warrantyService = new WarrantyService(db);
    const warranty = await warrantyService.createWarranty(body, user.tenantId);

    return c.json(
      {
        success: true,
        data: warranty,
        message: "Warranty created successfully",
      },
      201
    );
  } catch (error) {
    console.error("Create warranty error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create warranty",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// PUT /:id - Update warranty
warranties.put("/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const warrantyId = c.req.param("id");
    const body = await c.req.json();

    const warrantyService = new WarrantyService(db);
    const warranty = await warrantyService.updateWarranty(
      warrantyId,
      user.tenantId,
      body
    );

    if (!warranty) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Warranty not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: warranty,
      message: "Warranty updated successfully",
    });
  } catch (error) {
    console.error("Update warranty error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to update warranty",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// DELETE /:id - Delete warranty
warranties.delete("/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const warrantyId = c.req.param("id");

    const warrantyService = new WarrantyService(db);
    const deleted = await warrantyService.deleteWarranty(
      warrantyId,
      user.tenantId
    );

    if (!deleted) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Warranty not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      message: "Warranty deleted successfully",
    });
  } catch (error) {
    console.error("Delete warranty error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to delete warranty",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});
