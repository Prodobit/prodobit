import { TokenInfo, User } from "@prodobit/types";
import { type } from "arktype";

// Re-export all common types from @prodobit/types as single source of truth
// (excluding framework types which are defined locally)
export type {
  Address,
  ApiErrorResponse,
  ApiPaginatedResponse,
  // Legacy aliases for backward compatibility
  ApiResponse,
  // Asset types
  Asset,
  AssetType,
  // Attribute types
  Attribute,
  AttributeQuery,
  AttributeValue,
  AuthMethod,
  // BOM types
  Bom,
  BomComponent,
  CloneBomRequest,
  ContactMechanism,
  CreateAssetRequest,
  CreateAssetTypeRequest,
  CreateAttributeRequest,
  CreateBomComponentRequest,
  CreateBomRequest,
  CreateEcoRequest,
  // Employee types from types package
  CreateEmployeeRequest,
  CreateItemCategoryRequest,
  CreateItemRequest,
  CreateLocationRequest,
  CreateLocationTypeRequest,
  CreateOrganizationRequest,
  CreatePartyRequest,
  CreatePersonRequest,
  CreateSalesOrderItemRequest,
  CreateSalesOrderRequest,
  CreateTenantRequest,
  Customer,
  // ECO types
  Eco,
  Employee,
  ErrorResponse,
  // Item types
  Item,
  ItemCategory,
  // Enum types
  ItemType,
  // Location types
  Location,
  LocationType,
  LoginResponse,
  LoginResponseData,
  LogoutRequest,
  MrpRequirementsRequest,
  Organization,
  PaginatedResponse,
  Pagination,
  // Party types
  Party,
  PartyRole,
  Person,
  RefreshTokenRequest,
  RejectEcoRequest,
  RequestOTPRequest,
  RequestOTPResponse,
  ResendOTPRequest,
  // Response types - use consistent naming
  Response,
  // Sales types
  SalesOrder,
  SalesOrderItem,
  Session,
  SetAttributeValueRequest,
  Status,
  Supplier,
  // Tenant types
  Tenant,
  TenantMembership,
  TenantQuery,
  Timestamp,
  // Base schemas for reference
  TokenInfo,
  UpdateAssetRequest,
  UpdateAssetTypeRequest,
  UpdateAttributeRequest,
  UpdateBomRequest,
  UpdateEcoRequest,
  UpdateEmployeeRequest,
  UpdateItemCategoryRequest,
  UpdateItemRequest,
  UpdateLocationRequest,
  UpdateLocationTypeRequest,
  UpdatePartyRequest,
  UpdateSalesOrderItemRequest,
  UpdateSalesOrderRequest,
  UpdateSalesOrderStatusRequest,
  UpdateTenantRequest,
  // Auth types
  User,
  // Core types
  UUID,
  VerifyOTPRequest,
} from "@prodobit/types";

// SDK-specific arktype schemas
export const prodobitClientConfig = type({
  baseUrl: "string.url",
  "apiKey?": "string",
  "timeout?": "number >= 0",
  "headers?": "object",
  "autoRefresh?": "boolean",
  "persistToken?": "boolean",
  "tokenStorageKey?": "string",
  "cookiePrefix?": "string",
});

export const requestConfig = type({
  "headers?": "object",
  "timeout?": "number >= 0",
  "skipAuth?": "boolean",
});

export const sdkTokenInfo = type({
  accessToken: "string",
  "refreshToken?": "string",
  expiresAt: "Date",
  "tenantId?": "string",
});

// Query Filter Schemas
export const salesOrderQuery = type({
  "status?": "string",
  "customerId?": "string",
  "orderDateFrom?": "string",
  "orderDateTo?": "string",
  "search?": "string",
  "page?": "number >= 1",
  "limit?": "number >= 1",
});

export const salesOrderFilters = salesOrderQuery;

export const itemFilters = type({
  "search?": "string",
  "type?": "'product' | 'service' | 'raw_material' | 'component'",
  "status?": "'active' | 'inactive' | 'suspended' | 'deleted'",
  "categoryId?": "string",
  "page?": "number >= 1",
  "limit?": "number >= 1",
});

