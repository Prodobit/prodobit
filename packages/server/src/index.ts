import { serve } from "@hono/node-server";
import { coreModule } from "./core/manifest.js";
import { ModuleLoader } from "./framework/module-loader.js";
import { rbacManager } from "./framework/rbac.js";
import { tenantIsolationMiddleware } from "./framework/rls.js";
import type { ModuleManifest } from "./framework/types.js";
import { ServerConfigManager, type ServerConfig } from "./config/index.js";
import { employeeModule } from "./modules/employee/manifest.js";
import { salesModule } from "./modules/sales/manifest.js";
import { manufacturingModule } from "./modules/manufacturing/manifest.js";
import { inventoryModule } from "./modules/inventory/manifest.js";
import { customerModule } from "./modules/customer/manifest.js";
import { supplierModule } from "./modules/supplier/manifest.js";
import { installationRoutes } from "./installation/routes.js";

export { coreModule } from "./core/manifest.js";
export { employeeModule } from "./modules/employee/manifest.js";
export { salesModule } from "./modules/sales/manifest.js";
export { manufacturingModule } from "./modules/manufacturing/manifest.js";
export { inventoryModule } from "./modules/inventory/manifest.js";
export { customerModule } from "./modules/customer/manifest.js";
export { supplierModule } from "./modules/supplier/manifest.js";
export { ModuleLoader, rbacManager, ServerConfigManager };
export type { ModuleManifest, ServerConfig };
export * from './config/index.js';

export interface CreateServerAppOptions {
  modules?: ModuleManifest[];
  configOverrides?: Partial<ServerConfig>;
  configManager?: ServerConfigManager;
}

export async function createServerApp(options: CreateServerAppOptions = {}) {
  // Initialize configuration manager
  const configManager = options.configManager || new ServerConfigManager();
  await configManager.initialize();
  
  // Get server configuration
  const baseConfig = configManager.getConfig();
  const config = { ...baseConfig, ...options.configOverrides };
  
  const moduleLoader = new ModuleLoader(config);

  // Register core module
  moduleLoader.registerModule(coreModule);
  rbacManager.registerPermissions(coreModule.permissions);

  // Register additional modules
  const allModules = [coreModule, ...(options.modules || [])];

  for (const module of options.modules || []) {
    moduleLoader.registerModule(module);
    rbacManager.registerPermissions(module.permissions);
  }

  // Enable core module by default
  moduleLoader.enableModule("core");

  const app = moduleLoader.getApp();

  // Add installation routes (before tenant isolation)
  app.route("/api/v1/installation", installationRoutes);

  // Add tenant isolation middleware
  app.use("*", tenantIsolationMiddleware());

  return {
    app: app,
    moduleLoader,
    configManager,
    config,
    start: (port?: number) => {
      const serverPort = port || config.port || 3001;

      console.log(`🚀 Prodobit Server starting on port ${serverPort}`);
      console.log(`🌍 Environment: ${configManager.isDevelopment() ? 'development' : configManager.isProduction() ? 'production' : 'test'}`);
      console.log(`📦 Enabled modules: ${moduleLoader.getEnabledModules().join(", ")}`);
      console.log(`🔧 Config modules: ${configManager.getEnabledModules().join(", ")}`);

      serve({
        fetch: app.fetch,
        port: serverPort,
      });
    },
    enableModule: async (moduleId: string) => {
      await configManager.enableModule(moduleId);
      return moduleLoader.enableModule(moduleId);
    },
    disableModule: async (moduleId: string) => {
      await configManager.disableModule(moduleId);
      return moduleLoader.disableModule(moduleId);
    },
    getEnabledModules: moduleLoader.getEnabledModules.bind(moduleLoader),
    getConfigManager: () => configManager,
    close: async () => {
      await configManager.close();
    },
  };
}

// Example usage for direct server start
if (process.argv[1] === new URL(import.meta.url).pathname) {
  const server = await createServerApp({
    modules: [employeeModule, salesModule, manufacturingModule, inventoryModule, customerModule, supplierModule], // Include modules
  });

  // Setup graceful shutdown
  const gracefulShutdown = async (signal: string) => {
    console.log(`\n${signal} received, shutting down gracefully...`);
    await server.close();
    process.exit(0);
  };

  process.on('SIGTERM', () => gracefulShutdown('SIGTERM'));
  process.on('SIGINT', () => gracefulShutdown('SIGINT'));

  try {
    // Enable modules in dependency order
    await server.enableModule("inventory"); // manufacturing depends on this
    await server.enableModule("employee");
    await server.enableModule("sales");
    await server.enableModule("customer");
    await server.enableModule("supplier");
    await server.enableModule("manufacturing"); // enable after inventory

    server.start();
  } catch (error) {
    console.error('Failed to start server:', error);
    await server.close();
    process.exit(1);
  }
}
