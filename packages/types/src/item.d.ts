export declare const itemTypeEnum: import("arktype/internal/methods/string.ts").StringType<"product" | "service" | "raw_material" | "component", {}>;
export declare const item: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    tenantId: string;
    name: string;
    itemType: "product" | "service" | "raw_material" | "component";
    status: "active" | "inactive" | "suspended" | "deleted";
    insertedAt: string;
    updatedAt: string;
    code?: string | undefined;
    categoryId?: string | undefined;
    brandId?: string | undefined;
    description?: string | undefined;
    unitOfMeasure?: string | undefined;
    isActive?: boolean | undefined;
    deletedAt?: string | undefined;
}, {}>;
export declare const createItemRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    name: string;
    itemType: "product" | "service" | "raw_material" | "component";
    code?: string | undefined;
    categoryId?: string | undefined;
    brandId?: string | undefined;
    description?: string | undefined;
    unitOfMeasure?: string | undefined;
    status?: "active" | "inactive" | "suspended" | "deleted" | undefined;
    isActive?: boolean | undefined;
}, {}>;
export declare const updateItemRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    name?: string | undefined;
    code?: string | undefined;
    itemType?: "product" | "service" | "raw_material" | "component" | undefined;
    categoryId?: string | undefined;
    brandId?: string | undefined;
    description?: string | undefined;
    unitOfMeasure?: string | undefined;
    status?: "active" | "inactive" | "suspended" | "deleted" | undefined;
    isActive?: boolean | undefined;
}, {}>;
export declare const itemCategory: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    tenantId: string;
    name: string;
    insertedAt: string;
    updatedAt: string;
    code?: string | undefined;
    description?: string | undefined;
    parentCategoryId?: string | undefined;
    isActive?: boolean | undefined;
    deletedAt?: string | undefined;
}, {}>;
export declare const createItemCategoryRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    name: string;
    code?: string | undefined;
    description?: string | undefined;
    parentCategoryId?: string | undefined;
    isActive?: boolean | undefined;
}, {}>;
export declare const updateItemCategoryRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    name?: string | undefined;
    code?: string | undefined;
    description?: string | undefined;
    parentCategoryId?: string | undefined;
    isActive?: boolean | undefined;
}, {}>;
export declare const itemQuery: import("arktype/internal/methods/object.ts").ObjectType<{
    itemType?: "product" | "service" | "raw_material" | "component" | undefined;
    categoryId?: string | undefined;
    brandId?: string | undefined;
    status?: "active" | "inactive" | "suspended" | "deleted" | undefined;
    isActive?: boolean | undefined;
    search?: string | undefined;
}, {}>;
export type ItemType = typeof itemTypeEnum.infer;
export type Item = typeof item.infer;
export type CreateItemRequest = typeof createItemRequest.infer;
export type UpdateItemRequest = typeof updateItemRequest.infer;
export type ItemCategory = typeof itemCategory.infer;
export type CreateItemCategoryRequest = typeof createItemCategoryRequest.infer;
export type UpdateItemCategoryRequest = typeof updateItemCategoryRequest.infer;
export type ItemQuery = typeof itemQuery.infer;
//# sourceMappingURL=item.d.ts.map