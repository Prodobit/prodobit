import { type } from "arktype";
import { uuid, timestamp } from "./common";

// Usage Type enum
export const usageTypeEnum = type(
  "'maintenance' | 'repair' | 'calibration' | 'replacement' | 'routine'"
);

// Asset Stock Usage schemas
export const assetStockUsage = type({
  id: uuid,
  tenantId: uuid,
  assetId: uuid,
  itemId: uuid,
  "stockTransactionId?": uuid,
  "maintenanceRecordId?": uuid,
  "calibrationRecordId?": uuid,
  usageType: usageTypeEnum,
  quantity: "number > 0",
  unit: "string >= 1",
  usedAt: timestamp,
  "usedById?": uuid,
  "unitCost?": "number",
  "totalCost?": "number",
  "currency?": "string",
  "notes?": "string",
  "lotNumber?": "string",
  "serialNumber?": "string",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createAssetStockUsageRequest = type({
  assetId: uuid,
  itemId: uuid,
  "stockTransactionId?": uuid,
  "maintenanceRecordId?": uuid,
  "calibrationRecordId?": uuid,
  usageType: usageTypeEnum,
  quantity: "number > 0",
  unit: "string >= 1",
  "usedAt?": timestamp,
  "usedById?": uuid,
  "unitCost?": "number",
  "totalCost?": "number",
  "currency?": "string",
  "notes?": "string",
  "lotNumber?": "string",
  "serialNumber?": "string",
});

export const updateAssetStockUsageRequest = type({
  "assetId?": uuid,
  "itemId?": uuid,
  "stockTransactionId?": uuid,
  "maintenanceRecordId?": uuid,
  "calibrationRecordId?": uuid,
  "usageType?": usageTypeEnum,
  "quantity?": "number > 0",
  "unit?": "string >= 1",
  "usedAt?": timestamp,
  "usedById?": uuid,
  "unitCost?": "number",
  "totalCost?": "number",
  "currency?": "string",
  "notes?": "string",
  "lotNumber?": "string",
  "serialNumber?": "string",
});

// Query filters
export const assetStockUsageQuery = type({
  "assetId?": uuid,
  "itemId?": uuid,
  "usageType?": usageTypeEnum,
  "maintenanceRecordId?": uuid,
  "calibrationRecordId?": uuid,
  "usedById?": uuid,
  "fromDate?": timestamp,
  "toDate?": timestamp,
  "search?": "string",
});

// Type exports
export type UsageType = typeof usageTypeEnum.infer;
export type AssetStockUsage = typeof assetStockUsage.infer;
export type CreateAssetStockUsageRequest = typeof createAssetStockUsageRequest.infer;
export type UpdateAssetStockUsageRequest = typeof updateAssetStockUsageRequest.infer;
export type AssetStockUsageQuery = typeof assetStockUsageQuery.infer;
