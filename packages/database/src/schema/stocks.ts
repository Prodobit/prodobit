import { pgTable, uuid, text, boolean, decimal, varchar, timestamp, integer, json, index, unique, check } from 'drizzle-orm/pg-core';
import { relations, sql } from 'drizzle-orm';
import { items } from './items';
import { locations } from './assets';
import { tenants } from './tenants';

// Lots Table - Lot tracking for items
export const lots = pgTable(
  'lots',
  {
    id: uuid('id').primaryKey().defaultRandom(),
    tenantId: uuid('tenant_id')
      .notNull()
      .references(() => tenants.id, { onDelete: 'cascade' }),

    // Lot identification
    lotNumber: varchar('lot_number', { length: 255 }).notNull(),
    
    // Quantity tracking
    actualQuantity: decimal('actual_quantity', { precision: 15, scale: 3 }).notNull().default('0'),
    expectedQuantity: decimal('expected_quantity', { precision: 15, scale: 3 }).notNull().default('0'),

    // Hierarchical structure - parent/child lots
    parentLotId: uuid('parent_lot_id'),
    
    // Location tracking
    locationId: uuid('location_id')
      .references(() => locations.id, { onDelete: 'restrict' }),

    insertedAt: timestamp('inserted_at', { mode: 'date', precision: 6, withTimezone: true }).notNull().defaultNow(),
    updatedAt: timestamp('updated_at', { mode: 'date', precision: 6, withTimezone: true }).notNull().defaultNow(),
    deletedAt: timestamp('deleted_at', { mode: 'date', precision: 6, withTimezone: true }),
  },
  (table) => ({
    lotNumberUnique: unique().on(table.tenantId, table.lotNumber),
    parentLotIdx: index().on(table.tenantId, table.parentLotId),
    locationIdx: index().on(table.tenantId, table.locationId),
    tenantIdx: index().on(table.tenantId),
    actualQtyCheck: check('lot_actual_quantity_check', sql`${table.actualQuantity} >= 0`),
    expectedQtyCheck: check('lot_expected_quantity_check', sql`${table.expectedQuantity} >= 0`),
  })
);

// Stocks Table - Item stock levels by location and lot
export const stocks = pgTable(
  'stocks',
  {
    id: uuid('id').primaryKey().defaultRandom(),
    tenantId: uuid('tenant_id')
      .notNull()
      .references(() => tenants.id, { onDelete: 'cascade' }),

    // Item and lot tracking
    itemId: uuid('item_id')
      .notNull()
      .references(() => items.id, { onDelete: 'restrict' }),
    lotId: uuid('lot_id')
      .references(() => lots.id, { onDelete: 'restrict' }),
    
    // Quantity and location
    quantity: decimal('quantity', { precision: 15, scale: 3 }).notNull(),
    locationId: uuid('location_id')
      .notNull()
      .references(() => locations.id, { onDelete: 'restrict' }),

    // Stock status: available, reserved, quarantined, damaged, etc.
    status: varchar('status', { length: 50 }).notNull().default('available'),

    insertedAt: timestamp('inserted_at', { mode: 'date', precision: 6, withTimezone: true }).notNull().defaultNow(),
    updatedAt: timestamp('updated_at', { mode: 'date', precision: 6, withTimezone: true }).notNull().defaultNow(),
    deletedAt: timestamp('deleted_at', { mode: 'date', precision: 6, withTimezone: true }),
  },
  (table) => ({
    itemIdx: index().on(table.tenantId, table.itemId),
    lotIdx: index().on(table.tenantId, table.lotId),
    locationIdx: index().on(table.tenantId, table.locationId),
    statusIdx: index().on(table.tenantId, table.status),
    tenantIdx: index().on(table.tenantId),
    quantityCheck: check('stock_quantity_check', sql`${table.quantity} >= 0`),
    // Unique constraint for stock (item, lot, location combination per tenant)
    stockItemLotLocationUnique: unique('uk_stock_item_lot_location').on(
      table.tenantId, 
      table.itemId, 
      table.lotId, 
      table.locationId
    ),
  })
);

