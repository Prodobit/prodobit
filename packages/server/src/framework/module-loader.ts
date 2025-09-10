import { Hono } from "hono";
import { cors } from "hono/cors";
import { logger } from "hono/logger";
import { createDatabase, type Database } from "@prodobit/database";
import type { ModuleManifest, ServerConfig, ServerContext } from "./types.js";
import health from "../core/health.js";

export class ModuleLoader {
  private app: Hono<{ Variables: ServerContext }>;
  private db: ReturnType<typeof createDatabase>;
  private enabledModules: Set<string> = new Set();
  private moduleRegistry: Map<string, ModuleManifest> = new Map();

  constructor(private config: ServerConfig) {
    this.app = new Hono<{ Variables: ServerContext }>();
    this.db = createDatabase(config.database);
    this.setupMiddleware();
    this.setupCoreRoutes();
  }

  /**
   * Initialize the module loader with database connection check
   */
  async initialize(): Promise<void> {
    console.log('🚀 Initializing ModuleLoader...')
    
    // Simple database connection check
    try {
      await this.db.execute('SELECT 1')
      console.log('✅ Database connection: OK')
    } catch (error) {
      console.error('❌ Database connection: FAILED', error)
      throw new Error('Database connection failed')
    }
    
    console.log('✅ ModuleLoader initialized successfully')
  }

  private setupMiddleware() {
    // Logger
    this.app.use("*", logger());

    // CORS
    this.app.use(
      "*",
      cors(this.config.cors || {
        origin: ["http://localhost:3000", "http://localhost:5173"],
        credentials: true,
      })
    );

    // Context setup
    this.app.use("*", async (c, next) => {
      c.set("db", this.db);
      c.set("enabledModules", this.enabledModules);
      c.set("config", this.config);
      await next();
    });
  }

  private setupCoreRoutes() {
    // Health endpoints
    this.app.route("/health", health);
    
    // API info
    this.app.get("/api/v1", (c) => {
      const endpoints: Record<string, string> = {
        health: "/health",
        features: "/api/v1/features",
      };

      // Add enabled module endpoints
      for (const moduleName of this.enabledModules) {
        const module = this.moduleRegistry.get(moduleName);
        if (module) {
          endpoints[moduleName] = `/api/v1/${moduleName}`;
        }
      }

      return c.json({
        message: "Prodobit API v1",
        version: "1.0.0",
        endpoints,
      });
    });

    // Feature discovery endpoint
    this.app.get("/api/v1/features", (c) => {
      const features = Array.from(this.enabledModules).map(name => {
        const module = this.moduleRegistry.get(name);
        return {
          name,
          version: module?.version || "1.0.0",
          description: module?.description || "",
          permissions: module?.permissions || {}
        };
      });

      return c.json({
        enabled: Array.from(this.enabledModules),
        features
      });
    });
  }

  registerModule(manifest: ModuleManifest) {
    this.moduleRegistry.set(manifest.name, manifest);
    console.log(`📦 Registered module: ${manifest.name}`);
  }

  async enableModule(moduleName: string): Promise<boolean> {
    const module = this.moduleRegistry.get(moduleName);
    if (!module) {
      console.error(`❌ Module not found: ${moduleName}`);
      return false;
    }

    try {
      // Run onEnable hook if exists
      if (module.onEnable) {
        await module.onEnable();
      }

      // Register routes
      module.registerRoutes(this.app);
      
      // Mark as enabled
      this.enabledModules.add(moduleName);
      
      console.log(`✅ Enabled module: ${moduleName}`);
      return true;
    } catch (error) {
      console.error(`❌ Failed to enable module ${moduleName}:`, error);
      return false;
    }
  }

  async disableModule(moduleName: string): Promise<boolean> {
    if (!this.enabledModules.has(moduleName)) {
      console.log(`⚠️  Module already disabled: ${moduleName}`);
      return true;
    }

    const module = this.moduleRegistry.get(moduleName);
    if (!module) {
      console.error(`❌ Module not found: ${moduleName}`);
      return false;
    }

    try {
      // Run onDisable hook if exists
      if (module.onDisable) {
        await module.onDisable();
      }

      // Remove from enabled modules
      this.enabledModules.delete(moduleName);
      
      console.log(`🔴 Disabled module: ${moduleName}`);
      return true;
    } catch (error) {
      console.error(`❌ Failed to disable module ${moduleName}:`, error);
      return false;
    }
  }

  getApp(): Hono<{ Variables: ServerContext }> {
    return this.app;
  }

  getEnabledModules(): string[] {
    return Array.from(this.enabledModules);
  }

  isModuleEnabled(moduleName: string): boolean {
    return this.enabledModules.has(moduleName);
  }

  getDatabase(): Database {
    return this.db;
  }
}