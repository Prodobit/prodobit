import { type } from "arktype";

// Internal schemas - not exported to avoid arktype internal types in d.ts
const databaseConnectionSchema = type({
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

const databasePoolConfigSchema = type({
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

const databaseConfigSchema = type({
  "connection": databaseConnectionSchema,
  "pool?": databasePoolConfigSchema,
  "logging?": "boolean",
  "timezone?": "string >= 1",
});

// Export types only
export type DatabaseConnection = typeof databaseConnectionSchema.infer;
export type DatabasePoolConfig = typeof databasePoolConfigSchema.infer;
export type DatabaseConfig = typeof databaseConfigSchema.infer;

// Export validation functions for runtime validation
export function validateDatabaseConnection(config: unknown): DatabaseConnection | Error {
  const result = databaseConnectionSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as DatabaseConnection;
}

export function validateDatabasePoolConfig(config: unknown): DatabasePoolConfig | Error {
  const result = databasePoolConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as DatabasePoolConfig;
}

export function validateDatabaseConfig(config: unknown): DatabaseConfig | Error {
  const result = databaseConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as DatabaseConfig;
}

// Schemas kept internal - accessed via validation functions