// Stock Transactions Table - All stock movements
export const stockTransactions = pgTable(
  'stock_transactions',
  {
    id: uuid('id').primaryKey().defaultRandom(),
    tenantId: uuid('tenant_id')
      .notNull()
      .references(() => tenants.id, { onDelete: 'cascade' }),

    // Related entities
    stockId: uuid('stock_id')
      .notNull()
      .references(() => stocks.id, { onDelete: 'restrict' }),
    lotId: uuid('lot_id')
      .references(() => lots.id, { onDelete: 'restrict' }),
    itemId: uuid('item_id')
      .notNull()
      .references(() => items.id, { onDelete: 'restrict' }),

    // Transaction details
    // Transaction types: in, out, transfer, adjustment, production, consumption, etc.
    transactionType: varchar('transaction_type', { length: 50 }).notNull(),
    quantity: decimal('quantity', { precision: 15, scale: 3 }).notNull(),

    // Location movement
    sourceLocationId: uuid('source_location_id')
      .references(() => locations.id, { onDelete: 'restrict' }),
    destinationLocationId: uuid('destination_location_id')
      .references(() => locations.id, { onDelete: 'restrict' }),

    // Transaction status: pending, completed, cancelled
    status: varchar('status', { length: 50 }).notNull().default('pending'),
    transactionDate: timestamp('transaction_date', { mode: 'date', precision: 6, withTimezone: true }).notNull().defaultNow(),
    description: text('description'),

    // Audit tracking
    createdBy: uuid('created_by'), // User who created this transaction

    insertedAt: timestamp('inserted_at', { mode: 'date', precision: 6, withTimezone: true }).notNull().defaultNow(),
    updatedAt: timestamp('updated_at', { mode: 'date', precision: 6, withTimezone: true }).notNull().defaultNow(),
    deletedAt: timestamp('deleted_at', { mode: 'date', precision: 6, withTimezone: true }),
  },
  (table) => ({
    stockIdx: index().on(table.tenantId, table.stockId),
    lotIdx: index().on(table.tenantId, table.lotId),
    itemIdx: index().on(table.tenantId, table.itemId),
    transactionTypeIdx: index().on(table.tenantId, table.transactionType),
    sourceLocationIdx: index().on(table.tenantId, table.sourceLocationId),
    destinationLocationIdx: index().on(table.tenantId, table.destinationLocationId),
    transactionDateIdx: index().on(table.tenantId, table.transactionDate),
    createdByIdx: index().on(table.tenantId, table.createdBy),
    statusIdx: index().on(table.tenantId, table.status),
    tenantIdx: index().on(table.tenantId),
    // Stock transaction quantity constraint (cannot be zero)
    quantityCheck: check('stock_transaction_quantity_check', sql`${table.quantity} != 0`),
  })
);

// Stock Transaction Sources Table - Track what triggered each transaction
export const stockTransactionSources = pgTable(
  'stock_transaction_sources',
  {
    id: uuid('id').primaryKey().defaultRandom(),
    tenantId: uuid('tenant_id')
      .notNull()
      .references(() => tenants.id, { onDelete: 'cascade' }),

    transactionId: uuid('transaction_id')
      .notNull()
      .references(() => stockTransactions.id, { onDelete: 'cascade' }),

    // Source identification
    // Source types: purchase_order, production_order, sales_order, transfer, adjustment, etc.
    sourceType: varchar('source_type', { length: 50 }).notNull(),
    sourceId: uuid('source_id').notNull(),
    quantity: decimal('quantity', { precision: 15, scale: 3 }).notNull(),

    insertedAt: timestamp('inserted_at', { mode: 'date', precision: 6, withTimezone: true }).notNull().defaultNow(),
    updatedAt: timestamp('updated_at', { mode: 'date', precision: 6, withTimezone: true }).notNull().defaultNow(),
    deletedAt: timestamp('deleted_at', { mode: 'date', precision: 6, withTimezone: true }),
  },
  (table) => ({
    transactionIdx: index().on(table.tenantId, table.transactionId),
    sourceTypeIdx: index().on(table.tenantId, table.sourceType),
    sourceIdIdx: index().on(table.tenantId, table.sourceId),
    tenantIdx: index().on(table.tenantId),
    // Stock transaction sources quantity constraint (must be positive)
    quantityCheck: check('stock_transaction_sources_quantity_check', sql`${table.quantity} > 0`),
    // Unique constraint for transaction source
    transactionSourceUnique: unique('uk_transaction_source').on(
      table.tenantId,
      table.transactionId,
      table.sourceType,
      table.sourceId
    ),
  })
);

