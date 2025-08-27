import { Hono } from "hono";
import type { ModuleManifest } from "../../framework/types.js";
import { salesRoutes } from "./routes.js";

export const salesModule: ModuleManifest = {
  name: "sales",
  version: "1.0.0",
  description: "Sales management module - Handle customer orders, quotations, and sales processes",
  migrations: [
    // Sales-related migrations will be moved here
  ],
  permissions: {
    "sales_orders:read": ["admin", "sales_manager", "sales_user"],
    "sales_orders:create": ["admin", "sales_manager", "sales_user"],
    "sales_orders:update": ["admin", "sales_manager", "sales_user"],
    "sales_orders:delete": ["admin", "sales_manager"],
    "sales_orders:approve": ["admin", "sales_manager"],
    "quotations:read": ["admin", "sales_manager", "sales_user"],
    "quotations:create": ["admin", "sales_manager", "sales_user"],
    "quotations:update": ["admin", "sales_manager", "sales_user"],
    "quotations:delete": ["admin", "sales_manager"],
  },
  dependencies: [
    "core", // Auth, tenants, parties
  ],
  registerRoutes(app: Hono) {
    app.route("/api/v1/sales-orders", salesRoutes);
  },
  async onEnable() {
    console.log("💰 Sales module enabled - Ready to process orders!");
  },
  async onDisable() {
    console.log("💰 Sales module disabled");
  }
};