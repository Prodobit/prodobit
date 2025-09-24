import { ProdobitError, TokenInfo, type ProdobitClientConfig, type RequestConfig } from "../types";
import { tokenCookies } from "../utils/cookie-utils";

export abstract class BaseClient {
  protected baseUrl: string;
  protected apiKey?: string;
  protected timeout: number;
  protected defaultHeaders: Record<string, string>;
  protected tokenInfo?: TokenInfo;
  protected autoRefresh: boolean;
  protected refreshPromise?: Promise<void>;

  constructor(config: ProdobitClientConfig) {
    this.baseUrl = config.baseUrl.replace(/\/$/, "");
    this.apiKey = config.apiKey;
    this.timeout = config.timeout ?? 30000;
    this.autoRefresh = config.autoRefresh ?? true;
    this.defaultHeaders = {
      "Content-Type": "application/json",
      ...config.headers,
    };

    if (this.apiKey) {
      this.defaultHeaders["Authorization"] = `Bearer ${this.apiKey}`;
    }

    // Load token from cookies if available
    this.tokenInfo = this.loadTokenFromCookies();
  }

  protected async request<T>(
    method: string,
    path: string,
    data?: unknown,
    config?: RequestConfig
  ): Promise<T> {
    // Check if token needs refresh before making the request
    if (this.tokenInfo && this.autoRefresh && this.isTokenExpiring()) {
      await this.ensureTokenRefresh();
    }

    const url = `${this.baseUrl}${path}`;
    const headers = { ...this.defaultHeaders, ...config?.headers };
    const timeout = config?.timeout ?? this.timeout;

    // Add access token and CSRF token if available
    if (this.tokenInfo && !config?.skipAuth) {
      headers["Authorization"] = `Bearer ${this.tokenInfo.accessToken}`;
      
      // CSRF token is now HTTP-only cookie, browser will send it automatically
      // We don't need to set it manually in headers
    }

    const controller = new AbortController();
    const timeoutId = setTimeout(() => controller.abort(), timeout);

    try {
      const response = await fetch(url, {
        method,
        headers,
        body: data ? JSON.stringify(data) : null,
        signal: controller.signal,
        credentials: 'include', // Include cookies for CSRF token
      });

      clearTimeout(timeoutId);

      // Handle 401 with auto-refresh
      if (
        response.status === 401 &&
        this.tokenInfo &&
        this.autoRefresh &&
        !config?.skipAuth
      ) {
        await this.ensureTokenRefresh();
        // Retry the request with new token
        return this.request(method, path, data, { ...config, skipAuth: false });
      }

      if (!response.ok) {
        const errorData = await response.json().catch(() => ({}));
        const message =
          errorData.error?.message || errorData.message || response.statusText;
        const code = errorData.error?.code || errorData.code;
        const details = errorData.error?.details || errorData.details;

        // Use factory methods for common HTTP status codes
        switch (response.status) {
          case 400:
            throw ProdobitError.badRequest(message, details);
          case 401:
            throw ProdobitError.unauthorized(message);
          case 403:
            throw ProdobitError.forbidden(message);
          case 404:
            throw ProdobitError.notFound("Resource");
          case 409:
            throw ProdobitError.conflict(message, details);
          case 422:
            throw ProdobitError.validationError(message, details);
          case 500:
            throw ProdobitError.serverError(message, details);
          default:
            throw new ProdobitError(message, response.status, code, details);
        }
      }

      return await response.json();
    } catch (error) {
      clearTimeout(timeoutId);

      if (error instanceof ProdobitError) {
        throw error;
      }

      // Handle different error types
      if (error instanceof Error) {
        if (error.name === "AbortError") {
          throw ProdobitError.timeout("Request was aborted due to timeout");
        }
        if (error.message.includes("fetch")) {
          throw ProdobitError.networkError(`Network error: ${error.message}`);
        }
        throw ProdobitError.serverError(`Unexpected error: ${error.message}`);
      }

      throw ProdobitError.serverError("Unknown error occurred");
    }
  }

  public async makeRequest<T = unknown>(
    method: string,
    path: string,
    data?: unknown,
    config?: RequestConfig
  ): Promise<T> {
    return this.request<T>(method, path, data, config);
  }

