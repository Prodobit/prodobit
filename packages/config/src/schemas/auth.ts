import { type } from "arktype";

// Internal schemas - not exported to avoid arktype internal types in d.ts
const jwtConfigSchema = type({
  "accessTokenSecret": "string >= 32",
  "refreshTokenSecret": "string >= 32",
  "accessTokenExpiresIn": "string >= 1", // e.g., '15m', '1h'
  "refreshTokenExpiresIn": "string >= 1", // e.g., '7d', '30d'
  "algorithm?": "'HS256' | 'HS384' | 'HS512' | 'RS256' | 'RS384' | 'RS512'",
  "issuer?": "string >= 1",
  "audience?": "string >= 1",
});

const sessionConfigSchema = type({
  "secret": "string >= 32",
  "resave?": "boolean",
  "saveUninitialized?": "boolean",
  "rolling?": "boolean",
  "maxAge": "number >= 300000", // 5 minutes minimum in milliseconds
  "httpOnly": "boolean",
  "secure?": "boolean",
  "sameSite?": "'strict' | 'lax' | 'none'",
});

const oAuthProviderConfigSchema = type({
  "clientId": "string >= 1",
  "clientSecret": "string >= 1",
  "redirectUri": "string >= 1",
  "scopes?": "string[]",
  "authorizeUrl": "string >= 1",
  "tokenUrl": "string >= 1",
  "userInfoUrl": "string >= 1",
});

const oAuthConfigSchema = type({
  "google?": oAuthProviderConfigSchema,
  "microsoft?": oAuthProviderConfigSchema,
  "github?": oAuthProviderConfigSchema,
});

const passwordPolicySchema = type({
  "minLength": "6 <= number <= 128",
  "maxLength": "8 <= number <= 256",
  "requireUppercase": "boolean",
  "requireLowercase": "boolean",
  "requireNumbers": "boolean",
  "requireSpecialChars": "boolean",
  "preventPasswordReuse": "0 <= number <= 24",
  "maxAge?": "number >= 86400000", // 1 day minimum in milliseconds
});

const twoFactorConfigSchema = type({
  "enabled": "boolean",
  "issuer": "string >= 1",
  "window?": "1 <= number <= 10",
  "enforceForRoles?": "string[]",
});

const authConfigSchema = type({
  "jwt": jwtConfigSchema,
  "session": sessionConfigSchema,
  "oauth?": oAuthConfigSchema,
  "passwordPolicy": passwordPolicySchema,
  "twoFactor?": twoFactorConfigSchema,
  "enableRegistration": "boolean",
  "requireEmailVerification": "boolean",
  "loginAttemptResetMinutes": "1 <= number <= 1440", // 1 minute to 24 hours
});

// Export types only
export type JwtConfig = typeof jwtConfigSchema.infer;
export type SessionConfig = typeof sessionConfigSchema.infer;
export type OAuthProviderConfig = typeof oAuthProviderConfigSchema.infer;
export type OAuthConfig = typeof oAuthConfigSchema.infer;
export type PasswordPolicy = typeof passwordPolicySchema.infer;
export type TwoFactorConfig = typeof twoFactorConfigSchema.infer;
export type AuthConfig = typeof authConfigSchema.infer;

// Export validation functions for runtime validation
export function validateJwtConfig(config: unknown): JwtConfig | Error {
  const result = jwtConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as JwtConfig;
}

export function validateSessionConfig(config: unknown): SessionConfig | Error {
  const result = sessionConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as SessionConfig;
}

export function validateOAuthProviderConfig(config: unknown): OAuthProviderConfig | Error {
  const result = oAuthProviderConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as OAuthProviderConfig;
}

export function validateOAuthConfig(config: unknown): OAuthConfig | Error {
  const result = oAuthConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as OAuthConfig;
}

export function validatePasswordPolicy(config: unknown): PasswordPolicy | Error {
  const result = passwordPolicySchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as PasswordPolicy;
}

export function validateTwoFactorConfig(config: unknown): TwoFactorConfig | Error {
  const result = twoFactorConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as TwoFactorConfig;
}

export function validateAuthConfig(config: unknown): AuthConfig | Error {
  const result = authConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as AuthConfig;
}

// Schemas kept internal - accessed via validation functions