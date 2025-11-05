import { Hono } from "hono";
import { type } from "arktype";
import {
  createMaintenancePlanRequest,
  updateMaintenancePlanRequest,
  maintenancePlanQuery,
  createMaintenanceRecordRequest,
  updateMaintenanceRecordRequest,
  maintenanceRecordQuery,
} from "@prodobit/types";
import { MaintenanceService } from "./service.js";
import { authMiddleware } from "../../core/middleware/auth.js";
import { requirePermission } from "../../core/middleware/rbac.js";

const maintenanceRoutes = new Hono();

// Apply authentication to all routes
maintenanceRoutes.use("*", authMiddleware);

// ============ MAINTENANCE PLANS ============

// GET /maintenance/plans - Get all maintenance plans
maintenanceRoutes.get(
  "/plans",
  requirePermission("maintenance", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const queryParams = c.req.query();
    const validation = maintenancePlanQuery(queryParams);

    let query = undefined;
    if (!(validation instanceof type.errors)) {
      query = validation;
    }

    const maintenanceService = new MaintenanceService(db);
    const plans = await maintenanceService.getMaintenancePlans(
      user.tenantId,
      query
    );

    return c.json({
      success: true,
      data: plans,
    });
  }
);

// GET /maintenance/plans/upcoming - Get upcoming maintenance
maintenanceRoutes.get(
  "/plans/upcoming",
  requirePermission("maintenance", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const days = parseInt(c.req.query("days") || "30");

    const maintenanceService = new MaintenanceService(db);
    const plans = await maintenanceService.getUpcomingMaintenance(
      user.tenantId,
      days
    );

    return c.json({
      success: true,
      data: plans,
    });
  }
);

// GET /maintenance/plans/asset/:assetId - Get maintenance plans by asset
maintenanceRoutes.get(
  "/plans/asset/:assetId",
  requirePermission("maintenance", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { assetId } = c.req.param();

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const maintenanceService = new MaintenanceService(db);
    const plans = await maintenanceService.getMaintenancePlansByAsset(
      assetId,
      user.tenantId
    );

    return c.json({
      success: true,
      data: plans,
    });
  }
);

// GET /maintenance/plans/:id - Get single maintenance plan
maintenanceRoutes.get(
  "/plans/:id",
  requirePermission("maintenance", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { id } = c.req.param();

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const maintenanceService = new MaintenanceService(db);
    const plan = await maintenanceService.getMaintenancePlanById(
      id,
      user.tenantId
    );

    if (!plan) {
      return c.json(
        {
          success: false,
          error: { code: "NOT_FOUND", message: "Maintenance plan not found" },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: plan,
    });
  }
);

// POST /maintenance/plans - Create new maintenance plan
maintenanceRoutes.post(
  "/plans",
  requirePermission("maintenance", "write"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");

    const body = await c.req.json();
    const validation = createMaintenancePlanRequest(body);

    if (validation instanceof type.errors) {
      return c.json(
        {
          success: false,
          error: {
            code: "VALIDATION_ERROR",
            message: "Validation failed",
            details: validation,
          },
        },
        400
      );
    }

    const data = validation;

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const maintenanceService = new MaintenanceService(db);

    try {
      const plan = await maintenanceService.createMaintenancePlan(
        data,
        user.tenantId
      );

      return c.json(
        {
          success: true,
          data: plan,
          message: "Maintenance plan created successfully",
        },
        201
      );
    } catch (error: any) {
      if (error.code === "23503") {
        return c.json(
          {
            success: false,
            error: {
              code: "INVALID_REFERENCE",
              message: "Referenced asset not found",
            },
          },
          400
        );
      }
      throw error;
    }
  }
);

// PUT /maintenance/plans/:id - Update maintenance plan
maintenanceRoutes.put(
  "/plans/:id",
  requirePermission("maintenance", "write"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { id } = c.req.param();

    const body = await c.req.json();
    const validation = updateMaintenancePlanRequest(body);

    if (validation instanceof type.errors) {
      return c.json(
        {
          success: false,
          error: {
            code: "VALIDATION_ERROR",
            message: "Validation failed",
            details: validation,
          },
        },
        400
      );
    }

    const data = validation;

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const maintenanceService = new MaintenanceService(db);
    const plan = await maintenanceService.updateMaintenancePlan(
      id,
      user.tenantId,
      data
    );

    if (!plan) {
      return c.json(
        {
          success: false,
          error: { code: "NOT_FOUND", message: "Maintenance plan not found" },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: plan,
      message: "Maintenance plan updated successfully",
    });
  }
);

// DELETE /maintenance/plans/:id - Delete maintenance plan
maintenanceRoutes.delete(
  "/plans/:id",
  requirePermission("maintenance", "write"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { id } = c.req.param();

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const maintenanceService = new MaintenanceService(db);
    await maintenanceService.deleteMaintenancePlan(id, user.tenantId);

    return c.json({
      success: true,
      message: "Maintenance plan deleted successfully",
    });
  }
);

// ============ MAINTENANCE RECORDS ============

// GET /maintenance/records - Get all maintenance records
maintenanceRoutes.get(
  "/records",
  requirePermission("maintenance", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const queryParams = c.req.query();
    const validation = maintenanceRecordQuery(queryParams);

    let query = undefined;
    if (!(validation instanceof type.errors)) {
      query = validation;
    }

    const maintenanceService = new MaintenanceService(db);
    const records = await maintenanceService.getMaintenanceRecords(
      user.tenantId,
      query
    );

    return c.json({
      success: true,
      data: records,
    });
  }
);

// GET /maintenance/records/plan/:planId - Get records by plan
maintenanceRoutes.get(
  "/records/plan/:planId",
  requirePermission("maintenance", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { planId } = c.req.param();

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const maintenanceService = new MaintenanceService(db);
    const records = await maintenanceService.getMaintenanceRecordsByPlan(
      planId,
      user.tenantId
    );

    return c.json({
      success: true,
      data: records,
    });
  }
);

// GET /maintenance/records/asset/:assetId - Get records by asset
maintenanceRoutes.get(
  "/records/asset/:assetId",
  requirePermission("maintenance", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { assetId } = c.req.param();

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const maintenanceService = new MaintenanceService(db);
    const records = await maintenanceService.getMaintenanceRecordsByAsset(
      assetId,
      user.tenantId
    );

    return c.json({
      success: true,
      data: records,
    });
  }
);

// GET /maintenance/records/:id - Get single maintenance record
maintenanceRoutes.get(
  "/records/:id",
  requirePermission("maintenance", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { id } = c.req.param();

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const maintenanceService = new MaintenanceService(db);
    const record = await maintenanceService.getMaintenanceRecordById(
      id,
      user.tenantId
    );

    if (!record) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Maintenance record not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: record,
    });
  }
);

