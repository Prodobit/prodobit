import { type } from "arktype";

// Internal schemas - not exported to avoid arktype internal types in d.ts
const baseConfigSchema = type({
  "environment?": "'development' | 'production' | 'test'",
  "debug?": "boolean",
  "logLevel?": "'error' | 'warn' | 'info' | 'debug'",
});

const paginationConfigSchema = type({
  "defaultLimit": "1 <= number <= 1000",
  "maxLimit": "1 <= number <= 10000", 
  "defaultPage": "number >= 1",
});

const securityConfigSchema = type({
  "corsOrigins": "string[]",
  "rateLimitWindowMs": "number >= 1000",
  "rateLimitMaxRequests": "number >= 1",
  "sessionTimeout": "number >= 300", // 5 minutes minimum
  "maxLoginAttempts": "1 <= number <= 10",
  "lockoutDuration": "number >= 60000", // 1 minute minimum
});

const fileUploadConfigSchema = type({
  "maxFileSize": "number >= 1024", // 1KB minimum
  "allowedMimeTypes": "string[]",
  "uploadPath": "string",
  "enableImageProcessing": "boolean",
});

// Export types only
export type BaseConfig = typeof baseConfigSchema.infer;
export type PaginationConfig = typeof paginationConfigSchema.infer;
export type SecurityConfig = typeof securityConfigSchema.infer;
export type FileUploadConfig = typeof fileUploadConfigSchema.infer;

// Export validation functions for runtime validation
export function validateBaseConfig(config: unknown): BaseConfig | Error {
  const result = baseConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as BaseConfig;
}

export function validatePaginationConfig(config: unknown): PaginationConfig | Error {
  const result = paginationConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as PaginationConfig;
}

export function validateSecurityConfig(config: unknown): SecurityConfig | Error {
  const result = securityConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as SecurityConfig;
}

export function validateFileUploadConfig(config: unknown): FileUploadConfig | Error {
  const result = fileUploadConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as FileUploadConfig;
}

// Schemas kept internal - accessed via validation functions