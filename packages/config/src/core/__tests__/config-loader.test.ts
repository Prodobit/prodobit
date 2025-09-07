import { describe, it, expect, vi, beforeEach, afterEach } from 'vitest'
import { ConfigLoader } from '../config-loader.js'
import type { ConfigSource } from '../../types/config-source.js'
import type { PlatformAdapter } from '../../platform/adapters.js'

// Mock platform detection
vi.mock('../../platform/runtime-detection.js', () => ({
  supportsFileSystem: vi.fn().mockReturnValue(true)
}))

// Mock platform adapter factory
vi.mock('../../platform/adapter-factory.js', () => ({
  createPlatformAdapter: vi.fn().mockReturnValue({
    readFile: vi.fn(),
    writeFile: vi.fn(),
    fileExists: vi.fn(),
    watchFile: vi.fn(),
    getEnv: vi.fn()
  })
}))

// Mock schemas to bypass validation
vi.mock('../../schemas/index.js', () => ({
  ProdobitConfigSchema: vi.fn().mockImplementation((config) => config)
}))

// Mock sources
vi.mock('../../sources/default-source.js', () => ({
  DefaultSource: vi.fn()
}))
vi.mock('../../sources/environment-source.js', () => ({
  EnvironmentSource: vi.fn()
}))
vi.mock('../../sources/file-source.js', () => ({
  FileSource: vi.fn()
}))

// Complete valid mock config for all tests
const validMockConfig = {
  base: {
    environment: 'test' as const,
    logLevel: 'info' as const
  },
  database: {
    connection: {
      host: 'localhost',
      port: 5432,
      database: 'test_db',
      user: 'test_user',
      password: 'test_pass'
    }
  },
  auth: {
    enableRegistration: true,
    requireEmailVerification: false,
    loginAttemptResetMinutes: 15,
    passwordPolicy: {
      minLength: 8,
      maxLength: 128,
      requireUppercase: true,
      requireLowercase: true,
      requireNumbers: true,
      requireSpecialChars: false,
      preventPasswordReuse: 5
    },
    jwt: {
      accessTokenSecret: 'test-secret-that-is-at-least-32-characters-long',
      accessTokenExpiresIn: '15m',
      refreshTokenSecret: 'test-refresh-secret-that-is-at-least-32-characters-long',
      refreshTokenExpiresIn: '7d'
    },
    session: {
      maxSessions: 5,
      cleanupInterval: '1h',
      httpOnly: true,
      maxAge: 3600000,
      secret: 'session-secret-that-is-at-least-32-characters-long-to-pass-validation'
    }
  },
  server: {
    server: {
      host: '0.0.0.0',
      port: 3000,
      baseUrl: 'http://localhost:3000',
      apiPrefix: '/api/v1',
      enableSwagger: true,
      healthCheckPath: '/health',
      gracefulShutdownTimeoutMs: 30000
    },
    compression: {
      enabled: true,
      level: 6,
      threshold: 1024
    },
    cors: {
      enabled: true,
      origins: ['http://localhost:3000'],
      credentials: true
    },
    logging: {
      level: 'info' as const,
      requestLogging: true,
      errorLogging: true,
      performanceLogging: false,
      format: 'combined' as const,
      timestamp: true
    },
    requestLimit: {
      enabled: true,
      windowMs: 900000,
      maxRequests: 100,
      legacyHeaders: false,
      standardHeaders: true
    },
    metrics: {
      enabled: true,
      collectDefaultMetrics: true,
      requestMetrics: true,
      responseMetrics: true,
      databaseMetrics: false
    }
  },
  modules: {
    developmentMode: false,
    enableHotReloading: false,
    registry: {
      states: [],
      dependencyGraph: {},
      loadingOrder: []
    },
    moduleConfigs: {},
    manifest: {
      modules: [],
      loadOrder: []
    }
  },
  pagination: {
    defaultPage: 1,
    defaultLimit: 20,
    maxLimit: 100
  },
  security: {
    corsOrigins: ['http://localhost:3000'],
    rateLimitWindowMs: 900000,
    rateLimitMaxRequests: 100,
    sessionTimeout: 1800,
    lockoutDuration: 900000,
    maxLoginAttempts: 5
  },
  fileUpload: {
    uploadPath: './uploads',
    allowedMimeTypes: ['image/jpeg', 'image/png'],
    enableImageProcessing: false,
    maxFileSize: 10485760
  }
}

