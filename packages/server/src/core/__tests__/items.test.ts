import { describe, it, expect, beforeEach, vi, afterEach } from 'vitest'
import { testClient } from 'hono/testing'
import { Hono } from 'hono'
import items from '../items.js'
import { ItemService } from '../services/ItemService.js'
import type { Database } from '@prodobit/database'

// Mock auth middleware
vi.mock('../middleware/auth.js', () => ({
  authMiddleware: vi.fn(async (c, next) => {
    // Set mock user data by default
    c.set('user', {
      id: 'user-123',
      email: 'test@example.com',
      tenantId: 'tenant-123',
      roles: ['admin']
    })
    await next()
  })
}))

// Mock ItemService
vi.mock('../services/ItemService.js')
const MockItemService = ItemService as any

describe('Items API', () => {
  let app: Hono
  let client: any
  let mockDb: Database
  let mockItemService: any
  let mockAuthMiddleware: any

  beforeEach(async () => {
    vi.clearAllMocks()
    
    // Get the mocked auth middleware
    const authModule = await import('../middleware/auth.js')
    mockAuthMiddleware = authModule.authMiddleware
    
    // Create app with items routes
    app = new Hono()
    
    // Mock database and services
    mockDb = {} as Database
    mockItemService = {
      createItem: vi.fn(),
      getItems: vi.fn(),
      getItemWithDetails: vi.fn(),
      getItemById: vi.fn(),
      updateItem: vi.fn(),
      deleteItem: vi.fn(),
      searchItems: vi.fn(),
      getItemsByCategory: vi.fn(),
      getCategories: vi.fn(),
      getItemCategories: vi.fn(),
      addItemAttribute: vi.fn(),
      removeItemAttribute: vi.fn()
    }

    MockItemService.mockImplementation(() => mockItemService)

    // Set context variables (db is still needed)
    app.use('*', async (c, next) => {
      c.set('db', mockDb)
      await next()
    })

    app.route('/items', items)
    client = testClient(app)
  })

  afterEach(() => {
    vi.restoreAllMocks()
  })

  describe('GET /items', () => {
    it('should return all items for tenant', async () => {
      const mockItems = [
        {
          id: 'item-1',
          name: 'Product 1',
          sku: 'PROD-001',
          tenantId: 'tenant-123'
        },
        {
          id: 'item-2',
          name: 'Product 2',
          sku: 'PROD-002',
          tenantId: 'tenant-123'
        }
      ]

      mockItemService.getItems.mockResolvedValue(mockItems)

      const res = await client.items.$get()

      expect(res.status).toBe(200)
      
      const data = await res.json()
      expect(data).toEqual({
        success: true,
        data: mockItems
      })

      expect(mockItemService.getItems).toHaveBeenCalledWith('tenant-123', {
        itemType: undefined,
        categoryId: undefined,
        status: undefined,
        search: undefined
      })
    })

    it('should handle service errors gracefully', async () => {
      mockItemService.getItems.mockRejectedValue(new Error('Database connection failed'))

      const res = await client.items.$get()

      expect(res.status).toBe(500)
      
      const data = await res.json()
      expect(data).toEqual({
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list items",
          details: "Database connection failed"
        }
      })
    })

    it('should return 401 when user not authenticated', async () => {
      // Mock auth middleware to reject authentication
      mockAuthMiddleware.mockImplementationOnce(async (c: any) => {
        return c.json({
          success: false,
          error: {
            code: 'UNAUTHORIZED',
            message: 'Access token required'
          }
        }, 401)
      })

      const res = await client.items.$get()

      expect(res.status).toBe(401)
      
      const data = await res.json()
      expect(data.success).toBe(false)
      expect(data.error.code).toBe('UNAUTHORIZED')
    })
  })

  describe('POST /items', () => {
    const validItemData = {
      name: 'New Product',
      description: 'A new product description',
      itemType: 'product' as const,
      code: 'NEW-001'
    }

    it('should create item successfully', async () => {
      const mockCreatedItem = {
        id: 'item-123',
        ...validItemData,
        tenantId: 'tenant-123',
        createdAt: '2025-09-06T16:03:17.130Z',
        updatedAt: '2025-09-06T16:03:17.130Z'
      }

      mockItemService.createItem.mockResolvedValue(mockCreatedItem)

      const res = await client.items.$post({
        json: validItemData
      })

      expect(res.status).toBe(200)
      
      const data = await res.json()
      expect(data).toEqual({
        success: true,
        data: mockCreatedItem,
        message: 'Item created successfully'
      })

      expect(mockItemService.createItem).toHaveBeenCalledWith({
        tenantId: 'tenant-123',
        ...validItemData
      })
    })

    it('should handle service errors gracefully', async () => {
      mockItemService.createItem.mockRejectedValue(new Error('Validation failed'))

      const res = await client.items.$post({
        json: validItemData
      })

      expect(res.status).toBe(500)
      
      const data = await res.json()
      expect(data).toEqual({
        success: false,
        error: {
          code: 'INTERNAL_ERROR',
          message: 'Failed to create item',
          details: 'Validation failed'
        }
      })
    })

    it('should require authentication', async () => {
      // Mock auth middleware to reject authentication
      mockAuthMiddleware.mockImplementationOnce(async (c: any) => {
        return c.json({
          success: false,
          error: {
            code: 'UNAUTHORIZED',
            message: 'Access token required'
          }
        }, 401)
      })

      const res = await client.items.$post({
        json: validItemData
      })

      expect(res.status).toBe(401)
      
      const data = await res.json()
      expect(data.success).toBe(false)
      expect(data.error.code).toBe('UNAUTHORIZED')
    })

  })

  describe('GET /items/:id', () => {
    it('should return item by ID', async () => {
      const mockItem = {
        id: 'item-123',
        name: 'Test Product',
        code: 'TEST-001',
        tenantId: 'tenant-123',
        itemType: 'product'
      }

      mockItemService.getItemWithDetails.mockResolvedValue(mockItem)

      const res = await client.items['item-123'].$get()

      expect(res.status).toBe(200)
      
      const data = await res.json()
      expect(data).toEqual({
        success: true,
        data: mockItem
      })

      expect(mockItemService.getItemWithDetails).toHaveBeenCalledWith('item-123', 'tenant-123')
    })

    it('should handle service errors gracefully', async () => {
      mockItemService.getItemWithDetails.mockRejectedValue(new Error('Item not found'))

      const res = await client.items['non-existent'].$get()

      expect(res.status).toBe(500)
      
      const data = await res.json()
      expect(data).toEqual({
        success: false,
        error: {
          code: 'INTERNAL_ERROR',
          message: 'Failed to get item details',
          details: 'Item not found'
        }
      })
    })

  })


  describe('DELETE /items/:id', () => {
    it('should delete item successfully', async () => {
      mockItemService.deleteItem.mockResolvedValue(true)

      const res = await client.items['item-123'].$delete()

      expect(res.status).toBe(200)
      
      const data = await res.json()
      expect(data).toEqual({
        success: true,
        message: 'Item deleted successfully'
      })

      expect(mockItemService.deleteItem).toHaveBeenCalledWith('item-123', 'tenant-123')
    })

    it('should return 404 when item not found', async () => {
      mockItemService.deleteItem.mockResolvedValue(false)

      const res = await client.items['non-existent'].$delete()

      expect(res.status).toBe(404)
      
      const data = await res.json()
      expect(data).toEqual({
        success: false,
        error: {
          code: 'NOT_FOUND',
          message: 'Item not found'
        }
      })
    })

    it('should handle service errors gracefully', async () => {
      mockItemService.deleteItem.mockRejectedValue(new Error('Delete failed'))

      const res = await client.items['item-123'].$delete()

      expect(res.status).toBe(500)
      
      const data = await res.json()
      expect(data).toEqual({
        success: false,
        error: {
          code: 'INTERNAL_ERROR',
          message: 'Failed to delete item',
          details: 'Delete failed'
        }
      })
    })
  })

  describe('GET /items/search', () => {
    it('should search items successfully', async () => {
      const mockSearchResults = [
        { id: 'item-1', name: 'Laptop Computer', code: 'COMP-001' },
        { id: 'item-2', name: 'Desktop Computer', code: 'COMP-002' }
      ]

      mockItemService.searchItems.mockResolvedValue(mockSearchResults)

      const res = await client.items.search.$get({
        query: { q: 'computer' }
      })

      expect(res.status).toBe(200)
      
      const data = await res.json()
      expect(data).toEqual({
        success: true,
        data: mockSearchResults
      })

      expect(mockItemService.searchItems).toHaveBeenCalledWith('computer', 'tenant-123', undefined)
    })

    it('should handle empty search query', async () => {
      const res = await client.items.search.$get({
        query: { q: '' }
      })

      expect(res.status).toBe(400)
      
      const data = await res.json()
      expect(data).toEqual({
        success: false,
        error: {
          code: 'BAD_REQUEST',
          message: 'Search query is required'
        }
      })
    })

    it('should handle missing query parameter', async () => {
      const res = await client.items.search.$get()

      expect(res.status).toBe(400)
      
      const data = await res.json()
      expect(data).toEqual({
        success: false,
        error: {
          code: 'BAD_REQUEST',
          message: 'Search query is required'
        }
      })
    })
  })



  describe('error handling', () => {
    it('should handle database connection errors', async () => {
      mockItemService.getItems.mockRejectedValue(new Error('Connection timeout'))

      const res = await client.items.$get()

      expect(res.status).toBe(500)
      
      const data = await res.json()
      expect(data).toEqual({
        success: false,
        error: {
          code: 'INTERNAL_ERROR',
          message: 'Failed to list items',
          details: 'Connection timeout'
        }
      })
    })
  })


})