// Authentication State Management Helpers

import type { TokenInfo, User } from "@prodobit/types";
import type { ProdobitClient } from "../client";
import type { AuthAction, AuthState } from "../types";
import { ProdobitError } from "../types";

/**
 * Initial authentication state
 */
export const initialAuthState: AuthState = {
  isAuthenticated: false,
  isLoading: false,
  isError: false,
  user: null,
  token: null,
  error: null,
  tenantId: null,
};

/**
 * Authentication State Reducer
 */
export function authReducer(state: AuthState, action: AuthAction): AuthState {
  switch (action.type) {
    case "AUTH_START":
      return {
        ...state,
        isLoading: true,
        isError: false,
        error: null,
      };

    case "AUTH_SUCCESS":
      return {
        ...state,
        isLoading: false,
        isError: false,
        isAuthenticated: true,
        user: action.payload.user,
        token: action.payload.token,
        tenantId: action.payload.token.tenantId || null,
        error: null,
      };

    case "AUTH_ERROR":
      return {
        ...state,
        isLoading: false,
        isError: true,
        isAuthenticated: false,
        user: null,
        token: null,
        tenantId: null,
        error:
          typeof action.payload.error === "string"
            ? new Error(action.payload.error)
            : action.payload.error,
      };

    case "AUTH_LOGOUT":
      return {
        ...initialAuthState,
      };

    case "TOKEN_REFRESH":
      return {
        ...state,
        token: action.payload.token,
        tenantId: action.payload.token.tenantId || state.tenantId,
        error: (state.error as any)?.isAuthError?.() ? null : state.error, // Clear auth errors on successful refresh
      };

    case "SET_TENANT":
      return {
        ...state,
        tenantId: action.payload.tenantId,
      };

    case "CLEAR_ERROR":
      return {
        ...state,
        isError: false,
        error: null,
      };

    default:
      return state;
  }
}

/**
 * Authentication State Manager
 * Provides a framework-agnostic way to manage authentication state
 */
export class AuthStateManager {
  private state: AuthState = initialAuthState;
  private listeners = new Set<(state: AuthState) => void>();
  private client: ProdobitClient;
  private refreshTimer: ReturnType<typeof setTimeout> | null = null;
  private isInitialized = false;

  constructor(client: ProdobitClient) {
    this.client = client;
    this.setupAutoRefresh();
  }

  /**
   * Subscribe to auth state changes
   */
  subscribe(listener: (state: AuthState) => void): () => void {
    this.listeners.add(listener);
    // Immediately call with current state
    listener(this.state);

    return () => {
      this.listeners.delete(listener);
    };
  }

  /**
   * Get current auth state
   */
  getState(): AuthState {
    return this.state;
  }

  /**
   * Update state and notify listeners
   */
  private setState(action: AuthAction): void {
    const newState = authReducer(this.state, action);
    const hasChanged = newState !== this.state;

    this.state = newState;

    if (hasChanged) {
      this.listeners.forEach((listener) => listener(this.state));
    }
  }

  /**
   * Initialize authentication from stored token
   */
  async initialize(): Promise<void> {
    // Prevent multiple initializations
    if (this.isInitialized) {
      return;
    }
    this.isInitialized = true;

    // Try to get current user to check if we have valid session
    try {
      this.setState({ type: "AUTH_START" });
      
      // Check if we have a valid token first
      const currentToken = this.client.getTokenInfo();
      const isTokenValid = this.client.isTokenValid();
      
      // Only refresh if we don't have a valid token
      if (!currentToken || !isTokenValid) {
        try {
          await this.client.refreshToken();
        } catch (error) {
          // If refresh fails, we're not authenticated
          this.setState({ type: "AUTH_LOGOUT" });
          return;
        }
      }

      // Get current user info
      const userResponse = await this.client.getCurrentUser();

      if (userResponse.success && userResponse.data) {
        this.setState({
          type: "AUTH_SUCCESS",
          payload: {
            user: userResponse.data.user,
            token: this.client.getTokenInfo()!,
          },
        });
      } else {
        throw ProdobitError.unauthorized("Failed to get user info");
      }
    } catch (error) {
      this.setState({
        type: "AUTH_ERROR",
        payload: {
          error:
            error instanceof ProdobitError
              ? error
              : ProdobitError.serverError(
                  "Authentication initialization failed"
                ),
        },
      });
    }
  }

