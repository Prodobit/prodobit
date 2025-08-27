// Request/Response Interceptor Middleware

import type { RequestConfig } from '../types';
import { ProdobitError } from '../types';
import { ValidationMiddleware, type ValidationConfig, defaultValidationConfig } from './validators';

/**
 * Interceptor Function Types
 */
export type RequestInterceptor = (
  method: string, 
  path: string, 
  data: any, 
  config?: RequestConfig
) => Promise<{ method: string; path: string; data: any; config?: RequestConfig }> | { method: string; path: string; data: any; config?: RequestConfig };

export type ResponseInterceptor = (
  response: any,
  request: { method: string; path: string; data?: any; config?: RequestConfig }
) => Promise<any> | any;

export type ErrorInterceptor = (
  error: ProdobitError,
  request: { method: string; path: string; data?: any; config?: RequestConfig }
) => Promise<ProdobitError | void> | ProdobitError | void;

/**
 * Interceptor Manager
 */
export class InterceptorManager {
  private requestInterceptors: RequestInterceptor[] = [];
  private responseInterceptors: ResponseInterceptor[] = [];
  private errorInterceptors: ErrorInterceptor[] = [];
  private validationMiddleware: ValidationMiddleware;
  private config: ValidationConfig;

  constructor(config: Partial<ValidationConfig> = {}) {
    this.config = { ...defaultValidationConfig, ...config };
    this.validationMiddleware = new ValidationMiddleware();
  }

  /**
   * Add request interceptor
   */
  addRequestInterceptor(interceptor: RequestInterceptor): () => void {
    this.requestInterceptors.push(interceptor);
    return () => {
      const index = this.requestInterceptors.indexOf(interceptor);
      if (index > -1) {
        this.requestInterceptors.splice(index, 1);
      }
    };
  }

  /**
   * Add response interceptor
   */
  addResponseInterceptor(interceptor: ResponseInterceptor): () => void {
    this.responseInterceptors.push(interceptor);
    return () => {
      const index = this.responseInterceptors.indexOf(interceptor);
      if (index > -1) {
        this.responseInterceptors.splice(index, 1);
      }
    };
  }

  /**
   * Add error interceptor
   */
  addErrorInterceptor(interceptor: ErrorInterceptor): () => void {
    this.errorInterceptors.push(interceptor);
    return () => {
      const index = this.errorInterceptors.indexOf(interceptor);
      if (index > -1) {
        this.errorInterceptors.splice(index, 1);
      }
    };
  }

  /**
   * Process request through interceptors
   */
  async processRequest(
    method: string, 
    path: string, 
    data: any, 
    config?: RequestConfig
  ): Promise<{ method: string; path: string; data: any; config: RequestConfig | undefined }> {
    let currentRequest = { method, path, data: data || null, config };

    // Run validation if enabled
    if (this.config.enabled && this.config.validateRequests) {
      try {
        await this.validationMiddleware.validateRequest(path, data);
      } catch (error) {
        if (this.config.failOnValidationError) {
          throw error;
        } else if (this.config.logValidationErrors) {
          console.warn('Request validation failed:', error);
        }
      }
    }

    // Run request interceptors
    for (const interceptor of this.requestInterceptors) {
      try {
        const result = await interceptor(
          currentRequest.method,
          currentRequest.path,
          currentRequest.data,
          currentRequest.config
        );
        currentRequest = { ...result, config: result.config || undefined };
      } catch (error) {
        console.error('Request interceptor failed:', error);
        // Continue with other interceptors unless it's a critical error
        if (error instanceof ProdobitError && error.status === 401) {
          throw error; // Re-throw auth errors
        }
      }
    }

    return currentRequest;
  }

  /**
   * Process response through interceptors
   */
  async processResponse(
    response: any,
    request: { method: string; path: string; data?: any; config?: RequestConfig }
  ): Promise<any> {
    let currentResponse = response;

    // Run validation if enabled
    if (this.config.enabled && this.config.validateResponses) {
      try {
        const validationResult = await this.validationMiddleware.validateResponse(
          request.path, 
          currentResponse
        );
        if (!validationResult.isValid && this.config.logValidationErrors) {
          console.warn('Response validation failed:', validationResult.errors);
        }
      } catch (error) {
        if (this.config.logValidationErrors) {
          console.warn('Response validation error:', error);
        }
      }
    }

    // Run response interceptors
    for (const interceptor of this.responseInterceptors) {
      try {
        currentResponse = await interceptor(currentResponse, request);
      } catch (error) {
        console.error('Response interceptor failed:', error);
        // Continue with other interceptors
      }
    }

    return currentResponse;
  }

