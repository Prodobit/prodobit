import {
  index,
  jsonb,
  pgTable,
  text,
  timestamp,
  uniqueIndex,
  uuid,
} from "drizzle-orm/pg-core";

export const tenants = pgTable(
  "tenants",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    name: text("name").notNull(),
    slug: text("slug").unique(),
    subdomain: text("subdomain").unique(),
    description: text("description"),
    industry: text("industry"),
    status: text("status").notNull().default("active"),
    subscriptionPlan: text("subscription_plan").notNull().default("basic"),
    settings: jsonb("settings").notNull().default({}),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    nameUnique: uniqueIndex("tenants_name_unique").on(table.name),
    slugIdx: uniqueIndex("tenants_slug_idx").on(table.slug),
    subdomainIdx: uniqueIndex("tenants_subdomain_idx").on(table.subdomain),
    statusIdx: index("tenants_status_idx").on(table.status),
  })
);
