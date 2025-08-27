import { randomInt } from "crypto";

export interface OTPOptions {
  length?: number;
  expiresInMinutes?: number;
}

export interface OTPRecord {
  code: string;
  email: string;
  expiresAt: Date;
  attempts: number;
  maxAttempts: number;
}

export class OTPManager {
  private static otpStore = new Map<string, OTPRecord>();
  private static cleanupInterval: NodeJS.Timeout | null = null;

  /**
   * Generate 6-digit OTP code
   */
  static generateOTP(options: OTPOptions = {}): string {
    const { length = 6 } = options;
    const min = Math.pow(10, length - 1);
    const max = Math.pow(10, length) - 1;
    
    return randomInt(min, max + 1).toString();
  }

  /**
   * Store OTP for email verification
   */
  static storeOTP(
    email: string, 
    options: OTPOptions = {}
  ): { code: string; expiresAt: Date } {
    const { expiresInMinutes = 10 } = options;
    const code = this.generateOTP(options);
    const expiresAt = new Date(Date.now() + (expiresInMinutes * 60 * 1000));

    const otpRecord: OTPRecord = {
      code,
      email,
      expiresAt,
      attempts: 0,
      maxAttempts: 3,
    };

    // Use email as key for easy lookup
    this.otpStore.set(email.toLowerCase(), otpRecord);

    // Start cleanup if not already running
    if (!this.cleanupInterval) {
      this.startCleanup();
    }

    return { code, expiresAt };
  }

  /**
   * Verify OTP code
   */
  static verifyOTP(email: string, code: string): {
    success: boolean;
    message: string;
    attemptsLeft?: number;
  } {
    const normalizedEmail = email.toLowerCase();
    const otpRecord = this.otpStore.get(normalizedEmail);

    if (!otpRecord) {
      return {
        success: false,
        message: "No OTP found for this email. Please request a new one.",
      };
    }

    // Check if expired
    if (new Date() > otpRecord.expiresAt) {
      this.otpStore.delete(normalizedEmail);
      return {
        success: false,
        message: "OTP has expired. Please request a new one.",
      };
    }

    // Check attempts
    if (otpRecord.attempts >= otpRecord.maxAttempts) {
      this.otpStore.delete(normalizedEmail);
      return {
        success: false,
        message: "Too many failed attempts. Please request a new OTP.",
      };
    }

    // Verify code
    otpRecord.attempts++;
    
    if (otpRecord.code !== code) {
      const attemptsLeft = otpRecord.maxAttempts - otpRecord.attempts;
      
      if (attemptsLeft <= 0) {
        this.otpStore.delete(normalizedEmail);
        return {
          success: false,
          message: "Invalid OTP. Too many failed attempts.",
        };
      }

      return {
        success: false,
        message: "Invalid OTP code.",
        attemptsLeft,
      };
    }

    // Success - remove from store
    this.otpStore.delete(normalizedEmail);
    return {
      success: true,
      message: "OTP verified successfully.",
    };
  }

  /**
   * Check if OTP exists and is valid for email
   */
  static hasValidOTP(email: string): boolean {
    const normalizedEmail = email.toLowerCase();
    const otpRecord = this.otpStore.get(normalizedEmail);

    if (!otpRecord) return false;
    if (new Date() > otpRecord.expiresAt) {
      this.otpStore.delete(normalizedEmail);
      return false;
    }

    return true;
  }

  /**
   * Get OTP info (for debugging/testing)
   */
  static getOTPInfo(email: string): {
    exists: boolean;
    expiresAt?: Date;
    attempts?: number;
    attemptsLeft?: number;
  } {
    const normalizedEmail = email.toLowerCase();
    const otpRecord = this.otpStore.get(normalizedEmail);

    if (!otpRecord) {
      return { exists: false };
    }

    return {
      exists: true,
      expiresAt: otpRecord.expiresAt,
      attempts: otpRecord.attempts,
      attemptsLeft: otpRecord.maxAttempts - otpRecord.attempts,
    };
  }

  /**
   * Remove expired OTPs
   */
  static cleanup(): number {
    const now = new Date();
    let removedCount = 0;

    for (const [email, record] of this.otpStore.entries()) {
      if (now > record.expiresAt) {
        this.otpStore.delete(email);
        removedCount++;
      }
    }

    return removedCount;
  }

  /**
   * Start automatic cleanup of expired OTPs
   */
  private static startCleanup(): void {
    this.cleanupInterval = setInterval(() => {
      this.cleanup();
    }, 5 * 60 * 1000); // Clean up every 5 minutes
  }

  /**
   * Stop automatic cleanup
   */
  static stopCleanup(): void {
    if (this.cleanupInterval) {
      clearInterval(this.cleanupInterval);
      this.cleanupInterval = null;
    }
  }

  /**
   * Clear all OTPs (for testing)
   */
  static clearAll(): void {
    this.otpStore.clear();
  }

  /**
   * Get current OTP count (for monitoring)
   */
  static getActiveCount(): number {
    return this.otpStore.size;
  }
}

export default OTPManager;