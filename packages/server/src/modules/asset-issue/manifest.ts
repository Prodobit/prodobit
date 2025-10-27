import { Hono } from "hono";
import type {
  ModuleManifest,
  ServerContext,
} from "../../framework/types.js";
import { assetIssueRoutes } from "./routes.js";

export const assetIssueModule: ModuleManifest = {
  name: "asset-issue",
  version: "1.0.0",
  description: "Asset issue and problem reporting module",
  migrations: [],
  permissions: {
    "asset-issue:read": ["admin", "manager", "technician", "user"],
    "asset-issue:write": ["admin", "manager", "technician"],
  },
  registerRoutes(app: Hono<{ Variables: ServerContext }>) {
    app.route("/api/v1/asset-issues", assetIssueRoutes);
  },
  async onEnable() {
    console.log("🔧 Asset Issue module enabled");
  },
  async onDisable() {
    console.log("🔧 Asset Issue module disabled");
  },
};
