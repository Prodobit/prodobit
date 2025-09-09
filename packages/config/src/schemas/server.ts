import { type } from "arktype";

// Internal schemas - not exported to avoid arktype internal types in d.ts
const serverConfigSchema = type({
  "host": "string >= 1",
  "port": "1 <= number <= 65535",
  "baseUrl": "string >= 1",
  "apiPrefix": "string >= 1",
  "enableSwagger": "boolean",
  "swaggerPath?": "string >= 1",
  "healthCheckPath": "string >= 1",
  "gracefulShutdownTimeoutMs": "1000 <= number <= 30000",
});

const corsConfigSchema = type({
  "enabled": "boolean",
  "origins": "string[] | string",
  "methods?": "string[]",
  "allowedHeaders?": "string[]",
  "credentials?": "boolean",
  "maxAge?": "number >= 0",
});

const compressionConfigSchema = type({
  "enabled": "boolean",
  "level?": "1 <= number <= 9",
  "threshold?": "number >= 0",
  "chunkSize?": "number >= 1024",
});

const requestLimitConfigSchema = type({
  "enabled": "boolean",
  "windowMs": "number >= 1000",
  "maxRequests": "number >= 1",
  "message?": "string >= 1",
  "standardHeaders": "boolean",
  "legacyHeaders": "boolean",
});

const loggingConfigSchema = type({
  "level": "'error' | 'warn' | 'info' | 'debug'",
  "format": "'json' | 'simple' | 'combined'",
  "timestamp": "boolean",
  "colorize?": "boolean",
  "requestLogging": "boolean",
  "errorLogging": "boolean",
  "performanceLogging": "boolean",
  "logRotation?": type({
    "enabled": "boolean",
    "maxSize": "string >= 1",
    "maxFiles": "number >= 1",
    "datePattern?": "string >= 1"
  })
});

const metricsConfigSchema = type({
  "enabled": "boolean",
  "endpoint?": "string >= 1",
  "collectDefaultMetrics": "boolean",
  "requestMetrics": "boolean",
  "responseMetrics": "boolean",
  "databaseMetrics": "boolean",
});

const clusterConfigSchema = type({
  "enabled": "boolean",
  "workers?": "number >= 1",
  "restartDelay?": "number >= 1000",
  "maxRestarts?": "number >= 1",
});

const webServerConfigSchema = type({
  "server": serverConfigSchema,
  "cors": corsConfigSchema,
  "compression": compressionConfigSchema,
  "requestLimit": requestLimitConfigSchema,
  "logging": loggingConfigSchema,
  "metrics": metricsConfigSchema,
  "cluster?": clusterConfigSchema,
});

// Export types only
export type ServerConfig = typeof serverConfigSchema.infer;
export type CorsConfig = typeof corsConfigSchema.infer;
export type CompressionConfig = typeof compressionConfigSchema.infer;
export type RequestLimitConfig = typeof requestLimitConfigSchema.infer;
export type LoggingConfig = typeof loggingConfigSchema.infer;
export type MetricsConfig = typeof metricsConfigSchema.infer;
export type ClusterConfig = typeof clusterConfigSchema.infer;
export type WebServerConfig = typeof webServerConfigSchema.infer;

// Export validation functions for runtime validation
export function validateServerConfig(config: unknown): ServerConfig | Error {
  const result = serverConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as ServerConfig;
}

export function validateCorsConfig(config: unknown): CorsConfig | Error {
  const result = corsConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as CorsConfig;
}

export function validateCompressionConfig(config: unknown): CompressionConfig | Error {
  const result = compressionConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as CompressionConfig;
}

export function validateRequestLimitConfig(config: unknown): RequestLimitConfig | Error {
  const result = requestLimitConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as RequestLimitConfig;
}

export function validateLoggingConfig(config: unknown): LoggingConfig | Error {
  const result = loggingConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as LoggingConfig;
}

export function validateMetricsConfig(config: unknown): MetricsConfig | Error {
  const result = metricsConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as MetricsConfig;
}

export function validateClusterConfig(config: unknown): ClusterConfig | Error {
  const result = clusterConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as ClusterConfig;
}

export function validateWebServerConfig(config: unknown): WebServerConfig | Error {
  const result = webServerConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as WebServerConfig;
}

// Schemas kept internal - accessed via validation functions