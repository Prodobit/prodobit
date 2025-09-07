import { describe, it, expect, vi, beforeEach, afterEach } from 'vitest'
import {
  detectEnvironment,
  getConfigSearchPaths,
  findConfigFile,
  expandEnvironmentVariables,
  parseEnvironmentValue,
  normalizeConfigPath,
  getEnvironmentPrefix,
  setupGracefulShutdown,
  type EnvironmentInfo,
  type ProcessSignalHandler
} from '../environment.js'
import type { PlatformAdapter } from '../../platform/adapters.js'

// Mock platform detection
vi.mock('../../platform/runtime-detection.js', () => ({
  supportsFileSystem: vi.fn().mockReturnValue(true)
}))

describe('Environment Utilities', () => {
  let mockAdapter: PlatformAdapter

  beforeEach(() => {
    mockAdapter = {
      name: 'node',
      getEnvironmentVariable: vi.fn(),
      getWorkingDirectory: vi.fn().mockReturnValue('/project'),
      resolvePath: vi.fn().mockImplementation((...paths) => Promise.resolve(paths.join('/'))),
      fileExists: vi.fn(),
      readFile: vi.fn(),
      writeFile: vi.fn(),
      watchFile: vi.fn(),
      getPlatformInfo: vi.fn().mockReturnValue({
        platform: 'linux',
        arch: 'x64',
        runtime: 'node',
        version: '18.0.0'
      })
    }
  })

  afterEach(() => {
    vi.resetAllMocks()
  })

  describe('detectEnvironment', () => {
    it('should detect development environment by default', async () => {
      mockAdapter.getEnvironmentVariable = vi.fn().mockReturnValue(undefined)

      const env = await detectEnvironment(mockAdapter)

      expect(env).toMatchObject({
        environment: 'development',
        nodeEnv: 'development',
        isDevelopment: true,
        isProduction: false,
        isTest: false,
        workingDirectory: '/project',
        configDirectory: '/project'
      })
    })

    it('should detect environment from NODE_ENV', async () => {
      mockAdapter.getEnvironmentVariable = vi.fn().mockImplementation((key) => {
        if (key === 'NODE_ENV') return 'production'
        return undefined
      })

      const env = await detectEnvironment(mockAdapter)

      expect(env.environment).toBe('production')
      expect(env.isProduction).toBe(true)
      expect(env.isDevelopment).toBe(false)
    })

    it('should prefer PRODOBIT_ENV over NODE_ENV', async () => {
      mockAdapter.getEnvironmentVariable = vi.fn().mockImplementation((key) => {
        if (key === 'NODE_ENV') return 'production'
        if (key === 'PRODOBIT_ENV') return 'test'
        return undefined
      })

      const env = await detectEnvironment(mockAdapter)

      expect(env.environment).toBe('test')
      expect(env.isTest).toBe(true)
    })

    it('should use custom config directory', async () => {
      mockAdapter.getEnvironmentVariable = vi.fn().mockImplementation((key) => {
        if (key === 'PRODOBIT_CONFIG_DIR') return '/custom/config'
        return undefined
      })

      const env = await detectEnvironment(mockAdapter)

      expect(env.configDirectory).toBe('/custom/config')
    })

    it('should detect home directory from environment', async () => {
      mockAdapter.getEnvironmentVariable = vi.fn().mockImplementation((key) => {
        if (key === 'HOME') return '/home/user'
        return undefined
      })

      const env = await detectEnvironment(mockAdapter)

      expect(env.homeDirectory).toBe('/home/user')
    })

    it('should fallback to invalid environment as development', async () => {
      mockAdapter.getEnvironmentVariable = vi.fn().mockImplementation((key) => {
        if (key === 'PRODOBIT_ENV') return 'invalid-env'
        return undefined
      })

      const env = await detectEnvironment(mockAdapter)

      expect(env.environment).toBe('development')
    })
  })

  describe('getConfigSearchPaths', () => {
    let env: EnvironmentInfo

    beforeEach(() => {
      env = {
        environment: 'development',
        nodeEnv: 'development',
        isDevelopment: true,
        isProduction: false,
        isTest: false,
        workingDirectory: '/project',
        configDirectory: '/project',
        homeDirectory: '/home/user'
      }
    })

    it('should return basic search paths', async () => {
      const paths = await getConfigSearchPaths(env, mockAdapter)

      expect(paths).toContain('/project')
      expect(paths).toContain('/home/user/.prodobit')
      expect(paths).toContain('/home/user/.config/prodobit')
    })

    it('should include config directory if different from working directory', async () => {
      env.configDirectory = '/custom/config'

      const paths = await getConfigSearchPaths(env, mockAdapter)

      expect(paths).toContain('/project')
      expect(paths).toContain('/custom/config')
    })

    it('should include system paths for Unix systems', async () => {
      mockAdapter.getPlatformInfo = vi.fn().mockReturnValue({
        platform: 'linux'
      })

      const paths = await getConfigSearchPaths(env, mockAdapter)

      expect(paths).toContain('/etc/prodobit')
      expect(paths).toContain('/usr/local/etc/prodobit')
    })

    it('should skip system paths for Windows', async () => {
      mockAdapter.getPlatformInfo = vi.fn().mockReturnValue({
        platform: 'win32'
      })

      const paths = await getConfigSearchPaths(env, mockAdapter)

      expect(paths).not.toContain('/etc/prodobit')
    })

    it('should skip home directory paths when not available', async () => {
      env.homeDirectory = undefined

      const paths = await getConfigSearchPaths(env, mockAdapter)

      expect(paths).not.toContain('/home/user/.prodobit')
      expect(paths[0]).toBe('/project')
      // Should still include system paths for non-Windows Node.js
      expect(paths).toContain('/etc/prodobit')
      expect(paths).toContain('/usr/local/etc/prodobit')
    })
  })

  describe('findConfigFile', () => {
    const searchPaths = ['/project', '/home/user/.prodobit']
    const filenames = ['prodobit.config.json', '.prodobitrc']

    it('should find existing config file', async () => {
      mockAdapter.fileExists = vi.fn().mockImplementation((path) => {
        return Promise.resolve(path === '/project/prodobit.config.json')
      })
      mockAdapter.resolvePath = vi.fn().mockImplementation((searchPath, filename) => {
        return Promise.resolve(`${searchPath}/${filename}`)
      })

      const result = await findConfigFile(searchPaths, filenames, mockAdapter)

      expect(result).toBe('/project/prodobit.config.json')
    })

    it('should return null when no config file exists', async () => {
      mockAdapter.fileExists = vi.fn().mockResolvedValue(false)

      const result = await findConfigFile(searchPaths, filenames, mockAdapter)

      expect(result).toBeNull()
    })

    it('should handle file access errors gracefully', async () => {
      mockAdapter.fileExists = vi.fn().mockRejectedValue(new Error('Access denied'))

      const result = await findConfigFile(searchPaths, filenames, mockAdapter)

      expect(result).toBeNull()
    })

    it('should return null when filesystem is not supported', async () => {
      const { supportsFileSystem } = await vi.importMock('../../platform/runtime-detection.js')
      supportsFileSystem.mockReturnValue(false)

      const result = await findConfigFile(searchPaths, filenames, mockAdapter)

      expect(result).toBeNull()
    })
  })

  describe('expandEnvironmentVariables', () => {
    beforeEach(() => {
      mockAdapter.getEnvironmentVariable = vi.fn().mockImplementation((key) => {
        const vars: Record<string, string> = {
          'DATABASE_HOST': 'localhost',
          'PORT': '3000',
          'API_KEY': 'secret-key'
        }
        return vars[key]
      })
    })

    it('should expand single environment variable', () => {
      const result = expandEnvironmentVariables('${DATABASE_HOST}:5432', mockAdapter)

      expect(result).toBe('localhost:5432')
    })

    it('should expand multiple environment variables', () => {
      const result = expandEnvironmentVariables('${DATABASE_HOST}:${PORT}', mockAdapter)

      expect(result).toBe('localhost:3000')
    })

    it('should throw error for undefined environment variables', () => {
      expect(() => {
        expandEnvironmentVariables('${UNDEFINED_VAR}', mockAdapter)
      }).toThrow('Environment variable UNDEFINED_VAR is not defined')
    })

    it('should return unchanged string without variables', () => {
      const result = expandEnvironmentVariables('plain string', mockAdapter)

      expect(result).toBe('plain string')
    })

    it('should handle mixed content', () => {
      const result = expandEnvironmentVariables('API: ${API_KEY} on ${DATABASE_HOST}', mockAdapter)

      expect(result).toBe('API: secret-key on localhost')
    })
  })

  describe('parseEnvironmentValue', () => {
    it('should parse boolean values', () => {
      expect(parseEnvironmentValue('true')).toBe(true)
      expect(parseEnvironmentValue('false')).toBe(false)
    })

    it('should parse null and undefined', () => {
      expect(parseEnvironmentValue('null')).toBeNull()
      expect(parseEnvironmentValue('undefined')).toBeUndefined()
    })

    it('should parse integers', () => {
      expect(parseEnvironmentValue('42')).toBe(42)
      expect(parseEnvironmentValue('-123')).toBe(-123)
    })

    it('should parse floats', () => {
      expect(parseEnvironmentValue('3.14')).toBe(3.14)
      expect(parseEnvironmentValue('-2.5')).toBe(-2.5)
    })

    it('should parse JSON objects', () => {
      expect(parseEnvironmentValue('{"key":"value"}')).toEqual({ key: 'value' })
    })

    it('should parse JSON arrays', () => {
      expect(parseEnvironmentValue('[1,2,3]')).toEqual([1, 2, 3])
    })

    it('should parse comma-separated arrays', () => {
      expect(parseEnvironmentValue('a,b,c')).toEqual(['a', 'b', 'c'])
    })

    it('should return string for invalid JSON', () => {
      expect(parseEnvironmentValue('{invalid-json}')).toBe('{invalid-json}')
    })

    it('should return empty string for empty values', () => {
      expect(parseEnvironmentValue('')).toBe('')
    })

    it('should return string for unrecognized values', () => {
      expect(parseEnvironmentValue('some text')).toBe('some text')
    })
  })

  describe('normalizeConfigPath', () => {
    it('should convert underscores to dots', () => {
      expect(normalizeConfigPath('DATABASE_HOST')).toBe('database.host')
    })

    it('should convert to lowercase', () => {
      expect(normalizeConfigPath('DATABASE_CONNECTION_STRING')).toBe('database.connection.string')
    })

    it('should remove prodobit prefix', () => {
      expect(normalizeConfigPath('PRODOBIT_SERVER_PORT')).toBe('server.port')
    })

    it('should handle already normalized paths', () => {
      expect(normalizeConfigPath('server.host')).toBe('server.host')
    })
  })

  describe('getEnvironmentPrefix', () => {
    it('should return default prefix', () => {
      mockAdapter.getEnvironmentVariable = vi.fn().mockReturnValue(undefined)

      const prefix = getEnvironmentPrefix(mockAdapter)

      expect(prefix).toBe('PRODOBIT_')
    })

    it('should return custom prefix from environment', () => {
      mockAdapter.getEnvironmentVariable = vi.fn().mockImplementation((key) => {
        if (key === 'PRODOBIT_ENV_PREFIX') return 'CUSTOM_'
        return undefined
      })

      const prefix = getEnvironmentPrefix(mockAdapter)

      expect(prefix).toBe('CUSTOM_')
    })
  })

  describe('setupGracefulShutdown', () => {
    let originalProcess: typeof process
    let mockProcess: any

    beforeEach(() => {
      originalProcess = global.process
      mockProcess = {
        on: vi.fn(),
        exit: vi.fn()
      }
      global.process = mockProcess
    })

    afterEach(() => {
      global.process = originalProcess
    })

    it('should setup signal handlers for Node.js environment', () => {
      const handlers: ProcessSignalHandler[] = [
        {
          signal: 'SIGTERM',
          handler: vi.fn()
        }
      ]

      setupGracefulShutdown(handlers, mockAdapter)

      expect(mockProcess.on).toHaveBeenCalledWith('SIGTERM', expect.any(Function))
      expect(mockProcess.on).toHaveBeenCalledWith('SIGINT', expect.any(Function))
      expect(mockProcess.on).toHaveBeenCalledWith('SIGUSR2', expect.any(Function))
    })

    it('should warn for non-Node.js environments', () => {
      const consoleSpy = vi.spyOn(console, 'warn').mockImplementation(() => {})
      mockAdapter.name = 'browser'

      setupGracefulShutdown([], mockAdapter)

      expect(consoleSpy).toHaveBeenCalledWith(
        'Graceful shutdown signals not supported in this runtime'
      )
      expect(mockProcess.on).not.toHaveBeenCalled()

      consoleSpy.mockRestore()
    })

    it('should execute handlers on signal', async () => {
      const handler1 = vi.fn()
      const handler2 = vi.fn()
      const handlers: ProcessSignalHandler[] = [
        { signal: 'SIGTERM', handler: handler1 },
        { signal: 'all', handler: handler2 }
      ]

      setupGracefulShutdown(handlers, mockAdapter)

      // Get the signal handler that was registered
      const signalHandler = mockProcess.on.mock.calls.find(
        call => call[0] === 'SIGTERM'
      )[1]

      const consoleSpy = vi.spyOn(console, 'log').mockImplementation(() => {})

      // Execute the signal handler
      await signalHandler()

      expect(handler1).toHaveBeenCalled()
      expect(handler2).toHaveBeenCalled()
      expect(consoleSpy).toHaveBeenCalledWith('Received SIGTERM, starting graceful shutdown...')
      expect(consoleSpy).toHaveBeenCalledWith('Graceful shutdown completed')
      expect(mockProcess.exit).toHaveBeenCalledWith(0)

      consoleSpy.mockRestore()
    })

    it('should handle errors during shutdown', async () => {
      const errorHandler = vi.fn().mockRejectedValue(new Error('Handler error'))
      const handlers: ProcessSignalHandler[] = [
        { signal: 'SIGTERM', handler: errorHandler }
      ]

      setupGracefulShutdown(handlers, mockAdapter)

      const signalHandler = mockProcess.on.mock.calls.find(
        call => call[0] === 'SIGTERM'
      )[1]

      const consoleSpy = vi.spyOn(console, 'error').mockImplementation(() => {})

      await signalHandler()

      expect(consoleSpy).toHaveBeenCalledWith(
        'Error during graceful shutdown:',
        expect.any(Error)
      )
      expect(mockProcess.exit).toHaveBeenCalledWith(1)

      consoleSpy.mockRestore()
    })
  })
})