  /**
   * Login with OTP
   */
  async loginWithOTP(
    email: string,
    tenantId?: string
  ): Promise<{ success: boolean; expiresAt?: string; error?: string }> {
    try {
      this.setState({ type: "AUTH_START" });

      const response = await this.client.requestOTP({ email, tenantId });

      if (response.success) {
        return {
          success: true,
          expiresAt: response.expiresAt,
        };
      } else {
        const error = ProdobitError.badRequest("Failed to send OTP");
        this.setState({ type: "AUTH_ERROR", payload: { error } });
        return {
          success: false,
          error: error.message,
        };
      }
    } catch (error) {
      const authError =
        error instanceof ProdobitError
          ? error
          : ProdobitError.serverError("OTP request failed");

      this.setState({ type: "AUTH_ERROR", payload: { error: authError } });
      return {
        success: false,
        error: authError.message,
      };
    }
  }

  /**
   * Verify OTP and complete login
   */
  async verifyOTP(
    email: string,
    code: string,
    tenantId?: string
  ): Promise<{ success: boolean; user?: User; error?: string }> {
    try {
      this.setState({ type: "AUTH_START" });

      const response = await this.client.verifyOTP({ email, code, tenantId });

      if (response.success && response.data) {
        const token = this.client.getTokenInfo();
        if (token) {
          this.setState({
            type: "AUTH_SUCCESS",
            payload: {
              user: response.data.user,
              token,
            },
          });

          return {
            success: true,
            user: response.data.user,
          };
        }
      }

      const error = ProdobitError.unauthorized("OTP verification failed");
      this.setState({ type: "AUTH_ERROR", payload: { error } });
      return {
        success: false,
        error: error.message,
      };
    } catch (error) {
      const authError =
        error instanceof ProdobitError
          ? error
          : ProdobitError.unauthorized("OTP verification failed");

      this.setState({ type: "AUTH_ERROR", payload: { error: authError } });
      return {
        success: false,
        error: authError.message,
      };
    }
  }

  /**
   * Refresh authentication token
   */
  async refreshToken(): Promise<void> {
    try {
      const response = await this.client.refreshToken();

      if (response.success && response.data) {
        const token = this.client.getTokenInfo();
        if (token) {
          this.setState({
            type: "TOKEN_REFRESH",
            payload: { token },
          });
          this.setupAutoRefresh(); // Reset refresh timer
        }
      } else {
        throw ProdobitError.unauthorized("Token refresh failed");
      }
    } catch (error) {
      const authError =
        error instanceof ProdobitError
          ? error
          : ProdobitError.unauthorized("Token refresh failed");

      this.setState({ type: "AUTH_ERROR", payload: { error: authError } });
      throw authError;
    }
  }

  /**
   * Logout user
   */
  async logout(allDevices = false): Promise<void> {
    try {
      await this.client.logout({ allDevices });
    } catch (error) {
      // Log error but still clear local state
      console.warn("Logout API call failed:", error);
    } finally {
      this.clearRefreshTimer();
      this.setState({ type: "AUTH_LOGOUT" });
    }
  }

  /**
   * Set current tenant
   */
  setTenant(tenantId: string): void {
    this.setState({
      type: "SET_TENANT",
      payload: { tenantId },
    });
  }

  /**
   * Clear authentication error
   */
  clearError(): void {
    this.setState({ type: "CLEAR_ERROR" });
  }

