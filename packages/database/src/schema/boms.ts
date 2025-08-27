import { pgTable, uuid, text, boolean, decimal, varchar, date, timestamp, integer, json, index, unique } from 'drizzle-orm/pg-core';
import { relations } from 'drizzle-orm';
import { items } from './items';
import { tenants } from './tenants';
import { numericAsDecimal } from '../types/decimal';

// BOMs Table - Bill of Materials
export const boms = pgTable(
  'boms',
  {
    id: uuid('id').primaryKey().defaultRandom(),
    tenantId: uuid('tenant_id')
      .notNull()
      .references(() => tenants.id, { onDelete: 'cascade' }),

    // Which item's recipe
    itemId: uuid('item_id')
      .notNull()
      .references(() => items.id, { onDelete: 'restrict' }),

    bomCode: varchar('bom_code', { length: 255 }).notNull(),
    name: varchar('name', { length: 255 }).notNull(),
    description: text('description'),

    // "draft", "active", "obsolete", "under_review"
    status: varchar('status', { length: 50 }).notNull().default('draft'),

    // BOM version
    version: varchar('version', { length: 50 }).notNull().default('1.0'),
    isCurrentVersion: boolean('is_current_version').notNull().default(true),

    // Production information
    productionQuantity: numericAsDecimal('production_quantity', { precision: 15, scale: 4 }),
    productionUnit: varchar('production_unit', { length: 50 }),

    // Validity dates
    validFrom: date('valid_from').notNull().defaultNow(),
    validTo: date('valid_to'),

    // Engineering responsible
    engineerId: uuid('engineer_id'),
    approvedBy: uuid('approved_by'),
    approvedAt: timestamp('approved_at', { mode: 'date', precision: 6, withTimezone: true }),

    // Phantom BOM properties
    isPhantomBom: boolean('is_phantom_bom').notNull().default(false),
    // "immediate", "one_level", "full_explosion"
    phantomExplosionPolicy: varchar('phantom_explosion_policy', { length: 50 }).notNull().default('immediate'),

    // Manufacturing context
    // "assemble_to_stock", "assemble_to_order", "phantom"
    manufacturingPolicy: varchar('manufacturing_policy', { length: 50 }).notNull().default('assemble_to_stock'),
    // "mrp", "reorder_point", "phantom"
    planningPolicy: varchar('planning_policy', { length: 50 }).notNull().default('mrp'),

    insertedAt: timestamp('inserted_at', { mode: 'date', precision: 6, withTimezone: true }).notNull().defaultNow(),
    updatedAt: timestamp('updated_at', { mode: 'date', precision: 6, withTimezone: true }).notNull().defaultNow(),
    deletedAt: timestamp('deleted_at', { mode: 'date', precision: 6, withTimezone: true }),
  },
  (table) => ({
    bomCodeUnique: unique().on(table.tenantId, table.bomCode),
    itemVersionUnique: unique().on(table.itemId, table.version),
    tenantItemIdx: index().on(table.tenantId, table.itemId),
    tenantStatusIdx: index().on(table.tenantId, table.status),
    currentVersionIdx: index().on(table.isCurrentVersion),
    validityIdx: index().on(table.validFrom, table.validTo),
    phantomBomIdx: index().on(table.isPhantomBom),
    manufacturingPolicyIdx: index().on(table.manufacturingPolicy),
  })
);

