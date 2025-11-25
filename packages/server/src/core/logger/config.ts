import type { LoggerOptions } from "pino";

const isDevelopment = process.env.NODE_ENV === "development";
const isProduction = process.env.NODE_ENV === "production";

/**
 * Pino Logger Configuration
 *
 * Development: Pretty print to console
 * Production: JSON to stdout (DigitalOcean captures) + optional external service
 */
export const loggerConfig: LoggerOptions = {
  level: process.env.LOG_LEVEL || (isDevelopment ? "debug" : "info"),

  // Base configuration
  base: {
    env: process.env.NODE_ENV,
    appName: "prodobit-server",
    version: process.env.npm_package_version,
  },

  // Timestamp
  timestamp: () => `,"time":"${new Date().toISOString()}"`,

  // Format errors properly
  formatters: {
    level: (label) => {
      return { level: label };
    },
  },

  // Serializers for common objects
  serializers: {
    req: (req) => ({
      method: req.method,
      url: req.url,
      headers: {
        host: req.headers.host,
        userAgent: req.headers["user-agent"],
      },
      remoteAddress: req.socket?.remoteAddress,
    }),
    res: (res) => ({
      statusCode: res.statusCode,
    }),
    err: (err) => ({
      type: err.type,
      message: err.message,
      stack: err.stack,
    }),
  },

  // Transport configuration
  transport: isDevelopment
    ? {
        // Development: Pretty print
        target: "pino-pretty",
        options: {
          colorize: true,
          translateTime: "HH:MM:ss Z",
          ignore: "pid,hostname",
          singleLine: false,
        },
      }
    : isProduction && process.env.LOGFLARE_SOURCE_TOKEN
    ? {
        // Production with Logflare
        targets: [
          {
            // Always log to stdout (DigitalOcean captures this)
            target: "pino/file",
            level: "info",
            options: {},
          },
          {
            // Also send to Logflare for real-time monitoring
            target: "pino-logflare",
            level: "info",
            options: {
              apiKey: process.env.LOGFLARE_API_KEY,
              sourceToken: process.env.LOGFLARE_SOURCE_TOKEN,
            },
          },
        ],
      }
    : undefined, // Production without external service: plain JSON to stdout
};

/**
 * Redact sensitive fields from logs
 */
export const redactFields = [
  "password",
  "token",
  "apiKey",
  "secret",
  "authorization",
  "cookie",
  "*.password",
  "*.token",
  "*.apiKey",
  "*.secret",
  "req.headers.authorization",
  "req.headers.cookie",
];