  /**
   * Setup automatic token refresh
   */
  private setupAutoRefresh(): void {
    this.clearRefreshTimer();

    const token = this.client.getTokenInfo();
    if (!token) return;

    // Refresh 5 minutes before expiration
    const refreshTime = token.expiresAt.getTime() - Date.now() - 5 * 60 * 1000;

    if (refreshTime > 0) {
      this.refreshTimer = setTimeout(async () => {
        try {
          await this.refreshToken();
        } catch (error) {
          console.warn("Automatic token refresh failed:", error);
          // If refresh fails, logout user to force re-authentication
          this.setState({ type: "AUTH_LOGOUT" });
        }
      }, refreshTime);
    }
  }

  /**
   * Clear refresh timer
   */
  private clearRefreshTimer(): void {
    if (this.refreshTimer) {
      clearTimeout(this.refreshTimer);
      this.refreshTimer = null;
    }
  }

  /**
   * Cleanup resources
   */
  destroy(): void {
    this.clearRefreshTimer();
    this.listeners.clear();
  }
}

/**
 * Authentication helpers for different frameworks
 */
export const authHelpers = {
  /**
   * React hooks compatible state selector
   */
  createStateSelector:
    <T>(selector: (state: AuthState) => T) =>
    (state: AuthState): T =>
      selector(state),

  /**
   * Common state selectors
   */
  selectors: {
    isAuthenticated: (state: AuthState) => state.isAuthenticated,
    isLoading: (state: AuthState) => state.isLoading,
    isError: (state: AuthState) => state.isError,
    user: (state: AuthState) => state.user,
    token: (state: AuthState) => state.token,
    error: (state: AuthState) => state.error,
    tenantId: (state: AuthState) => state.tenantId,

    // Derived state
    isReady: (state: AuthState) => !state.isLoading && !state.isError,
    hasUser: (state: AuthState) => state.isAuthenticated && !!state.user,
    hasTenant: (state: AuthState) => !!state.tenantId,

    // Error type checks
    hasAuthError: (state: AuthState) => !!(state.error as any)?.isAuthError?.(),
    hasNetworkError: (state: AuthState) =>
      !!(state.error as any)?.isNetworkError?.(),
    hasValidationError: (state: AuthState) =>
      !!(state.error as any)?.isValidationError?.(),
  },

  /**
   * Action creators for external state management
   */
  actions: {
    startAuth: (): AuthAction => ({ type: "AUTH_START" }),
    authSuccess: (user: User, token: TokenInfo): AuthAction => ({
      type: "AUTH_SUCCESS",
      payload: { user, token },
    }),
    authError: (error: ProdobitError): AuthAction => ({
      type: "AUTH_ERROR",
      payload: { error },
    }),
    logout: (): AuthAction => ({ type: "AUTH_LOGOUT" }),
    refreshToken: (token: TokenInfo): AuthAction => ({
      type: "TOKEN_REFRESH",
      payload: { token },
    }),
    setTenant: (tenantId: string): AuthAction => ({
      type: "SET_TENANT",
      payload: { tenantId },
    }),
    clearError: (): AuthAction => ({ type: "CLEAR_ERROR" }),
  },
};

/**
 * Token management utilities
 */
export const tokenUtils = {
  /**
   * Check if token is expiring soon
   */
  isExpiringSoon: (token: TokenInfo, thresholdMinutes = 5): boolean => {
    const threshold = thresholdMinutes * 60 * 1000;
    return token.expiresAt.getTime() - Date.now() < threshold;
  },

  /**
   * Get time until expiration
   */
  getTimeUntilExpiration: (token: TokenInfo): number => {
    return Math.max(0, token.expiresAt.getTime() - Date.now());
  },

  /**
   * Format expiration time
   */
  formatExpiration: (token: TokenInfo): string => {
    const timeLeft = tokenUtils.getTimeUntilExpiration(token);
    const minutes = Math.floor(timeLeft / (60 * 1000));
    const hours = Math.floor(minutes / 60);

    if (hours > 0) {
      return `${hours}h ${minutes % 60}m`;
    }
    return `${minutes}m`;
  },

  /**
   * Decode token payload (without verification)
   */
  decodeTokenPayload: (token: string): any | null => {
    try {
      const payload = token.split(".")[1];
      return JSON.parse(atob(payload));
    } catch {
      return null;
    }
  },
};