// BOM Components Table - Recipe components
export const bomComponents = pgTable(
  'bom_components',
  {
    id: uuid('id').primaryKey().defaultRandom(),
    tenantId: uuid('tenant_id')
      .notNull()
      .references(() => tenants.id, { onDelete: 'cascade' }),

    bomId: uuid('bom_id')
      .notNull()
      .references(() => boms.id, { onDelete: 'cascade' }),
    componentItemId: uuid('component_item_id')
      .notNull()
      .references(() => items.id, { onDelete: 'restrict' }),

    // Hierarchical structure for parent component
    parentComponentId: uuid('parent_component_id'),

    // Quantity and unit
    quantity: numericAsDecimal('quantity', { precision: 15, scale: 4 }).notNull(),
    unit: varchar('unit', { length: 50 }).notNull(),

    // Component properties
    // "material", "assembly", "phantom"
    componentType: varchar('component_type', { length: 50 }).notNull().default('material'),
    isOptional: boolean('is_optional').notNull().default(false),
    isCritical: boolean('is_critical').notNull().default(false),

    // Phantom behaviors
    // "always_explode", "conditional_explode", "planning_only"
    phantomPolicy: varchar('phantom_policy', { length: 50 }).notNull().default('always_explode'),

    // Component sourcing
    // "make", "buy", "phantom", "configured"
    sourcingType: varchar('sourcing_type', { length: 50 }).notNull().default('buy'),

    // Phantom explosion control
    explodeInMrp: boolean('explode_in_mrp').notNull().default(true),
    explodeInCosting: boolean('explode_in_costing').notNull().default(true),
    explodeInPicking: boolean('explode_in_picking').notNull().default(true),

    // Lead time inheritance for phantoms
    inheritedLeadTime: integer('inherited_lead_time'),
    setupTimeMinutes: integer('setup_time_minutes').notNull().default(0),
    runTimePerUnitSeconds: numericAsDecimal('run_time_per_unit_seconds', { precision: 8, scale: 2 }),

    // Validity
    validFrom: date('valid_from').notNull().defaultNow(),
    validTo: date('valid_to'),

    insertedAt: timestamp('inserted_at', { mode: 'date', precision: 6, withTimezone: true }).notNull().defaultNow(),
    updatedAt: timestamp('updated_at', { mode: 'date', precision: 6, withTimezone: true }).notNull().defaultNow(),
    deletedAt: timestamp('deleted_at', { mode: 'date', precision: 6, withTimezone: true }),
  },
  (table) => ({
    bomIdx: index().on(table.bomId),
    componentItemIdx: index().on(table.componentItemId),
    parentComponentIdx: index().on(table.parentComponentId),
    tenantIdx: index().on(table.tenantId),
    componentTypeIdx: index().on(table.componentType),
    sourcingTypeIdx: index().on(table.sourcingType),
    explodeMrpIdx: index().on(table.explodeInMrp),
  })
);

// Engineering Change Orders Table - Engineering change orders
export const engineeringChangeOrders = pgTable(
  'engineering_change_orders',
  {
    id: uuid('id').primaryKey().defaultRandom(),
    tenantId: uuid('tenant_id')
      .notNull()
      .references(() => tenants.id, { onDelete: 'cascade' }),

    ecoNumber: varchar('eco_number', { length: 255 }).notNull(),
    title: varchar('title', { length: 255 }).notNull(),
    description: text('description').notNull(),

    // "draft", "submitted", "under_review", "approved", "rejected", "implemented", "closed"
    status: varchar('status', { length: 50 }).notNull().default('draft'),

    // ECO type
    // "design", "process", "material", "tooling"
    changeType: varchar('change_type', { length: 50 }).notNull(),

    // Priority
    // "low", "medium", "high", "critical"
    priority: varchar('priority', { length: 50 }).notNull().default('medium'),

    // Related BOMs
    affectedBomIds: json('affected_bom_ids').$type<string[]>().notNull().default([]),

    // Reason for change
    reasonForChange: text('reason_for_change').notNull(),
    impactAnalysis: text('impact_analysis'),

    // Cost impact
    estimatedCostImpact: numericAsDecimal('estimated_cost_impact', { precision: 15, scale: 2 }),
    costCurrency: varchar('cost_currency', { length: 3 }).notNull().default('TRY'),

    // Timeline
    requestedCompletionDate: date('requested_completion_date'),
    actualCompletionDate: date('actual_completion_date'),

    // Approval workflow
    requestedBy: uuid('requested_by').notNull(),
    assignedTo: uuid('assigned_to'),
    approvedBy: uuid('approved_by'),
    approvedAt: timestamp('approved_at', { mode: 'date', precision: 6, withTimezone: true }),
    rejectedBy: uuid('rejected_by'),
    rejectedAt: timestamp('rejected_at', { mode: 'date', precision: 6, withTimezone: true }),
    rejectionReason: text('rejection_reason'),

    // Implementation
    implementedBy: uuid('implemented_by'),
    implementedAt: timestamp('implemented_at', { mode: 'date', precision: 6, withTimezone: true }),
    implementationNotes: text('implementation_notes'),

    insertedAt: timestamp('inserted_at', { mode: 'date', precision: 6, withTimezone: true }).notNull().defaultNow(),
    updatedAt: timestamp('updated_at', { mode: 'date', precision: 6, withTimezone: true }).notNull().defaultNow(),
    deletedAt: timestamp('deleted_at', { mode: 'date', precision: 6, withTimezone: true }),
  },
  (table) => ({
    ecoNumberUnique: unique().on(table.tenantId, table.ecoNumber),
    tenantStatusIdx: index().on(table.tenantId, table.status),
    changeTypeIdx: index().on(table.changeType),
    priorityIdx: index().on(table.priority),
    requestedByIdx: index().on(table.requestedBy),
    assignedToIdx: index().on(table.assignedTo),
    requestedCompletionIdx: index().on(table.requestedCompletionDate),
  })
);

