import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useProdobitClient } from '../providers/ProdobitProvider';
import { queryKeys } from '../utils/query-keys';
import type { QueryOptions, MutationOptions, BomQuery } from '../types';
import type { Bom, CreateBomRequest, UpdateBomRequest } from '@prodobit/types';

export const useBoms = (
  filters?: BomQuery,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.boms.list(filters),
    queryFn: () => client.getBoms(filters),
    ...options,
  });
};

export const useBom = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.boms.detail(id),
    queryFn: () => client.getBomById(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useCreateBom = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (data: CreateBomRequest) => client.createBom(data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.boms.all() });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useUpdateBom = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({ id, data }: { id: string; data: UpdateBomRequest }) => 
      client.updateBom(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.boms.all() });
      queryClient.invalidateQueries({ queryKey: queryKeys.boms.detail(variables.id) });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useDeleteBom = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (id: string) => client.deleteBom(id),
    onSuccess: (data, id) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.boms.all() });
      queryClient.removeQueries({ queryKey: queryKeys.boms.detail(id) });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};