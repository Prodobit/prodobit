import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useProdobitClient } from '../providers/ProdobitProvider';
import { queryKeys } from '../utils/query-keys';
import type { QueryOptions, MutationOptions, AssetFilters } from '../types';
import type { CreateAssetRequest, UpdateAssetRequest, Asset } from '@prodobit/types';

export const useAssets = (
  filters?: AssetFilters,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<Asset[], Error>({
    queryKey: queryKeys.assets.list(filters),
    queryFn: async () => {
      const response = await client.getAssets(filters);
      return response.data || [];
    },
    ...options,
  });
};

export const useAsset = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<Asset, Error>({
    queryKey: queryKeys.assets.detail(id),
    queryFn: async () => {
      const response = await client.getAsset(id);
      return response.data as Asset;
    },
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useCreateAsset = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Asset, Error, CreateAssetRequest>({
    mutationFn: async (data: CreateAssetRequest) => {
      const response = await client.createAsset(data);
      return response.data as Asset;
    },
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.assets.all() });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useUpdateAsset = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Asset, Error, { id: string; data: UpdateAssetRequest }>({
    mutationFn: async ({ id, data }: { id: string; data: UpdateAssetRequest }) => {
      const response = await client.updateAsset(id, data);
      return response.data as Asset;
    },
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.assets.all() });
      queryClient.invalidateQueries({ queryKey: queryKeys.assets.detail(variables.id) });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useDeleteAsset = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<void, Error, string>({
    mutationFn: (id: string) => client.deleteAsset(id),
    onSuccess: (data, id) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.assets.all() });
      queryClient.removeQueries({ queryKey: queryKeys.assets.detail(id) });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

// ==================== NESTED RESOURCE HOOKS ====================

/**
 * Hook to get all issues for a specific asset
 */
export const useAssetIssuesNested = (assetId: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ['assets', assetId, 'issues'],
    queryFn: async () => {
      const response = await client.getAssetIssuesNested(assetId);
      return response.data || [];
    },
    enabled: !!assetId && options?.enabled !== false,
    ...options,
  });
};

/**
 * Hook to get all maintenance plans for a specific asset
 */
export const useAssetMaintenancePlansNested = (assetId: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ['assets', assetId, 'maintenance-plans'],
    queryFn: () => client.getAssetMaintenancePlansNested(assetId),
    enabled: !!assetId && options?.enabled !== false,
    ...options,
  });
};

/**
 * Hook to get all maintenance records for a specific asset
 */
export const useAssetMaintenanceRecordsNested = (assetId: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ['assets', assetId, 'maintenance-records'],
    queryFn: () => client.getAssetMaintenanceRecordsNested(assetId),
    enabled: !!assetId && options?.enabled !== false,
    ...options,
  });
};

/**
 * Hook to get all calibration plans for a specific asset
 */
export const useAssetCalibrationPlansNested = (assetId: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ['assets', assetId, 'calibration-plans'],
    queryFn: () => client.getAssetCalibrationPlansNested(assetId),
    enabled: !!assetId && options?.enabled !== false,
    ...options,
  });
};

/**
 * Hook to get all calibration records for a specific asset
 */
export const useAssetCalibrationRecordsNested = (assetId: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ['assets', assetId, 'calibration-records'],
    queryFn: () => client.getAssetCalibrationRecordsNested(assetId),
    enabled: !!assetId && options?.enabled !== false,
    ...options,
  });
};