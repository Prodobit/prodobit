import { type } from "arktype";
import { uuid, timestamp, status } from "./common";

// Brand schema
export const brand = type({
  id: uuid,
  tenantId: uuid,
  name: "string >= 1",
  "code?": "string",
  "description?": "string",
  "logo?": "string", // URL to logo image
  "website?": "string",
  status,
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createBrandRequest = type({
  name: "string >= 1",
  "code?": "string",
  "description?": "string",
  "logo?": "string",
  "website?": "string",
  "status?": status,
});

export const updateBrandRequest = type({
  "name?": "string >= 1",
  "code?": "string",
  "description?": "string",
  "logo?": "string",
  "website?": "string",
  "status?": status,
});

// Brand query filters
export const brandQuery = type({
  "status?": status,
  "search?": "string",
  "page?": "number",
  "limit?": "number",
});

// Type exports
export type Brand = typeof brand.infer;
export type CreateBrandRequest = typeof createBrandRequest.infer;
export type UpdateBrandRequest = typeof updateBrandRequest.infer;
export type BrandQuery = typeof brandQuery.infer;
