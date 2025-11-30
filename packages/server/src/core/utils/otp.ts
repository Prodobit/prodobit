import { randomInt } from "crypto";
import { getRedisClient, isRedisConnected } from "./redis.js";

export interface OTPOptions {
  length?: number;
  expiresInMinutes?: number;
  purpose?: string;
}

export interface OTPRecord {
  code: string;
  identifier: string; // email or phone
  type: "email" | "phone";
  expiresAt: string; // ISO string for Redis serialization
  attempts: number;
  maxAttempts: number;
  createdAt: string;
}

// Rate limiting configuration
const RATE_LIMIT_WINDOW_MINUTES = 15;
const MAX_OTP_REQUESTS_PER_WINDOW = 5;

// Redis key prefixes
const OTP_KEY_PREFIX = "otp:";
const RATE_LIMIT_KEY_PREFIX = "otp_rate:";

export class OTPManager {
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
   * Get Redis key for OTP storage
   */
  private static getOTPKey(identifier: string, type: "email" | "phone"): string {
    const key = type === "email" ? identifier.toLowerCase() : identifier;
    return `${OTP_KEY_PREFIX}${type}:${key}`;
  }

  /**
   * Get Redis key for rate limiting
   */
  private static getRateLimitKey(identifier: string, type: "email" | "phone"): string {
    const key = type === "email" ? identifier.toLowerCase() : identifier;
    return `${RATE_LIMIT_KEY_PREFIX}${type}:${key}`;
  }

  /**
   * Check rate limit for OTP requests
   */
  static async checkRateLimit(
    identifier: string,
    type: "email" | "phone"
  ): Promise<{
    allowed: boolean;
    remainingRequests: number;
    resetAt: Date;
    message?: string;
  }> {
    const redis = getRedisClient();
    const rateLimitKey = this.getRateLimitKey(identifier, type);

    const count = await redis.get(rateLimitKey);
    const currentCount = count ? parseInt(count, 10) : 0;

    const ttl = await redis.ttl(rateLimitKey);
    const resetAt = new Date(Date.now() + (ttl > 0 ? ttl * 1000 : RATE_LIMIT_WINDOW_MINUTES * 60 * 1000));

    if (currentCount >= MAX_OTP_REQUESTS_PER_WINDOW) {
      return {
        allowed: false,
        remainingRequests: 0,
        resetAt,
        message: `Too many OTP requests. Please try again after ${Math.ceil(ttl / 60)} minutes.`,
      };
    }

    return {
      allowed: true,
      remainingRequests: MAX_OTP_REQUESTS_PER_WINDOW - currentCount - 1,
      resetAt,
    };
  }

  /**
   * Increment rate limit counter
   */
  private static async incrementRateLimit(identifier: string, type: "email" | "phone"): Promise<void> {
    const redis = getRedisClient();
    const rateLimitKey = this.getRateLimitKey(identifier, type);

    const exists = await redis.exists(rateLimitKey);
    if (exists) {
      await redis.incr(rateLimitKey);
    } else {
      await redis.setex(rateLimitKey, RATE_LIMIT_WINDOW_MINUTES * 60, "1");
    }
  }

  /**
   * Store OTP for email or phone verification
   */
  static async storeOTP(
    identifier: string,
    type: "email" | "phone",
    options: OTPOptions = {}
  ): Promise<{
    success: boolean;
    code?: string;
    expiresAt?: Date;
    error?: string;
    remainingRequests?: number;
  }> {
    // Check rate limit first
    const rateLimitCheck = await this.checkRateLimit(identifier, type);
    if (!rateLimitCheck.allowed) {
      return {
        success: false,
        error: rateLimitCheck.message,
        remainingRequests: 0,
      };
    }

    const { expiresInMinutes = 10 } = options;
    const code = this.generateOTP(options);
    const expiresAt = new Date(Date.now() + expiresInMinutes * 60 * 1000);

    const otpRecord: OTPRecord = {
      code,
      identifier,
      type,
      expiresAt: expiresAt.toISOString(),
      attempts: 0,
      maxAttempts: 3,
      createdAt: new Date().toISOString(),
    };

    const redis = getRedisClient();
    const otpKey = this.getOTPKey(identifier, type);

    // Store OTP with expiration
    await redis.setex(otpKey, expiresInMinutes * 60, JSON.stringify(otpRecord));

    // Increment rate limit counter
    await this.incrementRateLimit(identifier, type);

    return {
      success: true,
      code,
      expiresAt,
      remainingRequests: rateLimitCheck.remainingRequests,
    };
  }

