import type { RequestConfig } from '../types';
import { ProdobitError } from '../types';
import { ValidationMiddleware, type ValidationConfig } from './validators';
/**
 * Interceptor Function Types
 */
export type RequestInterceptor = (method: string, path: string, data: any, config?: RequestConfig) => Promise<{
    method: string;
    path: string;
    data: any;
    config?: RequestConfig;
}> | {
    method: string;
    path: string;
    data: any;
    config?: RequestConfig;
};
export type ResponseInterceptor = (response: any, request: {
    method: string;
    path: string;
    data?: any;
    config?: RequestConfig;
}) => Promise<any> | any;
export type ErrorInterceptor = (error: ProdobitError, request: {
    method: string;
    path: string;
    data?: any;
    config?: RequestConfig;
}) => Promise<ProdobitError | void> | ProdobitError | void;
/**
 * Interceptor Manager
 */
export declare class InterceptorManager {
    private requestInterceptors;
    private responseInterceptors;
    private errorInterceptors;
    private validationMiddleware;
    private config;
    constructor(config?: Partial<ValidationConfig>);
    /**
     * Add request interceptor
     */
    addRequestInterceptor(interceptor: RequestInterceptor): () => void;
    /**
     * Add response interceptor
     */
    addResponseInterceptor(interceptor: ResponseInterceptor): () => void;
    /**
     * Add error interceptor
     */
    addErrorInterceptor(interceptor: ErrorInterceptor): () => void;
    /**
     * Process request through interceptors
     */
    processRequest(method: string, path: string, data: any, config?: RequestConfig): Promise<{
        method: string;
        path: string;
        data: any;
        config: RequestConfig | undefined;
    }>;
    /**
     * Process response through interceptors
     */
    processResponse(response: any, request: {
        method: string;
        path: string;
        data?: any;
        config?: RequestConfig;
    }): Promise<any>;
    /**
     * Process error through interceptors
     */
    processError(error: ProdobitError, request: {
        method: string;
        path: string;
        data?: any;
        config?: RequestConfig;
    }): Promise<ProdobitError>;
    /**
     * Get validation middleware for manual registration
     */
    getValidationMiddleware(): ValidationMiddleware;
}
/**
 * Built-in Interceptors
 */
export declare const builtInInterceptors: {
    /**
     * Request logging interceptor
     */
    requestLogger: (options?: {
        logLevel?: "debug" | "info" | "warn";
    }) => RequestInterceptor;
    /**
     * Response logging interceptor
     */
    responseLogger: (options?: {
        logLevel?: "debug" | "info" | "warn";
        includeData?: boolean;
    }) => ResponseInterceptor;
    /**
     * Error logging interceptor
     */
    errorLogger: (options?: {
        logLevel?: "error" | "warn" | "debug";
    }) => ErrorInterceptor;
    /**
     * Request transformation interceptor
     */
    requestTransformer: (transformer: (data: any) => any) => RequestInterceptor;
    /**
     * Response transformation interceptor
     */
    responseTransformer: (transformer: (response: any) => any) => ResponseInterceptor;
    /**
     * Authentication header injection interceptor
     */
    authHeaderInjector: (getToken: () => string | null) => RequestInterceptor;
    /**
     * Retry interceptor for failed requests
     */
    retryInterceptor: (options?: {
        maxRetries?: number;
        retryDelay?: number;
        retryCondition?: (error: ProdobitError) => boolean;
    }) => ErrorInterceptor;
    /**
     * Rate limiting interceptor
     */
    rateLimitInterceptor: (options?: {
        requestsPerSecond?: number;
        burstLimit?: number;
    }) => RequestInterceptor;
    /**
     * Cache busting interceptor
     */
    cacheBusterInterceptor: (options?: {
        methods?: string[];
        paramName?: string;
    }) => RequestInterceptor;
    /**
     * Request timeout interceptor
     */
    timeoutInterceptor: (timeoutMs?: number) => RequestInterceptor;
};
/**
 * Interceptor presets for common use cases
 */
export declare const interceptorPresets: {
    /**
     * Development preset with comprehensive logging
     */
    development: (interceptorManager: InterceptorManager) => void;
    /**
     * Production preset with minimal logging and retry logic
     */
    production: (interceptorManager: InterceptorManager) => void;
    /**
     * Testing preset with minimal overhead
     */
    testing: (interceptorManager: InterceptorManager) => void;
    /**
     * Offline-first preset with aggressive caching and retry
     */
    offlineFirst: (interceptorManager: InterceptorManager) => void;
};
//# sourceMappingURL=middleware.d.ts.map