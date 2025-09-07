import { describe, it, expect, vi, beforeEach } from 'vitest'
import { FileSource } from '../file-source.js'
import type { PlatformAdapter } from '../../platform/adapters.js'

// Mock platform detection
vi.mock('../../platform/runtime-detection.js', () => ({
  supportsFileSystem: vi.fn().mockReturnValue(true),
  supportsWatching: vi.fn().mockReturnValue(true)
}))

describe('FileSource', () => {
  let mockAdapter: PlatformAdapter

  beforeEach(() => {
    mockAdapter = {
      name: 'node',
      getAllEnvironmentVariables: vi.fn(),
      getEnvironmentVariable: vi.fn(),
      readFile: vi.fn(),
      writeFile: vi.fn(),
      fileExists: vi.fn(),
      watchFile: vi.fn(),
      getWorkingDirectory: vi.fn().mockReturnValue('/project'),
      resolvePath: vi.fn().mockImplementation((path) => Promise.resolve(path)),
      getPlatformInfo: vi.fn()
    }
  })

  describe('constructor', () => {
    it('should create FileSource with required path', () => {
      const source = new FileSource(mockAdapter, { path: 'config.json' })

      expect(source.name).toBe('file:config.json')
      expect(source.priority).toBe(50) // Medium priority
    })

    it('should always use default priority (50)', () => {
      const source = new FileSource(mockAdapter, { 
        path: 'config.json'
      })

      expect(source.priority).toBe(50)
    })
  })

  describe('load', () => {
    it('should return null when file does not exist and not required', async () => {
      mockAdapter.fileExists = vi.fn().mockResolvedValue(false)

      const source = new FileSource(mockAdapter, { 
        path: 'missing.json',
        required: false
      })

      const result = await source.load()
      expect(result).toBeNull()
    })

    it('should throw error when required file does not exist', async () => {
      mockAdapter.fileExists = vi.fn().mockResolvedValue(false)

      const source = new FileSource(mockAdapter, { 
        path: 'required.json',
        required: true
      })

      await expect(source.load()).rejects.toThrow('Required config file not found: required.json')
    })

    it('should load and parse JSON file', async () => {
      const configData = { server: { port: 3000 }, database: { host: 'localhost' } }
      
      mockAdapter.fileExists = vi.fn().mockResolvedValue(true)
      mockAdapter.readFile = vi.fn().mockResolvedValue(JSON.stringify(configData))

      const source = new FileSource(mockAdapter, { path: 'config.json' })
      const result = await source.load()

      expect(result).toEqual(configData)
      expect(mockAdapter.readFile).toHaveBeenCalledWith('config.json', 'utf8')
    })

    it('should load and parse JavaScript file', async () => {
      const jsContent = `
        module.exports = {
          server: { port: 4000 },
          debug: true
        };
      `
      
      mockAdapter.fileExists = vi.fn().mockResolvedValue(true)
      mockAdapter.readFile = vi.fn().mockResolvedValue(jsContent)

      const source = new FileSource(mockAdapter, { path: 'config.js' })
      const result = await source.load()

      expect(result).toEqual({
        server: { port: 4000 },
        debug: true
      })
    })

    it('should throw error for invalid JSON', async () => {
      mockAdapter.fileExists = vi.fn().mockResolvedValue(true)
      mockAdapter.readFile = vi.fn().mockResolvedValue('{invalid-json}')

      const source = new FileSource(mockAdapter, { path: 'invalid.json' })
      
      await expect(source.load()).rejects.toThrow('Failed to parse config file invalid.json')
    })

    it('should throw error for invalid JavaScript', async () => {
      const invalidJs = 'invalid javascript syntax {'
      
      mockAdapter.fileExists = vi.fn().mockResolvedValue(true)
      mockAdapter.readFile = vi.fn().mockResolvedValue(invalidJs)

      const source = new FileSource(mockAdapter, { path: 'invalid.js' })
      
      await expect(source.load()).rejects.toThrow('Failed to parse config file invalid.js')
    })

    it('should handle file read errors', async () => {
      mockAdapter.fileExists = vi.fn().mockResolvedValue(true)
      mockAdapter.readFile = vi.fn().mockRejectedValue(new Error('Permission denied'))

      const source = new FileSource(mockAdapter, { path: 'config.json' })
      
      await expect(source.load()).rejects.toThrow('Failed to read config file config.json')
    })

    it('should resolve relative paths correctly', async () => {
      mockAdapter.fileExists = vi.fn().mockResolvedValue(true)
      mockAdapter.readFile = vi.fn().mockResolvedValue('{}')

      const source = new FileSource(mockAdapter, { path: './configs/app.json' })
      await source.load()

      expect(mockAdapter.resolvePath).toHaveBeenCalledWith('./configs/app.json')
      expect(mockAdapter.readFile).toHaveBeenCalledWith('./configs/app.json', 'utf8')
    })
  })

  describe('watch', () => {
    it('should setup file watching when supported', async () => {
      const watchCallback = vi.fn()
      mockAdapter.watchFile = vi.fn()
      
      const source = new FileSource(mockAdapter, { path: 'config.json' })
      await source.watch(watchCallback)

      expect(mockAdapter.watchFile).toHaveBeenCalledWith(
        'config.json',
        expect.any(Function)
      )
    })

    it('should handle watch callback correctly', async () => {
      const configData = { updated: true }
      const watchCallback = vi.fn()
      let fileWatchCallback: Function

      mockAdapter.watchFile = vi.fn().mockImplementation((path, callback) => {
        fileWatchCallback = callback
      })
      mockAdapter.fileExists = vi.fn().mockResolvedValue(true)
      mockAdapter.readFile = vi.fn().mockResolvedValue(JSON.stringify(configData))

      const source = new FileSource(mockAdapter, { path: 'config.json' })
      await source.watch(watchCallback)

      // Simulate file change
      await fileWatchCallback!()

      expect(watchCallback).toHaveBeenCalledWith(configData)
    })

    it('should handle watch callback errors gracefully', async () => {
      const consoleSpy = vi.spyOn(console, 'error').mockImplementation(() => {})
      const watchCallback = vi.fn()
      let fileWatchCallback: Function

      mockAdapter.watchFile = vi.fn().mockImplementation((path, callback) => {
        fileWatchCallback = callback
      })
      mockAdapter.fileExists = vi.fn().mockResolvedValue(true)
      mockAdapter.readFile = vi.fn().mockRejectedValue(new Error('Read error'))

      const source = new FileSource(mockAdapter, { path: 'config.json' })
      await source.watch(watchCallback)

      // Simulate file change that causes error
      await fileWatchCallback!()

      expect(consoleSpy).toHaveBeenCalledWith(
        'Error reloading config file config.json:',
        expect.any(Error)
      )
      expect(watchCallback).not.toHaveBeenCalled()

      consoleSpy.mockRestore()
    })
  })

  describe('close', () => {
    it('should call close watcher when available', async () => {
      const mockCloseWatcher = vi.fn()
      mockAdapter.watchFile = vi.fn().mockResolvedValue(mockCloseWatcher)

      const source = new FileSource(mockAdapter, { path: 'config.json' })
      
      // Setup watching first
      await source.watch(vi.fn())
      
      // Then close
      await source.close()

      expect(mockCloseWatcher).toHaveBeenCalled()
    })

    it('should handle missing close function gracefully', async () => {
      mockAdapter.watchFile = vi.fn().mockResolvedValue(undefined)

      const source = new FileSource(mockAdapter, { path: 'config.json' })
      
      await source.watch(vi.fn())
      
      // Should not throw
      await expect(source.close()).resolves.not.toThrow()
    })
  })

  describe('edge cases', () => {
    it('should handle empty file content', async () => {
      mockAdapter.fileExists = vi.fn().mockResolvedValue(true)
      mockAdapter.readFile = vi.fn().mockResolvedValue('')

      const source = new FileSource(mockAdapter, { path: 'empty.json' })
      
      await expect(source.load()).rejects.toThrow('Failed to parse config file empty.json')
    })

    it('should handle different file extensions', async () => {
      mockAdapter.fileExists = vi.fn().mockResolvedValue(true)
      mockAdapter.readFile = vi.fn().mockResolvedValue('{"test": true}')

      // Test various extensions
      const extensions = ['json', 'js', 'config', 'conf']
      
      for (const ext of extensions) {
        const source = new FileSource(mockAdapter, { path: `config.${ext}` })
        const result = await source.load()
        expect(result).toEqual({ test: true })
      }
    })

    it('should handle absolute paths', async () => {
      mockAdapter.fileExists = vi.fn().mockResolvedValue(true)
      mockAdapter.readFile = vi.fn().mockResolvedValue('{}')

      const source = new FileSource(mockAdapter, { path: '/absolute/path/config.json' })
      await source.load()

      expect(mockAdapter.resolvePath).toHaveBeenCalledWith('/project', '/absolute/path/config.json')
    })
  })
})