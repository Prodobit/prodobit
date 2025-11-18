export declare const tenant: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    name: string;
    status: "active" | "inactive" | "suspended" | "deleted";
    subscriptionPlan: "basic" | "pro" | "enterprise";
    settings: object;
    insertedAt: string;
    updatedAt: string;
    deletedAt?: string | undefined;
}, {}>;
export declare const createTenantRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    name: string;
    subscriptionPlan?: "basic" | "pro" | "enterprise" | undefined;
    settings?: object | undefined;
}, {}>;
export declare const updateTenantRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    name?: string | undefined;
    status?: "active" | "inactive" | "suspended" | "deleted" | undefined;
    subscriptionPlan?: "basic" | "pro" | "enterprise" | undefined;
    settings?: object | undefined;
}, {}>;
export declare const tenantQuery: import("arktype/internal/methods/object.ts").ObjectType<{
    name?: string | undefined;
    status?: "active" | "inactive" | "suspended" | "deleted" | undefined;
    subscriptionPlan?: "basic" | "pro" | "enterprise" | undefined;
}, {}>;
export declare const tenantInvitation: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    tenantId: string;
    email: string;
    role: string;
    status: "pending" | "accepted" | "declined" | "expired";
    token: string;
    inviterName: string;
    expiresAt: string;
    insertedAt: string;
    updatedAt: string;
}, {}>;
export type Tenant = typeof tenant.infer;
export type CreateTenantRequest = typeof createTenantRequest.infer;
export type UpdateTenantRequest = typeof updateTenantRequest.infer;
export type TenantQuery = typeof tenantQuery.infer;
export type TenantInvitation = typeof tenantInvitation.infer;
//# sourceMappingURL=tenant.d.ts.map