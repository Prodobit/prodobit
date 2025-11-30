import type { Database } from "@prodobit/database";
import { Hono } from "hono";
import { authMiddleware } from "./middleware/auth.js";
import { MaintenancePlanTriggerService } from "./services/MaintenancePlanTriggerService.js";

export const maintenancePlanTriggers = new Hono<{ Variables: { db: Database } }>();

// Apply auth middleware to all routes
maintenancePlanTriggers.use("*", authMiddleware);

// GET / - List all triggers
maintenancePlanTriggers.get("/", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");

    const maintenancePlanId = c.req.query("maintenancePlanId");
    const triggerType = c.req.query("triggerType") as any;
    const meterId = c.req.query("meterId");
    const isActive = c.req.query("isActive");

    const service = new MaintenancePlanTriggerService(db);
    const result = await service.getTriggers(user.tenantId, {
      maintenancePlanId,
      triggerType,
      meterId,
      isActive: isActive !== undefined ? isActive === "true" : undefined,
    });

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("List triggers error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list triggers",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /due - Get due triggers
maintenancePlanTriggers.get("/due", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");

    const service = new MaintenancePlanTriggerService(db);
    const dueTriggers = await service.checkDueTriggers(user.tenantId);

    return c.json({
      success: true,
      data: dueTriggers,
    });
  } catch (error) {
    console.error("Check due triggers error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to check due triggers",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /:id - Get trigger by ID
maintenancePlanTriggers.get("/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const triggerId = c.req.param("id");

    const service = new MaintenancePlanTriggerService(db);
    const trigger = await service.getTriggerById(triggerId, user.tenantId);

    if (!trigger) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Trigger not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: trigger,
    });
  } catch (error) {
    console.error("Get trigger error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get trigger",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST / - Create new trigger
maintenancePlanTriggers.post("/", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();

    const service = new MaintenancePlanTriggerService(db);
    const trigger = await service.createTrigger(body, user.tenantId);

    return c.json(
      {
        success: true,
        data: trigger,
        message: "Trigger created successfully",
      },
      201
    );
  } catch (error) {
    console.error("Create trigger error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create trigger",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// PUT /:id - Update trigger
maintenancePlanTriggers.put("/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const triggerId = c.req.param("id");
    const body = await c.req.json();

    const service = new MaintenancePlanTriggerService(db);
    const trigger = await service.updateTrigger(triggerId, user.tenantId, body);

    if (!trigger) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Trigger not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: trigger,
      message: "Trigger updated successfully",
    });
  } catch (error) {
    console.error("Update trigger error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to update trigger",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// DELETE /:id - Delete trigger
maintenancePlanTriggers.delete("/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const triggerId = c.req.param("id");

    const service = new MaintenancePlanTriggerService(db);
    const success = await service.deleteTrigger(triggerId, user.tenantId);

    if (!success) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Trigger not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      message: "Trigger deleted successfully",
    });
  } catch (error) {
    console.error("Delete trigger error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to delete trigger",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /:id/triggered - Mark trigger as triggered
maintenancePlanTriggers.post("/:id/triggered", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const triggerId = c.req.param("id");
    const body = await c.req.json();

    const service = new MaintenancePlanTriggerService(db);
    const trigger = await service.markTriggered(
      triggerId,
      user.tenantId,
      body.currentMeterReading
    );

    if (!trigger) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Trigger not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: trigger,
      message: "Trigger marked as triggered",
    });
  } catch (error) {
    console.error("Mark trigger error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to mark trigger",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

export default maintenancePlanTriggers;
