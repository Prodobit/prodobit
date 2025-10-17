import type { Database } from "@prodobit/database";
import { Hono } from "hono";
import { authMiddleware } from "./middleware/auth.js";
import { AssignmentService } from "./services/AssignmentService.js";

export const assignments = new Hono<{ Variables: { db: Database } }>();

assignments.use("*", authMiddleware);

// GET / - List all assignments
assignments.get("/", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const query = c.req.query();
    const assignmentService = new AssignmentService(db);
    const result = await assignmentService.getAssignments({
      tenantId: user.tenantId,
      ...query,
    });
    return c.json({ success: true, data: result });
  } catch (error) {
    console.error("List assignments error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list assignments",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /asset/:assetId/history - Get assignment history for an asset
assignments.get("/asset/:assetId/history", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const assetId = c.req.param("assetId");
    const assignmentService = new AssignmentService(db);
    const result = await assignmentService.getAssetAssignmentHistory(
      assetId,
      user.tenantId
    );
    return c.json({ success: true, data: result });
  } catch (error) {
    console.error("Get assignment history error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get assignment history",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /active/:assignedTo - Get active assignments for user/department/location
assignments.get("/active/:assignedTo", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const assignedTo = c.req.param("assignedTo");
    const assignmentService = new AssignmentService(db);
    const result = await assignmentService.getActiveAssignments(
      assignedTo,
      user.tenantId
    );
    return c.json({ success: true, data: result });
  } catch (error) {
    console.error("Get active assignments error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get active assignments",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /:id - Get assignment by ID
assignments.get("/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const assignmentId = c.req.param("id");
    const assignmentService = new AssignmentService(db);
    const assignment = await assignmentService.getAssignmentById(
      assignmentId,
      user.tenantId
    );
    if (!assignment) {
      return c.json(
        {
          success: false,
          error: { code: "NOT_FOUND", message: "Assignment not found" },
        },
        404
      );
    }
    return c.json({ success: true, data: assignment });
  } catch (error) {
    console.error("Get assignment error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get assignment",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST / - Create new assignment
assignments.post("/", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();
    const assignmentService = new AssignmentService(db);
    const assignment = await assignmentService.createAssignment(
      body,
      user.id,
      user.tenantId
    );
    return c.json(
      {
        success: true,
        data: assignment,
        message: "Assignment created successfully",
      },
      201
    );
  } catch (error) {
    console.error("Create assignment error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create assignment",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /:id/return - Return an assignment
assignments.post("/:id/return", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const assignmentId = c.req.param("id");
    const body = await c.req.json();
    const assignmentService = new AssignmentService(db);
    const assignment = await assignmentService.returnAssignment(
      assignmentId,
      user.tenantId,
      body.returnCondition
    );
    if (!assignment) {
      return c.json(
        {
          success: false,
          error: { code: "NOT_FOUND", message: "Assignment not found" },
        },
        404
      );
    }
    return c.json({
      success: true,
      data: assignment,
      message: "Assignment returned successfully",
    });
  } catch (error) {
    console.error("Return assignment error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to return assignment",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /:id/transfer - Transfer an assignment
assignments.post("/:id/transfer", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const assignmentId = c.req.param("id");
    const body = await c.req.json();
    const assignmentService = new AssignmentService(db);
    const assignment = await assignmentService.transferAssignment(
      assignmentId,
      body.newAssignedTo,
      body.newAssignedType,
      user.id,
      user.tenantId
    );
    return c.json({
      success: true,
      data: assignment,
      message: "Assignment transferred successfully",
    });
  } catch (error) {
    console.error("Transfer assignment error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to transfer assignment",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// PUT /:id - Update assignment
assignments.put("/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const assignmentId = c.req.param("id");
    const body = await c.req.json();
    const assignmentService = new AssignmentService(db);
    const assignment = await assignmentService.updateAssignment(
      assignmentId,
      user.tenantId,
      body
    );
    if (!assignment) {
      return c.json(
        {
          success: false,
          error: { code: "NOT_FOUND", message: "Assignment not found" },
        },
        404
      );
    }
    return c.json({
      success: true,
      data: assignment,
      message: "Assignment updated successfully",
    });
  } catch (error) {
    console.error("Update assignment error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to update assignment",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// DELETE /:id - Delete assignment
assignments.delete("/:id", async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const assignmentId = c.req.param("id");
    const assignmentService = new AssignmentService(db);
    const deleted = await assignmentService.deleteAssignment(
      assignmentId,
      user.tenantId
    );
    if (!deleted) {
      return c.json(
        {
          success: false,
          error: { code: "NOT_FOUND", message: "Assignment not found" },
        },
        404
      );
    }
    return c.json({
      success: true,
      message: "Assignment deleted successfully",
    });
  } catch (error) {
    console.error("Delete assignment error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to delete assignment",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});
