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
  CreateCorrectiveMaintenanceRecordRequest,
  CreatePreventiveMaintenanceRecordRequest,
  UpdateMaintenanceRecordRequest,
  MaintenanceRecord,
  MaintenanceRecordQuery,
  MaintenanceType,
  MaintenanceRecordSource,
} from '@prodobit/types';

// ==========================================
// MAINTENANCE PLANS (Sadece Preventive)
// ==========================================

/**
 * Get all maintenance plans
 * Not: Planlar sadece preventive bakım için oluşturulabilir
 */
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
      const response = await client.getMaintenancePlanById(id);
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
      const response = await client.getUpcomingMaintenancePlans(days);
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

// ==========================================
// MAINTENANCE RECORDS (Tüm Bakım Tipleri)
// ==========================================

/**
 * Get all maintenance records with optional filters
 * Filtreleme: type, source, assetId, issueId, maintenancePlanId
 */
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
      const response = await client.getMaintenanceRecordById(id);
      return response.data as MaintenanceRecord;
    },
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

/**
 * Get maintenance records by type (preventive, corrective, etc.)
 */
export const useMaintenanceRecordsByType = (
  type: MaintenanceType,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<MaintenanceRecord[], Error>({
    queryKey: queryKeys.maintenanceRecords.list({ type }),
    queryFn: async () => {
      const response = await client.getMaintenanceRecords({ type });
      return response.data || [];
    },
    enabled: !!type && options?.enabled !== false,
    ...options,
  });
};

/**
 * Get maintenance records by source (plan, issue, manual, etc.)
 */
export const useMaintenanceRecordsBySource = (
  source: MaintenanceRecordSource,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<MaintenanceRecord[], Error>({
    queryKey: queryKeys.maintenanceRecords.list({ source }),
    queryFn: async () => {
      const response = await client.getMaintenanceRecords({ source });
      return response.data || [];
    },
    enabled: !!source && options?.enabled !== false,
    ...options,
  });
};

/**
 * Get corrective maintenance records by issue ID
 */
export const useMaintenanceRecordsByIssue = (
  issueId: string,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<MaintenanceRecord[], Error>({
    queryKey: queryKeys.maintenanceRecords.list({ issueId }),
    queryFn: async () => {
      const response = await client.getMaintenanceRecords({ issueId });
      return response.data || [];
    },
    enabled: !!issueId && options?.enabled !== false,
    ...options,
  });
};

/**
 * Create a maintenance record (generic)
 */
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
      // Invalidate related plan if exists
      if (data.maintenancePlanId) {
        queryClient.invalidateQueries({
          queryKey: queryKeys.maintenancePlans.detail(data.maintenancePlanId),
        });
      }
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

/**
 * Create a preventive maintenance record from a plan
 */
export const useCreatePreventiveMaintenanceRecord = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<MaintenanceRecord, Error, CreatePreventiveMaintenanceRecordRequest>({
    mutationFn: async (data: CreatePreventiveMaintenanceRecordRequest) => {
      const response = await client.createMaintenanceRecord({
        ...data,
        type: 'preventive',
        source: 'plan',
        assetId: '', // Server tarafından plan'dan alınacak
      });
      return response.data as MaintenanceRecord;
    },
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({
        queryKey: queryKeys.maintenanceRecords.all(),
      });
      queryClient.invalidateQueries({
        queryKey: queryKeys.maintenancePlans.detail(variables.maintenancePlanId),
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

/**
 * Create a corrective maintenance record from an issue
 * Kullanım: Arıza/Issue'dan düzeltici bakım kaydı oluşturma
 */
export const useCreateCorrectiveMaintenanceRecord = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<MaintenanceRecord, Error, CreateCorrectiveMaintenanceRecordRequest>({
    mutationFn: async (data: CreateCorrectiveMaintenanceRecordRequest) => {
      const response = await client.createMaintenanceRecord({
        ...data,
        type: 'corrective',
        source: 'issue',
      });
      return response.data as MaintenanceRecord;
    },
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({
        queryKey: queryKeys.maintenanceRecords.all(),
      });
      // Invalidate issue queries
      queryClient.invalidateQueries({
        queryKey: ['assetIssues', variables.issueId],
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

/**
 * Create a manual maintenance record
 * Kullanım: Herhangi bir tip için manuel bakım kaydı oluşturma
 */
export const useCreateManualMaintenanceRecord = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<
    MaintenanceRecord,
    Error,
    {
      assetId: string;
      type: MaintenanceType;
      scheduledDate?: string;
      notes?: string;
      priority?: 'critical' | 'high' | 'medium' | 'low';
    }
  >({
    mutationFn: async (data) => {
      const response = await client.createMaintenanceRecord({
        ...data,
        source: 'manual',
      });
      return response.data as MaintenanceRecord;
    },
    onSuccess: (data) => {
      queryClient.invalidateQueries({
        queryKey: queryKeys.maintenanceRecords.all(),
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
      // Invalidate related plan if exists
      if (data.maintenancePlanId) {
        queryClient.invalidateQueries({
          queryKey: queryKeys.maintenancePlans.detail(data.maintenancePlanId),
        });
      }
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};
