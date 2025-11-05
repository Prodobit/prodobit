import { Hono } from "hono";
import { type } from "arktype";
import {
  createCalibrationPlanRequest,
  updateCalibrationPlanRequest,
  calibrationPlanQuery,
  createCalibrationRecordRequest,
  updateCalibrationRecordRequest,
  calibrationRecordQuery,
} from "@prodobit/types";
import { CalibrationService } from "./service.js";
import { authMiddleware } from "../../core/middleware/auth.js";
import { requirePermission } from "../../core/middleware/rbac.js";

const calibrationRoutes = new Hono();

// Apply authentication to all routes
calibrationRoutes.use("*", authMiddleware);

// ============ CALIBRATION PLANS ============

// GET /calibration/plans - Get all calibration plans
calibrationRoutes.get(
  "/plans",
  requirePermission("calibration", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const queryParams = c.req.query();
    const validation = calibrationPlanQuery(queryParams);

    let query = undefined;
    if (!(validation instanceof type.errors)) {
      query = validation;
    }

    const calibrationService = new CalibrationService(db);
    const plans = await calibrationService.getCalibrationPlans(
      user.tenantId,
      query
    );

    return c.json({
      success: true,
      data: plans,
    });
  }
);

// GET /calibration/plans/upcoming - Get upcoming calibrations
calibrationRoutes.get(
  "/plans/upcoming",
  requirePermission("calibration", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const days = parseInt(c.req.query("days") || "60");

    const calibrationService = new CalibrationService(db);
    const plans = await calibrationService.getUpcomingCalibrations(
      user.tenantId,
      days
    );

    return c.json({
      success: true,
      data: plans,
    });
  }
);

// GET /calibration/certificates/expiring - Get expiring certificates
calibrationRoutes.get(
  "/certificates/expiring",
  requirePermission("calibration", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const days = parseInt(c.req.query("days") || "30");

    const calibrationService = new CalibrationService(db);
    const records = await calibrationService.getExpiringCertificates(
      user.tenantId,
      days
    );

    return c.json({
      success: true,
      data: records,
    });
  }
);

// GET /calibration/plans/asset/:assetId - Get calibration plans by asset
calibrationRoutes.get(
  "/plans/asset/:assetId",
  requirePermission("calibration", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { assetId } = c.req.param();

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const calibrationService = new CalibrationService(db);
    const plans = await calibrationService.getCalibrationPlansByAsset(
      assetId,
      user.tenantId
    );

    return c.json({
      success: true,
      data: plans,
    });
  }
);

// GET /calibration/plans/overdue - Get overdue calibration plans
calibrationRoutes.get(
  "/plans/overdue",
  requirePermission("calibration", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const calibrationService = new CalibrationService(db);
    const plans = await calibrationService.getOverdueCalibrations(
      user.tenantId
    );

    return c.json({
      success: true,
      data: plans,
    });
  }
);

