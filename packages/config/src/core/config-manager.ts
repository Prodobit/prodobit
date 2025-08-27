import { ConfigLoader } from './config-loader.js';
import { ModuleManager } from './module-manager.js';
import type { ProdobitConfig } from '../schemas/index.js';
import type { ConfigLoadOptions } from '../types/config-source.js';

export interface ConfigManagerOptions extends ConfigLoadOptions {
  autoReload?: boolean;
  validateModules?: boolean;
}

export class ConfigManager {
  private loader: ConfigLoader;
  private moduleManager: ModuleManager;
  private config: ProdobitConfig | null = null;
  private options: ConfigManagerOptions;
  private changeCallbacks: Array<(config: ProdobitConfig) => void> = [];

  constructor(options: ConfigManagerOptions = {}) {
    this.options = {
      autoReload: options.autoReload ?? false,
      validateModules: options.validateModules ?? true,
      ...options,
    };

    this.loader = new ConfigLoader(options);
    this.moduleManager = new ModuleManager({
      enableHotReloading: this.options.autoReload ?? false,
      developmentMode: this.options.environment === 'development',
    });
  }

  async initialize(): Promise<ProdobitConfig> {
    // Load configuration
    this.config = await this.loader.load();

    // Validate module configuration if enabled
    if (this.options.validateModules && this.config.modules?.manifest?.modules) {
      const moduleErrors = this.moduleManager.validateModuleConfiguration(
        this.config.modules.manifest.modules
      );
      
      if (moduleErrors.length > 0) {
        throw new Error(`Module configuration validation failed:\n${moduleErrors.join('\n')}`);
      }
    }

    // Initialize module manager
    await this.moduleManager.initialize(this.config.modules);

    // Set up auto-reload if enabled
    if (this.options.autoReload) {
      await this.setupAutoReload();
    }

    return this.config;
  }

  async reload(): Promise<ProdobitConfig> {
    const newConfig = await this.loader.load();
    
    // Update module configuration if it changed
    if (this.hasModulesChanged(this.config, newConfig)) {
      if (this.options.validateModules && newConfig.modules?.manifest?.modules) {
        const moduleErrors = this.moduleManager.validateModuleConfiguration(
          newConfig.modules.manifest.modules
        );
        
        if (moduleErrors.length > 0) {
          throw new Error(`Module configuration validation failed:\n${moduleErrors.join('\n')}`);
        }
      }

      await this.moduleManager.initialize(newConfig.modules);
    }

    this.config = newConfig;

    // Notify change callbacks
    this.changeCallbacks.forEach(callback => {
      try {
        callback(newConfig);
      } catch (error) {
        console.error('Error in config change callback:', error);
      }
    });

    return newConfig;
  }

  getConfig(): ProdobitConfig {
    if (!this.config) {
      throw new Error('Configuration not initialized. Call initialize() first.');
    }
    return this.config;
  }

  getConfigSection<T extends keyof ProdobitConfig>(section: T): ProdobitConfig[T] {
    return this.getConfig()[section];
  }

  async updateConfigSection<T extends keyof ProdobitConfig>(
    section: T, 
    updates: Partial<ProdobitConfig[T]>
  ): Promise<void> {
    if (!this.config) {
      throw new Error('Configuration not initialized. Call initialize() first.');
    }

    // Create new config with updates
    const newConfig = {
      ...this.config,
      [section]: {
        ...this.config[section],
        ...updates,
      },
    };

    // Validate the updated configuration
    const loader = new ConfigLoader();
    const validationResult = await loader.load.call({ 
      loadAndMergeConfigs: () => Promise.resolve(newConfig),
      validateConfig: loader['validateConfig'].bind(loader),
    } as any);

    this.config = newConfig;

    // If modules section was updated, reinitialize module manager
    if (section === 'modules') {
      await this.moduleManager.initialize(newConfig.modules);
    }

    // Notify change callbacks
    this.changeCallbacks.forEach(callback => {
      try {
        callback(newConfig);
      } catch (error) {
        console.error('Error in config change callback:', error);
      }
    });
  }

  // Module management methods
  async enableModule(moduleId: string): Promise<void> {
    await this.moduleManager.enableModule(moduleId);
  }

  async disableModule(moduleId: string): Promise<void> {
    await this.moduleManager.disableModule(moduleId);
  }

  async reloadModule(moduleId: string): Promise<void> {
    await this.moduleManager.reloadModule(moduleId);
  }

  getModuleState(moduleId: string) {
    return this.moduleManager.getModuleState(moduleId);
  }

  getAllModuleStates() {
    return this.moduleManager.getAllModuleStates();
  }

  getEnabledModules() {
    return this.moduleManager.getEnabledModules();
  }

  isModuleReady(moduleId: string) {
    return this.moduleManager.isModuleReady(moduleId);
  }

  // Platform adapter access
  getAdapter(): any {
    return this.loader.getAdapter();
  }

  // Environment-specific methods
  isDevelopment(): boolean {
    return this.getConfigSection('base').environment === 'development';
  }

  isProduction(): boolean {
    return this.getConfigSection('base').environment === 'production';
  }

  isTest(): boolean {
    return this.getConfigSection('base').environment === 'test';
  }

  // Configuration watching
  onChange(callback: (config: ProdobitConfig) => void): () => void {
    this.changeCallbacks.push(callback);
    
    // Return unsubscribe function
    return () => {
      const index = this.changeCallbacks.indexOf(callback);
      if (index > -1) {
        this.changeCallbacks.splice(index, 1);
      }
    };
  }

  // Cleanup
  async close(): Promise<void> {
    await this.loader.close();
    this.changeCallbacks = [];
  }

  // Utility methods
  get(path: string, defaultValue?: unknown): unknown {
    if (!this.config) {
      throw new Error('Configuration not initialized. Call initialize() first.');
    }

    return this.getNestedValue(this.config, path, defaultValue);
  }

  has(path: string): boolean {
    if (!this.config) {
      return false;
    }

    try {
      this.getNestedValue(this.config, path);
      return true;
    } catch {
      return false;
    }
  }

  private async setupAutoReload(): Promise<void> {
    await this.loader.watch(async (newConfig) => {
      try {
        await this.reload();
      } catch (error) {
        console.error('Error during auto-reload:', error);
      }
    });
  }

  private hasModulesChanged(
    oldConfig: ProdobitConfig | null, 
    newConfig: ProdobitConfig
  ): boolean {
    if (!oldConfig) return true;

    return JSON.stringify(oldConfig.modules) !== JSON.stringify(newConfig.modules);
  }

  private getNestedValue(obj: unknown, path: string, defaultValue?: unknown): unknown {
    const keys = path.split('.');
    let current = obj;

    for (const key of keys) {
      if (current === null || current === undefined) {
        if (defaultValue !== undefined) {
          return defaultValue;
        }
        throw new Error(`Configuration path '${path}' not found`);
      }

      if (typeof current === 'object' && key in (current as Record<string, unknown>)) {
        current = (current as Record<string, unknown>)[key];
      } else {
        if (defaultValue !== undefined) {
          return defaultValue;
        }
        throw new Error(`Configuration path '${path}' not found`);
      }
    }

    return current;
  }
}