import { useQuery, useMutation, useQueryClient } from "@tanstack/react-query";
import { useProdobitClient } from "../providers/ProdobitProvider";
import type {
  LocationType,
  CreateLocationTypeRequest,
  UpdateLocationTypeRequest,
  Response,
} from "@prodobit/types";

/**
 * Hook to get all location types
 */
export function useLocationTypes(params?: { category?: string }) {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ["locationTypes", params],
    queryFn: () => client.getLocationTypes(params),
  });
}

/**
 * Hook to get a single location type by ID
 */
export function useLocationType(id: string) {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ["locationTypes", id],
    queryFn: () => client.getLocationTypeById(id),
    enabled: !!id,
  });
}

/**
 * Hook to create a new location type
 */
export function useCreateLocationType() {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (data: CreateLocationTypeRequest) =>
      client.createLocationType(data),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["locationTypes"] });
    },
  });
}

/**
 * Hook to update an existing location type
 */
export function useUpdateLocationType() {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({ id, data }: { id: string; data: UpdateLocationTypeRequest }) =>
      client.updateLocationType(id, data),
    onSuccess: (response: Response<LocationType>) => {
      queryClient.invalidateQueries({ queryKey: ["locationTypes"] });
      if (response.data?.id) {
        queryClient.invalidateQueries({
          queryKey: ["locationTypes", response.data.id],
        });
      }
    },
  });
}

/**
 * Hook to delete a location type
 */
export function useDeleteLocationType() {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (id: string) => client.deleteLocationType(id),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["locationTypes"] });
    },
  });
}
