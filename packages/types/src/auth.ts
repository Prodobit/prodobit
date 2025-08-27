import { type } from "arktype";
import { status, timestamp, uuid } from "./common";

export const user = type({
  id: uuid,
  "displayName?": "string",
  twoFactorEnabled: "boolean",
  "twoFactorSecret?": "string",
  status,
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const authMethod = type({
  id: uuid,
  userId: uuid,
  provider: "'email' | 'google' | 'github' | 'microsoft'",
  providerId: "string >= 1",
  verified: "boolean",
  "metadata?": "object",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const tenantMembership = type({
  id: uuid,
  userId: uuid,
  tenantId: uuid,
  role: "'admin' | 'manager' | 'user' | 'viewer' | 'external'",
  status: "'active' | 'inactive' | 'invited' | 'suspended'",
  permissions: "object",
  accessLevel: "'full' | 'limited' | 'read_only'",
  resourceRestrictions: "object",
  "ipRestrictions?": "object",
  "timeRestrictions?": "object",
  "expiresAt?": timestamp,
  "invitedBy?": uuid,
  "invitedAt?": timestamp,
  "joinedAt?": timestamp,
  "lastLoginAt?": timestamp,
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const session = type({
  id: uuid,
  userId: uuid,
  "authMethodId?": uuid,
  "currentTenantId?": uuid,
  accessTokenHash: "string",
  "refreshTokenHash?": "string",
  expiresAt: timestamp,
  "refreshExpiresAt?": timestamp,
  "deviceType?": "'mobile' | 'desktop' | 'tablet' | 'api'",
  "deviceName?": "string",
  "userAgent?": "string",
  "ipAddress?": "string",
  "locationData?": "object",
  status: "'active' | 'expired' | 'revoked'",
  lastActivityAt: timestamp,
  "revokedAt?": timestamp,
  "revokedReason?": "'user_logout' | 'admin_revoke' | 'security_breach'",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

// OTP-based authentication requests
export const requestOTPRequest = type({
  email: "string.email",
  "tenantId?": uuid,
});

export const requestOTPResponse = type({
  success: "boolean",
  message: "string",
  expiresAt: timestamp,
});

export const verifyOTPRequest = type({
  email: "string.email",
  code: "string >= 6", // 6 digit code
  "tenantId?": uuid,
});

export const loginResponseData = type({
  user,
  session: {
    accessToken: "string",
    "refreshToken?": "string",
    expiresAt: timestamp,
  },
  "tenantMemberships?": tenantMembership.array(),
  isNewUser: "boolean",
});

export const loginResponse = type({
  success: "boolean",
  data: loginResponseData,
  "message?": "string",
});

export const refreshTokenRequest = type({
  refreshToken: "string",
});

// RBAC Types
export const permission = type({
  id: uuid,
  name: "string >= 1", // e.g., "users:create", "tenants:read"
  "description?": "string",
  resource: "string >= 1", // e.g., "users", "tenants", "parties"
  action: "'create' | 'read' | 'update' | 'delete' | 'list' | 'manage'",
  scope: "'tenant' | 'global' | 'own'",
  isSystem: "boolean",
  insertedAt: timestamp,
  updatedAt: timestamp,
});

export const role = type({
  id: uuid,
  tenantId: uuid,
  name: "string >= 1", // e.g., "admin", "user", "viewer"
  "description?": "string",
  isSystem: "boolean",
  isActive: "boolean",
  "color?": "string",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const userRole = type({
  id: uuid,
  userId: uuid,
  roleId: uuid,
  "assignedBy?": uuid,
  "expiresAt?": timestamp,
  insertedAt: timestamp,
});

export const rolePermission = type({
  id: uuid,
  roleId: uuid,
  permissionId: uuid,
  insertedAt: timestamp,
});

// JWT Token types
export const jwtPayload = type({
  sub: uuid, // user ID
  tenantId: uuid,
  "roles?": "string[]",
  "permissions?": "string[]",
  iat: "number",
  exp: "number",
  "aud?": "string",
  "iss?": "string",
});

// Auth API request/response types
export const logoutRequest = type({
  "refreshToken?": "string",
  allDevices: "boolean",
});

export const resendOTPRequest = type({
  email: "string.email",
});

// Audit log type
export const authAuditLog = type({
  id: uuid,
  "tenantId?": uuid,
  "userId?": uuid,
  action: "string",
  "resource?": "string",
  "resourceId?": uuid,
  "details?": "object",
  "ipAddress?": "string",
  "userAgent?": "string",
  success: "boolean",
  insertedAt: timestamp,
});

export type User = typeof user.infer;
export type AuthMethod = typeof authMethod.infer;
export type TenantMembership = typeof tenantMembership.infer;
export type Session = typeof session.infer;
export type LoginResponseData = typeof loginResponseData.infer;
export type LoginResponse = typeof loginResponse.infer;
export type RefreshTokenRequest = typeof refreshTokenRequest.infer;

// OTP type exports
export type RequestOTPRequest = typeof requestOTPRequest.infer;
export type RequestOTPResponse = typeof requestOTPResponse.infer;
export type VerifyOTPRequest = typeof verifyOTPRequest.infer;
export type ResendOTPRequest = typeof resendOTPRequest.infer;

// RBAC type exports
export type Permission = typeof permission.infer;
export type Role = typeof role.infer;
export type UserRole = typeof userRole.infer;
export type RolePermission = typeof rolePermission.infer;
export type JwtPayload = typeof jwtPayload.infer;

// RBAC Permission Check
export const permissionCheck = type({
  resource: "string >= 1",
  action: "string >= 1",
  "scope?": "'tenant' | 'global' | 'own'",
  "resourceId?": "string",
});

// Token Info Schema
export const tokenInfo = type({
  accessToken: "string",
  "refreshToken?": "string",
  expiresAt: "Date",
  "tenantId?": uuid,
});

// Auth API type exports
export type LogoutRequest = typeof logoutRequest.infer;
export type AuthAuditLog = typeof authAuditLog.infer;
export type PermissionCheck = typeof permissionCheck.infer;
export type TokenInfo = typeof tokenInfo.infer;
