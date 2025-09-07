import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useProdobitClient } from '../providers/ProdobitProvider';
import { queryKeys } from '../utils/query-keys';
import type { QueryOptions, MutationOptions, ItemFilters, Pagination } from '../types';
import type { CreateItemRequest } from '@prodobit/types';

export const useItems = (
  query?: ItemFilters & Pagination,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.items.list(query),
    queryFn: () => client.getItems(query),
    ...options,
  });
};

export const useItem = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.items.detail(id),
    queryFn: () => client.getItem(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useCreateItem = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (data: CreateItemRequest) => client.createItem(data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.items.all() });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};


export const useUpdateItem = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({ id, data }: { id: string; data: Partial<CreateItemRequest> }) => 
      client.updateItem?.(id, data) || Promise.reject(new Error('updateItem not implemented')),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.items.all() });
      queryClient.setQueryData(queryKeys.items.detail(variables.id), data);
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useDeleteItem = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (id: string) => client.deleteItem(id),
    onSuccess: (data, id) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.items.all() });
      queryClient.removeQueries({ queryKey: queryKeys.items.detail(id) });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};