import { type } from "arktype";
import { uuid, timestamp, status } from "./common";

// Item Type enum
export const itemTypeEnum = type(
  "'product' | 'service' | 'raw_material' | 'component'"
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