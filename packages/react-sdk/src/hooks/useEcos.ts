import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useProdobitClient } from '../providers/ProdobitProvider';
import { queryKeys } from '../utils/query-keys';
import type { QueryOptions, MutationOptions, EcoQuery } from '../types';
import type { Eco, CreateEcoRequest, UpdateEcoRequest, RejectEcoRequest, Response } from '@prodobit/types';

export const useEcos = (
  filters?: EcoQuery,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<Response<Eco[]>, Error>({
    queryKey: ['ecos', filters],
    queryFn: () => client.getEcos(filters),
    ...options,
  });
};

export const useEco = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<Response<Eco>, Error>({
    queryKey: ['ecos', id],
    queryFn: () => client.getEcoById(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useCreateEco = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<Eco>, Error, CreateEcoRequest>({
    mutationFn: (data: CreateEcoRequest) => client.createEco(data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ['ecos'] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useUpdateEco = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<Eco>, Error, { id: string; data: UpdateEcoRequest }>({
    mutationFn: ({ id, data }: { id: string; data: UpdateEcoRequest }) =>
      client.updateEco(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: ['ecos'] });
      queryClient.invalidateQueries({ queryKey: ['ecos', variables.id] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useApproveEco = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<Eco>, Error, string>({
    mutationFn: (id: string) => client.approveEco(id),
    onSuccess: (data, id) => {
      queryClient.invalidateQueries({ queryKey: ['ecos'] });
      queryClient.invalidateQueries({ queryKey: ['ecos', id] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useRejectEco = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<Eco>, Error, { id: string; data: RejectEcoRequest }>({
    mutationFn: ({ id, data }: { id: string; data: RejectEcoRequest }) =>
      client.rejectEco(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: ['ecos'] });
      queryClient.invalidateQueries({ queryKey: ['ecos', variables.id] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};
