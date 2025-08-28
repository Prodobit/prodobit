export type { Address, ApiErrorResponse, ApiPaginatedResponse, ApiResponse, Asset, AssetType, CreateAssetRequest, CreateAssetTypeRequest, UpdateAssetRequest, UpdateAssetTypeRequest, Attribute, AttributeQuery, AttributeValue, AuthMethod, Bom, BomComponent, CreateBomComponentRequest, CreateBomRequest, UpdateBomRequest, ContactMechanism, CreateAttributeRequest, CreateOrganizationRequest, CreatePartyRequest, CreatePersonRequest, CreateTenantRequest, Customer, Eco, CreateEcoRequest, UpdateEcoRequest, RejectEcoRequest, CloneBomRequest, MrpRequirementsRequest, Employee, ErrorResponse, Item, ItemCategory, CreateItemRequest, CreateItemCategoryRequest, UpdateItemRequest, UpdateItemCategoryRequest, Location, LocationType, CreateLocationRequest, CreateLocationTypeRequest, UpdateLocationRequest, UpdateLocationTypeRequest, LoginResponse, LoginResponseData, LogoutRequest, Organization, PaginatedResponse, Pagination, Party, PartyRole, Person, RefreshTokenRequest, RequestOTPRequest, RequestOTPResponse, ResendOTPRequest, Response, SalesOrder, SalesOrderItem, CreateSalesOrderRequest, CreateSalesOrderItemRequest, UpdateSalesOrderRequest, UpdateSalesOrderItemRequest, UpdateSalesOrderStatusRequest, Session, SetAttributeValueRequest, Status, Supplier, Tenant, TenantMembership, TenantQuery, Timestamp, UpdateAttributeRequest, UpdatePartyRequest, UpdateTenantRequest, User, UUID, VerifyOTPRequest, TokenInfo, CreateEmployeeRequest, UpdateEmployeeRequest, ItemType, } from "@prodobit/types";
export declare const prodobitClientConfig: import("arktype/internal/methods/object.ts").ObjectType<{
    baseUrl: string;
    apiKey?: string | undefined;
    timeout?: number | undefined;
    headers?: object | undefined;
    autoRefresh?: boolean | undefined;
}, {}>;
export declare const requestConfig: import("arktype/internal/methods/object.ts").ObjectType<{
    headers?: object | undefined;
    timeout?: number | undefined;
    skipAuth?: boolean | undefined;
}, {}>;
export declare const sdkTokenInfo: import("arktype/internal/methods/object.ts").ObjectType<{
    accessToken: string;
    expiresAt: Date;
    refreshToken?: string | undefined;
    tenantId?: string | undefined;
}, {}>;
export declare const salesOrderQuery: import("arktype/internal/methods/object.ts").ObjectType<{
    status?: string | undefined;
    customerId?: string | undefined;
    orderDateFrom?: string | undefined;
    orderDateTo?: string | undefined;
    search?: string | undefined;
    page?: number | undefined;
    limit?: number | undefined;
}, {}>;
export declare const salesOrderFilters: import("arktype/internal/methods/object.ts").ObjectType<{
    status?: string | undefined;
    customerId?: string | undefined;
    orderDateFrom?: string | undefined;
    orderDateTo?: string | undefined;
    search?: string | undefined;
    page?: number | undefined;
    limit?: number | undefined;
}, {}>;
export declare const itemFilters: import("arktype/internal/methods/object.ts").ObjectType<{
    search?: string | undefined;
    type?: "product" | "service" | "raw_material" | "component" | undefined;
    status?: "active" | "inactive" | "suspended" | "deleted" | undefined;
    categoryId?: string | undefined;
    page?: number | undefined;
    limit?: number | undefined;
}, {}>;
export declare const locationFilters: import("arktype/internal/methods/object.ts").ObjectType<{
    search?: string | undefined;
    type?: string | undefined;
    parentId?: string | undefined;
    status?: "active" | "inactive" | "suspended" | "deleted" | undefined;
    page?: number | undefined;
    limit?: number | undefined;
}, {}>;
export declare const assetFilters: import("arktype/internal/methods/object.ts").ObjectType<{
    search?: string | undefined;
    type?: string | undefined;
    locationId?: string | undefined;
    status?: "active" | "inactive" | "suspended" | "deleted" | undefined;
    page?: number | undefined;
    limit?: number | undefined;
}, {}>;
export declare const partyFilters: import("arktype/internal/methods/object.ts").ObjectType<{
    search?: string | undefined;
    type?: "person" | "organization" | undefined;
    role?: "customer" | "supplier" | "employee" | undefined;
    status?: "active" | "inactive" | "suspended" | "deleted" | undefined;
    page?: number | undefined;
    limit?: number | undefined;
}, {}>;
export declare const bomFilters: import("arktype/internal/methods/object.ts").ObjectType<{
    search?: string | undefined;
    itemId?: string | undefined;
    status?: "suspended" | "draft" | "obsolete" | "approved" | undefined;
    page?: number | undefined;
    limit?: number | undefined;
}, {}>;
export declare const bomComponentFilters: import("arktype/internal/methods/object.ts").ObjectType<{
    bomId?: string | undefined;
    itemId?: string | undefined;
    page?: number | undefined;
    limit?: number | undefined;
}, {}>;
export declare const ecoFilters: import("arktype/internal/methods/object.ts").ObjectType<{
    search?: string | undefined;
    status?: "draft" | "approved" | "rejected" | "implemented" | "in_review" | undefined;
    bomId?: string | undefined;
    priority?: "low" | "medium" | "high" | "critical" | undefined;
    page?: number | undefined;
    limit?: number | undefined;
}, {}>;
export declare const lotFilters: import("arktype/internal/methods/object.ts").ObjectType<{
    search?: string | undefined;
    itemId?: string | undefined;
    status?: "active" | "inactive" | "suspended" | "deleted" | undefined;
    page?: number | undefined;
    limit?: number | undefined;
}, {}>;
export declare const stockFilters: import("arktype/internal/methods/object.ts").ObjectType<{
    itemId?: string | undefined;
    locationId?: string | undefined;
    lotId?: string | undefined;
    status?: "quarantined" | "available" | "reserved" | "damaged" | "blocked" | undefined;
    page?: number | undefined;
    limit?: number | undefined;
}, {}>;
export declare const stockTransactionFilters: import("arktype/internal/methods/object.ts").ObjectType<{
    itemId?: string | undefined;
    locationId?: string | undefined;
    lotId?: string | undefined;
    transactionType?: string | undefined;
    dateFrom?: string | undefined;
    dateTo?: string | undefined;
    page?: number | undefined;
    limit?: number | undefined;
}, {}>;
export declare const frameworkPartyFilters: import("arktype/internal/methods/object.ts").ObjectType<{
    search?: string | undefined;
    type?: "person" | "organization" | undefined;
    role?: "customer" | "supplier" | "employee" | undefined;
    status?: "active" | "inactive" | "suspended" | "deleted" | undefined;
    page?: number | undefined;
    limit?: number | undefined;
}, {}>;
export declare const frameworkSearchParams: import("arktype/internal/methods/object.ts").ObjectType<{
    searchTerm: string;
    partyType?: "person" | "organization" | undefined;
    roleType?: "customer" | "supplier" | "employee" | undefined;
}, {}>;
export declare const frameworkEmployeeFilters: import("arktype/internal/methods/object.ts").ObjectType<{
    department?: string | undefined;
    role?: string | undefined;
    status?: "active" | "inactive" | "on_leave" | undefined;
    search?: string | undefined;
    page?: number | undefined;
    limit?: number | undefined;
}, {}>;
export declare const frameworkCustomerFilters: import("arktype/internal/methods/object.ts").ObjectType<{
    status?: "active" | "inactive" | "suspended" | undefined;
    customerType?: "retail" | "wholesale" | "vip" | undefined;
    region?: string | undefined;
    search?: string | undefined;
    page?: number | undefined;
    limit?: number | undefined;
}, {}>;
export declare const frameworkSupplierFilters: import("arktype/internal/methods/object.ts").ObjectType<{
    status?: "active" | "inactive" | "suspended" | undefined;
    category?: string | undefined;
    rating?: number | undefined;
    search?: string | undefined;
    page?: number | undefined;
    limit?: number | undefined;
}, {}>;
export declare const frameworkStockFilters: import("arktype/internal/methods/object.ts").ObjectType<{
    itemId?: string | undefined;
    locationId?: string | undefined;
    lotId?: string | undefined;
    status?: "quarantined" | "available" | "reserved" | "damaged" | "blocked" | undefined;
    lowStock?: boolean | undefined;
    search?: string | undefined;
    page?: number | undefined;
    limit?: number | undefined;
}, {}>;
export declare const frameworkLotFilters: import("arktype/internal/methods/object.ts").ObjectType<{
    search?: string | undefined;
    itemId?: string | undefined;
    status?: "active" | "inactive" | "suspended" | "deleted" | undefined;
    page?: number | undefined;
    limit?: number | undefined;
}, {}>;
export declare const frameworkBomFilters: import("arktype/internal/methods/object.ts").ObjectType<{
    itemId?: string | undefined;
    status?: "active" | "draft" | "obsolete" | undefined;
    version?: string | undefined;
    effectiveDate?: string | undefined;
    search?: string | undefined;
    page?: number | undefined;
    limit?: number | undefined;
}, {}>;
export declare const frameworkBomComponentFilters: import("arktype/internal/methods/object.ts").ObjectType<{
    bomId?: string | undefined;
    componentId?: string | undefined;
    componentType?: string | undefined;
    required?: boolean | undefined;
    page?: number | undefined;
    limit?: number | undefined;
}, {}>;
export declare const contactInfo: import("arktype/internal/methods/object.ts").ObjectType<{
    type: "email" | "phone";
    value: string;
    isPrimary?: boolean | undefined;
}, {}>;
export declare const addressInfo: import("arktype/internal/methods/object.ts").ObjectType<{
    type: "billing" | "shipping" | "home";
    line1: string;
    city: string;
    state: string;
    postalCode: string;
    country: string;
    line2?: string | undefined;
}, {}>;
export declare const createInvitationRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    email: string;
    role?: string | undefined;
    permissions?: string[] | undefined;
}, {}>;
export declare const updateMembershipRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    role?: string | undefined;
    permissions?: string[] | undefined;
    status?: "active" | "inactive" | "suspended" | undefined;
}, {}>;
export declare const createStockRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    itemId: string;
    locationId: string;
    quantity: number;
    status: "quarantined" | "available" | "reserved" | "damaged" | "blocked";
    lotId?: string | undefined;
    unitCost?: number | undefined;
}, {}>;
export declare const updateStockRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    quantity?: number | undefined;
    unitCost?: number | undefined;
    status?: "quarantined" | "available" | "reserved" | "damaged" | "blocked" | undefined;
}, {}>;
export declare const createLotRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    itemId: string;
    lotNumber: string;
    expirationDate?: string | undefined;
    notes?: string | undefined;
}, {}>;
export declare const updateLotRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    lotNumber?: string | undefined;
    expirationDate?: string | undefined;
    notes?: string | undefined;
}, {}>;
export declare const queryPrimitive: import("arktype").BaseType<string | number | boolean | Date | null | undefined, {}>;
export declare const queryValue: import("arktype").BaseType<string | number | boolean | Date | (string | number | boolean | Date | null | undefined)[] | null | undefined, {}>;
export declare const partyTypeEnum: import("arktype/internal/methods/string.ts").StringType<"person" | "organization", {}>;
export declare const roleTypeEnum: import("arktype/internal/methods/string.ts").StringType<"customer" | "supplier" | "employee", {}>;
export declare const authState: import("arktype/internal/methods/object.ts").ObjectType<{
    isAuthenticated: boolean;
    isLoading: boolean;
    isError: boolean;
    user?: object | null | undefined;
    token?: object | null | undefined;
    error?: object | null | undefined;
    tenantId?: string | null | undefined;
}, {}>;
export declare const cacheConfig: import("arktype/internal/methods/object.ts").ObjectType<{
    defaultStaleTime: number;
    defaultCacheTime: number;
    refetchOnWindowFocus: boolean;
    refetchOnReconnect: boolean;
    refetchInterval: number | false;
    retry: number | boolean;
    retryDelay: number;
    resourceStaleTime?: {
        auth?: number | undefined;
        tenants?: number | undefined;
        parties?: number | undefined;
        items?: number | undefined;
        locations?: number | undefined;
        assets?: number | undefined;
        stocks?: number | undefined;
        lots?: number | undefined;
        boms?: number | undefined;
        salesOrders?: number | undefined;
        employees?: number | undefined;
        attributes?: number | undefined;
        ecos?: number | undefined;
    } | undefined;
}, {}>;
export declare const authAction: import("arktype/internal/methods/object.ts").ObjectType<{
    type: "AUTH_START" | "AUTH_SUCCESS" | "AUTH_ERROR" | "AUTH_LOGOUT" | "TOKEN_REFRESH" | "SET_TENANT" | "CLEAR_ERROR";
    payload?: object | undefined;
}, {}>;
export type ProdobitClientConfig = typeof prodobitClientConfig.infer;
export type RequestConfig = typeof requestConfig.infer;
export type SDKTokenInfo = typeof sdkTokenInfo.infer;
export type SalesOrderQuery = typeof salesOrderQuery.infer;
export type ItemFilters = typeof itemFilters.infer;
export type LocationFilters = typeof locationFilters.infer;
export type AssetFilters = typeof assetFilters.infer;
export type PartyFilters = typeof partyFilters.infer;
export type SalesOrderFilters = typeof salesOrderFilters.infer;
export type BomFilters = typeof bomFilters.infer;
export type BomComponentFilters = typeof bomComponentFilters.infer;
export type EcoFilters = typeof ecoFilters.infer;
export type LotFilters = typeof lotFilters.infer;
export type StockFilters = typeof stockFilters.infer;
export type StockTransactionFilters = typeof stockTransactionFilters.infer;
export type FrameworkPartyFilters = typeof frameworkPartyFilters.infer;
export type FrameworkSearchParams = typeof frameworkSearchParams.infer;
export type FrameworkEmployeeFilters = typeof frameworkEmployeeFilters.infer;
export type FrameworkCustomerFilters = typeof frameworkCustomerFilters.infer;
export type FrameworkSupplierFilters = typeof frameworkSupplierFilters.infer;
export type FrameworkStockFilters = typeof frameworkStockFilters.infer;
export type FrameworkLotFilters = typeof frameworkLotFilters.infer;
export type FrameworkBomFilters = typeof frameworkBomFilters.infer;
export type FrameworkBomComponentFilters = typeof frameworkBomComponentFilters.infer;
export type ContactInfo = typeof contactInfo.infer;
export type AddressInfo = typeof addressInfo.infer;
export type CreateInvitationRequest = typeof createInvitationRequest.infer;
export type UpdateMembershipRequest = typeof updateMembershipRequest.infer;
export type CreateStockRequest = typeof createStockRequest.infer;
export type UpdateStockRequest = typeof updateStockRequest.infer;
export type CreateLotRequest = typeof createLotRequest.infer;
export type UpdateLotRequest = typeof updateLotRequest.infer;
export type AssetBase = any;
export type ItemBase = any;
export type LocationBase = any;
export type LotBase = any;
export type StockBase = any;
export type QueryPrimitive = typeof queryPrimitive.infer;
export type QueryValue = typeof queryValue.infer;
export type PartyType = typeof partyTypeEnum.infer;
export type RoleType = typeof roleTypeEnum.infer;
export type AuthState = typeof authState.infer;
export type CacheConfig = typeof cacheConfig.infer;
export type AuthAction = typeof authAction.infer;
export declare class ProdobitError extends Error {
    readonly status?: number | undefined;
    readonly code?: string | undefined;
    readonly details?: unknown | undefined;
    constructor(message: string, status?: number | undefined, code?: string | undefined, details?: unknown | undefined);
    static badRequest(message: string, details?: unknown): ProdobitError;
    static unauthorized(message?: string): ProdobitError;
    static forbidden(message?: string): ProdobitError;
    static notFound(resource: string, id?: string): ProdobitError;
    static conflict(message: string, details?: unknown): ProdobitError;
    static validationError(message: string, details?: unknown): ProdobitError;
    static serverError(message?: string, details?: unknown): ProdobitError;
    static networkError(message?: string): ProdobitError;
    static timeout(message?: string): ProdobitError;
    isNetworkError(): boolean;
    isAuthError(): boolean;
    isValidationError(): boolean;
    isNotFoundError(): boolean;
}
//# sourceMappingURL=types.d.ts.map