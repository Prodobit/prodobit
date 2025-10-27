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
import { parties } from "./parties";
import { tasks } from "./tasks";

/**
 * Calibration Plans (Kalibrasyon Planları)
 *
 * Ölçüm cihazları ve hassas ekipmanların düzenli kalibrasyonlarını
 * planlamak ve sertifikalarını takip etmek için kullanılır.
 */
export const calibrationPlans = pgTable(
  "calibration_plans",
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

    // Type: internal, external, self
    type: text("type").notNull().default("external"),
    // Frequency: monthly, quarterly, semi_annually, annually, biannually, custom
    frequency: text("frequency").notNull(),
    // Status: active, inactive, draft
    status: text("status").notNull().default("active"),

    // Schedule
    startDate: timestamp("start_date", { withTimezone: true, precision: 6 })
      .notNull(),
    endDate: timestamp("end_date", { withTimezone: true, precision: 6 }),
    nextCalibrationDate: timestamp("next_calibration_date", {
      withTimezone: true,
      precision: 6,
    }),
    lastCalibrationDate: timestamp("last_calibration_date", {
      withTimezone: true,
      precision: 6,
    }),

    // Frequency Details
    intervalDays: integer("interval_days"), // custom frequency için
    intervalMonths: integer("interval_months"), // alternatif olarak ay bazlı

    // Standards & References
    calibrationStandard: text("calibration_standard"), // ISO 17025, ISO 9001, etc.
    referenceStandard: text("reference_standard"),
    acceptanceCriteria: text("acceptance_criteria"),
    toleranceRange: text("tolerance_range"), // ±0.1%, etc.

    // Execution
    estimatedDurationHours: integer("estimated_duration_hours"),
    defaultAssigneeId: uuid("default_assignee_id").references(() => users.id, {
      onDelete: "set null",
    }), // internal ise
    externalProviderId: uuid("external_provider_id").references(
      () => parties.id,
      { onDelete: "set null" }
    ), // external ise
    calibrationLocation: text("calibration_location"),
    priority: text("priority").default("medium"),

    // Instructions
    instructions: text("instructions"),
    checklistItems: jsonb("checklist_items"),
    requiredEquipment: text("required_equipment").array(),
    environmentalConditions: text("environmental_conditions"),

    // Certificate & Compliance
    requiresCertificate: boolean("requires_certificate").default(true),
    certificateValidityDays: integer("certificate_validity_days"),
    regulatoryRequirements: text("regulatory_requirements").array(),
    complianceStandards: text("compliance_standards").array(),

    // Auto Task Creation
    autoCreateTask: boolean("auto_create_task").default(true),
    taskCreationLeadDays: integer("task_creation_lead_days").default(14),

    // Alerts
    alertBeforeDays: integer("alert_before_days").default(30),
    alertRecipients: text("alert_recipients").array(),

    // Metrics
    totalCalibrationCount: integer("total_calibration_count").default(0),
    passedCalibrationCount: integer("passed_calibration_count").default(0),
    failedCalibrationCount: integer("failed_calibration_count").default(0),
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
    tenantAssetIdx: index("calibration_plans_tenant_asset_idx").on(
      table.tenantId,
      table.assetId
    ),
    tenantStatusIdx: index("calibration_plans_tenant_status_idx").on(
      table.tenantId,
      table.status
    ),
    tenantTypeIdx: index("calibration_plans_tenant_type_idx").on(
      table.tenantId,
      table.type
    ),
    nextCalibrationIdx: index("calibration_plans_next_calibration_idx").on(
      table.nextCalibrationDate
    ),
    externalProviderIdx: index("calibration_plans_external_provider_idx").on(
      table.externalProviderId
    ),

    // Constraints
    typeCheck: sql`CONSTRAINT calibration_plans_type_check CHECK (type IN ('internal', 'external', 'self'))`,
    frequencyCheck: sql`CONSTRAINT calibration_plans_frequency_check CHECK (frequency IN ('monthly', 'quarterly', 'semi_annually', 'annually', 'biannually', 'custom'))`,
    statusCheck: sql`CONSTRAINT calibration_plans_status_check CHECK (status IN ('active', 'inactive', 'draft'))`,
    priorityCheck: sql`CONSTRAINT calibration_plans_priority_check CHECK (priority IN ('critical', 'high', 'medium', 'low'))`,
  })
);

/**
 * Calibration Records (Kalibrasyon Kayıtları)
 *
 * Gerçekleştirilen kalibrasyon işlemlerinin kayıtlarını ve
 * sertifika bilgilerini tutar.
 */
