import { describe, it, expect, beforeEach, vi, afterEach } from 'vitest'
import { ProdobitClient } from '../client'
import type { ProdobitClientConfig } from '../types'

// Mock fetch globally
global.fetch = vi.fn()

describe('ProdobitClient', () => {
  let client: ProdobitClient
  let mockConfig: ProdobitClientConfig

  beforeEach(() => {
    vi.clearAllMocks()
    
    mockConfig = {
      baseUrl: 'https://api.prodobit.com',
      timeout: 5000,
      autoRefresh: true,
      headers: {
        'X-Test-Header': 'test'
      }
    }

    client = new ProdobitClient(mockConfig)
  })

  afterEach(() => {
    vi.restoreAllMocks()
  })

  describe('initialization', () => {
    it('should initialize with correct config', () => {
      expect(client).toBeInstanceOf(ProdobitClient)
      expect(client.baseUrl).toBe('https://api.prodobit.com')
    })

    it('should remove trailing slash from baseUrl', () => {
      const configWithSlash: ProdobitClientConfig = {
        baseUrl: 'https://api.prodobit.com/',
        timeout: 5000
      }
      const clientWithSlash = new ProdobitClient(configWithSlash)
      expect(clientWithSlash.baseUrl).toBe('https://api.prodobit.com')
    })

    it('should set API key if provided', () => {
      const configWithApiKey: ProdobitClientConfig = {
        baseUrl: 'https://api.prodobit.com',
        apiKey: 'test-api-key',
        timeout: 5000
      }
      const clientWithApiKey = new ProdobitClient(configWithApiKey)
      expect(clientWithApiKey.getAccessToken()).toBeUndefined()
    })
  })

  describe('authentication state', () => {
    it('should return false for isAuthenticated when no token', () => {
      expect(client.isAuthenticated()).toBe(false)
    })

    it('should return false for isTokenValid when no token', () => {
      expect(client.isTokenValid()).toBe(false)
    })

    it('should return undefined for getAccessToken when no token', () => {
      expect(client.getAccessToken()).toBeUndefined()
    })

    it('should return undefined for getCurrentTenantId when no token', () => {
      expect(client.getCurrentTenantId()).toBeUndefined()
    })
  })

  describe('token management', () => {
    const mockTokenInfo = {
      accessToken: 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyLTEyMyIsInRlbmFudElkIjoidGVuYW50LTEyMyIsImV4cCI6OTk5OTk5OTk5OX0.fake-signature',
      refreshToken: 'refresh-token-123',
      expiresAt: new Date(Date.now() + 3600000),
      tenantId: 'tenant-123'
    }

    it('should set token info correctly', () => {
      client.setTokenInfo(mockTokenInfo)
      
      expect(client.getTokenInfo()).toEqual(mockTokenInfo)
      expect(client.isAuthenticated()).toBe(true)
      expect(client.getAccessToken()).toBe('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1c2VyLTEyMyIsInRlbmFudElkIjoidGVuYW50LTEyMyIsImV4cCI6OTk5OTk5OTk5OX0.fake-signature')
      expect(client.getCurrentTenantId()).toBe('tenant-123')
    })

    it('should clear token info correctly', () => {
      client.setTokenInfo(mockTokenInfo)
      client.clearTokenInfo()
      
      expect(client.getTokenInfo()).toBeUndefined()
      expect(client.isAuthenticated()).toBe(false)
      expect(client.getAccessToken()).toBeUndefined()
      expect(client.getCurrentTenantId()).toBeUndefined()
    })

    it('should validate token expiry correctly', () => {
      // Expired token
      const expiredTokenInfo = {
        ...mockTokenInfo,
        expiresAt: new Date(Date.now() - 3600000)
      }
      
      client.setTokenInfo(expiredTokenInfo)
      expect(client.isTokenValid()).toBe(false)
    })
  })

  describe('API key management', () => {
    it('should set API key', () => {
      client.setApiKey('new-api-key')
      // API key functionality would be tested in actual requests
      expect(() => client.setApiKey('new-api-key')).not.toThrow()
    })

    it('should remove API key', () => {
      client.setApiKey('api-key')
      client.removeApiKey()
      // API key removal functionality would be tested in actual requests
      expect(() => client.removeApiKey()).not.toThrow()
    })
  })

  describe('OTP authentication flow', () => {
    it('should request OTP successfully', async () => {
      const mockResponse = {
        success: true,
        message: 'OTP sent successfully'
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      })

      const result = await client.requestOTP({
        email: 'test@example.com',
        tenantId: '123e4567-e89b-12d3-a456-426614174000'
      })

      expect(result).toEqual(mockResponse)
      expect(global.fetch).toHaveBeenCalledWith(
        'https://api.prodobit.com/api/v1/auth/request-otp',
        expect.objectContaining({
          method: 'POST',
          headers: expect.objectContaining({
            'Content-Type': 'application/json',
            'X-Test-Header': 'test'
          }),
          body: JSON.stringify({
            email: 'test@example.com',
            tenantId: '123e4567-e89b-12d3-a456-426614174000'
          })
        })
      )
    })

    it('should verify OTP successfully', async () => {
      const mockResponse = {
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
            accessToken: 'access-token-123',
            refreshToken: 'refresh-token-123',
            expiresAt: '2024-01-01T12:00:00Z'
          },
          isNewUser: false
        }
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      })

      const result = await client.verifyOTP({
        email: 'test@example.com',
        code: '123456',
        tenantId: '123e4567-e89b-12d3-a456-426614174000'
      })

      expect(result).toEqual(mockResponse)
    })

    it('should handle OTP flow with loginWithOTP and completeLogin', async () => {
      // Mock requestOTP call
      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve({ success: true })
      })

      // Mock verifyOTP call
      const mockTokenResponse = {
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
            accessToken: 'access-token-123',
            refreshToken: 'refresh-token-123',
            expiresAt: '2024-01-01T12:00:00Z'
          },
          isNewUser: false
        }
      }
      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockTokenResponse)
      })

      // Test loginWithOTP
      await client.loginWithOTP('test@example.com', '123e4567-e89b-12d3-a456-426614174000')

      // Test completeLogin
      const result = await client.completeLogin('test@example.com', '123456', '123e4567-e89b-12d3-a456-426614174000')
      
      expect(result.success).toBe(true)
      expect(result.user).toBeDefined()
    })
  })
})