  /**
   * Process error through interceptors
   */
  async processError(
    error: ProdobitError,
    request: { method: string; path: string; data?: any; config?: RequestConfig }
  ): Promise<ProdobitError> {
    let currentError = error;

    // Run error interceptors
    for (const interceptor of this.errorInterceptors) {
      try {
        const result = await interceptor(currentError, request);
        if (result instanceof ProdobitError) {
          currentError = result;
        } else if (result === undefined) {
          // Interceptor handled the error, continue
          continue;
        }
      } catch (interceptorError) {
        console.error('Error interceptor failed:', interceptorError);
        // Continue with other interceptors
      }
    }

    return currentError;
  }

  /**
   * Get validation middleware for manual registration
   */
  getValidationMiddleware(): ValidationMiddleware {
    return this.validationMiddleware;
  }
}

/**
 * Built-in Interceptors
 */
export const builtInInterceptors = {
  /**
   * Request logging interceptor
   */
  requestLogger: (options: { logLevel?: 'debug' | 'info' | 'warn' } = {}): RequestInterceptor => {
    const logLevel = options.logLevel || 'debug';
    
    return (method, path, data, config) => {
      const logMessage = `[${method}] ${path}`;
      const logData = { data, config };

      switch (logLevel) {
        case 'info':
          console.info(logMessage, logData);
          break;
        case 'warn':
          console.warn(logMessage, logData);
          break;
        default:
          console.debug(logMessage, logData);
      }

      return { method, path, data, config };
    };
  },

  /**
   * Response logging interceptor
   */
  responseLogger: (options: { logLevel?: 'debug' | 'info' | 'warn'; includeData?: boolean } = {}): ResponseInterceptor => {
    const logLevel = options.logLevel || 'debug';
    const includeData = options.includeData ?? true;
    
    return (response, request) => {
      const logMessage = `[${request.method}] ${request.path} - ${response?.success ? 'SUCCESS' : 'FAILED'}`;
      const logData = includeData ? response : { success: response?.success };

      switch (logLevel) {
        case 'info':
          console.info(logMessage, logData);
          break;
        case 'warn':
          console.warn(logMessage, logData);
          break;
        default:
          console.debug(logMessage, logData);
      }

      return response;
    };
  },

  /**
   * Error logging interceptor
   */
  errorLogger: (options: { logLevel?: 'error' | 'warn' | 'debug' } = {}): ErrorInterceptor => {
    const logLevel = options.logLevel || 'error';
    
    return (error, request) => {
      const logMessage = `[${request.method}] ${request.path} - ERROR: ${error.message}`;
      const logData = { error, request };

      switch (logLevel) {
        case 'warn':
          console.warn(logMessage, logData);
          break;
        case 'debug':
          console.debug(logMessage, logData);
          break;
        default:
          console.error(logMessage, logData);
      }

      return error;
    };
  },

  /**
   * Request transformation interceptor
   */
  requestTransformer: (transformer: (data: any) => any): RequestInterceptor => {
    return (method, path, data, config) => {
      const transformedData = data ? transformer(data) : data;
      return { method, path, data: transformedData, config };
    };
  },

  /**
   * Response transformation interceptor
   */
  responseTransformer: (transformer: (response: any) => any): ResponseInterceptor => {
    return (response, request) => {
      return transformer(response);
    };
  },

  /**
   * Authentication header injection interceptor
   */
  authHeaderInjector: (getToken: () => string | null): RequestInterceptor => {
    return (method, path, data, config) => {
      const token = getToken();
      if (token && !config?.skipAuth) {
        const headers = {
          ...config?.headers,
          Authorization: `Bearer ${token}`,
        };
        config = { ...config, headers };
      }
      return { method, path, data, config };
    };
  },

  /**
   * Retry interceptor for failed requests
   */
  retryInterceptor: (options: { 
    maxRetries?: number; 
    retryDelay?: number; 
    retryCondition?: (error: ProdobitError) => boolean;
  } = {}): ErrorInterceptor => {
    const maxRetries = options.maxRetries || 3;
    const retryDelay = options.retryDelay || 1000;
    const retryCondition = options.retryCondition || ((error) => 
      error.isNetworkError() || (error.status && error.status >= 500)
    );

    return (error, request) => {
      const retryCount = (request.config as any)?._retryCount || 0;
      
      if (retryCount < maxRetries && retryCondition(error)) {
        // Add retry metadata
        const newConfig = {
          ...request.config,
          _retryCount: retryCount + 1,
          _retryDelay: retryDelay * Math.pow(2, retryCount), // Exponential backoff
        };

        // Schedule retry (this would need to be handled by the calling code)
        console.info(`Retrying request (${retryCount + 1}/${maxRetries}) after ${newConfig._retryDelay}ms`);
        
        // Return modified error with retry info
        return new ProdobitError(
          `${error.message} (retry ${retryCount + 1}/${maxRetries})`,
          error.status,
          'RETRY_SCHEDULED',
          { originalError: error, retryConfig: newConfig }
        );
      }

      return error;
    };
  },

  /**
   * Rate limiting interceptor
   */
  rateLimitInterceptor: (options: { 
    requestsPerSecond?: number;
    burstLimit?: number;
  } = {}): RequestInterceptor => {
    const requestsPerSecond = options.requestsPerSecond || 10;
    const burstLimit = options.burstLimit || 20;
    
    let tokens = burstLimit;
    let lastRefill = Date.now();

    return async (method, path, data, config) => {
      const now = Date.now();
      const timePassed = now - lastRefill;
      
      // Refill tokens based on time passed
      tokens = Math.min(burstLimit, tokens + (timePassed * requestsPerSecond / 1000));
      lastRefill = now;

      if (tokens < 1) {
        throw ProdobitError.serverError('Rate limit exceeded', { 
          retryAfter: Math.ceil((1 - tokens) * 1000 / requestsPerSecond) 
        });
      }

      tokens -= 1;
      return { method, path, data, config };
    };
  },

  /**
   * Cache busting interceptor
   */
  cacheBusterInterceptor: (options: { 
    methods?: string[];
    paramName?: string;
  } = {}): RequestInterceptor => {
    const methods = options.methods || ['GET'];
    const paramName = options.paramName || '_t';
    
    return (method, path, data, config) => {
      if (methods.includes(method.toUpperCase())) {
        const separator = path.includes('?') ? '&' : '?';
        const cacheBuster = `${paramName}=${Date.now()}`;
        path = `${path}${separator}${cacheBuster}`;
      }
      return { method, path, data, config };
    };
  },

  /**
   * Request timeout interceptor
   */
  timeoutInterceptor: (timeoutMs: number = 30000): RequestInterceptor => {
    return (method, path, data, config) => {
      const updatedConfig = {
        ...config,
        timeout: config?.timeout || timeoutMs,
      };
      return { method, path, data, config: updatedConfig };
    };
  },
};

