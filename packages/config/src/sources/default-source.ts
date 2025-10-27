import { ConfigSource } from '../types/config-source.js';
import type { ProdobitConfig } from '../schemas/index.js';

export class DefaultSource implements ConfigSource {
  readonly name = 'defaults';
  readonly priority = 0; // Lowest priority

  private readonly defaults: Partial<ProdobitConfig>;

  constructor(defaults: Partial<ProdobitConfig> = {}) {
    this.defaults = this.deepMerge(this.createDefaults(), defaults);
  }

  async load(): Promise<Record<string, unknown> | null> {
    return this.defaults as Record<string, unknown>;
  }

  private createDefaults(): Partial<ProdobitConfig> {
    return {
      base: {
        environment: 'development',
        debug: false,
        logLevel: 'info',
      },
      database: {
        connection: {
          host: 'localhost',
          port: 5432,
          database: 'prodobit',
          user: 'postgres',
          password: 'postgres',
          ssl: false,
          connectionTimeoutMs: 30000,
          idleTimeoutMs: 10000,
          maxConnections: 20,
        },
        pool: {
          min: 2,
          max: 20,
          acquireTimeoutMillis: 30000,
          createTimeoutMillis: 30000,
          destroyTimeoutMillis: 5000,
          idleTimeoutMillis: 30000,
          reapIntervalMillis: 1000,
          createRetryIntervalMillis: 200,
        },
        logging: false,
        timezone: 'UTC',
      },
      auth: {
        jwt: {
          accessTokenSecret: 'default-access-token-secret-change-in-production-environment',
          refreshTokenSecret: 'default-refresh-token-secret-change-in-production-environment',
          accessTokenExpiresIn: '15m',
          refreshTokenExpiresIn: '7d',
          algorithm: 'HS256',
          issuer: 'prodobit',
          audience: 'prodobit-api',
        },
        session: {
          secret: 'default-session-secret-change-in-production-environment',
          resave: false,
          saveUninitialized: false,
          rolling: true,
          maxAge: 3600000, // 1 hour
          httpOnly: true,
          secure: false,
          sameSite: 'lax',
        },
        passwordPolicy: {
          minLength: 8,
          maxLength: 128,
          requireUppercase: true,
          requireLowercase: true,
          requireNumbers: true,
          requireSpecialChars: true,
          preventPasswordReuse: 5,
        },
        twoFactor: {
          enabled: false,
          issuer: 'Prodobit',
          window: 2,
          enforceForRoles: ['admin', 'super_admin'],
        },
        enableRegistration: true,
        requireEmailVerification: true,
        loginAttemptResetMinutes: 15,
      },
      server: {
        server: {
          host: '0.0.0.0',
          port: 3001,
          baseUrl: 'http://localhost:3001',
          apiPrefix: '/api/v1',
          enableSwagger: true,
          swaggerPath: '/docs',
          healthCheckPath: '/health',
          gracefulShutdownTimeoutMs: 10000,
        },
        cors: {
          enabled: true,
          origins: ['http://localhost:3000', 'http://localhost:3001'],
          methods: ['GET', 'POST', 'PUT', 'DELETE', 'OPTIONS'],
          allowedHeaders: ['Content-Type', 'Authorization'],
          credentials: true,
          maxAge: 86400,
        },
        compression: {
          enabled: true,
          level: 6,
          threshold: 1024,
          chunkSize: 16384,
        },
        requestLimit: {
          enabled: true,
          windowMs: 60000, // 1 minute
          maxRequests: 100,
          message: 'Too many requests, please try again later.',
          standardHeaders: true,
          legacyHeaders: false,
        },
        logging: {
          level: 'info',
          format: 'json',
          timestamp: true,
          colorize: false,
          requestLogging: true,
          errorLogging: true,
          performanceLogging: true,
          logRotation: {
            enabled: false,
            maxSize: '10M',
            maxFiles: 5,
            datePattern: 'YYYY-MM-DD',
          },
        },
        metrics: {
          enabled: false,
          endpoint: '/metrics',
          collectDefaultMetrics: true,
          requestMetrics: true,
          responseMetrics: true,
          databaseMetrics: true,
        },
        cluster: {
          enabled: false,
          workers: 1, // Changed from 0 to 1 to satisfy validation
          restartDelay: 1000,
          maxRestarts: 5,
        },
      },
      modules: {
        manifest: {
          modules: [
            {
              id: 'core',
              name: 'Core System',
              version: '1.0.0',
              description: 'Core system functionality',
              category: 'core',
              dependencies: [],
              enabled: true,
              autoStart: true,
              priority: 100,
            },
            {
              id: 'employee',
              name: 'Employee Management',
              version: '1.0.0',
              description: 'Employee and workforce management',
              category: 'business',
              dependencies: ['core'],
              enabled: false,
              autoStart: false,
              priority: 90,
            },
            {
              id: 'sales',
              name: 'Sales Management',
              version: '1.0.0',
              description: 'Sales order and customer management',
              category: 'business',
              dependencies: ['core'],
              enabled: false,
              autoStart: false,
              priority: 85,
            },
            {
              id: 'manufacturing',
              name: 'Manufacturing',
              version: '1.0.0',
              description: 'Manufacturing and production management',
              category: 'business',
              dependencies: ['core', 'inventory'],
              enabled: false,
              autoStart: false,
              priority: 80,
            },
            {
              id: 'inventory',
              name: 'Inventory Management',
              version: '1.0.0',
              description: 'Stock and inventory tracking',
              category: 'business',
              dependencies: ['core'],
              enabled: false,
              autoStart: false,
              priority: 85,
            },
            {
              id: 'customer',
              name: 'Customer Management',
              version: '1.0.0',
              description: 'Customer relationship management',
              category: 'business',
              dependencies: ['core'],
              enabled: false,
              autoStart: false,
              priority: 85,
            },
            {
              id: 'supplier',
              name: 'Supplier Management',
              version: '1.0.0',
              description: 'Supplier and vendor management',
              category: 'business',
              dependencies: ['core'],
              enabled: false,
              autoStart: false,
              priority: 85,
            },
            {
              id: 'brand',
              name: 'Brand Management',
              version: '1.0.0',
              description: 'Brand and manufacturer management',
              category: 'business',
              dependencies: ['core'],
              enabled: false,
              autoStart: false,
              priority: 85,
            },
            {
              id: 'media',
              name: 'Media Management',
              version: '1.0.0',
              description: 'File upload and media management (images, documents)',
              category: 'core',
              dependencies: ['core'],
              enabled: false,
              autoStart: false,
              priority: 90,
            },
            {
              id: 'asset-issue',
              name: 'Asset Issue Management',
              version: '1.0.0',
              description: 'Asset issue and problem reporting',
              category: 'business',
              dependencies: ['core'],
              enabled: false,
              autoStart: false,
              priority: 80,
            },
            {
              id: 'maintenance',
              name: 'Maintenance Management',
              version: '1.0.0',
              description: 'Asset maintenance and service management',
              category: 'business',
              dependencies: ['core'],
              enabled: false,
              autoStart: false,
              priority: 80,
            },
            {
              id: 'task',
              name: 'Task Management',
              version: '1.0.0',
              description: 'Task and work order management',
              category: 'business',
              dependencies: ['core'],
              enabled: false,
              autoStart: false,
              priority: 80,
            },
            {
              id: 'calibration',
              name: 'Calibration Management',
              version: '1.0.0',
              description: 'Equipment calibration tracking',
              category: 'business',
              dependencies: ['core'],
              enabled: false,
              autoStart: false,
              priority: 80,
            },
          ],
          loadOrder: ['core', 'media', 'inventory', 'manufacturing', 'employee', 'sales', 'customer', 'supplier', 'brand', 'asset-issue', 'maintenance', 'task', 'calibration'],
          globalConfig: {},
        },
        registry: {
          states: [],
          loadingOrder: [],
          dependencyGraph: {},
        },
        moduleConfigs: {},
        enableHotReloading: false,
        developmentMode: false,
      },
      pagination: {
        defaultLimit: 25,
        maxLimit: 1000,
        defaultPage: 1,
      },
      security: {
        corsOrigins: ['http://localhost:3000', 'http://localhost:3001'],
        rateLimitWindowMs: 60000,
        rateLimitMaxRequests: 100,
        sessionTimeout: 3600,
        maxLoginAttempts: 5,
        lockoutDuration: 300000, // 5 minutes
      },
      fileUpload: {
        maxFileSize: 10485760, // 10MB
        allowedMimeTypes: [
          'image/jpeg',
          'image/png',
          'image/gif',
          'image/webp',
          'application/pdf',
          'text/csv',
          'application/vnd.ms-excel',
          'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
        ],
        uploadPath: './uploads',
        enableImageProcessing: true,
      },
      customConfig: {},
    };
  }

  private deepMerge<T extends Record<string, any>>(target: T, source: Partial<T>): T {
    const result = { ...target };

    for (const key in source) {
      if (source.hasOwnProperty(key)) {
        const sourceValue = source[key];
        const targetValue = result[key];

        if (
          sourceValue &&
          typeof sourceValue === 'object' &&
          !Array.isArray(sourceValue) &&
          targetValue &&
          typeof targetValue === 'object' &&
          !Array.isArray(targetValue)
        ) {
          result[key] = this.deepMerge(targetValue, sourceValue);
        } else {
          result[key] = sourceValue as T[Extract<keyof T, string>];
        }
      }
    }

    return result;
  }
}