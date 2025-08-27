import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useProdobitClient } from '../providers/ProdobitProvider';
import { queryKeys } from '../utils/query-keys';
import type { QueryOptions, MutationOptions, PartyFilters, Pagination } from '../types';
import type { CreatePersonRequest, CreateOrganizationRequest, UpdatePartyRequest } from '@prodobit/types';

export const useParties = (
  query?: PartyFilters & Pagination,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.parties.list(query),
    queryFn: () => client.getParties(query),
    ...options,
  });
};

export const useParty = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.parties.detail(id),
    queryFn: () => client.getParty(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useCreatePerson = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (data: CreatePersonRequest) => client.createPerson(data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.parties.all() });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useCreateOrganization = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (data: CreateOrganizationRequest) => client.createOrganization(data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.parties.all() });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useUpdateParty = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({ id, data }: { id: string; data: UpdatePartyRequest }) => 
      client.updateParty(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.parties.all() });
      queryClient.invalidateQueries({ queryKey: queryKeys.parties.detail(variables.id) });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useDeleteParty = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (id: string) => client.deleteParty(id),
    onSuccess: (data, id) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.parties.all() });
      queryClient.removeQueries({ queryKey: queryKeys.parties.detail(id) });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useCustomers = (options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.parties.customers(),
    queryFn: () => client.getCustomers(),
    ...options,
  });
};

export const useSuppliers = (options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.parties.suppliers(),
    queryFn: () => client.getSuppliers(),
    ...options,
  });
};

export const useEmployees = (options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.parties.employees(),
    queryFn: () => client.getEmployees(),
    ...options,
  });
};