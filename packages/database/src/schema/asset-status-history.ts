import {
  pgTable,
  uuid,
  text,
  timestamp,
  pgEnum,
} from "drizzle-orm/pg-core";
import { tenants } from "./tenants.js";
import { assets } from "./assets.js";
import { users } from "./auth.js";

// Asset status enum (matches the status field in assets table)
export const assetStatusEnum = pgEnum("asset_status", [
  "active",           // Normal operation
  "inactive",         // Not in use but available
  "maintenance",      // Under maintenance
  "repair",           // Being repaired
  "calibration",      // Under calibration
  "inspection",       // Being inspected
  "reserved",         // Reserved for future use
  "in_transit",       // Being moved/transported
  "quarantine",       // Isolated due to issues
  "decommissioned",   // Permanently out of service
  "disposed",         // Disposed/sold
  "lost",             // Cannot be located
  "stolen",           // Reported stolen
]);

// Status change reason enum
export const statusChangeReasonEnum = pgEnum("status_change_reason", [
  "scheduled_maintenance",
  "unscheduled_maintenance",
  "breakdown",
  "calibration_due",
  "inspection_required",
  "relocation",
  "end_of_life",
  "sale",
  "transfer",
  "damage",
  "theft",
  "loss",
  "quarantine_quality",
  "quarantine_safety",
  "return_from_maintenance",
  "return_from_calibration",
  "commissioning",
  "decommissioning",
  "user_request",
  "system_automatic",
  "other",
]);

// Common timestamp columns
const insertedAt = timestamp("inserted_at", { withTimezone: true })
  .notNull()
  .defaultNow();

/**
 * Asset Status History - Tracks all status changes for assets
 * Provides complete audit trail of asset lifecycle
 */
export const assetStatusHistory = pgTable("asset_status_history", {
  id: uuid("id").primaryKey().defaultRandom(),
  tenantId: uuid("tenant_id")
    .notNull()
    .references(() => tenants.id, { onDelete: "cascade" }),
  assetId: uuid("asset_id")
    .notNull()
    .references(() => assets.id, { onDelete: "cascade" }),

  // Status change
  previousStatus: text("previous_status"), // Can be null for initial status
  newStatus: text("new_status").notNull(),

  // Change details
  changeReason: statusChangeReasonEnum("change_reason"),
  reasonDetails: text("reason_details"), // Free text explanation

  // Related records (what caused the change)
  maintenanceRecordId: uuid("maintenance_record_id"),
  calibrationRecordId: uuid("calibration_record_id"),
  issueId: uuid("issue_id"),
  workOrderId: uuid("work_order_id"),

  // Change metadata
  changedAt: timestamp("changed_at", { withTimezone: true }).notNull().defaultNow(),
  changedById: uuid("changed_by_id").references(() => users.id),

  // Duration tracking (populated when status changes again)
  durationMinutes: text("duration_minutes"), // How long was it in this status

  // Location at time of change (if relevant)
  locationId: uuid("location_id"),

  // Additional context
  notes: text("notes"),
  metadata: text("metadata"), // JSON for additional data

  // For integrations
  externalReference: text("external_reference"),

  // Timestamp (no update/delete - immutable audit log)
  insertedAt,
});

// Export types
export type AssetStatusHistory = typeof assetStatusHistory.$inferSelect;
export type NewAssetStatusHistory = typeof assetStatusHistory.$inferInsert;