// Lot Sources Table - Track what created each lot
export const lotSources = pgTable(
  'lot_sources',
  {
    id: uuid('id').primaryKey().defaultRandom(),
    tenantId: uuid('tenant_id')
      .notNull()
      .references(() => tenants.id, { onDelete: 'cascade' }),

    lotId: uuid('lot_id')
      .notNull()
      .references(() => lots.id, { onDelete: 'cascade' }),

    // Source identification
    // Source types: purchase, production, transfer, merge, split, etc.
    sourceType: varchar('source_type', { length: 50 }).notNull(),
    sourceId: uuid('source_id').notNull(),
    quantity: decimal('quantity', { precision: 15, scale: 3 }).notNull(),

    insertedAt: timestamp('inserted_at', { mode: 'date', precision: 6, withTimezone: true }).notNull().defaultNow(),
    updatedAt: timestamp('updated_at', { mode: 'date', precision: 6, withTimezone: true }).notNull().defaultNow(),
    deletedAt: timestamp('deleted_at', { mode: 'date', precision: 6, withTimezone: true }),
  },
  (table) => ({
    lotIdx: index().on(table.tenantId, table.lotId),
    sourceTypeIdx: index().on(table.tenantId, table.sourceType),
    sourceIdIdx: index().on(table.tenantId, table.sourceId),
    tenantIdx: index().on(table.tenantId),
    // Lot sources quantity constraint (must be positive)
    quantityCheck: check('lot_sources_quantity_check', sql`${table.quantity} > 0`),
    // Unique constraint for lot source
    lotSourceUnique: unique('uk_lot_source').on(
      table.tenantId,
      table.lotId,
      table.sourceType,
      table.sourceId
    ),
  })
);

// Relations
export const lotRelations = relations(lots, ({ one, many }) => ({
  tenant: one(tenants, {
    fields: [lots.tenantId],
    references: [tenants.id],
  }),
  location: one(locations, {
    fields: [lots.locationId],
    references: [locations.id],
  }),
  parentLot: one(lots, {
    fields: [lots.parentLotId],
    references: [lots.id],
    relationName: 'parentLot',
  }),
  childLots: many(lots, { relationName: 'parentLot' }),
  stocks: many(stocks),
  stockTransactions: many(stockTransactions),
  lotSources: many(lotSources),
}));

export const stockRelations = relations(stocks, ({ one, many }) => ({
  tenant: one(tenants, {
    fields: [stocks.tenantId],
    references: [tenants.id],
  }),
  item: one(items, {
    fields: [stocks.itemId],
    references: [items.id],
  }),
  lot: one(lots, {
    fields: [stocks.lotId],
    references: [lots.id],
  }),
  location: one(locations, {
    fields: [stocks.locationId],
    references: [locations.id],
  }),
  stockTransactions: many(stockTransactions),
}));

export const stockTransactionRelations = relations(stockTransactions, ({ one, many }) => ({
  tenant: one(tenants, {
    fields: [stockTransactions.tenantId],
    references: [tenants.id],
  }),
  stock: one(stocks, {
    fields: [stockTransactions.stockId],
    references: [stocks.id],
  }),
  lot: one(lots, {
    fields: [stockTransactions.lotId],
    references: [lots.id],
  }),
  item: one(items, {
    fields: [stockTransactions.itemId],
    references: [items.id],
  }),
  sourceLocation: one(locations, {
    fields: [stockTransactions.sourceLocationId],
    references: [locations.id],
    relationName: 'sourceLocation',
  }),
  destinationLocation: one(locations, {
    fields: [stockTransactions.destinationLocationId],
    references: [locations.id],
    relationName: 'destinationLocation',
  }),
  transactionSources: many(stockTransactionSources),
}));

export const stockTransactionSourceRelations = relations(stockTransactionSources, ({ one }) => ({
  tenant: one(tenants, {
    fields: [stockTransactionSources.tenantId],
    references: [tenants.id],
  }),
  transaction: one(stockTransactions, {
    fields: [stockTransactionSources.transactionId],
    references: [stockTransactions.id],
  }),
}));

export const lotSourceRelations = relations(lotSources, ({ one }) => ({
  tenant: one(tenants, {
    fields: [lotSources.tenantId],
    references: [tenants.id],
  }),
  lot: one(lots, {
    fields: [lotSources.lotId],
    references: [lots.id],
  }),
}));

// Export types
export type Lot = typeof lots.$inferSelect;
export type NewLot = typeof lots.$inferInsert;
export type Stock = typeof stocks.$inferSelect;
export type NewStock = typeof stocks.$inferInsert;
export type StockTransaction = typeof stockTransactions.$inferSelect;
export type NewStockTransaction = typeof stockTransactions.$inferInsert;
export type StockTransactionSource = typeof stockTransactionSources.$inferSelect;
export type NewStockTransactionSource = typeof stockTransactionSources.$inferInsert;
export type LotSource = typeof lotSources.$inferSelect;
export type NewLotSource = typeof lotSources.$inferInsert;