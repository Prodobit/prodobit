import { relations, sql } from "drizzle-orm";
import {
  pgTable,
  uuid,
  text,
  timestamp,
  boolean,
  integer,
  jsonb,
  index,
} from "drizzle-orm/pg-core";
import { tenants } from "./tenants";
import { assets } from "./assets";
import { locations } from "./assets";
import { users } from "./auth";
import { assetIssues } from "./asset-issues";

/**
 * Tasks (Görevler/İşler)
 *
 * Kullanıcılara iş atama, görev takibi ve proje yönetimi için kullanılır.
 * Asset bakımı, kalibrasyon, arıza çözümü gibi işlemler için görev oluşturulur.
 */
export const tasks = pgTable(
  "tasks",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),

    title: text("title").notNull(),
    description: text("description"),

    // Type: maintenance, calibration, repair, inspection, installation, general, other
    type: text("type").notNull().default("general"),
    // Priority: critical, high, medium, low
    priority: text("priority").notNull().default("medium"),
    // Status: pending, in_progress, on_hold, completed, cancelled, blocked
    status: text("status").notNull().default("pending"),

    // Assignment
    assigneeId: uuid("assignee_id").references(() => users.id, {
      onDelete: "set null",
    }),
    createdBy: uuid("created_by")
      .notNull()
      .references(() => users.id, { onDelete: "restrict" }),
    assignedBy: uuid("assigned_by").references(() => users.id, {
      onDelete: "set null",
    }),

    // Relationships
    parentTaskId: uuid("parent_task_id"), // self reference
    relatedAssetId: uuid("related_asset_id").references(() => assets.id, {
      onDelete: "set null",
    }),
    relatedIssueId: uuid("related_issue_id").references(() => assetIssues.id, {
      onDelete: "set null",
    }),
    relatedMaintenancePlanId: uuid("related_maintenance_plan_id"), // foreign key eklenecek
    relatedCalibrationPlanId: uuid("related_calibration_plan_id"), // foreign key eklenecek
    locationId: uuid("location_id").references(() => locations.id, {
      onDelete: "set null",
    }),

    // Time Management
    startDate: timestamp("start_date", { withTimezone: true, precision: 6 }),
    endDate: timestamp("end_date", { withTimezone: true, precision: 6 }),
    dueDate: timestamp("due_date", { withTimezone: true, precision: 6 }),
    completedAt: timestamp("completed_at", {
      withTimezone: true,
      precision: 6,
    }),

    estimatedHours: integer("estimated_hours"),
    actualHours: integer("actual_hours"),

    // Progress
    progressPercentage: integer("progress_percentage").default(0), // 0-100
    checklistItems: jsonb("checklist_items"), // array of {id, title, completed, completedAt, completedBy, order}
    checklistCompletedCount: integer("checklist_completed_count").default(0),

    // Recurrence
    isRecurring: boolean("is_recurring").default(false),
    // daily, weekly, monthly, quarterly, yearly
    recurrenceInterval: text("recurrence_interval"),
    recurrenceCount: integer("recurrence_count"),
    nextOccurrenceDate: timestamp("next_occurrence_date", {
      withTimezone: true,
      precision: 6,
    }),

    // Additional Info
    notes: text("notes"),
    tags: text("tags").array(),
    imageIds: text("image_ids").array(),
    documentIds: text("document_ids").array(),
    completionNotes: text("completion_notes"),
    blockingReason: text("blocking_reason"),

    insertedAt: timestamp("inserted_at", {
      withTimezone: true,
      precision: 6,
    })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    tenantTypeIdx: index("tasks_tenant_type_idx").on(
      table.tenantId,
      table.type
    ),
    tenantStatusIdx: index("tasks_tenant_status_idx").on(
      table.tenantId,
      table.status
    ),
    tenantPriorityIdx: index("tasks_tenant_priority_idx").on(
      table.tenantId,
      table.priority
    ),
    assigneeIdx: index("tasks_assignee_idx").on(table.assigneeId),
    createdByIdx: index("tasks_created_by_idx").on(table.createdBy),
    parentTaskIdx: index("tasks_parent_task_idx").on(table.parentTaskId),
    relatedAssetIdx: index("tasks_related_asset_idx").on(table.relatedAssetId),
    relatedIssueIdx: index("tasks_related_issue_idx").on(table.relatedIssueId),
    dueDateIdx: index("tasks_due_date_idx").on(table.dueDate),
    recurringIdx: index("tasks_recurring_idx").on(
      table.isRecurring,
      table.nextOccurrenceDate
    ),

    // Constraints
    typeCheck: sql`CONSTRAINT tasks_type_check CHECK (type IN ('maintenance', 'calibration', 'repair', 'inspection', 'installation', 'general', 'other'))`,
    priorityCheck: sql`CONSTRAINT tasks_priority_check CHECK (priority IN ('critical', 'high', 'medium', 'low'))`,
    statusCheck: sql`CONSTRAINT tasks_status_check CHECK (status IN ('pending', 'in_progress', 'on_hold', 'completed', 'cancelled', 'blocked'))`,
    recurrenceIntervalCheck: sql`CONSTRAINT tasks_recurrence_interval_check CHECK (recurrence_interval IS NULL OR recurrence_interval IN ('daily', 'weekly', 'monthly', 'quarterly', 'yearly'))`,
    progressCheck: sql`CONSTRAINT tasks_progress_check CHECK (progress_percentage >= 0 AND progress_percentage <= 100)`,
  })
);

