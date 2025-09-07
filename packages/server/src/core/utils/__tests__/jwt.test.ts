import { describe, it, expect, vi, beforeEach } from 'vitest'
import { JwtTokenManager } from '../jwt.js'

// Mock jsonwebtoken with proper structure
vi.mock('jsonwebtoken', () => {
  const mockJwt = {
    sign: vi.fn(),
    verify: vi.fn(),
    TokenExpiredError: class extends Error {},
    JsonWebTokenError: class extends Error {}
  }
  return {
    default: mockJwt
  }
})

describe('JwtTokenManager', () => {
  let mockJwt: any

  beforeEach(async () => {
    vi.clearAllMocks()
    mockJwt = (await import('jsonwebtoken')).default
  })

  describe('generateAccessToken', () => {
    it('should generate access token', () => {
      mockJwt.sign.mockReturnValue('mock-access-token')

      const payload = {
        sub: 'user-123',
        tenantId: 'tenant-123'
      }

      const token = JwtTokenManager.generateAccessToken(payload)

      expect(mockJwt.sign).toHaveBeenCalled()
      expect(token).toBe('mock-access-token')
    })
  })

  describe('generateRefreshToken', () => {
    it('should generate refresh token', () => {
      mockJwt.sign.mockReturnValue('mock-refresh-token')

      const token = JwtTokenManager.generateRefreshToken('user-123', 'tenant-123')

      expect(mockJwt.sign).toHaveBeenCalled()
      expect(token).toBe('mock-refresh-token')
    })
  })

  describe('verifyAccessToken', () => {
    it('should verify valid token', () => {
      const mockPayload = { sub: 'user-123', tenantId: 'tenant-123' }
      mockJwt.verify.mockReturnValue(mockPayload)

      const result = JwtTokenManager.verifyAccessToken('valid-token')

      expect(mockJwt.verify).toHaveBeenCalled()
      expect(result).toEqual(mockPayload)
    })

    it('should throw on expired token', () => {
      mockJwt.verify.mockImplementation(() => {
        throw new mockJwt.TokenExpiredError('expired')
      })

      expect(() => {
        JwtTokenManager.verifyAccessToken('expired-token')
      }).toThrow('Access token expired')
    })
  })
})