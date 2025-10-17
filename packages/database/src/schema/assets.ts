import { relations, sql } from "drizzle-orm";
import {
  pgTable,
  uuid,
  text,
  timestamp,
  boolean,
  uniqueIndex,
  index,
  decimal,
  date,
  jsonb,
} from "drizzle-orm/pg-core";
import { tenants } from "./tenants";
import { parties } from "./parties";

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
    locationTypeId: uuid("location_type_id").references(() => locationTypes.id, { onDelete: "restrict" }),

    name: text("name").notNull(),
    code: text("code").notNull(),
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
    tenantTypeIdx: index("locations_tenant_type_idx").on(table.tenantId, table.locationTypeId),
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
    assetTypeId: uuid("asset_type_id").references(() => assetTypes.id, { onDelete: "restrict" }),

    name: text("name").notNull(),
    code: text("code").notNull(),
    // "active", "inactive", "maintenance", "retired"
    status: text("status").notNull().default("active"),

    // Extended fields
    serialNumber: text("serial_number"),
    qrCode: text("qr_code"),

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
    qrCodeIdx: uniqueIndex("assets_qr_code_idx").on(table.qrCode),
    tenantLocationIdx: index("assets_tenant_location_idx").on(table.tenantId, table.locationId),
    tenantParentIdx: index("assets_tenant_parent_idx").on(table.tenantId, table.parentAssetId),
    tenantTypeIdx: index("assets_tenant_type_idx").on(table.tenantId, table.assetTypeId),
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
  locations: many(locations),
}));

export const locationsRelations = relations(locations, ({ one, many }) => ({
  tenant: one(tenants, {
    fields: [locations.tenantId],
    references: [tenants.id],
  }),
  locationType: one(locationTypes, {
    fields: [locations.locationTypeId],
    references: [locationTypes.id],
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
  assets: many(assets),
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
  assetType: one(assetTypes, {
    fields: [assets.assetTypeId],
    references: [assetTypes.id],
  }),
  parentAsset: one(assets, {
    fields: [assets.parentAssetId],
    references: [assets.id],
    relationName: "parentAsset",
  }),
  childAssets: many(assets, {
    relationName: "parentAsset",
  }),
  warranties: many(assetWarranties),
  assignments: many(assetAssignments),
  purchases: many(assetPurchases),
}));

// Asset Warranties - Track warranty information for assets
export const assetWarranties = pgTable(
  "asset_warranties",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id").notNull().references(() => tenants.id, { onDelete: "cascade" }),
    assetId: uuid("asset_id").notNull().references(() => assets.id, { onDelete: "cascade" }),

    warrantyType: text("warranty_type").notNull(), // "manufacturer", "extended", "service_contract"
    providerId: uuid("provider_id").references(() => parties.id, { onDelete: "restrict" }),
    startDate: date("start_date").notNull(),
    expiryDate: date("expiry_date").notNull(),
    cost: decimal("cost", { precision: 15, scale: 2 }),
    currency: text("currency").default("TRY"),
    contractNumber: text("contract_number"),
    coverageDetails: jsonb("coverage_details"),
    isActive: boolean("is_active").notNull().default(true),
    notes: text("notes"),

    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    tenantAssetIdx: index("asset_warranties_tenant_asset_idx").on(table.tenantId, table.assetId),
    tenantActiveIdx: index("asset_warranties_tenant_active_idx").on(table.tenantId, table.isActive),
    expiryDateIdx: index("asset_warranties_expiry_date_idx").on(table.expiryDate),
    warrantyTypeIdx: index("asset_warranties_warranty_type_idx").on(table.warrantyType),
  })
);

// Asset Assignments - Track asset assignments to users/departments/locations
export const assetAssignments = pgTable(
  "asset_assignments",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id").notNull().references(() => tenants.id, { onDelete: "cascade" }),
    assetId: uuid("asset_id").notNull().references(() => assets.id, { onDelete: "cascade" }),

    assignedTo: uuid("assigned_to").notNull(),
    assignedType: text("assigned_type").notNull(), // "user", "department", "location"
    assignedBy: uuid("assigned_by").notNull(),
    assignmentDate: timestamp("assignment_date", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    expectedReturnDate: date("expected_return_date"),
    actualReturnDate: timestamp("actual_return_date", { withTimezone: true, precision: 6 }),
    status: text("status").notNull().default("active"), // "active", "returned", "transferred"
    transferredToAssignmentId: uuid("transferred_to_assignment_id"),
    notes: text("notes"),
    signatureImageId: uuid("signature_image_id"),
    assignmentReason: text("assignment_reason"),
    returnCondition: text("return_condition"), // "good", "damaged", "needs_repair"

    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    tenantAssetIdx: index("asset_assignments_tenant_asset_idx").on(table.tenantId, table.assetId),
    assignedToIdx: index("asset_assignments_assigned_to_idx").on(table.assignedTo, table.assignedType),
    statusIdx: index("asset_assignments_status_idx").on(table.status),
    assignmentDateIdx: index("asset_assignments_assignment_date_idx").on(table.assignmentDate),
    statusCheck: sql`CONSTRAINT asset_assignments_status_check CHECK (status IN ('active', 'returned', 'transferred'))`,
    assignedTypeCheck: sql`CONSTRAINT asset_assignments_assigned_type_check CHECK (assigned_type IN ('user', 'department', 'location'))`,
  })
);

