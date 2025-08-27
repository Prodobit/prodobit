import { type } from "arktype";

export const JwtConfigSchema = type({
  "accessTokenSecret": "string >= 32",
  "refreshTokenSecret": "string >= 32",
  "accessTokenExpiresIn": "string >= 1", // e.g., '15m', '1h'
  "refreshTokenExpiresIn": "string >= 1", // e.g., '7d', '30d'
  "algorithm?": "'HS256' | 'HS384' | 'HS512' | 'RS256' | 'RS384' | 'RS512'",
  "issuer?": "string >= 1",
  "audience?": "string >= 1",
});

export const SessionConfigSchema = type({
  "secret": "string >= 32",
  "resave?": "boolean",
  "saveUninitialized?": "boolean",
  "rolling?": "boolean",
  "maxAge": "number >= 300000", // 5 minutes minimum in milliseconds
  "httpOnly": "boolean",
  "secure?": "boolean",
  "sameSite?": "'strict' | 'lax' | 'none'",
});

export const OAuthProviderConfigSchema = type({
  "clientId": "string >= 1",
  "clientSecret": "string >= 1",
  "redirectUri": "string >= 1",
  "scopes?": "string[]",
  "authorizeUrl": "string >= 1",
  "tokenUrl": "string >= 1",
  "userInfoUrl": "string >= 1",
});

export const OAuthConfigSchema = type({
  "google?": OAuthProviderConfigSchema,
  "microsoft?": OAuthProviderConfigSchema,
  "github?": OAuthProviderConfigSchema,
});

export const PasswordPolicySchema = type({
  "minLength": "6 <= number <= 128",
  "maxLength": "8 <= number <= 256",
  "requireUppercase": "boolean",
  "requireLowercase": "boolean",
  "requireNumbers": "boolean",
  "requireSpecialChars": "boolean",
  "preventPasswordReuse": "0 <= number <= 24",
  "maxAge?": "number >= 86400000", // 1 day minimum in milliseconds
});

export const TwoFactorConfigSchema = type({
  "enabled": "boolean",
  "issuer": "string >= 1",
  "window?": "1 <= number <= 10",
  "enforceForRoles?": "string[]",
});

export const AuthConfigSchema = type({
  "jwt": JwtConfigSchema,
  "session": SessionConfigSchema,
  "oauth?": OAuthConfigSchema,
  "passwordPolicy": PasswordPolicySchema,
  "twoFactor?": TwoFactorConfigSchema,
  "enableRegistration": "boolean",
  "requireEmailVerification": "boolean",
  "loginAttemptResetMinutes": "1 <= number <= 1440", // 1 minute to 24 hours
});

export type JwtConfig = typeof JwtConfigSchema.infer;
export type SessionConfig = typeof SessionConfigSchema.infer;
export type OAuthProviderConfig = typeof OAuthProviderConfigSchema.infer;
export type OAuthConfig = typeof OAuthConfigSchema.infer;
export type PasswordPolicy = typeof PasswordPolicySchema.infer;
export type TwoFactorConfig = typeof TwoFactorConfigSchema.infer;
export type AuthConfig = typeof AuthConfigSchema.infer;