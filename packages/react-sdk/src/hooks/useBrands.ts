import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query';
import type { Brand, BrandQuery, CreateBrandRequest, UpdateBrandRequest, Response } from '@prodobit/types';
import { useProdobitClient } from '../providers/ProdobitProvider';

export interface QueryOptions {
  enabled?: boolean;
  refetchInterval?: number;
  refetchOnWindowFocus?: boolean;
  staleTime?: number;
  cacheTime?: number;
}

export interface MutationOptions {
  onSuccess?: (data: Response<Brand>) => void;
  onError?: (error: Error) => void;
}

/**
 * Hook to fetch all brands with optional filters
 */
export const useBrands = (
  filters?: Partial<BrandQuery>,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<Response<Brand[]>, Error>({
    queryKey: ['brands', filters],
    queryFn: () => client.getBrands(filters),
    ...options,
  });
};

/**
 * Hook to fetch a single brand by ID
 */
export const useBrand = (
  id: string,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<Response<Brand>, Error>({
    queryKey: ['brands', id],
    queryFn: () => client.getBrand(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

/**
 * Hook to create a new brand
 */
export const useCreateBrand = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<Brand>, Error, CreateBrandRequest>({
    mutationFn: (data: CreateBrandRequest) => client.createBrand(data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ['brands'] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

/**
 * Hook to update an existing brand
 */
export const useUpdateBrand = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<Brand>, Error, { id: string; data: UpdateBrandRequest }>({
    mutationFn: ({ id, data }) => client.updateBrand(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: ['brands'] });
      queryClient.invalidateQueries({ queryKey: ['brands', variables.id] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

/**
 * Hook to delete a brand
 */
export const useDeleteBrand = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<Brand>, Error, string>({
    mutationFn: (id: string) => client.deleteBrand(id),
    onSuccess: (data, id) => {
      queryClient.invalidateQueries({ queryKey: ['brands'] });
      queryClient.invalidateQueries({ queryKey: ['brands', id] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};
