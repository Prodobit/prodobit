import type { ProdobitClient } from '../client';
import type { User, TokenInfo } from '@prodobit/types';
import type { AuthState, AuthAction } from '../types';
import { ProdobitError } from '../types';
/**
 * Initial authentication state
 */
export declare const initialAuthState: AuthState;
/**
 * Authentication State Reducer
 */
export declare function authReducer(state: AuthState, action: any): AuthState;
/**
 * Authentication State Manager
 * Provides a framework-agnostic way to manage authentication state
 */
export declare class AuthStateManager {
    private state;
    private listeners;
    private client;
    private refreshTimer;
    constructor(client: ProdobitClient);
    /**
     * Subscribe to auth state changes
     */
    subscribe(listener: (state: AuthState) => void): () => void;
    /**
     * Get current auth state
     */
    getState(): AuthState;
    /**
     * Update state and notify listeners
     */
    private setState;
    /**
     * Initialize authentication from stored token
     */
    initialize(): Promise<void>;
    /**
     * Login with OTP
     */
    loginWithOTP(email: string, tenantId?: string): Promise<{
        success: boolean;
        expiresAt?: string;
        error?: string;
    }>;
    /**
     * Verify OTP and complete login
     */
    verifyOTP(email: string, code: string, tenantId?: string): Promise<{
        success: boolean;
        user?: User;
        error?: string;
    }>;
    /**
     * Refresh authentication token
     */
    refreshToken(): Promise<void>;
    /**
     * Logout user
     */
    logout(allDevices?: boolean): Promise<void>;
    /**
     * Set current tenant
     */
    setTenant(tenantId: string): void;
    /**
     * Clear authentication error
     */
    clearError(): void;
    /**
     * Setup automatic token refresh
     */
    private setupAutoRefresh;
    /**
     * Clear refresh timer
     */
    private clearRefreshTimer;
    /**
     * Cleanup resources
     */
    destroy(): void;
}
/**
 * Authentication helpers for different frameworks
 */
export declare const authHelpers: {
    /**
     * React hooks compatible state selector
     */
    createStateSelector: <T>(selector: (state: AuthState) => T) => (state: AuthState) => T;
    /**
     * Common state selectors
     */
    selectors: {
        isAuthenticated: (state: AuthState) => boolean;
        isLoading: (state: AuthState) => boolean;
        isError: (state: AuthState) => boolean;
        user: (state: AuthState) => object | null | undefined;
        token: (state: AuthState) => object | null | undefined;
        error: (state: AuthState) => object | null | undefined;
        tenantId: (state: AuthState) => string | null | undefined;
        isReady: (state: AuthState) => boolean;
        hasUser: (state: AuthState) => boolean;
        hasTenant: (state: AuthState) => boolean;
        hasAuthError: (state: AuthState) => boolean;
        hasNetworkError: (state: AuthState) => boolean;
        hasValidationError: (state: AuthState) => boolean;
    };
    /**
     * Action creators for external state management
     */
    actions: {
        startAuth: () => AuthAction;
        authSuccess: (user: User, token: TokenInfo) => AuthAction;
        authError: (error: ProdobitError) => AuthAction;
        logout: () => AuthAction;
        refreshToken: (token: TokenInfo) => AuthAction;
        setTenant: (tenantId: string) => AuthAction;
        clearError: () => AuthAction;
    };
};
/**
 * Token management utilities
 */
export declare const tokenUtils: {
    /**
     * Check if token is expiring soon
     */
    isExpiringSoon: (token: TokenInfo, thresholdMinutes?: number) => boolean;
    /**
     * Get time until expiration
     */
    getTimeUntilExpiration: (token: TokenInfo) => number;
    /**
     * Format expiration time
     */
    formatExpiration: (token: TokenInfo) => string;
    /**
     * Decode token payload (without verification)
     */
    decodeTokenPayload: (token: string) => any | null;
};
//# sourceMappingURL=auth-state.d.ts.map