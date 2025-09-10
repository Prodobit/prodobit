import type {
  CheckUserRequest,
  CheckUserResponse,
  LoginResponse,
  LogoutRequest,
  RefreshTokenRequest,
  RegisterTenantRequest,
  RegisterTenantResponse,
  RequestOTPRequest,
  RequestOTPResponse,
  ResendOTPRequest,
  Response,
  User,
  VerifyOTPRequest,
} from "@prodobit/types";
import {
  checkUserRequest,
  logoutRequest,
  refreshTokenRequest,
  registerTenantRequest,
  requestOTPRequest,
  resendOTPRequest,
  verifyOTPRequest,
} from "@prodobit/types";
import { LoginResponseData } from "packages/types/dist/auth";
import type { RequestConfig } from "../types";
import { ProdobitError } from "../types";
import { validateRequest } from "../utils/validation";
import { BaseClient } from "./base-client";

export class AuthClient extends BaseClient {
  // Check user before OTP
  async checkUser(
    data: CheckUserRequest,
    config?: RequestConfig
  ): Promise<CheckUserResponse> {
    const validatedData = validateRequest(checkUserRequest, data);
    const response = await this.request<CheckUserResponse>(
      "POST",
      "/api/v1/auth/check-user",
      validatedData,
      { ...config, skipAuth: true }
    );
    return response;
  }

  // Register tenant with user
  async registerTenant(
    data: RegisterTenantRequest,
    config?: RequestConfig
  ): Promise<RegisterTenantResponse> {
    const validatedData = validateRequest(registerTenantRequest, data);
    const response = await this.request<RegisterTenantResponse>(
      "POST",
      "/api/v1/auth/register-tenant",
      validatedData,
      { ...config, skipAuth: true }
    );
    return response;
  }

  // Auth methods (OTP-based)
  async requestOTP(
    data: RequestOTPRequest,
    config?: RequestConfig
  ): Promise<RequestOTPResponse> {
    const validatedData = validateRequest(requestOTPRequest, data);
    const response = await this.request<RequestOTPResponse>(
      "POST",
      "/api/v1/auth/request-otp",
      validatedData,
      { ...config, skipAuth: true }
    );
    return response;
  }

  async resendOTP(
    data: ResendOTPRequest,
    config?: RequestConfig
  ): Promise<RequestOTPResponse> {
    const validatedData = validateRequest(resendOTPRequest, data);
    const response = await this.request<RequestOTPResponse>(
      "POST",
      "/api/v1/auth/resend-otp",
      validatedData,
      { ...config, skipAuth: true }
    );
    return response;
  }

  async verifyOTP(
    data: VerifyOTPRequest,
    config?: RequestConfig
  ): Promise<LoginResponse> {
    const validatedData = validateRequest(verifyOTPRequest, data);
    const response = await this.request<LoginResponse>(
      "POST",
      "/api/v1/auth/verify-otp",
      validatedData,
      { ...config, skipAuth: true }
    );

    // Auto-store token info on successful login
    if (response.success && response.data) {
      this.setTokenInfo({
        accessToken: response.data.session.accessToken,
        refreshToken: response.data.session.refreshToken ?? "",
        expiresAt: new Date(response.data.session.expiresAt),
      });
    }

    return response;
  }

  async refreshToken(
    data?: RefreshTokenRequest,
    config?: RequestConfig
  ): Promise<LoginResponse> {
    const refreshToken = data?.refreshToken || this.tokenInfo?.refreshToken;
    if (!refreshToken) {
      throw ProdobitError.unauthorized("No refresh token available");
    }

    const validatedData = validateRequest(refreshTokenRequest, {
      refreshToken,
    });
    const response = await this.request<LoginResponse>(
      "POST",
      "/api/v1/auth/refresh",
      validatedData,
      { ...config, skipAuth: true }
    );

    // Update token info on successful refresh
    if (response.success && response.data) {
      this.setTokenInfo({
        accessToken: response.data.session.accessToken,
        refreshToken: response.data.session.refreshToken ?? refreshToken,
        expiresAt: new Date(response.data.session.expiresAt),
      });
    }

    return response;
  }

  async logout(
    data?: LogoutRequest,
    config?: RequestConfig
  ): Promise<Response<void>> {
    const logoutData: LogoutRequest = {
      allDevices: false,
      ...data,
    };

    const validatedData = validateRequest(logoutRequest, logoutData);
    const response = await this.request<Response<void>>(
      "POST",
      "/api/v1/auth/logout",
      validatedData,
      config
    );

    // Clear token info on logout
    this.clearTokenInfo();

    return response;
  }

  async getCurrentUser(config?: RequestConfig): Promise<Response<User>> {
    return this.request("GET", "/api/v1/auth/me", undefined, config);
  }

  // @deprecated Use getCurrentUser instead
  async getMe(config?: RequestConfig): Promise<Response<User>> {
    return this.getCurrentUser(config);
  }

  // Auth state methods
  async loginWithOTP(
    email: string,
    tenantId?: string
  ): Promise<{
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
  }> {
    const response = await this.requestOTP({
      email,
      ...(tenantId && { tenantId }),
    });

    return {
      success: response.success,
      message: response.message,
      expiresAt: response.expiresAt,
      requiresTenantSelection: response.requiresTenantSelection,
      isNewUser: response.isNewUser,
      defaultTenantId: response.defaultTenantId,
      defaultTenantName: response.defaultTenantName,
      selectedTenantId: response.selectedTenantId,
      selectedTenantName: response.selectedTenantName,
      tenants: response.tenants,
    };
  }

  async completeLogin(
    email: string,
    code: string,
    tenantId?: string
  ): Promise<{
    success: boolean;
    user?: User;
    authMethod?: LoginResponseData["authMethod"];
    isNewUser?: boolean;
    error?: string;
    session?: LoginResponseData["session"];
    tenantMemberships?: LoginResponseData["tenantMemberships"];
  }> {
    try {
      const response = await this.verifyOTP({
        email,
        code,
        ...(tenantId && { tenantId }),
      });

      if (response.success && response.data) {
        return {
          success: true,
          user: response.data.user,
          authMethod: response.data.authMethod,
          isNewUser: response.data.isNewUser,
          session: response.data.session,
          tenantMemberships: response.data.tenantMemberships,
        };
      }

      return {
        success: false,
        error: "Verification failed",
      };
    } catch (error) {
      return {
        success: false,
        error: error instanceof ProdobitError ? error.message : "Unknown error",
      };
    }
  }

  async signOut(allDevices = false): Promise<boolean> {
    try {
      await this.logout({ allDevices });
      return true;
    } catch (error) {
      // Clear local token even if API call fails
      this.clearTokenInfo();
      return false;
    }
  }
}
