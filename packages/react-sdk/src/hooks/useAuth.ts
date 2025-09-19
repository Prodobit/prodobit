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
    { email: string }
  >({
    mutationFn: ({ email }: { email: string }) => client.checkUser({ email }),
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
    { email: string; tenantId?: string }
  >({
    mutationFn: ({ email, tenantId }: { email: string; tenantId?: string }) =>
      client.loginWithOTP(email, tenantId),
  });

  const verifyOTP = useMutation<
    Response<LoginResponse>,
    Error,
    { email: string; code: string; tenantId?: string }
  >({
    mutationFn: ({
      email,
      code,
      tenantId,
    }: {
      email: string;
      code: string;
      tenantId?: string;
    }) => client.completeLogin(email, code, tenantId),
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
