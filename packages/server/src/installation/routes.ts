import { Hono } from "hono";
import { cors } from "hono/cors";
import { InstallationService } from "./services/InstallationService.js";
import type { Database } from "@prodobit/database";

export const installationRoutes = new Hono<{ Variables: { db: Database } }>();

// Enable CORS for installation wizard
installationRoutes.use("*", cors({
  origin: ["http://localhost:5174", "http://localhost:3000"],
  credentials: true,
}));

// Test database connection
installationRoutes.post("/test-db", async (c) => {
  try {
    const body = await c.req.json();
    const { host, port, database, user, password, ssl } = body;

    if (!host || !port || !database || !user) {
      return c.json({
        success: false,
        error: "Eksik veritabanı bilgileri"
      }, 400);
    }

    const installationService = new InstallationService();
    const result = await installationService.testDatabaseConnection({
      host,
      port: parseInt(port),
      database,
      user,
      password,
      ssl: ssl || false
    });

    return c.json({
      success: result.success,
      error: result.error,
      details: result.details
    });
  } catch (error) {
    console.error("Database test error:", error);
    return c.json({
      success: false,
      error: "Veritabanı test hatası",
      details: error instanceof Error ? error.message : "Bilinmeyen hata"
    }, 500);
  }
});

// Run installation task
installationRoutes.post("/run-task", async (c) => {
  try {
    const body = await c.req.json();
    const { task, config } = body;

    if (!task || !config) {
      return c.json({
        success: false,
        error: "Eksik task veya config bilgileri"
      }, 400);
    }

    const installationService = new InstallationService();
    
    let result;
    switch (task) {
      case 'database':
        result = await installationService.setupDatabase(config.database);
        break;
      case 'schema':
        result = await installationService.createSchema(config.database);
        break;
      case 'tenant':
        result = await installationService.createTenant(config.tenant, config.database);
        break;
      case 'admin':
        result = await installationService.createAdminUser(config.adminUser, config.database);
        break;
      case 'modules':
        result = await installationService.enableModules(config.modules, config.database);
        break;
      case 'finalize':
        result = await installationService.finalizeInstallation(config);
        break;
      default:
        return c.json({
          success: false,
          error: `Bilinmeyen task: ${task}`
        }, 400);
    }

    return c.json({
      success: result.success,
      error: result.error,
      data: result.data
    });
  } catch (error) {
    console.error("Installation task error:", error);
    return c.json({
      success: false,
      error: "Installation task hatası",
      details: error instanceof Error ? error.message : "Bilinmeyen hata"
    }, 500);
  }
});

// Check installation status
installationRoutes.get("/status", async (c) => {
  try {
    const installationService = new InstallationService();
    const result = await installationService.checkInstallationStatus();

    return c.json({
      success: true,
      data: result
    });
  } catch (error) {
    console.error("Installation status error:", error);
    return c.json({
      success: false,
      error: "Installation status kontrolü başarısız",
      details: error instanceof Error ? error.message : "Bilinmeyen hata"
    }, 500);
  }
});