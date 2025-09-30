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
  roleId: uuid, // Foreign key to roles table
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

// Extended tenant membership with role information (from API responses)
export const tenantMembershipWithRole = type({
  id: uuid,
  userId: uuid,
  tenantId: uuid,
  roleId: uuid,
  roleName: "string", // Role name from joined roles table
  "roleDescription?": "string",
  "roleColor?": "string",
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
});

export const session = type({
  id: uuid,
  userId: uuid,
  "authMethodId?": uuid,
  "currentTenantId?": uuid,
  "refreshTokenHash?": "string",
  csrfTokenHash: "string",
  expiresAt: timestamp,
  "refreshExpiresAt?": timestamp,
  "deviceType?": "'mobile' | 'desktop' | 'tablet' | 'api'",
  "deviceName?": "string",
  "userAgent?": "string",
  "ipAddress?": "string",
  "locationData?": "object",
  "deviceFingerprint?": "string",
  status: "'active' | 'expired' | 'revoked'",
  lastActivityAt: timestamp,
  "revokedAt?": timestamp,
  "revokedReason?":
    "'user_logout' | 'admin_revoke' | 'security_breach' | 'suspicious_activity'",
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
  "expiresAt?": timestamp,
  "requiresTenantSelection?": "boolean",
  "isNewUser?": "boolean",
  // Single tenant response
  "defaultTenantId?": uuid,
  "defaultTenantName?": "string",
  // Selected tenant response
  "selectedTenantId?": uuid,
  "selectedTenantName?": "string",
  // Multiple tenant response
  "tenants?": type({
    id: uuid,
    name: "string",
    role: "string",
  }).array(),
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
    expiresAt: timestamp,
    csrfToken: "string",
  },
  "refreshToken?": "string",
  authMethod: {
    id: uuid,
    provider: "'email' | 'google' | 'github' | 'microsoft'",
    providerId: "string >= 1",
    verified: "boolean",
    "metadata?": "object",
  },
  "tenantMemberships?": tenantMembership.array(),
  isNewUser: "boolean",
});

export const loginResponse = type({
  success: "boolean",
  data: loginResponseData,
  "message?": "string",
});

// Me endpoint response (current user info)
export const currentUserResponseData = type({
  user,
  "authMethod?": {
    id: uuid,
    provider: "'email' | 'google' | 'github' | 'microsoft'",
    providerId: "string >= 1",
    verified: "boolean",
    "metadata?": "object",
  },
  tenantMemberships: tenantMembership.array(),
  roles: "string[]", // Role names
  permissions: "string[]", // Permission names
  currentTenant: uuid,
});

export const currentUserResponse = type({
  success: "boolean",
  data: currentUserResponseData,
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

export const checkUserRequest = type({
  email: "string.email",
});

export const checkUserResponse = type({
  success: "boolean",
  requiresTenantSelection: "boolean",
  isNewUser: "boolean",
  "tenants?": type({
    id: uuid,
    name: "string",
    role: "string",
  }).array(),
});

export const registerTenantRequest = type({
  // Kullanıcı bilgileri
  email: "string.email",
  displayName: "string >= 1",
  // Tenant bilgileri
  tenantName: "string >= 1",
  "tenantSlug?": "string >= 1",
  "tenantDescription?": "string",
  // Opsiyonel ayarlar
  "settings?": "object",
});

export const registerTenantResponse = type({
  success: "boolean",
  message: "string",
  data: type({
    user: user,
    tenant: type({
      id: uuid,
      name: "string",
      "slug?": "string",
      "description?": "string",
      status,
      insertedAt: timestamp,
      updatedAt: timestamp,
    }),
    membership: tenantMembership,
    requiresEmailVerification: "boolean",
    "session?": session,
  }),
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
export type CurrentUserResponseData = typeof currentUserResponseData.infer;
export type CurrentUserResponse = typeof currentUserResponse.infer;
export type RefreshTokenRequest = typeof refreshTokenRequest.infer;

// OTP type exports
export type RequestOTPRequest = typeof requestOTPRequest.infer;
export type RequestOTPResponse = typeof requestOTPResponse.infer;
export type VerifyOTPRequest = typeof verifyOTPRequest.infer;
export type ResendOTPRequest = typeof resendOTPRequest.infer;
export type CheckUserRequest = typeof checkUserRequest.infer;
export type CheckUserResponse = typeof checkUserResponse.infer;
export type RegisterTenantRequest = typeof registerTenantRequest.infer;
export type RegisterTenantResponse = typeof registerTenantResponse.infer;

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

// Token Info Schema - Now includes refreshToken for sessionStorage
export const tokenInfo = type({
  accessToken: "string",
  "refreshToken?": "string",
  expiresAt: "Date",
  csrfToken: "string",
  "tenantId?": uuid,
});

// CSRF Protection Schema
export const csrfTokenRequest = type({
  csrfToken: "string >= 1",
});

export const validateCSRFRequest = type({
  csrfToken: "string >= 1",
});

// Email verification types
export const sendVerificationEmailRequest = type({
  email: "string.email",
});

export const sendVerificationEmailResponse = type({
  success: "boolean",
  message: "string",
  "expiresAt?": timestamp,
});

export const verifyEmailRequest = type({
  token: "string >= 1",
});

export const verifyEmailResponse = type({
  success: "boolean",
  message: "string",
  "redirectUrl?": "string",
});

export const resendVerificationEmailRequest = type({
  email: "string.email",
});

export const checkVerificationStatusRequest = type({
  email: "string.email",
});

export const checkVerificationStatusResponse = type({
  success: "boolean",
  verified: "boolean",
  message: "string",
  "sentAt?": timestamp,
  "expiresAt?": timestamp,
});

// Email verification token schema (for database)
export const emailVerificationToken = type({
  id: uuid,
  email: "string.email",
  tokenHash: "string",
  expiresAt: timestamp,
  "usedAt?": timestamp,
  "createdBy?": uuid,
  insertedAt: timestamp,
  updatedAt: timestamp,
});

// Auth API type exports
export type LogoutRequest = typeof logoutRequest.infer;
export type AuthAuditLog = typeof authAuditLog.infer;
export type PermissionCheck = typeof permissionCheck.infer;
export type TokenInfo = typeof tokenInfo.infer;
export type CSRFTokenRequest = typeof csrfTokenRequest.infer;
export type ValidateCSRFRequest = typeof validateCSRFRequest.infer;

// Email verification type exports
export type SendVerificationEmailRequest =
  typeof sendVerificationEmailRequest.infer;
export type SendVerificationEmailResponse =
  typeof sendVerificationEmailResponse.infer;
export type VerifyEmailRequest = typeof verifyEmailRequest.infer;
export type VerifyEmailResponse = typeof verifyEmailResponse.infer;
export type ResendVerificationEmailRequest =
  typeof resendVerificationEmailRequest.infer;
export type CheckVerificationStatusRequest =
  typeof checkVerificationStatusRequest.infer;
export type CheckVerificationStatusResponse =
  typeof checkVerificationStatusResponse.infer;
export type EmailVerificationToken = typeof emailVerificationToken.infer;
