import { pgTable, uuid, text, timestamp, jsonb, boolean, index, uniqueIndex } from "drizzle-orm/pg-core";
import { tenants } from "./tenants.js";

export const attributes = pgTable(
  "attributes",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    entityType: text("entity_type").notNull(),
    name: text("name").notNull(),
    displayName: text("display_name"),
    description: text("description"),
    dataType: text("data_type").notNull(),
    isRequired: boolean("is_required").notNull().default(false),
    defaultValue: jsonb("default_value"),
    validationRules: jsonb("validation_rules"),
    options: jsonb("options"),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    tenantEntityNameUnique: uniqueIndex("attributes_tenant_entity_name_unique").on(
      table.tenantId,
      table.entityType,
      table.name,
    ),
    tenantEntityIdx: index("attributes_tenant_entity_idx").on(table.tenantId, table.entityType),
    tenantDataTypeIdx: index("attributes_tenant_data_type_idx").on(table.tenantId, table.dataType),
  }),
);

export const attributeValues = pgTable(
  "attribute_values",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    entityId: uuid("entity_id").notNull(),
    entityType: text("entity_type").notNull(),
    attributeId: uuid("attribute_id")
      .notNull()
      .references(() => attributes.id, { onDelete: "cascade" }),
    value: jsonb("value"),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    entityAttributeUnique: uniqueIndex("attribute_values_entity_attribute_unique").on(
      table.entityId,
      table.entityType,
      table.attributeId,
    ),
    tenantEntityIdx: index("attribute_values_tenant_entity_idx").on(
      table.tenantId,
      table.entityType,
    ),
    tenantAttributeIdx: index("attribute_values_tenant_attribute_idx").on(
      table.tenantId,
      table.attributeId,
    ),
    entityIdx: index("attribute_values_entity_idx").on(table.entityId, table.entityType),
  }),
);