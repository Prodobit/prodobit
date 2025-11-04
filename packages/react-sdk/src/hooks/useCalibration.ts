import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useProdobitClient } from '../providers/ProdobitProvider';
import { queryKeys } from '../utils/query-keys';
import type { QueryOptions, MutationOptions } from '../types';
import type {
  CreateCalibrationPlanRequest,
  UpdateCalibrationPlanRequest,
  CalibrationPlan,
  CalibrationPlanQuery,
  CreateCalibrationRecordRequest,
  UpdateCalibrationRecordRequest,
  CalibrationRecord,
  CalibrationRecordQuery,
} from '@prodobit/types';

// Calibration Plans
export const useCalibrationPlans = (
  filters?: CalibrationPlanQuery,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<CalibrationPlan[], Error>({
    queryKey: queryKeys.calibrationPlans.list(filters),
    queryFn: async () => {
      const response = await client.getCalibrationPlans(filters);
      return response.data || [];
    },
    ...options,
  });
};

export const useCalibrationPlan = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<CalibrationPlan, Error>({
    queryKey: queryKeys.calibrationPlans.detail(id),
    queryFn: async () => {
      const response = await client.getCalibrationPlan(id);
      return response.data as CalibrationPlan;
    },
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useUpcomingCalibrations = (
  days: number = 60,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<CalibrationPlan[], Error>({
    queryKey: queryKeys.calibrationPlans.upcoming(days),
    queryFn: async () => {
      const response = await client.getUpcomingCalibrations(days);
      return response.data || [];
    },
    ...options,
  });
};

export const useExpiringCertificates = (
  days: number = 30,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<CalibrationRecord[], Error>({
    queryKey: queryKeys.calibrationRecords.expiringCertificates(days),
    queryFn: async () => {
      const response = await client.getExpiringCertificates(days);
      return response.data || [];
    },
    ...options,
  });
};

export const useCreateCalibrationPlan = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<CalibrationPlan, Error, CreateCalibrationPlanRequest>({
    mutationFn: async (data: CreateCalibrationPlanRequest) => {
      const response = await client.createCalibrationPlan(data);
      return response.data as CalibrationPlan;
    },
    onSuccess: (data) => {
      queryClient.invalidateQueries({
        queryKey: queryKeys.calibrationPlans.all(),
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useUpdateCalibrationPlan = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<
    CalibrationPlan,
    Error,
    { id: string; data: UpdateCalibrationPlanRequest }
  >({
    mutationFn: async ({
      id,
      data,
    }: {
      id: string;
      data: UpdateCalibrationPlanRequest;
    }) => {
      const response = await client.updateCalibrationPlan(id, data);
      return response.data as CalibrationPlan;
    },
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({
        queryKey: queryKeys.calibrationPlans.all(),
      });
      queryClient.invalidateQueries({
        queryKey: queryKeys.calibrationPlans.detail(variables.id),
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useDeleteCalibrationPlan = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<void, Error, string>({
    mutationFn: (id: string) => client.deleteCalibrationPlan(id),
    onSuccess: (data, id) => {
      queryClient.invalidateQueries({
        queryKey: queryKeys.calibrationPlans.all(),
      });
      queryClient.removeQueries({
        queryKey: queryKeys.calibrationPlans.detail(id),
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

// Calibration Records
export const useCalibrationRecords = (
  filters?: CalibrationRecordQuery,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<CalibrationRecord[], Error>({
    queryKey: queryKeys.calibrationRecords.list(filters),
    queryFn: async () => {
      const response = await client.getCalibrationRecords(filters);
      return response.data || [];
    },
    ...options,
  });
};

export const useCalibrationRecord = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<CalibrationRecord, Error>({
    queryKey: queryKeys.calibrationRecords.detail(id),
    queryFn: async () => {
      const response = await client.getCalibrationRecord(id);
      return response.data as CalibrationRecord;
    },
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useCreateCalibrationRecord = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<CalibrationRecord, Error, CreateCalibrationRecordRequest>({
    mutationFn: async (data: CreateCalibrationRecordRequest) => {
      const response = await client.createCalibrationRecord(data);
      return response.data as CalibrationRecord;
    },
    onSuccess: (data) => {
      queryClient.invalidateQueries({
        queryKey: queryKeys.calibrationRecords.all(),
      });
      queryClient.invalidateQueries({
        queryKey: queryKeys.calibrationPlans.detail(data.calibrationPlanId),
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useUpdateCalibrationRecord = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<
    CalibrationRecord,
    Error,
    { id: string; data: UpdateCalibrationRecordRequest }
  >({
    mutationFn: async ({
      id,
      data,
    }: {
      id: string;
      data: UpdateCalibrationRecordRequest;
    }) => {
      const response = await client.updateCalibrationRecord(id, data);
      return response.data as CalibrationRecord;
    },
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({
        queryKey: queryKeys.calibrationRecords.all(),
      });
      queryClient.invalidateQueries({
        queryKey: queryKeys.calibrationRecords.detail(variables.id),
      });
      queryClient.invalidateQueries({
        queryKey: queryKeys.calibrationPlans.detail(data.calibrationPlanId),
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};
