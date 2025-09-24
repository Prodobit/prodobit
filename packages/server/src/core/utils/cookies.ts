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
   * Set access token cookie (accessible to JavaScript)
   */
  static setAccessTokenCookie(
    c: Context,
    accessToken: string,
    expiresAt: Date
  ): void {
    const isProduction = process.env.NODE_ENV === 'production';
    
    const domain = isProduction ? (process.env.COOKIE_DOMAIN || '.prodobit.com') : undefined;
    
    console.log(`🍪 Setting access token cookie: NODE_ENV=${process.env.NODE_ENV}, isProduction=${isProduction}, domain=${domain}`);
    
    const cookieString = this.serializeCookie('prodobit_access_token', accessToken, {
      httpOnly: false, // JavaScript needs access for auth state
      secure: isProduction,
      sameSite: isProduction ? 'none' as const : 'lax' as const,
      expires: expiresAt,
      path: '/',
      domain: domain,
    });
    
    console.log(`🍪 Access token cookie: ${cookieString}`);
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
    
    console.log(`🍪 Setting refresh token cookie: NODE_ENV=${process.env.NODE_ENV}, isProduction=${isProduction}, domain=${domain}`);
    console.log(`🍪 Request host: ${c.req.header('host')}`);
    
    const cookieString = this.serializeCookie('prodobit_refresh_token', refreshToken, {
      httpOnly: false, // Changed: JavaScript needs access for client-side refresh
      secure: isProduction,
      sameSite: isProduction ? 'none' as const : 'lax' as const,
      expires: expiresAt,
      path: '/',
      domain: domain,
    });
    
    console.log(`🍪 Refresh token cookie: ${cookieString}`);
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
    
    const cookieString = this.serializeCookie('prodobit_csrf_token', csrfToken, {
      httpOnly: true, // Changed: HTTP-only for security, server will validate
      secure: isProduction,
      sameSite: isProduction ? 'none' as const : 'lax' as const,
      expires: expiresAt,
      path: '/',
      domain: isProduction ? (process.env.COOKIE_DOMAIN || '.prodobit.com') : undefined,
    });
    
    console.log(`🍪 CSRF Cookie string: ${cookieString}`);
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
    
    const cookieString = this.serializeCookie('prodobit_tenant_id', tenantId, {
      httpOnly: false, // JavaScript needs access
      secure: isProduction,
      sameSite: isProduction ? 'none' as const : 'lax' as const,
      expires: expiresAt,
      path: '/',
      domain: isProduction ? (process.env.COOKIE_DOMAIN || '.prodobit.com') : undefined,
    });
    
    console.log(`🍪 Tenant ID cookie: ${cookieString}`);
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
    c.res.headers.append('Set-Cookie', this.serializeCookie('prodobit_access_token', '', {
      ...cookieOptions,
      httpOnly: false,
    }));

    // Clear refresh token (accessible)
    c.res.headers.append('Set-Cookie', this.serializeCookie('prodobit_refresh_token', '', {
      ...cookieOptions,
      httpOnly: false,
    }));
    
    // Clear CSRF token (HTTP-only)
    c.res.headers.append('Set-Cookie', this.serializeCookie('prodobit_csrf_token', '', {
      ...cookieOptions,
      httpOnly: true,
    }));

    // Clear tenant ID
    c.res.headers.append('Set-Cookie', this.serializeCookie('prodobit_tenant_id', '', {
      ...cookieOptions,
      httpOnly: false,
    }));
  }

  /**
   * Get refresh token from cookie
   */
  static getRefreshTokenFromCookie(c: Context): string | null {
    const cookieHeader = c.req.header('Cookie');
    console.log(`🍪 Reading cookies: Cookie header="${cookieHeader}"`);
    
    const refreshToken = this.getCookieValue(c, 'prodobit_refresh_token');
    console.log(`🍪 Refresh token found: ${refreshToken ? 'YES' : 'NO'}`);
    
    return refreshToken;
  }

  /**
   * Get CSRF token from cookie (HTTP-only)
   */
  static getCSRFTokenFromCookie(c: Context): string | null {
    return this.getCookieValue(c, 'prodobit_csrf_token');
  }

  /**
   * Get access token from cookie
   */
  static getAccessTokenFromCookie(c: Context): string | null {
    return this.getCookieValue(c, 'prodobit_access_token');
  }

  /**
   * Get tenant ID from cookie
   */
  static getTenantIdFromCookie(c: Context): string | null {
    return this.getCookieValue(c, 'prodobit_tenant_id');
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