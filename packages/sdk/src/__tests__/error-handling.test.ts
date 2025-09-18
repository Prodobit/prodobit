import { describe, it, expect, beforeEach, vi, afterEach } from 'vitest'
import { ProdobitClient } from '../client'
import { ProdobitError } from '../types'
import type { ProdobitClientConfig } from '../types'

// Mock fetch globally
global.fetch = vi.fn()

describe('ProdobitClient - Error Handling', () => {
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
  })

  afterEach(() => {
    vi.restoreAllMocks()
  })

  describe('HTTP status code error handling', () => {
    it('should handle 400 Bad Request', async () => {
      const mockErrorResponse = {
        error: {
          code: 'BAD_REQUEST',
          message: 'Invalid request parameters',
          details: { field: 'email', issue: 'invalid format' }
        }
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: false,
        status: 400,
        json: () => Promise.resolve(mockErrorResponse)
      })

      await expect(client.requestOTP({
        email: 'invalid-email',
        tenantId: '123e4567-e89b-12d3-a456-426614174000'
      })).rejects.toThrow(ProdobitError)
    })

    it('should handle 401 Unauthorized', async () => {
      const mockErrorResponse = {
        error: {
          code: 'UNAUTHORIZED',
          message: 'Invalid or expired token'
        }
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: false,
        status: 401,
        json: () => Promise.resolve(mockErrorResponse)
      })

      try {
        await client.getCurrentUser()
      } catch (error) {
        expect(error).toBeInstanceOf(ProdobitError)
        expect((error as ProdobitError).status).toBe(401)
        expect((error as ProdobitError).message).toBe('Invalid or expired token')
      }
    })

    it('should handle 403 Forbidden', async () => {
      const mockErrorResponse = {
        error: {
          code: 'FORBIDDEN',
          message: 'Insufficient permissions'
        }
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: false,
        status: 403,
        json: () => Promise.resolve(mockErrorResponse)
      })

      try {
        await client.getItems()
      } catch (error) {
        expect(error).toBeInstanceOf(ProdobitError)
        expect((error as ProdobitError).status).toBe(403)
        expect((error as ProdobitError).message).toBe('Insufficient permissions')
      }
    })

    it('should handle 404 Not Found', async () => {
      ;(global.fetch as any).mockResolvedValueOnce({
        ok: false,
        status: 404,
        json: () => Promise.resolve({})
      })

      try {
        await client.getItem('nonexistent-item')
      } catch (error) {
        expect(error).toBeInstanceOf(ProdobitError)
        expect((error as ProdobitError).status).toBe(404)
        expect((error as ProdobitError).message).toBe('Resource not found')
      }
    })

    it('should handle 409 Conflict', async () => {
      const mockErrorResponse = {
        error: {
          code: 'CONFLICT',
          message: 'Resource already exists',
          details: { field: 'code', value: 'DUPLICATE-001' }
        }
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: false,
        status: 409,
        json: () => Promise.resolve(mockErrorResponse)
      })

      try {
        await client.createItem({
          name: 'Duplicate Item',
          code: 'DUPLICATE-001',
          itemType: 'product'
        })
      } catch (error) {
        expect(error).toBeInstanceOf(ProdobitError)
        expect((error as ProdobitError).status).toBe(409)
        expect((error as ProdobitError).message).toBe('Resource already exists')
        expect((error as ProdobitError).details).toEqual({ field: 'code', value: 'DUPLICATE-001' })
      }
    })

    it('should handle 422 Validation Error', async () => {
      const mockErrorResponse = {
        error: {
          code: 'VALIDATION_ERROR',
          message: 'Validation failed',
          details: {
            name: ['Name is required'],
            email: ['Email format is invalid']
          }
        }
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: false,
        status: 422,
        json: () => Promise.resolve(mockErrorResponse)
      })

      try {
        await client.createItem({
          name: '',
          itemType: 'product'
        })
      } catch (error) {
        expect(error).toBeInstanceOf(ProdobitError)
        expect((error as ProdobitError).status).toBe(422)
        expect((error as ProdobitError).message).toBe('Validation failed')
        expect((error as ProdobitError).details).toEqual({
          name: ['Name is required'],
          email: ['Email format is invalid']
        })
      }
    })

    it('should handle 500 Internal Server Error', async () => {
      const mockErrorResponse = {
        error: {
          code: 'INTERNAL_ERROR',
          message: 'Internal server error occurred',
          details: { trace: 'stack-trace-here' }
        }
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: false,
        status: 500,
        json: () => Promise.resolve(mockErrorResponse)
      })

      try {
        await client.getItems()
      } catch (error) {
        expect(error).toBeInstanceOf(ProdobitError)
        expect((error as ProdobitError).status).toBe(500)
        expect((error as ProdobitError).message).toBe('Internal server error occurred')
      }
    })
  })

  describe('network and timeout errors', () => {
    it('should handle network timeout', async () => {
      const timeoutClient = new ProdobitClient({
        baseUrl: 'https://api.prodobit.com',
        timeout: 100 // Very short timeout
      })

      // Mock a slow response
      ;(global.fetch as any).mockImplementationOnce(() =>
        new Promise((resolve) => setTimeout(resolve, 200))
      )

      try {
        await timeoutClient.getItems()
      } catch (error) {
        // Should throw due to timeout
        expect(error).toBeDefined()
      }
    })

    it('should handle network failure', async () => {
      ;(global.fetch as any).mockRejectedValueOnce(new Error('Network error'))

      await expect(client.getItems()).rejects.toThrow('Network error')
    })

    it('should handle malformed JSON response', async () => {
      ;(global.fetch as any).mockResolvedValueOnce({
        ok: false,
        status: 500,
        json: () => Promise.reject(new Error('Invalid JSON'))
      })

      try {
        await client.getItems()
      } catch (error) {
        expect(error).toBeInstanceOf(ProdobitError)
        expect((error as ProdobitError).status).toBe(500)
      }
    })
  })

  describe('auto-refresh on 401', () => {
    it('should attempt token refresh on 401', async () => {
      // Set up client with token
      const mockTokenInfo = {
        accessToken: 'old-access-token',
        expiresAt: new Date(Date.now() + 3600000),
        csrfToken: 'csrf-token-123',
        tenantId: '123e4567-e89b-12d3-a456-426614174000'
      }
      client.setTokenInfo(mockTokenInfo)

      // First call returns 401
      ;(global.fetch as any).mockResolvedValueOnce({
        ok: false,
        status: 401,
        json: () => Promise.resolve({ error: { message: 'Unauthorized' } })
      })

      // Refresh token call succeeds
      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve({
          success: true,
          data: {
            user: {
              id: 'user-123',
              displayName: 'Test User',
              twoFactorEnabled: false,
              status: 'active',
              insertedAt: '2024-01-01T00:00:00Z',
              updatedAt: '2024-01-01T00:00:00Z'
            },
            session: {
              accessToken: 'new-access-token',
              refreshToken: 'new-refresh-token',
              expiresAt: new Date(Date.now() + 3600000).toISOString()
            },
            isNewUser: false
          }
        })
      })

      // Retry call succeeds
      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve({
          success: true,
          data: []
        })
      })

      const result = await client.getItems()

      expect(result).toEqual({
        success: true,
        data: []
      })
      expect(global.fetch).toHaveBeenCalledTimes(3) // Initial call + refresh + retry
    })

    it('should not retry if autoRefresh is disabled', async () => {
      const clientNoRefresh = new ProdobitClient({
        baseUrl: 'https://api.prodobit.com',
        autoRefresh: false
      })

      const mockTokenInfo = {
        accessToken: 'access-token-123',
        expiresAt: new Date(Date.now() + 3600000),
        csrfToken: 'csrf-token-123',
        tenantId: '123e4567-e89b-12d3-a456-426614174000'
      }
      clientNoRefresh.setTokenInfo(mockTokenInfo)

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: false,
        status: 401,
        json: () => Promise.resolve({ error: { message: 'Unauthorized' } })
      })

      try {
        await clientNoRefresh.getItems()
      } catch (error) {
        expect(error).toBeInstanceOf(ProdobitError)
        expect((error as ProdobitError).status).toBe(401)
      }

      expect(global.fetch).toHaveBeenCalledTimes(1) // Only initial call, no refresh
    })
  })

  describe('ProdobitError factory methods', () => {
    it('should create badRequest error', () => {
      const error = ProdobitError.badRequest('Invalid data', { field: 'email' })
      
      expect(error).toBeInstanceOf(ProdobitError)
      expect(error.status).toBe(400)
      expect(error.message).toBe('Invalid data')
      expect(error.details).toEqual({ field: 'email' })
    })

    it('should create unauthorized error', () => {
      const error = ProdobitError.unauthorized('Token expired')
      
      expect(error).toBeInstanceOf(ProdobitError)
      expect(error.status).toBe(401)
      expect(error.message).toBe('Token expired')
    })

    it('should create forbidden error', () => {
      const error = ProdobitError.forbidden('Access denied')
      
      expect(error).toBeInstanceOf(ProdobitError)
      expect(error.status).toBe(403)
      expect(error.message).toBe('Access denied')
    })

    it('should create notFound error', () => {
      const error = ProdobitError.notFound('User')
      
      expect(error).toBeInstanceOf(ProdobitError)
      expect(error.status).toBe(404)
      expect(error.message).toBe('User not found')
    })

    it('should create conflict error', () => {
      const error = ProdobitError.conflict('Duplicate entry', { code: 'DUPLICATE' })
      
      expect(error).toBeInstanceOf(ProdobitError)
      expect(error.status).toBe(409)
      expect(error.message).toBe('Duplicate entry')
      expect(error.details).toEqual({ code: 'DUPLICATE' })
    })

    it('should create validationError', () => {
      const error = ProdobitError.validationError('Validation failed', {
        name: ['Required'],
        email: ['Invalid format']
      })
      
      expect(error).toBeInstanceOf(ProdobitError)
      expect(error.status).toBe(422)
      expect(error.message).toBe('Validation failed')
      expect(error.details).toEqual({
        name: ['Required'],
        email: ['Invalid format']
      })
    })

    it('should create serverError', () => {
      const error = ProdobitError.serverError('Server crashed', { trace: 'stack' })
      
      expect(error).toBeInstanceOf(ProdobitError)
      expect(error.status).toBe(500)
      expect(error.message).toBe('Server crashed')
      expect(error.details).toEqual({ trace: 'stack' })
    })
  })
})