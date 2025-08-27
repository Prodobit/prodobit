import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useProdobitClient } from '../providers/ProdobitProvider';
import { queryKeys } from '../utils/query-keys';
import type { QueryOptions, MutationOptions } from '../types';

export const useAuth = () => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  const requestOTP = useMutation({
    mutationFn: (email: string) => client.loginWithOTP(email),
  });

  const verifyOTP = useMutation({
    mutationFn: ({ email, code, tenantId }: { email: string; code: string; tenantId?: string }) => 
      client.completeLogin(email, code, tenantId),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: queryKeys.auth.me() });
    },
  });

  const logout = useMutation({
    mutationFn: (allDevices?: boolean) => client.signOut(allDevices),
    onSuccess: () => {
      queryClient.clear();
    },
  });

  const refreshToken = useMutation({
    mutationFn: () => client.refreshToken(),
  });

  return {
    requestOTP,
    verifyOTP,
    logout,
    refreshToken,
  };
};

export const useCurrentUser = (options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.auth.me(),
    queryFn: () => client.getCurrentUser(),
    ...options,
  });
};

