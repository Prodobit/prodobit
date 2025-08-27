import { type } from "arktype";
import { timestamp, uuid } from "./common";

// Stock Reservation enums
export const stockReservationStatusEnum = type(
  "'pending' | 'confirmed' | 'partially_consumed' | 'consumed' | 'cancelled' | 'expired'"
);

export const stockReservationTypeEnum = type(
  "'sales_order' | 'work_order' | 'transfer' | 'manual' | 'system'"
);

// Stock Movement enums
export const stockMovementTypeEnum = type(
  "'receipt' | 'issue' | 'transfer_in' | 'transfer_out' | 'adjustment_in' | 'adjustment_out' | 'production_in' | 'production_out' | 'return' | 'reservation' | 'unreservation' | 'cycle_count'"
);

export const stockMovementReasonEnum = type(
  "'purchase_receipt' | 'sales_issue' | 'production' | 'transfer' | 'adjustment' | 'return' | 'damage' | 'obsolescence' | 'theft' | 'cycle_count' | 'manual'"
);

// Physical Inventory enums
export const physicalInventoryStatusEnum = type(
  "'planned' | 'in_progress' | 'completed' | 'cancelled'"
);

export const physicalInventoryTypeEnum = type(
  "'full_count' | 'cycle_count' | 'spot_count' | 'location_count'"
);

// Lot Tracking enums
export const lotStatusEnum = type(
  "'active' | 'quarantined' | 'expired' | 'consumed' | 'scrapped'"
);

export const lotTrackingModeEnum = type(
  "'none' | 'lot_only' | 'serial_only' | 'lot_and_serial'"
);

