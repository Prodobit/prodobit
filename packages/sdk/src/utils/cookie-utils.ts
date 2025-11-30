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

// Global cookie prefix store
let globalCookiePrefix: string | undefined;

/**
 * Set global cookie prefix (called from client initialization)
 */
export function setCookiePrefix(prefix: string | undefined): void {
  globalCookiePrefix = prefix;
}

/**
 * Get cookie prefix from multiple sources in priority order:
 * 1. Global prefix (set via setCookiePrefix from client config)
 * 2. Environment variable
 * 3. Window object (browser only)
 * Defaults to 'prodobit' if not set
 */
function getCookiePrefix(): string {
  // First priority: global prefix from client config
  if (globalCookiePrefix) {
    return globalCookiePrefix;
  }
  // Second priority: environment variable
  if (typeof process !== 'undefined' && process.env?.COOKIE_PREFIX) {
    return process.env.COOKIE_PREFIX;
  }
  // Third priority: window object (browser)
  if (typeof window !== 'undefined' && (window as any).__COOKIE_PREFIX__) {
    return (window as any).__COOKIE_PREFIX__;
  }
  return 'prodobit';
}

/**
 * Generate cookie name with dynamic prefix
 */
function getCookieName(name: string): string {
  return `${getCookiePrefix()}_${name}`;
}

/**
 * Token-specific cookie management
 */
export const tokenCookies = {
  // Cookie names - now dynamic
  get ACCESS_TOKEN() { return getCookieName('access_token'); },
  get REFRESH_TOKEN() { return getCookieName('refresh_token'); },
  get CSRF_TOKEN() { return getCookieName('csrf_token'); }, // This will be HTTP-only from server
  get TENANT_ID() { return getCookieName('tenant_id'); },

  /**
   * Store auth tokens in cookies
   * - Access token: accessible cookie (for React to read auth state)
   * - Refresh token: accessible cookie (for client-side refresh)
   * - CSRF token: HTTP-only (set by server, used in headers)
   */
  setTokens(tokenInfo: TokenInfo): void {
    // Determine production environment and domain from current hostname
    const hostname = typeof window !== 'undefined' ? window.location.hostname : '';
    const isProduction = process.env.NODE_ENV === 'production' ||
                         (hostname && !hostname.includes('localhost'));

    // Extract root domain for cookie sharing across subdomains
    // e.g., app.assetspotter.com -> .assetspotter.com
    let domain: string | undefined;
    if (isProduction && hostname) {
      const parts = hostname.split('.');
      if (parts.length >= 2) {
        // Get last two parts (e.g., assetspotter.com)
        domain = '.' + parts.slice(-2).join('.');
      }
    }

    const cookieOptions: CookieOptions = {
      path: '/',
      secure: isProduction || false,
      sameSite: 'lax',
      httpOnly: false, // These need to be accessible to JS
      domain: domain
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
   * Returns token info if either access token OR refresh token exists
   * This allows token refresh even after access token cookie expires
   */
  getTokens(): TokenInfo | undefined {
    const accessToken = cookieUtils.get(this.ACCESS_TOKEN);
    const refreshToken = cookieUtils.get(this.REFRESH_TOKEN);
    const tenantId = cookieUtils.get(this.TENANT_ID);

    // If neither token exists, return undefined
    if (!accessToken && !refreshToken) {
      return undefined;
    }

    // Try to decode expiration from access token
    let expiresAt: Date | undefined;
    if (accessToken) {
      try {
        const payload = JSON.parse(atob(accessToken.split('.')[1]));
        if (payload.exp) {
          expiresAt = new Date(payload.exp * 1000);
        }
      } catch {
        // If we can't decode, token might be expired/invalid
        expiresAt = new Date(0); // Mark as expired to trigger refresh
      }
    } else {
      // No access token but have refresh token - mark as expired to trigger refresh
      expiresAt = new Date(0);
    }

    return {
      accessToken: accessToken || '', // Empty string if no access token
      refreshToken,
      expiresAt: expiresAt || new Date(0),
      tenantId,
    } as TokenInfo;
  },

  /**
   * Clear all auth cookies
   */
  clearTokens(): void {
    // Determine production environment and domain from current hostname
    const hostname = typeof window !== 'undefined' ? window.location.hostname : '';
    const isProduction = process.env.NODE_ENV === 'production' ||
                         (hostname && !hostname.includes('localhost'));

    // Extract root domain for cookie clearing
    let domain: string | undefined;
    if (isProduction && hostname) {
      const parts = hostname.split('.');
      if (parts.length >= 2) {
        domain = '.' + parts.slice(-2).join('.');
      }
    }

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
   * Returns true if either:
   * - Access token exists and is not expired
   * - Refresh token exists (can be used to get new access token)
   */
  hasValidTokens(): boolean {
    const accessToken = cookieUtils.get(this.ACCESS_TOKEN);
    const refreshToken = cookieUtils.get(this.REFRESH_TOKEN);

    // If we have a refresh token, user can be authenticated (via token refresh)
    if (refreshToken) {
      return true;
    }

    // No refresh token, check access token
    if (!accessToken) return false;

    // Check access token expiration
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