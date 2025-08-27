import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useProdobitClient } from '../providers/ProdobitProvider';
import { queryKeys } from '../utils/query-keys';
import type { QueryOptions, MutationOptions, AttributeQuery, Pagination } from '../types';
import type { CreateAttributeRequest, UpdateAttributeRequest } from '@prodobit/types';

export const useAttributes = (
  query?: AttributeQuery & Pagination,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.attributes.list(query),
    queryFn: () => client.getAttributes(query),
    ...options,
  });
};

export const useAttribute = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.attributes.detail(id),
    queryFn: () => client.getAttribute(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useCreateAttribute = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (data: CreateAttributeRequest) => client.createAttribute(data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.attributes.all() });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useUpdateAttribute = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({ id, data }: { id: string; data: UpdateAttributeRequest }) => 
      client.updateAttribute(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.attributes.all() });
      queryClient.invalidateQueries({ queryKey: queryKeys.attributes.detail(variables.id) });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useDeleteAttribute = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (id: string) => client.deleteAttribute(id),
    onSuccess: (data, id) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.attributes.all() });
      queryClient.removeQueries({ queryKey: queryKeys.attributes.detail(id) });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};