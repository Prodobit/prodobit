import type {
  CheckVerificationStatusRequest,
  CheckVerificationStatusResponse,
  CurrentUserResponse,
  LoginResponse,
  RegisterTenantRequest,
  RegisterTenantResponse,
  RequestOTPResponse,
  ResendVerificationEmailRequest,
  Response,
  SendVerificationEmailRequest,
  SendVerificationEmailResponse,
  VerifyEmailRequest,
  VerifyEmailResponse,
} from "@prodobit/types";
import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";
import { useProdobitClient } from "../providers/ProdobitProvider";
import type { QueryOptions } from "../types";
import { queryKeys } from "../utils/query-keys";

export const useAuth = () => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  const checkUser = useMutation<
    Response<{ userExists: boolean; tenantMemberships: any[] }>,
    Error,
    { email?: string; phone?: string }
  >({
    mutationFn: (data: { email?: string; phone?: string }) =>
      client.checkUser(data),
  });

  const registerTenant = useMutation<
    RegisterTenantResponse,
    Error,
    RegisterTenantRequest
  >({
    mutationFn: (data: RegisterTenantRequest) => client.registerTenant(data),
  });

  const requestOTP = useMutation<
    Response<RequestOTPResponse>,
    Error,
    { identifier: string; tenantId?: string; type?: "email" | "phone" }
  >({
    mutationFn: ({
      identifier,
      tenantId,
      type,
    }: {
      identifier: string;
      tenantId?: string;
      type?: "email" | "phone";
    }) => client.loginWithOTP(identifier, tenantId, type),
  });

  const verifyOTP = useMutation<
    Response<LoginResponse>,
    Error,
    {
      identifier: string;
      code: string;
      tenantId?: string;
      type?: "email" | "phone";
    }
  >({
    mutationFn: ({
      identifier,
      code,
      tenantId,
      type,
    }: {
      identifier: string;
      code: string;
      tenantId?: string;
      type?: "email" | "phone";
    }) => client.completeLogin(identifier, code, tenantId, type),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: queryKeys.auth.me() });
    },
  });

  const logout = useMutation<boolean, Error, boolean | undefined>({
    mutationFn: (allDevices?: boolean) => client.signOut(allDevices),
    onSuccess: () => {
      queryClient.clear();
    },
  });

  const refreshToken = useMutation<LoginResponse, Error, void>({
    mutationFn: () => client.refreshToken(),
  });

  const refreshAuthState = useMutation<void, Error, void>({
    mutationFn: async () => {
      await client.refreshAuthState();
      // Invalidate auth queries to force refetch
      queryClient.invalidateQueries({ queryKey: queryKeys.auth.me() });
    },
  });

  // Email verification mutations
  const sendVerificationEmail = useMutation<
    SendVerificationEmailResponse,
    Error,
    SendVerificationEmailRequest
  >({
    mutationFn: (data: SendVerificationEmailRequest) =>
      client.sendVerificationEmail(data),
  });

  const verifyEmail = useMutation<
    VerifyEmailResponse,
    Error,
    VerifyEmailRequest
  >({
    mutationFn: (data: VerifyEmailRequest) => client.verifyEmail(data),
    onSuccess: () => {
      // Invalidate current user data since verification status changed
      queryClient.invalidateQueries({ queryKey: queryKeys.auth.me() });
    },
  });

  const resendVerificationEmail = useMutation<
    SendVerificationEmailResponse,
    Error,
    ResendVerificationEmailRequest
  >({
    mutationFn: (data: ResendVerificationEmailRequest) =>
      client.resendVerificationEmail(data),
  });

  const checkVerificationStatus = useMutation<
    CheckVerificationStatusResponse,
    Error,
    CheckVerificationStatusRequest
  >({
    mutationFn: (data: CheckVerificationStatusRequest) =>
      client.checkVerificationStatus(data),
  });

  return {
    checkUser,
    registerTenant,
    requestOTP,
    verifyOTP,
    logout,
    refreshToken,
    refreshAuthState,
    // Email verification methods
    sendVerificationEmail,
    verifyEmail,
    resendVerificationEmail,
    checkVerificationStatus,
  };
};

export const useCurrentUser = (options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<CurrentUserResponse, Error>({
    queryKey: queryKeys.auth.me(),
    queryFn: () => client.getCurrentUser(),
    ...options,
  });
};
