import { Hono } from "hono";
import type { ModuleManifest, ServerContext } from "../../framework/types.js";
import { mediaRoutes } from "./routes.js";

export const mediaModule: ModuleManifest = {
  name: "media",
  version: "1.0.0",
  description: "Media management - Upload, store, and manage files (images, documents)",
  migrations: [
    // Media migrations will be handled by database package
  ],
  permissions: {
    // Media permissions are tied to item permissions
    // Future: Add dedicated media permissions if needed
  },
  dependencies: [
    "core", // Auth, tenants
  ],
  registerRoutes(app: Hono<{ Variables: ServerContext }>) {
    app.route("/api/v1/media", mediaRoutes);
  },
  async onEnable() {
    console.log("📁 Media module enabled - Ready to manage files!");
  },
  async onDisable() {
    console.log("📁 Media module disabled");
  },
};
