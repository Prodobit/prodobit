import { type } from "arktype";
import { uuid, timestamp } from "./common";

// Asset Warranty schemas
export const assetWarranty = type({
  id: uuid,
  tenantId: uuid,
  assetId: uuid,
  warrantyType: "string >= 1",
  "providerId?": uuid,
  startDate: "string.date",
  expiryDate: "string.date",
  "cost?": "string",
  "currency?": "string",
  "contractNumber?": "string",
  "coverageDetails?": "unknown",
  "isActive?": "boolean",
  "notes?": "string",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createAssetWarrantyRequest = type({
  assetId: uuid,
  warrantyType: "string >= 1",
  "providerId?": uuid,
  startDate: "string.date",
  expiryDate: "string.date",
  "cost?": "string",
  "currency?": "string",
  "contractNumber?": "string",
  "coverageDetails?": "unknown",
  "isActive?": "boolean",
  "notes?": "string",
});

export const updateAssetWarrantyRequest = type({
  "warrantyType?": "string >= 1",
  "providerId?": uuid,
  "startDate?": "string.date",
  "expiryDate?": "string.date",
  "cost?": "string",
  "currency?": "string",
  "contractNumber?": "string",
  "coverageDetails?": "unknown",
  "isActive?": "boolean",
  "notes?": "string",
});

export const assetWarrantyQuery = type({
  "assetId?": uuid,
  "warrantyType?": "string",
  "isActive?": "boolean",
  "providerId?": uuid,
});

// Type exports
export type AssetWarranty = typeof assetWarranty.infer;
export type CreateAssetWarrantyRequest = typeof createAssetWarrantyRequest.infer;
export type UpdateAssetWarrantyRequest = typeof updateAssetWarrantyRequest.infer;
export type AssetWarrantyQuery = typeof assetWarrantyQuery.infer;
