import { type } from "arktype";
import { uuid, timestamp, status } from "./common";

// Item Type enum
export const itemTypeEnum = type(
  "'product' | 'service' | 'raw_material' | 'component' | 'spare_part' | 'consumable'"
);

// Item schemas
export const item = type({
  id: uuid,
  tenantId: uuid,
  name: "string >= 1",
  "code?": "string",
  itemType: itemTypeEnum,
  "categoryId?": uuid,
  "brandId?": uuid,
  "description?": "string",
  "unitOfMeasure?": "string",
  status,
  "isActive?": "boolean",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createItemRequest = type({
  name: "string >= 1",
  "code?": "string",
  itemType: itemTypeEnum,
  "categoryId?": uuid,
  "brandId?": uuid,
  "description?": "string",
  "unitOfMeasure?": "string",
  "status?": status,
  "isActive?": "boolean",
});

export const updateItemRequest = type({
  "name?": "string >= 1",
  "code?": "string",
  "itemType?": itemTypeEnum,
  "categoryId?": uuid,
  "brandId?": uuid,
  "description?": "string",
  "unitOfMeasure?": "string",
  "status?": status,
  "isActive?": "boolean",
});

// Item Category schemas
export const itemCategory = type({
  id: uuid,
  tenantId: uuid,
  name: "string >= 1",
  "code?": "string",
  "description?": "string",
  "parentCategoryId?": uuid,
  "isActive?": "boolean",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createItemCategoryRequest = type({
  name: "string >= 1",
  "code?": "string",
  "description?": "string",
  "parentCategoryId?": uuid,
  "isActive?": "boolean",
});

export const updateItemCategoryRequest = type({
  "name?": "string >= 1",
  "code?": "string",
  "description?": "string",
  "parentCategoryId?": uuid,
  "isActive?": "boolean",
});

// Spare Part schemas
export const sparePart = type({
  id: uuid,
  itemId: uuid,
  tenantId: uuid,
  "unit?": "string",
  "itemCategoryId?": uuid,
  "partNumber?": "string",
  "manufacturer?": "string",
  "warrantyPeriodDays?": "number",
  "isCritical?": "boolean",
  "leadTimeDays?": "number",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createSparePartRequest = type({
  name: "string >= 1",
  "code?": "string",
  "unit?": "string",
  "categoryId?": uuid,
  "brandId?": uuid,
  "partNumber?": "string",
  "manufacturer?": "string",
  "warrantyPeriodDays?": "number",
  "isCritical?": "boolean",
  "leadTimeDays?": "number",
  "status?": status,
});

export const updateSparePartRequest = type({
  "name?": "string >= 1",
  "code?": "string",
  "unit?": "string",
  "categoryId?": uuid,
  "brandId?": uuid,
  "partNumber?": "string",
  "manufacturer?": "string",
  "warrantyPeriodDays?": "number",
  "isCritical?": "boolean",
  "leadTimeDays?": "number",
  "status?": status,
});

// Consumable schemas
export const consumable = type({
  id: uuid,
  itemId: uuid,
  tenantId: uuid,
  "unit?": "string",
  "itemCategoryId?": uuid,
  "shelfLifeDays?": "number",
  "storageConditions?": "string",
  "hazardClass?": "string",
  "isHazardous?": "boolean",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createConsumableRequest = type({
  name: "string >= 1",
  "code?": "string",
  "unit?": "string",
  "categoryId?": uuid,
  "brandId?": uuid,
  "shelfLifeDays?": "number",
  "storageConditions?": "string",
  "hazardClass?": "string",
  "isHazardous?": "boolean",
  "status?": status,
});

export const updateConsumableRequest = type({
  "name?": "string >= 1",
  "code?": "string",
  "unit?": "string",
  "categoryId?": uuid,
  "brandId?": uuid,
  "shelfLifeDays?": "number",
  "storageConditions?": "string",
  "hazardClass?": "string",
  "isHazardous?": "boolean",
  "status?": status,
});

// Item query filters
export const itemQuery = type({
  "itemType?": itemTypeEnum,
  "categoryId?": uuid,
  "brandId?": uuid,
  "status?": status,
  "isActive?": "boolean",
  "search?": "string",
});

// Type exports
export type ItemType = typeof itemTypeEnum.infer;
export type Item = typeof item.infer;
export type CreateItemRequest = typeof createItemRequest.infer;
export type UpdateItemRequest = typeof updateItemRequest.infer;
export type ItemCategory = typeof itemCategory.infer;
export type CreateItemCategoryRequest = typeof createItemCategoryRequest.infer;
export type UpdateItemCategoryRequest = typeof updateItemCategoryRequest.infer;
export type ItemQuery = typeof itemQuery.infer;

// Spare Part types
export type SparePart = typeof sparePart.infer;
export type CreateSparePartRequest = typeof createSparePartRequest.infer;
export type UpdateSparePartRequest = typeof updateSparePartRequest.infer;

// Consumable types
export type Consumable = typeof consumable.infer;
export type CreateConsumableRequest = typeof createConsumableRequest.infer;
export type UpdateConsumableRequest = typeof updateConsumableRequest.infer;