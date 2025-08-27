import { ConfigManager, type ProdobitConfig } from '@prodobit/config';
import type { ModuleManifest } from '../framework/types.js';

export interface ServerConfig {
  modules: ModuleManifest[];
  database: {
    host: string;
    port: number;
    user: string;
    password: string;
    database: string;
    ssl?: boolean;
    max?: number;
  };
  cors?: {
    origin: string[];
    credentials?: boolean;
  };
  port?: number;
}

export class ServerConfigManager {
  private configManager: ConfigManager;
  private serverConfig: ServerConfig | null = null;

  constructor() {
    this.configManager = new ConfigManager({
      environment: this.detectEnvironment(),
      autoReload: process.env.NODE_ENV === 'development',
      validateModules: true,
    });
  }

  async initialize(): Promise<void> {
    await this.configManager.initialize();
    this.serverConfig = this.buildServerConfig();
  }

  getConfig(): ServerConfig {
    if (!this.serverConfig) {
      throw new Error('ServerConfig not initialized. Call initialize() first.');
    }
    return this.serverConfig;
  }

  getProdobitConfig(): ProdobitConfig {
    return this.configManager.getConfig();
  }

  getConfigManager(): ConfigManager {
    return this.configManager;
  }

  async reload(): Promise<void> {
    await this.configManager.reload();
    this.serverConfig = this.buildServerConfig();
  }

  private detectEnvironment(): 'development' | 'production' | 'test' {
    const env = process.env.NODE_ENV || 'development';
    return ['development', 'production', 'test'].includes(env) 
      ? env as 'development' | 'production' | 'test'
      : 'development';
  }

  private buildServerConfig(): ServerConfig {
    const config = this.configManager.getConfig();
    
    return {
      modules: [], // Will be populated by module registration
      database: {
        host: config.database.connection.host,
        port: config.database.connection.port,
        user: config.database.connection.user,
        password: config.database.connection.password,
        database: config.database.connection.database,
        ssl: config.database.connection.ssl,
        max: config.database.pool?.max,
      },
      cors: {
        origin: this.parseOrigins(config.server.cors.origins),
        credentials: config.server.cors.credentials,
      },
      port: config.server.server.port,
    };
  }

  private parseOrigins(origins: string[] | string): string[] {
    if (Array.isArray(origins)) {
      return origins;
    }
    if (origins === '*') {
      return ['*'];
    }
    return [origins];
  }

  // Module management delegation
  async enableModule(moduleId: string): Promise<void> {
    await this.configManager.enableModule(moduleId);
  }

  async disableModule(moduleId: string): Promise<void> {
    await this.configManager.disableModule(moduleId);
  }

  isModuleReady(moduleId: string): boolean {
    return this.configManager.isModuleReady(moduleId);
  }

  getEnabledModules(): string[] {
    return this.configManager.getEnabledModules();
  }

  // Environment helpers
  isDevelopment(): boolean {
    return this.configManager.isDevelopment();
  }

  isProduction(): boolean {
    return this.configManager.isProduction();
  }

  isTest(): boolean {
    return this.configManager.isTest();
  }

  // Graceful shutdown
  async close(): Promise<void> {
    await this.configManager.close();
  }
}