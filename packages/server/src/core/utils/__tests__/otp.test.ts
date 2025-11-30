import { describe, it, expect, beforeEach, vi } from 'vitest'
import { OTPManager } from '../otp.js'

// Create an in-memory store for mocking Redis
const mockStore = new Map<string, string>();
const mockTtls = new Map<string, number>();

// Mock Redis client
vi.mock('../redis.js', () => {
  return {
    getRedisClient: () => ({
      get: vi.fn(async (key: string) => mockStore.get(key) || null),
      setex: vi.fn(async (key: string, ttl: number, value: string) => {
        mockStore.set(key, value);
        mockTtls.set(key, ttl);
        return 'OK';
      }),
      del: vi.fn(async (key: string) => {
        mockStore.delete(key);
        mockTtls.delete(key);
        return 1;
      }),
      exists: vi.fn(async (key: string) => mockStore.has(key) ? 1 : 0),
      ttl: vi.fn(async (key: string) => mockTtls.get(key) || -1),
      incr: vi.fn(async (key: string) => {
        const current = parseInt(mockStore.get(key) || '0', 10);
        mockStore.set(key, String(current + 1));
        return current + 1;
      }),
    }),
    isRedisConnected: () => true,
  };
});

describe('OTPManager', () => {
  beforeEach(() => {
    // Clear mock store before each test
    mockStore.clear();
    mockTtls.clear();
  })

  describe('generateOTP', () => {
    it('should generate 6-digit OTP by default', () => {
      const otp = OTPManager.generateOTP()

      expect(otp).toHaveLength(6)
      expect(/^\d{6}$/.test(otp)).toBe(true)
    })

    it('should generate OTP with custom length', () => {
      const otp = OTPManager.generateOTP({ length: 4 })

      expect(otp).toHaveLength(4)
      expect(/^\d{4}$/.test(otp)).toBe(true)
    })

    it('should generate different OTPs', () => {
      const otp1 = OTPManager.generateOTP()
      const otp2 = OTPManager.generateOTP()

      // Very unlikely they'll be the same
      expect(otp1).not.toBe(otp2)
    })
  })

  describe('storeOTP and verifyOTP', () => {
    it('should store and verify OTP successfully', async () => {
      const email = 'test@example.com'

      const storeResult = await OTPManager.storeOTP(email, 'email')
      expect(storeResult.success).toBe(true)
      expect(storeResult.code).toBeDefined()

      const verifyResult = await OTPManager.verifyOTP(email, 'email', storeResult.code!)
      expect(verifyResult.success).toBe(true)
    })

    it('should reject incorrect OTP', async () => {
      const email = 'test@example.com'

      await OTPManager.storeOTP(email, 'email')
      const result = await OTPManager.verifyOTP(email, 'email', '654321')

      expect(result.success).toBe(false)
    })

    it('should reject OTP for wrong email', async () => {
      const storeResult = await OTPManager.storeOTP('test@example.com', 'email')
      const result = await OTPManager.verifyOTP('other@example.com', 'email', storeResult.code!)

      expect(result.success).toBe(false)
    })
  })

  describe('hasValidOTP', () => {
    it('should return true for valid stored OTP', async () => {
      const email = 'test@example.com'

      await OTPManager.storeOTP(email, 'email')
      expect(await OTPManager.hasValidOTP(email, 'email')).toBe(true)
    })

    it('should return false for non-existent email', async () => {
      expect(await OTPManager.hasValidOTP('nonexistent@example.com', 'email')).toBe(false)
    })
  })
})
