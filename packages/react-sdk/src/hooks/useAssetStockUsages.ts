import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useProdobitClient } from '../providers/ProdobitProvider';
import { queryKeys } from '../utils/query-keys';
import type { QueryOptions, MutationOptions } from '../types';

export type UsageType = 'maintenance' | 'repair' | 'calibration' | 'replacement' | 'routine';

export interface AssetStockUsageFilters {
  assetId?: string;
  itemId?: string;
  usageType?: UsageType;
  maintenanceRecordId?: string;
  calibrationRecordId?: string;
  usedById?: string;
  fromDate?: string;
  toDate?: string;
}

export interface CreateAssetStockUsageData {
  assetId: string;
  itemId: string;
  usageType: UsageType;
  quantity: number;
  unit?: string;
  usedAt?: string;
  usedById?: string;
  unitCost?: number;
  totalCost?: number;
  currency?: string;
  notes?: string;
  lotNumber?: string;
  serialNumber?: string;
  maintenanceRecordId?: string;
  calibrationRecordId?: string;
  stockTransactionId?: string;
}

export interface UpdateAssetStockUsageData {
  usageType?: UsageType;
  quantity?: number;
  unit?: string;
  usedAt?: string;
  usedById?: string;
  unitCost?: number;
  totalCost?: number;
  currency?: string;
  notes?: string;
  lotNumber?: string;
  serialNumber?: string;
  maintenanceRecordId?: string;
  calibrationRecordId?: string;
  stockTransactionId?: string;
}

export const useAssetStockUsages = (
  filters?: AssetStockUsageFilters,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.assetStockUsages.list(filters),
    queryFn: () => client.getAssetStockUsages(filters),
    ...options,
  });
};

export const useAssetStockUsage = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.assetStockUsages.detail(id),
    queryFn: () => client.getAssetStockUsage(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useAssetStockUsagesByAsset = (assetId: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.assetStockUsages.byAsset(assetId),
    queryFn: () => client.getAssetStockUsages({ assetId }),
    enabled: !!assetId && options?.enabled !== false,
    ...options,
  });
};

export const useAssetStockUsagesByItem = (itemId: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.assetStockUsages.byItem(itemId),
    queryFn: () => client.getAssetStockUsages({ itemId }),
    enabled: !!itemId && options?.enabled !== false,
    ...options,
  });
};

export const useAssetUsageStats = (assetId: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.assetStockUsages.stats(assetId),
    queryFn: () => client.getAssetUsageStats(assetId),
    enabled: !!assetId && options?.enabled !== false,
    ...options,
  });
};

export const useCreateAssetStockUsage = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (data: CreateAssetStockUsageData) => client.createAssetStockUsage(data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.assetStockUsages.all() });
      if (variables.assetId) {
        queryClient.invalidateQueries({
          queryKey: queryKeys.assetStockUsages.byAsset(variables.assetId)
        });
        queryClient.invalidateQueries({
          queryKey: queryKeys.assetStockUsages.stats(variables.assetId)
        });
      }
      if (variables.itemId) {
        queryClient.invalidateQueries({
          queryKey: queryKeys.assetStockUsages.byItem(variables.itemId)
        });
      }
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useBulkCreateAssetStockUsages = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (usages: CreateAssetStockUsageData[]) => client.bulkCreateAssetStockUsages(usages),
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.assetStockUsages.all() });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useUpdateAssetStockUsage = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({ id, data }: { id: string; data: UpdateAssetStockUsageData }) =>
      client.updateAssetStockUsage(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.assetStockUsages.all() });
      queryClient.setQueryData(queryKeys.assetStockUsages.detail(variables.id), data);
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useDeleteAssetStockUsage = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (id: string) => client.deleteAssetStockUsage(id),
    onSuccess: (data, id) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.assetStockUsages.all() });
      queryClient.removeQueries({ queryKey: queryKeys.assetStockUsages.detail(id) });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

// Spare Parts hooks
export const useSpareParts = (options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.spareParts.list(),
    queryFn: () => client.getSpareParts(),
    ...options,
  });
};

export const useCreateSparePart = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (data: any) => client.createSparePart(data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.spareParts.all() });
      queryClient.invalidateQueries({ queryKey: queryKeys.items.all() });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

// Consumables hooks
export const useConsumables = (options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.consumables.list(),
    queryFn: () => client.getConsumables(),
    ...options,
  });
};

export const useCreateConsumable = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (data: any) => client.createConsumable(data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.consumables.all() });
      queryClient.invalidateQueries({ queryKey: queryKeys.items.all() });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};
