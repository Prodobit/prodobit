import { type } from "arktype";
import { uuid, timestamp } from "./common";

export const attribute = type({
  id: uuid,
  tenantId: uuid,
  entityType: "string >= 1",
  name: "string >= 1",
  "displayName?": "string",
  "description?": "string",
  dataType: "'string' | 'integer' | 'boolean' | 'date' | 'decimal' | 'json'",
  isRequired: "boolean",
  "defaultValue?": "unknown",
  "validationRules?": "object",
  "options?": "unknown[]",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const attributeValue = type({
  id: uuid,
  tenantId: uuid,
  entityId: uuid,
  entityType: "string >= 1",
  attributeId: uuid,
  "value?": "unknown",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createAttributeRequest = type({
  entityType: "string >= 1",
  name: "string >= 1",
  "displayName?": "string",
  "description?": "string",
  dataType: "'string' | 'integer' | 'boolean' | 'date' | 'decimal' | 'json'",
  "isRequired?": "boolean",
  "defaultValue?": "unknown",
  "validationRules?": "object",
  "options?": "unknown[]",
});

export const updateAttributeRequest = type({
  "displayName?": "string",
  "description?": "string",
  "isRequired?": "boolean",
  "defaultValue?": "unknown",
  "validationRules?": "object",
  "options?": "unknown[]",
});

export const setAttributeValueRequest = type({
  entityId: uuid,
  entityType: "string >= 1",
  attributeId: uuid,
  "value?": "unknown",
});

export const attributeQuery = type({
  "entityType?": "string",
  "dataType?": "'string' | 'integer' | 'boolean' | 'date' | 'decimal' | 'json'",
  "isRequired?": "boolean",
});

export type Attribute = typeof attribute.infer;
export type AttributeValue = typeof attributeValue.infer;
export type CreateAttributeRequest = typeof createAttributeRequest.infer;
export type UpdateAttributeRequest = typeof updateAttributeRequest.infer;
export type SetAttributeValueRequest = typeof setAttributeValueRequest.infer;
export type AttributeQuery = typeof attributeQuery.infer;