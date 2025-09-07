import { type } from "arktype";

export const DatabaseConnectionSchema = type({
  "host": "string >= 1",
  "port": "1 <= number <= 65535",
  "database": "string >= 1",
  "user": "string >= 1",
  "password": "string",
  "ssl?": "boolean",
  "schema?": "string >= 1",
  "connectionTimeoutMs?": "number >= 1000",
  "idleTimeoutMs?": "number >= 1000",
  "maxConnections?": "1 <= number <= 100",
});

export const DatabasePoolConfigSchema = type({
  "min": "0 <= number <= 50",
  "max": "1 <= number <= 100",
  "acquireTimeoutMillis": "number >= 1000",
  "createTimeoutMillis": "number >= 1000",
  "destroyTimeoutMillis": "number >= 1000",
  "idleTimeoutMillis": "number >= 1000",
  "reapIntervalMillis": "number >= 1000",
  "createRetryIntervalMillis": "number >= 100",
});

// Migration config removed - use Drizzle Kit's standard migration commands
// Run migrations manually: pnpm db:migrate

export const DatabaseConfigSchema = type({
  "connection": DatabaseConnectionSchema,
  "pool?": DatabasePoolConfigSchema,
  "logging?": "boolean",
  "timezone?": "string >= 1",
});

export type DatabaseConnection = typeof DatabaseConnectionSchema.infer;
export type DatabasePoolConfig = typeof DatabasePoolConfigSchema.infer;
export type DatabaseConfig = typeof DatabaseConfigSchema.infer;