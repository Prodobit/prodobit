import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useProdobitClient } from '../providers/ProdobitProvider';
import { queryKeys } from '../utils/query-keys';
import type { QueryOptions, MutationOptions } from '../types';

export interface MaintenancePlanTriggerFilters {
  maintenancePlanId?: string;
  triggerType?: 'time' | 'meter' | 'both';
  meterId?: string;
  isActive?: boolean;
}

export interface CreateMaintenancePlanTriggerData {
  maintenancePlanId: string;
  triggerType: 'time' | 'meter' | 'both';
  triggerMode?: 'first' | 'all';
  intervalDays?: number;
  intervalMonths?: number;
  meterId?: string;
  meterThreshold?: number;
  nextDueDate?: string;
  nextDueMeterReading?: number;
  isActive?: boolean;
}

export interface UpdateMaintenancePlanTriggerData {
  triggerType?: 'time' | 'meter' | 'both';
  triggerMode?: 'first' | 'all';
  intervalDays?: number;
  intervalMonths?: number;
  meterId?: string;
  meterThreshold?: number;
  nextDueDate?: string;
  nextDueMeterReading?: number;
  isActive?: boolean;
}

// Maintenance Plan Triggers hooks
export const useMaintenancePlanTriggers = (
  filters?: MaintenancePlanTriggerFilters,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.maintenancePlanTriggers.list(filters),
    queryFn: () => client.getMaintenancePlanTriggers(filters),
    ...options,
  });
};

export const useMaintenancePlanTrigger = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.maintenancePlanTriggers.detail(id),
    queryFn: () => client.getMaintenancePlanTrigger(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useDueTriggers = (options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.maintenancePlanTriggers.due(),
    queryFn: () => client.getDueTriggers(),
    ...options,
  });
};

export const useCreateMaintenancePlanTrigger = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (data: CreateMaintenancePlanTriggerData) =>
      client.createMaintenancePlanTrigger(data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.maintenancePlanTriggers.all() });
      if (variables.maintenancePlanId) {
        queryClient.invalidateQueries({
          queryKey: queryKeys.maintenancePlans.detail(variables.maintenancePlanId)
        });
      }
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useUpdateMaintenancePlanTrigger = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({ id, data }: { id: string; data: UpdateMaintenancePlanTriggerData }) =>
      client.updateMaintenancePlanTrigger(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.maintenancePlanTriggers.all() });
      queryClient.setQueryData(queryKeys.maintenancePlanTriggers.detail(variables.id), data);
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useDeleteMaintenancePlanTrigger = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (id: string) => client.deleteMaintenancePlanTrigger(id),
    onSuccess: (data, id) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.maintenancePlanTriggers.all() });
      queryClient.removeQueries({ queryKey: queryKeys.maintenancePlanTriggers.detail(id) });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useMarkTriggerTriggered = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({ id, currentMeterReading }: { id: string; currentMeterReading?: number }) =>
      client.markTriggerTriggered(id, currentMeterReading),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.maintenancePlanTriggers.all() });
      queryClient.invalidateQueries({ queryKey: queryKeys.maintenancePlanTriggers.due() });
      queryClient.setQueryData(queryKeys.maintenancePlanTriggers.detail(variables.id), data);
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};
