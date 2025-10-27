import { eq, and, desc, sql, inArray, isNull } from "drizzle-orm";
import type { createDatabase } from "@prodobit/database";
import { tasks, taskDependencies } from "@prodobit/database";
import type {
  CreateTaskRequest,
  UpdateTaskRequest,
  TaskQuery,
  CreateTaskDependencyRequest,
} from "@prodobit/types";

export class TaskService {
  constructor(private db: ReturnType<typeof createDatabase>) {}

  /**
   * Get all tasks for a tenant with optional filters
   */
  async getTasks(tenantId: string, query?: TaskQuery) {
    let conditions = [eq(tasks.tenantId, tenantId), isNull(tasks.deletedAt)];

    if (query?.assigneeId) {
      conditions.push(eq(tasks.assigneeId, query.assigneeId));
    }
    if (query?.createdBy) {
      conditions.push(eq(tasks.createdBy, query.createdBy));
    }
    if (query?.parentTaskId) {
      conditions.push(eq(tasks.parentTaskId, query.parentTaskId));
    }
    if (query?.relatedAssetId) {
      conditions.push(eq(tasks.relatedAssetId, query.relatedAssetId));
    }
    if (query?.relatedIssueId) {
      conditions.push(eq(tasks.relatedIssueId, query.relatedIssueId));
    }
    if (query?.type) {
      conditions.push(eq(tasks.type, query.type));
    }
    if (query?.priority) {
      conditions.push(eq(tasks.priority, query.priority));
    }
    if (query?.status) {
      conditions.push(eq(tasks.status, query.status));
    }
    if (query?.isRecurring !== undefined) {
      conditions.push(eq(tasks.isRecurring, query.isRecurring));
    }
    if (query?.dueBefore) {
      conditions.push(
        sql`${tasks.dueDate} <= ${new Date(query.dueBefore)}`
      );
    }
    if (query?.dueAfter) {
      conditions.push(sql`${tasks.dueDate} >= ${new Date(query.dueAfter)}`);
    }
    if (query?.search) {
      conditions.push(
        sql`(${tasks.title} ILIKE ${"%" + query.search + "%"} OR ${tasks.description} ILIKE ${"%" + query.search + "%"})`
      );
    }
    if (query?.tags && query.tags.length > 0) {
      conditions.push(sql`${tasks.tags} && ${query.tags}`);
    }

    const tasksList = await this.db
      .select()
      .from(tasks)
      .where(and(...conditions))
      .orderBy(desc(tasks.insertedAt));

    return tasksList;
  }

  /**
   * Get a single task by ID
   */
  async getTaskById(id: string, tenantId: string) {
    const [task] = await this.db
      .select()
      .from(tasks)
      .where(
        and(
          eq(tasks.id, id),
          eq(tasks.tenantId, tenantId),
          isNull(tasks.deletedAt)
        )
      );

    return task;
  }

  /**
   * Get subtasks of a parent task
   */
  async getSubtasks(parentTaskId: string, tenantId: string) {
    const subtasks = await this.db
      .select()
      .from(tasks)
      .where(
        and(
          eq(tasks.parentTaskId, parentTaskId),
          eq(tasks.tenantId, tenantId),
          isNull(tasks.deletedAt)
        )
      )
      .orderBy(tasks.insertedAt);

    return subtasks;
  }

  /**
   * Create a new task
   */
  async createTask(
    data: CreateTaskRequest,
    tenantId: string,
    createdBy: string
  ) {
    const insertData: any = { ...data };
    if (data.startDate) insertData.startDate = new Date(data.startDate);
    if (data.endDate) insertData.endDate = new Date(data.endDate);
    if (data.dueDate) insertData.dueDate = new Date(data.dueDate);

    const [task] = await this.db
      .insert(tasks)
      .values({
        ...insertData,
        tenantId,
        createdBy,
        status: "pending",
        priority: data.priority || "medium",
        type: data.type || "general",
      })
      .returning();

    return task;
  }

