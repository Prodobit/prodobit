import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useProdobitClient } from '../providers/ProdobitProvider';
import { queryKeys } from '../utils/query-keys';
import type { QueryOptions, MutationOptions, TenantQuery, Pagination } from '../types';
import type { Tenant, TenantMembership, TenantInvitation, CreateTenantRequest, UpdateTenantRequest, Response, PaginatedResponse } from '@prodobit/types';

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

  return useQuery<PaginatedResponse<TenantMembership[]>, Error>({
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

  return useQuery<PaginatedResponse<TenantInvitation[]>, Error>({
    queryKey: queryKeys.tenants.invitations(tenantId),
    queryFn: () => client.getTenantInvitations(tenantId),
    enabled: !!tenantId && options?.enabled !== false,
    ...options,
  });
};