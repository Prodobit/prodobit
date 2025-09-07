import type { 
  ModuleDefinition, 
  ModuleState, 
  ModuleRegistry,
  ModulesConfig 
} from '../schemas/modules.js';

export interface ModuleManagerOptions {
  enableHotReloading?: boolean;
  developmentMode?: boolean;
  maxRetries?: number;
  retryDelay?: number;
}

export class ModuleManager {
  private registry: Map<string, ModuleState> = new Map();
  private dependencyGraph: Map<string, Set<string>> = new Map();
  private reverseDependencyGraph: Map<string, Set<string>> = new Map();
  private options: Required<ModuleManagerOptions>;
  
  constructor(options: ModuleManagerOptions = {}) {
    this.options = {
      enableHotReloading: options.enableHotReloading ?? false,
      developmentMode: options.developmentMode ?? false,
      maxRetries: options.maxRetries ?? 3,
      retryDelay: options.retryDelay ?? 1000,
    };
  }

  async initialize(config: ModulesConfig): Promise<void> {
    // Clear existing registry
    this.registry.clear();
    this.dependencyGraph.clear();
    this.reverseDependencyGraph.clear();

    // Check if config and manifest exist
    if (!config?.manifest?.modules) {
      console.warn('No modules configuration found, skipping module initialization');
      return;
    }

    // Build dependency graph
    this.buildDependencyGraph(config.manifest.modules);

    // Initialize module states
    for (const module of config.manifest.modules) {
      const state: ModuleState = {
        id: module.id,
        enabled: module.enabled,
        loaded: false,
        initialized: false,
        started: false,
        lastUpdated: new Date(),
      };
      this.registry.set(module.id, state);
    }

    // Load and start enabled modules in dependency order
    const loadOrder = this.calculateLoadOrder(config.manifest.modules);
    
    for (const moduleId of loadOrder) {
      const state = this.registry.get(moduleId);
      if (state?.enabled) {
        await this.loadModule(moduleId);
        await this.initializeModule(moduleId);
        
        const module = config.manifest.modules.find(m => m.id === moduleId);
        if (module?.autoStart) {
          await this.startModule(moduleId);
        }
      }
    }
  }

  async enableModule(moduleId: string): Promise<void> {
    const state = this.registry.get(moduleId);
    if (!state) {
      throw new Error(`Module ${moduleId} not found`);
    }

    if (state.enabled) {
      return; // Already enabled
    }

    // Check dependencies
    const dependencies = this.dependencyGraph.get(moduleId) || new Set();
    for (const depId of dependencies) {
      const depState = this.registry.get(depId);
      if (!depState?.enabled || !depState.started) {
        throw new Error(`Module ${moduleId} requires ${depId} to be enabled and started`);
      }
    }

    // Enable and start the module
    state.enabled = true;
    state.lastUpdated = new Date();
    this.registry.set(moduleId, state);

    await this.loadModule(moduleId);
    await this.initializeModule(moduleId);
    await this.startModule(moduleId);
  }

  async disableModule(moduleId: string): Promise<void> {
    const state = this.registry.get(moduleId);
    if (!state) {
      throw new Error(`Module ${moduleId} not found`);
    }

    if (!state.enabled) {
      return; // Already disabled
    }

    // Check reverse dependencies
    const reverseDeps = this.reverseDependencyGraph.get(moduleId) || new Set();
    for (const depId of reverseDeps) {
      const depState = this.registry.get(depId);
      if (depState?.enabled) {
        throw new Error(`Cannot disable ${moduleId} because ${depId} depends on it`);
      }
    }

    // Stop and disable the module
    await this.stopModule(moduleId);
    state.enabled = false;
    state.loaded = false;
    state.initialized = false;
    state.started = false;
    state.lastUpdated = new Date();
    this.registry.set(moduleId, state);
  }

  async reloadModule(moduleId: string): Promise<void> {
    if (!this.options.enableHotReloading) {
      throw new Error('Hot reloading is not enabled');
    }

    const state = this.registry.get(moduleId);
    if (!state?.enabled) {
      throw new Error(`Module ${moduleId} is not enabled`);
    }

    await this.stopModule(moduleId);
    state.loaded = false;
    state.initialized = false;
    state.started = false;

    await this.loadModule(moduleId);
    await this.initializeModule(moduleId);
    await this.startModule(moduleId);
  }

  getModuleState(moduleId: string): ModuleState | undefined {
    return this.registry.get(moduleId);
  }

  getAllModuleStates(): ModuleState[] {
    return Array.from(this.registry.values());
  }

  getEnabledModules(): string[] {
    return Array.from(this.registry.values())
      .filter(state => state.enabled)
      .map(state => state.id);
  }

  getStartedModules(): string[] {
    return Array.from(this.registry.values())
      .filter(state => state.started)
      .map(state => state.id);
  }

  isModuleReady(moduleId: string): boolean {
    const state = this.registry.get(moduleId);
    return state?.enabled === true && 
           state?.loaded === true && 
           state?.initialized === true && 
           state?.started === true && 
           !state?.error;
  }

  getModuleError(moduleId: string): string | undefined {
    return this.registry.get(moduleId)?.error;
  }