// ECO BOM Changes Table - Details of BOM changes affected by ECO
export const ecoBomChanges = pgTable(
  'eco_bom_changes',
  {
    id: uuid('id').primaryKey().defaultRandom(),
    tenantId: uuid('tenant_id')
      .notNull()
      .references(() => tenants.id, { onDelete: 'cascade' }),

    ecoId: uuid('eco_id')
      .notNull()
      .references(() => engineeringChangeOrders.id, { onDelete: 'cascade' }),

    bomId: uuid('bom_id')
      .notNull()
      .references(() => boms.id, { onDelete: 'restrict' }),

    // Change type
    // "add", "remove", "modify", "replace"
    changeAction: varchar('change_action', { length: 50 }).notNull(),

    // Old and new BOM components (for modify/replace)
    oldBomComponentId: uuid('old_bom_component_id')
      .references(() => bomComponents.id, { onDelete: 'set null' }),
    newBomComponentId: uuid('new_bom_component_id')
      .references(() => bomComponents.id, { onDelete: 'set null' }),

    // Change details
    changeDescription: text('change_description').notNull(),
    // Old values as JSON
    oldValues: json('old_values'),
    // New values as JSON
    newValues: json('new_values'),

    // Implementation status
    isImplemented: boolean('is_implemented').notNull().default(false),
    implementedAt: timestamp('implemented_at', { mode: 'date', precision: 6, withTimezone: true }),

    insertedAt: timestamp('inserted_at', { mode: 'date', precision: 6, withTimezone: true }).notNull().defaultNow(),
    updatedAt: timestamp('updated_at', { mode: 'date', precision: 6, withTimezone: true }).notNull().defaultNow(),
    deletedAt: timestamp('deleted_at', { mode: 'date', precision: 6, withTimezone: true }),
  },
  (table) => ({
    ecoIdx: index().on(table.ecoId),
    bomIdx: index().on(table.bomId),
    tenantIdx: index().on(table.tenantId),
    changeActionIdx: index().on(table.changeAction),
    implementedIdx: index().on(table.isImplemented),
  })
);

// BOM Version History Table - BOM change history
export const bomVersionHistory = pgTable(
  'bom_version_history',
  {
    id: uuid('id').primaryKey().defaultRandom(),
    tenantId: uuid('tenant_id')
      .notNull()
      .references(() => tenants.id, { onDelete: 'cascade' }),

    bomId: uuid('bom_id')
      .notNull()
      .references(() => boms.id, { onDelete: 'restrict' }),
    ecoId: uuid('eco_id')
      .references(() => engineeringChangeOrders.id, { onDelete: 'set null' }),

    oldVersion: varchar('old_version', { length: 50 }).notNull(),
    newVersion: varchar('new_version', { length: 50 }).notNull(),

    changeSummary: text('change_summary').notNull(),
    changedBy: uuid('changed_by').notNull(),

    insertedAt: timestamp('inserted_at', { mode: 'date', precision: 6, withTimezone: true }).notNull().defaultNow(),
  },
  (table) => ({
    bomIdx: index().on(table.bomId),
    ecoIdx: index().on(table.ecoId),
    tenantIdx: index().on(table.tenantId),
    changedByIdx: index().on(table.changedBy),
  })
);

