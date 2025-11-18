import { Hono } from "hono";
import type {
  ModuleManifest,
  ServerContext,
} from "../../framework/types.js";
import { integrationRoutes } from "./routes.js";
import { IntegrationService } from "./service.js";

export const integrationModule: ModuleManifest = {
  name: "integration",
  version: "1.0.0",
  description: "Integration API management - API keys, scopes, and usage tracking",
  migrations: [],
  permissions: {
    "integration:read": ["admin", "user"],
    "integration:write": ["admin"],
    "integration:delete": ["admin"],
  },
  registerRoutes(app: Hono<{ Variables: ServerContext }>) {
    app.route("/api/v1/integration", integrationRoutes);
  },
  async onEnable() {
    console.log("🔌 Integration module enabled");

    // Initialize default scopes
    const db = (this as any).db;
    if (db) {
      const integrationService = new IntegrationService(db);

      // Define default public scopes
      const defaultScopes = [
        // Asset Issue scopes
        {
          module: "asset-issue",
          resource: "asset-issues",
          action: "read",
          scope: "asset-issue:read",
          endpoint: "/api/v1/public/asset-issues",
          description: "Read asset issues",
        },
        {
          module: "asset-issue",
          resource: "asset-issues",
          action: "write",
          scope: "asset-issue:write",
          endpoint: "/api/v1/public/asset-issues",
          description: "Create and update asset issues",
        },
        // Inventory scopes
        {
          module: "inventory",
          resource: "items",
          action: "read",
          scope: "inventory:read",
          endpoint: "/api/v1/public/inventory/items",
          description: "Read inventory items",
        },
        {
          module: "inventory",
          resource: "stocks",
          action: "read",
          scope: "inventory:stocks:read",
          endpoint: "/api/v1/public/inventory/stocks",
          description: "Read stock levels",
        },
        // Sales scopes
        {
          module: "sales",
          resource: "orders",
          action: "read",
          scope: "sales:read",
          endpoint: "/api/v1/public/sales/orders",
          description: "Read sales orders",
        },
        {
          module: "sales",
          resource: "orders",
          action: "write",
          scope: "sales:write",
          endpoint: "/api/v1/public/sales/orders",
          description: "Create and update sales orders",
        },
        // Asset scopes
        {
          module: "asset",
          resource: "assets",
          action: "read",
          scope: "asset:read",
          endpoint: "/api/v1/public/assets",
          description: "Read assets",
        },
        // Task scopes
        {
          module: "task",
          resource: "tasks",
          action: "read",
          scope: "task:read",
          endpoint: "/api/v1/public/tasks",
          description: "Read tasks",
        },
        {
          module: "task",
          resource: "tasks",
          action: "write",
          scope: "task:write",
          endpoint: "/api/v1/public/tasks",
          description: "Create and update tasks",
        },
        // Maintenance scopes
        {
          module: "maintenance",
          resource: "maintenance-plans",
          action: "read",
          scope: "maintenance:read",
          endpoint: "/api/v1/public/maintenance",
          description: "Read maintenance plans and records",
        },
        // Calibration scopes
        {
          module: "calibration",
          resource: "calibration-plans",
          action: "read",
          scope: "calibration:read",
          endpoint: "/api/v1/public/calibration",
          description: "Read calibration plans and records",
        },
      ];

      // Upsert default scopes
      try {
        for (const scopeData of defaultScopes) {
          await integrationService.upsertScope(scopeData);
        }
        console.log(`✅ Initialized ${defaultScopes.length} default scopes`);
      } catch (error) {
        console.error("❌ Failed to initialize default scopes:", error);
      }
    }
  },
  async onDisable() {
    console.log("🔌 Integration module disabled");
  },
};
