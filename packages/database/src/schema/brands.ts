import {
  pgTable,
  uuid,
  text,
  timestamp,
  index,
  uniqueIndex,
} from "drizzle-orm/pg-core";
import { sql } from "drizzle-orm";
import { tenants } from "./tenants.js";

// Brands table - Brand/manufacturer information
export const brands = pgTable(
  "brands",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),

    name: text("name").notNull(),
    code: text("code"),
    description: text("description"),
    logo: text("logo"), // URL to logo image
    website: text("website"),
    status: text("status").notNull().default("active"),

    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    tenantNameIdx: uniqueIndex("brands_tenant_name_idx").on(table.tenantId, table.name),
    tenantCodeIdx: uniqueIndex("brands_tenant_code_idx")
      .on(table.tenantId, table.code)
      .where(sql`code IS NOT NULL`),
    tenantStatusIdx: index("brands_tenant_status_idx").on(table.tenantId, table.status),
  })
);
