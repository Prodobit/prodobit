import { Hono } from "hono";
import type { ModuleManifest, ServerContext } from "../../framework/types.js";
import { brandRoutes } from "./routes.js";

export const brandModule: ModuleManifest = {
  name: "brand",
  version: "1.0.0",
  description: "Brand management - Handle brand/manufacturer information for items",
  migrations: [
    // Brand migrations will be handled by database package
  ],
  permissions: {
    // Brand permissions
    "brand:read": ["admin", "inventory_manager", "sales_manager", "sales_user"],
    "brand:create": ["admin", "inventory_manager"],
    "brand:update": ["admin", "inventory_manager"],
    "brand:delete": ["admin"],
  },
  dependencies: [
    "core", // Auth, tenants
  ],
  registerRoutes(app: Hono<{ Variables: ServerContext }>) {
    app.route("/api/v1/brands", brandRoutes);
  },
  async onEnable() {
    console.log("🏷️  Brand module enabled - Ready to manage brands!");
  },
  async onDisable() {
    console.log("🏷️  Brand module disabled");
  },
};
