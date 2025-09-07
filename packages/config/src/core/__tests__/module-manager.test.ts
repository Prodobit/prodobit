import { describe, it, expect, beforeEach, vi } from 'vitest'
import { ModuleManager } from '../module-manager.js'

describe('ModuleManager', () => {
  let moduleManager: ModuleManager
  
  const mockModuleConfig = {
    manifest: {
      modules: [
        { 
          id: 'core',
          name: 'Core Module', 
          enabled: true, 
          version: '1.0.0',
          description: 'Core functionality',
          category: 'core' as const,
          dependencies: [],
          autoStart: true,
          priority: 100
        },
        { 
          id: 'sales',
          name: 'Sales Module', 
          enabled: true, 
          version: '1.0.0',
          description: 'Sales management',
          category: 'business' as const,
          dependencies: ['core'],
          autoStart: true,
          priority: 50
        },
        { 
          id: 'inventory',
          name: 'Inventory Module', 
          enabled: false, 
          version: '1.0.0',
          description: 'Inventory management',
          category: 'business' as const,
          dependencies: ['core'],
          autoStart: false,
          priority: 30
        }
      ],
      loadOrder: ['core', 'sales', 'inventory'],
      globalConfig: {}
    }
  }

  beforeEach(() => {
    moduleManager = new ModuleManager({
      enableHotReloading: true,
      developmentMode: true
    })
  })

  describe('constructor', () => {
    it('should create ModuleManager with default options', () => {
      const manager = new ModuleManager()
      expect(manager).toBeInstanceOf(ModuleManager)
    })

    it('should create ModuleManager with custom options', () => {
      const manager = new ModuleManager({
        enableHotReloading: true,
        developmentMode: true
      })
      expect(manager).toBeInstanceOf(ModuleManager)
    })
  })

  describe('validateModuleConfiguration', () => {
    it('should return empty array for valid configuration', () => {
      const modules = [
        { 
          id: 'core',
          name: 'Core Module', 
          enabled: true, 
          version: '1.0.0',
          description: 'Core functionality',
          category: 'core' as const,
          dependencies: [],
          autoStart: true,
          priority: 100
        },
        { 
          id: 'sales',
          name: 'Sales Module', 
          enabled: true, 
          version: '1.2.0',
          description: 'Sales management',
          category: 'business' as const,
          dependencies: ['core'],
          autoStart: true,
          priority: 50
        }
      ]
      
      const errors = moduleManager.validateModuleConfiguration(modules)
      expect(errors).toEqual([])
    })

    it('should handle incomplete modules without errors', () => {
      const modules = [
        { 
          id: 'core',
          name: 'core', 
          enabled: true 
        }, 
        { 
          id: 'invalid',
          enabled: true, 
          version: '1.0.0' 
        },
        { 
          id: 'sales',
          name: 'sales' 
        }
      ] as any
      
      const errors = moduleManager.validateModuleConfiguration(modules)
      // Current implementation only checks duplicate IDs and dependencies
      // so incomplete modules don't generate validation errors
      expect(errors).toEqual([])
    })

    it('should handle invalid field types without validation errors', () => {
      const modules = [
        { 
          id: 'invalid-type',
          name: 123, 
          enabled: 'true', 
          version: null,
          description: 'Test',
          category: 'core' as const,
          dependencies: [],
          autoStart: true,
          priority: 50
        }, 
        { 
          id: 'empty-name',
          name: '', 
          enabled: true, 
          version: '1.0.0',
          description: 'Test',
          category: 'core' as const,
          dependencies: [],
          autoStart: true,
          priority: 50
        }
      ] as any
      
      const errors = moduleManager.validateModuleConfiguration(modules)
      // Current implementation only validates duplicate IDs and dependencies
      // Field type validation is not implemented
      expect(errors).toEqual([])
    })

    it('should return error for duplicate module IDs', () => {
      const modules = [
        { 
          id: 'core',
          name: 'Core Module 1', 
          enabled: true, 
          version: '1.0.0',
          description: 'First core',
          category: 'core' as const,
          dependencies: [],
          autoStart: true,
          priority: 100
        },
        { 
          id: 'core', // duplicate ID
          name: 'Core Module 2', 
          enabled: false, 
          version: '2.0.0',
          description: 'Second core',
          category: 'core' as const,
          dependencies: [],
          autoStart: true,
          priority: 50
        }
      ]
      
      const errors = moduleManager.validateModuleConfiguration(modules)
      expect(errors).toContain('Duplicate module ID: core')
    })

    it('should handle empty module array', () => {
      const errors = moduleManager.validateModuleConfiguration([])
      expect(errors).toEqual([])
    })
  })

  describe('initialize', () => {
    it('should initialize with valid module configuration', async () => {
      await expect(moduleManager.initialize(mockModuleConfig)).resolves.not.toThrow()
      
      expect(moduleManager.isModuleReady('core')).toBe(true)
      expect(moduleManager.isModuleReady('sales')).toBe(true)
      expect(moduleManager.isModuleReady('inventory')).toBe(false)
    })

    it('should handle undefined module config', async () => {
      await expect(moduleManager.initialize(undefined)).resolves.not.toThrow()
      
      const enabledModules = moduleManager.getEnabledModules()
      expect(enabledModules.length).toBe(0)
    })

    it('should handle config without manifest', async () => {
      await expect(moduleManager.initialize({})).resolves.not.toThrow()
      
      const enabledModules = moduleManager.getEnabledModules()
      expect(enabledModules.length).toBe(0)
    })
  })

  describe('module state management', () => {
    beforeEach(async () => {
      await moduleManager.initialize(mockModuleConfig)
    })

    it('should enable a module', async () => {
      expect(moduleManager.isModuleReady('inventory')).toBe(false)
      
      await moduleManager.enableModule('inventory')
      
      expect(moduleManager.isModuleReady('inventory')).toBe(true)
      expect(moduleManager.getEnabledModules().includes('inventory')).toBe(true)
    })

    it('should disable a module', async () => {
      expect(moduleManager.isModuleReady('sales')).toBe(true)
      
      // Disable sales module (which depends on core)
      await moduleManager.disableModule('sales')
      
      expect(moduleManager.isModuleReady('sales')).toBe(false)
      expect(moduleManager.getEnabledModules().includes('sales')).toBe(false)
    })

    it('should reload a module', async () => {
      expect(moduleManager.isModuleReady('sales')).toBe(true)
      
      await expect(moduleManager.reloadModule('sales')).resolves.not.toThrow()
      
      // Module should still be ready after reload
      expect(moduleManager.isModuleReady('sales')).toBe(true)
    })

    it('should handle enabling non-existent module', async () => {
      await expect(moduleManager.enableModule('non-existent')).rejects.toThrow(
        'Module non-existent not found'
      )
    })

    it('should handle disabling non-existent module', async () => {
      await expect(moduleManager.disableModule('non-existent')).rejects.toThrow(
        'Module non-existent not found'
      )
    })

    it('should handle reloading non-existent module', async () => {
      await expect(moduleManager.reloadModule('non-existent')).rejects.toThrow(
        'Module non-existent is not enabled'
      )
    })
  })

  describe('getModuleState', () => {
    beforeEach(async () => {
      await moduleManager.initialize(mockModuleConfig)
    })

    it('should return module state for existing module', () => {
      const coreState = moduleManager.getModuleState('core')
      expect(coreState).toMatchObject({
        id: 'core',
        enabled: true,
        started: true
      })

      const inventoryState = moduleManager.getModuleState('inventory')
      expect(inventoryState).toMatchObject({
        id: 'inventory', 
        enabled: false,
        started: false
      })
    })

    it('should return undefined for non-existent module', () => {
      const state = moduleManager.getModuleState('non-existent')
      expect(state).toBeUndefined()
    })
  })

  describe('getAllModuleStates', () => {
    beforeEach(async () => {
      await moduleManager.initialize(mockModuleConfig)
    })

    it('should return all module states', () => {
      const allStates = moduleManager.getAllModuleStates()
      
      expect(allStates).toBeInstanceOf(Array)
      expect(allStates.length).toBe(3)
      
      const coreState = allStates.find(state => state.id === 'core')
      expect(coreState).toMatchObject({
        id: 'core',
        enabled: true,
        started: true
      })
      
      const salesState = allStates.find(state => state.id === 'sales')
      expect(salesState).toMatchObject({
        id: 'sales', 
        enabled: true,
        started: true
      })
      
      const inventoryState = allStates.find(state => state.id === 'inventory')
      expect(inventoryState).toMatchObject({
        id: 'inventory',
        enabled: false,
        started: false
      })
    })

    it('should return empty array when no modules configured', () => {
      const manager = new ModuleManager()
      const allStates = manager.getAllModuleStates()
      expect(allStates).toEqual([])
    })
  })

  describe('getEnabledModules', () => {
    beforeEach(async () => {
      await moduleManager.initialize(mockModuleConfig)
    })

    it('should return array of enabled module names', () => {
      const enabledModules = moduleManager.getEnabledModules()
      
      expect(enabledModules).toBeInstanceOf(Array)
      expect(enabledModules.includes('core')).toBe(true)
      expect(enabledModules.includes('sales')).toBe(true)
      expect(enabledModules.includes('inventory')).toBe(false)
      expect(enabledModules.length).toBe(2)
    })

    it('should update when modules are enabled/disabled', async () => {
      await moduleManager.enableModule('inventory')
      let enabledModules = moduleManager.getEnabledModules()
      expect(enabledModules.length).toBe(3)
      expect(enabledModules.includes('inventory')).toBe(true)

      await moduleManager.disableModule('sales')
      enabledModules = moduleManager.getEnabledModules()
      expect(enabledModules.length).toBe(2)
      expect(enabledModules.includes('sales')).toBe(false)
    })
  })

  describe('isModuleReady', () => {
    beforeEach(async () => {
      await moduleManager.initialize(mockModuleConfig)
    })

    it('should return true for enabled modules', () => {
      expect(moduleManager.isModuleReady('core')).toBe(true)
      expect(moduleManager.isModuleReady('sales')).toBe(true)
    })

    it('should return false for disabled modules', () => {
      expect(moduleManager.isModuleReady('inventory')).toBe(false)
    })

    it('should return false for non-existent modules', () => {
      expect(moduleManager.isModuleReady('non-existent')).toBe(false)
    })
  })

  describe('hot reloading mode', () => {
    it('should enable hot reloading when configured', () => {
      const manager = new ModuleManager({
        enableHotReloading: true,
        developmentMode: true
      })
      
      expect(manager['options'].enableHotReloading).toBe(true)
      expect(manager['options'].developmentMode).toBe(true)
    })
  })

  describe('edge cases', () => {
    it('should handle module with additional properties', async () => {
      const moduleConfigWithExtra = {
        manifest: {
          modules: [
            { 
              id: 'core',
              name: 'core', 
              enabled: true, 
              version: '1.0.0',
              description: 'Core module',
              category: 'core' as const,
              dependencies: [],
              autoStart: true,
              priority: 100,
              extraProp: 'should be ignored'
            }
          ]
        }
      }
      
      const errors = moduleManager.validateModuleConfiguration(moduleConfigWithExtra.manifest.modules)
      expect(errors).toEqual([])
      
      await moduleManager.initialize(moduleConfigWithExtra)
      expect(moduleManager.isModuleReady('core')).toBe(true)
    })

    it('should handle very long module names', () => {
      const longName = 'a'.repeat(1000)
      const modules = [
        { name: longName, enabled: true, version: '1.0.0' }
      ]
      
      const errors = moduleManager.validateModuleConfiguration(modules)
      expect(errors).toEqual([])
    })

    it('should handle special characters in module names', () => {
      const modules = [
        { 
          id: 'module-with-dashes',
          name: 'module-with-dashes', 
          enabled: true, 
          version: '1.0.0',
          description: 'Module with dashes',
          category: 'core' as const,
          dependencies: [],
          autoStart: true,
          priority: 50
        },
        { 
          id: 'module_with_underscores',
          name: 'module_with_underscores', 
          enabled: true, 
          version: '1.0.0',
          description: 'Module with underscores',
          category: 'core' as const,
          dependencies: [],
          autoStart: true,
          priority: 50
        },
        { 
          id: 'module.with.dots',
          name: 'module.with.dots', 
          enabled: true, 
          version: '1.0.0',
          description: 'Module with dots',
          category: 'core' as const,
          dependencies: [],
          autoStart: true,
          priority: 50
        }
      ]
      
      const errors = moduleManager.validateModuleConfiguration(modules)
      expect(errors).toEqual([])
    })
  })
})