import { type } from "arktype";

export const BaseConfigSchema = type({
  "environment?": "'development' | 'production' | 'test'",
  "debug?": "boolean",
  "logLevel?": "'error' | 'warn' | 'info' | 'debug'",
});

export const PaginationConfigSchema = type({
  "defaultLimit": "1 <= number <= 1000",
  "maxLimit": "1 <= number <= 10000", 
  "defaultPage": "number >= 1",
});

export const SecurityConfigSchema = type({
  "corsOrigins": "string[]",
  "rateLimitWindowMs": "number >= 1000",
  "rateLimitMaxRequests": "number >= 1",
  "sessionTimeout": "number >= 300", // 5 minutes minimum
  "maxLoginAttempts": "1 <= number <= 10",
  "lockoutDuration": "number >= 60000", // 1 minute minimum
});

export const FileUploadConfigSchema = type({
  "maxFileSize": "number >= 1024", // 1KB minimum
  "allowedMimeTypes": "string[]",
  "uploadPath": "string",
  "enableImageProcessing": "boolean",
});

export type BaseConfig = typeof BaseConfigSchema.infer;
export type PaginationConfig = typeof PaginationConfigSchema.infer;
export type SecurityConfig = typeof SecurityConfigSchema.infer;
export type FileUploadConfig = typeof FileUploadConfigSchema.infer;