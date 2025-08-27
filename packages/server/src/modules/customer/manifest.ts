import { Hono } from "hono";
import type { ModuleManifest } from "../../framework/types.js";
import { customerRoutes } from "./routes.js";

export const customerModule: ModuleManifest = {
  name: "customer",
  version: "1.0.0",
  description: "Customer relationship management - Handle customer records, contacts, and relationships",
  migrations: [
    // Customer-specific migrations (customer codes, etc.)
  ],
  permissions: {
    // Customer permissions
    "customer:read": ["admin", "sales_manager", "sales_user", "customer_service"],
    "customer:create": ["admin", "sales_manager", "sales_user"],
    "customer:update": ["admin", "sales_manager", "sales_user"],
    "customer:delete": ["admin", "sales_manager"],
    
    // Customer contact permissions
    "customer_contact:read": ["admin", "sales_manager", "sales_user", "customer_service"],
    "customer_contact:create": ["admin", "sales_manager", "sales_user"],
    "customer_contact:update": ["admin", "sales_manager", "sales_user"],
    "customer_contact:delete": ["admin", "sales_manager"],
    
    // Customer address permissions
    "customer_address:read": ["admin", "sales_manager", "sales_user", "customer_service"],
    "customer_address:create": ["admin", "sales_manager", "sales_user"],
    "customer_address:update": ["admin", "sales_manager", "sales_user"],
    "customer_address:delete": ["admin", "sales_manager"],
  },
  dependencies: [
    "core", // Auth, tenants, base parties
  ],
  registerRoutes(app: Hono) {
    app.route("/api/v1/customers", customerRoutes);
  },
  async onEnable() {
    console.log("👥 Customer module enabled - Ready to manage customers!");
  },
  async onDisable() {
    console.log("👥 Customer module disabled");
  }
};