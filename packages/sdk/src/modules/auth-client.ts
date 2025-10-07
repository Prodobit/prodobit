import type {
  CheckUserRequest,
  CheckUserResponse,
  CheckVerificationStatusRequest,
  CheckVerificationStatusResponse,
  CurrentUserResponse,
  LoginResponse,
  LogoutRequest,
  RefreshTokenRequest,
  RegisterTenantRequest,
  RegisterTenantResponse,
  RequestOTPRequest,
  RequestOTPResponse,
  ResendOTPRequest,
  ResendVerificationEmailRequest,
  Response,
  SendVerificationEmailRequest,
  SendVerificationEmailResponse,
  User,
  VerifyEmailRequest,
  VerifyEmailResponse,
  VerifyOTPRequest,
} from "@prodobit/types";
import {
  checkUserRequest,
  checkVerificationStatusRequest,
  logoutRequest,
  registerTenantRequest,
  requestOTPRequest,
  resendOTPRequest,
  resendVerificationEmailRequest,
  sendVerificationEmailRequest,
  verifyEmailRequest,
  verifyOTPRequest,
} from "@prodobit/types";
import { LoginResponseData } from "packages/types/dist/auth";
import { AuthStateManager } from "../framework/auth-state";
import type { AuthState, RequestConfig } from "../types";
import { ProdobitError } from "../types";
import { validateRequest } from "../utils/validation";
import { BaseClient } from "./base-client";

export class AuthClient extends BaseClient {
  private stateManager?: AuthStateManager;

  // Initialize state manager lazily
  private getStateManager(): AuthStateManager {
    if (!this.stateManager) {
      // Create a proxy client for AuthStateManager to avoid circular dependency
      const proxyClient = {
        refreshToken: this.refreshToken.bind(this),
        getCurrentUser: this.getCurrentUser.bind(this),
        getTokenInfo: this.getTokenInfo.bind(this),
        isTokenValid: this.isTokenValid.bind(this),
        logout: this.logout.bind(this),
      } as any;
      this.stateManager = new AuthStateManager(proxyClient);
    }
    return this.stateManager;
  }

  // Auth state methods
  getState(): AuthState {
    return this.getStateManager().getState();
  }

  subscribe(listener: (state: AuthState) => void): () => void {
    return this.getStateManager().subscribe(listener);
  }

  async initialize(): Promise<void> {
    return this.getStateManager().initialize();
  }
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
      // Extract tenantId from access token or get first tenant membership
      let tenantId: string | undefined;

      // Try to get tenantId from access token payload
      try {
        const tokenPayload = JSON.parse(
          atob(response.data.session.accessToken.split(".")[1])
        );
        tenantId = tokenPayload.tenantId;
      } catch {
        // Fallback to first tenant membership if token parsing fails
        if (
          response.data.tenantMemberships &&
          response.data.tenantMemberships.length > 0
        ) {
          tenantId = response.data.tenantMemberships[0]?.tenantId;
        }
      }

      console.log('Login success, storing tokens in cookies:', {
        hasAccessToken: !!response.data.session.accessToken,
        hasRefreshToken: !!response.data.refreshToken,
        hasCsrfToken: !!response.data.session.csrfToken
      });
      
      // Store tokens in accessible cookies (except CSRF which will be HTTP-only from server)
      const tokenInfo: any = {
        accessToken: response.data.session.accessToken,
        expiresAt: new Date(response.data.session.expiresAt),
        csrfToken: response.data.session.csrfToken, // For internal use, actual CSRF is HTTP-only
        tenantId: tenantId,
      };
      
      if (response.data.refreshToken) {
        tokenInfo.refreshToken = response.data.refreshToken;
      }
      