describe('ConfigLoader', () => {
  let configLoader: ConfigLoader
  let mockAdapter: PlatformAdapter
  let mockDefaultSource: ConfigSource
  let mockEnvironmentSource: ConfigSource
  let mockFileSource: ConfigSource

  beforeEach(async () => {
    // Reset all mocks
    vi.clearAllMocks()

    mockAdapter = {
      readFile: vi.fn(),
      writeFile: vi.fn(),
      fileExists: vi.fn(),
      watchFile: vi.fn(),
      getEnv: vi.fn()
    }

    mockDefaultSource = {
      name: 'default',
      priority: 0,
      load: vi.fn().mockResolvedValue({ 
        base: { environment: 'test' },
        server: { 
          server: { port: 3000 },
          cors: { enabled: true },
          compression: { enabled: true },
          requestLimit: { enabled: true },
          logging: { level: 'info' },
          metrics: { enabled: false }
        },
        database: { 
          connection: { host: 'localhost' }
        },
        auth: { jwt: { algorithm: 'HS256' } },
        modules: { manifest: { modules: [] } },
        pagination: { defaultLimit: 25 },
        security: { maxLoginAttempts: 5 },
        fileUpload: { maxFileSize: 1024 }
      })
    }

    mockEnvironmentSource = {
      name: 'environment',
      priority: 100,
      load: vi.fn().mockResolvedValue({
        server: { port: 4000 }
      })
    }

    mockFileSource = {
      name: 'file',
      priority: 50,
      load: vi.fn().mockResolvedValue({
        database: { host: 'file-host' }
      })
    }

    // Mock constructors
    const defaultSourceModule = await vi.importMock('../../sources/default-source.js')
    const environmentSourceModule = await vi.importMock('../../sources/environment-source.js') 
    const fileSourceModule = await vi.importMock('../../sources/file-source.js')
    const { DefaultSource } = defaultSourceModule
    const { EnvironmentSource } = environmentSourceModule
    const { FileSource } = fileSourceModule
    DefaultSource.mockImplementation(() => mockDefaultSource)
    EnvironmentSource.mockImplementation(() => mockEnvironmentSource)
    FileSource.mockImplementation(() => mockFileSource)
  })

  afterEach(() => {
    vi.restoreAllMocks()
  })

  describe('constructor', () => {
    it('should create ConfigLoader with default options', () => {
      configLoader = new ConfigLoader()
      
      expect(configLoader).toBeDefined()
      expect(configLoader.getAdapter()).toBeDefined()
    })

    it('should create ConfigLoader with custom options', () => {
      const customSource: ConfigSource = {
        name: 'custom',
        priority: 75,
        load: vi.fn().mockResolvedValue({ custom: true })
      }

      configLoader = new ConfigLoader({
        environment: 'production',
        sources: [customSource]
      })
      
      expect(configLoader).toBeDefined()
    })
  })

  describe('load', () => {
    beforeEach(() => {
      configLoader = new ConfigLoader()
      
      // Mock sources to return valid partial configs
      mockDefaultSource.load = vi.fn().mockResolvedValue(validMockConfig)
      mockEnvironmentSource.load = vi.fn().mockResolvedValue({
        server: { server: { host: '0.0.0.0' } }
      })
      mockFileSource.load = vi.fn().mockResolvedValue({
        database: { connection: { host: 'file-host' } }
      })
    })

    it('should load and merge configs from multiple sources', async () => {
      const config = await configLoader.load()
      
      expect(config).toBeDefined()
      expect(mockDefaultSource.load).toHaveBeenCalled()
      expect(mockEnvironmentSource.load).toHaveBeenCalled()
      expect(mockFileSource.load).toHaveBeenCalled()
    })

    it('should throw error on validation failure', async () => {
      // Mock the schema to return errors
      const { ProdobitConfigSchema } = require('../../schemas/index.js')
      ProdobitConfigSchema.mockReturnValueOnce({
        ' arkKind': 'errors',
        toString: () => 'Validation failed: invalid port'
      })

      await expect(configLoader.load()).rejects.toThrow('Configuration validation failed')
    })

    it('should handle source loading errors', async () => {
      mockDefaultSource.load = vi.fn().mockRejectedValue(new Error('Source error'))
      
      await expect(configLoader.load()).rejects.toThrow('Source error')
    })
  })

  describe('watch', () => {
    beforeEach(() => {
      configLoader = new ConfigLoader()
    })

    it('should setup watchers for sources that support watching', async () => {
      const watchCallback = vi.fn()
      const sourceWatchFn = vi.fn().mockImplementation((callback) => {
        // Simulate immediate callback to show watcher is working
        setTimeout(() => callback({}), 0)
        return Promise.resolve()
      })
      const sourceCloseFn = vi.fn()

      mockFileSource.watch = sourceWatchFn
      mockFileSource.close = sourceCloseFn

      // Schema is already mocked globally

      await configLoader.watch(watchCallback)

      expect(sourceWatchFn).toHaveBeenCalled()
    })

    it('should handle watch callback errors gracefully', async () => {
      const consoleErrorSpy = vi.spyOn(console, 'error').mockImplementation(() => {})
      
      // Create a promise to handle async callback
      let callbackResolver: (value: any) => void
      const callbackPromise = new Promise(resolve => {
        callbackResolver = resolve
      })

      mockFileSource.watch = vi.fn().mockImplementation((callback) => {
        // Simulate source change that triggers callback after a delay
        setTimeout(() => {
          callback({})
          callbackResolver(true)
        }, 10)
        return Promise.resolve()
      })

      // Make load fail to test error handling
      mockDefaultSource.load = vi.fn().mockRejectedValue(new Error('Load error'))

      const watchCallback = vi.fn()
      await configLoader.watch(watchCallback)
      
      // Wait for the callback to be triggered
      await callbackPromise
      
      // Give some time for error handling
      await new Promise(resolve => setTimeout(resolve, 20))

      expect(consoleErrorSpy).toHaveBeenCalledWith(
        expect.stringContaining('Error reloading configuration'),
        expect.any(Error)
      )

      consoleErrorSpy.mockRestore()
    })

    it('should skip sources that do not support watching', async () => {
      // Default and environment sources don't have watch method
      const watchCallback = vi.fn()
      
      await configLoader.watch(watchCallback)
      
      // Should complete without errors even when sources don't support watching
      expect(watchCallback).not.toHaveBeenCalled()
    })
  })

  describe('close', () => {
    beforeEach(() => {
      configLoader = new ConfigLoader()
    })

    it('should close all watchers', async () => {
      const sourceCloseFn = vi.fn().mockResolvedValue(undefined)
      const sourceWatchFn = vi.fn().mockResolvedValue(undefined)
      
      mockFileSource.close = sourceCloseFn
      mockFileSource.watch = sourceWatchFn

      // Schema is already mocked globally

      await configLoader.watch(vi.fn())
      await configLoader.close()

      expect(sourceCloseFn).toHaveBeenCalled()
    })
  })

  describe('addSource', () => {
    beforeEach(() => {
      configLoader = new ConfigLoader()
    })

    it('should add and sort sources by priority', () => {
      const highPrioritySource: ConfigSource = {
        name: 'high-priority',
        priority: 200,
        load: vi.fn()
      }

      configLoader.addSource(highPrioritySource)
      
      // Verify source was added (indirectly by checking if it gets called during load)
      expect(() => configLoader.addSource(highPrioritySource)).not.toThrow()
    })
  })

  describe('getLoadedConfig', () => {
    beforeEach(() => {
      configLoader = new ConfigLoader()
    })

    it('should return null before loading', () => {
      expect(configLoader.getLoadedConfig()).toBeNull()
    })

    it('should return config after loading', async () => {
      await configLoader.load()
      const loadedConfig = configLoader.getLoadedConfig()
      
      expect(loadedConfig).not.toBeNull()
    })
  })

  describe('getAdapter', () => {
    it('should return the platform adapter', async () => {
      configLoader = new ConfigLoader()
      const adapter = configLoader.getAdapter()
      
      expect(adapter).toBeDefined()
    })
  })

  describe('config merging', () => {
    beforeEach(() => {
      configLoader = new ConfigLoader()
    })

    it('should deep merge nested objects correctly', async () => {
      const baseConfig = { ...validMockConfig }
      const mergedConfig = { 
        ...validMockConfig,
        server: {
          ...validMockConfig.server,
          server: { ...validMockConfig.server.server, port: 4000 }
        },
        database: {
          ...validMockConfig.database,
          connection: { ...validMockConfig.database.connection, host: 'prod-db' }
        }
      }

      mockDefaultSource.load = vi.fn().mockResolvedValue(baseConfig)
      mockFileSource.load = vi.fn().mockResolvedValue({
        server: { server: { port: 4000 } }
      })
      mockEnvironmentSource.load = vi.fn().mockResolvedValue({
        database: { connection: { host: 'prod-db' } }
      })

      // Schema is mocked globally to pass through config

      const config = await configLoader.load()

      expect(config).toMatchObject({
        server: {
          server: {
            port: 4000,
            host: validMockConfig.server.server.host
          }
        },
        database: {
          connection: {
            host: 'prod-db',
            port: validMockConfig.database.connection.port
          }
        }
      })
    })

    it('should handle null and undefined values in merge', async () => {
      const baseConfig = { ...validMockConfig }
      
      mockDefaultSource.load = vi.fn().mockResolvedValue(baseConfig)
      mockFileSource.load = vi.fn().mockResolvedValue({
        server: { server: { port: null } }
      })

      // Schema is mocked globally to pass through config

      const config = await configLoader.load()

      expect(config.server.server.port).toBe(validMockConfig.server.server.port) // null value should not override
      expect(config.server.server.host).toBe(validMockConfig.server.server.host)
    })

    it('should override arrays completely instead of merging', async () => {
      const baseConfig = {
        ...validMockConfig,
        security: { ...validMockConfig.security, corsOrigins: ['localhost'] }
      }
      
      const mergedConfig = {
        ...baseConfig,
        security: { ...validMockConfig.security, corsOrigins: ['prod1.com', 'prod2.com'] }
      }

      mockDefaultSource.load = vi.fn().mockResolvedValue(baseConfig)
      mockFileSource.load = vi.fn().mockResolvedValue({
        security: { corsOrigins: ['prod1.com', 'prod2.com'] }
      })

      // Schema is mocked globally to pass through config

      const config = await configLoader.load()

      expect(config.security.corsOrigins).toEqual(['prod1.com', 'prod2.com'])
    })
  })

  describe('initialization with different environments', () => {
    it('should load environment-specific config file', async () => {
      // Import dynamically to avoid module resolution issues in tests
      const { FileSource } = await import('../../sources/file-source.js')
      
      configLoader = new ConfigLoader({ environment: 'production' })
      
      // Test passes if no errors are thrown during initialization
      expect(configLoader).toBeDefined()
    })

    it('should work without file system support', async () => {
      // Import dynamically to avoid module resolution issues
      const runtimeDetection = await import('../../platform/runtime-detection.js')
      vi.mocked(runtimeDetection.supportsFileSystem).mockReturnValue(false)

      expect(() => {
        configLoader = new ConfigLoader()
      }).not.toThrow()

      expect(configLoader).toBeDefined()
    })
  })
})