# @prodobit/sdk

The official TypeScript SDK for Prodobit API - A comprehensive client library for interacting with Prodobit's manufacturing and ERP platform.

## Features

- 🔒 **Type-safe** - Full TypeScript support with comprehensive type definitions
- 🏗️ **Framework Integration** - Built-in support for React Query, SWR, and other data-fetching libraries
- 🔄 **Automatic Token Management** - Handles authentication and token refresh automatically
- ✅ **Runtime Validation** - Optional request/response validation with detailed error messages
- 🚀 **Interceptors** - Powerful middleware system for requests, responses, and errors
- 📦 **Tree-shakable** - Optimized bundle size with modular exports
- 🧪 **Cache Management** - Smart caching strategies for different resource types

## Installation

```bash
npm install @prodobit/sdk
# or
pnpm add @prodobit/sdk
# or
yarn add @prodobit/sdk
```

## Quick Start

### Basic Usage

```typescript
import { ProdobitClient } from '@prodobit/sdk';

const client = new ProdobitClient({
  baseUrl: 'https://api.prodobit.com',
  apiKey: 'your-api-key', // optional
  timeout: 30000, // optional, default 30s
});

// Authenticate with OTP
await client.requestOTP({ email: 'user@example.com' });
const response = await client.verifyOTP({ 
  email: 'user@example.com', 
  code: '123456' 
});

// Use the API
const tenants = await client.getTenants();
const items = await client.getItems({ itemType: 'product' });
```

### Framework Integration

#### React Query

```typescript
import { createFrameworkAPI, queryKeys } from '@prodobit/sdk/framework';
import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';

const api = createFrameworkAPI(client);
const queryClient = useQueryClient();

// Query Hook
function useItems(filters?: ItemFilters) {
  return useQuery({
    queryKey: queryKeys.items.list(filters),
    queryFn: () => api.items.list(filters),
    staleTime: 5 * 60 * 1000, // 5 minutes
  });
}

// Mutation Hook
function useCreateItem() {
  return useMutation({
    mutationFn: api.items.create,
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: queryKeys.items.lists() });
    },
  });
}
```

#### SWR

```typescript
import { queryKeys, toSWRKey } from '@prodobit/sdk/framework';
import useSWR from 'swr';

function useItems(filters?: ItemFilters) {
  return useSWR(
    toSWRKey(queryKeys.items.list(filters)),
    () => api.items.list(filters)
  );
}
```

## API Reference

### Authentication

```typescript
// Request OTP
await client.requestOTP({ email: 'user@example.com', tenantId: 'optional' });

// Verify OTP and login
await client.verifyOTP({ email: 'user@example.com', code: '123456' });

// Refresh token
await client.refreshToken();

// Logout
await client.logout({ allDevices: false });

// Get current user
const user = await client.getCurrentUser();
```

### Tenants

```typescript
// List tenants
const tenants = await client.getTenants({ page: 1, limit: 20 });

// Get specific tenant
const tenant = await client.getTenant('tenant-id');

// Create tenant
const newTenant = await client.createTenant({
  name: 'My Company',
  subscriptionPlan: 'pro'
});

// Update tenant
await client.updateTenant('tenant-id', { name: 'Updated Name' });

// Delete tenant
await client.deleteTenant('tenant-id');
```

### Parties (Customers, Suppliers, Employees)

```typescript
// Create person
const person = await client.createPerson({
  firstName: 'John',
  lastName: 'Doe',
  roles: ['customer'],
  addresses: [{
    addressType: 'billing',
    line1: '123 Main St',
    country: 'US',
    isPrimary: true
  }]
});

// Create organization
const org = await client.createOrganization({
  name: 'Acme Corp',
  roles: ['supplier'],
  contacts: [{
    contactType: 'email',
    contactValue: 'contact@acme.com',
    isPrimary: true
  }]
});

// Get parties
const customers = await client.getCustomers();
const suppliers = await client.getSuppliers();
const employees = await client.getEmployeeParties();
```

### Items

