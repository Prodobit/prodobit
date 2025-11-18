/**
 * Integration API Key
 */
export declare const integrationKey: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    tenantId: string;
    name: string;
    key: string;
    keyPrefix: string;
    environment: "test" | "live";
    status: "active" | "expired" | "revoked";
    scopes: string[];
    insertedAt: string;
    updatedAt: string;
    metadata?: object | undefined;
    lastUsedAt?: string | undefined;
    expiresAt?: string | undefined;
    createdBy?: string | undefined;
    deletedAt?: string | undefined;
}, {}>;
/**
 * Integration API Key (without sensitive data for responses)
 */
export declare const integrationKeyPublic: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    tenantId: string;
    name: string;
    keyPrefix: string;
    environment: "test" | "live";
    status: "active" | "expired" | "revoked";
    scopes: string[];
    insertedAt: string;
    updatedAt: string;
    metadata?: object | undefined;
    lastUsedAt?: string | undefined;
    expiresAt?: string | undefined;
    createdBy?: string | undefined;
}, {}>;
/**
 * Integration API Key with raw key (only returned on creation)
 */
export declare const integrationKeyWithRawKey: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    tenantId: string;
    name: string;
    apiKey: string;
    keyPrefix: string;
    environment: "test" | "live";
    status: "active" | "expired" | "revoked";
    scopes: string[];
    insertedAt: string;
    updatedAt: string;
    metadata?: object | undefined;
    expiresAt?: string | undefined;
}, {}>;
/**
 * Integration Scope Definition
 */
export declare const integrationScope: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    module: string;
    resource: string;
    action: string;
    scope: string;
    description: string;
    isPublic: boolean;
    insertedAt: string;
    updatedAt: string;
    endpoint?: string | undefined;
}, {}>;
/**
 * Integration Usage Log
 */
export declare const integrationLog: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    keyId: string;
    tenantId: string;
    method: "GET" | "POST" | "PUT" | "PATCH" | "DELETE";
    path: string;
    statusCode: number;
    requestedAt: string;
    responseTime?: number | undefined;
    ipAddress?: string | undefined;
    userAgent?: string | undefined;
    errorMessage?: string | undefined;
    metadata?: object | undefined;
}, {}>;
/**
 * Integration Rate Limit
 */
export declare const integrationRateLimit: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    keyId: string;
    limitType: "per_minute" | "per_hour" | "per_day" | "per_month";
    maxRequests: number;
    currentCount: number;
    resetAt: string;
    insertedAt: string;
    updatedAt: string;
}, {}>;
/**
 * Create Integration Key Request
 */
export declare const createIntegrationKeyRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    name: string;
    environment: "test" | "live";
    scopes: string[];
    metadata?: object | undefined;
    expiresAt?: string | undefined;
}, {}>;
/**
 * Update Integration Key Request
 */
export declare const updateIntegrationKeyRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    name?: string | undefined;
    scopes?: string[] | undefined;
    metadata?: object | undefined;
    status?: "active" | "expired" | "revoked" | undefined;
}, {}>;
/**
 * Integration Key Query/Filter
 */
export declare const integrationKeyQuery: import("arktype/internal/methods/object.ts").ObjectType<{
    environment?: "test" | "live" | undefined;
    status?: "active" | "expired" | "revoked" | undefined;
    search?: string | undefined;
}, {}>;
/**
 * Usage Statistics Query
 */
export declare const usageStatsQuery: import("arktype/internal/methods/object.ts").ObjectType<{
    keyId: string;
    range?: "week" | "month" | "hour" | "day" | undefined;
    startDate?: string | undefined;
    endDate?: string | undefined;
}, {}>;
/**
 * Usage Statistics Response
 */
export declare const usageStatsResponse: import("arktype/internal/methods/object.ts").ObjectType<{
    keyId: string;
    totalRequests: number;
    successfulRequests: number;
    failedRequests: number;
    averageResponseTime: number;
    requestsByStatus: object;
    requestsByEndpoint: object;
    timeRange?: object | undefined;
}, {}>;
/**
 * Rate Limit Configuration Request
 */
export declare const setRateLimitRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    limitType: "per_minute" | "per_hour" | "per_day" | "per_month";
    maxRequests: number;
}, {}>;
export type IntegrationKey = typeof integrationKey.infer;
export type IntegrationKeyPublic = typeof integrationKeyPublic.infer;
export type IntegrationKeyWithRawKey = typeof integrationKeyWithRawKey.infer;
export type IntegrationScope = typeof integrationScope.infer;
export type IntegrationLog = typeof integrationLog.infer;
export type IntegrationRateLimit = typeof integrationRateLimit.infer;
export type CreateIntegrationKeyRequest = typeof createIntegrationKeyRequest.infer;
export type UpdateIntegrationKeyRequest = typeof updateIntegrationKeyRequest.infer;
export type IntegrationKeyQuery = typeof integrationKeyQuery.infer;
export type UsageStatsQuery = typeof usageStatsQuery.infer;
export type UsageStatsResponse = typeof usageStatsResponse.infer;
export type SetRateLimitRequest = typeof setRateLimitRequest.infer;
//# sourceMappingURL=integration.d.ts.map