export const locationFilters = type({
  "search?": "string",
  "type?": "string",
  "parentId?": "string",
  "status?": "'active' | 'inactive' | 'suspended' | 'deleted'",
  "page?": "number >= 1",
  "limit?": "number >= 1",
});

export const assetFilters = type({
  "search?": "string",
  "type?": "string",
  "locationId?": "string",
  "status?": "'active' | 'inactive' | 'suspended' | 'deleted'",
  "page?": "number >= 1",
  "limit?": "number >= 1",
});

export const partyFilters = type({
  "search?": "string",
  "type?": "'person' | 'organization'",
  "role?": "'customer' | 'supplier' | 'employee'",
  "status?": "'active' | 'inactive' | 'suspended' | 'deleted'",
  "page?": "number >= 1",
  "limit?": "number >= 1",
});

export const bomFilters = type({
  "search?": "string",
  "itemId?": "string",
  "status?": "'draft' | 'approved' | 'suspended' | 'obsolete'",
  "page?": "number >= 1",
  "limit?": "number >= 1",
});

export const bomComponentFilters = type({
  "bomId?": "string",
  "itemId?": "string",
  "page?": "number >= 1",
  "limit?": "number >= 1",
});

export const ecoFilters = type({
  "search?": "string",
  "status?": "'draft' | 'in_review' | 'approved' | 'rejected' | 'implemented'",
  "bomId?": "string",
  "priority?": "'low' | 'medium' | 'high' | 'critical'",
  "page?": "number >= 1",
  "limit?": "number >= 1",
});

export const lotFilters = type({
  "search?": "string",
  "itemId?": "string",
  "status?": "'active' | 'inactive' | 'suspended' | 'deleted'",
  "page?": "number >= 1",
  "limit?": "number >= 1",
});

export const stockFilters = type({
  "itemId?": "string",
  "locationId?": "string",
  "lotId?": "string",
  "status?": "'available' | 'reserved' | 'quarantined' | 'damaged' | 'blocked'",
  "page?": "number >= 1",
  "limit?": "number >= 1",
});

export const stockTransactionFilters = type({
  "itemId?": "string",
  "locationId?": "string",
  "lotId?": "string",
  "transactionType?": "string",
  "dateFrom?": "string",
  "dateTo?": "string",
  "page?": "number >= 1",
  "limit?": "number >= 1",
});

// Framework API method filter schemas
export const frameworkPartyFilters = partyFilters;

export const frameworkSearchParams = type({
  searchTerm: "string",
  "partyType?": "'person' | 'organization'",
  "roleType?": "'customer' | 'supplier' | 'employee'",
});

export const frameworkEmployeeFilters = type({
  "department?": "string",
  "role?": "string",
  "status?": "'active' | 'inactive' | 'on_leave'",
  "search?": "string",
  "page?": "number >= 1",
  "limit?": "number >= 1",
});

export const frameworkCustomerFilters = type({
  "status?": "'active' | 'inactive' | 'suspended'",
  "customerType?": "'retail' | 'wholesale' | 'vip'",
  "region?": "string",
  "search?": "string",
  "page?": "number >= 1",
  "limit?": "number >= 1",
});

export const frameworkSupplierFilters = type({
  "status?": "'active' | 'inactive' | 'suspended'",
  "category?": "string",
  "rating?": "number",
  "search?": "string",
  "page?": "number >= 1",
  "limit?": "number >= 1",
});

export const frameworkStockFilters = type({
  "itemId?": "string",
  "locationId?": "string",
  "lotId?": "string",
  "status?": "'available' | 'reserved' | 'quarantined' | 'damaged' | 'blocked'",
  "lowStock?": "boolean",
  "search?": "string",
  "page?": "number >= 1",
  "limit?": "number >= 1",
});

export const frameworkLotFilters = lotFilters;

// BOM specific filters
export const frameworkBomFilters = type({
  "itemId?": "string",
  "status?": "'draft' | 'active' | 'obsolete'",
  "version?": "string",
  "effectiveDate?": "string.date",
  "search?": "string",
  "page?": "number >= 1",
  "limit?": "number >= 1",
});

export const frameworkBomComponentFilters = type({
  "bomId?": "string",
  "componentId?": "string",
  "componentType?": "string",
  "required?": "boolean",
  "page?": "number >= 1",
  "limit?": "number >= 1",
});

