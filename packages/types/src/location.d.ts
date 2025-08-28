export declare const location: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    tenantId: string;
    name: string;
    locationType: string;
    status: "active" | "inactive" | "suspended" | "deleted";
    insertedAt: string;
    updatedAt: string;
    code?: string | undefined;
    parentLocationId?: string | undefined;
    address?: string | undefined;
    coordinates?: string | undefined;
    deletedAt?: string | undefined;
}, {}>;
export declare const createLocationRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    name: string;
    locationType: string;
    code?: string | undefined;
    parentLocationId?: string | undefined;
    status?: "active" | "inactive" | "suspended" | "deleted" | undefined;
    address?: string | undefined;
    coordinates?: string | undefined;
}, {}>;
export declare const updateLocationRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    name?: string | undefined;
    code?: string | undefined;
    locationType?: string | undefined;
    parentLocationId?: string | undefined;
    status?: "active" | "inactive" | "suspended" | "deleted" | undefined;
    address?: string | undefined;
    coordinates?: string | undefined;
}, {}>;
export declare const locationType: import("arktype/internal/methods/object.ts").ObjectType<{
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
export declare const createLocationTypeRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    name: string;
    code?: string | undefined;
    description?: string | undefined;
    category?: string | undefined;
    isActive?: boolean | undefined;
}, {}>;
export declare const updateLocationTypeRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    name?: string | undefined;
    code?: string | undefined;
    description?: string | undefined;
    category?: string | undefined;
    isActive?: boolean | undefined;
}, {}>;
export declare const locationQuery: import("arktype/internal/methods/object.ts").ObjectType<{
    locationType?: string | undefined;
    parentLocationId?: string | undefined;
    status?: "active" | "inactive" | "suspended" | "deleted" | undefined;
    search?: string | undefined;
}, {}>;
export type Location = typeof location.infer;
export type CreateLocationRequest = typeof createLocationRequest.infer;
export type UpdateLocationRequest = typeof updateLocationRequest.infer;
export type LocationType = typeof locationType.infer;
export type CreateLocationTypeRequest = typeof createLocationTypeRequest.infer;
export type UpdateLocationTypeRequest = typeof updateLocationTypeRequest.infer;
export type LocationQuery = typeof locationQuery.infer;
//# sourceMappingURL=location.d.ts.map