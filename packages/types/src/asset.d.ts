export declare const asset: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    tenantId: string;
    locationId: string;
    name: string;
    assetType: string;
    status: "active" | "inactive" | "suspended" | "deleted";
    insertedAt: string;
    updatedAt: string;
    code?: string | undefined;
    parentAssetId?: string | undefined;
    deletedAt?: string | undefined;
}, {}>;
export declare const createAssetRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    locationId: string;
    name: string;
    assetType: string;
    code?: string | undefined;
    status?: "active" | "inactive" | "suspended" | "deleted" | undefined;
    parentAssetId?: string | undefined;
}, {}>;
export declare const updateAssetRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    locationId?: string | undefined;
    name?: string | undefined;
    code?: string | undefined;
    assetType?: string | undefined;
    status?: "active" | "inactive" | "suspended" | "deleted" | undefined;
    parentAssetId?: string | undefined;
}, {}>;
export declare const assetType: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    tenantId: string;
    name: string;
    insertedAt: string;
    updatedAt: string;
    code?: string | undefined;
    description?: string | undefined;
    category?: string | undefined;
    isActive?: boolean | undefined;
    deletedAt?: string | undefined;
}, {}>;
export declare const createAssetTypeRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    name: string;
    code?: string | undefined;
    description?: string | undefined;
    category?: string | undefined;
    isActive?: boolean | undefined;
}, {}>;
export declare const updateAssetTypeRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    name?: string | undefined;
    code?: string | undefined;
    description?: string | undefined;
    category?: string | undefined;
    isActive?: boolean | undefined;
}, {}>;
export declare const assetQuery: import("arktype/internal/methods/object.ts").ObjectType<{
    locationId?: string | undefined;
    assetType?: string | undefined;
    status?: "active" | "inactive" | "suspended" | "deleted" | undefined;
    parentAssetId?: string | undefined;
    search?: string | undefined;
}, {}>;
export type Asset = typeof asset.infer;
export type CreateAssetRequest = typeof createAssetRequest.infer;
export type UpdateAssetRequest = typeof updateAssetRequest.infer;
export type AssetType = typeof assetType.infer;
export type CreateAssetTypeRequest = typeof createAssetTypeRequest.infer;
export type UpdateAssetTypeRequest = typeof updateAssetTypeRequest.infer;
export type AssetQuery = typeof assetQuery.infer;
//# sourceMappingURL=asset.d.ts.map