  /**
   * Verify OTP code
   */
  static async verifyOTP(
    identifier: string,
    type: "email" | "phone",
    code: string
  ): Promise<{
    success: boolean;
    message: string;
    attemptsLeft?: number;
  }> {
    const redis = getRedisClient();
    const otpKey = this.getOTPKey(identifier, type);

    const otpData = await redis.get(otpKey);

    if (!otpData) {
      return {
        success: false,
        message: `No OTP found for this ${type}. Please request a new one.`,
      };
    }

    const otpRecord: OTPRecord = JSON.parse(otpData);

    // Check if expired (Redis should handle this, but double-check)
    if (new Date() > new Date(otpRecord.expiresAt)) {
      await redis.del(otpKey);
      return {
        success: false,
        message: "OTP has expired. Please request a new one.",
      };
    }

    // Check attempts
    if (otpRecord.attempts >= otpRecord.maxAttempts) {
      await redis.del(otpKey);
      return {
        success: false,
        message: "Too many failed attempts. Please request a new OTP.",
      };
    }

    // Verify code
    if (otpRecord.code !== code) {
      otpRecord.attempts++;
      const attemptsLeft = otpRecord.maxAttempts - otpRecord.attempts;

      if (attemptsLeft <= 0) {
        await redis.del(otpKey);
        return {
          success: false,
          message: "Invalid OTP. Too many failed attempts.",
        };
      }

      // Update attempts count in Redis
      const ttl = await redis.ttl(otpKey);
      if (ttl > 0) {
        await redis.setex(otpKey, ttl, JSON.stringify(otpRecord));
      }

      return {
        success: false,
        message: "Invalid OTP code.",
        attemptsLeft,
      };
    }

    // Success - remove from store
    await redis.del(otpKey);
    return {
      success: true,
      message: "OTP verified successfully.",
    };
  }

  /**
   * Check if OTP exists and is valid
   */
  static async hasValidOTP(identifier: string, type: "email" | "phone"): Promise<boolean> {
    const redis = getRedisClient();
    const otpKey = this.getOTPKey(identifier, type);

    const exists = await redis.exists(otpKey);
    return exists === 1;
  }

  /**
   * Get OTP info (for debugging/testing)
   */
  static async getOTPInfo(
    identifier: string,
    type: "email" | "phone"
  ): Promise<{
    exists: boolean;
    expiresAt?: Date;
    attempts?: number;
    attemptsLeft?: number;
  }> {
    const redis = getRedisClient();
    const otpKey = this.getOTPKey(identifier, type);

    const otpData = await redis.get(otpKey);

    if (!otpData) {
      return { exists: false };
    }

    const otpRecord: OTPRecord = JSON.parse(otpData);

    return {
      exists: true,
      expiresAt: new Date(otpRecord.expiresAt),
      attempts: otpRecord.attempts,
      attemptsLeft: otpRecord.maxAttempts - otpRecord.attempts,
    };
  }

  /**
   * Delete OTP (for manual cleanup or testing)
   */
  static async deleteOTP(identifier: string, type: "email" | "phone"): Promise<void> {
    const redis = getRedisClient();
    const otpKey = this.getOTPKey(identifier, type);
    await redis.del(otpKey);
  }

  /**
   * Get rate limit info
   */
  static async getRateLimitInfo(
    identifier: string,
    type: "email" | "phone"
  ): Promise<{
    requestsUsed: number;
    remainingRequests: number;
    resetAt: Date;
  }> {
    const redis = getRedisClient();
    const rateLimitKey = this.getRateLimitKey(identifier, type);

    const count = await redis.get(rateLimitKey);
    const currentCount = count ? parseInt(count, 10) : 0;

    const ttl = await redis.ttl(rateLimitKey);
    const resetAt = new Date(Date.now() + (ttl > 0 ? ttl * 1000 : RATE_LIMIT_WINDOW_MINUTES * 60 * 1000));

    return {
      requestsUsed: currentCount,
      remainingRequests: Math.max(0, MAX_OTP_REQUESTS_PER_WINDOW - currentCount),
      resetAt,
    };
  }

  /**
   * Check Redis connection status
   */
  static isConnected(): boolean {
    return isRedisConnected();
  }
}

export default OTPManager;
