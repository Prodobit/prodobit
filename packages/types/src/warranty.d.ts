export declare const assetWarranty: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    tenantId: string;
    assetId: string;
    warrantyType: string;
    startDate: string;
    expiryDate: string;
    insertedAt: string;
    updatedAt: string;
    providerId?: string | undefined;
    cost?: string | undefined;
    currency?: string | undefined;
    contractNumber?: string | undefined;
    coverageDetails?: unknown;
    isActive?: boolean | undefined;
    notes?: string | undefined;
    deletedAt?: string | undefined;
}, {}>;
export declare const createAssetWarrantyRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    assetId: string;
    warrantyType: string;
    startDate: string;
    expiryDate: string;
    providerId?: string | undefined;
    cost?: string | undefined;
    currency?: string | undefined;
    contractNumber?: string | undefined;
    coverageDetails?: unknown;
    isActive?: boolean | undefined;
    notes?: string | undefined;
}, {}>;
export declare const updateAssetWarrantyRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    warrantyType?: string | undefined;
    providerId?: string | undefined;
    startDate?: string | undefined;
    expiryDate?: string | undefined;
    cost?: string | undefined;
    currency?: string | undefined;
    contractNumber?: string | undefined;
    coverageDetails?: unknown;
    isActive?: boolean | undefined;
    notes?: string | undefined;
}, {}>;
export declare const assetWarrantyQuery: import("arktype/internal/methods/object.ts").ObjectType<{
    assetId?: string | undefined;
    warrantyType?: string | undefined;
    isActive?: boolean | undefined;
    providerId?: string | undefined;
}, {}>;
export type AssetWarranty = typeof assetWarranty.infer;
export type CreateAssetWarrantyRequest = typeof createAssetWarrantyRequest.infer;
export type UpdateAssetWarrantyRequest = typeof updateAssetWarrantyRequest.infer;
export type AssetWarrantyQuery = typeof assetWarrantyQuery.infer;
//# sourceMappingURL=warranty.d.ts.map