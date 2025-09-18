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
    queryFn: () => client.getAssets(filters),
    ...options,
  });
};

export const useAsset = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<Asset, Error>({
    queryKey: queryKeys.assets.detail(id),
    queryFn: () => client.getAsset(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useCreateAsset = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Asset, Error, CreateAssetRequest>({
    mutationFn: (data: CreateAssetRequest) => client.createAsset(data),
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
    mutationFn: ({ id, data }: { id: string; data: UpdateAssetRequest }) => 
      client.updateAsset(id, data),
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