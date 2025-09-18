import type { Database } from "@prodobit/database";
import { emailVerificationTokens } from "@prodobit/database";
import { and, eq, gt, isNull, lt } from "drizzle-orm";
import { TokenUtils } from "./tokens.js";

export interface EmailVerificationResult {
  success: boolean;
  message: string;
  token?: string;
  expiresAt?: Date;
  error?: string;
}

export interface VerifyTokenResult {
  success: boolean;
  message: string;
  email?: string;
  error?: string;
}

export class EmailVerificationService {
  /**
   * Generate and store email verification token
   */
  static async generateVerificationToken(
    db: Database,
    email: string,
    createdBy?: string,
    expiresInHours: number = 24
  ): Promise<EmailVerificationResult> {
    try {
      // Clean up expired tokens for this email first
      await this.cleanupExpiredTokens(db, email);

      // Generate secure token
      const token = TokenUtils.generateEmailVerificationToken();
      const tokenHash = TokenUtils.hashToken(token);
      const expiresAt = new Date(Date.now() + expiresInHours * 60 * 60 * 1000);

      // Store token in database
      await db
        .insert(emailVerificationTokens)
        .values({
          email,
          tokenHash,
          expiresAt,
          createdBy,
        });

      return {
        success: true,
        message: "Verification token generated successfully",
        token,
        expiresAt,
      };
    } catch (error) {
      console.error("Error generating verification token:", error);
      return {
        success: false,
        message: "Failed to generate verification token",
        error: error instanceof Error ? error.message : "Unknown error",
      };
    }
  }

  /**
   * Verify email token and mark as used
   */
  static async verifyToken(
    db: Database,
    token: string
  ): Promise<VerifyTokenResult> {
    try {
      const tokenHash = TokenUtils.hashToken(token);

      // Find valid token
      const tokenResult = await db
        .select()
        .from(emailVerificationTokens)
        .where(
          and(
            eq(emailVerificationTokens.tokenHash, tokenHash),
            isNull(emailVerificationTokens.usedAt),
            gt(emailVerificationTokens.expiresAt, new Date())
          )
        )
        .limit(1);

      if (tokenResult.length === 0) {
        return {
          success: false,
          message: "Invalid or expired verification token",
          error: "TOKEN_INVALID",
        };
      }

      const verificationToken = tokenResult[0];

      // Mark token as used
      await db
        .update(emailVerificationTokens)
        .set({
          usedAt: new Date(),
          updatedAt: new Date(),
        })
        .where(eq(emailVerificationTokens.id, verificationToken.id));

      return {
        success: true,
        message: "Email verified successfully",
        email: verificationToken.email,
      };
    } catch (error) {
      console.error("Error verifying token:", error);
      return {
        success: false,
        message: "Failed to verify token",
        error: error instanceof Error ? error.message : "Unknown error",
      };
    }
  }

  /**
   * Check if email has pending verification tokens
   */
  static async hasValidToken(
    db: Database,
    email: string
  ): Promise<{ exists: boolean; expiresAt?: Date; sentAt?: Date }> {
    try {
      const tokenResult = await db
        .select({
          expiresAt: emailVerificationTokens.expiresAt,
          insertedAt: emailVerificationTokens.insertedAt,
        })
        .from(emailVerificationTokens)
        .where(
          and(
            eq(emailVerificationTokens.email, email),
            isNull(emailVerificationTokens.usedAt),
            gt(emailVerificationTokens.expiresAt, new Date())
          )
        )
        .orderBy(emailVerificationTokens.insertedAt)
        .limit(1);

      if (tokenResult.length === 0) {
        return { exists: false };
      }

      return {
        exists: true,
        expiresAt: tokenResult[0].expiresAt,
        sentAt: tokenResult[0].insertedAt,
      };
    } catch (error) {
      console.error("Error checking valid token:", error);
      return { exists: false };
    }
  }

  /**
   * Clean up expired tokens for a specific email
   */
  static async cleanupExpiredTokens(
    db: Database,
    email?: string
  ): Promise<void> {
    try {
      const conditions = [lt(emailVerificationTokens.expiresAt, new Date())];
      
      if (email) {
        conditions.push(eq(emailVerificationTokens.email, email));
      }

      await db
        .delete(emailVerificationTokens)
        .where(and(...conditions));
    } catch (error) {
      console.error("Error cleaning up expired tokens:", error);
    }
  }

  /**
   * Get verification status for an email
   */
  static async getVerificationStatus(
    db: Database,
    email: string
  ): Promise<{
    verified: boolean;
    hasPendingToken: boolean;
    tokenExpiresAt?: Date;
    tokenSentAt?: Date;
  }> {
    try {
      // Check if user's auth method is verified
      // We'll need to check this in the auth.ts file since it requires auth method lookup
      
      // Check for pending tokens
      const tokenInfo = await this.hasValidToken(db, email);

      return {
        verified: false, // This will be updated in the endpoint
        hasPendingToken: tokenInfo.exists,
        tokenExpiresAt: tokenInfo.expiresAt,
        tokenSentAt: tokenInfo.sentAt,
      };
    } catch (error) {
      console.error("Error getting verification status:", error);
      return {
        verified: false,
        hasPendingToken: false,
      };
    }
  }

  /**
   * Invalidate all tokens for an email (useful when email is verified)
   */
  static async invalidateTokensForEmail(
    db: Database,
    email: string
  ): Promise<void> {
    try {
      await db
        .update(emailVerificationTokens)
        .set({
          usedAt: new Date(),
          updatedAt: new Date(),
        })
        .where(
          and(
            eq(emailVerificationTokens.email, email),
            isNull(emailVerificationTokens.usedAt)
          )
        );
    } catch (error) {
      console.error("Error invalidating tokens:", error);
    }
  }

  /**
   * Rate limiting check - prevent too many verification emails
   */
  static async canSendVerificationEmail(
    db: Database,
    email: string,
    cooldownMinutes: number = 5
  ): Promise<{
    canSend: boolean;
    waitTime?: number;
    message: string;
  }> {
    try {
      const cooldownTime = new Date(Date.now() - cooldownMinutes * 60 * 1000);

      const recentToken = await db
        .select({
          insertedAt: emailVerificationTokens.insertedAt,
        })
        .from(emailVerificationTokens)
        .where(
          and(
            eq(emailVerificationTokens.email, email),
            gt(emailVerificationTokens.insertedAt, cooldownTime)
          )
        )
        .orderBy(emailVerificationTokens.insertedAt)
        .limit(1);

      if (recentToken.length > 0) {
        const waitTime = Math.ceil(
          (recentToken[0].insertedAt.getTime() + cooldownMinutes * 60 * 1000 - Date.now()) / 1000 / 60
        );

        return {
          canSend: false,
          waitTime,
          message: `Please wait ${waitTime} minute(s) before requesting another verification email`,
        };
      }

      return {
        canSend: true,
        message: "Can send verification email",
      };
    } catch (error) {
      console.error("Error checking rate limit:", error);
      return {
        canSend: true,
        message: "Rate limit check failed, allowing send",
      };
    }
  }
}