/**
 * Task Dependencies
 *
 * Görevler arası bağımlılıkları tanımlar.
 * Bir görevin başlayabilmesi için başka bir görevin tamamlanması gerektiğini belirtir.
 */
export const taskDependencies = pgTable(
  "task_dependencies",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),

    taskId: uuid("task_id")
      .notNull()
      .references(() => tasks.id, { onDelete: "cascade" }),
    dependsOnTaskId: uuid("depends_on_task_id")
      .notNull()
      .references(() => tasks.id, { onDelete: "cascade" }),

    // finish_to_start: Önce X bitmeli, sonra Y başlayabilir
    // start_to_start: X başladığında Y de başlayabilir
    // finish_to_finish: X bittiğinde Y de bitmeli
    // start_to_finish: X başladığında Y bitmeli
    dependencyType: text("dependency_type")
      .notNull()
      .default("finish_to_start"),

    lagDays: integer("lag_days").default(0), // gecikme gün sayısı

    insertedAt: timestamp("inserted_at", {
      withTimezone: true,
      precision: 6,
    })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    taskIdx: index("task_dependencies_task_idx").on(table.taskId),
    dependsOnIdx: index("task_dependencies_depends_on_idx").on(
      table.dependsOnTaskId
    ),

    // Constraints
    dependencyTypeCheck: sql`CONSTRAINT task_dependencies_type_check CHECK (dependency_type IN ('finish_to_start', 'start_to_start', 'finish_to_finish', 'start_to_finish'))`,
  })
);

// Relations
export const tasksRelations = relations(tasks, ({ one, many }) => ({
  tenant: one(tenants, {
    fields: [tasks.tenantId],
    references: [tenants.id],
  }),
  assignee: one(users, {
    fields: [tasks.assigneeId],
    references: [users.id],
    relationName: "taskAssignee",
  }),
  creator: one(users, {
    fields: [tasks.createdBy],
    references: [users.id],
    relationName: "taskCreator",
  }),
  assigner: one(users, {
    fields: [tasks.assignedBy],
    references: [users.id],
    relationName: "taskAssigner",
  }),
  parentTask: one(tasks, {
    fields: [tasks.parentTaskId],
    references: [tasks.id],
    relationName: "taskParent",
  }),
  subtasks: many(tasks, {
    relationName: "taskParent",
  }),
  relatedAsset: one(assets, {
    fields: [tasks.relatedAssetId],
    references: [assets.id],
  }),
  relatedIssue: one(assetIssues, {
    fields: [tasks.relatedIssueId],
    references: [assetIssues.id],
  }),
  location: one(locations, {
    fields: [tasks.locationId],
    references: [locations.id],
  }),
  dependencies: many(taskDependencies, {
    relationName: "taskDependencies",
  }),
  dependents: many(taskDependencies, {
    relationName: "taskDependents",
  }),
}));

export const taskDependenciesRelations = relations(
  taskDependencies,
  ({ one }) => ({
    tenant: one(tenants, {
      fields: [taskDependencies.tenantId],
      references: [tenants.id],
    }),
    task: one(tasks, {
      fields: [taskDependencies.taskId],
      references: [tasks.id],
      relationName: "taskDependencies",
    }),
    dependsOnTask: one(tasks, {
      fields: [taskDependencies.dependsOnTaskId],
      references: [tasks.id],
      relationName: "taskDependents",
    }),
  })
);
