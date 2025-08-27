import type { Database } from "@prodobit/database";
import { Hono } from "hono";
import { authMiddleware } from "./middleware/auth.js";
import { LocationService } from "./services/LocationService.js";

export const locations = new Hono<{ Variables: { db: Database } }>();

// Apply auth middleware to all routes
locations.use("*", authMiddleware);

// GET / - List all locations
locations.get("/", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");

    const locationService = new LocationService(db);
    const result = await locationService.getLocations({ tenantId: user.tenantId });

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("List locations error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list locations",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /:id - Get location by ID
locations.get("/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const locationId = c.req.param("id");

    const locationService = new LocationService(db);
    const location = await locationService.getLocationById(locationId, user.tenantId);

    if (!location) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Location not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: location,
    });
  } catch (error) {
    console.error("Get location error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get location",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST / - Create new location
locations.post("/", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();

    const locationService = new LocationService(db);
    const location = await locationService.createLocation({
      ...body,
      tenantId: user.tenantId
    });

    return c.json(
      {
        success: true,
        data: location,
        message: "Location created successfully",
      },
      201
    );
  } catch (error) {
    console.error("Create location error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create location",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// PUT /:id - Update location
locations.put("/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const locationId = c.req.param("id");
    const body = await c.req.json();

    const locationService = new LocationService(db);
    const location = await locationService.updateLocation(locationId, user.tenantId, body);

    return c.json({
      success: true,
      data: location,
      message: "Location updated successfully",
    });
  } catch (error) {
    console.error("Update location error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to update location",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// DELETE /:id - Delete location
locations.delete("/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const locationId = c.req.param("id");

    const locationService = new LocationService(db);
    await locationService.deleteLocation(locationId, user.tenantId);

    return c.json({
      success: true,
      message: "Location deleted successfully",
    });
  } catch (error) {
    console.error("Delete location error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to delete location",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});