import { type } from "arktype";
import { uuid, timestamp, status } from "./common";

// Asset schemas
export const asset = type({
  id: uuid,
  tenantId: uuid,
  locationId: uuid,
  name: "string >= 1",
  "code?": "string",
  "assetTypeId?": uuid,
  status,
  "parentAssetId?": uuid,
  "serialNumber?": "string",
  "qrCode?": "string",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createAssetRequest = type({
  locationId: uuid,
  name: "string >= 1",
  "code?": "string",
  "assetTypeId?": uuid,
  "status?": status,
  "parentAssetId?": uuid,
  "serialNumber?": "string",
  "qrCode?": "string",
});

export const updateAssetRequest = type({
  "locationId?": uuid,
  "name?": "string >= 1",
  "code?": "string",
  "assetTypeId?": uuid,
  "status?": status,
  "parentAssetId?": uuid,
  "serialNumber?": "string",
  "qrCode?": "string",
});

// Asset Type schemas
export const assetType = type({
  id: uuid,
  tenantId: uuid,
  name: "string >= 1",
  "code?": "string",
  "description?": "string",
  "category?": "string",
  "isActive?": "boolean",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createAssetTypeRequest = type({
  name: "string >= 1",
  "code?": "string",
  "description?": "string",
  "category?": "string",
  "isActive?": "boolean",
});

export const updateAssetTypeRequest = type({
  "name?": "string >= 1",
  "code?": "string",
  "description?": "string",
  "category?": "string",
  "isActive?": "boolean",
});

// Asset query filters
export const assetQuery = type({
  "locationId?": uuid,
  "assetTypeId?": uuid,
  "status?": status,
  "parentAssetId?": uuid,
  "serialNumber?": "string",
  "qrCode?": "string",
  "search?": "string",
});

// Type exports
export type Asset = typeof asset.infer;
export type CreateAssetRequest = typeof createAssetRequest.infer;
export type UpdateAssetRequest = typeof updateAssetRequest.infer;
export type AssetType = typeof assetType.infer;
export type CreateAssetTypeRequest = typeof createAssetTypeRequest.infer;
export type UpdateAssetTypeRequest = typeof updateAssetTypeRequest.infer;
export type AssetQuery = typeof assetQuery.infer;