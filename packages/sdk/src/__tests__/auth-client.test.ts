import { describe, it, expect, beforeEach, vi, afterEach } from 'vitest'
import { AuthClient } from '../modules/auth-client'
import type { ProdobitClientConfig } from '../types'
import { ProdobitError } from '../types'

// Mock fetch globally
global.fetch = vi.fn()

describe('AuthClient', () => {
  let authClient: AuthClient
  let mockConfig: ProdobitClientConfig

  beforeEach(() => {
    vi.clearAllMocks()
    
    mockConfig = {
      baseUrl: 'https://api.prodobit.com',
      timeout: 5000,
      autoRefresh: true
    }

    authClient = new AuthClient(mockConfig)
  })

  afterEach(() => {
    vi.restoreAllMocks()
  })

  describe('requestOTP', () => {
    it('should send OTP request successfully', async () => {
      const mockResponse = {
        success: true,
        message: 'OTP sent to email'
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      })

      const result = await authClient.requestOTP({
        email: 'test@example.com',
        tenantId: '123e4567-e89b-12d3-a456-426614174000'
      })

      expect(result).toEqual(mockResponse)
      expect(global.fetch).toHaveBeenCalledWith(
        'https://api.prodobit.com/api/v1/auth/request-otp',
        expect.objectContaining({
          method: 'POST',
          headers: expect.objectContaining({
            'Content-Type': 'application/json'
          }),
          body: JSON.stringify({
            email: 'test@example.com',
            tenantId: '123e4567-e89b-12d3-a456-426614174000'
          })
        })
      )
    })

    it('should handle validation errors', async () => {
      await expect(authClient.requestOTP({
        email: 'invalid-email',
        tenantId: '123e4567-e89b-12d3-a456-426614174000'
      })).rejects.toThrow()
    })

    it('should handle API errors', async () => {
      const mockErrorResponse = {
        error: {
          code: 'VALIDATION_ERROR',
          message: 'Invalid email format'
        }
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: false,
        status: 400,
        json: () => Promise.resolve(mockErrorResponse)
      })

      await expect(authClient.requestOTP({
        email: 'test@example.com',
        tenantId: '123e4567-e89b-12d3-a456-426614174000'
      })).rejects.toThrow(ProdobitError)
    })
  })

  describe('verifyOTP', () => {
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
            expiresAt: '2024-12-31T23:59:59Z'
          },
          isNewUser: false
        }
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      })

      const result = await authClient.verifyOTP({
        email: 'test@example.com',
        code: '123456',
        tenantId: '123e4567-e89b-12d3-a456-426614174000'
      })

      expect(result).toEqual(mockResponse)
      expect(global.fetch).toHaveBeenCalledWith(
        'https://api.prodobit.com/api/v1/auth/verify-otp',
        expect.objectContaining({
          method: 'POST',
          body: JSON.stringify({
            email: 'test@example.com',
            code: '123456',
            tenantId: '123e4567-e89b-12d3-a456-426614174000'
          })
        })
      )
    })

    it('should handle invalid OTP', async () => {
      const mockErrorResponse = {
        error: {
          code: 'INVALID_OTP',
          message: 'Invalid or expired OTP'
        }
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: false,
        status: 400,
        json: () => Promise.resolve(mockErrorResponse)
      })

      await expect(authClient.verifyOTP({
        email: 'test@example.com',
        code: 'wrong-code',
        tenantId: '123e4567-e89b-12d3-a456-426614174000'
      })).rejects.toThrow(ProdobitError)
    })
  })

  describe('refreshToken', () => {
    it('should refresh token successfully', async () => {
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
            accessToken: 'new-access-token-123',
            refreshToken: 'new-refresh-token-123',
            expiresAt: '2024-12-31T23:59:59Z'
          },
          isNewUser: false
        }
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      })

      const result = await authClient.refreshToken({
        refreshToken: 'old-refresh-token'
      })

      expect(result).toEqual(mockResponse)
    })

    it('should handle expired refresh token', async () => {
      const mockErrorResponse = {
        error: {
          code: 'EXPIRED_REFRESH_TOKEN',
          message: 'Refresh token expired'
        }
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: false,
        status: 401,
        json: () => Promise.resolve(mockErrorResponse)
      })

      await expect(authClient.refreshToken({
        refreshToken: 'expired-token'
      })).rejects.toThrow(ProdobitError)
    })
  })

  describe('getCurrentUser', () => {
    it('should get current user successfully', async () => {
      const mockTokenInfo = {
        accessToken: 'access-token-123',
        refreshToken: 'refresh-token-123',
        expiresAt: new Date(Date.now() + 3600000),
        refreshExpiresAt: new Date(Date.now() + 7200000).toISOString(),
        tenantId: '123e4567-e89b-12d3-a456-426614174000'
      }

      authClient.setTokenInfo(mockTokenInfo)

      const mockUserResponse = {
        success: true,
        data: {
          id: 'user-123',
          email: 'test@example.com',
          displayName: 'Test User',
          tenantId: '123e4567-e89b-12d3-a456-426614174000'
        }
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockUserResponse)
      })

      const result = await authClient.getCurrentUser()

      expect(result).toEqual(mockUserResponse)
      expect(global.fetch).toHaveBeenCalledWith(
        'https://api.prodobit.com/api/v1/auth/me',
        expect.objectContaining({
          method: 'GET',
          headers: expect.objectContaining({
            'Authorization': 'Bearer access-token-123'
          })
        })
      )
    })

    it('should handle unauthorized request', async () => {
      ;(global.fetch as any).mockResolvedValueOnce({
        ok: false,
        status: 401,
        json: () => Promise.resolve({
          error: { message: 'Unauthorized' }
        })
      })

      await expect(authClient.getCurrentUser()).rejects.toThrow(ProdobitError)
    })
  })

  describe('logout', () => {
    it('should logout successfully', async () => {
      const mockResponse = {
        success: true,
        message: 'Logged out successfully'
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      })

      const result = await authClient.logout()

      expect(result).toEqual(mockResponse)
    })

    it('should logout with allDevices flag', async () => {
      const mockResponse = {
        success: true,
        message: 'Logged out from all devices'
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      })

      const result = await authClient.logout({ allDevices: true })

      expect(result).toEqual(mockResponse)
      expect(global.fetch).toHaveBeenCalledWith(
        'https://api.prodobit.com/api/v1/auth/logout',
        expect.objectContaining({
          body: JSON.stringify({ allDevices: true })
        })
      )
    })
  })

  describe('convenience methods', () => {
    it('should handle loginWithOTP', async () => {
      const mockResponse = { success: true }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      })

      const result = await authClient.loginWithOTP('test@example.com', '123e4567-e89b-12d3-a456-426614174000')

      expect(result).toEqual(mockResponse)
    })

    it('should handle completeLogin', async () => {
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
            expiresAt: '2024-12-31T23:59:59Z'
          },
          isNewUser: false
        }
      }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      })

      const result = await authClient.completeLogin('test@example.com', '123456', '123e4567-e89b-12d3-a456-426614174000')

      expect(result.success).toBe(true)
      expect(result.user).toBeDefined()
    })

    it('should handle signOut', async () => {
      const mockResponse = { success: true }

      ;(global.fetch as any).mockResolvedValueOnce({
        ok: true,
        json: () => Promise.resolve(mockResponse)
      })

      const result = await authClient.signOut(false)

      expect(result).toBe(true)
    })
  })
})