  /**
   * Update a task
   */
  async updateTask(id: string, tenantId: string, data: UpdateTaskRequest) {
    // Auto-set completedAt when status changes to completed
    const updateData: any = { ...data };

    if (data.status === "completed" && !updateData.completedAt) {
      updateData.completedAt = new Date();
    }

    // Calculate next occurrence for recurring tasks
    if (data.isRecurring && data.recurrenceInterval && updateData.completedAt) {
      updateData.nextOccurrenceDate = this.calculateNextOccurrence(
        new Date(),
        data.recurrenceInterval
      );
    }

    const [task] = await this.db
      .update(tasks)
      .set({
        ...updateData,
        updatedAt: new Date(),
      })
      .where(
        and(
          eq(tasks.id, id),
          eq(tasks.tenantId, tenantId),
          isNull(tasks.deletedAt)
        )
      )
      .returning();

    return task;
  }

  /**
   * Delete (soft delete) a task
   */
  async deleteTask(id: string, tenantId: string) {
    const [task] = await this.db
      .update(tasks)
      .set({
        deletedAt: new Date(),
        updatedAt: new Date(),
      })
      .where(
        and(
          eq(tasks.id, id),
          eq(tasks.tenantId, tenantId),
          isNull(tasks.deletedAt)
        )
      )
      .returning();

    return task;
  }

  /**
   * Create task dependency
   */
  async createTaskDependency(
    data: CreateTaskDependencyRequest,
    tenantId: string
  ) {
    const [dependency] = await this.db
      .insert(taskDependencies)
      .values({
        ...data,
        tenantId,
        dependencyType: data.dependencyType || "finish_to_start",
        lagDays: data.lagDays || 0,
      })
      .returning();

    return dependency;
  }

  /**
   * Get dependencies for a task
   */
  async getTaskDependencies(taskId: string, tenantId: string) {
    const dependencies = await this.db
      .select()
      .from(taskDependencies)
      .where(
        and(
          eq(taskDependencies.taskId, taskId),
          eq(taskDependencies.tenantId, tenantId)
        )
      );

    return dependencies;
  }

  /**
   * Delete task dependency
   */
  async deleteTaskDependency(id: string, tenantId: string) {
    const [dependency] = await this.db
      .delete(taskDependencies)
      .where(
        and(
          eq(taskDependencies.id, id),
          eq(taskDependencies.tenantId, tenantId)
        )
      )
      .returning();

    return dependency;
  }

  /**
   * Get overdue tasks
   */
  async getOverdueTasks(tenantId: string) {
    const now = new Date();
    const overdueTasks = await this.db
      .select()
      .from(tasks)
      .where(
        and(
          eq(tasks.tenantId, tenantId),
          sql`${tasks.dueDate} < ${now}`,
          inArray(tasks.status, ["pending", "in_progress"]),
          isNull(tasks.deletedAt)
        )
      )
      .orderBy(tasks.dueDate);

    return overdueTasks;
  }

  /**
   * Get tasks by assignee
   */
  async getTasksByAssignee(assigneeId: string, tenantId: string) {
    const assigneeTasks = await this.db
      .select()
      .from(tasks)
      .where(
        and(
          eq(tasks.assigneeId, assigneeId),
          eq(tasks.tenantId, tenantId),
          isNull(tasks.deletedAt)
        )
      )
      .orderBy(desc(tasks.dueDate));

    return assigneeTasks;
  }

  /**
   * Get task statistics
   */
  async getTaskStatistics(tenantId: string) {
    const stats = await this.db
      .select({
        status: tasks.status,
        priority: tasks.priority,
        type: tasks.type,
        count: sql<number>`count(*)::int`,
      })
      .from(tasks)
      .where(and(eq(tasks.tenantId, tenantId), isNull(tasks.deletedAt)))
      .groupBy(tasks.status, tasks.priority, tasks.type);

    return stats;
  }

  /**
   * Calculate next occurrence date for recurring tasks
   */
  private calculateNextOccurrence(
    baseDate: Date,
    interval: string
  ): Date {
    const date = new Date(baseDate);

    switch (interval) {
      case "daily":
        date.setDate(date.getDate() + 1);
        break;
      case "weekly":
        date.setDate(date.getDate() + 7);
        break;
      case "monthly":
        date.setMonth(date.getMonth() + 1);
        break;
      case "quarterly":
        date.setMonth(date.getMonth() + 3);
        break;
      case "yearly":
        date.setFullYear(date.getFullYear() + 1);
        break;
    }

    return date;
  }
}
