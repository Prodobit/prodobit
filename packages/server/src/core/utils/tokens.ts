import { createHash, randomBytes } from "crypto";

export class TokenUtils {

  /**
   * Generate secure random token
   */
  static generateSecureToken(length: number = 32): string {
    return randomBytes(length).toString("hex");
  }

  /**
   * Hash string using SHA-256 (for token hashing)
   */
  static hashToken(token: string): string {
    return createHash("sha256").update(token).digest("hex");
  }

  /**
   * Generate email verification token
   */
  static generateEmailVerificationToken(): string {
    return this.generateSecureToken(32);
  }


  /**
   * Generate session ID
   */
  static generateSessionId(): string {
    return this.generateSecureToken(24);
  }
}

export default TokenUtils;