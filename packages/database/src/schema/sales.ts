import {
  pgTable,
  uuid,
  text,
  timestamp,
  date,
  decimal,
  integer,
  boolean,
  index,
  uniqueIndex,
} from "drizzle-orm/pg-core";
import { sql } from "drizzle-orm";
import { tenants } from "./tenants.js";
import { customers } from "./parties.js";
import { addresses } from "./parties.js";
import { items } from "./items.js";
import { users } from "./auth.js";
import { numericAsDecimal } from '../types/decimal.js';

// Sales Orders
export const salesOrders = pgTable(
  "sales_orders",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),

    // Order identification
    orderNumber: text("order_number").notNull(),
    customerId: uuid("customer_id")
      .notNull()
      .references(() => customers.id, { onDelete: "restrict" }),

    // Order dates
    orderDate: date("order_date").notNull().defaultNow(),
    requestedDeliveryDate: date("requested_delivery_date"),
    confirmedDeliveryDate: date("confirmed_delivery_date"),

    // Status: "draft", "confirmed", "in_progress", "shipped", "delivered", "cancelled", "closed"
    status: text("status").notNull().default("draft"),

    // Financial
    totalAmount: numericAsDecimal("total_amount", { precision: 15, scale: 4 }),
    currency: text("currency").notNull().default("TRY"),

    // Shipping
    shippingAddressId: uuid("shipping_address_id").references(() => addresses.id, {
      onDelete: "set null",
    }),
    shippingInstructions: text("shipping_instructions"),

    // Approval
    approvedBy: uuid("approved_by").references(() => users.id, { onDelete: "restrict" }),
    approvedAt: timestamp("approved_at", { withTimezone: true, precision: 6 }),

    // Notes
    notes: text("notes"),

    // System fields
    createdBy: uuid("created_by")
      .notNull()
      .references(() => users.id, { onDelete: "restrict" }),

    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    tenantOrderNumberUnique: uniqueIndex("sales_orders_tenant_order_number_unique").on(
      table.tenantId,
      table.orderNumber
    ),
    tenantCustomerIdx: index("sales_orders_tenant_customer_idx").on(
      table.tenantId,
      table.customerId
    ),
    tenantStatusIdx: index("sales_orders_tenant_status_idx").on(table.tenantId, table.status),
    orderDateIdx: index("sales_orders_order_date_idx").on(table.orderDate),
    requestedDeliveryDateIdx: index("sales_orders_requested_delivery_date_idx").on(
      table.requestedDeliveryDate
    ),
    createdByIdx: index("sales_orders_created_by_idx").on(table.createdBy),

    // Constraints
    statusCheck: sql`CONSTRAINT sales_order_status_check CHECK (status IN ('draft', 'confirmed', 'in_progress', 'shipped', 'delivered', 'cancelled', 'closed'))`,
  })
);

// Sales Order Items
export const salesOrderItems = pgTable(
  "sales_order_items",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),

    salesOrderId: uuid("sales_order_id")
      .notNull()
      .references(() => salesOrders.id, { onDelete: "cascade" }),

    itemId: uuid("item_id")
      .notNull()
      .references(() => items.id, { onDelete: "restrict" }),

    // Quantity and pricing
    quantity: numericAsDecimal("quantity", { precision: 15, scale: 4 }).notNull(),
    unit: text("unit"),
    unitPrice: numericAsDecimal("unit_price", { precision: 15, scale: 4 }).notNull(),
    totalPrice: numericAsDecimal("total_price", { precision: 15, scale: 4 }).notNull(),
    currency: text("currency").default("TRY"),

    // Delivery
    requestedDeliveryDate: date("requested_delivery_date"),
    confirmedDeliveryDate: date("confirmed_delivery_date"),
    actualDeliveryDate: date("actual_delivery_date"),

    // Fulfillment tracking
    shippedQuantity: numericAsDecimal("shipped_quantity", { precision: 15, scale: 4 }),
    remainingQuantity: numericAsDecimal("remaining_quantity", { precision: 15, scale: 4 }).notNull(),

    // Line status
    lineStatus: text("line_status").default("pending"),
    itemNotes: text("item_notes"),

    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    salesOrderIdx: index("sales_order_items_sales_order_idx").on(table.salesOrderId),
    itemIdx: index("sales_order_items_item_idx").on(table.itemId),
    tenantIdx: index("sales_order_items_tenant_idx").on(table.tenantId),
    lineStatusIdx: index("sales_order_items_line_status_idx").on(table.lineStatus),

    // Constraints
    lineStatusCheck: sql`CONSTRAINT sales_order_item_line_status_check CHECK (line_status IN ('pending', 'confirmed', 'in_progress', 'shipped', 'delivered', 'cancelled'))`,
  })
);

// Sales Order Status History
export const salesOrderStatusHistory = pgTable(
  "sales_order_status_history",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),

    salesOrderId: uuid("sales_order_id")
      .notNull()
      .references(() => salesOrders.id, { onDelete: "cascade" }),

    oldStatus: text("old_status"),
    newStatus: text("new_status").notNull(),
    changedBy: uuid("changed_by")
      .notNull()
      .references(() => users.id, { onDelete: "restrict" }),
    changeReason: text("change_reason"),
    notes: text("notes"),

    changedAt: timestamp("changed_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    salesOrderIdx: index("sales_order_status_history_sales_order_idx").on(table.salesOrderId),
    tenantIdx: index("sales_order_status_history_tenant_idx").on(table.tenantId),
    changedByIdx: index("sales_order_status_history_changed_by_idx").on(table.changedBy),
  })
);