      this.setTokenInfo(tokenInfo);
    }

    return response;
  }

  async refreshToken(
    data?: RefreshTokenRequest,
    config?: RequestConfig
  ): Promise<LoginResponse> {
    // Use refresh token from cookies
    if (!this.tokenInfo?.refreshToken) {
      throw new ProdobitError('No refresh token available', 401, 'REFRESH_TOKEN_MISSING');
    }
    
    console.log('Refreshing with token from cookies:', this.tokenInfo.refreshToken?.substring(0, 20) + '...');
    
    const response = await this.request<LoginResponse>(
      "POST",
      "/api/v1/auth/refresh",
      {
        refreshToken: this.tokenInfo.refreshToken,
      },
      { ...config, skipAuth: true }
    );

    // Update token info on successful refresh - store in cookies
    if (response.success && response.data) {
      this.setTokenInfo({
        accessToken: response.data.session.accessToken,
        refreshToken: response.data.refreshToken || this.tokenInfo.refreshToken, // Keep existing if not provided
        expiresAt: new Date(response.data.session.expiresAt),
        csrfToken: response.data.session.csrfToken,
        tenantId: this.tokenInfo?.tenantId, // Preserve tenantId
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

    // Clear token info on logout - this will clear cookies
    this.clearTokenInfo();

    return response;
  }

  async getCurrentUser(config?: RequestConfig): Promise<CurrentUserResponse> {
    return this.request("GET", "/api/v1/auth/me", undefined, config);
  }

  // @deprecated Use getCurrentUser instead
  async getMe(config?: RequestConfig): Promise<CurrentUserResponse> {
    return this.getCurrentUser(config);
  }

  // Auth state methods
  async loginWithOTP(
    identifier: string, // email or phone
    tenantId?: string,
    type?: "email" | "phone" // auto-detect if not provided
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
    // Auto-detect type if not provided
    const isEmail = identifier.includes("@");
    const authType = type || (isEmail ? "email" : "phone");

    const requestData: RequestOTPRequest =
      authType === "email"
        ? { email: identifier, ...(tenantId && { tenantId }) }
        : { phone: identifier, ...(tenantId && { tenantId }) };

    const response = await this.requestOTP(requestData);

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
    identifier: string, // email or phone
    code: string,
    tenantId?: string,
    type?: "email" | "phone" // auto-detect if not provided
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
      // Auto-detect type if not provided
      const isEmail = identifier.includes("@");
      const authType = type || (isEmail ? "email" : "phone");

      const verifyData: VerifyOTPRequest =
        authType === "email"
          ? { email: identifier, code, ...(tenantId && { tenantId }) }
          : { phone: identifier, code, ...(tenantId && { tenantId }) };

      const response = await this.verifyOTP(verifyData);

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

  /**
   * Force refresh auth state - useful after login to ensure everything is synced
   */
  async refreshAuthState(): Promise<void> {
    console.log('refreshAuthState called, isAuthenticated:', this.isAuthenticated());
    
    // Only refresh if we have a refresh token and token is expiring
    if (this.isAuthenticated() && this.tokenInfo?.refreshToken) {
      try {
        console.log('Calling refreshToken from refreshAuthState');
        await this.refreshToken();
      } catch (error) {
        console.log('refreshAuthState failed:', error);
        // If refresh fails, clear local state
        this.clearTokenInfo();
        throw error;
      }
    } else {
      console.log('Skipping refresh - no refresh token available');
    }
  }

  // Email verification methods
  async sendVerificationEmail(
    data: SendVerificationEmailRequest,
    config?: RequestConfig
  ): Promise<SendVerificationEmailResponse> {
    const validatedData = validateRequest(sendVerificationEmailRequest, data);
    const response = await this.request<SendVerificationEmailResponse>(
      "POST",
      "/api/v1/auth/send-verification-email",
      validatedData,
      { ...config, skipAuth: true }
    );
    return response;
  }

  async verifyEmail(
    data: VerifyEmailRequest,
    config?: RequestConfig
  ): Promise<VerifyEmailResponse> {
    const validatedData = validateRequest(verifyEmailRequest, data);
    const response = await this.request<VerifyEmailResponse>(
      "GET",
      `/api/v1/auth/verify-email/${encodeURIComponent(validatedData.token)}`,
      undefined,
      { ...config, skipAuth: true }
    );
    return response;
  }

  async resendVerificationEmail(
    data: ResendVerificationEmailRequest,
    config?: RequestConfig
  ): Promise<SendVerificationEmailResponse> {
    const validatedData = validateRequest(resendVerificationEmailRequest, data);
    const response = await this.request<SendVerificationEmailResponse>(
      "POST",
      "/api/v1/auth/resend-verification-email",
      validatedData,
      { ...config, skipAuth: true }
    );
    return response;
  }

  async checkVerificationStatus(
    data: CheckVerificationStatusRequest,
    config?: RequestConfig
  ): Promise<CheckVerificationStatusResponse> {
    const validatedData = validateRequest(checkVerificationStatusRequest, data);
    const response = await this.request<CheckVerificationStatusResponse>(
      "POST",
      "/api/v1/auth/check-verification-status",
      validatedData,
      { ...config, skipAuth: true }
    );
    return response;
  }

  // Session Management Methods

  /**
   * Get all active sessions for the current user
   */
  async getSessions(config?: RequestConfig): Promise<Response<Session[]>> {
    const response = await this.request<Response<Session[]>>(
      "GET",
      "/api/v1/auth/sessions",
      undefined,
      config
    );
    return response;
  }

  /**
   * Revoke a specific session
   */
  async revokeSession(
    sessionId: string,
    data?: RevokeSessionRequest,
    config?: RequestConfig
  ): Promise<RevokeSessionResponse> {
    const response = await this.request<RevokeSessionResponse>(
      "DELETE",
      `/api/v1/auth/sessions/${sessionId}`,
      data,
      config
    );
    return response;
  }

  /**
   * Revoke all sessions except current (default) or all sessions
   */
  async revokeAllSessions(
    data?: RevokeAllSessionsRequest,
    config?: RequestConfig
  ): Promise<RevokeAllSessionsResponse> {
    const response = await this.request<RevokeAllSessionsResponse>(
      "DELETE",
      "/api/v1/auth/sessions",
      data,
      config
    );
    return response;
  }
}
