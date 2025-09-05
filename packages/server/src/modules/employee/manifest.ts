import { Hono } from "hono";
import type { ModuleManifest, ServerContext } from "../../framework/types.js";
import { employeeRoutes } from "./routes.js";

export const employeeModule: ModuleManifest = {
  name: "employee",
  version: "1.0.0",
  description: "Employee management module",
  migrations: [
    "1001_employee.sql"
  ],
  permissions: {
    "employee:read": ["admin", "hr", "manager"],
    "employee:write": ["admin", "hr"]
  },
  registerRoutes(app: Hono<{ Variables: ServerContext }>) {
    app.route("/api/v1/employees", employeeRoutes);
  },
  async onEnable() {
    console.log("🧑‍💼 Employee module enabled");
  },
  async onDisable() {
    console.log("🧑‍💼 Employee module disabled");
  }
};