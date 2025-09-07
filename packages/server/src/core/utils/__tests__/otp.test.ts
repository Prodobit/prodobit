import { describe, it, expect, beforeEach } from 'vitest'
import { OTPManager } from '../otp.js'

describe('OTPManager', () => {
  beforeEach(() => {
    // Clear OTP store before each test
    OTPManager.clearAll()
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
    it('should store and verify OTP successfully', () => {
      const email = 'test@example.com'
      
      const { code } = OTPManager.storeOTP(email)
      
      const result = OTPManager.verifyOTP(email, code)
      expect(result.success).toBe(true)
    })

    it('should reject incorrect OTP', () => {
      const email = 'test@example.com'
      
      OTPManager.storeOTP(email)
      const result = OTPManager.verifyOTP(email, '654321')
      
      expect(result.success).toBe(false)
    })

    it('should reject OTP for wrong email', () => {
      const { code } = OTPManager.storeOTP('test@example.com')
      const result = OTPManager.verifyOTP('other@example.com', code)
      
      expect(result.success).toBe(false)
    })
  })

  describe('hasValidOTP', () => {
    it('should return true for valid stored OTP', () => {
      const email = 'test@example.com'
      
      OTPManager.storeOTP(email)
      expect(OTPManager.hasValidOTP(email)).toBe(true)
    })

    it('should return false for non-existent email', () => {
      expect(OTPManager.hasValidOTP('nonexistent@example.com')).toBe(false)
    })
  })

  describe('getActiveCount', () => {
    it('should return correct count of active OTPs', () => {
      expect(OTPManager.getActiveCount()).toBe(0)
      
      OTPManager.storeOTP('user1@example.com')
      expect(OTPManager.getActiveCount()).toBe(1)
      
      OTPManager.storeOTP('user2@example.com')
      expect(OTPManager.getActiveCount()).toBe(2)
    })
  })
})