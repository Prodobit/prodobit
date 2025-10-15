import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query';
import type {
  ItemImage,
  UploadItemImageRequest,
  UploadItemImageResult,
  StorageStats,
  Response,
} from '@prodobit/types';
import { useProdobitClient } from '../providers/ProdobitProvider';

export interface QueryOptions {
  enabled?: boolean;
  refetchInterval?: number;
  refetchOnWindowFocus?: boolean;
  staleTime?: number;
  cacheTime?: number;
}

export interface MutationOptions<T = any> {
  onSuccess?: (data: T) => void;
  onError?: (error: Error) => void;
}

/**
 * Hook to fetch all images for an item
 */
export const useItemImages = (
  itemId: string,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<Response<ItemImage[]>, Error>({
    queryKey: ['itemImages', itemId],
    queryFn: () => client.listItemImages(itemId),
    enabled: !!itemId && options?.enabled !== false,
    ...options,
  });
};

/**
 * Hook to fetch a single item image by ID
 */
export const useItemImage = (
  imageId: string,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<Response<ItemImage>, Error>({
    queryKey: ['itemImages', imageId],
    queryFn: () => client.getItemImage(imageId),
    enabled: !!imageId && options?.enabled !== false,
    ...options,
  });
};

/**
 * Hook to upload an image for an item
 */
export const useUploadItemImage = (
  itemId: string,
  options?: MutationOptions<Response<UploadItemImageResult>>
) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<
    Response<UploadItemImageResult>,
    Error,
    { file: File | Blob; metadata?: Partial<UploadItemImageRequest> }
  >({
    mutationFn: ({ file, metadata }) => client.uploadItemImage(itemId, file, metadata),
    onSuccess: (data) => {
      // Invalidate item images query
      queryClient.invalidateQueries({ queryKey: ['itemImages', itemId] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

/**
 * Hook to delete an item image
 */
export const useDeleteItemImage = (
  itemId?: string,
  options?: MutationOptions<Response<void>>
) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<void>, Error, string>({
    mutationFn: (imageId: string) => client.deleteItemImage(imageId),
    onSuccess: (data, imageId) => {
      // Invalidate queries
      if (itemId) {
        queryClient.invalidateQueries({ queryKey: ['itemImages', itemId] });
      }
      queryClient.invalidateQueries({ queryKey: ['itemImages', imageId] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

/**
 * Hook to set an image as primary
 */
export const useSetPrimaryImage = (
  itemId: string,
  options?: MutationOptions<Response<ItemImage>>
) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<ItemImage>, Error, string>({
    mutationFn: (imageId: string) => client.setPrimaryImage(imageId, itemId),
    onSuccess: (data) => {
      // Invalidate item images query
      queryClient.invalidateQueries({ queryKey: ['itemImages', itemId] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

/**
 * Hook to reorder images for an item
 */
export const useReorderImages = (
  itemId: string,
  options?: MutationOptions<Response<ItemImage[]>>
) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<ItemImage[]>, Error, string[]>({
    mutationFn: (imageIds: string[]) => client.reorderImages(itemId, imageIds),
    onSuccess: (data) => {
      // Invalidate item images query
      queryClient.invalidateQueries({ queryKey: ['itemImages', itemId] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

/**
 * Hook to update alt text for an image
 */
export const useUpdateAltText = (
  itemId?: string,
  options?: MutationOptions<Response<ItemImage>>
) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<ItemImage>, Error, { imageId: string; altText: string }>({
    mutationFn: ({ imageId, altText }) => client.updateAltText(imageId, altText),
    onSuccess: (data, variables) => {
      // Invalidate queries
      if (itemId) {
        queryClient.invalidateQueries({ queryKey: ['itemImages', itemId] });
      }
      queryClient.invalidateQueries({ queryKey: ['itemImages', variables.imageId] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

/**
 * Hook to fetch storage statistics
 */
export const useStorageStats = (options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<Response<StorageStats>, Error>({
    queryKey: ['storageStats'],
    queryFn: () => client.getStorageStats(),
    ...options,
  });
};
