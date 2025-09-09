import { type } from "arktype";

export const SystemTenantConfigSchema = type({
  "name": "string",
  "description?": "string",
});

export const SuperAdminConfigSchema = type({
  "email": "string.email",
  "displayName": "string",
});

export const SetupConfigSchema = type({
  "systemTenant": SystemTenantConfigSchema,
  "superAdmin": SuperAdminConfigSchema,
  "enabled?": "boolean",
});

export type SystemTenantConfig = typeof SystemTenantConfigSchema.infer;
export type SuperAdminConfig = typeof SuperAdminConfigSchema.infer;
export type SetupConfig = typeof SetupConfigSchema.infer;