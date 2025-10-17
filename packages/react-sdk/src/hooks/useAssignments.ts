import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query';
import type { AssetAssignment, AssetAssignmentQuery, CreateAssetAssignmentRequest, UpdateAssetAssignmentRequest, Response } from '@prodobit/types';
import { useProdobitClient } from '../providers/ProdobitProvider';

export interface QueryOptions {
  enabled?: boolean;
  refetchInterval?: number;
  refetchOnWindowFocus?: boolean;
  staleTime?: number;
  cacheTime?: number;
}

export interface MutationOptions {
  onSuccess?: (data: Response<AssetAssignment>) => void;
  onError?: (error: Error) => void;
}

/**
 * Hook to fetch all assignments with optional filters
 */
export const useAssignments = (
  query?: AssetAssignmentQuery,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<Response<AssetAssignment[]>, Error>({
    queryKey: ['assignments', query],
    queryFn: () => client.getAssignments(query),
    ...options,
  });
};

/**
 * Hook to fetch a single assignment by ID
 */
export const useAssignment = (
  id: string,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<Response<AssetAssignment>, Error>({
    queryKey: ['assignments', id],
    queryFn: () => client.getAssignment(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

/**
 * Hook to fetch assignment history for a specific asset
 */
export const useAssetAssignmentHistory = (
  assetId: string,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<Response<AssetAssignment[]>, Error>({
    queryKey: ['assignments', 'asset', assetId, 'history'],
    queryFn: () => client.getAssetAssignmentHistory(assetId),
    enabled: !!assetId && options?.enabled !== false,
    ...options,
  });
};

/**
 * Hook to fetch active assignments for a user/department/location
 */
export const useActiveAssignments = (
  assignedTo: string,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<Response<AssetAssignment[]>, Error>({
    queryKey: ['assignments', 'active', assignedTo],
    queryFn: () => client.getActiveAssignments(assignedTo),
    enabled: !!assignedTo && options?.enabled !== false,
    ...options,
  });
};

/**
 * Hook to create a new assignment
 */
export const useCreateAssignment = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<AssetAssignment>, Error, CreateAssetAssignmentRequest>({
    mutationFn: (data: CreateAssetAssignmentRequest) => client.createAssignment(data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ['assignments'] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

/**
 * Hook to return an assignment
 */
export const useReturnAssignment = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<AssetAssignment>, Error, { id: string; returnCondition?: "good" | "damaged" | "needs_repair" }>({
    mutationFn: ({ id, returnCondition }) => client.returnAssignment(id, returnCondition),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: ['assignments'] });
      queryClient.invalidateQueries({ queryKey: ['assignments', variables.id] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

/**
 * Hook to transfer an assignment
 */
export const useTransferAssignment = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<AssetAssignment>, Error, { id: string; newAssignedTo: string; newAssignedType: "user" | "department" | "location" }>({
    mutationFn: ({ id, newAssignedTo, newAssignedType }) => client.transferAssignment(id, newAssignedTo, newAssignedType),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: ['assignments'] });
      queryClient.invalidateQueries({ queryKey: ['assignments', variables.id] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

/**
 * Hook to update an existing assignment
 */
export const useUpdateAssignment = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<AssetAssignment>, Error, { id: string; data: UpdateAssetAssignmentRequest }>({
    mutationFn: ({ id, data }) => client.updateAssignment(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: ['assignments'] });
      queryClient.invalidateQueries({ queryKey: ['assignments', variables.id] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

/**
 * Hook to delete an assignment
 */
export const useDeleteAssignment = (options?: Omit<MutationOptions, 'onSuccess'> & { onSuccess?: () => void }) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<void>, Error, string>({
    mutationFn: (id: string) => client.deleteAssignment(id),
    onSuccess: (_data, id) => {
      queryClient.invalidateQueries({ queryKey: ['assignments'] });
      queryClient.invalidateQueries({ queryKey: ['assignments', id] });
      options?.onSuccess?.();
    },
    onError: options?.onError,
  });
};
