import { Hono } from "hono";
import type { ModuleManifest } from "../../framework/types.js";
import { manufacturingRoutes } from "./routes.js";

export const manufacturingModule: ModuleManifest = {
  name: "manufacturing",
  version: "1.0.0",
  description: "Manufacturing management module - Handle BOMs, routings, and production processes",
  migrations: [
    // Manufacturing-related migrations will be moved here
  ],
  permissions: {
    // BOM permissions
    "bom:read": ["admin", "engineer", "production_manager", "production_user"],
    "bom:create": ["admin", "engineer", "production_manager"],
    "bom:update": ["admin", "engineer", "production_manager"],
    "bom:delete": ["admin", "engineer"],
    "bom:approve": ["admin", "engineer"],
    
    // Engineering Change Order permissions
    "eco:read": ["admin", "engineer", "production_manager", "production_user"],
    "eco:create": ["admin", "engineer", "production_manager"],
    "eco:update": ["admin", "engineer", "production_manager"],
    "eco:delete": ["admin", "engineer"],
    "eco:approve": ["admin", "engineer"],
    
    // Routing permissions
    "routing:read": ["admin", "engineer", "production_manager", "production_user"],
    "routing:create": ["admin", "engineer", "production_manager"],
    "routing:update": ["admin", "engineer", "production_manager"],
    "routing:delete": ["admin", "engineer"],
    
    // Work Center permissions
    "work_center:read": ["admin", "engineer", "production_manager", "production_user"],
    "work_center:create": ["admin", "engineer", "production_manager"],
    "work_center:update": ["admin", "engineer", "production_manager"],
    "work_center:delete": ["admin", "engineer"],
  },
  dependencies: [
    "core", // Auth, tenants, parties, items
  ],
  registerRoutes(app: Hono) {
    app.route("/api/v1/boms", manufacturingRoutes.boms);
    app.route("/api/v1/ecos", manufacturingRoutes.ecos);
    app.route("/api/v1/routings", manufacturingRoutes.routings);
  },
  async onEnable() {
    console.log("🏭 Manufacturing module enabled - Ready to produce!");
  },
  async onDisable() {
    console.log("🏭 Manufacturing module disabled");
  }
};