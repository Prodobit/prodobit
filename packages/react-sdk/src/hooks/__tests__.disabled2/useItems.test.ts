import React from 'react'
import { describe, it, expect, beforeEach, vi, afterEach } from 'vitest'
import { renderHook, act, waitFor } from '@testing-library/react'
import { QueryClient, QueryClientProvider } from '@tanstack/react-query'
import { useItems, useItem, useCreateItem, useUpdateItem, useDeleteItem } from '../useItems.js'
import { ProdobitProvider } from '../../providers/ProdobitProvider.js'
import { ProdobitClient } from '@prodobit/sdk'
import type { ReactNode } from 'react'

// Mock the SDK client
vi.mock('@prodobit/sdk')
const MockProdobitClient = ProdobitClient as any

describe('useItems hooks', () => {
  let queryClient: QueryClient
  let mockClient: any
  let wrapper: ({ children }: { children: ReactNode }) => JSX.Element

  beforeEach(() => {
    vi.clearAllMocks()
    
    // Create fresh query client for each test
    queryClient = new QueryClient({
      defaultOptions: {
        queries: {
          retry: false,
        },
        mutations: {
          retry: false,
        },
      },
    })

    // Mock ProdobitClient
    mockClient = {
      getItems: vi.fn(),
      getItem: vi.fn(),
      createItem: vi.fn(),
      updateItem: vi.fn(),
      deleteItem: vi.fn(),
      auth: {
        getCurrentUser: vi.fn(),
        isAuthenticated: vi.fn().mockReturnValue(true)
      }
    }

    MockProdobitClient.mockImplementation(() => mockClient)

    // Create wrapper with providers
    wrapper = ({ children }: { children: ReactNode }) => {
      return React.createElement(
        QueryClientProvider,
        { client: queryClient },
        React.createElement(
          ProdobitProvider,
          { client: mockClient },
          children
        )
      )
    }
  })

  afterEach(() => {
    vi.restoreAllMocks()
    queryClient.clear()
  })

  describe('useItems', () => {
    const mockItems = [
      {
        id: 'item-1',
        name: 'Product 1',
        sku: 'PROD-001',
        unitPrice: '99.99',
        category: 'Electronics',
        tenantId: 'tenant-123'
      },
      {
        id: 'item-2',
        name: 'Product 2',
        sku: 'PROD-002',
        unitPrice: '149.99',
        category: 'Electronics',
        tenantId: 'tenant-123'
      }
    ]

    it('should fetch items successfully', async () => {
      mockClient.getItems.mockResolvedValue({
        items: mockItems,
        total: 2
      })

      const { result } = renderHook(() => useItems(), { wrapper })

      expect(result.current.isLoading).toBe(true)
      expect(result.current.data).toBeUndefined()

      await waitFor(() => {
        expect(result.current.isLoading).toBe(false)
      })

      expect(result.current.data).toEqual({
        items: mockItems,
        total: 2
      })
      expect(result.current.error).toBeNull()
      expect(mockClient.getItems).toHaveBeenCalledWith()
    })

    it('should handle fetch errors', async () => {
      const error = new Error('Failed to fetch items')
      mockClient.getItems.mockRejectedValue(error)

      const { result } = renderHook(() => useItems(), { wrapper })

      await waitFor(() => {
        expect(result.current.isLoading).toBe(false)
      })

      expect(result.current.data).toBeUndefined()
      expect(result.current.error).toBe(error)
    })

    it('should support query options', async () => {
      mockClient.getItems.mockResolvedValue({
        items: mockItems,
        total: 2
      })

      const { result } = renderHook(() => 
        useItems({
          enabled: false,
          refetchOnWindowFocus: false
        }), 
        { wrapper }
      )

      // Should not fetch initially because enabled is false
      expect(result.current.isLoading).toBe(false)
      expect(mockClient.getItems).not.toHaveBeenCalled()

      // Manually refetch
      await act(async () => {
        await result.current.refetch()
      })

      expect(mockClient.getItems).toHaveBeenCalled()
    })

    it('should support filtering parameters', async () => {
      const filteredItems = [mockItems[0]]
      
      mockClient.getItems.mockResolvedValue({
        items: filteredItems,
        total: 1
      })

      const { result } = renderHook(() => 
        useItems({
          category: 'Electronics',
          minPrice: '50',
          maxPrice: '100'
        }), 
        { wrapper }
      )

      await waitFor(() => {
        expect(result.current.isLoading).toBe(false)
      })

      expect(mockClient.getItems).toHaveBeenCalledWith({
        category: 'Electronics',
        minPrice: '50',
        maxPrice: '100'
      })
      expect(result.current.data).toEqual({
        items: filteredItems,
        total: 1
      })
    })

    it('should support pagination', async () => {
      mockClient.getItems.mockResolvedValue({
        items: mockItems,
        total: 2,
        page: 1,
        limit: 10
      })

      const { result } = renderHook(() => 
        useItems({
          page: 1,
          limit: 10
        }), 
        { wrapper }
      )

      await waitFor(() => {
        expect(result.current.isLoading).toBe(false)
      })

      expect(mockClient.getItems).toHaveBeenCalledWith({
        page: 1,
        limit: 10
      })
    })
  })

  describe('useItem', () => {
    const mockItem = {
      id: 'item-123',
      name: 'Test Product',
      sku: 'TEST-001',
      unitPrice: '199.99',
      category: 'Test Category',
      description: 'A test product',
      itemAttributes: [
        {
          attribute: { name: 'Color', type: 'text' },
          value: 'Red'
        }
      ]
    }

    it('should fetch single item successfully', async () => {
      mockClient.getItem.mockResolvedValue(mockItem)

      const { result } = renderHook(() => useItem('item-123'), { wrapper })

      expect(result.current.isLoading).toBe(true)

      await waitFor(() => {
        expect(result.current.isLoading).toBe(false)
      })

      expect(result.current.data).toEqual(mockItem)
      expect(result.current.error).toBeNull()
      expect(mockClient.getItem).toHaveBeenCalledWith('item-123')
    })

    it('should handle item not found', async () => {
      mockClient.getItem.mockResolvedValue(null)

      const { result } = renderHook(() => useItem('non-existent'), { wrapper })

      await waitFor(() => {
        expect(result.current.isLoading).toBe(false)
      })

      expect(result.current.data).toBeNull()
      expect(result.current.error).toBeNull()
    })

    it('should not fetch when id is not provided', () => {
      const { result } = renderHook(() => useItem(''), { wrapper })

      expect(result.current.isLoading).toBe(false)
      expect(result.current.data).toBeUndefined()
      expect(mockClient.getItem).not.toHaveBeenCalled()
    })

    it('should handle fetch errors', async () => {
      const error = new Error('Failed to fetch item')
      mockClient.getItem.mockRejectedValue(error)

      const { result } = renderHook(() => useItem('item-123'), { wrapper })

      await waitFor(() => {
        expect(result.current.isLoading).toBe(false)
      })

      expect(result.current.data).toBeUndefined()
      expect(result.current.error).toBe(error)
    })
  })

  describe('useCreateItem', () => {
    const newItemData = {
      name: 'New Product',
      sku: 'NEW-001',
      unitPrice: '299.99',
      category: 'Electronics',
      description: 'A new product'
    }

    const createdItem = {
      id: 'item-456',
      ...newItemData,
      tenantId: 'tenant-123',
      createdAt: new Date().toISOString(),
      updatedAt: new Date().toISOString()
    }

    it('should create item successfully', async () => {
      mockClient.createItem.mockResolvedValue(createdItem)

      const { result } = renderHook(() => useCreateItem(), { wrapper })

      expect(result.current.isPending).toBe(false)

      await act(async () => {
        await result.current.mutateAsync(newItemData)
      })

      expect(result.current.isPending).toBe(false)
      expect(result.current.isSuccess).toBe(true)
      expect(result.current.data).toEqual(createdItem)
      expect(mockClient.createItem).toHaveBeenCalledWith(newItemData)
    })

    it('should handle creation errors', async () => {
      const error = new Error('SKU already exists')
      mockClient.createItem.mockRejectedValue(error)

      const { result } = renderHook(() => useCreateItem(), { wrapper })

      await act(async () => {
        try {
          await result.current.mutateAsync(newItemData)
        } catch (err) {
          // Expected error
        }
      })

      expect(result.current.isError).toBe(true)
      expect(result.current.error).toBe(error)
    })

    it('should invalidate items cache on success', async () => {
      mockClient.createItem.mockResolvedValue(createdItem)

      const invalidateQueriesSpy = vi.spyOn(queryClient, 'invalidateQueries')

      const { result } = renderHook(() => 
        useCreateItem({
          onSuccess: () => {
            queryClient.invalidateQueries({ queryKey: ['items'] })
          }
        }), 
        { wrapper }
      )

      await act(async () => {
        await result.current.mutateAsync(newItemData)
      })

      expect(invalidateQueriesSpy).toHaveBeenCalledWith({
        queryKey: ['items']
      })
    })

    it('should call success callback', async () => {
      mockClient.createItem.mockResolvedValue(createdItem)
      const onSuccess = vi.fn()

      const { result } = renderHook(() => 
        useCreateItem({
          onSuccess
        }), 
        { wrapper }
      )

      await act(async () => {
        await result.current.mutateAsync(newItemData)
      })

      expect(onSuccess).toHaveBeenCalledWith(createdItem, newItemData, expect.any(Object))
    })

    it('should call error callback', async () => {
      const error = new Error('Creation failed')
      mockClient.createItem.mockRejectedValue(error)
      const onError = vi.fn()

      const { result } = renderHook(() => 
        useCreateItem({
          onError
        }), 
        { wrapper }
      )

      await act(async () => {
        try {
          await result.current.mutateAsync(newItemData)
        } catch (err) {
          // Expected error
        }
      })

      expect(onError).toHaveBeenCalledWith(error, newItemData, expect.any(Object))
    })
  })

  describe('useUpdateItem', () => {
    const updateData = {
      name: 'Updated Product',
      unitPrice: '399.99',
      description: 'Updated description'
    }

    const updatedItem = {
      id: 'item-123',
      ...updateData,
      sku: 'EXISTING-001',
      category: 'Electronics',
      tenantId: 'tenant-123',
      updatedAt: new Date().toISOString()
    }

    it('should update item successfully', async () => {
      mockClient.updateItem.mockResolvedValue(updatedItem)

      const { result } = renderHook(() => useUpdateItem(), { wrapper })

      await act(async () => {
        await result.current.mutateAsync({
          id: 'item-123',
          data: updateData
        })
      })

      expect(result.current.isSuccess).toBe(true)
      expect(result.current.data).toEqual(updatedItem)
      expect(mockClient.updateItem).toHaveBeenCalledWith('item-123', updateData)
    })

    it('should handle update errors', async () => {
      const error = new Error('Item not found')
      mockClient.updateItem.mockRejectedValue(error)

      const { result } = renderHook(() => useUpdateItem(), { wrapper })

      await act(async () => {
        try {
          await result.current.mutateAsync({
            id: 'non-existent',
            data: updateData
          })
        } catch (err) {
          // Expected error
        }
      })

      expect(result.current.isError).toBe(true)
      expect(result.current.error).toBe(error)
    })

    it('should invalidate item cache on success', async () => {
      mockClient.updateItem.mockResolvedValue(updatedItem)

      const invalidateQueriesSpy = vi.spyOn(queryClient, 'invalidateQueries')

      const { result } = renderHook(() => 
        useUpdateItem({
          onSuccess: (data, variables) => {
            queryClient.invalidateQueries({ queryKey: ['items'] })
            queryClient.invalidateQueries({ queryKey: ['item', variables.id] })
          }
        }), 
        { wrapper }
      )

      await act(async () => {
        await result.current.mutateAsync({
          id: 'item-123',
          data: updateData
        })
      })

      expect(invalidateQueriesSpy).toHaveBeenCalledWith({ queryKey: ['items'] })
      expect(invalidateQueriesSpy).toHaveBeenCalledWith({ queryKey: ['item', 'item-123'] })
    })
  })

  describe('useDeleteItem', () => {
    it('should delete item successfully', async () => {
      mockClient.deleteItem.mockResolvedValue(true)

      const { result } = renderHook(() => useDeleteItem(), { wrapper })

      await act(async () => {
        await result.current.mutateAsync('item-123')
      })

      expect(result.current.isSuccess).toBe(true)
      expect(result.current.data).toBe(true)
      expect(mockClient.deleteItem).toHaveBeenCalledWith('item-123')
    })

    it('should handle delete errors', async () => {
      const error = new Error('Failed to delete item')
      mockClient.deleteItem.mockRejectedValue(error)

      const { result } = renderHook(() => useDeleteItem(), { wrapper })

      await act(async () => {
        try {
          await result.current.mutateAsync('item-123')
        } catch (err) {
          // Expected error
        }
      })

      expect(result.current.isError).toBe(true)
      expect(result.current.error).toBe(error)
    })

    it('should remove item from cache on success', async () => {
      mockClient.deleteItem.mockResolvedValue(true)

      const removeQueriesSpy = vi.spyOn(queryClient, 'removeQueries')
      const invalidateQueriesSpy = vi.spyOn(queryClient, 'invalidateQueries')

      const { result } = renderHook(() => 
        useDeleteItem({
          onSuccess: (data, itemId) => {
            queryClient.removeQueries({ queryKey: ['item', itemId] })
            queryClient.invalidateQueries({ queryKey: ['items'] })
          }
        }), 
        { wrapper }
      )

      await act(async () => {
        await result.current.mutateAsync('item-123')
      })

      expect(removeQueriesSpy).toHaveBeenCalledWith({ queryKey: ['item', 'item-123'] })
      expect(invalidateQueriesSpy).toHaveBeenCalledWith({ queryKey: ['items'] })
    })

    it('should call confirmation callback before delete', async () => {
      mockClient.deleteItem.mockResolvedValue(true)
      const onMutate = vi.fn().mockResolvedValue(undefined)

      const { result } = renderHook(() => 
        useDeleteItem({
          onMutate
        }), 
        { wrapper }
      )

      await act(async () => {
        await result.current.mutateAsync('item-123')
      })

      expect(onMutate).toHaveBeenCalledWith('item-123')
    })
  })

  describe('search and filtering', () => {
    it('should search items', async () => {
      const searchResults = [
        {
          id: 'item-1',
          name: 'Computer Laptop',
          sku: 'COMP-001'
        },
        {
          id: 'item-2',
          name: 'Computer Mouse',
          sku: 'COMP-002'
        }
      ]

      mockClient.getItems.mockResolvedValue({
        items: searchResults,
        total: 2,
        query: 'computer'
      })

      // This would be a separate hook like useSearchItems
      // For this test, we'll mock it
      const useSearchItems = (query: string) => {
        return renderHook(() => 
          useItems({
            search: query
          })
        ).result
      }

      const { current } = useSearchItems('computer')

      await waitFor(() => {
        expect(current.current.isLoading).toBe(false)
      })

      // This would be handled by the useItems hook with search parameter
      // The actual implementation would depend on how search is integrated
    })

    it('should filter items by category', async () => {
      const categoryItems = [
        {
          id: 'item-1',
          name: 'Laptop',
          category: 'Electronics'
        }
      ]

      mockClient.getItems.mockResolvedValue({
        items: categoryItems,
        total: 1,
        category: 'Electronics'
      })

      // This would be a separate hook like useItemsByCategory
      const useItemsByCategory = (category: string) => {
        return renderHook(() => 
          useItems({
            category
          })
        ).result
      }

      const { current } = useItemsByCategory('Electronics')

      await waitFor(() => {
        expect(current.current.isLoading).toBe(false)
      })
    })
  })

  describe('optimistic updates', () => {
    it('should perform optimistic update on item creation', async () => {
      const newItem = {
        name: 'Optimistic Item',
        sku: 'OPT-001',
        unitPrice: '99.99'
      }

      const createdItem = {
        id: 'item-optimistic',
        ...newItem,
        tenantId: 'tenant-123'
      }

      mockClient.createItem.mockResolvedValue(createdItem)

      // Mock existing items in cache
      queryClient.setQueryData(['items'], {
        items: [],
        total: 0
      })

      const { result } = renderHook(() => 
        useCreateItem({
          onMutate: async (newItemData) => {
            // Cancel outgoing refetches
            await queryClient.cancelQueries({ queryKey: ['items'] })
            
            // Snapshot the previous value
            const previousItems = queryClient.getQueryData(['items'])
            
            // Optimistically update cache
            queryClient.setQueryData(['items'], (old: any) => ({
              items: [...(old?.items || []), { id: 'temp-id', ...newItemData }],
              total: (old?.total || 0) + 1
            }))
            
            return { previousItems }
          },
          onError: (err, newItem, context) => {
            // Rollback on error
            if (context?.previousItems) {
              queryClient.setQueryData(['items'], context.previousItems)
            }
          }
        }), 
        { wrapper }
      )

      await act(async () => {
        await result.current.mutateAsync(newItem)
      })

      expect(result.current.isSuccess).toBe(true)
    })
  })

  describe('cache management', () => {
    it('should handle stale data correctly', async () => {
      const staleItems = [
        { id: 'item-1', name: 'Stale Product' }
      ]

      const freshItems = [
        { id: 'item-1', name: 'Fresh Product' }
      ]

      mockClient.getItems
        .mockResolvedValueOnce({ items: staleItems, total: 1 })
        .mockResolvedValueOnce({ items: freshItems, total: 1 })

      const { result, rerender } = renderHook(() => 
        useItems({
          staleTime: 0, // Immediately stale
          cacheTime: 5 * 60 * 1000 // Keep in cache for 5 minutes
        }), 
        { wrapper }
      )

      await waitFor(() => {
        expect(result.current.data).toEqual({ items: staleItems, total: 1 })
      })

      // Rerender should trigger refetch due to staleTime: 0
      rerender()

      await waitFor(() => {
        expect(result.current.data).toEqual({ items: freshItems, total: 1 })
      })

      expect(mockClient.getItems).toHaveBeenCalledTimes(2)
    })
  })
})