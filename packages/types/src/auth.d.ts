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
    provider: "email" | "phone" | "google" | "github" | "microsoft";
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
    roleId: string;
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
export declare const tenantMembershipWithRole: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    userId: string;
    tenantId: string;
    roleId: string;
    roleName: string;
    status: "active" | "inactive" | "suspended" | "invited";
    permissions: object;
    accessLevel: "full" | "limited" | "read_only";
    resourceRestrictions: object;
    insertedAt: string;
    updatedAt: string;
    roleDescription?: string | undefined;
    roleColor?: string | undefined;
    ipRestrictions?: object | undefined;
    timeRestrictions?: object | undefined;
    expiresAt?: string | undefined;
    invitedBy?: string | undefined;
    invitedAt?: string | undefined;
    joinedAt?: string | undefined;
    lastLoginAt?: string | undefined;
}, {}>;
export declare const session: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    userId: string;
    csrfTokenHash: string;
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
    deviceFingerprint?: string | undefined;
    revokedAt?: string | undefined;
    revokedReason?: "user_logout" | "admin_revoke" | "security_breach" | "suspicious_activity" | undefined;
    deletedAt?: string | undefined;
}, {}>;
export declare const requestOTPRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    email?: string | undefined;
    phone?: string | undefined;
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
    code: string;
    email?: string | undefined;
    phone?: string | undefined;
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
        csrfToken: string;
    };
    authMethod: {
        id: string;
        provider: "email" | "google" | "github" | "microsoft";
        providerId: string;
        verified: boolean;
        metadata?: object | undefined;
    };
    isNewUser: boolean;
    refreshToken?: string | undefined;
    tenantMemberships?: {
        id: string;
        userId: string;
        tenantId: string;
        roleId: string;
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
            csrfToken: string;
        };
        authMethod: {
            id: string;
            provider: "email" | "google" | "github" | "microsoft";
            providerId: string;
            verified: boolean;
            metadata?: object | undefined;
        };
        isNewUser: boolean;
        refreshToken?: string | undefined;
        tenantMemberships?: {
            id: string;
            userId: string;
            tenantId: string;
            roleId: string;
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
export declare const currentUserResponseData: import("arktype/internal/methods/object.ts").ObjectType<{
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
    tenantMemberships: {
        id: string;
        userId: string;
        tenantId: string;
        roleId: string;
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
    }[];
    roles: {
        id: string;
        name: string;
        description?: string | undefined;
    }[];
    permissions: string[];
    currentTenant: string;
    authMethod?: {
        id: string;
        provider: "email" | "google" | "github" | "microsoft";
        providerId: string;
        verified: boolean;
        metadata?: object | undefined;
    } | undefined;
}, {}>;
export declare const currentUserResponse: import("arktype/internal/methods/object.ts").ObjectType<{
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
        tenantMemberships: {
            id: string;
            userId: string;
            tenantId: string;
            roleId: string;
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
        }[];
        roles: {
            id: string;
            name: string;
            description?: string | undefined;
        }[];
        permissions: string[];
        currentTenant: string;
        authMethod?: {
            id: string;
            provider: "email" | "google" | "github" | "microsoft";
            providerId: string;
            verified: boolean;
            metadata?: object | undefined;
        } | undefined;
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
    action: "delete" | "read" | "create" | "update" | "list" | "manage";
    scope: "global" | "own" | "tenant";
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
    email?: string | undefined;
    phone?: string | undefined;
}, {}>;
export declare const checkUserRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    email?: string | undefined;
    phone?: string | undefined;
}, {}>;
export declare const checkUserResponse: import("arktype/internal/methods/object.ts").ObjectType<{
    success: boolean;
    requiresTenantSelection: boolean;
    isNewUser: boolean;
    tenants?: {
        id: string;
        name: string;
        role: string;
    }[] | undefined;
}, {}>;
export declare const registerTenantRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    email: string;
    displayName: string;
    tenantName: string;
    tenantSlug?: string | undefined;
    tenantDescription?: string | undefined;
    settings?: object | undefined;
}, {}>;
export declare const registerTenantResponse: import("arktype/internal/methods/object.ts").ObjectType<{
    success: boolean;
    message: string;
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
        tenant: {
            id: string;
            name: string;
            status: "active" | "inactive" | "suspended" | "deleted";
            insertedAt: string;
            updatedAt: string;
            slug?: string | undefined;
            description?: string | undefined;
        };
        membership: {
            id: string;
            userId: string;
            tenantId: string;
            roleId: string;
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
        };
        requiresEmailVerification: boolean;
        session?: {
            id: string;
            userId: string;
            csrfTokenHash: string;
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
            deviceFingerprint?: string | undefined;
            revokedAt?: string | undefined;
            revokedReason?: "user_logout" | "admin_revoke" | "security_breach" | "suspicious_activity" | undefined;
            deletedAt?: string | undefined;
        } | undefined;
    };
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
export type CurrentUserResponseData = typeof currentUserResponseData.infer;
export type CurrentUserResponse = typeof currentUserResponse.infer;
export type RefreshTokenRequest = typeof refreshTokenRequest.infer;
export type RequestOTPRequest = typeof requestOTPRequest.infer;
export type RequestOTPResponse = typeof requestOTPResponse.infer;
export type VerifyOTPRequest = typeof verifyOTPRequest.infer;
export type ResendOTPRequest = typeof resendOTPRequest.infer;
export type CheckUserRequest = typeof checkUserRequest.infer;
export type CheckUserResponse = typeof checkUserResponse.infer;
export type RegisterTenantRequest = typeof registerTenantRequest.infer;
export type RegisterTenantResponse = typeof registerTenantResponse.infer;
export type Permission = typeof permission.infer;
export type Role = typeof role.infer;
export type UserRole = typeof userRole.infer;
export type RolePermission = typeof rolePermission.infer;
export type JwtPayload = typeof jwtPayload.infer;
export declare const permissionCheck: import("arktype/internal/methods/object.ts").ObjectType<{
    resource: string;
    action: string;
    scope?: "global" | "own" | "tenant" | undefined;
    resourceId?: string | undefined;
}, {}>;
export declare const tokenInfo: import("arktype/internal/methods/object.ts").ObjectType<{
    accessToken: string;
    expiresAt: Date;
    csrfToken: string;
    refreshToken?: string | undefined;
    tenantId?: string | undefined;
}, {}>;
export declare const csrfTokenRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    csrfToken: string;
}, {}>;
export declare const validateCSRFRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    csrfToken: string;
}, {}>;
export declare const sendVerificationEmailRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    email: string;
}, {}>;
export declare const sendVerificationEmailResponse: import("arktype/internal/methods/object.ts").ObjectType<{
    success: boolean;
    message: string;
    expiresAt?: string | undefined;
}, {}>;
export declare const verifyEmailRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    token: string;
}, {}>;
export declare const verifyEmailResponse: import("arktype/internal/methods/object.ts").ObjectType<{
    success: boolean;
    message: string;
    redirectUrl?: string | undefined;
}, {}>;
export declare const resendVerificationEmailRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    email: string;
}, {}>;
export declare const checkVerificationStatusRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    email: string;
}, {}>;
export declare const checkVerificationStatusResponse: import("arktype/internal/methods/object.ts").ObjectType<{
    success: boolean;
    verified: boolean;
    message: string;
    sentAt?: string | undefined;
    expiresAt?: string | undefined;
}, {}>;
export declare const emailVerificationToken: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    email: string;
    tokenHash: string;
    expiresAt: string;
    insertedAt: string;
    updatedAt: string;
    usedAt?: string | undefined;
    createdBy?: string | undefined;
}, {}>;
export type LogoutRequest = typeof logoutRequest.infer;
export type AuthAuditLog = typeof authAuditLog.infer;
export type PermissionCheck = typeof permissionCheck.infer;
export type TokenInfo = typeof tokenInfo.infer;
export type CSRFTokenRequest = typeof csrfTokenRequest.infer;
export type ValidateCSRFRequest = typeof validateCSRFRequest.infer;
export type SendVerificationEmailRequest = typeof sendVerificationEmailRequest.infer;
export type SendVerificationEmailResponse = typeof sendVerificationEmailResponse.infer;
export type VerifyEmailRequest = typeof verifyEmailRequest.infer;
export type VerifyEmailResponse = typeof verifyEmailResponse.infer;
export type ResendVerificationEmailRequest = typeof resendVerificationEmailRequest.infer;
export type CheckVerificationStatusRequest = typeof checkVerificationStatusRequest.infer;
export type CheckVerificationStatusResponse = typeof checkVerificationStatusResponse.infer;
export type EmailVerificationToken = typeof emailVerificationToken.infer;
export declare const sessionListResponse: import("arktype/internal/methods/object.ts").ObjectType<{
    success: boolean;
    data: {
        id: string;
        userId: string;
        csrfTokenHash: string;
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
        deviceFingerprint?: string | undefined;
        revokedAt?: string | undefined;
        revokedReason?: "user_logout" | "admin_revoke" | "security_breach" | "suspicious_activity" | undefined;
        deletedAt?: string | undefined;
    }[];
}, {}>;
export declare const revokeSessionRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    reason?: "user_logout" | "admin_revoke" | "security_breach" | "suspicious_activity" | undefined;
}, {}>;
export declare const revokeSessionResponse: import("arktype/internal/methods/object.ts").ObjectType<{
    success: boolean;
    message: string;
}, {}>;
export declare const revokeAllSessionsRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    reason?: "user_logout" | "admin_revoke" | "security_breach" | "suspicious_activity" | undefined;
    excludeCurrent?: boolean | undefined;
}, {}>;
export declare const revokeAllSessionsResponse: import("arktype/internal/methods/object.ts").ObjectType<{
    success: boolean;
    message: string;
    revokedCount: number;
}, {}>;
export type SessionListResponse = typeof sessionListResponse.infer;
export type RevokeSessionRequest = typeof revokeSessionRequest.infer;
export type RevokeSessionResponse = typeof revokeSessionResponse.infer;
export type RevokeAllSessionsRequest = typeof revokeAllSessionsRequest.infer;
export type RevokeAllSessionsResponse = typeof revokeAllSessionsResponse.infer;
//# sourceMappingURL=auth.d.ts.map