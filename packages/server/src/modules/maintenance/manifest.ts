import { Hono } from "hono";
import type {
  ModuleManifest,
  ServerContext,
} from "../../framework/types.js";
import { maintenanceRoutes } from "./routes.js";

export const maintenanceModule: ModuleManifest = {
  name: "maintenance",
  version: "1.0.0",
  description: "Preventive and predictive maintenance planning module",
  migrations: [],
  permissions: {
    "maintenance:read": ["admin", "manager", "supervisor", "technician"],
    "maintenance:write": ["admin", "manager", "supervisor"],
  },
  registerRoutes(app: Hono<{ Variables: ServerContext }>) {
    app.route("/api/v1/maintenance", maintenanceRoutes);
  },
  async onEnable() {
    console.log("🔧 Maintenance module enabled");
  },
  async onDisable() {
    console.log("🔧 Maintenance module disabled");
  },
};
