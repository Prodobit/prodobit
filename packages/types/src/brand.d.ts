export declare const brand: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    tenantId: string;
    name: string;
    status: "active" | "inactive" | "suspended" | "deleted";
    insertedAt: string;
    updatedAt: string;
    code?: string | undefined;
    description?: string | undefined;
    logo?: string | undefined;
    website?: string | undefined;
    deletedAt?: string | undefined;
}, {}>;
export declare const createBrandRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    name: string;
    code?: string | undefined;
    description?: string | undefined;
    logo?: string | undefined;
    website?: string | undefined;
    status?: "active" | "inactive" | "suspended" | "deleted" | undefined;
}, {}>;
export declare const updateBrandRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    name?: string | undefined;
    code?: string | undefined;
    description?: string | undefined;
    logo?: string | undefined;
    website?: string | undefined;
    status?: "active" | "inactive" | "suspended" | "deleted" | undefined;
}, {}>;
export declare const brandQuery: import("arktype/internal/methods/object.ts").ObjectType<{
    status?: "active" | "inactive" | "suspended" | "deleted" | undefined;
    search?: string | undefined;
    page?: number | undefined;
    limit?: number | undefined;
}, {}>;
export type Brand = typeof brand.infer;
export type CreateBrandRequest = typeof createBrandRequest.infer;
export type UpdateBrandRequest = typeof updateBrandRequest.infer;
export type BrandQuery = typeof brandQuery.infer;
//# sourceMappingURL=brand.d.ts.map