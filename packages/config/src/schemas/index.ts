export * from './common.js';
export * from './database.js';
export * from './auth.js';
export * from './server.js';
export * from './modules.js';
export * from './setup.js';

import { type } from "arktype";
import { BaseConfigSchema, PaginationConfigSchema, SecurityConfigSchema, FileUploadConfigSchema } from './common.js';
import { DatabaseConfigSchema } from './database.js';
import { AuthConfigSchema } from './auth.js';
import { WebServerConfigSchema } from './server.js';
import { ModulesConfigSchema } from './modules.js';
import { SetupConfigSchema } from './setup.js';

export const ProdobitConfigSchema = type({
  "base": BaseConfigSchema,
  "database": DatabaseConfigSchema,
  "auth": AuthConfigSchema,
  "server": WebServerConfigSchema,
  "modules": ModulesConfigSchema,
  "pagination": PaginationConfigSchema,
  "security": SecurityConfigSchema,
  "fileUpload": FileUploadConfigSchema,
  "setup?": SetupConfigSchema,
  "customConfig?": "object",
});

export type ProdobitConfig = typeof ProdobitConfigSchema.infer;