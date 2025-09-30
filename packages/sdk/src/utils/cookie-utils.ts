// Cookie management utilities for auth tokens
import type { TokenInfo } from "../types";

export interface CookieOptions {
  maxAge?: number; // in seconds
  expires?: Date;
  domain?: string;
  path?: string;
  secure?: boolean;
  sameSite?: 'strict' | 'lax' | 'none';
  httpOnly?: boolean;
}

/**
 * Cookie utilities for token management
 */
export const cookieUtils = {
  /**
   * Set a cookie with proper options
   */
  set(name: string, value: string, options: CookieOptions = {}): void {
    if (typeof document === 'undefined') return; // SSR guard

    const {
      maxAge,
      expires,
      domain,
      path = '/',
      secure,
      sameSite = 'lax',
      httpOnly = false
    } = options;

    let cookieString = `${encodeURIComponent(name)}=${encodeURIComponent(value)}`;

    if (maxAge !== undefined) {
      cookieString += `; Max-Age=${maxAge}`;
    }

    if (expires) {
      cookieString += `; Expires=${expires.toUTCString()}`;
    }

    if (domain) {
      cookieString += `; Domain=${domain}`;
    }

    cookieString += `; Path=${path}`;

    if (secure) {
      cookieString += '; Secure';
    }

    cookieString += `; SameSite=${sameSite}`;

    if (httpOnly) {
      cookieString += '; HttpOnly';
    }

    document.cookie = cookieString;
  },

  /**
   * Get a cookie value by name
   */
  get(name: string): string | undefined {
    if (typeof document === 'undefined') return undefined; // SSR guard

    const nameEQ = encodeURIComponent(name) + '=';
    const cookies = document.cookie.split(';');

    for (let cookie of cookies) {
      cookie = cookie.trim();
      if (cookie.startsWith(nameEQ)) {
        return decodeURIComponent(cookie.substring(nameEQ.length));
      }
    }

    return undefined;
  },

  /**
   * Remove a cookie
   */
  remove(name: string, options: Pick<CookieOptions, 'domain' | 'path'> = {}): void {
    this.set(name, '', {
      ...options,
      maxAge: 0,
      expires: new Date(0)
    });
  },

  /**
   * Check if a cookie exists
   */
  exists(name: string): boolean {
    return this.get(name) !== undefined;
  }
};

/**
 * Token-specific cookie management
 */
export const tokenCookies = {
  // Cookie names
  ACCESS_TOKEN: 'prodobit_access_token',
  REFRESH_TOKEN: 'prodobit_refresh_token',
  CSRF_TOKEN: 'prodobit_csrf_token', // This will be HTTP-only from server
  TENANT_ID: 'prodobit_tenant_id',

  /**
   * Store auth tokens in cookies
   * - Access token: accessible cookie (for React to read auth state)
   * - Refresh token: accessible cookie (for client-side refresh)
   * - CSRF token: HTTP-only (set by server, used in headers)
   */
  setTokens(tokenInfo: TokenInfo): void {
    // Check both NODE_ENV and domain to determine production environment
    const isProduction = process.env.NODE_ENV === 'production' || 
                         (typeof window !== 'undefined' && window.location.hostname.includes('prodobit.com'));
    
    // Use same domain logic as server to prevent duplicates
    const domain = isProduction ? '.prodobit.com' : undefined;
    
    const cookieOptions: CookieOptions = {
      path: '/',
      secure: isProduction, // Only secure in production
      sameSite: 'lax',
      httpOnly: false, // These need to be accessible to JS
      domain: domain // Match server domain setting
    };

    // Calculate maxAge from expiresAt
    const maxAge = tokenInfo.expiresAt 
      ? Math.max(0, Math.floor((tokenInfo.expiresAt.getTime() - Date.now()) / 1000))
      : 60 * 60 * 24; // 24 hours default

    // Set access token (accessible)
    if (tokenInfo.accessToken) {
      cookieUtils.set(this.ACCESS_TOKEN, tokenInfo.accessToken, {
        ...cookieOptions,
        maxAge
      });
    }

    // Set refresh token (accessible) - longer expiry
    if (tokenInfo.refreshToken) {
      cookieUtils.set(this.REFRESH_TOKEN, tokenInfo.refreshToken, {
        ...cookieOptions,
        maxAge: 60 * 60 * 24 * 30 // 30 days
      });
    }

    // Set tenant ID if available
    if (tokenInfo.tenantId) {
      cookieUtils.set(this.TENANT_ID, tokenInfo.tenantId, {
        ...cookieOptions,
        maxAge: 60 * 60 * 24 * 30 // 30 days
      });
    }

    // NOTE: CSRF token will be set by server as HTTP-only cookie
    // We don't set it here, but we'll read it from server responses
  },

  /**
   * Get token info from cookies
   */
  getTokens(): TokenInfo | undefined {
    const accessToken = cookieUtils.get(this.ACCESS_TOKEN);
    const refreshToken = cookieUtils.get(this.REFRESH_TOKEN);
    const tenantId = cookieUtils.get(this.TENANT_ID);

    if (!accessToken) {
      return undefined;
    }

    // Try to decode expiration from access token
    let expiresAt: Date | undefined;
    try {
      const payload = JSON.parse(atob(accessToken.split('.')[1]));
      if (payload.exp) {
        expiresAt = new Date(payload.exp * 1000);
      }
    } catch {
      // If we can't decode, assume a reasonable expiry
      expiresAt = new Date(Date.now() + 60 * 60 * 1000); // 1 hour
    }

    return {
      accessToken,
      refreshToken,
      expiresAt: expiresAt || new Date(Date.now() + 60 * 60 * 1000),
      tenantId,
      // CSRF token is HTTP-only, we can't read it from cookies
      // We'll omit it here since it's optional in TokenInfo
    } as TokenInfo;
  },

  /**
   * Clear all auth cookies
   */
  clearTokens(): void {
    // Check both NODE_ENV and domain to determine production environment
    const isProduction = process.env.NODE_ENV === 'production' || 
                         (typeof window !== 'undefined' && window.location.hostname.includes('prodobit.com'));
    const domain = isProduction ? '.prodobit.com' : undefined;
    
    const cookieOptions = {
      path: '/',
      domain: domain // Use same domain as when setting
    };

    cookieUtils.remove(this.ACCESS_TOKEN, cookieOptions);
    cookieUtils.remove(this.REFRESH_TOKEN, cookieOptions);
    cookieUtils.remove(this.TENANT_ID, cookieOptions);
    
    // Also try to clear from current domain in case of legacy cookies
    if (domain) {
      const currentDomainOptions = { path: '/', domain: undefined };
      cookieUtils.remove(this.ACCESS_TOKEN, currentDomainOptions);
      cookieUtils.remove(this.REFRESH_TOKEN, currentDomainOptions);
      cookieUtils.remove(this.TENANT_ID, currentDomainOptions);
    }
    
    // Note: CSRF token is HTTP-only, cleared by server
  },

  /**
   * Check if user appears to be authenticated based on cookies
   */
  hasValidTokens(): boolean {
    const accessToken = cookieUtils.get(this.ACCESS_TOKEN);
    if (!accessToken) return false;

    // Check token expiration
    try {
      const payload = JSON.parse(atob(accessToken.split('.')[1]));
      if (payload.exp) {
        const expiry = new Date(payload.exp * 1000);
        return expiry > new Date();
      }
    } catch {
      // If we can't decode, assume invalid
      return false;
    }

    return true;
  },

  /**
   * Get current tenant ID from cookie
   */
  getTenantId(): string | undefined {
    return cookieUtils.get(this.TENANT_ID);
  }
};