  validateModuleConfiguration(modules: ModuleDefinition[]): string[] {
    const errors: string[] = [];
    const moduleIds = new Set(modules.map(m => m.id));

    for (const module of modules) {
      // Check for duplicate IDs
      const duplicates = modules.filter(m => m.id === module.id);
      if (duplicates.length > 1) {
        errors.push(`Duplicate module ID: ${module.id}`);
      }

      // Check dependencies exist
      if (module.dependencies) {
        for (const depId of module.dependencies) {
          if (!moduleIds.has(depId)) {
            errors.push(`Module ${module.id} has invalid dependency: ${depId}`);
          }
        }
      }

      // Check for conflicts
      if (module.conflicts) {
        for (const conflictId of module.conflicts) {
          const conflictModule = modules.find(m => m.id === conflictId);
          if (conflictModule?.enabled && module.enabled) {
            errors.push(`Module ${module.id} conflicts with enabled module: ${conflictId}`);
          }
        }
      }
    }

    // Check for circular dependencies
    const circularDeps = this.findCircularDependencies(modules);
    errors.push(...circularDeps);

    return errors;
  }

  private buildDependencyGraph(modules: ModuleDefinition[]): void {
    for (const module of modules) {
      const deps = new Set(module.dependencies || []);
      this.dependencyGraph.set(module.id, deps);

      // Build reverse dependency graph
      for (const depId of deps) {
        if (!this.reverseDependencyGraph.has(depId)) {
          this.reverseDependencyGraph.set(depId, new Set());
        }
        this.reverseDependencyGraph.get(depId)!.add(module.id);
      }
    }
  }

  private calculateLoadOrder(modules: ModuleDefinition[]): string[] {
    const visited = new Set<string>();
    const visiting = new Set<string>();
    const order: string[] = [];

    const visit = (moduleId: string): void => {
      if (visited.has(moduleId)) {
        return;
      }
      if (visiting.has(moduleId)) {
        throw new Error(`Circular dependency detected involving module: ${moduleId}`);
      }

      visiting.add(moduleId);

      const deps = this.dependencyGraph.get(moduleId) || new Set();
      for (const depId of deps) {
        visit(depId);
      }

      visiting.delete(moduleId);
      visited.add(moduleId);
      order.push(moduleId);
    };

    // Sort by priority first
    const sortedModules = modules
      .slice()
      .sort((a, b) => b.priority - a.priority);

    for (const module of sortedModules) {
      if (!visited.has(module.id)) {
        visit(module.id);
      }
    }

    return order;
  }

  private findCircularDependencies(modules: ModuleDefinition[]): string[] {
    const errors: string[] = [];
    const visited = new Set<string>();
    const visiting = new Set<string>();

    const visit = (moduleId: string, path: string[]): void => {
      if (visited.has(moduleId)) {
        return;
      }
      if (visiting.has(moduleId)) {
        const cycle = path.slice(path.indexOf(moduleId));
        errors.push(`Circular dependency: ${cycle.join(' -> ')} -> ${moduleId}`);
        return;
      }

      visiting.add(moduleId);
      const newPath = [...path, moduleId];

      const module = modules.find(m => m.id === moduleId);
      if (module && module.dependencies) {
        for (const depId of module.dependencies) {
          visit(depId, newPath);
        }
      }

      visiting.delete(moduleId);
      visited.add(moduleId);
    };

    for (const module of modules) {
      if (!visited.has(module.id)) {
        visit(module.id, []);
      }
    }

    return errors;
  }

  private async loadModule(moduleId: string): Promise<void> {
    const state = this.registry.get(moduleId);
    if (!state) {
      throw new Error(`Module ${moduleId} not found`);
    }

    try {
      // Simulate module loading
      // In real implementation, this would dynamically import the module
      await this.delay(100);

      state.loaded = true;
      delete state.error;
      state.lastUpdated = new Date();
      this.registry.set(moduleId, state);
    } catch (error) {
      state.error = error instanceof Error ? error.message : 'Unknown load error';
      state.lastUpdated = new Date();
      this.registry.set(moduleId, state);
      throw error;
    }
  }

  private async initializeModule(moduleId: string): Promise<void> {
    const state = this.registry.get(moduleId);
    if (!state) {
      throw new Error(`Module ${moduleId} not found`);
    }

    if (!state.loaded) {
      throw new Error(`Module ${moduleId} must be loaded before initialization`);
    }

    try {
      // Simulate module initialization
      await this.delay(50);

      state.initialized = true;
      delete state.error;
      state.lastUpdated = new Date();
      this.registry.set(moduleId, state);
    } catch (error) {
      state.error = error instanceof Error ? error.message : 'Unknown initialization error';
      state.lastUpdated = new Date();
      this.registry.set(moduleId, state);
      throw error;
    }
  }

  private async startModule(moduleId: string): Promise<void> {
    const state = this.registry.get(moduleId);
    if (!state) {
      throw new Error(`Module ${moduleId} not found`);
    }

    if (!state.initialized) {
      throw new Error(`Module ${moduleId} must be initialized before starting`);
    }

    try {
      // Simulate module start
      await this.delay(50);

      state.started = true;
      delete state.error;
      state.lastUpdated = new Date();
      this.registry.set(moduleId, state);
    } catch (error) {
      state.error = error instanceof Error ? error.message : 'Unknown start error';
      state.lastUpdated = new Date();
      this.registry.set(moduleId, state);
      throw error;
    }
  }

  private async stopModule(moduleId: string): Promise<void> {
    const state = this.registry.get(moduleId);
    if (!state) {
      throw new Error(`Module ${moduleId} not found`);
    }

    try {
      // Simulate module stop
      await this.delay(50);

      state.started = false;
      delete state.error;
      state.lastUpdated = new Date();
      this.registry.set(moduleId, state);
    } catch (error) {
      state.error = error instanceof Error ? error.message : 'Unknown stop error';
      state.lastUpdated = new Date();
      this.registry.set(moduleId, state);
      throw error;
    }
  }

  private delay(ms: number): Promise<void> {
    return new Promise(resolve => setTimeout(resolve, ms));
  }
}