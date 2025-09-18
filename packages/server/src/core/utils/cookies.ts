import type { Context } from 'hono';

export interface CookieOptions {
  httpOnly?: boolean;
  secure?: boolean;
  sameSite?: 'strict' | 'lax' | 'none';
  maxAge?: number;
  expires?: Date;
  path?: string;
  domain?: string;
}

export class CookieManager {
  /**
   * Set refresh token cookie with security settings
   */
  static setRefreshTokenCookie(
    c: Context,
    refreshToken: string,
    expiresAt: Date
  ): void {
    const isProduction = process.env.NODE_ENV === 'production';
    
    c.res.headers.set('Set-Cookie', this.serializeCookie('refresh_token', refreshToken, {
      httpOnly: true,
      secure: isProduction,
      sameSite: 'strict',
      expires: expiresAt,
      path: '/api/v1/auth',
    }));
  }

  /**
   * Set CSRF token cookie (non-httpOnly for JavaScript access)
   */
  static setCSRFTokenCookie(
    c: Context,
    csrfToken: string,
    expiresAt: Date
  ): void {
    const isProduction = process.env.NODE_ENV === 'production';
    
    c.res.headers.set('Set-Cookie', this.serializeCookie('csrf_token', csrfToken, {
      httpOnly: false, // JavaScript needs access for double-submit pattern
      secure: isProduction,
      sameSite: 'strict',
      expires: expiresAt,
      path: '/',
    }));
  }

  /**
   * Clear authentication cookies
   */
  static clearAuthCookies(c: Context): void {
    const cookieOptions = {
      httpOnly: true,
      secure: process.env.NODE_ENV === 'production',
      sameSite: 'strict' as const,
      expires: new Date(0), // Expire immediately
      path: '/api/v1/auth',
    };

    // Clear refresh token
    c.res.headers.set('Set-Cookie', this.serializeCookie('refresh_token', '', cookieOptions));
    
    // Clear CSRF token
    c.res.headers.set('Set-Cookie', this.serializeCookie('csrf_token', '', {
      ...cookieOptions,
      httpOnly: false,
      path: '/',
    }));
  }

  /**
   * Get refresh token from cookie
   */
  static getRefreshTokenFromCookie(c: Context): string | null {
    return this.getCookieValue(c, 'refresh_token');
  }

  /**
   * Get CSRF token from cookie
   */
  static getCSRFTokenFromCookie(c: Context): string | null {
    return this.getCookieValue(c, 'csrf_token');
  }

  /**
   * Extract cookie value by name from request
   */
  private static getCookieValue(c: Context, name: string): string | null {
    const cookieHeader = c.req.header('Cookie');
    if (!cookieHeader) return null;

    const cookies = this.parseCookies(cookieHeader);
    return cookies[name] || null;
  }

  /**
   * Parse cookie header string into object
   */
  private static parseCookies(cookieHeader: string): Record<string, string> {
    return cookieHeader
      .split(';')
      .reduce((cookies, cookie) => {
        const [name, value] = cookie.trim().split('=');
        if (name && value) {
          cookies[name] = decodeURIComponent(value);
        }
        return cookies;
      }, {} as Record<string, string>);
  }

  /**
   * Serialize cookie with options
   */
  private static serializeCookie(
    name: string,
    value: string,
    options: CookieOptions = {}
  ): string {
    let cookie = `${name}=${encodeURIComponent(value)}`;

    if (options.expires) {
      cookie += `; Expires=${options.expires.toUTCString()}`;
    }

    if (options.maxAge) {
      cookie += `; Max-Age=${options.maxAge}`;
    }

    if (options.path) {
      cookie += `; Path=${options.path}`;
    }

    if (options.domain) {
      cookie += `; Domain=${options.domain}`;
    }

    if (options.httpOnly) {
      cookie += '; HttpOnly';
    }

    if (options.secure) {
      cookie += '; Secure';
    }

    if (options.sameSite) {
      cookie += `; SameSite=${options.sameSite}`;
    }

    return cookie;
  }

  /**
   * Validate cookie security settings
   */
  static validateCookieSecurity(): {
    isSecure: boolean;
    sameSite: 'strict' | 'lax' | 'none';
    warnings: string[];
  } {
    const isProduction = process.env.NODE_ENV === 'production';
    const warnings: string[] = [];

    if (!isProduction) {
      warnings.push('Running in development mode - cookies will not be marked as Secure');
    }

    return {
      isSecure: isProduction,
      sameSite: 'strict',
      warnings,
    };
  }

  /**
   * Generate device fingerprint from request headers
   */
  static generateDeviceFingerprint(c: Context): string {
    const userAgent = c.req.header('User-Agent') || '';
    const acceptLanguage = c.req.header('Accept-Language') || '';
    const acceptEncoding = c.req.header('Accept-Encoding') || '';
    
    const fingerprintData = `${userAgent}|${acceptLanguage}|${acceptEncoding}`;
    
    const crypto = require('crypto');
    return crypto.createHash('sha256').update(fingerprintData).digest('hex');
  }
}