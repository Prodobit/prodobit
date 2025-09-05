import type { Hono } from "hono";
import type { createDatabase } from "@prodobit/database";

export interface ModuleManifest {
  name: string;
  version: string;
  description: string;
  migrations: string[];
  permissions: Record<string, string[]>;
  dependencies?: string[];
  registerRoutes: (app: Hono<{ Variables: ServerContext }>) => void;
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
    ssl?: boolean | { rejectUnauthorized: boolean };
    max?: number;
  };
  cors?: {
    origin: string[];
    credentials?: boolean;
  };
  email?: {
    provider?: "resend" | "smtp";
    apiKey?: string;
    smtp?: {
      host: string;
      port: number;
      secure?: boolean;
      auth?: {
        user: string;
        pass: string;
      };
    };
    fromEmail?: string;
    fromName?: string;
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