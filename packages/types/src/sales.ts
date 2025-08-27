import { type } from "arktype";
import { uuid, timestamp, status } from "./common";

// Sales Order Status
export const salesOrderStatus = type(
  "'draft' | 'confirmed' | 'in_progress' | 'shipped' | 'delivered' | 'cancelled' | 'closed'"
);

// Sales Order Item
export const salesOrderItem = type({
  itemId: uuid,
  quantity: "number>0",
  unitPrice: "number>=0",
  "unit?": "string",
  "requestedDeliveryDate?": timestamp,
  "itemNotes?": "string",
});

export const createSalesOrderItemRequest = type({
  itemId: uuid,
  quantity: "number>0", 
  unitPrice: "number>=0",
  "unit?": "string",
  "requestedDeliveryDate?": timestamp,
  "itemNotes?": "string",
});

export const updateSalesOrderItemRequest = type({
  "quantity?": "number>0",
  "unitPrice?": "number>=0", 
  "unit?": "string",
  "requestedDeliveryDate?": timestamp,
  "confirmedDeliveryDate?": timestamp,
  "itemNotes?": "string",
});

// Sales Order
export const salesOrder = type({
  id: uuid,
  tenantId: uuid,
  customerId: uuid,
  orderDate: timestamp,
  "requestedDeliveryDate?": timestamp,
  "confirmedDeliveryDate?": timestamp,
  status: salesOrderStatus,
  "shippingAddressId?": uuid,
  "shippingInstructions?": "string",
  "notes?": "string",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createSalesOrderRequest = type({
  customerId: uuid,
  orderDate: timestamp,
  "requestedDeliveryDate?": timestamp,
  "shippingAddressId?": uuid,
  "shippingInstructions?": "string",
  "notes?": "string",
  items: createSalesOrderItemRequest.array(),
});

export const updateSalesOrderRequest = type({
  "customerId?": uuid,
  "requestedDeliveryDate?": timestamp,
  "confirmedDeliveryDate?": timestamp,
  "shippingAddressId?": uuid,
  "shippingInstructions?": "string",
  "notes?": "string",
});

export const updateSalesOrderStatusRequest = type({
  status: salesOrderStatus,
  "changeReason?": "string",
  "notes?": "string",
});

// Type exports
export type SalesOrderStatus = typeof salesOrderStatus.infer;
export type SalesOrder = typeof salesOrder.infer;
export type SalesOrderItem = typeof salesOrderItem.infer;
export type CreateSalesOrderRequest = typeof createSalesOrderRequest.infer;
export type UpdateSalesOrderRequest = typeof updateSalesOrderRequest.infer;
export type UpdateSalesOrderStatusRequest = typeof updateSalesOrderStatusRequest.infer;
export type CreateSalesOrderItemRequest = typeof createSalesOrderItemRequest.infer;
export type UpdateSalesOrderItemRequest = typeof updateSalesOrderItemRequest.infer;