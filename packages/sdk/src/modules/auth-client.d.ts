import type { LoginResponse, LogoutRequest, RefreshTokenRequest, RequestOTPRequest, RequestOTPResponse, ResendOTPRequest, Response, User, VerifyOTPRequest } from "@prodobit/types";
import type { RequestConfig } from "../types";
import { BaseClient } from "./base-client";
export declare class AuthClient extends BaseClient {
    requestOTP(data: RequestOTPRequest, config?: RequestConfig): Promise<RequestOTPResponse>;
    resendOTP(data: ResendOTPRequest, config?: RequestConfig): Promise<RequestOTPResponse>;
    verifyOTP(data: VerifyOTPRequest, config?: RequestConfig): Promise<LoginResponse>;
    refreshToken(data?: RefreshTokenRequest, config?: RequestConfig): Promise<LoginResponse>;
    logout(data?: LogoutRequest, config?: RequestConfig): Promise<Response<void>>;
    getCurrentUser(config?: RequestConfig): Promise<Response<User>>;
    getMe(config?: RequestConfig): Promise<Response<User>>;
    loginWithOTP(email: string, tenantId?: string): Promise<{
        success: boolean;
        message: string;
        expiresAt?: string;
        requiresTenantSelection?: boolean;
        isNewUser?: boolean;
        defaultTenantId?: string;
        defaultTenantName?: string;
        selectedTenantId?: string;
        selectedTenantName?: string;
        tenants?: Array<{
            id: string;
            name: string;
            role: string;
        }>;
    }>;
    completeLogin(email: string, code: string, tenantId?: string): Promise<{
        success: boolean;
        user?: any;
        isNewUser?: boolean;
        error?: string;
    }>;
    signOut(allDevices?: boolean): Promise<boolean>;
}
//# sourceMappingURL=auth-client.d.ts.map