// Stock Reservation schemas
export const stockReservation = type({
  id: uuid,
  tenantId: uuid,
  itemId: uuid,
  lotId: uuid,
  locationId: uuid,
  stockId: uuid,
  reservationType: stockReservationTypeEnum,
  status: stockReservationStatusEnum,
  "referenceId?": uuid, // Sales order, work order, etc.
  "referenceType?": "string",
  quantityRequested: "number > 0",
  quantityReserved: "number >= 0",
  quantityConsumed: "number >= 0",
  "priority?": "number >= 0",
  "expiresAt?": timestamp,
  "reservedBy?": uuid, // User ID
  "notes?": "string",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createStockReservationRequest = type({
  itemId: uuid,
  "lotId?": uuid,
  locationId: uuid,
  reservationType: stockReservationTypeEnum,
  "referenceId?": uuid,
  "referenceType?": "string",
  quantityRequested: "number > 0",
  "priority?": "number >= 0",
  "expiresAt?": timestamp,
  "notes?": "string",
});

export const updateStockReservationRequest = type({
  "status?": stockReservationStatusEnum,
  "quantityRequested?": "number > 0",
  "priority?": "number >= 0",
  "expiresAt?": timestamp,
  "notes?": "string",
});

// Stock Movement schemas
export const stockMovement = type({
  id: uuid,
  tenantId: uuid,
  itemId: uuid,
  "lotId?": uuid,
  locationId: uuid,
  "stockId?": uuid,
  movementType: stockMovementTypeEnum,
  reason: stockMovementReasonEnum,
  quantity: "number",
  "unitCost?": "number >= 0",
  "totalCost?": "number >= 0",
  "referenceId?": uuid,
  "referenceType?": "string",
  "batchNumber?": "string",
  "expirationDate?": timestamp,
  "serialNumbers?": "string[]",
  "fromLocationId?": uuid,
  "toLocationId?": uuid,
  "fromLotId?": uuid,
  "toLotId?": uuid,
  "userId?": uuid,
  "notes?": "string",
  "metadata?": "object",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createStockMovementRequest = type({
  itemId: uuid,
  "lotId?": uuid,
  locationId: uuid,
  movementType: stockMovementTypeEnum,
  reason: stockMovementReasonEnum,
  quantity: "number",
  "unitCost?": "number >= 0",
  "referenceId?": uuid,
  "referenceType?": "string",
  "batchNumber?": "string",
  "expirationDate?": timestamp,
  "serialNumbers?": "string[]",
  "fromLocationId?": uuid,
  "toLocationId?": uuid,
  "fromLotId?": uuid,
  "toLotId?": uuid,
  "notes?": "string",
  "metadata?": "object",
});

// Physical Inventory schemas
export const physicalInventory = type({
  id: uuid,
  tenantId: uuid,
  name: "string >= 1",
  "description?": "string",
  inventoryType: physicalInventoryTypeEnum,
  status: physicalInventoryStatusEnum,
  "locationIds?": "string[]",
  "itemIds?": "string[]",
  "categoryIds?": "string[]",
  "plannedStartDate?": timestamp,
  "plannedEndDate?": timestamp,
  "actualStartDate?": timestamp,
  "actualEndDate?": timestamp,
  "countedBy?": uuid,
  "approvedBy?": uuid,
  "approvedAt?": timestamp,
  "tolerancePercentage?": "number >= 0",
  "notes?": "string",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const physicalInventoryItem = type({
  id: uuid,
  tenantId: uuid,
  physicalInventoryId: uuid,
  itemId: uuid,
  locationId: uuid,
  "lotId?": uuid,
  systemQuantity: "number >= 0",
  "countedQuantity?": "number >= 0",
  "varianceQuantity?": "number",
  "variancePercentage?": "number",
  "unitCost?": "number >= 0",
  "varianceValue?": "number",
  "counted?": "boolean",
  "countedAt?": timestamp,
  "countedBy?": uuid,
  "serialNumbers?": "string[]",
  "notes?": "string",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createPhysicalInventoryRequest = type({
  name: "string >= 1",
  "description?": "string",
  inventoryType: physicalInventoryTypeEnum,
  "locationIds?": "string[]",
  "itemIds?": "string[]",
  "categoryIds?": "string[]",
  "plannedStartDate?": timestamp,
  "plannedEndDate?": timestamp,
  "tolerancePercentage?": "number >= 0",
  "notes?": "string",
});

export const updatePhysicalInventoryRequest = type({
  "name?": "string >= 1",
  "description?": "string",
  "status?": physicalInventoryStatusEnum,
  "plannedStartDate?": timestamp,
  "plannedEndDate?": timestamp,
  "actualStartDate?": timestamp,
  "actualEndDate?": timestamp,
  "tolerancePercentage?": "number >= 0",
  "notes?": "string",
});

export const updatePhysicalInventoryItemRequest = type({
  "countedQuantity?": "number >= 0",
  "serialNumbers?": "string[]",
  "notes?": "string",
});

// Stock Adjustment schemas
export const stockAdjustment = type({
  id: uuid,
  tenantId: uuid,
  "batchNumber?": "string",
  "reason?": "string",
  status: "'draft' | 'approved' | 'cancelled'",
  "adjustedBy?": uuid,
  "approvedBy?": uuid,
  "approvedAt?": timestamp,
  "notes?": "string",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const stockAdjustmentItem = type({
  id: uuid,
  tenantId: uuid,
  stockAdjustmentId: uuid,
  itemId: uuid,
  locationId: uuid,
  "lotId?": uuid,
  "stockId?": uuid,
  currentQuantity: "number >= 0",
  adjustedQuantity: "number >= 0",
  varianceQuantity: "number",
  "unitCost?": "number >= 0",
  "totalCost?": "number",
  reason: stockMovementReasonEnum,
  "notes?": "string",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createStockAdjustmentRequest = type({
  "batchNumber?": "string",
  "reason?": "string",
  "notes?": "string",
  items: type({
    itemId: uuid,
    locationId: uuid,
    "lotId?": uuid,
    adjustedQuantity: "number >= 0",
    "unitCost?": "number >= 0",
    reason: stockMovementReasonEnum,
    "notes?": "string",
  }).array(),
});

export const updateStockAdjustmentRequest = type({
  "reason?": "string",
  "status?": "'draft' | 'approved' | 'cancelled'",
  "notes?": "string",
});

// Lot Genealogy schemas
export const lotGenealogy = type({
  id: uuid,
  tenantId: uuid,
  childLotId: uuid,
  parentLotId: uuid,
  relationship: "'split' | 'merge' | 'transform' | 'rework'",
  quantity: "number > 0",
  "unitOfMeasure?": "string",
  "workOrderId?": uuid,
  "processedAt?": timestamp,
  "processedBy?": uuid,
  "notes?": "string",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createLotGenealogyRequest = type({
  childLotId: uuid,
  parentLotId: uuid,
  relationship: "'split' | 'merge' | 'transform' | 'rework'",
  quantity: "number > 0",
  "unitOfMeasure?": "string",
  "workOrderId?": uuid,
  "notes?": "string",
});

// Enhanced Lot schema (extending existing lot)
export const lotTracking = type({
  id: uuid,
  tenantId: uuid,
  itemId: uuid,
  lotNumber: "string >= 1",
  status: lotStatusEnum,
  trackingMode: lotTrackingModeEnum,
  "manufacturingDate?": timestamp,
  "expirationDate?": timestamp,
  "batchNumber?": "string",
  "supplierLotNumber?": "string",
  "supplierId?": uuid,
  "certificateNumbers?": "string[]",
  "qualityStatus?": "'passed' | 'failed' | 'pending' | 'quarantined'",
  "quarantineReason?": "string",
  "quarantineDate?": timestamp,
  "releaseDate?": timestamp,
  "totalQuantity?": "number >= 0",
  "availableQuantity?": "number >= 0",
  "reservedQuantity?": "number >= 0",
  "unitCost?": "number >= 0",
  "serialNumbers?": "string[]",
  "customFields?": "object",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

// Query/Filter schemas
export const stockReservationFilters = type({
  "itemId?": uuid,
  "locationId?": uuid,
  "status?": stockReservationStatusEnum,
  "reservationType?": stockReservationTypeEnum,
  "referenceId?": uuid,
  "expiresFrom?": timestamp,
  "expiresTo?": timestamp,
  "search?": "string",
  "page?": "number >= 1",
  "limit?": "number >= 1",
  "orderBy?": "string",
  "orderDirection?": "'asc' | 'desc'",
});

export const stockMovementFilters = type({
  "itemId?": uuid,
  "locationId?": uuid,
  "lotId?": uuid,
  "movementType?": stockMovementTypeEnum,
  "reason?": stockMovementReasonEnum,
  "dateFrom?": timestamp,
  "dateTo?": timestamp,
  "referenceId?": uuid,
  "search?": "string",
  "page?": "number >= 1",
  "limit?": "number >= 1",
  "orderBy?": "string",
  "orderDirection?": "'asc' | 'desc'",
});

export const physicalInventoryFilters = type({
  "status?": physicalInventoryStatusEnum,
  "inventoryType?": physicalInventoryTypeEnum,
  "locationIds?": "string[]",
  "dateFrom?": timestamp,
  "dateTo?": timestamp,
  "search?": "string",
  "page?": "number >= 1",
  "limit?": "number >= 1",
  "orderBy?": "string",
  "orderDirection?": "'asc' | 'desc'",
});

export const stockAdjustmentFilters = type({
  "status?": "'draft' | 'approved' | 'cancelled'",
  "dateFrom?": timestamp,
  "dateTo?": timestamp,
  "adjustedBy?": uuid,
  "search?": "string",
  "page?": "number >= 1",
  "limit?": "number >= 1",
  "orderBy?": "string",
  "orderDirection?": "'asc' | 'desc'",
});

// Type exports
export type StockReservation = typeof stockReservation.infer;
export type CreateStockReservationRequest =
  typeof createStockReservationRequest.infer;
export type UpdateStockReservationRequest =
  typeof updateStockReservationRequest.infer;

export type StockMovement = typeof stockMovement.infer;
export type CreateStockMovementRequest =
  typeof createStockMovementRequest.infer;

export type PhysicalInventory = typeof physicalInventory.infer;
export type PhysicalInventoryItem = typeof physicalInventoryItem.infer;
export type CreatePhysicalInventoryRequest =
  typeof createPhysicalInventoryRequest.infer;
export type UpdatePhysicalInventoryRequest =
  typeof updatePhysicalInventoryRequest.infer;
export type UpdatePhysicalInventoryItemRequest =
  typeof updatePhysicalInventoryItemRequest.infer;

export type StockAdjustment = typeof stockAdjustment.infer;
export type StockAdjustmentItem = typeof stockAdjustmentItem.infer;
export type CreateStockAdjustmentRequest =
  typeof createStockAdjustmentRequest.infer;
export type UpdateStockAdjustmentRequest =
  typeof updateStockAdjustmentRequest.infer;

export type LotGenealogy = typeof lotGenealogy.infer;
export type CreateLotGenealogyRequest = typeof createLotGenealogyRequest.infer;
export type LotTracking = typeof lotTracking.infer;

export type StockReservationFilters = typeof stockReservationFilters.infer;
export type StockMovementFilters = typeof stockMovementFilters.infer;
export type PhysicalInventoryFilters = typeof physicalInventoryFilters.infer;
export type StockAdjustmentFilters = typeof stockAdjustmentFilters.infer;

export type StockReservationStatus = typeof stockReservationStatusEnum.infer;
export type StockReservationType = typeof stockReservationTypeEnum.infer;
export type StockMovementType = typeof stockMovementTypeEnum.infer;
export type StockMovementReason = typeof stockMovementReasonEnum.infer;
export type PhysicalInventoryStatus = typeof physicalInventoryStatusEnum.infer;
export type PhysicalInventoryType = typeof physicalInventoryTypeEnum.infer;
export type LotStatus = typeof lotStatusEnum.infer;
export type LotTrackingMode = typeof lotTrackingModeEnum.infer;