// Additional schemas for missing types
export const contactInfo = type({
  type: "'email' | 'phone'",
  value: "string",
  "isPrimary?": "boolean",
});

export const addressInfo = type({
  type: "'billing' | 'shipping' | 'home'",
  line1: "string",
  "line2?": "string",
  city: "string",
  state: "string",
  postalCode: "string",
  country: "string",
});

export const createInvitationRequest = type({
  email: "string.email",
  roleId: "string.uuid",
  "message?": "string",
  "expiresInDays?": "number >= 1",
  "membershipExpiresAt?": "string.date",
  "accessLevel?": "'full' | 'limited' | 'read_only'",
  "permissions?": "object",
  "resourceRestrictions?": "object",
});

export const updateMembershipRequest = type({
  "role?": "string",
  "permissions?": "string[]",
  "status?": "'active' | 'inactive' | 'suspended'",
});

export const createStockRequest = type({
  itemId: "string.uuid",
  locationId: "string.uuid",
  "lotId?": "string.uuid",
  quantity: "number >= 0",
  "unitCost?": "number >= 0",
  status: "'available' | 'reserved' | 'quarantined' | 'damaged' | 'blocked'",
});

export const updateStockRequest = type({
  "quantity?": "number >= 0",
  "unitCost?": "number >= 0",
  "status?": "'available' | 'reserved' | 'quarantined' | 'damaged' | 'blocked'",
});

// Note: Employee request types are now imported from @prodobit/types

// Lot request types
export const createLotRequest = type({
  itemId: "string.uuid",
  lotNumber: "string >= 1",
  "expirationDate?": "string.date",
  "notes?": "string",
});

export const updateLotRequest = type({
  "lotNumber?": "string >= 1",
  "expirationDate?": "string.date",
  "notes?": "string",
});

// Query utility types
export const queryPrimitive = type(
  "string | number | boolean | Date | null | undefined"
);
export const queryValue = queryPrimitive.or(queryPrimitive.array());

// SDK-specific enum types
export const partyTypeEnum = type("'person' | 'organization'");
export const roleTypeEnum = type("'customer' | 'supplier' | 'employee'");

// Framework-specific arktype schemas (moved from @prodobit/types)
// Auth State Schema
export const authState = type({
  isAuthenticated: "boolean",
  isLoading: "boolean",
  isError: "boolean",
  "user?": "object | null",
  "token?": "object | null",
  "error?": "object | null",
  "tenantId?": "string | null",
});

// Cache Configuration Schema
export const cacheConfig = type({
  defaultStaleTime: "number >= 0",
  defaultCacheTime: "number >= 0",
  "resourceStaleTime?": {
    "auth?": "number >= 0",
    "tenants?": "number >= 0",
    "parties?": "number >= 0",
    "items?": "number >= 0",
    "locations?": "number >= 0",
    "assets?": "number >= 0",
    "stocks?": "number >= 0",
    "lots?": "number >= 0",
    "boms?": "number >= 0",
    "salesOrders?": "number >= 0",
    "employees?": "number >= 0",
    "attributes?": "number >= 0",
    "ecos?": "number >= 0",
  },
  refetchOnWindowFocus: "boolean",
  refetchOnReconnect: "boolean",
  refetchInterval: "number >= 0 | false",
  retry: "number >= 0 | boolean",
  retryDelay: "number >= 0",
});

// Auth Actions Schema - TypeScript union types (arktype çok karmaşık oldu)
export type AuthAction =
  | { type: "AUTH_START" }
  | {
      type: "AUTH_SUCCESS";
      payload: {
        user: User; // User from @prodobit/types
        token: TokenInfo; // TokenInfo from @prodobit/types
      };
    }
  | {
      type: "AUTH_ERROR";
      payload: { error: string | Error | ProdobitError };
    }
  | { type: "AUTH_LOGOUT" }
  | {
      type: "TOKEN_REFRESH";
      payload: { token: TokenInfo }; // TokenInfo from @prodobit/types
    }
  | {
      type: "SET_TENANT";
      payload: { tenantId: string };
    }
  | { type: "CLEAR_ERROR" };

// Type exports from arktype schemas
export type ProdobitClientConfig = typeof prodobitClientConfig.infer;
export type RequestConfig = typeof requestConfig.infer;
export type SDKTokenInfo = typeof sdkTokenInfo.infer;
export type SalesOrderQuery = typeof salesOrderQuery.infer;

