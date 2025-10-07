import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useProdobitClient } from '../providers/ProdobitProvider';
import { queryKeys } from '../utils/query-keys';
import type { QueryOptions, MutationOptions, SalesOrderFilters } from '../types';
import type {
  SalesOrder,
  SalesOrderItem,
  CreateSalesOrderRequest,
  UpdateSalesOrderRequest,
  UpdateSalesOrderStatusRequest,
  CreateSalesOrderItemRequest,
  UpdateSalesOrderItemRequest,
  Response,
  PaginatedResponse
} from '@prodobit/types';

export const useSalesOrders = (
  filters?: SalesOrderFilters,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<PaginatedResponse<SalesOrder[]>, Error>({
    queryKey: queryKeys.salesOrders.list(filters),
    queryFn: () => client.getSalesOrders(filters),
    ...options,
  });
};

export const useSalesOrder = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<Response<SalesOrder>, Error>({
    queryKey: queryKeys.salesOrders.detail(id),
    queryFn: () => client.getSalesOrder(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useCreateSalesOrder = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<SalesOrder>, Error, CreateSalesOrderRequest>({
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

  return useMutation<Response<SalesOrder>, Error, { id: string; data: UpdateSalesOrderRequest }>({
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

  return useMutation<Response<void>, Error, string>({
    mutationFn: (id: string) => client.deleteSalesOrder(id),
    onSuccess: (data, id) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.salesOrders.all() });
      queryClient.removeQueries({ queryKey: queryKeys.salesOrders.detail(id) });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

// Update Sales Order Status
export const useUpdateSalesOrderStatus = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<SalesOrder>, Error, { id: string; data: UpdateSalesOrderStatusRequest }>({
    mutationFn: ({ id, data }: { id: string; data: UpdateSalesOrderStatusRequest }) =>
      client.updateSalesOrderStatus(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.salesOrders.all() });
      queryClient.invalidateQueries({ queryKey: queryKeys.salesOrders.detail(variables.id) });
      queryClient.invalidateQueries({ queryKey: queryKeys.salesOrders.history(variables.id) });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

// Sales Order Items Hooks

// Add Sales Order Item
export const useAddSalesOrderItem = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<SalesOrderItem>, Error, { salesOrderId: string; data: CreateSalesOrderItemRequest }>({
    mutationFn: ({ salesOrderId, data }: { salesOrderId: string; data: CreateSalesOrderItemRequest }) =>
      client.addSalesOrderItem(salesOrderId, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.salesOrders.all() });
      queryClient.invalidateQueries({ queryKey: queryKeys.salesOrders.detail(variables.salesOrderId) });
      queryClient.invalidateQueries({ queryKey: queryKeys.salesOrders.items(variables.salesOrderId) });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

// Update Sales Order Item
export const useUpdateSalesOrderItem = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<
    Response<SalesOrderItem>,
    Error,
    { salesOrderId: string; itemId: string; data: UpdateSalesOrderItemRequest }
  >({
    mutationFn: ({ salesOrderId, itemId, data }) =>
      client.updateSalesOrderItem(salesOrderId, itemId, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.salesOrders.all() });
      queryClient.invalidateQueries({ queryKey: queryKeys.salesOrders.detail(variables.salesOrderId) });
      queryClient.invalidateQueries({ queryKey: queryKeys.salesOrders.items(variables.salesOrderId) });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

// Remove Sales Order Item
export const useRemoveSalesOrderItem = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<void>, Error, { salesOrderId: string; itemId: string }>({
    mutationFn: ({ salesOrderId, itemId }: { salesOrderId: string; itemId: string }) =>
      client.removeSalesOrderItem(salesOrderId, itemId),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.salesOrders.all() });
      queryClient.invalidateQueries({ queryKey: queryKeys.salesOrders.detail(variables.salesOrderId) });
      queryClient.invalidateQueries({ queryKey: queryKeys.salesOrders.items(variables.salesOrderId) });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

// Get Sales Order History
export const useSalesOrderHistory = (salesOrderId: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<Response<any[]>, Error>({
    queryKey: queryKeys.salesOrders.history(salesOrderId),
    queryFn: () => client.getSalesOrderHistory(salesOrderId),
    enabled: !!salesOrderId && options?.enabled !== false,
    ...options,
  });
};