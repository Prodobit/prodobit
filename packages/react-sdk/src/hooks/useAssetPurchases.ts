import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query';
import type { AssetPurchase, AssetPurchaseQuery, CreateAssetPurchaseRequest, UpdateAssetPurchaseRequest, Response } from '@prodobit/types';
import { useProdobitClient } from '../providers/ProdobitProvider';

export interface QueryOptions {
  enabled?: boolean;
  refetchInterval?: number;
  refetchOnWindowFocus?: boolean;
  staleTime?: number;
  cacheTime?: number;
}

export interface MutationOptions {
  onSuccess?: (data: Response<AssetPurchase>) => void;
  onError?: (error: Error) => void;
}

/**
 * Hook to fetch all asset purchases with optional filters
 */
export const useAssetPurchases = (
  query?: AssetPurchaseQuery,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<Response<AssetPurchase[]>, Error>({
    queryKey: ['asset-purchases', query],
    queryFn: () => client.getAssetPurchases(query),
    ...options,
  });
};

/**
 * Hook to fetch a single asset purchase by ID
 */
export const useAssetPurchase = (
  id: string,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<Response<AssetPurchase>, Error>({
    queryKey: ['asset-purchases', id],
    queryFn: () => client.getAssetPurchase(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

/**
 * Hook to fetch purchase history for a specific asset
 */
export const useAssetPurchasesByAsset = (
  assetId: string,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<Response<AssetPurchase[]>, Error>({
    queryKey: ['asset-purchases', 'asset', assetId],
    queryFn: () => client.getAssetPurchasesByAsset(assetId),
    enabled: !!assetId && options?.enabled !== false,
    ...options,
  });
};

/**
 * Hook to create a new asset purchase
 */
export const useCreateAssetPurchase = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<AssetPurchase>, Error, CreateAssetPurchaseRequest>({
    mutationFn: (data: CreateAssetPurchaseRequest) => client.createAssetPurchase(data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ['asset-purchases'] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

/**
 * Hook to update an existing asset purchase
 */
export const useUpdateAssetPurchase = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<AssetPurchase>, Error, { id: string; data: UpdateAssetPurchaseRequest }>({
    mutationFn: ({ id, data }) => client.updateAssetPurchase(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: ['asset-purchases'] });
      queryClient.invalidateQueries({ queryKey: ['asset-purchases', variables.id] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

/**
 * Hook to delete an asset purchase
 */
export const useDeleteAssetPurchase = (options?: Omit<MutationOptions, 'onSuccess'> & { onSuccess?: () => void }) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<void>, Error, string>({
    mutationFn: (id: string) => client.deleteAssetPurchase(id),
    onSuccess: (_data, id) => {
      queryClient.invalidateQueries({ queryKey: ['asset-purchases'] });
      queryClient.invalidateQueries({ queryKey: ['asset-purchases', id] });
      options?.onSuccess?.();
    },
    onError: options?.onError,
  });
};
