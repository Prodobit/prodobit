import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useProdobitClient } from '../providers/ProdobitProvider';
import { queryKeys } from '../utils/query-keys';
import type { QueryOptions, MutationOptions } from '../types';
import type { 
  User, 
  LoginResponse, 
  RegisterTenantRequest, 
  RequestOTPResponse, 
  TokenInfo, 
  Response,
  SendVerificationEmailRequest,
  SendVerificationEmailResponse,
  VerifyEmailRequest,
  VerifyEmailResponse,
  ResendVerificationEmailRequest,
  CheckVerificationStatusRequest,
  CheckVerificationStatusResponse
} from '@prodobit/types';

export const useAuth = () => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  const checkUser = useMutation<Response<any>, Error, { email: string }>({
    mutationFn: ({ email }: { email: string }) => 
      client.checkUser({ email }),
  });

  const registerTenant = useMutation<Response<any>, Error, RegisterTenantRequest>({
    mutationFn: (data: RegisterTenantRequest) => 
      client.registerTenant(data),
  });

  const requestOTP = useMutation<Response<RequestOTPResponse>, Error, { email: string; tenantId?: string }>({
    mutationFn: ({ email, tenantId }: { email: string; tenantId?: string }) => 
      client.loginWithOTP(email, tenantId),
  });

  const verifyOTP = useMutation<Response<LoginResponse>, Error, { email: string; code: string; tenantId?: string }>({
    mutationFn: ({ email, code, tenantId }: { email: string; code: string; tenantId?: string }) => 
      client.completeLogin(email, code, tenantId),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: queryKeys.auth.me() });
    },
  });

  const logout = useMutation<Response<void>, Error, boolean | undefined>({
    mutationFn: (allDevices?: boolean) => client.signOut(allDevices),
    onSuccess: () => {
      queryClient.clear();
    },
  });

  const refreshToken = useMutation<Response<TokenInfo>, Error, void>({
    mutationFn: () => client.refreshToken(),
  });

  // Email verification mutations
  const sendVerificationEmail = useMutation<SendVerificationEmailResponse, Error, SendVerificationEmailRequest>({
    mutationFn: (data: SendVerificationEmailRequest) => 
      client.sendVerificationEmail(data),
  });

  const verifyEmail = useMutation<VerifyEmailResponse, Error, VerifyEmailRequest>({
    mutationFn: (data: VerifyEmailRequest) => 
      client.verifyEmail(data),
    onSuccess: () => {
      // Invalidate current user data since verification status changed
      queryClient.invalidateQueries({ queryKey: queryKeys.auth.me() });
    },
  });

  const resendVerificationEmail = useMutation<SendVerificationEmailResponse, Error, ResendVerificationEmailRequest>({
    mutationFn: (data: ResendVerificationEmailRequest) => 
      client.resendVerificationEmail(data),
  });

  const checkVerificationStatus = useMutation<CheckVerificationStatusResponse, Error, CheckVerificationStatusRequest>({
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
    // Email verification methods
    sendVerificationEmail,
    verifyEmail,
    resendVerificationEmail,
    checkVerificationStatus,
  };
};

export const useCurrentUser = (options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<Response<User>, Error>({
    queryKey: queryKeys.auth.me(),
    queryFn: () => client.getCurrentUser(),
    ...options,
  });
};


