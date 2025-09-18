import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useProdobitClient } from '../providers/ProdobitProvider';
import { queryKeys } from '../utils/query-keys';
import type { QueryOptions, MutationOptions, LocationFilters } from '../types';
import type { Location, CreateLocationRequest, UpdateLocationRequest, Response, PaginatedResponse } from '@prodobit/types';

export const useLocations = (
  filters?: LocationFilters,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<PaginatedResponse<Location[]>, Error>({
    queryKey: queryKeys.locations.list(filters),
    queryFn: () => client.getLocations(filters),
    ...options,
  });
};

export const useLocation = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<Response<Location>, Error>({
    queryKey: queryKeys.locations.detail(id),
    queryFn: () => client.getLocation(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useCreateLocation = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<Location>, Error, CreateLocationRequest>({
    mutationFn: (data: CreateLocationRequest) => client.createLocation(data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.locations.all() });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useUpdateLocation = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<Location>, Error, { id: string; data: UpdateLocationRequest }>({
    mutationFn: ({ id, data }: { id: string; data: UpdateLocationRequest }) => 
      client.updateLocation(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.locations.all() });
      queryClient.invalidateQueries({ queryKey: queryKeys.locations.detail(variables.id) });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useDeleteLocation = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<void>, Error, string>({
    mutationFn: (id: string) => client.deleteLocation(id),
    onSuccess: (data, id) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.locations.all() });
      queryClient.removeQueries({ queryKey: queryKeys.locations.detail(id) });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};