import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query';
import type {
  Department,
  DepartmentMember,
  DepartmentQuery,
  DepartmentMemberQuery,
  CreateDepartmentRequest,
  UpdateDepartmentRequest,
  CreateDepartmentMemberRequest,
  UpdateDepartmentMemberRequest,
  Response
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
  onSuccess?: (data: Response<T>) => void;
  onError?: (error: Error) => void;
}

/**
 * Hook to fetch all departments with optional filters
 */
export const useDepartments = (
  query?: DepartmentQuery,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<Response<Department[]>, Error>({
    queryKey: ['departments', query],
    queryFn: () => client.getDepartments(query),
    ...options,
  });
};

/**
 * Hook to fetch a single department by ID
 */
export const useDepartment = (
  id: string,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<Response<Department>, Error>({
    queryKey: ['departments', id],
    queryFn: () => client.getDepartment(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

/**
 * Hook to fetch department hierarchy
 */
export const useDepartmentHierarchy = (
  id: string,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<Response<Department[]>, Error>({
    queryKey: ['departments', id, 'hierarchy'],
    queryFn: () => client.getDepartmentHierarchy(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

/**
 * Hook to create a new department
 */
export const useCreateDepartment = (options?: MutationOptions<Department>) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<Department>, Error, CreateDepartmentRequest>({
    mutationFn: (data: CreateDepartmentRequest) => client.createDepartment(data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ['departments'] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

/**
 * Hook to update an existing department
 */
export const useUpdateDepartment = (options?: MutationOptions<Department>) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<Department>, Error, { id: string; data: UpdateDepartmentRequest }>({
    mutationFn: ({ id, data }) => client.updateDepartment(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: ['departments'] });
      queryClient.invalidateQueries({ queryKey: ['departments', variables.id] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

/**
 * Hook to delete a department
 */
export const useDeleteDepartment = (options?: Omit<MutationOptions<Department>, 'onSuccess'> & { onSuccess?: () => void }) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<void>, Error, string>({
    mutationFn: (id: string) => client.deleteDepartment(id),
    onSuccess: (_data, id) => {
      queryClient.invalidateQueries({ queryKey: ['departments'] });
      queryClient.invalidateQueries({ queryKey: ['departments', id] });
      options?.onSuccess?.();
    },
    onError: options?.onError,
  });
};

// Department Members Hooks

/**
 * Hook to fetch members of a department
 */
export const useDepartmentMembers = (
  departmentId: string,
  query?: DepartmentMemberQuery,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<Response<DepartmentMember[]>, Error>({
    queryKey: ['departments', departmentId, 'members', query],
    queryFn: () => client.getDepartmentMembers(departmentId, query),
    enabled: !!departmentId && options?.enabled !== false,
    ...options,
  });
};

/**
 * Hook to add a member to a department
 */
export const useAddDepartmentMember = (options?: MutationOptions<DepartmentMember>) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<DepartmentMember>, Error, { departmentId: string; data: Omit<CreateDepartmentMemberRequest, 'departmentId'> }>({
    mutationFn: ({ departmentId, data }) => client.addDepartmentMember(departmentId, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: ['departments', variables.departmentId, 'members'] });
      queryClient.invalidateQueries({ queryKey: ['departments', variables.departmentId] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

/**
 * Hook to update a department member
 */
export const useUpdateDepartmentMember = (options?: MutationOptions<DepartmentMember>) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<DepartmentMember>, Error, { memberId: string; data: UpdateDepartmentMemberRequest }>({
    mutationFn: ({ memberId, data }) => client.updateDepartmentMember(memberId, data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ['departments'] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

/**
 * Hook to remove a member from a department
 */
export const useRemoveDepartmentMember = (options?: Omit<MutationOptions<DepartmentMember>, 'onSuccess'> & { onSuccess?: () => void }) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Response<void>, Error, string>({
    mutationFn: (memberId: string) => client.removeDepartmentMember(memberId),
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['departments'] });
      options?.onSuccess?.();
    },
    onError: options?.onError,
  });
};