// GET /calibration/plans/:id - Get single calibration plan
calibrationRoutes.get(
  "/plans/:id",
  requirePermission("calibration", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { id } = c.req.param();

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const calibrationService = new CalibrationService(db);
    const plan = await calibrationService.getCalibrationPlanById(
      id,
      user.tenantId
    );

    if (!plan) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Calibration plan not found",
          },
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

// POST /calibration/plans - Create new calibration plan
calibrationRoutes.post(
  "/plans",
  requirePermission("calibration", "write"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");

    const body = await c.req.json();
    const validation = createCalibrationPlanRequest(body);

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

    const calibrationService = new CalibrationService(db);

    try {
      const plan = await calibrationService.createCalibrationPlan(
        data,
        user.tenantId
      );

      return c.json(
        {
          success: true,
          data: plan,
          message: "Calibration plan created successfully",
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

// PUT /calibration/plans/:id - Update calibration plan
calibrationRoutes.put(
  "/plans/:id",
  requirePermission("calibration", "write"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { id } = c.req.param();

    const body = await c.req.json();
    const validation = updateCalibrationPlanRequest(body);

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

    const calibrationService = new CalibrationService(db);
    const plan = await calibrationService.updateCalibrationPlan(
      id,
      user.tenantId,
      data
    );

    if (!plan) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Calibration plan not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: plan,
      message: "Calibration plan updated successfully",
    });
  }
);

// DELETE /calibration/plans/:id - Delete calibration plan
calibrationRoutes.delete(
  "/plans/:id",
  requirePermission("calibration", "write"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { id } = c.req.param();

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const calibrationService = new CalibrationService(db);
    await calibrationService.deleteCalibrationPlan(id, user.tenantId);

    return c.json({
      success: true,
      message: "Calibration plan deleted successfully",
    });
  }
);

// ============ CALIBRATION RECORDS ============

// GET /calibration/records - Get all calibration records
calibrationRoutes.get(
  "/records",
  requirePermission("calibration", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const queryParams = c.req.query();
    const validation = calibrationRecordQuery(queryParams);

    let query = undefined;
    if (!(validation instanceof type.errors)) {
      query = validation;
    }

    const calibrationService = new CalibrationService(db);
    const records = await calibrationService.getCalibrationRecords(
      user.tenantId,
      query
    );

    return c.json({
      success: true,
      data: records,
    });
  }
);

// GET /calibration/records/plan/:planId - Get records by plan
calibrationRoutes.get(
  "/records/plan/:planId",
  requirePermission("calibration", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { planId } = c.req.param();

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const calibrationService = new CalibrationService(db);
    const records = await calibrationService.getCalibrationRecordsByPlan(
      planId,
      user.tenantId
    );

    return c.json({
      success: true,
      data: records,
    });
  }
);

// GET /calibration/records/asset/:assetId - Get records by asset
calibrationRoutes.get(
  "/records/asset/:assetId",
  requirePermission("calibration", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { assetId } = c.req.param();

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const calibrationService = new CalibrationService(db);
    const records = await calibrationService.getCalibrationRecordsByAsset(
      assetId,
      user.tenantId
    );

    return c.json({
      success: true,
      data: records,
    });
  }
);

// GET /calibration/records/:id - Get single calibration record
calibrationRoutes.get(
  "/records/:id",
  requirePermission("calibration", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { id } = c.req.param();

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const calibrationService = new CalibrationService(db);
    const record = await calibrationService.getCalibrationRecordById(
      id,
      user.tenantId
    );

    if (!record) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Calibration record not found",
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

// POST /calibration/records - Create new calibration record
calibrationRoutes.post(
  "/records",
  requirePermission("calibration", "write"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");

    const body = await c.req.json();
    const validation = createCalibrationRecordRequest(body);

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

    // Require assetId in body
    if (!body.assetId) {
      return c.json(
        {
          error: "assetId is required",
        },
        400
      );
    }

    const calibrationService = new CalibrationService(db);

    try {
      const record = await calibrationService.createCalibrationRecord(
        data,
        user.tenantId,
        body.assetId
      );

      return c.json(
        {
          success: true,
          data: record,
          message: "Calibration record created successfully",
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

// PUT /calibration/records/:id - Update calibration record
calibrationRoutes.put(
  "/records/:id",
  requirePermission("calibration", "write"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { id } = c.req.param();

    const body = await c.req.json();
    const validation = updateCalibrationRecordRequest(body);

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

    const calibrationService = new CalibrationService(db);
    const record = await calibrationService.updateCalibrationRecord(
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
            message: "Calibration record not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: record,
      message: "Calibration record updated successfully",
    });
  }
);

// DELETE /calibration/records/:id - Delete calibration record
calibrationRoutes.delete(
  "/records/:id",
  requirePermission("calibration", "write"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { id } = c.req.param();

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const calibrationService = new CalibrationService(db);
    await calibrationService.deleteCalibrationRecord(id, user.tenantId);

    return c.json({
      success: true,
      message: "Calibration record deleted successfully",
    });
  }
);

export { calibrationRoutes };
