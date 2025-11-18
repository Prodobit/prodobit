import { Hono } from "hono";
import type {
  ModuleManifest,
  ServerContext,
} from "../../framework/types.js";
import { assetIssueRoutes } from "./routes.js";
import { publicAssetIssueRoutes } from "./public-routes.js";

export const assetIssueModule: ModuleManifest = {
  name: "asset-issue",
  version: "1.0.0",
  description: "Asset issue and problem reporting module",
  migrations: [],
  permissions: {
    "asset-issue:read": ["admin", "user"],
    "asset-issue:write": ["admin", "user"],
  },
  registerRoutes(app: Hono<{ Variables: ServerContext }>) {
    // Regular authenticated routes
    app.route("/api/v1/asset-issues", assetIssueRoutes);

    // Public integration API routes
    app.route("/api/v1/public/asset-issues", publicAssetIssueRoutes);
  },
  async onEnable() {
    console.log("🔧 Asset Issue module enabled");
  },
  async onDisable() {
    console.log("🔧 Asset Issue module disabled");
  },
};
