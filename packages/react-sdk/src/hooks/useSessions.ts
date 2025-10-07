import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useProdobitClient } from '../providers/ProdobitProvider';
import type { QueryOptions, MutationOptions } from '../types';
import type {
  Session,
  Response,
  RevokeSessionRequest,
  RevokeSessionResponse,
  RevokeAllSessionsRequest,
  RevokeAllSessionsResponse,
} from '@prodobit/types';

/**
 * Hook to fetch all active sessions for the current user
 * Similar to WhatsApp's "Linked Devices" feature
 */
export const useSessions = (options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<Response<Session[]>, Error>({
    queryKey: ['auth', 'sessions'],
    queryFn: () => client.getSessions(),
    ...options,
  });
};

/**
 * Hook to revoke a specific session
 * Use this to log out from a specific device
 */
export const useRevokeSession = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<
    RevokeSessionResponse,
    Error,
    { sessionId: string; data?: RevokeSessionRequest }
  >({
    mutationFn: ({ sessionId, data }) => client.revokeSession(sessionId, data),
    onSuccess: (response) => {
      // Invalidate sessions list to refresh
      queryClient.invalidateQueries({ queryKey: ['auth', 'sessions'] });
      options?.onSuccess?.(response);
    },
    onError: options?.onError,
  });
};

/**
 * Hook to revoke all sessions
 * Options:
 * - excludeCurrent: true (default) - Keep current session active
 * - excludeCurrent: false - Log out from all devices including current
 */
export const useRevokeAllSessions = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<
    RevokeAllSessionsResponse,
    Error,
    RevokeAllSessionsRequest | undefined
  >({
    mutationFn: (data) => client.revokeAllSessions(data),
    onSuccess: (response, variables) => {
      // Invalidate sessions list
      queryClient.invalidateQueries({ queryKey: ['auth', 'sessions'] });

      // If we logged out from all devices (including current), clear auth state
      if (variables?.excludeCurrent === false) {
        queryClient.invalidateQueries({ queryKey: ['auth'] });
        queryClient.clear();
      }

      options?.onSuccess?.(response);
    },
    onError: options?.onError,
  });
};

/**
 * Hook to log out from all other devices (keep current session)
 * Convenience wrapper for revokeAllSessions with excludeCurrent: true
 */
export const useLogoutOtherDevices = (options?: MutationOptions) => {
  const revokeAllSessions = useRevokeAllSessions(options);

  return {
    ...revokeAllSessions,
    mutate: (reason?: string) => {
      revokeAllSessions.mutate({
        excludeCurrent: true,
        reason: reason as any,
      });
    },
    mutateAsync: async (reason?: string) => {
      return revokeAllSessions.mutateAsync({
        excludeCurrent: true,
        reason: reason as any,
      });
    },
  };
};

/**
 * Hook to log out from all devices (including current)
 * Convenience wrapper for revokeAllSessions with excludeCurrent: false
 */
export const useLogoutAllDevices = (options?: MutationOptions) => {
  const revokeAllSessions = useRevokeAllSessions(options);

  return {
    ...revokeAllSessions,
    mutate: (reason?: string) => {
      revokeAllSessions.mutate({
        excludeCurrent: false,
        reason: reason as any,
      });
    },
    mutateAsync: async (reason?: string) => {
      return revokeAllSessions.mutateAsync({
        excludeCurrent: false,
        reason: reason as any,
      });
    },
  };
};
