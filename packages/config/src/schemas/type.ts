import { type } from "arktype";
import type { 
  AuthConfig,
  BaseConfig,
  DatabaseConfig,
  FileUploadConfig,
  ModulesConfig,
  PaginationConfig,
  SecurityConfig,
  WebServerConfig,
  SetupConfig
} from "./index.js";
import { 
  validateAuthConfig,
  validateBaseConfig, 
  validateDatabaseConfig,
  validateFileUploadConfig,
  validateModulesConfig,
  validatePaginationConfig,
  validateSecurityConfig,
  validateWebServerConfig,
  validateSetupConfig
} from "./index.js";

// Master config type combining all sub-configs
export interface ProdobitConfig {
  base: BaseConfig;
  database: DatabaseConfig;
  auth: AuthConfig;
  server: WebServerConfig;
  modules: ModulesConfig;
  pagination: PaginationConfig;
  security: SecurityConfig;
  fileUpload: FileUploadConfig;
  setup?: SetupConfig;
  customConfig?: object;
}

// Validation function using individual validators
export function validateProdobitConfig(config: unknown): ProdobitConfig | Error {
  try {
    const configObj = config as Record<string, unknown>;
    
    // Validate each section
    const baseResult = validateBaseConfig(configObj.base);
    const databaseResult = validateDatabaseConfig(configObj.database);
    const authResult = validateAuthConfig(configObj.auth);
    const serverResult = validateWebServerConfig(configObj.server);
    const modulesResult = validateModulesConfig(configObj.modules);
    const paginationResult = validatePaginationConfig(configObj.pagination);
    const securityResult = validateSecurityConfig(configObj.security);
    const fileUploadResult = validateFileUploadConfig(configObj.fileUpload);
    
    // Check for validation errors
    const results = [baseResult, databaseResult, authResult, serverResult, modulesResult, paginationResult, securityResult, fileUploadResult];
    
    for (const result of results) {
      if (result.constructor.name === 'ArkErrors') {
        return new Error(`Validation failed: ${result.toString()}`);
      }
    }
    
    // Validate setup if provided
    if (configObj.setup) {
      const setupResult = validateSetupConfig(configObj.setup);
      if (setupResult.constructor.name === 'ArkErrors') {
        return new Error(`Setup validation failed: ${setupResult.toString()}`);
      }
    }
    
    return configObj as unknown as ProdobitConfig;
  } catch (error) {
    return error instanceof Error ? error : new Error('Unknown validation error');
  }
}
