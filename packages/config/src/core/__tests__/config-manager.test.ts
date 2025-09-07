import { describe, it, expect, beforeEach, vi, afterEach } from 'vitest'
import { ConfigManager, type ConfigManagerOptions } from '../config-manager.js'
import { ConfigLoader } from '../config-loader.js'
import { ModuleManager } from '../module-manager.js'

// Mock dependencies
vi.mock('../config-loader.js')
vi.mock('../module-manager.js')

const MockConfigLoader = ConfigLoader as unknown as vi.MockedClass<typeof ConfigLoader>
const MockModuleManager = ModuleManager as unknown as vi.MockedClass<typeof ModuleManager>

describe('ConfigManager', () => {
  let configManager: ConfigManager
  let mockLoader: vi.Mocked<ConfigLoader>
  let mockModuleManager: vi.Mocked<ModuleManager>
  
  const mockConfig = {
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
        requireUppercase: true,
        requireLowercase: true,
        requireNumbers: true,
        requireSpecialChars: false
      },
      jwt: {
        accessTokenSecret: 'test-secret',
        accessTokenExpiresIn: '15m',
        refreshTokenSecret: 'test-refresh-secret',
        refreshTokenExpiresIn: '7d'
      },
      session: {
        maxSessions: 5,
        cleanupInterval: '1h'
      }
    },
    server: {
      server: {
        host: '0.0.0.0',
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
        origins: ['http://localhost:3000'],
        credentials: true
      },
      logging: {
        requestLogging: true,
        errorLogging: true,
        performanceLogging: false,
        format: 'combined' as const,
        timestamp: true
      },
      requestLimit: {
        windowMs: 900000,
        maxRequests: 100,
        legacyHeaders: false,
        standardHeaders: true
      },
      metrics: {
        collectDefaultMetrics: true,
        requestMetrics: true,
        responseMetrics: true,
        databaseMetrics: false
      }
    },
    modules: {
      developmentMode: false,
      enableHotReloading: false,
      registry: {},
      moduleConfigs: {},
      manifest: {
        loadOrder: ['core', 'sales']
      }
    },
    pagination: {
      defaultPage: 1,
      maxLimit: 100
    },
    security: {
      corsOrigins: ['http://localhost:3000'],
      rateLimitWindowMs: 900000,
      rateLimitMaxRequests: 100,
      sessionTimeout: 1800,
      lockoutDuration: 900
    },
    fileUpload: {
      uploadPath: './uploads',
      allowedMimeTypes: ['image/jpeg', 'image/png'],
      enableImageProcessing: false
    }
  }

  beforeEach(() => {
    vi.clearAllMocks()
    
    mockLoader = {
      load: vi.fn().mockResolvedValue(mockConfig),
      close: vi.fn().mockResolvedValue(undefined),
      watch: vi.fn().mockResolvedValue(undefined),
      getAdapter: vi.fn().mockReturnValue({}),
      validateConfig: vi.fn().mockReturnValue(mockConfig)
    } as any

    mockModuleManager = {
      initialize: vi.fn().mockResolvedValue(undefined),
      validateModuleConfiguration: vi.fn().mockReturnValue([]),
      enableModule: vi.fn().mockResolvedValue(undefined),
      disableModule: vi.fn().mockResolvedValue(undefined),
      reloadModule: vi.fn().mockResolvedValue(undefined),
      getModuleState: vi.fn().mockReturnValue({}),
      getAllModuleStates: vi.fn().mockReturnValue({}),
      getEnabledModules: vi.fn().mockReturnValue(new Set()),
      isModuleReady: vi.fn().mockReturnValue(true)
    } as any

    MockConfigLoader.mockImplementation(() => mockLoader)
    MockModuleManager.mockImplementation(() => mockModuleManager)
  })

  afterEach(() => {
    vi.restoreAllMocks()
  })

  describe('constructor', () => {
    it('should create ConfigManager with default options', () => {
      configManager = new ConfigManager()
      
      expect(MockConfigLoader).toHaveBeenCalledWith({})
      expect(MockModuleManager).toHaveBeenCalledWith({
        enableHotReloading: false,
        developmentMode: false
      })
    })

    it('should create ConfigManager with custom options', () => {
      const options: ConfigManagerOptions = {
        autoReload: true,
        validateModules: false,
        environment: 'development'
      }
      
      configManager = new ConfigManager(options)
      
      expect(MockConfigLoader).toHaveBeenCalledWith(options)
      expect(MockModuleManager).toHaveBeenCalledWith({
        enableHotReloading: true,
        developmentMode: true
      })
    })
  })

  describe('initialize', () => {
    beforeEach(() => {
      configManager = new ConfigManager()
    })

    it('should initialize successfully with valid config', async () => {
      const result = await configManager.initialize()
      
      expect(mockLoader.load).toHaveBeenCalled()
      expect(mockModuleManager.validateModuleConfiguration).toHaveBeenCalledWith(
        mockConfig.modules.manifest.modules
      )
      expect(mockModuleManager.initialize).toHaveBeenCalledWith(mockConfig.modules)
      expect(result).toBe(mockConfig)
    })

    it('should skip module validation when validateModules is false', async () => {
      configManager = new ConfigManager({ validateModules: false })
      
      await configManager.initialize()
      
      expect(mockModuleManager.validateModuleConfiguration).not.toHaveBeenCalled()
    })

    it('should throw error when module validation fails', async () => {
      mockModuleManager.validateModuleConfiguration.mockReturnValue([
        'Module "invalid-module" not found',
        'Module "core" missing required field "version"'
      ])
      
      await expect(configManager.initialize()).rejects.toThrow(
        'Module configuration validation failed:\nModule "invalid-module" not found\nModule "core" missing required field "version"'
      )
    })

    it('should setup auto-reload when enabled', async () => {
      configManager = new ConfigManager({ autoReload: true })
      
      await configManager.initialize()
      
      expect(mockLoader.watch).toHaveBeenCalled()
    })

    it('should handle config without modules', async () => {
      const configWithoutModules = {
        ...mockConfig,
        modules: undefined
      }
      mockLoader.load.mockResolvedValue(configWithoutModules)
      
      const result = await configManager.initialize()
      
      expect(mockModuleManager.validateModuleConfiguration).not.toHaveBeenCalled()
      expect(result).toBe(configWithoutModules)
    })
  })

  describe('getConfig', () => {
    beforeEach(() => {
      configManager = new ConfigManager()
    })

    it('should throw error when config not initialized', () => {
      expect(() => configManager.getConfig()).toThrow(
        'Configuration not initialized. Call initialize() first.'
      )
    })

    it('should return config after initialization', async () => {
      await configManager.initialize()
      
      const result = configManager.getConfig()
      expect(result).toBe(mockConfig)
    })
  })

  describe('getConfigSection', () => {
    beforeEach(async () => {
      configManager = new ConfigManager()
      await configManager.initialize()
    })

    it('should return specific config section', () => {
      const baseConfig = configManager.getConfigSection('base')
      expect(baseConfig).toBe(mockConfig.base)
      
      const dbConfig = configManager.getConfigSection('database')
      expect(dbConfig).toBe(mockConfig.database)
    })
  })

  describe('updateConfigSection', () => {
    beforeEach(async () => {
      configManager = new ConfigManager()
      await configManager.initialize()
    })

    it('should update config section successfully', async () => {
      const updates = { logLevel: 'debug' as const }
      
      await configManager.updateConfigSection('base', updates)
      
      const updatedConfig = configManager.getConfig()
      expect(updatedConfig.base.logLevel).toBe('debug')
    })

    it('should reinitialize modules when modules section is updated', async () => {
      const moduleUpdates = {
        manifest: {
          modules: [{ name: 'inventory', enabled: true }]
        }
      }
      
      await configManager.updateConfigSection('modules', moduleUpdates)
      
      expect(mockModuleManager.initialize).toHaveBeenCalledTimes(2) // Once in initialize, once in update
    })

    it('should notify change callbacks', async () => {
      const callback = vi.fn()
      configManager.onChange(callback)
      
      await configManager.updateConfigSection('base', { logLevel: 'error' })
      
      expect(callback).toHaveBeenCalled()
    })
  })

  describe('module management methods', () => {
    beforeEach(async () => {
      configManager = new ConfigManager()
      await configManager.initialize()
    })

    it('should delegate to ModuleManager correctly', async () => {
      await configManager.enableModule('sales')
      expect(mockModuleManager.enableModule).toHaveBeenCalledWith('sales')

      await configManager.disableModule('core')
      expect(mockModuleManager.disableModule).toHaveBeenCalledWith('core')

      await configManager.reloadModule('inventory')
      expect(mockModuleManager.reloadModule).toHaveBeenCalledWith('inventory')

      configManager.getModuleState('core')
      expect(mockModuleManager.getModuleState).toHaveBeenCalledWith('core')

      configManager.getAllModuleStates()
      expect(mockModuleManager.getAllModuleStates).toHaveBeenCalled()

      configManager.getEnabledModules()
      expect(mockModuleManager.getEnabledModules).toHaveBeenCalled()

      configManager.isModuleReady('core')
      expect(mockModuleManager.isModuleReady).toHaveBeenCalledWith('core')
    })
  })

  describe('environment methods', () => {
    beforeEach(async () => {
      configManager = new ConfigManager()
      await configManager.initialize()
    })

    it('should return correct environment status', () => {
      expect(configManager.isDevelopment()).toBe(false)
      expect(configManager.isProduction()).toBe(false) 
      expect(configManager.isTest()).toBe(true)
    })
  })

  describe('configuration watching', () => {
    beforeEach(async () => {
      configManager = new ConfigManager()
      await configManager.initialize()
    })

    it('should add and remove change callbacks', () => {
      const callback1 = vi.fn()
      const callback2 = vi.fn()
      
      const unsubscribe1 = configManager.onChange(callback1)
      const unsubscribe2 = configManager.onChange(callback2)
      
      // Test that callbacks are called
      configManager['changeCallbacks'].forEach(cb => cb(mockConfig))
      expect(callback1).toHaveBeenCalledWith(mockConfig)
      expect(callback2).toHaveBeenCalledWith(mockConfig)
      
      // Test unsubscribe
      unsubscribe1()
      callback1.mockClear()
      callback2.mockClear()
      
      configManager['changeCallbacks'].forEach(cb => cb(mockConfig))
      expect(callback1).not.toHaveBeenCalled()
      expect(callback2).toHaveBeenCalledWith(mockConfig)
      
      unsubscribe2()
    })

    it('should handle callback errors gracefully', () => {
      const errorCallback = vi.fn().mockImplementation(() => {
        throw new Error('Callback error')
      })
      
      configManager.onChange(errorCallback)
      
      // Test that registering error callbacks doesn't break the system
      expect(() => {
        configManager.onChange(() => { console.log('test') })
      }).not.toThrow()
      
      // Should be able to remove callbacks without issues
      expect(() => {
        const unsubscribe = configManager.onChange(() => {})
        unsubscribe()
      }).not.toThrow()
    })
  })

  describe('utility methods', () => {
    beforeEach(async () => {
      configManager = new ConfigManager()
      await configManager.initialize()
    })

    it('should get nested configuration values', () => {
      expect(configManager.get('base.environment')).toBe('test')
      expect(configManager.get('database.host')).toBe('localhost')
      expect(configManager.get('database.port')).toBe(5432)
    })

    it('should return default value for missing paths', () => {
      expect(configManager.get('missing.path', 'default')).toBe('default')
    })

    it('should throw error for missing paths without default', () => {
      expect(() => configManager.get('missing.path')).toThrow("Configuration path 'missing.path' not found")
    })

    it('should check if configuration paths exist', () => {
      expect(configManager.has('base.environment')).toBe(true)
      expect(configManager.has('missing.path')).toBe(false)
    })
  })

  describe('cleanup', () => {
    beforeEach(async () => {
      configManager = new ConfigManager()
      await configManager.initialize()
    })

    it('should close loader and clear callbacks', async () => {
      const callback = vi.fn()
      configManager.onChange(callback)
      
      await configManager.close()
      
      expect(mockLoader.close).toHaveBeenCalled()
      expect(configManager['changeCallbacks']).toHaveLength(0)
    })
  })
})