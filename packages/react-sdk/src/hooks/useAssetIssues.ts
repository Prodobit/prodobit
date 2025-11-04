import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useProdobitClient } from '../providers/ProdobitProvider';
import { queryKeys } from '../utils/query-keys';
import type { QueryOptions, MutationOptions } from '../types';
import type {
  CreateAssetIssueRequest,
  UpdateAssetIssueRequest,
  AssetIssue,
  AssetIssueQuery,
} from '@prodobit/types';

export const useAssetIssues = (
  filters?: AssetIssueQuery,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<AssetIssue[], Error>({
    queryKey: queryKeys.assetIssues.list(filters),
    queryFn: async () => {
      const response = await client.getAssetIssues(filters);
      return response.data || [];
    },
    ...options,
  });
};

export const useAssetIssue = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<AssetIssue, Error>({
    queryKey: queryKeys.assetIssues.detail(id),
    queryFn: async () => {
      const response = await client.getAssetIssue(id);
      return response.data as AssetIssue;
    },
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useAssetIssuesByAsset = (
  assetId: string,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<AssetIssue[], Error>({
    queryKey: queryKeys.assetIssues.byAsset(assetId),
    queryFn: () => client.getAssetIssuesByAsset(assetId),
    enabled: !!assetId && options?.enabled !== false,
    ...options,
  });
};

export const useCriticalAssetIssues = (options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<AssetIssue[], Error>({
    queryKey: queryKeys.assetIssues.critical(),
    queryFn: () => client.getCriticalAssetIssues(),
    ...options,
  });
};

export const useAssetIssueStatistics = (options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<any[], Error>({
    queryKey: queryKeys.assetIssues.statistics(),
    queryFn: () => client.getAssetIssueStatistics(),
    ...options,
  });
};

export const useCreateAssetIssue = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<AssetIssue, Error, CreateAssetIssueRequest>({
    mutationFn: async (data: CreateAssetIssueRequest) => {
      const response = await client.createAssetIssue(data);
      return response.data as AssetIssue;
    },
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.assetIssues.all() });
      if (data.assetId) {
        queryClient.invalidateQueries({
          queryKey: queryKeys.assetIssues.byAsset(data.assetId),
        });
      }
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useUpdateAssetIssue = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<
    AssetIssue,
    Error,
    { id: string; data: UpdateAssetIssueRequest }
  >({
    mutationFn: ({ id, data }: { id: string; data: UpdateAssetIssueRequest }) =>
      client.updateAssetIssue(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.assetIssues.all() });
      queryClient.invalidateQueries({
        queryKey: queryKeys.assetIssues.detail(variables.id),
      });
      if (data.assetId) {
        queryClient.invalidateQueries({
          queryKey: queryKeys.assetIssues.byAsset(data.assetId),
        });
      }
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useDeleteAssetIssue = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<void, Error, string>({
    mutationFn: (id: string) => client.deleteAssetIssue(id),
    onSuccess: (data, id) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.assetIssues.all() });
      queryClient.removeQueries({
        queryKey: queryKeys.assetIssues.detail(id),
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};
