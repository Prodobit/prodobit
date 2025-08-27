// Main configuration manager and loader
export { ConfigManager, ConfigLoader, ModuleManager } from './core/index.js';

// Configuration schemas and types
export * from './schemas/index.js';

// Configuration sources
export * from './sources/index.js';

// Type definitions
export * from './types/config-source.js';

// Platform abstraction
export * from './platform/index.js';

// Utilities
export * from './utils/index.js';

// Default export for convenience
export { ConfigManager as default } from './core/config-manager.js';

// Platform-specific factory function
export { createPlatformAdapter } from './platform/adapter-factory.js';