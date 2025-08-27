import { type } from "arktype";

export const ServerConfigSchema = type({
  "host": "string >= 1",
  "port": "1 <= number <= 65535",
  "baseUrl": "string >= 1",
  "apiPrefix": "string >= 1",
  "enableSwagger": "boolean",
  "swaggerPath?": "string >= 1",
  "healthCheckPath": "string >= 1",
  "gracefulShutdownTimeoutMs": "1000 <= number <= 30000",
});

export const CorsConfigSchema = type({
  "enabled": "boolean",
  "origins": "string[] | string",
  "methods?": "string[]",
  "allowedHeaders?": "string[]",
  "credentials?": "boolean",
  "maxAge?": "number >= 0",
});

export const CompressionConfigSchema = type({
  "enabled": "boolean",
  "level?": "1 <= number <= 9",
  "threshold?": "number >= 0",
  "chunkSize?": "number >= 1024",
});

export const RequestLimitConfigSchema = type({
  "enabled": "boolean",
  "windowMs": "number >= 1000",
  "maxRequests": "number >= 1",
  "message?": "string >= 1",
  "standardHeaders": "boolean",
  "legacyHeaders": "boolean",
});

export const LoggingConfigSchema = type({
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

export const MetricsConfigSchema = type({
  "enabled": "boolean",
  "endpoint?": "string >= 1",
  "collectDefaultMetrics": "boolean",
  "requestMetrics": "boolean",
  "responseMetrics": "boolean",
  "databaseMetrics": "boolean",
});

export const ClusterConfigSchema = type({
  "enabled": "boolean",
  "workers?": "number >= 1",
  "restartDelay?": "number >= 1000",
  "maxRestarts?": "number >= 1",
});

export const WebServerConfigSchema = type({
  "server": ServerConfigSchema,
  "cors": CorsConfigSchema,
  "compression": CompressionConfigSchema,
  "requestLimit": RequestLimitConfigSchema,
  "logging": LoggingConfigSchema,
  "metrics": MetricsConfigSchema,
  "cluster?": ClusterConfigSchema,
});

export type ServerConfig = typeof ServerConfigSchema.infer;
export type CorsConfig = typeof CorsConfigSchema.infer;
export type CompressionConfig = typeof CompressionConfigSchema.infer;
export type RequestLimitConfig = typeof RequestLimitConfigSchema.infer;
export type LoggingConfig = typeof LoggingConfigSchema.infer;
export type MetricsConfig = typeof MetricsConfigSchema.infer;
export type ClusterConfig = typeof ClusterConfigSchema.infer;
export type WebServerConfig = typeof WebServerConfigSchema.infer;