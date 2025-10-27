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
    queryFn: () => client.getCalibrationPlans(filters),
    ...options,
  });
};

export const useCalibrationPlan = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<CalibrationPlan, Error>({
    queryKey: queryKeys.calibrationPlans.detail(id),
    queryFn: () => client.getCalibrationPlan(id),
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
    queryFn: () => client.getUpcomingCalibrations(days),
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
    queryFn: () => client.getExpiringCertificates(days),
    ...options,
  });
};

export const useCreateCalibrationPlan = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<CalibrationPlan, Error, CreateCalibrationPlanRequest>({
    mutationFn: (data: CreateCalibrationPlanRequest) =>
      client.createCalibrationPlan(data),
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
    mutationFn: ({
      id,
      data,
    }: {
      id: string;
      data: UpdateCalibrationPlanRequest;
    }) => client.updateCalibrationPlan(id, data),
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
    queryFn: () => client.getCalibrationRecords(filters),
    ...options,
  });
};

export const useCalibrationRecord = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<CalibrationRecord, Error>({
    queryKey: queryKeys.calibrationRecords.detail(id),
    queryFn: () => client.getCalibrationRecord(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useCreateCalibrationRecord = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<CalibrationRecord, Error, CreateCalibrationRecordRequest>({
    mutationFn: (data: CreateCalibrationRecordRequest) =>
      client.createCalibrationRecord(data),
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
    mutationFn: ({
      id,
      data,
    }: {
      id: string;
      data: UpdateCalibrationRecordRequest;
    }) => client.updateCalibrationRecord(id, data),
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
