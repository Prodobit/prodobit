import { relations, sql } from "drizzle-orm";
import {
  pgTable,
  uuid,
  text,
  timestamp,
  boolean,
  integer,
  jsonb,
  decimal,
  index,
} from "drizzle-orm/pg-core";
import { tenants } from "./tenants";
import { assets } from "./assets";
import { users } from "./auth";
import { tasks } from "./tasks";

/**
 * Maintenance Plans (Bakım Planları)
 *
 * Assetlerin düzenli bakımlarını planlamak ve takip etmek için kullanılır.
 * Preventive (önleyici) ve predictive (öngörülü) bakım stratejilerini destekler.
 */
export const maintenancePlans = pgTable(
  "maintenance_plans",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    assetId: uuid("asset_id")
      .notNull()
      .references(() => assets.id, { onDelete: "cascade" }),

    name: text("name").notNull(),
    description: text("description"),

    // Type: preventive, predictive, corrective, condition_based
    type: text("type").notNull().default("preventive"),
    // Frequency: daily, weekly, biweekly, monthly, quarterly, semi_annually, annually, custom
    frequency: text("frequency").notNull(),
    // Status: active, inactive, draft
    status: text("status").notNull().default("active"),

    // Schedule
    startDate: timestamp("start_date", { withTimezone: true, precision: 6 })
      .notNull(),
    endDate: timestamp("end_date", { withTimezone: true, precision: 6 }),
    nextScheduledDate: timestamp("next_scheduled_date", {
      withTimezone: true,
      precision: 6,
    }),
    lastMaintenanceDate: timestamp("last_maintenance_date", {
      withTimezone: true,
      precision: 6,
    }),

    // Frequency Details
    intervalDays: integer("interval_days"), // custom frequency için
    intervalHours: integer("interval_hours"), // kullanım saati bazlı
    intervalCycles: integer("interval_cycles"), // çalışma döngüsü bazlı

    // Execution
    estimatedDurationHours: integer("estimated_duration_hours"),
    assignedTeamId: uuid("assigned_team_id"), // department id - gelecekte eklenecek
    defaultAssigneeId: uuid("default_assignee_id").references(() => users.id, {
      onDelete: "set null",
    }),
    priority: text("priority").default("medium"),

    // Instructions
    instructions: text("instructions"),
    checklistItems: jsonb("checklist_items"), // array of checklist items
    requiredSkills: text("required_skills").array(),
    safetyPrecautions: text("safety_precautions"),

    // Materials & Parts
    requiredMaterials: jsonb("required_materials"), // {name, quantity, unit}[]
    spareParts: jsonb("spare_parts"), // {partId, quantity}[]

    // Auto Task Creation
    autoCreateTask: boolean("auto_create_task").default(true),
    taskCreationLeadDays: integer("task_creation_lead_days").default(7),

    // Metrics
    totalMaintenanceCount: integer("total_maintenance_count").default(0),
    completedMaintenanceCount: integer("completed_maintenance_count").default(
      0
    ),
    missedMaintenanceCount: integer("missed_maintenance_count").default(0),
    averageCompletionTime: decimal("average_completion_time", {
      precision: 10,
      scale: 2,
    }),

    // Documents
    imageIds: text("image_ids").array(),
    documentIds: text("document_ids").array(),
    procedureDocumentId: text("procedure_document_id"),

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
    tenantAssetIdx: index("maintenance_plans_tenant_asset_idx").on(
      table.tenantId,
      table.assetId
    ),
    tenantStatusIdx: index("maintenance_plans_tenant_status_idx").on(
      table.tenantId,
      table.status
    ),
    tenantTypeIdx: index("maintenance_plans_tenant_type_idx").on(
      table.tenantId,
      table.type
    ),
    nextScheduledIdx: index("maintenance_plans_next_scheduled_idx").on(
      table.nextScheduledDate
    ),
    defaultAssigneeIdx: index("maintenance_plans_default_assignee_idx").on(
      table.defaultAssigneeId
    ),

    // Constraints
    typeCheck: sql`CONSTRAINT maintenance_plans_type_check CHECK (type IN ('preventive', 'predictive', 'corrective', 'condition_based'))`,
    frequencyCheck: sql`CONSTRAINT maintenance_plans_frequency_check CHECK (frequency IN ('daily', 'weekly', 'biweekly', 'monthly', 'quarterly', 'semi_annually', 'annually', 'custom'))`,
    statusCheck: sql`CONSTRAINT maintenance_plans_status_check CHECK (status IN ('active', 'inactive', 'draft'))`,
    priorityCheck: sql`CONSTRAINT maintenance_plans_priority_check CHECK (priority IN ('critical', 'high', 'medium', 'low'))`,
  })
);

