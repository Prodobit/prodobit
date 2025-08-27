import type { Hono } from "hono";
import type { createDatabase } from "@prodobit/database";

export interface ModuleManifest {
  name: string;
  version: string;
  description: string;
  migrations: string[];
  permissions: Record<string, string[]>;
  dependencies?: string[];
  registerRoutes: (app: Hono) => void;
  onEnable?: () => Promise<void>;
  onDisable?: () => Promise<void>;
}

export interface ServerConfig {
  modules: ModuleManifest[];
  database: {
    host: string;
    port: number;
    user: string;
    password: string;
    database: string;
    ssl?: boolean;
    max?: number;
  };
  cors?: {
    origin: string[];
    credentials?: boolean;
  };
  port?: number;
}

export interface ServerContext {
  db: ReturnType<typeof createDatabase>;
  enabledModules: Set<string>;
}

declare module "hono" {
  interface ContextVariableMap {
    db: ReturnType<typeof createDatabase>;
    enabledModules: Set<string>;
  }
}