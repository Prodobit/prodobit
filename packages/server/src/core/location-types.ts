import type { Database } from "@prodobit/database";
import { Hono } from "hono";
import { authMiddleware } from "./middleware/auth.js";
import { LocationService } from "./services/LocationService.js";

export const locationTypes = new Hono<{ Variables: { db: Database } }>();

// Apply auth middleware to all routes
locationTypes.use("*", authMiddleware);

// GET / - List all location types
locationTypes.get("/", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const category = c.req.query("category");

    const locationService = new LocationService(db);
    const result = await locationService.getLocationTypes(
      user.tenantId,
      category
    );

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("List location types error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list location types",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /:id - Get location type by ID
locationTypes.get("/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const locationTypeId = c.req.param("id");

    const locationService = new LocationService(db);
    const locationType = await locationService.getLocationTypeById(
      locationTypeId,
      user.tenantId
    );

    if (!locationType) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Location type not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: locationType,
    });
  } catch (error) {
    console.error("Get location type error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get location type",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST / - Create new location type
locationTypes.post("/", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();

    const locationService = new LocationService(db);
    const locationType = await locationService.createLocationType({
      ...body,
      tenantId: user.tenantId,
    });

    return c.json(
      {
        success: true,
        data: locationType,
        message: "Location type created successfully",
      },
      201
    );
  } catch (error) {
    console.error("Create location type error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create location type",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// PUT /:id - Update location type
locationTypes.put("/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const locationTypeId = c.req.param("id");
    const body = await c.req.json();

    const locationService = new LocationService(db);
    const locationType = await locationService.updateLocationType(
      locationTypeId,
      user.tenantId,
      body
    );

    if (!locationType) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Location type not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: locationType,
      message: "Location type updated successfully",
    });
  } catch (error) {
    console.error("Update location type error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to update location type",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// DELETE /:id - Delete location type
locationTypes.delete("/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const locationTypeId = c.req.param("id");

    const locationService = new LocationService(db);
    const deleted = await locationService.deleteLocationType(
      locationTypeId,
      user.tenantId
    );

    if (!deleted) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Location type not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      message: "Location type deleted successfully",
    });
  } catch (error) {
    console.error("Delete location type error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to delete location type",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});
