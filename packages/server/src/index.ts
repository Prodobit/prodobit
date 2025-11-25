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
import { brandModule } from "./modules/brand/manifest.js";
import { mediaModule } from "./modules/media/manifest.js";
import { assetIssueModule } from "./modules/asset-issue/manifest.js";
import { taskModule } from "./modules/task/manifest.js";
import { maintenanceModule } from "./modules/maintenance/manifest.js";
import { calibrationModule } from "./modules/calibration/manifest.js";
import { integrationModule } from "./modules/integration/manifest.js";
import { EmailService } from "./core/utils/email.js";
import { SMSService } from "./core/utils/sms.js";
import type { Database } from "@prodobit/database";
import { logger } from "./core/logger/index.js";
import { loggerMiddleware, tenantLoggerMiddleware } from "./core/logger/middleware.js";

export { coreModule } from "./core/manifest.js";
export { employeeModule } from "./modules/employee/manifest.js";
export { salesModule } from "./modules/sales/manifest.js";
export { manufacturingModule } from "./modules/manufacturing/manifest.js";
export { inventoryModule } from "./modules/inventory/manifest.js";
export { customerModule } from "./modules/customer/manifest.js";
export { supplierModule } from "./modules/supplier/manifest.js";
export { brandModule } from "./modules/brand/manifest.js";
export { mediaModule } from "./modules/media/manifest.js";
export { assetIssueModule } from "./modules/asset-issue/manifest.js";
export { taskModule } from "./modules/task/manifest.js";
export { maintenanceModule } from "./modules/maintenance/manifest.js";
export { calibrationModule } from "./modules/calibration/manifest.js";
export { integrationModule } from "./modules/integration/manifest.js";
export { ModuleLoader, rbacManager, ServerConfigManager };
export type { ModuleManifest, ServerConfig };
export * from "./config/index.js";
export {
  authMiddleware,
  optionalAuthMiddleware,
  tenantContextMiddleware,
} from "./core/middleware/auth.js";
export {
  apiKeyAuthMiddleware,
  optionalApiKeyAuthMiddleware,
  requireScope,
  requireAnyScope,
  requireAllScopes,
  rateLimitMiddleware,
} from "./modules/integration/middleware/index.js";
export { IntegrationService } from "./modules/integration/service.js";
export {
  createPublicRouter,
  getIntegrationTenantId,
  hasScope,
} from "./modules/integration/public-routes-helper.js";
export { SMSService } from "./core/utils/sms.js";
export { EmailService } from "./core/utils/email.js";
export type {
  SMSProvider,
  SMSProviderConfig,
} from "./core/utils/sms-provider.js";
export type {
  EmailProvider,
  EmailProviderConfig,
} from "./core/utils/email-provider.js";
export { logger, createLogger, logError, measureTime, LogLevel } from "./core/logger/index.js";
export type { Logger } from "./core/logger/index.js";
export { loggerMiddleware, tenantLoggerMiddleware } from "./core/logger/middleware.js";

export interface CreateServerAppOptions {
  modules?: ModuleManifest[];
  configOverrides?: Partial<ServerConfig>;
  configManager?: ServerConfigManager;
  cookiePrefix?: string;
}

export async function createServerApp(
  options: CreateServerAppOptions = {}
): Promise<{
  app: ReturnType<ModuleLoader["getApp"]>;
  moduleLoader: ModuleLoader;
  configManager: ServerConfigManager;
  config: ServerConfig;
  db: Database;
  start: (port?: number) => void;
  enableModule: (moduleId: string) => Promise<boolean>;
  disableModule: (moduleId: string) => Promise<boolean>;
  getEnabledModules: () => string[];
  getConfigManager: () => ServerConfigManager;
  close: () => Promise<void>;
}> {
  // Initialize configuration manager
  const configManager = options.configManager || new ServerConfigManager();
  await configManager.initialize();

  // Get server configuration
  const baseConfig = configManager.getConfig();
  const config = { ...baseConfig, ...options.configOverrides };

  // Initialize email service if config provided
  if (config.email) {
    EmailService.initialize({
      apiKey: config.email.apiKey,
      fromEmail: config.email.fromEmail,
      fromName: config.email.fromName,
    });
  }

  // Initialize SMS service with NetGSM provider from environment
  SMSService.initializeWithNetGSM();

  const moduleLoader = new ModuleLoader(config, options.cookiePrefix);

  // Initialize module loader (includes migration checks)
  await moduleLoader.initialize();

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

  // Add logger middleware (must be first)
  app.use("*", loggerMiddleware());

  // Add tenant isolation middleware
  app.use("*", tenantIsolationMiddleware());

  // Add tenant context to logger (after auth)
  app.use("*", tenantLoggerMiddleware());

  return {
    app: app,
    moduleLoader,
    configManager,
    config,
    db: moduleLoader.getDatabase(),
    start: (port?: number) => {
      const serverPort = port || config.port || 3001;

      logger.info(`Prodobit Server starting on port ${serverPort}`);
      logger.info({
        environment: configManager.isDevelopment()
          ? "development"
          : configManager.isProduction()
          ? "production"
          : "test",
        enabledModules: moduleLoader.getEnabledModules(),
        configModules: configManager.getEnabledModules(),
        port: serverPort,
      }, "Server configuration");

      serve({
        fetch: app.fetch,
        port: serverPort,
      });

      logger.info(`Server started successfully on port ${serverPort}`);
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
    modules: [
      integrationModule, // Integration API - enable first
      employeeModule,
      salesModule,
      manufacturingModule,
      inventoryModule,
      customerModule,
      supplierModule,
      brandModule,
      mediaModule,
      assetIssueModule,
      taskModule,
      calibrationModule,
      maintenanceModule,
    ], // Include modules
  });

  // Setup graceful shutdown
  const gracefulShutdown = async (signal: string) => {
    console.log(`\n${signal} received, shutting down gracefully...`);
    await server.close();
    process.exit(0);
  };

  process.on("SIGTERM", () => gracefulShutdown("SIGTERM"));
  process.on("SIGINT", () => gracefulShutdown("SIGINT"));

  try {
    // Enable modules in dependency order
    await server.enableModule("integration"); // Integration API - enable first
    await server.enableModule("brand"); // brand can be enabled first (no dependencies)
    await server.enableModule("media"); // media can be enabled early
    await server.enableModule("inventory"); // manufacturing depends on this
    await server.enableModule("employee");
    await server.enableModule("sales");
    await server.enableModule("customer");
    await server.enableModule("supplier");
    await server.enableModule("manufacturing"); // enable after inventory
    await server.enableModule("asset-issue");
    await server.enableModule("task");
    await server.enableModule("calibration");
    await server.enableModule("maintenance");

    server.start();
  } catch (error) {
    console.error("Failed to start server:", error);
    await server.close();
    process.exit(1);
  }
}
