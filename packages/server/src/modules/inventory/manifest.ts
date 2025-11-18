import { Hono } from "hono";
import type { ModuleManifest, ServerContext } from "../../framework/types.js";
import { inventoryRoutes } from "./routes.js";
import { publicInventoryRoutes } from "./public-routes.js";

export const inventoryModule: ModuleManifest = {
  name: "inventory",
  version: "1.0.0",
  description: "Stock management module - Handle stock levels, lots, and stock movements",
  migrations: [
    // Inventory-related migrations will be moved here
  ],
  permissions: {
    // Stock permissions
    "stock:read": ["admin", "warehouse_manager", "warehouse_user", "production_user"],
    "stock:create": ["admin", "warehouse_manager", "warehouse_user"],
    "stock:update": ["admin", "warehouse_manager", "warehouse_user"],
    "stock:delete": ["admin", "warehouse_manager"],
    "stock:transfer": ["admin", "warehouse_manager", "warehouse_user"],
    
    // Stock movement permissions
    "stock_movement:read": ["admin", "warehouse_manager", "warehouse_user", "production_user"],
    "stock_movement:create": ["admin", "warehouse_manager", "warehouse_user"],
    
    // Lot tracking permissions
    "lot:read": ["admin", "warehouse_manager", "warehouse_user", "quality_user"],
    "lot:create": ["admin", "warehouse_manager", "warehouse_user"],
    "lot:update": ["admin", "warehouse_manager", "warehouse_user"],
    "lot:delete": ["admin", "warehouse_manager"],
  },
  dependencies: [
    "core", // Auth, tenants, parties, items
  ],
  registerRoutes(app: Hono<{ Variables: ServerContext }>) {
    // Regular authenticated routes
    app.route("/api/v1/stocks", inventoryRoutes.stocks);
    app.route("/api/v1/lots", inventoryRoutes.lots);
    app.route("/api/v1/stock-levels", inventoryRoutes.stockLevels);
    app.route("/api/v1/stock-items", inventoryRoutes.stockItems);
    app.route("/api/v1/stock-stats", inventoryRoutes.stockStats);

    // Public integration API routes
    app.route("/api/v1/public/inventory", publicInventoryRoutes);
    // Note: locations and assets are now in core
  },
  async onEnable() {
    console.log("📦 Inventory module enabled - Ready to track stock!");
  },
  async onDisable() {
    console.log("📦 Inventory module disabled");
  }
};