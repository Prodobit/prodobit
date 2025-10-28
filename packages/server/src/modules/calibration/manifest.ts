import { Hono } from "hono";
import type {
  ModuleManifest,
  ServerContext,
} from "../../framework/types.js";
import { calibrationRoutes } from "./routes.js";

export const calibrationModule: ModuleManifest = {
  name: "calibration",
  version: "1.0.0",
  description: "Equipment calibration and certification management module",
  migrations: [],
  permissions: {
    "calibration:read": ["admin", "user"],
    "calibration:write": ["admin", "user"],
  },
  registerRoutes(app: Hono<{ Variables: ServerContext }>) {
    app.route("/api/v1/calibration", calibrationRoutes);
  },
  async onEnable() {
    console.log("📏 Calibration module enabled");
  },
  async onDisable() {
    console.log("📏 Calibration module disabled");
  },
};
