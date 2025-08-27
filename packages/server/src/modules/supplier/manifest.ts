import { Hono } from "hono";
import type { ModuleManifest } from "../../framework/types.js";
import { supplierRoutes } from "./routes.js";

export const supplierModule: ModuleManifest = {
  name: "supplier",
  version: "1.0.0",
  description: "Supplier relationship management - Handle supplier records, vendor relationships, and procurement contacts",
  migrations: [
    // Supplier-specific migrations (supplier codes, etc.)
  ],
  permissions: {
    // Supplier permissions
    "supplier:read": ["admin", "procurement_manager", "procurement_user", "warehouse_manager"],
    "supplier:create": ["admin", "procurement_manager", "procurement_user"],
    "supplier:update": ["admin", "procurement_manager", "procurement_user"],
    "supplier:delete": ["admin", "procurement_manager"],
    
    // Supplier contact permissions
    "supplier_contact:read": ["admin", "procurement_manager", "procurement_user"],
    "supplier_contact:create": ["admin", "procurement_manager", "procurement_user"],
    "supplier_contact:update": ["admin", "procurement_manager", "procurement_user"],
    "supplier_contact:delete": ["admin", "procurement_manager"],
    
    // Supplier address permissions
    "supplier_address:read": ["admin", "procurement_manager", "procurement_user"],
    "supplier_address:create": ["admin", "procurement_manager", "procurement_user"],
    "supplier_address:update": ["admin", "procurement_manager", "procurement_user"],
    "supplier_address:delete": ["admin", "procurement_manager"],
  },
  dependencies: [
    "core", // Auth, tenants, base parties
  ],
  registerRoutes(app: Hono) {
    app.route("/api/v1/suppliers", supplierRoutes);
  },
  async onEnable() {
    console.log("🏭 Supplier module enabled - Ready to manage suppliers!");
  },
  async onDisable() {
    console.log("🏭 Supplier module disabled");
  }
};