// Asset Purchases - Track purchase information for assets
export const assetPurchases = pgTable(
  "asset_purchases",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id").notNull().references(() => tenants.id, { onDelete: "cascade" }),
    assetId: uuid("asset_id").notNull().references(() => assets.id, { onDelete: "cascade" }),

    purchaseDate: date("purchase_date").notNull(),
    purchasePrice: decimal("purchase_price", { precision: 15, scale: 2 }).notNull(),
    currency: text("currency").notNull().default("TRY"),
    vendorId: uuid("vendor_id").references(() => parties.id, { onDelete: "restrict" }),
    invoiceNumber: text("invoice_number"),
    poNumber: text("po_number"),
    purchaseType: text("purchase_type").notNull().default("new"), // "new", "lease", "donation", "transfer"
    leaseInfo: jsonb("lease_info"),
    notes: text("notes"),

    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    tenantAssetIdx: index("asset_purchases_tenant_asset_idx").on(table.tenantId, table.assetId),
    purchaseDateIdx: index("asset_purchases_purchase_date_idx").on(table.purchaseDate),
    vendorIdx: index("asset_purchases_vendor_idx").on(table.vendorId),
    purchaseTypeCheck: sql`CONSTRAINT asset_purchases_purchase_type_check CHECK (purchase_type IN ('new', 'lease', 'donation', 'transfer'))`,
  })
);

// Departments - Organizational departments
export const departments = pgTable(
  "departments",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id").notNull().references(() => tenants.id, { onDelete: "cascade" }),
    parentDepartmentId: uuid("parent_department_id"),

    name: text("name").notNull(),
    code: text("code").notNull(),
    description: text("description"),
    locationId: uuid("location_id").references(() => locations.id, { onDelete: "restrict" }),
    managerId: uuid("manager_id"),
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
    tenantCodeIdx: uniqueIndex("departments_tenant_code_idx").on(table.tenantId, table.code),
    tenantParentIdx: index("departments_tenant_parent_idx").on(table.tenantId, table.parentDepartmentId),
    tenantActiveIdx: index("departments_tenant_active_idx").on(table.tenantId, table.isActive),
    locationIdx: index("departments_location_idx").on(table.locationId),
  })
);

// Department Members - Track department membership
export const departmentMembers = pgTable(
  "department_members",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id").notNull().references(() => tenants.id, { onDelete: "cascade" }),
    departmentId: uuid("department_id").notNull().references(() => departments.id, { onDelete: "cascade" }),
    userId: uuid("user_id").notNull(),

    role: text("role").notNull().default("member"), // "member", "manager", "viewer"
    joinedAt: timestamp("joined_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    leftAt: timestamp("left_at", { withTimezone: true, precision: 6 }),

    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    departmentUserIdx: uniqueIndex("department_members_dept_user_idx").on(table.departmentId, table.userId),
    tenantUserIdx: index("department_members_tenant_user_idx").on(table.tenantId, table.userId),
    roleCheck: sql`CONSTRAINT department_members_role_check CHECK (role IN ('member', 'manager', 'viewer'))`,
  })
);

// Relations for new tables
export const assetWarrantiesRelations = relations(assetWarranties, ({ one }) => ({
  tenant: one(tenants, {
    fields: [assetWarranties.tenantId],
    references: [tenants.id],
  }),
  asset: one(assets, {
    fields: [assetWarranties.assetId],
    references: [assets.id],
  }),
  provider: one(parties, {
    fields: [assetWarranties.providerId],
    references: [parties.id],
  }),
}));

export const assetAssignmentsRelations = relations(assetAssignments, ({ one }) => ({
  tenant: one(tenants, {
    fields: [assetAssignments.tenantId],
    references: [tenants.id],
  }),
  asset: one(assets, {
    fields: [assetAssignments.assetId],
    references: [assets.id],
  }),
}));

export const assetPurchasesRelations = relations(assetPurchases, ({ one }) => ({
  tenant: one(tenants, {
    fields: [assetPurchases.tenantId],
    references: [tenants.id],
  }),
  asset: one(assets, {
    fields: [assetPurchases.assetId],
    references: [assets.id],
  }),
  vendor: one(parties, {
    fields: [assetPurchases.vendorId],
    references: [parties.id],
  }),
}));

export const departmentsRelations = relations(departments, ({ one, many }) => ({
  tenant: one(tenants, {
    fields: [departments.tenantId],
    references: [tenants.id],
  }),
  location: one(locations, {
    fields: [departments.locationId],
    references: [locations.id],
  }),
  parentDepartment: one(departments, {
    fields: [departments.parentDepartmentId],
    references: [departments.id],
    relationName: "parentDepartment",
  }),
  childDepartments: many(departments, {
    relationName: "parentDepartment",
  }),
  members: many(departmentMembers),
}));

export const departmentMembersRelations = relations(departmentMembers, ({ one }) => ({
  tenant: one(tenants, {
    fields: [departmentMembers.tenantId],
    references: [tenants.id],
  }),
  department: one(departments, {
    fields: [departmentMembers.departmentId],
    references: [departments.id],
  }),
}));