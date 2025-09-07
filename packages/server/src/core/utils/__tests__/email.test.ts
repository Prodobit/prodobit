import { describe, it, expect, vi, beforeEach } from 'vitest'
import { EmailService } from '../email.js'

// Mock the provider
const mockProvider = {
  sendEmail: vi.fn()
}

vi.mock('../resend-provider.js', () => ({
  ResendEmailProvider: vi.fn().mockImplementation(() => mockProvider)
}))

describe('EmailService', () => {
  beforeEach(() => {
    vi.clearAllMocks()
    // Initialize EmailService
    EmailService.initialize()
  })

  describe('sendOTPEmail', () => {
    it('should send OTP email successfully', async () => {
      mockProvider.sendEmail.mockResolvedValue({
        success: true,
        messageId: 'test-message-id'
      })

      const result = await EmailService.sendOTPEmail({
        email: 'user@example.com',
        code: '123456'
      })

      expect(mockProvider.sendEmail).toHaveBeenCalled()
      expect(result.success).toBe(true)
      expect(result.messageId).toBe('test-message-id')
    })

    it('should handle OTP email sending failure', async () => {
      mockProvider.sendEmail.mockRejectedValue(new Error('Email failed'))

      const result = await EmailService.sendOTPEmail({
        email: 'user@example.com',
        code: '123456'
      })

      expect(result.success).toBe(false)
      expect(result.error).toBe('Email failed')
    })

    it('should include user name in OTP email when provided', async () => {
      mockProvider.sendEmail.mockResolvedValue({
        success: true,
        messageId: 'test-message-id'
      })

      await EmailService.sendOTPEmail({
        email: 'user@example.com',
        code: '123456',
        userName: 'John Doe'
      })

      expect(mockProvider.sendEmail).toHaveBeenCalled()
      const calledWith = mockProvider.sendEmail.mock.calls[0][0]
      expect(calledWith.html).toContain('John Doe')
    })
  })

  describe('sendEmail', () => {
    it('should send custom email successfully', async () => {
      mockProvider.sendEmail.mockResolvedValue({
        success: true,
        messageId: 'test-message-id'
      })

      const result = await EmailService.sendEmail({
        to: 'user@example.com',
        subject: 'Test Subject',
        text: 'Test message'
      })

      expect(mockProvider.sendEmail).toHaveBeenCalledWith({
        to: 'user@example.com',
        subject: 'Test Subject',
        text: 'Test message'
      })
      expect(result.success).toBe(true)
    })

    it('should handle custom email sending failure', async () => {
      mockProvider.sendEmail.mockRejectedValue(new Error('Email failed'))

      const result = await EmailService.sendEmail({
        to: 'user@example.com',
        subject: 'Test Subject',
        text: 'Test message'
      })

      expect(result.success).toBe(false)
      expect(result.error).toBe('Email failed')
    })
  })

  describe('initialization', () => {
    it('should throw error when sending email without initialization', async () => {
      // Clear the provider to simulate uninitialized state
      EmailService['provider'] = null as any
      
      await expect(EmailService.sendEmail({
        to: 'test@example.com',
        subject: 'Test',
        text: 'Test'
      })).rejects.toThrow('EmailService not initialized. Call initialize() first.')
    })
  })
})