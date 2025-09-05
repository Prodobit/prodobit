import { drizzle } from "drizzle-orm/postgres-js";
import postgres from "postgres";
import * as schema from "./schema/index.js";

export type DatabaseConfig = {
  host: string;
  port: number;
  user: string;
  password: string;
  database: string;
  ssl?: boolean | { rejectUnauthorized: boolean };
  max?: number;
};

export function createDatabase(config: DatabaseConfig) {
  let sslConfig: any = false;
  
  if (config.ssl === true) {
    sslConfig = "require";
  } else if (typeof config.ssl === "object") {
    sslConfig = config.ssl;
  }

  const client = postgres({
    host: config.host,
    port: config.port,
    user: config.user,
    password: config.password,
    database: config.database,
    ssl: sslConfig,
    max: config.max ?? 10,
  });

  return drizzle(client, { schema });
}

export type Database = ReturnType<typeof createDatabase>;

export * from "./schema/index.js";
export * from "./types/decimal.js";
export { schema };