export const calibrationRecords = pgTable(
  "calibration_records",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    calibrationPlanId: uuid("calibration_plan_id")
      .notNull()
      .references(() => calibrationPlans.id, { onDelete: "cascade" }),
    assetId: uuid("asset_id")
      .notNull()
      .references(() => assets.id, { onDelete: "cascade" }),
    taskId: uuid("task_id").references(() => tasks.id, {
      onDelete: "set null",
    }),

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
    }), // internal
    externalProviderId: uuid("external_provider_id").references(
      () => parties.id,
      { onDelete: "set null" }
    ), // external

    // Type: internal, external, self
    type: text("type").notNull(),
    // Status: pending, in_progress, passed, failed, expired, cancelled
    status: text("status").notNull().default("pending"),

    // Results
    durationHours: integer("duration_hours"),
    calibrationResult: text("calibration_result"), // pass, fail, conditional
    beforeCalibrationValues: jsonb("before_calibration_values"),
    afterCalibrationValues: jsonb("after_calibration_values"),
    deviationValues: jsonb("deviation_values"),
    adjustmentsMade: text("adjustments_made"),
    notes: text("notes"),
    failureReason: text("failure_reason"),

    // Certificate
    certificateNumber: text("certificate_number"),
    certificateIssueDate: timestamp("certificate_issue_date", {
      withTimezone: true,
      precision: 6,
    }),
    certificateExpiryDate: timestamp("certificate_expiry_date", {
      withTimezone: true,
      precision: 6,
    }),
    certificateDocumentId: text("certificate_document_id"),
    accreditationBody: text("accreditation_body"),

    // Next Calibration
    nextRecommendedDate: timestamp("next_recommended_date", {
      withTimezone: true,
      precision: 6,
    }),
    recommendedActions: text("recommended_actions"),

    // Cost
    cost: decimal("cost", { precision: 12, scale: 2 }),
    currency: text("currency").default("USD"),

    // Documents & Images
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
    tenantPlanIdx: index("calibration_records_tenant_plan_idx").on(
      table.tenantId,
      table.calibrationPlanId
    ),
    tenantAssetIdx: index("calibration_records_tenant_asset_idx").on(
      table.tenantId,
      table.assetId
    ),
    taskIdx: index("calibration_records_task_idx").on(table.taskId),
    performedByIdx: index("calibration_records_performed_by_idx").on(
      table.performedBy
    ),
    externalProviderIdx: index("calibration_records_external_provider_idx").on(
      table.externalProviderId
    ),
    scheduledDateIdx: index("calibration_records_scheduled_date_idx").on(
      table.scheduledDate
    ),
    certificateExpiryIdx: index("calibration_records_certificate_expiry_idx").on(
      table.certificateExpiryDate
    ),
    statusIdx: index("calibration_records_status_idx").on(table.status),

    // Constraints
    typeCheck: sql`CONSTRAINT calibration_records_type_check CHECK (type IN ('internal', 'external', 'self'))`,
    statusCheck: sql`CONSTRAINT calibration_records_status_check CHECK (status IN ('pending', 'in_progress', 'passed', 'failed', 'expired', 'cancelled'))`,
    calibrationResultCheck: sql`CONSTRAINT calibration_records_result_check CHECK (calibration_result IS NULL OR calibration_result IN ('pass', 'fail', 'conditional'))`,
  })
);

// Relations
export const calibrationPlansRelations = relations(
  calibrationPlans,
  ({ one, many }) => ({
    tenant: one(tenants, {
      fields: [calibrationPlans.tenantId],
      references: [tenants.id],
    }),
    asset: one(assets, {
      fields: [calibrationPlans.assetId],
      references: [assets.id],
    }),
    defaultAssignee: one(users, {
      fields: [calibrationPlans.defaultAssigneeId],
      references: [users.id],
    }),
    externalProvider: one(parties, {
      fields: [calibrationPlans.externalProviderId],
      references: [parties.id],
    }),
    records: many(calibrationRecords),
  })
);

export const calibrationRecordsRelations = relations(
  calibrationRecords,
  ({ one }) => ({
    tenant: one(tenants, {
      fields: [calibrationRecords.tenantId],
      references: [tenants.id],
    }),
    calibrationPlan: one(calibrationPlans, {
      fields: [calibrationRecords.calibrationPlanId],
      references: [calibrationPlans.id],
    }),
    asset: one(assets, {
      fields: [calibrationRecords.assetId],
      references: [assets.id],
    }),
    task: one(tasks, {
      fields: [calibrationRecords.taskId],
      references: [tasks.id],
    }),
    performedByUser: one(users, {
      fields: [calibrationRecords.performedBy],
      references: [users.id],
    }),
    externalProvider: one(parties, {
      fields: [calibrationRecords.externalProviderId],
      references: [parties.id],
    }),
  })
);
