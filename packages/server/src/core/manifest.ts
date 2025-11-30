import { Hono } from "hono";
import type { ModuleManifest } from "../framework/types.js";
import type { Database } from "@prodobit/database";
import { tenants } from "./tenants.js";
import { parties } from "./parties.js";
import { auth } from "./auth.js";
import { attributes } from "./attributes.js";
import items from "./items.js";
import { locations } from "./locations.js";
import { locationTypes } from "./location-types.js";
import { assets } from "./assets.js";
import { assetTypes } from "./asset-types.js";
import { warranties } from "./warranties.js";
import { assignments } from "./assignments.js";
import { assetPurchases } from "./asset-purchases.js";
import { departments } from "./departments.js";
import userManagement from "./user-management.js";
import { assetStockUsages } from "./asset-stock-usages.js";
import { assetMeters } from "./asset-meters.js";
import { assetStatusHistory } from "./asset-status-history.js";
import { maintenancePlanTriggers } from "./maintenance-plan-triggers.js";
import { HealthService } from "./services/health-service.js";

export const coreModule: ModuleManifest = {
  name: "core",
  version: "1.0.0",
  description: "Core Prodobit functionality with parties, tenants, auth",
  migrations: [
    "0000_damp_chat.sql"
  ],
  permissions: {
    "tenant:read": ["admin", "user"],
    "tenant:write": ["admin"],
    "party:read": ["admin", "user"],
    "party:write": ["admin", "user"],
    "item:read": ["admin", "user"],
    "item:write": ["admin", "user"],
    "location:read": ["admin", "user"],
    "location:write": ["admin", "user"],
    "location_type:read": ["admin", "user"],
    "location_type:write": ["admin"],
    "asset:read": ["admin", "user"],
    "asset:write": ["admin", "user"],
    "asset_type:read": ["admin", "user"],
    "asset_type:write": ["admin"],
    "warranty:read": ["admin", "user"],
    "warranty:write": ["admin", "user"],
    "assignment:read": ["admin", "user"],
    "assignment:write": ["admin", "user"],
    "purchase:read": ["admin", "user"],
    "purchase:write": ["admin", "user"],
    "department:read": ["admin", "user"],
    "department:write": ["admin"],
    "asset_stock_usage:read": ["admin", "user"],
    "asset_stock_usage:write": ["admin", "user"],
    "asset_meter:read": ["admin", "user"],
    "asset_meter:write": ["admin", "user"],
    "asset_status_history:read": ["admin", "user"],
    "asset_status_history:write": ["admin", "user"],
    "maintenance_trigger:read": ["admin", "user"],
    "maintenance_trigger:write": ["admin"],
    "auth:login": ["guest"],
    "auth:register": ["guest"],
    "attribute:read": ["admin", "user"],
    "attribute:write": ["admin"],
    "tenant_members:read": ["admin", "user"],
    "tenant_members:create": ["admin"],
    "tenant_members:update": ["admin"],
    "tenant_members:delete": ["admin"],
    "tenant_roles:read": ["admin", "user"],
    "tenant_invitations:read": ["admin", "user"],
    "tenant_invitations:create": ["admin"],
    "tenant_invitations:update": ["admin"],
    "tenant_invitations:delete": ["admin"],
  },
  registerRoutes(app) {
    // Health check / Welcome route
    app.get("/", (c) => {
      const db = c.get("db");
      const healthService = new HealthService(db);
      const basicInfo = healthService.getBasicHealthInfo();
      
      return c.json({
        ...basicInfo,
        endpoints: {
          api: "/api/v1",
          installation: "/api/v1/installation",
          health: "/api/health"
        }
      });
    });

    // Public health endpoint (no auth required)
    app.get("/health", async (c) => {
      const db = c.get("db");
      const enabledModules = c.get("enabledModules");
      const healthService = new HealthService(db);

      try {
        const healthStatus = await healthService.getHealthStatus(enabledModules);
        return c.json(healthStatus);
      } catch (error) {
        return c.json({
          status: "degraded",
          message: "Health check failed",
          timestamp: new Date().toISOString(),
          version: "1.0.0",
          modules: Array.from(enabledModules),
          checks: {
            database: {
              status: "error",
              error: error instanceof Error ? error.message : "Unknown health check error"
            }
          }
        });
      }
    });

    // Core API routes
    app.route("/api/v1/tenants", tenants);
    app.route("/api/v1/parties", parties);
    app.route("/api/v1/items", items);
    app.route("/api/v1/locations", locations);
    app.route("/api/v1/location-types", locationTypes);
    app.route("/api/v1/assets", assets);
    app.route("/api/v1/asset-types", assetTypes);
    app.route("/api/v1/warranties", warranties);
    app.route("/api/v1/assignments", assignments);
    app.route("/api/v1/asset-purchases", assetPurchases);
    app.route("/api/v1/departments", departments);
    app.route("/api/v1/asset-stock-usages", assetStockUsages);
    app.route("/api/v1/asset-meters", assetMeters);
    app.route("/api/v1/asset-status-history", assetStatusHistory);
    app.route("/api/v1/maintenance-plan-triggers", maintenancePlanTriggers);
    app.route("/api/v1/auth", auth);
    app.route("/api/v1/attributes", attributes);
    app.route("/api/v1", userManagement);
  }
};