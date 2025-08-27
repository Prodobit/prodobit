import { type } from "arktype";
import { uuid, timestamp, status } from "./common";

// Location schemas
export const location = type({
  id: uuid,
  tenantId: uuid,
  name: "string >= 1",
  "code?": "string",
  locationType: "string >= 1",
  "parentLocationId?": uuid,
  status,
  "address?": "string",
  "coordinates?": "string",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createLocationRequest = type({
  name: "string >= 1",
  "code?": "string",
  locationType: "string >= 1",
  "parentLocationId?": uuid,
  "status?": status,
  "address?": "string",
  "coordinates?": "string",
});

export const updateLocationRequest = type({
  "name?": "string >= 1",
  "code?": "string",
  "locationType?": "string >= 1",
  "parentLocationId?": uuid,
  "status?": status,
  "address?": "string",
  "coordinates?": "string",
});

// Location Type schemas
export const locationType = type({
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

export const createLocationTypeRequest = type({
  name: "string >= 1",
  "code?": "string",
  "description?": "string",
  "category?": "string",
  "isActive?": "boolean",
});

export const updateLocationTypeRequest = type({
  "name?": "string >= 1",
  "code?": "string",
  "description?": "string",
  "category?": "string",
  "isActive?": "boolean",
});

// Location query filters
export const locationQuery = type({
  "locationType?": "string",
  "parentLocationId?": uuid,
  "status?": status,
  "search?": "string",
});

// Type exports
export type Location = typeof location.infer;
export type CreateLocationRequest = typeof createLocationRequest.infer;
export type UpdateLocationRequest = typeof updateLocationRequest.infer;
export type LocationType = typeof locationType.infer;
export type CreateLocationTypeRequest = typeof createLocationTypeRequest.infer;
export type UpdateLocationTypeRequest = typeof updateLocationTypeRequest.infer;
export type LocationQuery = typeof locationQuery.infer;