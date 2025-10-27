import { Hono } from "hono";
import { type } from "arktype";
import {
  createTaskRequest,
  updateTaskRequest,
  taskQuery,
  createTaskDependencyRequest,
} from "@prodobit/types";
import { TaskService } from "./service.js";
import { authMiddleware } from "../../core/middleware/auth.js";
import { requirePermission } from "../../core/middleware/rbac.js";

const taskRoutes = new Hono();

// Apply authentication to all routes
taskRoutes.use("*", authMiddleware);

// GET /tasks - Get all tasks with optional filters
taskRoutes.get("/", requirePermission("task", "read"), async (c) => {
  const db = c.get("db");
  const user = c.get("user");

  if (!user?.tenantId) {
    return c.json({ error: "Tenant ID required" }, 400);
  }

  const queryParams = c.req.query();
  const validation = taskQuery(queryParams);

  let query = undefined;
  if (!(validation instanceof type.errors)) {
    query = validation;
  }

  const taskService = new TaskService(db);
  const tasksList = await taskService.getTasks(user.tenantId, query);

  return c.json({
    success: true,
    data: tasksList,
  });
});

// GET /tasks/statistics - Get task statistics
taskRoutes.get(
  "/statistics",
  requirePermission("task", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const taskService = new TaskService(db);
    const stats = await taskService.getTaskStatistics(user.tenantId);

    return c.json({
      success: true,
      data: stats,
    });
  }
);

// GET /tasks/overdue - Get overdue tasks
taskRoutes.get("/overdue", requirePermission("task", "read"), async (c) => {
  const db = c.get("db");
  const user = c.get("user");

  if (!user?.tenantId) {
    return c.json({ error: "Tenant ID required" }, 400);
  }

  const taskService = new TaskService(db);
  const overdueTasks = await taskService.getOverdueTasks(user.tenantId);

  return c.json({
    success: true,
    data: overdueTasks,
  });
});

// GET /tasks/:id - Get single task
taskRoutes.get("/:id", requirePermission("task", "read"), async (c) => {
  const db = c.get("db");
  const user = c.get("user");
  const { id } = c.req.param();

  if (!user?.tenantId) {
    return c.json({ error: "Tenant ID required" }, 400);
  }

  const taskService = new TaskService(db);
  const task = await taskService.getTaskById(id, user.tenantId);

  if (!task) {
    return c.json(
      {
        success: false,
        error: { code: "NOT_FOUND", message: "Task not found" },
      },
      404
    );
  }

  return c.json({
    success: true,
    data: task,
  });
});

// GET /tasks/:id/subtasks - Get subtasks
taskRoutes.get(
  "/:id/subtasks",
  requirePermission("task", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { id } = c.req.param();

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const taskService = new TaskService(db);
    const subtasks = await taskService.getSubtasks(id, user.tenantId);

    return c.json({
      success: true,
      data: subtasks,
    });
  }
);

// GET /tasks/:id/dependencies - Get task dependencies
taskRoutes.get(
  "/:id/dependencies",
  requirePermission("task", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { id } = c.req.param();

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const taskService = new TaskService(db);
    const dependencies = await taskService.getTaskDependencies(
      id,
      user.tenantId
    );

    return c.json({
      success: true,
      data: dependencies,
    });
  }
);

// POST /tasks - Create new task
taskRoutes.post("/", requirePermission("task", "write"), async (c) => {
  const db = c.get("db");
  const user = c.get("user");

  const body = await c.req.json();
  const validation = createTaskRequest(body);

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

  if (!user?.tenantId || !user?.id) {
    return c.json({ error: "Tenant ID and User ID required" }, 400);
  }

  const taskService = new TaskService(db);

  try {
    const task = await taskService.createTask(data, user.tenantId, user.id);

    return c.json(
      {
        success: true,
        data: task,
        message: "Task created successfully",
      },
      201
    );
  } catch (error: any) {
    if (error.code === "23503") {
      // foreign key violation
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
});

// POST /tasks/:id/dependencies - Create task dependency
taskRoutes.post(
  "/:id/dependencies",
  requirePermission("task", "write"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { id } = c.req.param();

    const body = await c.req.json();
    const validation = createTaskDependencyRequest({
      ...body,
      taskId: id,
    });

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

    const taskService = new TaskService(db);

    try {
      const dependency = await taskService.createTaskDependency(
        data,
        user.tenantId
      );

      return c.json(
        {
          success: true,
          data: dependency,
          message: "Task dependency created successfully",
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
              message: "Referenced task not found",
            },
          },
          400
        );
      }
      throw error;
    }
  }
);

// PUT /tasks/:id - Update task
taskRoutes.put("/:id", requirePermission("task", "write"), async (c) => {
  const db = c.get("db");
  const user = c.get("user");
  const { id } = c.req.param();

  const body = await c.req.json();
  const validation = updateTaskRequest(body);

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

  const taskService = new TaskService(db);
  const task = await taskService.updateTask(id, user.tenantId, data);

  if (!task) {
    return c.json(
      {
        success: false,
        error: { code: "NOT_FOUND", message: "Task not found" },
      },
      404
    );
  }

  return c.json({
    success: true,
    data: task,
    message: "Task updated successfully",
  });
});

// DELETE /tasks/:id - Delete (soft delete) task
taskRoutes.delete("/:id", requirePermission("task", "write"), async (c) => {
  const db = c.get("db");
  const user = c.get("user");
  const { id } = c.req.param();

  if (!user?.tenantId) {
    return c.json({ error: "Tenant ID required" }, 400);
  }

  const taskService = new TaskService(db);
  await taskService.deleteTask(id, user.tenantId);

  return c.json({
    success: true,
    message: "Task deleted successfully",
  });
});

// DELETE /tasks/:taskId/dependencies/:dependencyId - Delete dependency
taskRoutes.delete(
  "/:taskId/dependencies/:dependencyId",
  requirePermission("task", "write"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { dependencyId } = c.req.param();

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const taskService = new TaskService(db);
    await taskService.deleteTaskDependency(dependencyId, user.tenantId);

    return c.json({
      success: true,
      message: "Task dependency deleted successfully",
    });
  }
);

// GET /tasks/by-assignee/:assigneeId - Get tasks by assignee
taskRoutes.get(
  "/by-assignee/:assigneeId",
  requirePermission("task", "read"),
  async (c) => {
    const db = c.get("db");
    const user = c.get("user");
    const { assigneeId } = c.req.param();

    if (!user?.tenantId) {
      return c.json({ error: "Tenant ID required" }, 400);
    }

    const taskService = new TaskService(db);
    const tasksList = await taskService.getTasksByAssignee(
      assigneeId,
      user.tenantId
    );

    return c.json({
      success: true,
      data: tasksList,
    });
  }
);

export { taskRoutes };