/**
 * Maintenance Records (Bakım Kayıtları)
 *
 * Gerçekleştirilen bakım işlemlerinin kayıtlarını tutar.
 */
export const maintenanceRecords = pgTable(
  "maintenance_records",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    maintenancePlanId: uuid("maintenance_plan_id")
      .notNull()
      .references(() => maintenancePlans.id, { onDelete: "cascade" }),
    assetId: uuid("asset_id")
      .notNull()
      .references(() => assets.id, { onDelete: "cascade" }),
    taskId: uuid("task_id")
      .notNull()
      .references(() => tasks.id, { onDelete: "restrict" }),

    scheduledDate: timestamp("scheduled_date", {
      withTimezone: true,
      precision: 6,
    }).notNull(),
    completedDate: timestamp("completed_date", {
      withTimezone: true,
      precision: 6,
    }),

    performedBy: uuid("performed_by").references(() => users.id, {
      onDelete: "set null",
    }),
    durationHours: integer("duration_hours"),

    // Status: scheduled, in_progress, completed, skipped, cancelled
    status: text("status").notNull().default("scheduled"),

    notes: text("notes"),
    issuesFound: text("issues_found"),
    partsReplaced: jsonb("parts_replaced"), // array of replaced parts
    materialsUsed: jsonb("materials_used"), // array of materials used

    nextRecommendedDate: timestamp("next_recommended_date", {
      withTimezone: true,
      precision: 6,
    }),

    imageIds: text("image_ids").array(),
    documentIds: text("document_ids").array(),

    insertedAt: timestamp("inserted_at", {
      withTimezone: true,
      precision: 6,
    })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    tenantPlanIdx: index("maintenance_records_tenant_plan_idx").on(
      table.tenantId,
      table.maintenancePlanId
    ),
    tenantAssetIdx: index("maintenance_records_tenant_asset_idx").on(
      table.tenantId,
      table.assetId
    ),
    taskIdx: index("maintenance_records_task_idx").on(table.taskId),
    performedByIdx: index("maintenance_records_performed_by_idx").on(
      table.performedBy
    ),
    scheduledDateIdx: index("maintenance_records_scheduled_date_idx").on(
      table.scheduledDate
    ),
    statusIdx: index("maintenance_records_status_idx").on(table.status),

    // Constraints
    statusCheck: sql`CONSTRAINT maintenance_records_status_check CHECK (status IN ('scheduled', 'in_progress', 'completed', 'skipped', 'cancelled'))`,
  })
);

// Relations
export const maintenancePlansRelations = relations(
  maintenancePlans,
  ({ one, many }) => ({
    tenant: one(tenants, {
      fields: [maintenancePlans.tenantId],
      references: [tenants.id],
    }),
    asset: one(assets, {
      fields: [maintenancePlans.assetId],
      references: [assets.id],
    }),
    defaultAssignee: one(users, {
      fields: [maintenancePlans.defaultAssigneeId],
      references: [users.id],
    }),
    records: many(maintenanceRecords),
  })
);

export const maintenanceRecordsRelations = relations(
  maintenanceRecords,
  ({ one }) => ({
    tenant: one(tenants, {
      fields: [maintenanceRecords.tenantId],
      references: [tenants.id],
    }),
    maintenancePlan: one(maintenancePlans, {
      fields: [maintenanceRecords.maintenancePlanId],
      references: [maintenancePlans.id],
    }),
    asset: one(assets, {
      fields: [maintenanceRecords.assetId],
      references: [assets.id],
    }),
    task: one(tasks, {
      fields: [maintenanceRecords.taskId],
      references: [tasks.id],
    }),
    performedByUser: one(users, {
      fields: [maintenanceRecords.performedBy],
      references: [users.id],
    }),
  })
);
