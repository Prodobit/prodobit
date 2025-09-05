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
    ssl?: boolean | { rejectUnauthorized: boolean };
    max?: number;
  };
  cors?: {
    origin: string[];
    credentials?: boolean;
  };
  email?: {
    provider?: "resend" | "smtp";
    apiKey?: string;
    smtp?: {
      host: string;
      port: number;
      secure?: boolean;
      auth?: {
        user: string;
        pass: string;
      };
    };
    fromEmail?: string;
    fromName?: string;
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
        ssl: this.getSSLConfig(config.database.connection.ssl),
        max: config.database.pool?.max,
      },
      cors: {
        origin: this.parseOrigins(config.server.cors.origins),
        credentials: config.server.cors.credentials,
      },
      email: {
        apiKey: process.env["EMAIL_API_KEY"] || process.env["RESEND_API_KEY"],
        fromEmail: process.env["EMAIL_FROM_ADDRESS"] || process.env["FROM_EMAIL"],
        fromName: process.env["EMAIL_FROM_NAME"] || process.env["FROM_NAME"],
        provider: (process.env["EMAIL_PROVIDER"] as "resend" | "smtp") || "resend",
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

  private getSSLConfig(ssl?: boolean): boolean | { rejectUnauthorized: boolean } {
    if (ssl === false) {
      return false;
    }
    
    // Production'da SSL enabled ama rejectUnauthorized false
    if (process.env.NODE_ENV === "production") {
      return { rejectUnauthorized: false };
    }
    
    // Development'ta SSL false
    return false;
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