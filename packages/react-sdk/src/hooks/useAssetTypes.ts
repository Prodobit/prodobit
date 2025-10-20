import { useQuery, useMutation, useQueryClient } from "@tanstack/react-query";
import { useProdobitClient } from "../providers/ProdobitProvider";
import type {
  AssetType,
  CreateAssetTypeRequest,
  UpdateAssetTypeRequest,
  Response,
} from "@prodobit/types";

/**
 * Hook to get all asset types
 */
export function useAssetTypes(params?: { category?: string }) {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ["assetTypes", params],
    queryFn: () => client.getAssetTypes(params),
  });
}

/**
 * Hook to get a single asset type by ID
 */
export function useAssetType(id: string) {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ["assetTypes", id],
    queryFn: () => client.getAssetTypeById(id),
    enabled: !!id,
  });
}

/**
 * Hook to create a new asset type
 */
export function useCreateAssetType() {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (data: CreateAssetTypeRequest) =>
      client.createAssetType(data),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["assetTypes"] });
    },
  });
}

/**
 * Hook to update an existing asset type
 */
export function useUpdateAssetType() {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({ id, data }: { id: string; data: UpdateAssetTypeRequest }) =>
      client.updateAssetType(id, data),
    onSuccess: (response: Response<AssetType>) => {
      queryClient.invalidateQueries({ queryKey: ["assetTypes"] });
      if (response.data?.id) {
        queryClient.invalidateQueries({
          queryKey: ["assetTypes", response.data.id],
        });
      }
    },
  });
}

/**
 * Hook to delete an asset type
 */
export function useDeleteAssetType() {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (id: string) => client.deleteAssetType(id),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["assetTypes"] });
    },
  });
}
