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
   * Get cookie prefix from context or environment variable
   * Defaults to 'prodobit' if not set
   */
  private static getCookiePrefix(c?: Context): string {
    // First priority: context (from createServerApp options)
    if (c) {
      const contextPrefix = c.get('cookiePrefix');
      if (contextPrefix) {
        return contextPrefix;
      }
    }
    // Second priority: environment variable
    return process.env.COOKIE_PREFIX || 'prodobit';
  }

  /**
   * Generate cookie name with dynamic prefix
   */
  private static getCookieName(name: string, c?: Context): string {
    return `${this.getCookiePrefix(c)}_${name}`;
  }

  /**
   * Set access token cookie (accessible to JavaScript)
   */
  static setAccessTokenCookie(
    c: Context,
    accessToken: string,
    expiresAt: Date
  ): void {
    const isProduction = process.env.NODE_ENV === 'production';
    
    const domain = isProduction ? (process.env.COOKIE_DOMAIN || '.prodobit.com') : undefined;
    
    const cookieString = this.serializeCookie(this.getCookieName('access_token', c), accessToken, {
      httpOnly: false, // JavaScript needs access for auth state
      secure: isProduction,
      sameSite: isProduction ? 'none' as const : 'lax' as const,
      expires: expiresAt,
      path: '/',
      domain: domain,
    });
    c.res.headers.append('Set-Cookie', cookieString);
  }

  /**
   * Set refresh token cookie (accessible to JavaScript for client-side refresh)
   */
  static setRefreshTokenCookie(
    c: Context,
    refreshToken: string,
    expiresAt: Date
  ): void {
    const isProduction = process.env.NODE_ENV === 'production';
    
    // For cross-subdomain sharing, use .prodobit.com domain in production
    const domain = isProduction ? (process.env.COOKIE_DOMAIN || '.prodobit.com') : undefined;
    
    const cookieString = this.serializeCookie(this.getCookieName('refresh_token', c), refreshToken, {
      httpOnly: false, // Changed: JavaScript needs access for client-side refresh
      secure: isProduction,
      sameSite: isProduction ? 'none' as const : 'lax' as const,
      expires: expiresAt,
      path: '/',
      domain: domain,
    });
    c.res.headers.append('Set-Cookie', cookieString);
  }

  /**
   * Set CSRF token cookie (HTTP-only for security)
   */
  static setCSRFTokenCookie(
    c: Context,
    csrfToken: string,
    expiresAt: Date
  ): void {
    const isProduction = process.env.NODE_ENV === 'production';
    
    const cookieString = this.serializeCookie(this.getCookieName('csrf_token', c), csrfToken, {
      httpOnly: true, // Changed: HTTP-only for security, server will validate
      secure: isProduction,
      sameSite: isProduction ? 'none' as const : 'lax' as const,
      expires: expiresAt,
      path: '/',
      domain: isProduction ? (process.env.COOKIE_DOMAIN || '.prodobit.com') : undefined,
    });
    c.res.headers.append('Set-Cookie', cookieString);
  }

  /**
   * Set tenant ID cookie (accessible to JavaScript)
   */
  static setTenantIdCookie(
    c: Context,
    tenantId: string,
    expiresAt: Date
  ): void {
    const isProduction = process.env.NODE_ENV === 'production';
    
    const cookieString = this.serializeCookie(this.getCookieName('tenant_id', c), tenantId, {
      httpOnly: false, // JavaScript needs access
      secure: isProduction,
      sameSite: isProduction ? 'none' as const : 'lax' as const,
      expires: expiresAt,
      path: '/',
      domain: isProduction ? (process.env.COOKIE_DOMAIN || '.prodobit.com') : undefined,
    });
    c.res.headers.append('Set-Cookie', cookieString);
  }

  /**
   * Clear authentication cookies
   */
  static clearAuthCookies(c: Context): void {
    const isProduction = process.env.NODE_ENV === 'production';
    const cookieOptions = {
      secure: isProduction,
      sameSite: isProduction ? 'none' as const : 'lax' as const,
      expires: new Date(0), // Expire immediately
      path: '/',
      domain: isProduction ? (process.env.COOKIE_DOMAIN || '.prodobit.com') : undefined,
    };

    // Clear access token (accessible)
    c.res.headers.append('Set-Cookie', this.serializeCookie(this.getCookieName('access_token', c), '', {
      ...cookieOptions,
      httpOnly: false,
    }));

    // Clear refresh token (accessible)
    c.res.headers.append('Set-Cookie', this.serializeCookie(this.getCookieName('refresh_token', c), '', {
      ...cookieOptions,
      httpOnly: false,
    }));

    // Clear CSRF token (HTTP-only)
    c.res.headers.append('Set-Cookie', this.serializeCookie(this.getCookieName('csrf_token', c), '', {
      ...cookieOptions,
      httpOnly: true,
    }));

    // Clear tenant ID
    c.res.headers.append('Set-Cookie', this.serializeCookie(this.getCookieName('tenant_id', c), '', {
      ...cookieOptions,
      httpOnly: false,
    }));
  }

  /**
   * Get refresh token from cookie
   */
  static getRefreshTokenFromCookie(c: Context): string | null {
    return this.getCookieValue(c, this.getCookieName('refresh_token', c));
  }

  /**
   * Get CSRF token from cookie (HTTP-only)
   */
  static getCSRFTokenFromCookie(c: Context): string | null {
    return this.getCookieValue(c, this.getCookieName('csrf_token', c));
  }

  /**
   * Get access token from cookie
   */
  static getAccessTokenFromCookie(c: Context): string | null {
    return this.getCookieValue(c, this.getCookieName('access_token', c));
  }

  /**
   * Get tenant ID from cookie
   */
  static getTenantIdFromCookie(c: Context): string | null {
    return this.getCookieValue(c, this.getCookieName('tenant_id', c));
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