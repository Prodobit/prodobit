import { vi } from 'vitest'
import type { Database } from '@prodobit/database'
import type { User } from '@prodobit/types'

/**
 * Test utilities and helpers for Prodobit testing
 */

// Mock data generators
export const createMockTenant = (overrides?: Partial<any>) => ({
  id: 'tenant-123',
  name: 'Test Company',
  domain: 'test-company',
  settings: { timezone: 'UTC', currency: 'USD' },
  createdAt: new Date('2024-01-01T00:00:00Z'),
  updatedAt: new Date('2024-01-01T00:00:00Z'),
  ...overrides
})

export const createMockUser = (overrides?: Partial<User>): User => ({
  id: 'user-123',
  email: 'test@example.com',
  firstName: 'John',
  lastName: 'Doe',
  tenantId: 'tenant-123',
  roles: ['admin'],
  ...overrides
})

export const createMockParty = (overrides?: Partial<any>) => ({
  id: 'party-123',
  name: 'ACME Corporation',
  type: 'customer',
  email: 'contact@acme.com',
  phone: '+1-555-0123',
  address: {
    street: '123 Main St',
    city: 'Anytown',
    state: 'CA',
    zipCode: '12345',
    country: 'USA'
  },
  tenantId: 'tenant-123',
  createdAt: new Date('2024-01-01T00:00:00Z'),
  updatedAt: new Date('2024-01-01T00:00:00Z'),
  ...overrides
})

export const createMockItem = (overrides?: Partial<any>) => ({
  id: 'item-123',
  name: 'Test Product',
  description: 'A test product',
  sku: 'TEST-001',
  category: 'Electronics',
  unitPrice: '99.99',
  tenantId: 'tenant-123',
  createdAt: new Date('2024-01-01T00:00:00Z'),
  updatedAt: new Date('2024-01-01T00:00:00Z'),
  ...overrides
})

export const createMockSalesOrder = (overrides?: Partial<any>) => ({
  id: 'order-123',
  orderNumber: 'SO-2024-001',
  customerId: 'party-123',
  orderDate: new Date('2024-01-15T00:00:00Z'),
  status: 'draft',
  totalAmount: '199.98',
  tenantId: 'tenant-123',
  createdAt: new Date('2024-01-15T00:00:00Z'),
  updatedAt: new Date('2024-01-15T00:00:00Z'),
  ...overrides
})

export const createMockSalesOrderItem = (overrides?: Partial<any>) => ({
  id: 'order-item-123',
  orderId: 'order-123',
  itemId: 'item-123',
  quantity: 2,
  unitPrice: '99.99',
  totalPrice: '199.98',
  ...overrides
})

// Database mock factory
export const createMockDatabase = (): Database => {
  const mockDbQuery = {
    from: vi.fn(),
    where: vi.fn(),
    leftJoin: vi.fn(),
    rightJoin: vi.fn(),
    innerJoin: vi.fn(),
    returning: vi.fn(),
    set: vi.fn(),
    values: vi.fn(),
    with: vi.fn(),
    orderBy: vi.fn(),
    limit: vi.fn(),
    offset: vi.fn(),
    groupBy: vi.fn(),
    having: vi.fn()
  }

  // Chain all methods to return the query object for method chaining
  Object.keys(mockDbQuery).forEach(key => {
    if (typeof mockDbQuery[key as keyof typeof mockDbQuery] === 'function') {
      mockDbQuery[key as keyof typeof mockDbQuery] = vi.fn().mockReturnValue(mockDbQuery)
    }
  })

  const mockDatabase = {
    select: vi.fn().mockReturnValue(mockDbQuery),
    insert: vi.fn().mockReturnValue(mockDbQuery),
    update: vi.fn().mockReturnValue(mockDbQuery),
    delete: vi.fn().mockReturnValue(mockDbQuery),
    transaction: vi.fn(),
    query: {
      tenants: {
        findFirst: vi.fn(),
        findMany: vi.fn()
      },
      users: {
        findFirst: vi.fn(),
        findMany: vi.fn()
      },
      parties: {
        findFirst: vi.fn(),
        findMany: vi.fn()
      },
      items: {
        findFirst: vi.fn(),
        findMany: vi.fn()
      },
      attributes: {
        findFirst: vi.fn(),
        findMany: vi.fn()
      },
      itemAttributes: {
        findFirst: vi.fn(),
        findMany: vi.fn()
      },
      locations: {
        findFirst: vi.fn(),
        findMany: vi.fn()
      },
      assets: {
        findFirst: vi.fn(),
        findMany: vi.fn()
      },
      salesOrders: {
        findFirst: vi.fn(),
        findMany: vi.fn()
      },
      salesOrderItems: {
        findFirst: vi.fn(),
        findMany: vi.fn()
      }
    },
    $client: vi.fn().mockImplementation((query: any) => {
      if (query[0] === 'SELECT 1') {
        return Promise.resolve([{ '?column?': 1 }])
      }
      return Promise.resolve([])
    })
  } as unknown as Database

  return mockDatabase
}

