import { describe, it, expect, beforeEach, vi, afterEach } from 'vitest'
import { ProdobitClient } from '../client'
import type { ProdobitClientConfig } from '../types'
import { ProdobitError } from '../types'

// Mock fetch globally
global.fetch = vi.fn()

describe('ProdobitClient - Items Management', () => {
  let client: ProdobitClient
  let mockConfig: ProdobitClientConfig

  beforeEach(() => {
    vi.clearAllMocks()
    
    mockConfig = {
      baseUrl: 'https://api.prodobit.com',
      timeout: 5000,
      autoRefresh: true
    }

    client = new ProdobitClient(mockConfig)

    // Set up authentication
    const mockTokenInfo = {
      accessToken: 'access-token-123',
      expiresAt: new Date(Date.now() + 3600000),
      csrfToken: 'csrf-token-123',
      tenantId: '123e4567-e89b-12d3-a456-426614174000'
    }
    client.setTokenInfo(mockTokenInfo)
  })

  afterEach(() => {
    vi.restoreAllMocks()
  })

  describe('getItems', () => {
    it('should get items successfully without filters', async () => {
      const mockResponse = {
        success: true,
        data: [
          {
            id: 'item-1',
            name: 'Product 1',
            code: 'PROD-001',
            itemType: 'product',
            tenantId: '123e4567-e89b-12d3-a456-426614174000'
          },
          {
            id: 'item-2', 
            name: 'Service 1',
            code: 'SERV-001',
            itemType: 'service',
            tenantId: '123e4567-e89b-12d3-a456-426614174000'
          }
        ]
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      })

      const result = await client.getItems()

      expect(result).toEqual(mockResponse)
      expect(global.fetch).toHaveBeenCalledWith(
        'https://api.prodobit.com/api/v1/items',
        expect.objectContaining({
          method: 'GET',
          headers: expect.objectContaining({
            'Authorization': 'Bearer access-token-123'
          })
        })
      )
    })

    it('should get items with filters and pagination', async () => {
      const mockResponse = {
        success: true,
        data: [
          {
            id: 'item-1',
            name: 'Product 1',
            itemType: 'product'
          }
        ],
        pagination: {
          page: 1,
          limit: 10,
          total: 1
        }
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      })

      const result = await client.getItems({
        type: 'product',
        status: 'active',
        page: 1,
        limit: 10
      })

      expect(result).toEqual(mockResponse)
      expect(global.fetch).toHaveBeenCalledWith(
        'https://api.prodobit.com/api/v1/items?type=product&status=active&page=1&limit=10',
        expect.objectContaining({
          method: 'GET'
        })
      )
    })
  })

  describe('getItem', () => {
    it('should get item by ID successfully', async () => {
      const mockResponse = {
        success: true,
        data: {
          id: 'item-123',
          name: 'Test Product',
          code: 'TEST-001',
          itemType: 'product',
          description: 'A test product'
        }
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      })

      const result = await client.getItem('item-123')

      expect(result).toEqual(mockResponse)
      expect(global.fetch).toHaveBeenCalledWith(
        'https://api.prodobit.com/api/v1/items/item-123',
        expect.objectContaining({
          method: 'GET'
        })
      )
    })

    it('should handle item not found', async () => {
      ;(global.fetch as any).mockResolvedValueOnce({
        ok: false,
        status: 404,
        json: () => Promise.resolve({
          error: { message: 'Item not found' }
        })
      })

      await expect(client.getItem('nonexistent-item')).rejects.toThrow(ProdobitError)
    })
  })

  describe('createItem', () => {
    it('should create item successfully', async () => {
      const itemData = {
        name: 'New Product',
        code: 'NEW-001',
        itemType: 'product' as const,
        description: 'A new product',
        isInventoryItem: true,
        isStockItem: true
      }

      const mockResponse = {
        success: true,
        data: {
          id: 'item-new',
          ...itemData,
          tenantId: '123e4567-e89b-12d3-a456-426614174000',
          createdAt: '2024-01-01T00:00:00Z'
        }
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      })

      const result = await client.createItem(itemData)

      expect(result).toEqual(mockResponse)
      expect(global.fetch).toHaveBeenCalledWith(
        'https://api.prodobit.com/api/v1/items',
        expect.objectContaining({
          method: 'POST',
          body: JSON.stringify(itemData)
        })
      )
    })

    it('should handle validation errors', async () => {
      const mockErrorResponse = {
        error: {
          code: 'VALIDATION_ERROR',
          message: 'Invalid item data',
          details: {
            name: 'Name is required'
          }
        }
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: false,
        status: 422,
        json: () => Promise.resolve(mockErrorResponse)
      })

      await expect(client.createItem({
        name: '',
        itemType: 'product' as const
      })).rejects.toThrow(ProdobitError)
    })
  })

  describe('specialized create methods', () => {
    it('should create product', async () => {
      const productData = {
        name: 'New Product',
        code: 'PROD-001',
        itemType: 'product' as const
      }

      const mockResponse = {
        success: true,
        data: { id: 'product-1', ...productData }
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      })

      const result = await client.createProduct(productData)

      expect(result).toEqual(mockResponse)
      expect(global.fetch).toHaveBeenCalledWith(
        'https://api.prodobit.com/api/v1/items/products',
        expect.objectContaining({
          method: 'POST'
        })
      )
    })

    it('should create service', async () => {
      const serviceData = {
        name: 'Consulting Service',
        code: 'SERV-001',
        itemType: 'service' as const
      }

      const mockResponse = {
        success: true,
        data: { id: 'service-1', ...serviceData }
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      })

      const result = await client.createService(serviceData)

      expect(result).toEqual(mockResponse)
      expect(global.fetch).toHaveBeenCalledWith(
        'https://api.prodobit.com/api/v1/items/services',
        expect.objectContaining({
          method: 'POST'
        })
      )
    })

    it('should create raw material', async () => {
      const rawMaterialData = {
        name: 'Steel Sheet',
        code: 'RM-001',
        itemType: 'raw_material' as const
      }

      const mockResponse = {
        success: true,
        data: { id: 'raw-material-1', ...rawMaterialData }
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      })

      const result = await client.createRawMaterial(rawMaterialData)

      expect(result).toEqual(mockResponse)
      expect(global.fetch).toHaveBeenCalledWith(
        'https://api.prodobit.com/api/v1/items/raw-materials',
        expect.objectContaining({
          method: 'POST'
        })
      )
    })

    it('should create component', async () => {
      const componentData = {
        name: 'Screw M6',
        code: 'COMP-001',
        itemType: 'component' as const
      }

      const mockResponse = {
        success: true,
        data: { id: 'component-1', ...componentData }
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      })

      const result = await client.createComponent(componentData)

      expect(result).toEqual(mockResponse)
      expect(global.fetch).toHaveBeenCalledWith(
        'https://api.prodobit.com/api/v1/items/components',
        expect.objectContaining({
          method: 'POST'
        })
      )
    })
  })

  describe('get specialized items', () => {
    it('should get products', async () => {
      const mockResponse = {
        success: true,
        data: [
          { id: 'prod-1', name: 'Product 1', itemType: 'product' },
          { id: 'prod-2', name: 'Product 2', itemType: 'product' }
        ]
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      })

      const result = await client.getProducts()

      expect(result).toEqual(mockResponse)
      expect(global.fetch).toHaveBeenCalledWith(
        'https://api.prodobit.com/api/v1/items/products',
        expect.objectContaining({
          method: 'GET'
        })
      )
    })

    it('should get services', async () => {
      const mockResponse = {
        success: true,
        data: [
          { id: 'serv-1', name: 'Service 1', itemType: 'service' }
        ]
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      })

      const result = await client.getServices()

      expect(result).toEqual(mockResponse)
    })

    it('should get raw materials', async () => {
      const mockResponse = {
        success: true,
        data: [
          { id: 'rm-1', name: 'Raw Material 1', itemType: 'raw_material' }
        ]
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      })

      const result = await client.getRawMaterials()

      expect(result).toEqual(mockResponse)
    })

    it('should get components', async () => {
      const mockResponse = {
        success: true,
        data: [
          { id: 'comp-1', name: 'Component 1', itemType: 'component' }
        ]
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      })

      const result = await client.getComponents()

      expect(result).toEqual(mockResponse)
    })
  })

  describe('searchItems', () => {
    it('should search items successfully', async () => {
      const mockResponse = {
        success: true,
        data: [
          { id: 'item-1', name: 'Computer Laptop', code: 'COMP-001' },
          { id: 'item-2', name: 'Desktop Computer', code: 'COMP-002' }
        ]
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      })

      const result = await client.searchItems('computer')

      expect(result).toEqual(mockResponse)
      expect(global.fetch).toHaveBeenCalledWith(
        'https://api.prodobit.com/api/v1/items/search?q=computer',
        expect.objectContaining({
          method: 'GET'
        })
      )
    })

    it('should search items with filters', async () => {
      const mockResponse = {
        success: true,
        data: [
          { id: 'item-1', name: 'Computer Laptop', itemType: 'product' }
        ]
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      })

      const result = await client.searchItems('computer', { itemType: 'product' })

      expect(result).toEqual(mockResponse)
      expect(global.fetch).toHaveBeenCalledWith(
        'https://api.prodobit.com/api/v1/items/search?q=computer&itemType=product',
        expect.objectContaining({
          method: 'GET'
        })
      )
    })
  })

  describe('deleteItem', () => {
    it('should delete item successfully', async () => {
      const mockResponse = {
        success: true,
        message: 'Item deleted successfully'
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      })

      const result = await client.deleteItem('item-123')

      expect(result).toEqual(mockResponse)
      expect(global.fetch).toHaveBeenCalledWith(
        'https://api.prodobit.com/api/v1/items/item-123',
        expect.objectContaining({
          method: 'DELETE'
        })
      )
    })

    it('should handle delete item not found', async () => {
      ;(global.fetch as any).mockResolvedValueOnce({
        ok: false,
        status: 404,
        json: () => Promise.resolve({
          error: { message: 'Item not found' }
        })
      })

      await expect(client.deleteItem('nonexistent')).rejects.toThrow(ProdobitError)
    })
  })

  describe('item categories', () => {
    it('should get item categories', async () => {
      const mockResponse = {
        success: true,
        data: [
          { id: 'cat-1', name: 'Electronics', itemType: 'product' },
          { id: 'cat-2', name: 'Office Supplies', itemType: 'product' }
        ]
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      })

      const result = await client.getItemCategories()

      expect(result).toEqual(mockResponse)
      expect(global.fetch).toHaveBeenCalledWith(
        'https://api.prodobit.com/api/v1/items/categories',
        expect.objectContaining({
          method: 'GET'
        })
      )
    })

    it('should get item categories by item type', async () => {
      const mockResponse = {
        success: true,
        data: [
          { id: 'cat-1', name: 'Electronics', itemType: 'product' }
        ]
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      })

      const result = await client.getItemCategories('product')

      expect(result).toEqual(mockResponse)
      expect(global.fetch).toHaveBeenCalledWith(
        'https://api.prodobit.com/api/v1/items/categories?itemType=product',
        expect.objectContaining({
          method: 'GET'
        })
      )
    })

    it('should create item category', async () => {
      const categoryData = {
        name: 'New Category',
        itemType: 'product' as const,
        description: 'A new category for products'
      }

      const mockResponse = {
        success: true,
        data: {
          id: 'cat-new',
          ...categoryData,
          tenantId: '123e4567-e89b-12d3-a456-426614174000'
        }
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      })

      const result = await client.createItemCategory(categoryData)

      expect(result).toEqual(mockResponse)
      expect(global.fetch).toHaveBeenCalledWith(
        'https://api.prodobit.com/api/v1/items/categories',
        expect.objectContaining({
          method: 'POST',
          body: JSON.stringify(categoryData)
        })
      )
    })
  })
})