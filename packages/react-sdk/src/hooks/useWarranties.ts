import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query';
import type { AssetWarranty, AssetWarrantyQuery, CreateAssetWarrantyRequest, UpdateAssetWarrantyRequest, Response } from '@prodobit/types';
import { useProdobitClient } from '../providers/ProdobitProvider';

export interface QueryOptions {
  enabled?: boolean;
  refetchInterval?: number;
  refetchOnWindowFocus?: boolean;
  staleTime?: number;
  cacheTime?: number;
}

export interface MutationOptions {
  onSuccess?: (data: Response<AssetWarranty>) => void;
  onError?: (error: Error) => void;
}

/**
 * Hook to fetch all warranties with optional filters
 */
export const useWarranties = (
  query?: AssetWarrantyQuery,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<Response<AssetWarranty[]>, Error>({
    queryKey: ['warranties', query],
    queryFn: () => client.getWarranties(query),
    ...options,
  });
};

/**
 * Hook to fetch a single warranty by ID
 */
export const useWarranty = (
  id: string,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<Response<AssetWarranty>, Error>({
    queryKey: ['warranties', id],
    queryFn: () => client.getWarranty(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

/**
 * Hook to fetch warranties for a specific asset
 */
export const useAssetWarranties = (
  assetId: string,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<Response<AssetWarranty[]>, Error>({
    queryKey: ['warranties', 'asset', assetId],
    queryFn: () => client.getAssetWarranties(assetId),
    enabled: !!assetId && options?.enabled !== false,
    ...options,
  });
};

/**
 * Hook to fetch active warranty for a specific asset
 */
export const useActiveAssetWarranty = (
  assetId: string,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<Response<AssetWarranty | null>, Error>({
    queryKey: ['warranties', 'asset', assetId, 'active'],
    queryFn: () => client.getActiveAssetWarranty(assetId),
    enabled: !!assetId && options?.enabled !== false,
    ...options,
  });
};

/**
 * Hook to fetch expiring warranties
 */
export const useExpiringWarranties = (
  days: number = 30,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<Response<AssetWarranty[]>, Error>({
    queryKey: ['warranties', 'expiring', days],
    queryFn: () => client.getExpiringWarranties(days),
    ...options,
  });
};

/**
 * Hook to create a new warranty
 */
export const useCreateWarranty = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<AssetWarranty>, Error, CreateAssetWarrantyRequest>({
    mutationFn: (data: CreateAssetWarrantyRequest) => client.createWarranty(data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ['warranties'] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

/**
 * Hook to update an existing warranty
 */
export const useUpdateWarranty = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<AssetWarranty>, Error, { id: string; data: UpdateAssetWarrantyRequest }>({
    mutationFn: ({ id, data }) => client.updateWarranty(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: ['warranties'] });
      queryClient.invalidateQueries({ queryKey: ['warranties', variables.id] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

/**
 * Hook to delete a warranty
 */
export const useDeleteWarranty = (options?: Omit<MutationOptions, 'onSuccess'> & { onSuccess?: () => void }) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<void>, Error, string>({
    mutationFn: (id: string) => client.deleteWarranty(id),
    onSuccess: (_data, id) => {
      queryClient.invalidateQueries({ queryKey: ['warranties'] });
      queryClient.invalidateQueries({ queryKey: ['warranties', id] });
      options?.onSuccess?.();
    },
    onError: options?.onError,
  });
};