// Hono context mock factory
export const createMockContext = (overrides?: any) => {
  const context = {
    get: vi.fn(),
    set: vi.fn(),
    json: vi.fn().mockReturnValue({ status: 200 }),
    text: vi.fn().mockReturnValue({ status: 200 }),
    html: vi.fn().mockReturnValue({ status: 200 }),
    redirect: vi.fn().mockReturnValue({ status: 302 }),
    notFound: vi.fn().mockReturnValue({ status: 404 }),
    req: {
      method: 'GET',
      url: 'http://localhost:3001/test',
      param: vi.fn(),
      query: vi.fn(),
      header: vi.fn(),
      json: vi.fn(),
      text: vi.fn(),
      formData: vi.fn()
    },
    res: {
      status: 200,
      headers: new Headers()
    },
    env: {},
    executionCtx: {
      waitUntil: vi.fn(),
      passThroughOnException: vi.fn()
    },
    ...overrides
  }

  // Set up common default returns
  context.get.mockImplementation((key: string) => {
    if (key === 'db') return createMockDatabase()
    if (key === 'user') return createMockUser()
    if (key === 'enabledModules') return new Set(['core'])
    return null
  })

  return context
}

// Service mock factories
export const createMockItemService = () => ({
  createItem: vi.fn(),
  getItemById: vi.fn(),
  getItemsWithAttributes: vi.fn(),
  updateItem: vi.fn(),
  deleteItem: vi.fn(),
  searchItems: vi.fn(),
  getItemsByCategory: vi.fn(),
  getItemsBySku: vi.fn(),
  addItemAttribute: vi.fn(),
  removeItemAttribute: vi.fn()
})

export const createMockPartyService = () => ({
  createParty: vi.fn(),
  getPartyById: vi.fn(),
  getPartiesByType: vi.fn(),
  updateParty: vi.fn(),
  deleteParty: vi.fn(),
  searchParties: vi.fn()
})

export const createMockSalesOrderService = () => ({
  createSalesOrder: vi.fn(),
  getSalesOrderById: vi.fn(),
  updateOrderStatus: vi.fn(),
  getOrdersByCustomer: vi.fn(),
  getOrdersByDateRange: vi.fn(),
  getOrderMetrics: vi.fn(),
  calculateOrderTotal: vi.fn(),
  generateOrderNumber: vi.fn(),
  validateOrderData: vi.fn(),
  validateStatusTransition: vi.fn()
})

// Auth mocks
export const createMockAuthUser = (overrides?: Partial<User>): User => ({
  id: 'auth-user-123',
  email: 'auth@example.com',
  firstName: 'Auth',
  lastName: 'User',
  tenantId: 'tenant-123',
  roles: ['user'],
  ...overrides
})

