import {
  pgTable,
  uuid,
  text,
  decimal,
  timestamp,
  boolean,
  pgEnum,
} from "drizzle-orm/pg-core";
import { tenants } from "./tenants.js";
import { assets } from "./assets.js";
import { users } from "./auth.js";
import { maintenancePlans } from "./maintenance-plans.js";

// Meter type enum
export const meterTypeEnum = pgEnum("meter_type", [
  "hours",        // Operating hours
  "kilometers",   // Distance
  "miles",        // Distance (imperial)
  "cycles",       // Production cycles, press strokes
  "units",        // Units produced
  "liters",       // Fuel/fluid consumption
  "gallons",      // Fuel (imperial)
  "kwh",          // Energy consumption
  "custom",       // Custom meter type
]);

// Reading source enum
export const readingSourceEnum = pgEnum("reading_source", [
  "manual",       // Manual entry
  "iot",          // IoT sensor
  "import",       // Bulk import
  "system",       // System generated
]);

// Trigger type enum
export const triggerTypeEnum = pgEnum("trigger_type", [
  "time",         // Time-based only
  "meter",        // Meter-based only
  "both",         // Both time and meter
]);

// Trigger mode enum
export const triggerModeEnum = pgEnum("trigger_mode", [
  "first",        // Whichever comes first
  "all",          // Both conditions must be met
]);

// Common timestamp columns
const insertedAt = timestamp("inserted_at", { withTimezone: true })
  .notNull()
  .defaultNow();
const updatedAt = timestamp("updated_at", { withTimezone: true })
  .notNull()
  .defaultNow();
const deletedAt = timestamp("deleted_at", { withTimezone: true });

/**
 * Asset Meters - Defines meter/counter types attached to assets
 * Examples: Operating hours, kilometers, cycles, etc.
 */
export const assetMeters = pgTable("asset_meters", {
  id: uuid("id").primaryKey().defaultRandom(),
  tenantId: uuid("tenant_id")
    .notNull()
    .references(() => tenants.id, { onDelete: "cascade" }),
  assetId: uuid("asset_id")
    .notNull()
    .references(() => assets.id, { onDelete: "cascade" }),

  // Meter definition
  meterType: meterTypeEnum("meter_type").notNull().default("hours"),
  name: text("name").notNull(), // "Operating Hours", "Odometer", etc.
  unit: text("unit").notNull(), // "hours", "km", "cycles"
  description: text("description"),

  // Current state
  currentReading: decimal("current_reading", { precision: 15, scale: 3 }).notNull().default("0"),
  lastReadingDate: timestamp("last_reading_date", { withTimezone: true }),

  // Initial setup
  initialReading: decimal("initial_reading", { precision: 15, scale: 3 }).notNull().default("0"),
  installationDate: timestamp("installation_date", { withTimezone: true }),

  // Rollover support (for meters that reset at a certain value)
  rolloverValue: decimal("rollover_value", { precision: 15, scale: 3 }), // e.g., 999999
  hasRollover: boolean("has_rollover").notNull().default(false),

  // Status
  isActive: boolean("is_active").notNull().default(true),

  // Timestamps
  insertedAt,
  updatedAt,
  deletedAt,
});

/**
 * Asset Meter Readings - Historical readings for meters
 */
export const assetMeterReadings = pgTable("asset_meter_readings", {
  id: uuid("id").primaryKey().defaultRandom(),
  tenantId: uuid("tenant_id")
    .notNull()
    .references(() => tenants.id, { onDelete: "cascade" }),
  meterId: uuid("meter_id")
    .notNull()
    .references(() => assetMeters.id, { onDelete: "cascade" }),
  assetId: uuid("asset_id")
    .notNull()
    .references(() => assets.id, { onDelete: "cascade" }),

  // Reading data
  reading: decimal("reading", { precision: 15, scale: 3 }).notNull(),
  readingDate: timestamp("reading_date", { withTimezone: true }).notNull(),
  readingSource: readingSourceEnum("reading_source").notNull().default("manual"),

  // Delta calculation (computed on insert)
  previousReading: decimal("previous_reading", { precision: 15, scale: 3 }),
  usageSinceLastReading: decimal("usage_since_last_reading", { precision: 15, scale: 3 }),

  // Rollover tracking
  isRollover: boolean("is_rollover").notNull().default(false),
  rolloverCount: decimal("rollover_count", { precision: 6, scale: 0 }).default("0"),

  // Recording info
  recordedById: uuid("recorded_by_id").references(() => users.id),
  notes: text("notes"),

  // For IoT/integration
  externalId: text("external_id"),
  rawValue: text("raw_value"), // Original value before any transformation

  // Timestamps
  insertedAt,
  updatedAt,
  deletedAt,
});

/**
 * Maintenance Plan Triggers - Defines when maintenance should be triggered
 * Supports time-based, meter-based, or combination triggers
 */
export const maintenancePlanTriggers = pgTable("maintenance_plan_triggers", {
  id: uuid("id").primaryKey().defaultRandom(),
  tenantId: uuid("tenant_id")
    .notNull()
    .references(() => tenants.id, { onDelete: "cascade" }),
  maintenancePlanId: uuid("maintenance_plan_id")
    .notNull()
    .references(() => maintenancePlans.id, { onDelete: "cascade" }),

  // Trigger configuration
  triggerType: triggerTypeEnum("trigger_type").notNull().default("time"),
  triggerMode: triggerModeEnum("trigger_mode").notNull().default("first"),
  name: text("name"), // Optional name for the trigger
  description: text("description"),

  // Time-based trigger
  intervalDays: decimal("interval_days", { precision: 6, scale: 0 }),
  intervalMonths: decimal("interval_months", { precision: 4, scale: 0 }),

  // Meter-based trigger
  meterId: uuid("meter_id").references(() => assetMeters.id, { onDelete: "set null" }),
  meterInterval: decimal("meter_interval", { precision: 15, scale: 3 }), // Every X units
  meterThreshold: decimal("meter_threshold", { precision: 15, scale: 3 }), // When reaches X

  // Last trigger tracking
  lastTriggeredAt: timestamp("last_triggered_at", { withTimezone: true }),
  lastTriggeredReading: decimal("last_triggered_reading", { precision: 15, scale: 3 }),
  nextDueDate: timestamp("next_due_date", { withTimezone: true }),
  nextDueReading: decimal("next_due_reading", { precision: 15, scale: 3 }),

  // Status
  isActive: boolean("is_active").notNull().default(true),
  priority: decimal("priority", { precision: 2, scale: 0 }).default("1"), // For ordering multiple triggers

  // Timestamps
  insertedAt,
  updatedAt,
  deletedAt,
});

// Export types
export type AssetMeter = typeof assetMeters.$inferSelect;
export type NewAssetMeter = typeof assetMeters.$inferInsert;
export type AssetMeterReading = typeof assetMeterReadings.$inferSelect;
export type NewAssetMeterReading = typeof assetMeterReadings.$inferInsert;
export type MaintenancePlanTrigger = typeof maintenancePlanTriggers.$inferSelect;
export type NewMaintenancePlanTrigger = typeof maintenancePlanTriggers.$inferInsert;
