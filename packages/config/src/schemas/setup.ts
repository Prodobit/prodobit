import { type } from "arktype";

// Internal schemas - not exported to avoid arktype internal types in d.ts
const systemTenantConfigSchema = type({
  "name": "string",
  "description?": "string",
});

const superAdminConfigSchema = type({
  "email": "string.email",
  "displayName": "string",
});

const setupConfigSchema = type({
  "systemTenant": systemTenantConfigSchema,
  "superAdmin": superAdminConfigSchema,
  "enabled?": "boolean",
});

// Export types only
export type SystemTenantConfig = typeof systemTenantConfigSchema.infer;
export type SuperAdminConfig = typeof superAdminConfigSchema.infer;
export type SetupConfig = typeof setupConfigSchema.infer;

// Export validation functions for runtime validation
export function validateSystemTenantConfig(config: unknown): SystemTenantConfig | Error {
  const result = systemTenantConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as SystemTenantConfig;
}

export function validateSuperAdminConfig(config: unknown): SuperAdminConfig | Error {
  const result = superAdminConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as SuperAdminConfig;
}

export function validateSetupConfig(config: unknown): SetupConfig | Error {
  const result = setupConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as SetupConfig;
}

// Schemas kept internal - accessed via validation functions