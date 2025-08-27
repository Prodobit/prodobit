import type { JwtPayload } from "@prodobit/types";
import jwt from "jsonwebtoken";

// Environment variables for JWT
const JWT_SECRET = process.env["JWT_SECRET"] || "your-super-secret-jwt-key";
const JWT_REFRESH_SECRET =
  process.env["JWT_REFRESH_SECRET"] || "your-super-secret-refresh-key";
const JWT_ISSUER = process.env["JWT_ISSUER"] || "prodobit-api";
const JWT_AUDIENCE = process.env["JWT_AUDIENCE"] || "prodobit-client";

// Token expiration times
const ACCESS_TOKEN_EXPIRES_IN = "15m";
const REFRESH_TOKEN_EXPIRES_IN = "7d";

export interface TokenPair {
  accessToken: string;
  refreshToken: string;
  expiresAt: Date;
  refreshExpiresAt: Date;
}

export class JwtTokenManager {
  /**
   * Generate access token
   */
  static generateAccessToken(
    payload: Omit<JwtPayload, "iat" | "exp" | "aud" | "iss">
  ): string {
    const tokenPayload: JwtPayload = {
      ...payload,
      iat: Math.floor(Date.now() / 1000),
      exp: Math.floor(Date.now() / 1000) + 15 * 60, // 15 minutes
      aud: JWT_AUDIENCE,
      iss: JWT_ISSUER,
    };

    return jwt.sign(tokenPayload, JWT_SECRET, {
      algorithm: "HS256",
    });
  }

  /**
   * Generate refresh token
   */
  static generateRefreshToken(userId: string, tenantId?: string): string {
    const payload = {
      sub: userId,
      tenantId,
      type: "refresh",
      iat: Math.floor(Date.now() / 1000),
      exp: Math.floor(Date.now() / 1000) + 7 * 24 * 60 * 60, // 7 days
      aud: JWT_AUDIENCE,
      iss: JWT_ISSUER,
    };

    return jwt.sign(payload, JWT_REFRESH_SECRET, {
      algorithm: "HS256",
    });
  }

  /**
   * Generate both access and refresh tokens
   */
  static generateTokenPair(
    payload: Omit<JwtPayload, "iat" | "exp" | "aud" | "iss">
  ): TokenPair {
    const accessToken = this.generateAccessToken(payload);
    const refreshToken = this.generateRefreshToken(
      payload.sub,
      payload.tenantId
    );

    const now = new Date();
    const expiresAt = new Date(now.getTime() + 15 * 60 * 1000); // 15 minutes
    const refreshExpiresAt = new Date(now.getTime() + 7 * 24 * 60 * 60 * 1000); // 7 days

    return {
      accessToken,
      refreshToken,
      expiresAt,
      refreshExpiresAt,
    };
  }

  /**
   * Verify access token
   */
  static verifyAccessToken(token: string): JwtPayload {
    try {
      const decoded = jwt.verify(token, JWT_SECRET, {
        algorithms: ["HS256"],
        audience: JWT_AUDIENCE,
        issuer: JWT_ISSUER,
      }) as JwtPayload;

      return decoded;
    } catch (error) {
      if (error instanceof jwt.TokenExpiredError) {
        throw new Error("Access token expired");
      }
      if (error instanceof jwt.JsonWebTokenError) {
        throw new Error("Invalid access token");
      }
      throw new Error("Token verification failed");
    }
  }

  /**
   * Verify refresh token
   */
  static verifyRefreshToken(token: string): {
    sub: string;
    tenantId?: string;
    type: string;
  } {
    try {
      const decoded = jwt.verify(token, JWT_REFRESH_SECRET, {
        algorithms: ["HS256"],
        audience: JWT_AUDIENCE,
        issuer: JWT_ISSUER,
      }) as any;

      if (decoded.type !== "refresh") {
        throw new Error("Invalid token type");
      }

      return decoded;
    } catch (error) {
      if (error instanceof jwt.TokenExpiredError) {
        throw new Error("Refresh token expired");
      }
      if (error instanceof jwt.JsonWebTokenError) {
        throw new Error("Invalid refresh token");
      }
      throw new Error("Token verification failed");
    }
  }

  /**
   * Extract token from Authorization header
   */
  static extractTokenFromHeader(authHeader?: string): string | null {
    if (!authHeader) return null;

    const parts = authHeader.split(" ");
    if (parts.length !== 2 || parts[0] !== "Bearer") {
      return null;
    }

    return parts[1];
  }

  /**
   * Get token expiration time
   */
  static getTokenExpiration(token: string): Date | null {
    try {
      const decoded = jwt.decode(token) as any;
      if (!decoded || !decoded.exp) return null;

      return new Date(decoded.exp * 1000);
    } catch {
      return null;
    }
  }

  /**
   * Check if token is expired (without verifying signature)
   */
  static isTokenExpired(token: string): boolean {
    const expiration = this.getTokenExpiration(token);
    if (!expiration) return true;

    return expiration.getTime() < Date.now();
  }
}

export default JwtTokenManager;
