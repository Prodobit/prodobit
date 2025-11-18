export declare const assetPurchase: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    tenantId: string;
    assetId: string;
    purchaseDate: string;
    purchasePrice: string;
    currency: string;
    purchaseType: "transfer" | "new" | "lease" | "donation";
    insertedAt: string;
    updatedAt: string;
    vendorId?: string | undefined;
    invoiceNumber?: string | undefined;
    poNumber?: string | undefined;
    leaseInfo?: unknown;
    notes?: string | undefined;
    deletedAt?: string | undefined;
}, {}>;
export declare const createAssetPurchaseRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    assetId: string;
    purchaseDate: string;
    purchasePrice: string;
    currency?: string | undefined;
    vendorId?: string | undefined;
    invoiceNumber?: string | undefined;
    poNumber?: string | undefined;
    purchaseType?: "transfer" | "new" | "lease" | "donation" | undefined;
    leaseInfo?: unknown;
    notes?: string | undefined;
}, {}>;
export declare const updateAssetPurchaseRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    purchaseDate?: string | undefined;
    purchasePrice?: string | undefined;
    currency?: string | undefined;
    vendorId?: string | undefined;
    invoiceNumber?: string | undefined;
    poNumber?: string | undefined;
    purchaseType?: "transfer" | "new" | "lease" | "donation" | undefined;
    leaseInfo?: unknown;
    notes?: string | undefined;
}, {}>;
export declare const assetPurchaseQuery: import("arktype/internal/methods/object.ts").ObjectType<{
    assetId?: string | undefined;
    vendorId?: string | undefined;
    purchaseType?: "transfer" | "new" | "lease" | "donation" | undefined;
}, {}>;
export type AssetPurchase = typeof assetPurchase.infer;
export type CreateAssetPurchaseRequest = typeof createAssetPurchaseRequest.infer;
export type UpdateAssetPurchaseRequest = typeof updateAssetPurchaseRequest.infer;
export type AssetPurchaseQuery = typeof assetPurchaseQuery.infer;
//# sourceMappingURL=asset-purchase.d.ts.map