// Relations
export const bomRelations = relations(boms, ({ one, many }) => ({
  tenant: one(tenants, {
    fields: [boms.tenantId],
    references: [tenants.id],
  }),
  item: one(items, {
    fields: [boms.itemId],
    references: [items.id],
  }),
  components: many(bomComponents),
  ecoBomChanges: many(ecoBomChanges),
  versionHistory: many(bomVersionHistory),
}));

export const bomComponentRelations = relations(bomComponents, ({ one, many }) => ({
  tenant: one(tenants, {
    fields: [bomComponents.tenantId],
    references: [tenants.id],
  }),
  bom: one(boms, {
    fields: [bomComponents.bomId],
    references: [boms.id],
  }),
  componentItem: one(items, {
    fields: [bomComponents.componentItemId],
    references: [items.id],
  }),
  parentComponent: one(bomComponents, {
    fields: [bomComponents.parentComponentId],
    references: [bomComponents.id],
    relationName: 'parentComponent',
  }),
  childComponents: many(bomComponents, { relationName: 'parentComponent' }),
  oldBomChanges: many(ecoBomChanges, { relationName: 'oldBomComponent' }),
  newBomChanges: many(ecoBomChanges, { relationName: 'newBomComponent' }),
}));

export const engineeringChangeOrderRelations = relations(engineeringChangeOrders, ({ one, many }) => ({
  tenant: one(tenants, {
    fields: [engineeringChangeOrders.tenantId],
    references: [tenants.id],
  }),
  ecoBomChanges: many(ecoBomChanges),
  versionHistory: many(bomVersionHistory),
}));

export const ecoBomChangeRelations = relations(ecoBomChanges, ({ one }) => ({
  tenant: one(tenants, {
    fields: [ecoBomChanges.tenantId],
    references: [tenants.id],
  }),
  eco: one(engineeringChangeOrders, {
    fields: [ecoBomChanges.ecoId],
    references: [engineeringChangeOrders.id],
  }),
  bom: one(boms, {
    fields: [ecoBomChanges.bomId],
    references: [boms.id],
  }),
  oldBomComponent: one(bomComponents, {
    fields: [ecoBomChanges.oldBomComponentId],
    references: [bomComponents.id],
    relationName: 'oldBomComponent',
  }),
  newBomComponent: one(bomComponents, {
    fields: [ecoBomChanges.newBomComponentId],
    references: [bomComponents.id],
    relationName: 'newBomComponent',
  }),
}));

export const bomVersionHistoryRelations = relations(bomVersionHistory, ({ one }) => ({
  tenant: one(tenants, {
    fields: [bomVersionHistory.tenantId],
    references: [tenants.id],
  }),
  bom: one(boms, {
    fields: [bomVersionHistory.bomId],
    references: [boms.id],
  }),
  eco: one(engineeringChangeOrders, {
    fields: [bomVersionHistory.ecoId],
    references: [engineeringChangeOrders.id],
  }),
}));

// Export types
export type Bom = typeof boms.$inferSelect;
export type NewBom = typeof boms.$inferInsert;
export type BomComponent = typeof bomComponents.$inferSelect;
export type NewBomComponent = typeof bomComponents.$inferInsert;
export type EngineeringChangeOrder = typeof engineeringChangeOrders.$inferSelect;
export type NewEngineeringChangeOrder = typeof engineeringChangeOrders.$inferInsert;
export type EcoBomChange = typeof ecoBomChanges.$inferSelect;
export type NewEcoBomChange = typeof ecoBomChanges.$inferInsert;
export type BomVersionHistory = typeof bomVersionHistory.$inferSelect;
export type NewBomVersionHistory = typeof bomVersionHistory.$inferInsert;