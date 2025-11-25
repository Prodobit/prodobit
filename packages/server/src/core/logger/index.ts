import pino from "pino";
import { loggerConfig, redactFields } from "./config.js";

/**
 * Base logger instance
 */
export const logger = pino({
  ...loggerConfig,
  redact: {
    paths: redactFields,
    censor: "[REDACTED]",
  },
});

/**
 * Create a child logger with additional context
 */
export function createLogger(context: {
  module?: string;
  service?: string;
  tenantId?: string;
  userId?: string;
  requestId?: string;
  method?: string;
  path?: string;
}) {
  return logger.child(context);
}

/**
 * Logger type for use in services
 */
export type Logger = pino.Logger;

/**
 * Log levels
 */
export const LogLevel = {
  TRACE: "trace",
  DEBUG: "debug",
  INFO: "info",
  WARN: "warn",
  ERROR: "error",
  FATAL: "fatal",
} as const;

/**
 * Utility function to log errors with proper formatting
 */
export function logError(
  log: Logger,
  error: unknown,
  message: string,
  context?: Record<string, unknown>
) {
  if (error instanceof Error) {
    log.error(
      {
        err: error,
        ...context,
      },
      message
    );
  } else {
    log.error(
      {
        error: String(error),
        ...context,
      },
      message
    );
  }
}

/**
 * Utility function to measure execution time
 */
export async function measureTime<T>(
  log: Logger,
  operation: string,
  fn: () => Promise<T>
): Promise<T> {
  const start = Date.now();
  try {
    const result = await fn();
    const duration = Date.now() - start;
    log.info({ operation, duration }, `${operation} completed`);
    return result;
  } catch (error) {
    const duration = Date.now() - start;
    logError(log, error, `${operation} failed`, { operation, duration });
    throw error;
  }
}

export default logger;
