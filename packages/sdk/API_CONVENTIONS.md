# SDK API Surface Consistency Guide

## Method Naming Conventions

### CRUD Operations
- **GET Single**: `get{Resource}(id, config?)` 
- **GET Multiple**: `get{Resources}(query?, config?)`
- **GET by Filter**: `get{Resources}By{Criteria}(criteria, config?)`
- **CREATE**: `create{Resource}(data, config?)`
- **UPDATE**: `update{Resource}(id, data, config?)`
- **DELETE**: `delete{Resource}(id, config?)`

### Special Operations
- **SEARCH**: `search{Resources}(query, filters?, config?)`
- **BULK**: `bulk{Operation}{Resources}(items, config?)`
- **COUNT**: `count{Resources}(filters?, config?)`

### Helper Methods
- **Quick Operations**: `{operation}{Resource}Quick(...params, config?)`
- **Utility**: `{verb}{Resource}{Action}(...params, config?)`

## Parameter Order Standardization

### Standard Order:
1. **Resource ID** (for single resource operations)
2. **Data/Query Object** (request body or query parameters)  
3. **Additional Parameters** (specific to operation)
4. **Config** (always last, always optional)

### Examples:
```typescript
// CRUD Operations
getTenant(id: string, config?: RequestConfig)
getTenants(query?: TenantQuery, config?: RequestConfig)
createTenant(data: CreateTenantRequest, config?: RequestConfig)
updateTenant(id: string, data: UpdateTenantRequest, config?: RequestConfig)
deleteTenant(id: string, config?: RequestConfig)

// Search Operations
searchTenants(searchTerm: string, filters?: TenantFilters, config?: RequestConfig)

// Special Operations  
getTenantsByStatus(status: Status, config?: RequestConfig)
```

## Return Type Consistency

### Standard Return Types:
- **Single Resource**: `Promise<Response<T>>`
- **Multiple Resources**: `Promise<Response<T[]>>` or `Promise<PaginatedResponse<T[]>>`
- **Count Operations**: `Promise<Response<{ count: number }>>`
- **Void Operations**: `Promise<Response<void>>`

### Error Response:
All methods should handle errors consistently and throw `ProdobitError` with:
- `message: string` - Human readable error message
- `status?: number` - HTTP status code
- `code?: string` - Error code for programmatic handling
- `details?: unknown` - Additional error details

## Current Inconsistencies to Fix

### Method Naming Issues:
1. `getMe()` → `getCurrentUser()`
2. `getEmployeeParties()` → `getEmployees()`  
3. `getLocationById()` → `getLocation()`
4. `getAssetById()` → `getAsset()`
5. `getStockById()` → `getStock()`
6. `getLotById()` → `getLot()`

### Parameter Order Issues:
1. Some methods have inconsistent parameter ordering
2. Config parameter sometimes missing or in wrong position

### Return Type Issues:
1. Some methods return `any` instead of proper types
2. Inconsistent use of `Response<T>` vs `PaginatedResponse<T>`
3. Some helper methods have different return patterns

### Error Handling Issues:
1. Inconsistent error messages
2. Missing error codes for different failure types
3. No standardized error categories