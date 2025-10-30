import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";
import { useProdobitClient } from "../providers/ProdobitProvider";
import { queryKeys } from "../utils/query-keys";

/**
 * Hook to list all images for an asset
 */
export const useAssetImages = (assetId: string, options?: { enabled?: boolean }) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.assetImages.list(assetId),
    queryFn: () => client.listAssetImages(assetId),
    enabled: options?.enabled !== false && !!assetId,
  });
};

/**
 * Hook to upload an image for an asset
 */
export const useUploadAssetImage = () => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({
      assetId,
      file,
      metadata,
    }: {
      assetId: string;
      file: File | Blob;
      metadata?: {
        altText?: string;
        isPrimary?: boolean;
        displayOrder?: number;
      };
    }) => client.uploadAssetImage(assetId, file, metadata),
    onSuccess: (_, variables) => {
      // Invalidate asset images query
      queryClient.invalidateQueries({
        queryKey: queryKeys.assetImages.list(variables.assetId),
      });
      // Also invalidate the asset query in case it includes image data
      queryClient.invalidateQueries({
        queryKey: queryKeys.assets.detail(variables.assetId),
      });
    },
  });
};

/**
 * Hook to update an asset image
 */
export const useUpdateAssetImage = () => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({
      imageId,
      updates,
    }: {
      imageId: string;
      updates: {
        displayOrder?: number;
        isPrimary?: boolean;
        altText?: string;
      };
    }) => client.updateAssetImage(imageId, updates),
    onSuccess: () => {
      // Invalidate all asset images queries
      queryClient.invalidateQueries({
        queryKey: queryKeys.assetImages.all(),
      });
    },
  });
};

/**
 * Hook to delete an asset image
 */
export const useDeleteAssetImage = () => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (imageId: string) => client.deleteAssetImage(imageId),
    onSuccess: () => {
      // Invalidate all asset images queries
      queryClient.invalidateQueries({
        queryKey: queryKeys.assetImages.all(),
      });
      // Also invalidate assets queries
      queryClient.invalidateQueries({
        queryKey: queryKeys.assets.all(),
      });
    },
  });
};