// POST /maintenance/records - Create new maintenance record
maintenanceRoutes.post(
  "/records",
  requirePermission("maintenance", "write"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");

    const body = await c.req.json();
    const validation = createMaintenanceRecordRequest(body);

    if (validation instanceof type.errors) {
      return c.json(
        {
          success: false,
          error: {
            code: "VALIDATION_ERROR",
            message: "Validation failed",
            details: validation,
          },
        },
        400
      );
    }

    const data = validation;

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    // Require assetId and taskId in body
    if (!body.assetId || !body.taskId) {
      return c.json(
        {
          error: "assetId and taskId are required",
        },
        400
      );
    }

    const maintenanceService = new MaintenanceService(db);

    try {
      const record = await maintenanceService.createMaintenanceRecord(
        data,
        user.tenantId,
        body.assetId,
        body.taskId
      );

      return c.json(
        {
          success: true,
          data: record,
          message: "Maintenance record created successfully",
        },
        201
      );
    } catch (error: any) {
      if (error.code === "23503") {
        return c.json(
          {
            success: false,
            error: {
              code: "INVALID_REFERENCE",
              message: "Referenced resource not found",
            },
          },
          400
        );
      }
      throw error;
    }
  }
);

// PUT /maintenance/records/:id - Update maintenance record
maintenanceRoutes.put(
  "/records/:id",
  requirePermission("maintenance", "write"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { id } = c.req.param();

    const body = await c.req.json();
    const validation = updateMaintenanceRecordRequest(body);

    if (validation instanceof type.errors) {
      return c.json(
        {
          success: false,
          error: {
            code: "VALIDATION_ERROR",
            message: "Validation failed",
            details: validation,
          },
        },
        400
      );
    }

    const data = validation;

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const maintenanceService = new MaintenanceService(db);
    const record = await maintenanceService.updateMaintenanceRecord(
      id,
      user.tenantId,
      data
    );

    if (!record) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Maintenance record not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: record,
      message: "Maintenance record updated successfully",
    });
  }
);

// DELETE /maintenance/records/:id - Delete maintenance record
maintenanceRoutes.delete(
  "/records/:id",
  requirePermission("maintenance", "write"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { id } = c.req.param();

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const maintenanceService = new MaintenanceService(db);
    await maintenanceService.deleteMaintenanceRecord(id, user.tenantId);

    return c.json({
      success: true,
      message: "Maintenance record deleted successfully",
    });
  }
);

export { maintenanceRoutes };
