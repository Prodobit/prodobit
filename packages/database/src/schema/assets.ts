import { relations, sql } from "drizzle-orm";
import {
  pgTable,
  uuid,
  text,
  timestamp,
  boolean,
  uniqueIndex,
  index,
} from "drizzle-orm/pg-core";
import { tenants } from "./tenants";

// Location Types - Reference table for location categories
export const locationTypes = pgTable(
  "location_types",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id").notNull().references(() => tenants.id, { onDelete: "cascade" }),
    
    name: text("name").notNull(),
    code: text("code").notNull(),
    description: text("description"),
    // "facility", "production", "storage", etc.
    category: text("category"),
    isActive: boolean("is_active").notNull().default(true),
    
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    tenantCodeIdx: uniqueIndex("location_types_tenant_code_idx").on(table.tenantId, table.code),
    tenantCategoryIdx: index("location_types_tenant_category_idx").on(table.tenantId, table.category),
    tenantActiveIdx: index("location_types_tenant_active_idx").on(table.tenantId, table.isActive),
  })
);

// Locations - Hierarchical structure for physical locations
export const locations = pgTable(
  "locations",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id").notNull().references(() => tenants.id, { onDelete: "cascade" }),
    parentLocationId: uuid("parent_location_id"),
    
    name: text("name").notNull(),
    code: text("code").notNull(),
    // "facility", "building", "floor", "area", "zone", etc.
    locationType: text("location_type"),
    // "available", "occupied", "maintenance", "inactive"
    status: text("status").notNull().default("available"),
    
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    tenantCodeIdx: uniqueIndex("locations_tenant_code_idx").on(table.tenantId, table.code),
    tenantParentIdx: index("locations_tenant_parent_idx").on(table.tenantId, table.parentLocationId),
    tenantTypeIdx: index("locations_tenant_type_idx").on(table.tenantId, table.locationType),
    tenantStatusIdx: index("locations_tenant_status_idx").on(table.tenantId, table.status),
    
    // Constraints
    statusCheck: sql`CONSTRAINT locations_status_check CHECK (status IN ('available', 'occupied', 'maintenance', 'inactive'))`,
  })
);

// Asset Types - Reference table for asset categories
export const assetTypes = pgTable(
  "asset_types",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id").notNull().references(() => tenants.id, { onDelete: "cascade" }),
    
    name: text("name").notNull(),
    code: text("code").notNull(),
    description: text("description"),
    // "production", "support", "infrastructure", etc.
    category: text("category"),
    isActive: boolean("is_active").notNull().default(true),
    
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    tenantCodeIdx: uniqueIndex("asset_types_tenant_code_idx").on(table.tenantId, table.code),
    tenantCategoryIdx: index("asset_types_tenant_category_idx").on(table.tenantId, table.category),
    tenantActiveIdx: index("asset_types_tenant_active_idx").on(table.tenantId, table.isActive),
  })
);

// Assets - Main asset table with hierarchical structure
export const assets = pgTable(
  "assets",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id").notNull().references(() => tenants.id, { onDelete: "cascade" }),
    locationId: uuid("location_id").notNull().references(() => locations.id, { onDelete: "restrict" }),
    parentAssetId: uuid("parent_asset_id"),
    
    name: text("name").notNull(),
    code: text("code").notNull(),
    // "work_station", "work_center", "machine", "equipment", etc.
    assetType: text("asset_type").notNull(),
    // "active", "inactive", "maintenance", "retired"
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
    tenantCodeIdx: uniqueIndex("assets_tenant_code_idx").on(table.tenantId, table.code),
    tenantLocationIdx: index("assets_tenant_location_idx").on(table.tenantId, table.locationId),
    tenantParentIdx: index("assets_tenant_parent_idx").on(table.tenantId, table.parentAssetId),
    tenantTypeIdx: index("assets_tenant_type_idx").on(table.tenantId, table.assetType),
    tenantStatusIdx: index("assets_tenant_status_idx").on(table.tenantId, table.status),
    
    // Constraints
    statusCheck: sql`CONSTRAINT assets_status_check CHECK (status IN ('active', 'inactive', 'maintenance', 'retired'))`,
  })
);

// Relations
export const locationTypesRelations = relations(locationTypes, ({ one, many }) => ({
  tenant: one(tenants, {
    fields: [locationTypes.tenantId],
    references: [tenants.id],
  }),
}));

export const locationsRelations = relations(locations, ({ one, many }) => ({
  tenant: one(tenants, {
    fields: [locations.tenantId],
    references: [tenants.id],
  }),
  parentLocation: one(locations, {
    fields: [locations.parentLocationId],
    references: [locations.id],
    relationName: "parentLocation",
  }),
  childLocations: many(locations, {
    relationName: "parentLocation",
  }),
  assets: many(assets),
}));

export const assetTypesRelations = relations(assetTypes, ({ one, many }) => ({
  tenant: one(tenants, {
    fields: [assetTypes.tenantId],
    references: [tenants.id],
  }),
}));

export const assetsRelations = relations(assets, ({ one, many }) => ({
  tenant: one(tenants, {
    fields: [assets.tenantId],
    references: [tenants.id],
  }),
  location: one(locations, {
    fields: [assets.locationId],
    references: [locations.id],
  }),
  parentAsset: one(assets, {
    fields: [assets.parentAssetId],
    references: [assets.id],
    relationName: "parentAsset",
  }),
  childAssets: many(assets, {
    relationName: "parentAsset",
  }),
}));