export const createMockJWTPayload = (overrides?: any) => ({
  userId: 'user-123',
  email: 'test@example.com',
  tenantId: 'tenant-123',
  roles: ['admin'],
  iat: Math.floor(Date.now() / 1000),
  exp: Math.floor(Date.now() / 1000) + (7 * 24 * 60 * 60), // 7 days
  ...overrides
})

// Configuration mocks
export const createMockConfig = (overrides?: any) => ({
  base: {
    environment: 'test',
    logLevel: 'info',
    ...overrides?.base
  },
  database: {
    host: 'localhost',
    port: 5432,
    database: 'test_db',
    user: 'test_user',
    password: 'test_pass',
    ...overrides?.database
  },
  server: {
    port: 3001,
    cors: {
      origin: ['http://localhost:3000'],
      credentials: true
    },
    ...overrides?.server
  },
  modules: {
    manifest: {
      modules: [
        { name: 'core', enabled: true, version: '1.0.0' },
        { name: 'sales', enabled: true, version: '1.0.0' },
        { name: 'inventory', enabled: false, version: '1.0.0' }
      ]
    },
    ...overrides?.modules
  }
})

// React testing utilities
export const createMockQueryClient = () => {
  const queryClient = {
    getQueryData: vi.fn(),
    setQueryData: vi.fn(),
    invalidateQueries: vi.fn(),
    removeQueries: vi.fn(),
    cancelQueries: vi.fn(),
    clear: vi.fn(),
    defaultMutationOptions: {},
    defaultQueryOptions: {
      retry: false
    }
  }
  return queryClient
}

// ProdobitClient mock
export const createMockProdobitClient = () => ({
  auth: {
    login: vi.fn(),
    register: vi.fn(),
    logout: vi.fn(),
    refresh: vi.fn(),
    getCurrentUser: vi.fn(),
    isAuthenticated: vi.fn()
  },
  items: {
    getAll: vi.fn(),
    getById: vi.fn(),
    create: vi.fn(),
    update: vi.fn(),
    delete: vi.fn(),
    search: vi.fn(),
    getByCategory: vi.fn()
  },
  parties: {
    getAll: vi.fn(),
    getById: vi.fn(),
    create: vi.fn(),
    update: vi.fn(),
    delete: vi.fn(),
    getByType: vi.fn()
  },
  salesOrders: {
    getAll: vi.fn(),
    getById: vi.fn(),
    create: vi.fn(),
    update: vi.fn(),
    updateStatus: vi.fn(),
    delete: vi.fn(),
    getByCustomer: vi.fn(),
    getByDateRange: vi.fn()
  },
  setAuthToken: vi.fn(),
  clearAuthToken: vi.fn(),
  setBaseURL: vi.fn()
})

// Test data builders
export class TenantBuilder {
  private data: any = {}

  id(id: string) {
    this.data.id = id
    return this
  }

  name(name: string) {
    this.data.name = name
    return this
  }

  domain(domain: string) {
    this.data.domain = domain
    return this
  }

  settings(settings: any) {
    this.data.settings = settings
    return this
  }

  build() {
    return createMockTenant(this.data)
  }
}

export class UserBuilder {
  private data: any = {}

  id(id: string) {
    this.data.id = id
    return this
  }

  email(email: string) {
    this.data.email = email
    return this
  }

  name(firstName: string, lastName: string) {
    this.data.firstName = firstName
    this.data.lastName = lastName
    return this
  }

  tenantId(tenantId: string) {
    this.data.tenantId = tenantId
    return this
  }

  roles(roles: string[]) {
    this.data.roles = roles
    return this
  }

  build(): User {
    return createMockUser(this.data)
  }
}

export class ItemBuilder {
  private data: any = {}

  id(id: string) {
    this.data.id = id
    return this
  }

  name(name: string) {
    this.data.name = name
    return this
  }

  sku(sku: string) {
    this.data.sku = sku
    return this
  }

  price(price: string) {
    this.data.unitPrice = price
    return this
  }

