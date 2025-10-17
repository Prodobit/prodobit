import { type } from "arktype";
import { uuid, timestamp } from "./common";

// Asset Purchase schemas
export const assetPurchase = type({
  id: uuid,
  tenantId: uuid,
  assetId: uuid,
  purchaseDate: "string.date",
  purchasePrice: "string",
  currency: "string >= 1",
  "vendorId?": uuid,
  "invoiceNumber?": "string",
  "poNumber?": "string",
  purchaseType: "'new' | 'lease' | 'donation' | 'transfer'",
  "leaseInfo?": "unknown",
  "notes?": "string",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createAssetPurchaseRequest = type({
  assetId: uuid,
  purchaseDate: "string.date",
  purchasePrice: "string",
  "currency?": "string",
  "vendorId?": uuid,
  "invoiceNumber?": "string",
  "poNumber?": "string",
  "purchaseType?": "'new' | 'lease' | 'donation' | 'transfer'",
  "leaseInfo?": "unknown",
  "notes?": "string",
});

export const updateAssetPurchaseRequest = type({
  "purchaseDate?": "string.date",
  "purchasePrice?": "string",
  "currency?": "string",
  "vendorId?": uuid,
  "invoiceNumber?": "string",
  "poNumber?": "string",
  "purchaseType?": "'new' | 'lease' | 'donation' | 'transfer'",
  "leaseInfo?": "unknown",
  "notes?": "string",
});

export const assetPurchaseQuery = type({
  "assetId?": uuid,
  "vendorId?": uuid,
  "purchaseType?": "'new' | 'lease' | 'donation' | 'transfer'",
});

// Type exports
export type AssetPurchase = typeof assetPurchase.infer;
export type CreateAssetPurchaseRequest = typeof createAssetPurchaseRequest.infer;
export type UpdateAssetPurchaseRequest = typeof updateAssetPurchaseRequest.infer;
export type AssetPurchaseQuery = typeof assetPurchaseQuery.infer;
