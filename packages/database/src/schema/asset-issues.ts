import { relations, sql } from "drizzle-orm";
import {
  pgTable,
  uuid,
  text,
  timestamp,
  boolean,
  integer,
  index,
} from "drizzle-orm/pg-core";
import { tenants } from "./tenants";
import { assets } from "./assets";
import { users } from "./auth";

/**
 * Asset Issues (Arıza/Problem Bildirimleri)
 *
 * Assetler üzerinde tespit edilen arızaları, hataları ve problemleri
 * takip etmek için kullanılır.
 */
export const assetIssues = pgTable(
  "asset_issues",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    assetId: uuid("asset_id")
      .notNull()
      .references(() => assets.id, { onDelete: "cascade" }),

    title: text("title").notNull(),
    description: text("description").notNull(),

    // Category: mechanical, electrical, software, structural, cosmetic, safety, performance, other
    category: text("category").notNull(),
    // Severity: critical, high, medium, low
    severity: text("severity").notNull(),
    // Status: reported, acknowledged, in_progress, resolved, closed, cancelled
    status: text("status").notNull().default("reported"),

    reportedBy: uuid("reported_by")
      .notNull()
      .references(() => users.id, { onDelete: "restrict" }),
    assignedTo: uuid("assigned_to").references(() => users.id, {
      onDelete: "set null",
    }),
    relatedTaskId: uuid("related_task_id"), // foreign key eklenecek task tablosu oluştuğunda

    reportedAt: timestamp("reported_at", {
      withTimezone: true,
      precision: 6,
    })
      .notNull()
      .defaultNow(),
    acknowledgedAt: timestamp("acknowledged_at", {
      withTimezone: true,
      precision: 6,
    }),
    resolvedAt: timestamp("resolved_at", { withTimezone: true, precision: 6 }),
    closedAt: timestamp("closed_at", { withTimezone: true, precision: 6 }),

    estimatedResolutionTime: integer("estimated_resolution_time"), // hours
    actualResolutionTime: integer("actual_resolution_time"), // hours

    resolutionNotes: text("resolution_notes"),
    rootCause: text("root_cause"),
    correctiveActions: text("corrective_actions"),
    preventiveActions: text("preventive_actions"),

    imageIds: text("image_ids").array(),
    documentIds: text("document_ids").array(),

    location: text("location"), // specific location within asset
    impactDescription: text("impact_description"),
    downtime: boolean("downtime").default(false),

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
    tenantAssetIdx: index("asset_issues_tenant_asset_idx").on(
      table.tenantId,
      table.assetId
    ),
    tenantStatusIdx: index("asset_issues_tenant_status_idx").on(
      table.tenantId,
      table.status
    ),
    tenantSeverityIdx: index("asset_issues_tenant_severity_idx").on(
      table.tenantId,
      table.severity
    ),
    tenantCategoryIdx: index("asset_issues_tenant_category_idx").on(
      table.tenantId,
      table.category
    ),
    reportedByIdx: index("asset_issues_reported_by_idx").on(table.reportedBy),
    assignedToIdx: index("asset_issues_assigned_to_idx").on(table.assignedTo),
    reportedAtIdx: index("asset_issues_reported_at_idx").on(table.reportedAt),

    // Constraints
    categoryCheck: sql`CONSTRAINT asset_issues_category_check CHECK (category IN ('mechanical', 'electrical', 'software', 'structural', 'cosmetic', 'safety', 'performance', 'other'))`,
    severityCheck: sql`CONSTRAINT asset_issues_severity_check CHECK (severity IN ('critical', 'high', 'medium', 'low'))`,
    statusCheck: sql`CONSTRAINT asset_issues_status_check CHECK (status IN ('reported', 'acknowledged', 'in_progress', 'resolved', 'closed', 'cancelled'))`,
  })
);

// Relations
export const assetIssuesRelations = relations(assetIssues, ({ one }) => ({
  tenant: one(tenants, {
    fields: [assetIssues.tenantId],
    references: [tenants.id],
  }),
  asset: one(assets, {
    fields: [assetIssues.assetId],
    references: [assets.id],
  }),
  reportedByUser: one(users, {
    fields: [assetIssues.reportedBy],
    references: [users.id],
    relationName: "issueReportedBy",
  }),
  assignedToUser: one(users, {
    fields: [assetIssues.assignedTo],
    references: [users.id],
    relationName: "issueAssignedTo",
  }),
}));
