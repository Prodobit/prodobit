export declare const user: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    twoFactorEnabled: boolean;
    status: "active" | "inactive" | "suspended" | "deleted";
    insertedAt: string;
    updatedAt: string;
    displayName?: string | undefined;
    twoFactorSecret?: string | undefined;
    deletedAt?: string | undefined;
}, {}>;
export declare const authMethod: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    userId: string;
    provider: "email" | "google" | "github" | "microsoft";
    providerId: string;
    verified: boolean;
    insertedAt: string;
    updatedAt: string;
    metadata?: object | undefined;
    deletedAt?: string | undefined;
}, {}>;
export declare const tenantMembership: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    userId: string;
    tenantId: string;
    role: "external" | "admin" | "manager" | "user" | "viewer";
    status: "active" | "inactive" | "suspended" | "invited";
    permissions: object;
    accessLevel: "full" | "limited" | "read_only";
    resourceRestrictions: object;
    insertedAt: string;
    updatedAt: string;
    ipRestrictions?: object | undefined;
    timeRestrictions?: object | undefined;
    expiresAt?: string | undefined;
    invitedBy?: string | undefined;
    invitedAt?: string | undefined;
    joinedAt?: string | undefined;
    lastLoginAt?: string | undefined;
    deletedAt?: string | undefined;
}, {}>;
export declare const session: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    userId: string;
    accessTokenHash: string;
    expiresAt: string;
    status: "active" | "expired" | "revoked";
    lastActivityAt: string;
    insertedAt: string;
    updatedAt: string;
    authMethodId?: string | undefined;
    currentTenantId?: string | undefined;
    refreshTokenHash?: string | undefined;
    refreshExpiresAt?: string | undefined;
    deviceType?: "mobile" | "desktop" | "tablet" | "api" | undefined;
    deviceName?: string | undefined;
    userAgent?: string | undefined;
    ipAddress?: string | undefined;
    locationData?: object | undefined;
    revokedAt?: string | undefined;
    revokedReason?: "user_logout" | "admin_revoke" | "security_breach" | undefined;
    deletedAt?: string | undefined;
}, {}>;
export declare const requestOTPRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    email: string;
    tenantId?: string | undefined;
}, {}>;
export declare const requestOTPResponse: import("arktype/internal/methods/object.ts").ObjectType<{
    success: boolean;
    message: string;
    expiresAt?: string | undefined;
    requiresTenantSelection?: boolean | undefined;
    isNewUser?: boolean | undefined;
    defaultTenantId?: string | undefined;
    defaultTenantName?: string | undefined;
    selectedTenantId?: string | undefined;
    selectedTenantName?: string | undefined;
    tenants?: {
        id: string;
        name: string;
        role: string;
    }[] | undefined;
}, {}>;
export declare const verifyOTPRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    email: string;
    code: string;
    tenantId?: string | undefined;
}, {}>;
export declare const loginResponseData: import("arktype/internal/methods/object.ts").ObjectType<{
    user: {
        id: string;
        twoFactorEnabled: boolean;
        status: "active" | "inactive" | "suspended" | "deleted";
        insertedAt: string;
        updatedAt: string;
        displayName?: string | undefined;
        twoFactorSecret?: string | undefined;
        deletedAt?: string | undefined;
    };
    session: {
        accessToken: string;
        expiresAt: string;
        refreshToken?: string | undefined;
    };
    isNewUser: boolean;
    tenantMemberships?: {
        id: string;
        userId: string;
        tenantId: string;
        role: "external" | "admin" | "manager" | "user" | "viewer";
        status: "active" | "inactive" | "suspended" | "invited";
        permissions: object;
        accessLevel: "full" | "limited" | "read_only";
        resourceRestrictions: object;
        insertedAt: string;
        updatedAt: string;
        ipRestrictions?: object | undefined;
        timeRestrictions?: object | undefined;
        expiresAt?: string | undefined;
        invitedBy?: string | undefined;
        invitedAt?: string | undefined;
        joinedAt?: string | undefined;
        lastLoginAt?: string | undefined;
        deletedAt?: string | undefined;
    }[] | undefined;
}, {}>;
export declare const loginResponse: import("arktype/internal/methods/object.ts").ObjectType<{
    success: boolean;
    data: {
        user: {
            id: string;
            twoFactorEnabled: boolean;
            status: "active" | "inactive" | "suspended" | "deleted";
            insertedAt: string;
            updatedAt: string;
            displayName?: string | undefined;
            twoFactorSecret?: string | undefined;
            deletedAt?: string | undefined;
        };
        session: {
            accessToken: string;
            expiresAt: string;
            refreshToken?: string | undefined;
        };
        isNewUser: boolean;
        tenantMemberships?: {
            id: string;
            userId: string;
            tenantId: string;
            role: "external" | "admin" | "manager" | "user" | "viewer";
            status: "active" | "inactive" | "suspended" | "invited";
            permissions: object;
            accessLevel: "full" | "limited" | "read_only";
            resourceRestrictions: object;
            insertedAt: string;
            updatedAt: string;
            ipRestrictions?: object | undefined;
            timeRestrictions?: object | undefined;
            expiresAt?: string | undefined;
            invitedBy?: string | undefined;
            invitedAt?: string | undefined;
            joinedAt?: string | undefined;
            lastLoginAt?: string | undefined;
            deletedAt?: string | undefined;
        }[] | undefined;
    };
    message?: string | undefined;
}, {}>;
export declare const refreshTokenRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    refreshToken: string;
}, {}>;
export declare const permission: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    name: string;
    resource: string;
    action: "delete" | "manage" | "read" | "create" | "update" | "list";
    scope: "own" | "tenant" | "global";
    isSystem: boolean;
    insertedAt: string;
    updatedAt: string;
    description?: string | undefined;
}, {}>;
export declare const role: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    tenantId: string;
    name: string;
    isSystem: boolean;
    isActive: boolean;
    insertedAt: string;
    updatedAt: string;
    description?: string | undefined;
    color?: string | undefined;
    deletedAt?: string | undefined;
}, {}>;
export declare const userRole: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    userId: string;
    roleId: string;
    insertedAt: string;
    assignedBy?: string | undefined;
    expiresAt?: string | undefined;
}, {}>;
export declare const rolePermission: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    roleId: string;
    permissionId: string;
    insertedAt: string;
}, {}>;
export declare const jwtPayload: import("arktype/internal/methods/object.ts").ObjectType<{
    sub: string;
    tenantId: string;
    iat: number;
    exp: number;
    roles?: string[] | undefined;
    permissions?: string[] | undefined;
    aud?: string | undefined;
    iss?: string | undefined;
}, {}>;
export declare const logoutRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    allDevices: boolean;
    refreshToken?: string | undefined;
}, {}>;
export declare const resendOTPRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    email: string;
}, {}>;
export declare const authAuditLog: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    action: string;
    success: boolean;
    insertedAt: string;
    tenantId?: string | undefined;
    userId?: string | undefined;
    resource?: string | undefined;
    resourceId?: string | undefined;
    details?: object | undefined;
    ipAddress?: string | undefined;
    userAgent?: string | undefined;
}, {}>;
export type User = typeof user.infer;
export type AuthMethod = typeof authMethod.infer;
export type TenantMembership = typeof tenantMembership.infer;
export type Session = typeof session.infer;
export type LoginResponseData = typeof loginResponseData.infer;
export type LoginResponse = typeof loginResponse.infer;
export type RefreshTokenRequest = typeof refreshTokenRequest.infer;
export type RequestOTPRequest = typeof requestOTPRequest.infer;
export type RequestOTPResponse = typeof requestOTPResponse.infer;
export type VerifyOTPRequest = typeof verifyOTPRequest.infer;
export type ResendOTPRequest = typeof resendOTPRequest.infer;
export type Permission = typeof permission.infer;
export type Role = typeof role.infer;
export type UserRole = typeof userRole.infer;
export type RolePermission = typeof rolePermission.infer;
export type JwtPayload = typeof jwtPayload.infer;
export declare const permissionCheck: import("arktype/internal/methods/object.ts").ObjectType<{
    resource: string;
    action: string;
    scope?: "own" | "tenant" | "global" | undefined;
    resourceId?: string | undefined;
}, {}>;
export declare const tokenInfo: import("arktype/internal/methods/object.ts").ObjectType<{
    accessToken: string;
    expiresAt: Date;
    refreshToken?: string | undefined;
    tenantId?: string | undefined;
}, {}>;
export type LogoutRequest = typeof logoutRequest.infer;
export type AuthAuditLog = typeof authAuditLog.infer;
export type PermissionCheck = typeof permissionCheck.infer;
export type TokenInfo = typeof tokenInfo.infer;
//# sourceMappingURL=auth.d.ts.map