```typescript
// List items
const items = await client.getItems({
  itemType: 'product',
  status: 'active',
  page: 1,
  limit: 50
});

// Get specific item
const item = await client.getItem('item-id');

// Create item
const newItem = await client.createItem({
  name: 'Widget Pro',
  itemType: 'product',
  code: 'WP-001'
});

// Search items
const searchResults = await client.searchItems('widget', {
  itemType: 'product'
});
```

### Advanced Usage

#### With Validation

```typescript
import { InterceptorManager, validationSchemas } from '@prodobit/sdk/validation';

const interceptorManager = new InterceptorManager({
  enabled: true,
  validateRequests: true,
  validateResponses: false,
  failOnValidationError: true
});

// Register validation schemas
interceptorManager.getValidationMiddleware()
  .registerRequestValidator('/api/v1/tenants', validationSchemas.tenant.create);

// Add to client (custom integration required)
```

#### With Custom Interceptors

```typescript
import { builtInInterceptors } from '@prodobit/sdk/validation';

const interceptorManager = new InterceptorManager();

// Add logging
interceptorManager.addRequestInterceptor(
  builtInInterceptors.requestLogger({ logLevel: 'info' })
);

// Add retry logic
interceptorManager.addErrorInterceptor(
  builtInInterceptors.retryInterceptor({ maxRetries: 3 })
);

// Add auth headers
interceptorManager.addRequestInterceptor(
  builtInInterceptors.authHeaderInjector(() => client.getTokenInfo()?.accessToken || null)
);
```

#### Authentication State Management

```typescript
import { AuthStateManager } from '@prodobit/sdk/framework';

const authManager = new AuthStateManager(client);

// Subscribe to auth state changes
const unsubscribe = authManager.subscribe((state) => {
  console.log('Auth state:', state);
  if (state.isAuthenticated) {
    console.log('User:', state.user);
  }
});

// Initialize from stored token
await authManager.initialize();

// Login with OTP
const result = await authManager.loginWithOTP('user@example.com');
if (result.success) {
  await authManager.verifyOTP('user@example.com', '123456');
}

// Cleanup
authManager.destroy();
unsubscribe();
```

## Cache Management

The SDK provides intelligent caching strategies for different resource types:

```typescript
import { cacheStrategies, resourceCacheStrategies } from '@prodobit/sdk/framework';

// Static data (locations, tenants) - 30 minutes
// Dynamic data (stocks, sales orders) - 30 seconds  
// Standard data (items, parties) - 5 minutes
// Real-time data - always fresh

const itemCacheSettings = cacheStrategies[resourceCacheStrategies.items]; // 'standard'
// Returns: { staleTime: 5 * 60 * 1000, cacheTime: 10 * 60 * 1000, ... }
```

## Error Handling

```typescript
import { ProdobitError } from '@prodobit/sdk';

try {
  await client.createTenant(invalidData);
} catch (error) {
  if (error instanceof ProdobitError) {
    console.log('Status:', error.status); // HTTP status code
    console.log('Code:', error.code); // Error code (e.g., 'VALIDATION_ERROR')
    console.log('Message:', error.message); // Human-readable message
    console.log('Details:', error.details); // Additional error details
    
    // Check error types
    if (error.isValidationError()) {
      console.log('Validation failed');
    } else if (error.isAuthError()) {
      console.log('Authentication required');
    } else if (error.isNetworkError()) {
      console.log('Network issue');
    }
  }
}
```

## TypeScript Support

The SDK is built with TypeScript and provides comprehensive type definitions:

```typescript
import type { 
  Tenant, 
  CreateTenantRequest, 
  Party, 
  ItemBase, 
  Response, 
  PaginatedResponse 
} from '@prodobit/sdk';

// All API responses are typed
const response: Response<Tenant[]> = await client.getTenants();
const tenant: Tenant = response.data[0];

// Request payloads are validated
const createRequest: CreateTenantRequest = {
  name: 'My Company', // ✓ Required
  subscriptionPlan: 'pro', // ✓ Valid enum value  
  // status: 'invalid' // ✗ TypeScript error
};
```

## Contributing

See the main [Prodobit repository](https://github.com/prodobit/prodobit) for contributing guidelines.

## License

MIT