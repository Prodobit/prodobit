import { type } from "arktype";
import { uuid, timestamp, status } from "./common";

// Location schemas
export const location = type({
  id: uuid,
  tenantId: uuid,
  name: "string >= 1",
  "code?": "string",
  "locationTypeId?": uuid,
  "parentLocationId?": uuid,
  status,
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createLocationRequest = type({
  name: "string >= 1",
  "code?": "string",
  "locationTypeId?": uuid,
  "parentLocationId?": uuid,
  "status?": status,
});

export const updateLocationRequest = type({
  "name?": "string >= 1",
  "code?": "string",
  "locationTypeId?": uuid,
  "parentLocationId?": uuid,
  "status?": status,
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
  "locationTypeId?": uuid,
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