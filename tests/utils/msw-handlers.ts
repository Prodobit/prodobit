import { http, HttpResponse } from 'msw'
import { 
  createMockUser, 
  createMockItem, 
  createMockParty, 
  createMockSalesOrder,
  createMockTenant 
} from './test-helpers.js'

/**
 * MSW (Mock Service Worker) handlers for API mocking
 * Used primarily for frontend testing and integration tests
 */

const BASE_URL = 'http://localhost:3001/api/v1'

// Auth handlers
export const authHandlers = [
  // Login
  http.post(`${BASE_URL}/auth/login`, async ({ request }) => {
    const body = await request.json() as any
    
    if (body.email === 'test@example.com' && body.password === 'password') {
      return HttpResponse.json({
        message: 'Login successful',
        user: createMockUser(),
        token: 'mock-jwt-token-123'
      })
    }
    
    if (body.email === 'invalid@example.com') {
      return HttpResponse.json(
        { error: 'Invalid email or password' },
        { status: 401 }
      )
    }
    
    return HttpResponse.json(
      { error: 'Invalid email or password' },
      { status: 401 }
    )
  }),

  // Register
  http.post(`${BASE_URL}/auth/register`, async ({ request }) => {
    const body = await request.json() as any
    
    if (body.email === 'existing@example.com') {
      return HttpResponse.json(
        { error: 'User with this email already exists' },
        { status: 409 }
      )
    }
    
    if (!body.email || !body.password || !body.firstName || !body.lastName) {
      return HttpResponse.json(
        { error: 'Missing required fields' },
        { status: 400 }
      )
    }
    
    return HttpResponse.json({
      message: 'Registration successful',
      user: createMockUser({
        email: body.email,
        firstName: body.firstName,
        lastName: body.lastName
      }),
      token: 'mock-jwt-token-456'
    }, { status: 201 })
  }),

  // Get current user
  http.get(`${BASE_URL}/auth/me`, ({ request }) => {
    const auth = request.headers.get('Authorization')
    
    if (!auth || !auth.startsWith('Bearer ')) {
      return HttpResponse.json(
        { error: 'Authentication required' },
        { status: 401 }
      )
    }
    
    return HttpResponse.json({
      user: createMockUser()
    })
  }),

  // Logout
  http.post(`${BASE_URL}/auth/logout`, () => {
    return HttpResponse.json({
      message: 'Logout successful'
    })
  }),

  // Refresh token
  http.post(`${BASE_URL}/auth/refresh`, async ({ request }) => {
    const body = await request.json() as any
    
    if (body.refreshToken === 'valid-refresh-token') {
      return HttpResponse.json({
        message: 'Token refreshed successfully',
        token: 'new-jwt-token-789'
      })
    }
    
    return HttpResponse.json(
      { error: 'Invalid refresh token' },
      { status: 401 }
    )
  })
]

// Items handlers
export const itemsHandlers = [
  // Get all items
  http.get(`${BASE_URL}/items`, ({ request }) => {
    const url = new URL(request.url)
    const category = url.searchParams.get('category')
    const search = url.searchParams.get('q')
    
    let mockItems = [
      createMockItem({ id: 'item-1', name: 'Laptop Computer', sku: 'COMP-001', category: 'Electronics' }),
      createMockItem({ id: 'item-2', name: 'Wireless Mouse', sku: 'MOUSE-001', category: 'Electronics' }),
      createMockItem({ id: 'item-3', name: 'Office Chair', sku: 'CHAIR-001', category: 'Furniture' })
    ]
    
    if (category) {
      mockItems = mockItems.filter(item => item.category === category)
    }
    
    if (search) {
      mockItems = mockItems.filter(item => 
        item.name.toLowerCase().includes(search.toLowerCase()) ||
        item.sku.toLowerCase().includes(search.toLowerCase())
      )
    }
    
    return HttpResponse.json({
      items: mockItems,
      total: mockItems.length
    })
  }),

  // Get single item
  http.get(`${BASE_URL}/items/:id`, ({ params }) => {
    if (params.id === 'non-existent') {
      return HttpResponse.json(
        { error: 'Item not found' },
        { status: 404 }
      )
    }
    
    return HttpResponse.json({
      item: createMockItem({ 
        id: params.id as string,
        itemAttributes: [
          {
            attribute: { name: 'Color', type: 'text' },
            value: 'Black'
          }
        ]
      })
    })
  }),

  // Create item
  http.post(`${BASE_URL}/items`, async ({ request }) => {
    const body = await request.json() as any
    
    if (!body.name || !body.sku) {
      return HttpResponse.json(
        { error: 'Name and SKU are required' },
        { status: 400 }
      )
    }
    
    if (body.sku === 'DUPLICATE-SKU') {
      return HttpResponse.json(
        { error: 'SKU already exists' },
        { status: 409 }
      )
    }
    
    const newItem = createMockItem({
      id: `item-${Date.now()}`,
      ...body
    })
    
    return HttpResponse.json({
      message: 'Item created successfully',
      item: newItem
    }, { status: 201 })
  }),

  // Update item
  http.put(`${BASE_URL}/items/:id`, async ({ params, request }) => {
    if (params.id === 'non-existent') {
      return HttpResponse.json(
        { error: 'Item not found' },
        { status: 404 }
      )
    }
    
    const body = await request.json() as any
    
    const updatedItem = createMockItem({
      id: params.id as string,
      ...body
    })
    
    return HttpResponse.json({
      message: 'Item updated successfully',
      item: updatedItem
    })
  }),

  // Delete item
  http.delete(`${BASE_URL}/items/:id`, ({ params }) => {
    if (params.id === 'non-existent') {
      return HttpResponse.json(
        { error: 'Item not found' },
        { status: 404 }
      )
    }
    
    return HttpResponse.json({
      message: 'Item deleted successfully'
    })
  }),

  // Search items
  http.get(`${BASE_URL}/items/search`, ({ request }) => {
    const url = new URL(request.url)
    const query = url.searchParams.get('q')
    
    if (!query) {
      return HttpResponse.json(
        { error: 'Search query is required' },
        { status: 400 }
      )
    }
    
    const searchResults = [
      createMockItem({ 
        id: 'search-1', 
        name: `${query} Product 1`,
        sku: `${query.toUpperCase()}-001`
      }),
      createMockItem({ 
        id: 'search-2', 
        name: `${query} Product 2`,
        sku: `${query.toUpperCase()}-002`
      })
    ]
    
    return HttpResponse.json({
      items: searchResults,
      total: searchResults.length,
      query
    })
  }),

  // Get items by category
  http.get(`${BASE_URL}/items/category/:category`, ({ params }) => {
    const category = params.category as string
    
    const categoryItems = [
      createMockItem({ 
        id: 'cat-1', 
        name: `${category} Product 1`,
        category
      }),
      createMockItem({ 
        id: 'cat-2', 
        name: `${category} Product 2`,
        category
      })
    ]
    
    return HttpResponse.json({
      items: categoryItems,
      total: categoryItems.length,
      category
    })
  })
]

