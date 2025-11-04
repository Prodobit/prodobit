import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useProdobitClient } from '../providers/ProdobitProvider';
import { queryKeys } from '../utils/query-keys';
import type { QueryOptions, MutationOptions } from '../types';
import type {
  CreateMaintenancePlanRequest,
  UpdateMaintenancePlanRequest,
  MaintenancePlan,
  MaintenancePlanQuery,
  CreateMaintenanceRecordRequest,
  UpdateMaintenanceRecordRequest,
  MaintenanceRecord,
  MaintenanceRecordQuery,
} from '@prodobit/types';

// Maintenance Plans
export const useMaintenancePlans = (
  filters?: MaintenancePlanQuery,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<MaintenancePlan[], Error>({
    queryKey: queryKeys.maintenancePlans.list(filters),
    queryFn: async () => {
      const response = await client.getMaintenancePlans(filters);
      return response.data || [];
    },
    ...options,
  });
};

export const useMaintenancePlan = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<MaintenancePlan, Error>({
    queryKey: queryKeys.maintenancePlans.detail(id),
    queryFn: async () => {
      const response = await client.getMaintenancePlan(id);
      return response.data as MaintenancePlan;
    },
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useUpcomingMaintenance = (
  days: number = 30,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<MaintenancePlan[], Error>({
    queryKey: queryKeys.maintenancePlans.upcoming(days),
    queryFn: async () => {
      const response = await client.getUpcomingMaintenance(days);
      return response.data || [];
    },
    ...options,
  });
};

export const useCreateMaintenancePlan = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<MaintenancePlan, Error, CreateMaintenancePlanRequest>({
    mutationFn: async (data: CreateMaintenancePlanRequest) => {
      const response = await client.createMaintenancePlan(data);
      return response.data as MaintenancePlan;
    },
    onSuccess: (data) => {
      queryClient.invalidateQueries({
        queryKey: queryKeys.maintenancePlans.all(),
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useUpdateMaintenancePlan = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<
    MaintenancePlan,
    Error,
    { id: string; data: UpdateMaintenancePlanRequest }
  >({
    mutationFn: async ({
      id,
      data,
    }: {
      id: string;
      data: UpdateMaintenancePlanRequest;
    }) => {
      const response = await client.updateMaintenancePlan(id, data);
      return response.data as MaintenancePlan;
    },
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({
        queryKey: queryKeys.maintenancePlans.all(),
      });
      queryClient.invalidateQueries({
        queryKey: queryKeys.maintenancePlans.detail(variables.id),
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useDeleteMaintenancePlan = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<void, Error, string>({
    mutationFn: (id: string) => client.deleteMaintenancePlan(id),
    onSuccess: (data, id) => {
      queryClient.invalidateQueries({
        queryKey: queryKeys.maintenancePlans.all(),
      });
      queryClient.removeQueries({
        queryKey: queryKeys.maintenancePlans.detail(id),
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

// Maintenance Records
export const useMaintenanceRecords = (
  filters?: MaintenanceRecordQuery,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<MaintenanceRecord[], Error>({
    queryKey: queryKeys.maintenanceRecords.list(filters),
    queryFn: async () => {
      const response = await client.getMaintenanceRecords(filters);
      return response.data || [];
    },
    ...options,
  });
};

export const useMaintenanceRecord = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<MaintenanceRecord, Error>({
    queryKey: queryKeys.maintenanceRecords.detail(id),
    queryFn: async () => {
      const response = await client.getMaintenanceRecord(id);
      return response.data as MaintenanceRecord;
    },
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useCreateMaintenanceRecord = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<MaintenanceRecord, Error, CreateMaintenanceRecordRequest>({
    mutationFn: async (data: CreateMaintenanceRecordRequest) => {
      const response = await client.createMaintenanceRecord(data);
      return response.data as MaintenanceRecord;
    },
    onSuccess: (data) => {
      queryClient.invalidateQueries({
        queryKey: queryKeys.maintenanceRecords.all(),
      });
      queryClient.invalidateQueries({
        queryKey: queryKeys.maintenancePlans.detail(data.maintenancePlanId),
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useUpdateMaintenanceRecord = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<
    MaintenanceRecord,
    Error,
    { id: string; data: UpdateMaintenanceRecordRequest }
  >({
    mutationFn: async ({
      id,
      data,
    }: {
      id: string;
      data: UpdateMaintenanceRecordRequest;
    }) => {
      const response = await client.updateMaintenanceRecord(id, data);
      return response.data as MaintenanceRecord;
    },
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({
        queryKey: queryKeys.maintenanceRecords.all(),
      });
      queryClient.invalidateQueries({
        queryKey: queryKeys.maintenanceRecords.detail(variables.id),
      });
      queryClient.invalidateQueries({
        queryKey: queryKeys.maintenancePlans.detail(data.maintenancePlanId),
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};
