import { Hono } from "hono";
import type { ModuleManifest } from "../framework/types.js";
import { tenants } from "./tenants.js";
import { parties } from "./parties.js";
import { auth } from "./auth.js";
import { attributes } from "./attributes.js";
import items from "./items.js";
import { locations } from "./locations.js";
import { assets } from "./assets.js";
import userManagement from "./user-management.js";

export const coreModule: ModuleManifest = {
  name: "core",
  version: "1.0.0",
  description: "Core Prodobit functionality with parties, tenants, auth",
  migrations: [
    "0000_cute_stone_men.sql"
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
    "asset:read": ["admin", "user"],
    "asset:write": ["admin", "user"],
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
  registerRoutes(app: Hono) {
    // Health check / Welcome route
    app.get("/", (c) => {
      return c.json({
        message: "🚀 Prodobit Server is running",
        version: "1.0.0",
        status: "ok",
        endpoints: {
          api: "/api/v1",
          installation: "/api/v1/installation",
          health: "/api/health"
        }
      });
    });

    // Public health endpoint (no auth required)
    app.get("/api/health", (c) => {
      return c.json({
        status: "ok",
        message: "Server is healthy",
        timestamp: new Date().toISOString(),
        version: "1.0.0"
      });
    });

    // Core API routes
    app.route("/api/v1/tenants", tenants);
    app.route("/api/v1/parties", parties);
    app.route("/api/v1/items", items);
    app.route("/api/v1/locations", locations);
    app.route("/api/v1/assets", assets);
    app.route("/api/v1/auth", auth);
    app.route("/api/v1/attributes", attributes);
    app.route("/api/v1", userManagement);
  }
};