import { describe, it, expect } from 'vitest'
import { DefaultSource } from '../default-source.js'

describe('DefaultSource', () => {
  describe('constructor', () => {
    it('should create DefaultSource with default configuration', () => {
      const source = new DefaultSource()

      expect(source.name).toBe('defaults')
      expect(source.priority).toBe(0)
    })

    it('should create DefaultSource with custom defaults', () => {
      const customDefaults = {
        base: {
          environment: 'production' as const,
          debug: true
        }
      }
      
      const source = new DefaultSource(customDefaults)

      expect(source.name).toBe('defaults')
      expect(source.priority).toBe(0)
    })
  })

  describe('load', () => {
    it('should return comprehensive default configuration', async () => {
      const source = new DefaultSource()
      const config = await source.load()

      expect(config).toBeDefined()
      expect(config).toBeTypeOf('object')
    })

    it('should include base configuration defaults', async () => {
      const source = new DefaultSource()
      const config = await source.load()

      expect(config?.base).toMatchObject({
        environment: 'development',
        debug: false,
        logLevel: 'info'
      })
    })

    it('should include database configuration defaults', async () => {
      const source = new DefaultSource()
      const config = await source.load()

      expect(config?.database).toMatchObject({
        connection: {
          host: 'localhost',
          port: 5432,
          database: 'prodobit',
          user: 'postgres',
          password: 'postgres',
          ssl: false
        },
        pool: {
          min: 2,
          max: 20
        },
        migrations: {
          enabled: true,
          migrationsTable: 'knex_migrations',
          autoMigrate: false
        }
      })
    })

    it('should include auth configuration defaults', async () => {
      const source = new DefaultSource()
      const config = await source.load()

      expect(config?.auth).toMatchObject({
        jwt: {
          accessTokenExpiresIn: '15m',
          refreshTokenExpiresIn: '7d',
          algorithm: 'HS256'
        },
        passwordPolicy: {
          minLength: 8,
          maxLength: 128,
          requireUppercase: true,
          requireLowercase: true,
          requireNumbers: true,
          requireSpecialChars: true
        },
        twoFactor: {
          enabled: false,
          issuer: 'Prodobit'
        }
      })
    })

    it('should include server configuration defaults', async () => {
      const source = new DefaultSource()
      const config = await source.load()

      expect(config?.server).toMatchObject({
        server: {
          host: '0.0.0.0',
          port: 3001,
          baseUrl: 'http://localhost:3001',
          apiPrefix: '/api/v1'
        },
        cors: {
          enabled: true,
          origins: expect.arrayContaining(['http://localhost:3000']),
          methods: expect.arrayContaining(['GET', 'POST', 'PUT', 'DELETE'])
        },
        compression: {
          enabled: true,
          level: 6
        }
      })
    })

    it('should include modules configuration defaults', async () => {
      const source = new DefaultSource()
      const config = await source.load()

      expect(config?.modules).toMatchObject({
        manifest: {
          modules: expect.arrayContaining([
            expect.objectContaining({
              id: 'core',
              name: 'Core System',
              enabled: true
            })
          ]),
          loadOrder: expect.arrayContaining(['core'])
        },
        enableHotReloading: false,
        developmentMode: false
      })
    })

    it('should include security configuration defaults', async () => {
      const source = new DefaultSource()
      const config = await source.load()

      expect(config?.security).toMatchObject({
        corsOrigins: expect.arrayContaining(['http://localhost:3000']),
        rateLimitWindowMs: 60000,
        rateLimitMaxRequests: 100,
        maxLoginAttempts: 5
      })
    })

    it('should include pagination defaults', async () => {
      const source = new DefaultSource()
      const config = await source.load()

      expect(config?.pagination).toMatchObject({
        defaultLimit: 25,
        maxLimit: 1000,
        defaultPage: 1
      })
    })

    it('should include file upload defaults', async () => {
      const source = new DefaultSource()
      const config = await source.load()

      expect(config?.fileUpload).toMatchObject({
        maxFileSize: 10485760,
        allowedMimeTypes: expect.arrayContaining([
          'image/jpeg',
          'image/png',
          'application/pdf'
        ]),
        uploadPath: './uploads',
        enableImageProcessing: true
      })
    })

    it('should merge custom defaults with built-in defaults', async () => {
      const customDefaults = {
        base: {
          environment: 'test' as const,
          logLevel: 'debug' as const
        },
        server: {
          server: {
            port: 4000
          }
        }
      }

      const source = new DefaultSource(customDefaults)
      const config = await source.load()

      // Custom values should override defaults
      expect(config?.base?.environment).toBe('test')
      expect(config?.base?.logLevel).toBe('debug')
      expect(config?.server?.server?.port).toBe(4000)

      // Non-overridden values should remain as defaults
      expect(config?.base?.debug).toBe(false)
      expect(config?.server?.server?.host).toBe('0.0.0.0')
    })

    it('should handle nested object merging correctly', async () => {
      const customDefaults = {
        database: {
          connection: {
            host: 'custom-host',
            port: 3306 // Different port
            // ssl should remain false from defaults
          }
          // pool settings should remain as defaults
        }
      }

      const source = new DefaultSource(customDefaults)
      const config = await source.load()

      expect(config?.database?.connection?.host).toBe('custom-host')
      expect(config?.database?.connection?.port).toBe(3306)
      expect(config?.database?.connection?.ssl).toBe(false) // From defaults
      expect(config?.database?.connection?.user).toBe('postgres') // From defaults
      expect(config?.database?.pool?.min).toBe(2) // From defaults
    })

    it('should provide default modules with proper structure', async () => {
      const source = new DefaultSource()
      const config = await source.load()

      const modules = config?.modules?.manifest?.modules

      expect(modules).toBeDefined()
      expect(Array.isArray(modules)).toBe(true)

      // Check that core module exists and has required properties
      const coreModule = modules?.find((m: any) => m.id === 'core')
      expect(coreModule).toMatchObject({
        id: 'core',
        name: 'Core System',
        version: '1.0.0',
        description: 'Core system functionality',
        category: 'core',
        dependencies: [],
        enabled: true,
        autoStart: true,
        priority: 100
      })

      // Check that business modules exist but are disabled by default
      const salesModule = modules?.find((m: any) => m.id === 'sales')
      expect(salesModule).toMatchObject({
        id: 'sales',
        name: 'Sales Management',
        enabled: false,
        dependencies: ['core']
      })
    })

    it('should return same object reference on multiple calls', async () => {
      const source = new DefaultSource()
      const config1 = await source.load()
      const config2 = await source.load()

      expect(config1).toBe(config2)
    })
  })

  describe('priority and name', () => {
    it('should have correct priority for defaults', () => {
      const source = new DefaultSource()
      
      expect(source.priority).toBe(0) // Lowest priority
      expect(source.name).toBe('defaults')
    })
  })
})