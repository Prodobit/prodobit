import { Hono } from "hono";
import type {
  ModuleManifest,
  ServerContext,
} from "../../framework/types.js";
import { taskRoutes } from "./routes.js";

export const taskModule: ModuleManifest = {
  name: "task",
  version: "1.0.0",
  description: "Task and work order management module",
  migrations: [],
  permissions: {
    "task:read": ["admin", "user"],
    "task:write": ["admin", "user"],
  },
  registerRoutes(app: Hono<{ Variables: ServerContext }>) {
    app.route("/api/v1/tasks", taskRoutes);
  },
  async onEnable() {
    console.log("✅ Task module enabled");
  },
  async onDisable() {
    console.log("✅ Task module disabled");
  },
};
