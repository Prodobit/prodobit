import {
  pgTable,
  uuid,
  text,
  timestamp,
  boolean,
  decimal,
  date,
  jsonb,
  index,
  uniqueIndex,
} from "drizzle-orm/pg-core";
import { sql } from "drizzle-orm";
import { tenants } from "./tenants.js";
import { brands } from "./brands.js";

// Ana Items tablosu - Core fields
export const items = pgTable(
  "items",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    
    // Item type: "product", "service", "raw_material", "component"
    itemType: text("item_type").notNull(),
    
    // Unique identifier per tenant
    code: text("code"),
    name: text("name").notNull(),
    status: text("status").notNull().default("active"),

    // Brand reference
    brandId: uuid("brand_id").references(() => brands.id, { onDelete: "set null" }),

    // Core business flags
    isInventoryItem: boolean("is_inventory_item").notNull().default(true),
    isStockItem: boolean("is_stock_item").notNull().default(true),
    isVariant: boolean("is_variant").notNull().default(false),
    isAbstract: boolean("is_abstract").notNull().default(false),
    
    // Reference to parent/master item for variants
    referenceItemId: uuid("reference_item_id"),
    
    // Search optimization field
    nameSearchTrimmed: text("name_search_trimmed"),
    
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    tenantNameIdx: uniqueIndex("items_tenant_name_idx").on(table.tenantId, table.name),
    tenantCodeIdx: uniqueIndex("items_tenant_code_idx")
      .on(table.tenantId, table.code)
      .where(sql`code IS NOT NULL`),
    tenantItemTypeIdx: index("items_tenant_item_type_idx").on(table.tenantId, table.itemType),
    tenantStatusIdx: index("items_tenant_status_idx").on(table.tenantId, table.status),
    brandIdx: index("items_brand_idx").on(table.brandId),
    referenceItemIdx: index("items_reference_item_idx").on(table.referenceItemId),
    nameSearchIdx: index("items_name_search_idx").on(table.nameSearchTrimmed),
    
    // Constraints
    itemTypeCheck: sql`CONSTRAINT item_type_check CHECK (item_type IN ('product', 'service', 'raw_material', 'component', 'spare_part', 'consumable'))`,
    variantReferenceCheck: sql`CONSTRAINT variant_reference_check CHECK ((is_variant = false AND reference_item_id IS NULL) OR (is_variant = true AND reference_item_id IS NOT NULL))`,
    noCircularReferenceCheck: sql`CONSTRAINT no_circular_reference_check CHECK (id != reference_item_id)`,
  })
);

// Item Categories - Hierarchical categorization
export const itemCategories = pgTable(
  "item_categories",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    
    name: text("name").notNull(),
    code: text("code"),
    description: text("description"),
    parentCategoryId: uuid("parent_category_id"),
    status: text("status").notNull().default("active"),
    
    // Must match the item type
    itemType: text("item_type").notNull(),
    
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    tenantNameIdx: uniqueIndex("item_categories_tenant_name_idx").on(table.tenantId, table.name),
    tenantCodeIdx: uniqueIndex("item_categories_tenant_code_idx")
      .on(table.tenantId, table.code)
      .where(sql`code IS NOT NULL`),
    parentCategoryIdx: index("item_categories_parent_category_idx").on(table.parentCategoryId),
    tenantNameItemTypeIdx: uniqueIndex("item_categories_tenant_name_item_type_idx")
      .on(table.tenantId, table.name, table.itemType),
    
    // Constraints
    itemTypeCheck: sql`CONSTRAINT item_type_check_for_item_categories CHECK (item_type IN ('product', 'service', 'raw_material', 'component', 'spare_part', 'consumable'))`,
  })
);

// Product bilgileri - Manufacturing/Physical items
export const products = pgTable(
  "products",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    itemId: uuid("item_id")
      .notNull()
      .references(() => items.id, { onDelete: "cascade" }),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    
    unit: text("unit"),
    itemCategoryId: uuid("item_category_id").references(() => itemCategories.id, { onDelete: "set null" }),
    sourcingType: text("sourcing_type").notNull().default("manufactured"), // renamed from product_type
    designOwnership: text("design_ownership"), // 'own', 'private_label', 'white_label'
    fulfillmentStrategy: text("fulfillment_strategy"), // 'warehouse', 'dropship'
    
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    itemIdIdx: uniqueIndex("products_item_id_idx").on(table.itemId),
    tenantIdx: index("products_tenant_idx").on(table.tenantId),
    categoryIdx: index("products_category_idx").on(table.itemCategoryId),
    
    // Constraints
    sourcingTypeCheck: sql`CONSTRAINT sourcing_type_check CHECK (sourcing_type IN ('manufactured', 'purchased'))`,
    designOwnershipCheck: sql`CONSTRAINT design_ownership_check CHECK (design_ownership IS NULL OR design_ownership IN ('own', 'private_label', 'white_label'))`,
    fulfillmentStrategyCheck: sql`CONSTRAINT fulfillment_strategy_check CHECK (fulfillment_strategy IS NULL OR fulfillment_strategy IN ('warehouse', 'dropship'))`,
  })
);

// Service bilgileri
export const services = pgTable(
  "services",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    itemId: uuid("item_id")
      .notNull()
      .references(() => items.id, { onDelete: "cascade" }),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    
    description: text("description"),
    unit: text("unit").notNull(),
    
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    itemIdIdx: uniqueIndex("services_item_id_idx").on(table.itemId),
    tenantIdx: index("services_tenant_idx").on(table.tenantId),
  })
);

