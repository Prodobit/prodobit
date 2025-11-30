import { relations, sql } from "drizzle-orm";
import {
  pgTable,
  uuid,
  text,
  timestamp,
  decimal,
  index,
  check,
} from "drizzle-orm/pg-core";
import { tenants } from "./tenants";
import { assets } from "./assets";
import { items } from "./items";
import { stockTransactions } from "./stocks";
import { maintenanceRecords } from "./maintenance-plans";
import { calibrationRecords } from "./calibration-plans";
import { users } from "./auth";

/**
 * Asset Stock Usages (Varlık Stok Kullanımları)
 *
 * Asset'lere yapılan yedek parça ve sarf malzeme kullanımlarını takip eder.
 * stockTransactions ile asset/maintenance/calibration kayıtları arasında köprü görevi görür.
 *
 * Usage Types:
 * - maintenance: Bakım sırasında kullanılan malzemeler
 * - repair: Arıza onarımı sırasında kullanılan malzemeler
 * - calibration: Kalibrasyon sırasında kullanılan malzemeler (nadir)
 * - replacement: Parça değişimi
 * - routine: Rutin kullanım (yağlama, temizlik vb.)
 */
export const assetStockUsages = pgTable(
  "asset_stock_usages",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),

    // Core references
    assetId: uuid("asset_id")
      .notNull()
      .references(() => assets.id, { onDelete: "cascade" }),
    itemId: uuid("item_id")
      .notNull()
      .references(() => items.id, { onDelete: "restrict" }),
    stockTransactionId: uuid("stock_transaction_id")
      .references(() => stockTransactions.id, { onDelete: "set null" }),

    // Optional references to source records
    maintenanceRecordId: uuid("maintenance_record_id")
      .references(() => maintenanceRecords.id, { onDelete: "set null" }),
    calibrationRecordId: uuid("calibration_record_id")
      .references(() => calibrationRecords.id, { onDelete: "set null" }),

    // Usage details
    usageType: text("usage_type").notNull(), // maintenance, repair, calibration, replacement, routine
    quantity: decimal("quantity", { precision: 15, scale: 3 }).notNull(),
    unit: text("unit").notNull(),

    // When and who
    usedAt: timestamp("used_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    usedById: uuid("used_by_id")
      .references(() => users.id, { onDelete: "set null" }),

    // Cost tracking (optional - can be derived from item price)
    unitCost: decimal("unit_cost", { precision: 15, scale: 4 }),
    totalCost: decimal("total_cost", { precision: 15, scale: 4 }),
    currency: text("currency").default("TRY"),

    // Additional info
    notes: text("notes"),
    lotNumber: text("lot_number"), // If tracking specific lot
    serialNumber: text("serial_number"), // If tracking specific serial

    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    // Indexes
    tenantAssetIdx: index("asset_stock_usages_tenant_asset_idx").on(
      table.tenantId,
      table.assetId
    ),
    tenantItemIdx: index("asset_stock_usages_tenant_item_idx").on(
      table.tenantId,
      table.itemId
    ),
    stockTransactionIdx: index("asset_stock_usages_stock_transaction_idx").on(
      table.stockTransactionId
    ),
    maintenanceRecordIdx: index("asset_stock_usages_maintenance_record_idx").on(
      table.maintenanceRecordId
    ),
    calibrationRecordIdx: index("asset_stock_usages_calibration_record_idx").on(
      table.calibrationRecordId
    ),
    usageTypeIdx: index("asset_stock_usages_usage_type_idx").on(
      table.tenantId,
      table.usageType
    ),
    usedAtIdx: index("asset_stock_usages_used_at_idx").on(table.usedAt),
    usedByIdx: index("asset_stock_usages_used_by_idx").on(table.usedById),

    // Constraints
    usageTypeCheck: sql`CONSTRAINT asset_stock_usages_usage_type_check CHECK (usage_type IN ('maintenance', 'repair', 'calibration', 'replacement', 'routine'))`,
    quantityCheck: check(
      "asset_stock_usages_quantity_check",
      sql`${table.quantity} > 0`
    ),
  })
);

// Relations
export const assetStockUsagesRelations = relations(
  assetStockUsages,
  ({ one }) => ({
    tenant: one(tenants, {
      fields: [assetStockUsages.tenantId],
      references: [tenants.id],
    }),
    asset: one(assets, {
      fields: [assetStockUsages.assetId],
      references: [assets.id],
    }),
    item: one(items, {
      fields: [assetStockUsages.itemId],
      references: [items.id],
    }),
    stockTransaction: one(stockTransactions, {
      fields: [assetStockUsages.stockTransactionId],
      references: [stockTransactions.id],
    }),
    maintenanceRecord: one(maintenanceRecords, {
      fields: [assetStockUsages.maintenanceRecordId],
      references: [maintenanceRecords.id],
    }),
    calibrationRecord: one(calibrationRecords, {
      fields: [assetStockUsages.calibrationRecordId],
      references: [calibrationRecords.id],
    }),
    usedBy: one(users, {
      fields: [assetStockUsages.usedById],
      references: [users.id],
    }),
  })
);

// Export types
export type AssetStockUsage = typeof assetStockUsages.$inferSelect;
export type NewAssetStockUsage = typeof assetStockUsages.$inferInsert;