/**
 * Interceptor presets for common use cases
 */
export const interceptorPresets = {
  /**
   * Development preset with comprehensive logging
   */
  development: (interceptorManager: InterceptorManager) => {
    interceptorManager.addRequestInterceptor(builtInInterceptors.requestLogger({ logLevel: 'debug' }));
    interceptorManager.addResponseInterceptor(builtInInterceptors.responseLogger({ logLevel: 'debug' }));
    interceptorManager.addErrorInterceptor(builtInInterceptors.errorLogger({ logLevel: 'error' }));
  },

  /**
   * Production preset with minimal logging and retry logic
   */
  production: (interceptorManager: InterceptorManager) => {
    interceptorManager.addResponseInterceptor(builtInInterceptors.responseLogger({ 
      logLevel: 'warn', 
      includeData: false 
    }));
    interceptorManager.addErrorInterceptor(builtInInterceptors.errorLogger({ logLevel: 'error' }));
    interceptorManager.addErrorInterceptor(builtInInterceptors.retryInterceptor({
      maxRetries: 2,
      retryDelay: 1000,
    }));
  },

  /**
   * Testing preset with minimal overhead
   */
  testing: (interceptorManager: InterceptorManager) => {
    // Minimal interceptors for testing
    interceptorManager.addErrorInterceptor(builtInInterceptors.errorLogger({ logLevel: 'warn' }));
  },

  /**
   * Offline-first preset with aggressive caching and retry
   */
  offlineFirst: (interceptorManager: InterceptorManager) => {
    interceptorManager.addRequestInterceptor(builtInInterceptors.cacheBusterInterceptor({ methods: [] })); // Disable cache busting
    interceptorManager.addErrorInterceptor(builtInInterceptors.retryInterceptor({
      maxRetries: 5,
      retryDelay: 2000,
      retryCondition: (error) => error.isNetworkError(),
    }));
  },
};