// Filter type exports
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

// Framework API filter type exports
export type FrameworkPartyFilters = typeof frameworkPartyFilters.infer;
export type FrameworkSearchParams = typeof frameworkSearchParams.infer;
export type FrameworkEmployeeFilters = typeof frameworkEmployeeFilters.infer;
export type FrameworkCustomerFilters = typeof frameworkCustomerFilters.infer;
export type FrameworkSupplierFilters = typeof frameworkSupplierFilters.infer;
export type FrameworkStockFilters = typeof frameworkStockFilters.infer;
export type FrameworkLotFilters = typeof frameworkLotFilters.infer;
export type FrameworkBomFilters = typeof frameworkBomFilters.infer;
export type FrameworkBomComponentFilters =
  typeof frameworkBomComponentFilters.infer;

// Additional type exports
export type ContactInfo = typeof contactInfo.infer;
export type AddressInfo = typeof addressInfo.infer;
export type CreateInvitationRequest = typeof createInvitationRequest.infer;
export type UpdateMembershipRequest = typeof updateMembershipRequest.infer;
export type CreateStockRequest = typeof createStockRequest.infer;
export type UpdateStockRequest = typeof updateStockRequest.infer;
// Note: Employee request types are exported from @prodobit/types
export type CreateLotRequest = typeof createLotRequest.infer;
export type UpdateLotRequest = typeof updateLotRequest.infer;

// Base type aliases for backward compatibility
export type AssetBase = any; // Using Asset from @prodobit/types
export type ItemBase = any; // Using Item from @prodobit/types
export type LocationBase = any; // Using Location from @prodobit/types
export type LotBase = any; // Lot type not yet defined in types package
export type StockBase = any; // Stock type not yet defined in types package

export type QueryPrimitive = typeof queryPrimitive.infer;
export type QueryValue = typeof queryValue.infer;
export type PartyType = typeof partyTypeEnum.infer;
export type RoleType = typeof roleTypeEnum.infer;

// Framework type exports
export type AuthState = typeof authState.infer;
export type CacheConfig = typeof cacheConfig.infer;

// SDK-specific error class
export class ProdobitError extends Error {
  constructor(
    message: string,
    public readonly status?: number,
    public readonly code?: string,
    public readonly details?: unknown
  ) {
    super(message);
    this.name = "ProdobitError";
  }

  // Factory methods for common error types
  static badRequest(message: string, details?: unknown): ProdobitError {
    return new ProdobitError(message, 400, "BAD_REQUEST", details);
  }

  static unauthorized(message = "Unauthorized"): ProdobitError {
    return new ProdobitError(message, 401, "UNAUTHORIZED");
  }

  static forbidden(message = "Forbidden"): ProdobitError {
    return new ProdobitError(message, 403, "FORBIDDEN");
  }

  static notFound(resource: string, id?: string): ProdobitError {
    const message = id
      ? `${resource} with ID '${id}' not found`
      : `${resource} not found`;
    return new ProdobitError(message, 404, "NOT_FOUND", { resource, id });
  }

  static conflict(message: string, details?: unknown): ProdobitError {
    return new ProdobitError(message, 409, "CONFLICT", details);
  }

  static validationError(message: string, details?: unknown): ProdobitError {
    return new ProdobitError(message, 422, "VALIDATION_ERROR", details);
  }

  static serverError(
    message = "Internal Server Error",
    details?: unknown
  ): ProdobitError {
    return new ProdobitError(message, 500, "INTERNAL_ERROR", details);
  }

  static networkError(message = "Network Error"): ProdobitError {
    return new ProdobitError(message, 0, "NETWORK_ERROR");
  }

  static timeout(message = "Request Timeout"): ProdobitError {
    return new ProdobitError(message, 408, "TIMEOUT");
  }

  // Check error type
  isNetworkError(): boolean {
    return this.code === "NETWORK_ERROR";
  }

  isAuthError(): boolean {
    return this.status === 401 || this.status === 403;
  }

  isValidationError(): boolean {
    return this.code === "VALIDATION_ERROR";
  }

  isNotFoundError(): boolean {
    return this.status === 404;
  }
}

// All types are now defined via arktype schemas above