  private isTokenExpiring(): boolean {
    if (!this.tokenInfo) return false;

    // Check if token expires in the next 5 minutes
    const fiveMinutesFromNow = new Date(Date.now() + 5 * 60 * 1000);
    const isExpiring = this.tokenInfo.expiresAt <= fiveMinutesFromNow;
    
    if (isExpiring) {
      console.log('Token expiring soon:', {
        expiresAt: this.tokenInfo.expiresAt,
        now: new Date(),
        fiveMinutesFromNow,
        isExpiring
      });
    }
    
    return isExpiring;
  }

  private async ensureTokenRefresh(): Promise<void> {
    if (this.refreshPromise) {
      return this.refreshPromise;
    }

    this.refreshPromise = this.performTokenRefresh();
    try {
      await this.refreshPromise;
    } finally {
      this.refreshPromise = undefined;
    }
  }

  private async performTokenRefresh(): Promise<void> {
    try {
      const response = await this.request<any>(
        "POST",
        "/api/v1/auth/refresh",
        { 
          refreshToken: this.tokenInfo?.refreshToken 
        },
        { skipAuth: true }
      );

      if (response.success && response.data) {
        this.setTokenInfo({
          accessToken: response.data.session.accessToken,
          refreshToken: response.data.refreshToken || this.tokenInfo?.refreshToken,
          expiresAt: new Date(response.data.session.expiresAt),
          csrfToken: response.data.session.csrfToken,
          tenantId: this.tokenInfo?.tenantId, // Preserve current tenantId
        });
      }
    } catch (error) {
      // Clear token on refresh failure
      this.clearTokenInfo();
      throw error;
    }
  }

  // Token management methods - now using cookies
  private loadTokenFromCookies(): TokenInfo | undefined {
    if (typeof window === 'undefined') return undefined; // SSR guard
    
    try {
      const tokenInfo = tokenCookies.getTokens();
      
      // Check if token is expired
      if (tokenInfo?.expiresAt && tokenInfo.expiresAt <= new Date()) {
        this.clearTokenInfo();
        return undefined;
      }
      
      return tokenInfo;
    } catch {
      this.clearTokenInfo();
      return undefined;
    }
  }

  setTokenInfo(tokenInfo: TokenInfo): void {
    this.tokenInfo = tokenInfo;
    
    if (typeof window !== 'undefined') {
      try {
        // Store tokens in cookies now
        tokenCookies.setTokens(tokenInfo);
      } catch (error) {
        console.warn('Failed to store tokens in cookies:', error);
        // Fallback to memory only
      }
    }
  }

  getTokenInfo(): TokenInfo | undefined {
    // Always return from memory (already loaded from cookies in constructor)
    return this.tokenInfo;
  }

  clearTokenInfo(): void {
    this.tokenInfo = undefined;
    
    if (typeof window !== 'undefined') {
      try {
        tokenCookies.clearTokens();
      } catch (error) {
        console.warn('Failed to clear tokens from cookies:', error);
      }
    }
  }


  getCurrentTenantId(): string | undefined {
    if (!this.tokenInfo?.accessToken) {
      return undefined;
    }

    try {
      // Decode JWT token to get tenant ID
      const payload = JSON.parse(
        atob(this.tokenInfo.accessToken.split(".")[1])
      );
      return payload.tenantId;
    } catch (error) {
      return undefined;
    }
  }

  isAuthenticated(): boolean {
    return !!this.tokenInfo?.accessToken && this.isTokenValid();
  }

  isTokenValid(): boolean {
    if (!this.tokenInfo) return false;
    return this.tokenInfo.expiresAt > new Date();
  }

  getAccessToken(): string | undefined {
    return this.tokenInfo?.accessToken;
  }

  // Utility methods
  setApiKey(apiKey: string): void {
    this.apiKey = apiKey;
    this.defaultHeaders["Authorization"] = `Bearer ${apiKey}`;
  }

  removeApiKey(): void {
    this.apiKey = undefined;
    delete this.defaultHeaders["Authorization"];
  }
}