// Raw Material bilgileri
export const rawMaterials = pgTable(
  "raw_materials",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    itemId: uuid("item_id")
      .notNull()
      .references(() => items.id, { onDelete: "cascade" }),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    
    unit: text("unit"),
    itemCategoryId: uuid("item_category_id").references(() => itemCategories.id, { onDelete: "set null" }),
    
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    itemIdIdx: uniqueIndex("raw_materials_item_id_idx").on(table.itemId),
    tenantIdx: index("raw_materials_tenant_idx").on(table.tenantId),
    categoryIdx: index("raw_materials_category_idx").on(table.itemCategoryId),
  })
);

// Component bilgileri
export const components = pgTable(
  "components",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    itemId: uuid("item_id")
      .notNull()
      .references(() => items.id, { onDelete: "cascade" }),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    
    unit: text("unit"),
    itemCategoryId: uuid("item_category_id").references(() => itemCategories.id, { onDelete: "set null" }),
    
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    itemIdIdx: uniqueIndex("components_item_id_idx").on(table.itemId),
    tenantIdx: index("components_tenant_idx").on(table.tenantId),
    categoryIdx: index("components_category_idx").on(table.itemCategoryId),
  })
);

// Spare Parts - Yedek parça bilgileri
export const spareParts = pgTable(
  "spare_parts",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    itemId: uuid("item_id")
      .notNull()
      .references(() => items.id, { onDelete: "cascade" }),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),

    unit: text("unit"),
    itemCategoryId: uuid("item_category_id").references(() => itemCategories.id, { onDelete: "set null" }),

    // Spare part specific fields
    partNumber: text("part_number"), // Manufacturer part number
    manufacturer: text("manufacturer"), // OEM manufacturer
    warrantyPeriodDays: decimal("warranty_period_days", { precision: 6, scale: 0 }), // Garanti süresi (gün)
    isCritical: boolean("is_critical").notNull().default(false), // Kritik parça mı?
    leadTimeDays: decimal("lead_time_days", { precision: 6, scale: 0 }), // Tedarik süresi (gün)

    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    itemIdIdx: uniqueIndex("spare_parts_item_id_idx").on(table.itemId),
    tenantIdx: index("spare_parts_tenant_idx").on(table.tenantId),
    categoryIdx: index("spare_parts_category_idx").on(table.itemCategoryId),
    partNumberIdx: index("spare_parts_part_number_idx").on(table.tenantId, table.partNumber),
    criticalIdx: index("spare_parts_critical_idx").on(table.tenantId, table.isCritical),
  })
);

// Consumables - Sarf malzeme bilgileri
export const consumables = pgTable(
  "consumables",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    itemId: uuid("item_id")
      .notNull()
      .references(() => items.id, { onDelete: "cascade" }),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),

    unit: text("unit"),
    itemCategoryId: uuid("item_category_id").references(() => itemCategories.id, { onDelete: "set null" }),

    // Consumable specific fields
    shelfLifeDays: decimal("shelf_life_days", { precision: 6, scale: 0 }), // Raf ömrü (gün)
    storageConditions: text("storage_conditions"), // Saklama koşulları
    hazardClass: text("hazard_class"), // Tehlike sınıfı (yanıcı, aşındırıcı vb.)
    isHazardous: boolean("is_hazardous").notNull().default(false), // Tehlikeli madde mi?

    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    itemIdIdx: uniqueIndex("consumables_item_id_idx").on(table.itemId),
    tenantIdx: index("consumables_tenant_idx").on(table.tenantId),
    categoryIdx: index("consumables_category_idx").on(table.itemCategoryId),
    hazardousIdx: index("consumables_hazardous_idx").on(table.tenantId, table.isHazardous),
  })
);

// Item Pricing - Separate pricing table for flexibility
export const itemPrices = pgTable(
  "item_prices",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    itemId: uuid("item_id")
      .notNull()
      .references(() => items.id, { onDelete: "cascade" }),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    
    // Price type: "buy_price", "sale_price", "list_price", "cost_price"
    priceType: text("price_type").notNull(),
    price: decimal("price", { precision: 15, scale: 4 }).notNull(),
    currency: text("currency").notNull().default("TRY"),
    
    // Price validity
    validFrom: date("valid_from").defaultNow(),
    validTo: date("valid_to"),
    isActive: boolean("is_active").notNull().default(true),
    
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    itemPriceTypeIdx: index("item_prices_item_price_type_idx").on(table.itemId, table.priceType),
    tenantIdx: index("item_prices_tenant_idx").on(table.tenantId),
    validityIdx: index("item_prices_validity_idx").on(table.validFrom, table.validTo),
  })
);

// Item Variants - For managing variations of base items
export const itemVariants = pgTable(
  "item_variants",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    itemId: uuid("item_id")
      .notNull()
      .references(() => items.id, { onDelete: "cascade" }),
    parentItemId: uuid("parent_item_id")
      .notNull()
      .references(() => items.id, { onDelete: "cascade" }),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    
    // Variant attributes as JSON for flexibility
    variantAttributes: jsonb("variant_attributes"),
    
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    itemIdIdx: uniqueIndex("item_variants_item_id_idx").on(table.itemId),
    parentItemIdx: index("item_variants_parent_item_idx").on(table.parentItemId),
    tenantIdx: index("item_variants_tenant_idx").on(table.tenantId),
  })
);