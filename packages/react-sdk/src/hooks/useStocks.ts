import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useProdobitClient } from '../providers/ProdobitProvider';
import { queryKeys } from '../utils/query-keys';
import type { QueryOptions, MutationOptions, StockFilters } from '../types';
import type { CreateStockRequest, UpdateStockRequest, CreateLotRequest, UpdateLotRequest } from '@prodobit/sdk';

export const useStocks = (
  filters?: StockFilters,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.stocks.list(filters),
    queryFn: () => client.getStocks(filters),
    ...options,
  });
};

export const useStock = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.stocks.detail(id),
    queryFn: () => client.getStock(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useStockMovements = (
  filters?: StockFilters,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.stocks.movements(filters),
    queryFn: () => client.getStockMovements(filters),
    ...options,
  });
};

export const useCreateStock = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (data: CreateStockRequest) => client.createStock(data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.stocks.all() });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useUpdateStock = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({ id, data }: { id: string; data: UpdateStockRequest }) => 
      client.updateStock(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.stocks.all() });
      queryClient.invalidateQueries({ queryKey: queryKeys.stocks.detail(variables.id) });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};