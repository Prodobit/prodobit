import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useProdobitClient } from '../providers/ProdobitProvider';
import { queryKeys } from '../utils/query-keys';
import type { QueryOptions, MutationOptions } from '../types';

export interface AssetStatusHistoryFilters {
  assetId?: string;
  status?: string;
  changeReason?: string;
  changedById?: string;
  fromDate?: string;
  toDate?: string;
}

export interface UpdateAssetStatusData {
  newStatus: string;
  changeReason?: string;
  reasonDetails?: string;
  relatedMaintenanceRecordId?: string;
  relatedIssueId?: string;
  relatedAssignmentId?: string;
}

// Asset Status History hooks
export const useAssetStatusHistory = (
  filters?: AssetStatusHistoryFilters,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.assetStatusHistory.list(filters),
    queryFn: () => client.getAssetStatusHistory(filters),
    ...options,
  });
};

export const useAssetStatusHistoryById = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.assetStatusHistory.detail(id),
    queryFn: () => client.getAssetStatusHistoryById(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useAssetStatusHistoryByAsset = (assetId: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.assetStatusHistory.byAsset(assetId),
    queryFn: () => client.getAssetStatusHistoryByAsset(assetId),
    enabled: !!assetId && options?.enabled !== false,
    ...options,
  });
};

export const useAssetLifecycleSummary = (assetId: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.assetStatusHistory.lifecycle(assetId),
    queryFn: () => client.getAssetLifecycleSummary(assetId),
    enabled: !!assetId && options?.enabled !== false,
    ...options,
  });
};

export const useAssetsByStatus = (status: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.assetStatusHistory.byStatus(status),
    queryFn: () => client.getAssetsByStatus(status),
    enabled: !!status && options?.enabled !== false,
    ...options,
  });
};

export const useUpdateAssetStatus = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({ assetId, data }: { assetId: string; data: UpdateAssetStatusData }) =>
      client.updateAssetStatus(assetId, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.assetStatusHistory.all() });
      queryClient.invalidateQueries({
        queryKey: queryKeys.assetStatusHistory.byAsset(variables.assetId)
      });
      queryClient.invalidateQueries({
        queryKey: queryKeys.assetStatusHistory.lifecycle(variables.assetId)
      });
      // Also invalidate assets as status changed
      queryClient.invalidateQueries({ queryKey: queryKeys.assets.all() });
      queryClient.invalidateQueries({
        queryKey: queryKeys.assets.detail(variables.assetId)
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};