// Parties handlers
export const partiesHandlers = [
  // Get all parties
  http.get(`${BASE_URL}/parties`, ({ request }) => {
    const url = new URL(request.url)
    const type = url.searchParams.get('type')
    
    let mockParties = [
      createMockParty({ id: 'party-1', name: 'Customer A', type: 'customer' }),
      createMockParty({ id: 'party-2', name: 'Supplier B', type: 'supplier' }),
      createMockParty({ id: 'party-3', name: 'Customer C', type: 'customer' })
    ]
    
    if (type) {
      mockParties = mockParties.filter(party => party.type === type)
    }
    
    return HttpResponse.json({
      parties: mockParties,
      total: mockParties.length
    })
  }),

  // Get single party
  http.get(`${BASE_URL}/parties/:id`, ({ params }) => {
    if (params.id === 'non-existent') {
      return HttpResponse.json(
        { error: 'Party not found' },
        { status: 404 }
      )
    }
    
    return HttpResponse.json({
      party: createMockParty({ id: params.id as string })
    })
  }),

  // Create party
  http.post(`${BASE_URL}/parties`, async ({ request }) => {
    const body = await request.json() as any
    
    if (!body.name || !body.type) {
      return HttpResponse.json(
        { error: 'Name and type are required' },
        { status: 400 }
      )
    }
    
    const newParty = createMockParty({
      id: `party-${Date.now()}`,
      ...body
    })
    
    return HttpResponse.json({
      message: 'Party created successfully',
      party: newParty
    }, { status: 201 })
  })
]

