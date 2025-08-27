import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useProdobitClient } from '../providers/ProdobitProvider';
import { queryKeys } from '../utils/query-keys';
import type { QueryOptions, MutationOptions, SalesOrderFilters } from '../types';
import type { SalesOrder, CreateSalesOrderRequest, UpdateSalesOrderRequest } from '@prodobit/types';

export const useSalesOrders = (
  filters?: SalesOrderFilters,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.salesOrders.list(filters),
    queryFn: () => client.getSalesOrders(filters),
    ...options,
  });
};

export const useSalesOrder = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.salesOrders.detail(id),
    queryFn: () => client.getSalesOrder(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useCreateSalesOrder = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (data: CreateSalesOrderRequest) => client.createSalesOrder(data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.salesOrders.all() });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useUpdateSalesOrder = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({ id, data }: { id: string; data: UpdateSalesOrderRequest }) => 
      client.updateSalesOrder(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.salesOrders.all() });
      queryClient.invalidateQueries({ queryKey: queryKeys.salesOrders.detail(variables.id) });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useDeleteSalesOrder = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (id: string) => client.deleteSalesOrder(id),
    onSuccess: (data, id) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.salesOrders.all() });
      queryClient.removeQueries({ queryKey: queryKeys.salesOrders.detail(id) });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};