  category(category: string) {
    this.data.category = category
    return this
  }

  tenantId(tenantId: string) {
    this.data.tenantId = tenantId
    return this
  }

  build() {
    return createMockItem(this.data)
  }
}

// Assertion helpers
export const expectToHaveBeenCalledWithObject = (
  mockFn: any,
  expectedObject: any
) => {
  const calls = mockFn.mock.calls
  const found = calls.some((call: any[]) =>
    call.some(arg => 
      typeof arg === 'object' && 
      Object.keys(expectedObject).every(key => arg[key] === expectedObject[key])
    )
  )
  
  if (!found) {
    throw new Error(
      `Expected mock to be called with object containing ${JSON.stringify(expectedObject)}, but it wasn't. Calls: ${JSON.stringify(calls)}`
    )
  }
}

// Time utilities
export const advanceTimersByDays = (days: number) => {
  vi.advanceTimersByTime(days * 24 * 60 * 60 * 1000)
}

export const advanceTimersByHours = (hours: number) => {
  vi.advanceTimersByTime(hours * 60 * 60 * 1000)
}

// Environment helpers
export const withEnvironment = (envVars: Record<string, string>, fn: () => void | Promise<void>) => {
  const originalEnv = { ...process.env }
  
  Object.assign(process.env, envVars)
  
  const cleanup = () => {
    process.env = originalEnv
  }
  
  try {
    const result = fn()
    if (result && typeof result.then === 'function') {
      return result.finally(cleanup)
    }
    cleanup()
    return result
  } catch (error) {
    cleanup()
    throw error
  }
}

// Error simulation helpers
export const simulateNetworkError = () => {
  const error = new Error('Network error')
  error.name = 'NetworkError'
  return error
}

export const simulateTimeout = () => {
  const error = new Error('Request timeout')
  error.name = 'TimeoutError'
  return error
}

export const simulateValidationError = (field: string, message: string) => {
  const error = new Error(`Validation error: ${field} ${message}`)
  error.name = 'ValidationError'
  return error
}

// Test database helpers (for integration tests)
export const createTestDatabase = async () => {
  // This would create a test database instance
  // Implementation depends on your database setup
  return createMockDatabase()
}

export const cleanupTestDatabase = async (db: Database) => {
  // This would clean up test data
  // Implementation depends on your database setup
}

// Builders pattern for complex test data
export const builders = {
  tenant: () => new TenantBuilder(),
  user: () => new UserBuilder(),
  item: () => new ItemBuilder()
}

// Common test scenarios
export const testScenarios = {
  authenticatedUser: () => ({
    user: createMockUser(),
    context: createMockContext({
      get: vi.fn().mockImplementation((key: string) => {
        if (key === 'user') return createMockUser()
        if (key === 'db') return createMockDatabase()
        if (key === 'enabledModules') return new Set(['core'])
        return null
      })
    })
  }),

  unauthenticatedUser: () => ({
    user: null,
    context: createMockContext({
      get: vi.fn().mockImplementation((key: string) => {
        if (key === 'user') return null
        if (key === 'db') return createMockDatabase()
        if (key === 'enabledModules') return new Set(['core'])
        return null
      })
    })
  }),

  adminUser: () => ({
    user: createMockUser({ roles: ['admin'] }),
    context: createMockContext({
      get: vi.fn().mockImplementation((key: string) => {
        if (key === 'user') return createMockUser({ roles: ['admin'] })
        if (key === 'db') return createMockDatabase()
        if (key === 'enabledModules') return new Set(['core'])
        return null
      })
    })
  }),

  limitedUser: () => ({
    user: createMockUser({ roles: ['user'] }),
    context: createMockContext({
      get: vi.fn().mockImplementation((key: string) => {
        if (key === 'user') return createMockUser({ roles: ['user'] })
        if (key === 'db') return createMockDatabase()
        if (key === 'enabledModules') return new Set(['core'])
        return null
      })
    })
  })
}