// Sales Orders handlers
export const salesOrdersHandlers = [
  // Get all sales orders
  http.get(`${BASE_URL}/sales-orders`, ({ request }) => {
    const url = new URL(request.url)
    const customerId = url.searchParams.get('customerId')
    const status = url.searchParams.get('status')
    
    let mockOrders = [
      createMockSalesOrder({ 
        id: 'order-1', 
        orderNumber: 'SO-2024-001',
        customerId: 'customer-1',
        status: 'draft'
      }),
      createMockSalesOrder({ 
        id: 'order-2', 
        orderNumber: 'SO-2024-002',
        customerId: 'customer-2',
        status: 'confirmed'
      })
    ]
    
    if (customerId) {
      mockOrders = mockOrders.filter(order => order.customerId === customerId)
    }
    
    if (status) {
      mockOrders = mockOrders.filter(order => order.status === status)
    }
    
    return HttpResponse.json({
      orders: mockOrders,
      total: mockOrders.length
    })
  }),

  // Get single sales order
  http.get(`${BASE_URL}/sales-orders/:id`, ({ params }) => {
    if (params.id === 'non-existent') {
      return HttpResponse.json(
        { error: 'Sales order not found' },
        { status: 404 }
      )
    }
    
    return HttpResponse.json({
      order: createMockSalesOrder({ 
        id: params.id as string,
        customer: createMockParty({ type: 'customer' }),
        orderItems: [
          {
            id: 'item-1',
            itemId: 'product-1',
            quantity: 2,
            unitPrice: '99.99',
            totalPrice: '199.98',
            item: createMockItem()
          }
        ]
      })
    })
  }),

  // Create sales order
  http.post(`${BASE_URL}/sales-orders`, async ({ request }) => {
    const body = await request.json() as any
    
    if (!body.customerId || !body.orderItems || body.orderItems.length === 0) {
      return HttpResponse.json(
        { error: 'Customer and order items are required' },
        { status: 400 }
      )
    }
    
    const newOrder = createMockSalesOrder({
      id: `order-${Date.now()}`,
      orderNumber: `SO-2024-${String(Date.now()).slice(-3).padStart(3, '0')}`,
      ...body
    })
    
    return HttpResponse.json({
      message: 'Sales order created successfully',
      order: newOrder
    }, { status: 201 })
  }),

  // Update sales order status
  http.patch(`${BASE_URL}/sales-orders/:id/status`, async ({ params, request }) => {
    if (params.id === 'non-existent') {
      return HttpResponse.json(
        { error: 'Sales order not found' },
        { status: 404 }
      )
    }
    
    const body = await request.json() as any
    
    if (!body.status) {
      return HttpResponse.json(
        { error: 'Status is required' },
        { status: 400 }
      )
    }
    
    const updatedOrder = createMockSalesOrder({
      id: params.id as string,
      status: body.status
    })
    
    return HttpResponse.json({
      message: 'Order status updated successfully',
      order: updatedOrder
    })
  })
]

// Tenants handlers
export const tenantsHandlers = [
  // Get current tenant
  http.get(`${BASE_URL}/tenants/current`, () => {
    return HttpResponse.json({
      tenant: createMockTenant()
    })
  }),

  // Update tenant settings
  http.put(`${BASE_URL}/tenants/current`, async ({ request }) => {
    const body = await request.json() as any
    
    const updatedTenant = createMockTenant({
      ...body
    })
    
    return HttpResponse.json({
      message: 'Tenant updated successfully',
      tenant: updatedTenant
    })
  })
]

// Health check handler
export const healthHandlers = [
  http.get('/health', () => {
    return HttpResponse.json({
      status: 'ok',
      message: 'Server is healthy',
      timestamp: new Date().toISOString(),
      version: '1.0.0',
      modules: ['core', 'sales'],
      checks: {
        database: {
          status: 'ok'
        }
      }
    })
  }),

  http.get(`${BASE_URL}/health`, () => {
    return HttpResponse.json({
      status: 'ok',
      message: 'API is healthy',
      timestamp: new Date().toISOString()
    })
  })
]

// Error simulation handlers
export const errorHandlers = [
  // Simulate 500 error
  http.get(`${BASE_URL}/error/500`, () => {
    return HttpResponse.json(
      { error: 'Internal server error' },
      { status: 500 }
    )
  }),

  // Simulate network timeout
  http.get(`${BASE_URL}/error/timeout`, () => {
    return new Promise(resolve => {
      setTimeout(() => {
        resolve(HttpResponse.json({ error: 'Request timeout' }, { status: 408 }))
      }, 5000) // 5 second delay
    })
  }),

  // Simulate rate limiting
  http.post(`${BASE_URL}/error/rate-limit`, () => {
    return HttpResponse.json(
      { 
        error: 'Too many requests',
        retryAfter: 60
      },
      { 
        status: 429,
        headers: {
          'Retry-After': '60'
        }
      }
    )
  })
]

// Combine all handlers
export const handlers = [
  ...authHandlers,
  ...itemsHandlers,
  ...partiesHandlers,
  ...salesOrdersHandlers,
  ...tenantsHandlers,
  ...healthHandlers,
  ...errorHandlers
]

// Handler groups for specific test scenarios
export const handlerGroups = {
  auth: authHandlers,
  items: itemsHandlers,
  parties: partiesHandlers,
  salesOrders: salesOrdersHandlers,
  tenants: tenantsHandlers,
  health: healthHandlers,
  errors: errorHandlers,
  all: handlers
}

// Dynamic handler creation
export const createDynamicHandlers = (config: {
  baseUrl?: string
  delayMs?: number
  failureRate?: number
}) => {
  const { baseUrl = BASE_URL, delayMs = 0, failureRate = 0 } = config
  
  return handlers.map(handler => {
    const originalResolver = handler.resolver
    
    return {
      ...handler,
      resolver: async (input: any) => {
        // Add artificial delay
        if (delayMs > 0) {
          await new Promise(resolve => setTimeout(resolve, delayMs))
        }
        
        // Simulate random failures
        if (failureRate > 0 && Math.random() < failureRate) {
          return HttpResponse.json(
            { error: 'Simulated server error' },
            { status: 500 }
          )
        }
        
        return originalResolver(input)
      }
    }
  })
}