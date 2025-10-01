import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useProdobitClient } from '../providers/ProdobitProvider';
import { queryKeys } from '../utils/query-keys';
import type { QueryOptions, MutationOptions, TenantQuery, Pagination } from '../types';
import type { Tenant, TenantMembership, TenantInvitation, CreateTenantRequest, UpdateTenantRequest, Response, PaginatedResponse } from '@prodobit/types';
import type { CreateInvitationRequest, UpdateMembershipRequest } from '@prodobit/sdk';

export const useTenants = (
  query?: TenantQuery & Pagination,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<PaginatedResponse<Tenant[]>, Error>({
    queryKey: queryKeys.tenants.list(query),
    queryFn: () => client.getTenants(query),
    ...options,
  });
};

export const useTenant = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<Response<Tenant>, Error>({
    queryKey: queryKeys.tenants.detail(id),
    queryFn: () => client.getTenant(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useCreateTenant = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<Tenant>, Error, CreateTenantRequest>({
    mutationFn: (data: CreateTenantRequest) => client.createTenant(data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.tenants.all() });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useUpdateTenant = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<Tenant>, Error, { id: string; data: UpdateTenantRequest }>({
    mutationFn: ({ id, data }: { id: string; data: UpdateTenantRequest }) => 
      client.updateTenant(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.tenants.all() });
      queryClient.invalidateQueries({ queryKey: queryKeys.tenants.detail(variables.id) });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useDeleteTenant = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<void>, Error, string>({
    mutationFn: (id: string) => client.deleteTenant(id),
    onSuccess: (data, id) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.tenants.all() });
      queryClient.removeQueries({ queryKey: queryKeys.tenants.detail(id) });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useTenantMembers = (
  tenantId: string,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<Response<TenantMembership[]>, Error>({
    queryKey: queryKeys.tenants.members(tenantId),
    queryFn: () => client.getTenantMembers(tenantId),
    enabled: !!tenantId && options?.enabled !== false,
    ...options,
  });
};

export const useTenantInvitations = (
  tenantId: string,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<Response<{ id: string; email: string; status: string; expiresAt: string }[]>, Error>({
    queryKey: queryKeys.tenants.invitations(tenantId),
    queryFn: () => client.getTenantInvitations(tenantId),
    enabled: !!tenantId && options?.enabled !== false,
    ...options,
  });
};

export const useCreateInvitation = (tenantId: string, options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<unknown>, Error, CreateInvitationRequest>({
    mutationFn: (data: CreateInvitationRequest) =>
      client.createInvitation(tenantId, data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.tenants.invitations(tenantId) });
      queryClient.invalidateQueries({ queryKey: queryKeys.tenants.members(tenantId) });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useUpdateMembership = (tenantId: string, options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<unknown>, Error, { membershipId: string; data: UpdateMembershipRequest }>({
    mutationFn: ({ membershipId, data }: { membershipId: string; data: UpdateMembershipRequest }) =>
      client.updateMembership(tenantId, membershipId, data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.tenants.members(tenantId) });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useRemoveMember = (tenantId: string, options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<unknown>, Error, string>({
    mutationFn: (membershipId: string) =>
      client.removeMember(tenantId, membershipId),
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.tenants.members(tenantId) });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useTenantRoles = (
  tenantId: string,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<Response<{ id: string; name: string; description?: string }[]>, Error>({
    queryKey: queryKeys.tenants.roles(tenantId),
    queryFn: () => client.getTenantRoles(tenantId),
    enabled: !!tenantId && options?.enabled !== false,
    ...options,
  });
};

export const useAcceptInvitation = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<unknown>, Error, { token: string }>({
    mutationFn: ({ token }: { token: string }) =>
      client.acceptInvitation(token),
    onSuccess: (data) => {
      // Invalidate user session to refetch with new tenant membership
      queryClient.invalidateQueries({ queryKey: ['auth', 'me'] });
      queryClient.invalidateQueries({ queryKey: queryKeys.tenants.all() });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};