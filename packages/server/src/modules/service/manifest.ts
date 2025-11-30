import { Hono } from "hono";
import type {
  ModuleManifest,
  ServerContext,
} from "../../framework/types.js";
import { serviceRoutes } from "./routes.js";

export const serviceModule: ModuleManifest = {
  name: "service",
  version: "1.0.0",
  description: "Service contracts and service tickets management module for field service operations",
  migrations: [],
  permissions: {
    "service_contract:read": ["admin", "user"],
    "service_contract:write": ["admin", "user"],
    "service_ticket:read": ["admin", "user"],
    "service_ticket:write": ["admin", "user"],
  },
  registerRoutes(app: Hono<{ Variables: ServerContext }>) {
    app.route("/api/v1/service", serviceRoutes);
  },
  async onEnable() {
    console.log("🔧 Service module enabled");
  },
  async onDisable() {
    console.log("🔧 Service module disabled");
  },
};
