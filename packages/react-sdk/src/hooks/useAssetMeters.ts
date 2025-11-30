import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useProdobitClient } from '../providers/ProdobitProvider';
import { queryKeys } from '../utils/query-keys';
import type { QueryOptions, MutationOptions } from '../types';

export interface AssetMeterFilters {
  assetId?: string;
  meterType?: string;
  isActive?: boolean;
}

export interface CreateAssetMeterData {
  assetId: string;
  meterType: string;
  name: string;
  unit: string;
  description?: string;
  initialReading?: number;
  installationDate?: string;
  rolloverValue?: number;
  hasRollover?: boolean;
}

export interface UpdateAssetMeterData {
  name?: string;
  unit?: string;
  description?: string | null;
  rolloverValue?: number | null;
  hasRollover?: boolean;
  isActive?: boolean;
}

export interface CreateMeterReadingData {
  reading: number;
  readingDate?: string;
  readingSource?: string;
  notes?: string;
}

// Asset Meters hooks
export const useAssetMeters = (
  filters?: AssetMeterFilters,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.assetMeters.list(filters),
    queryFn: () => client.getAssetMeters(filters),
    ...options,
  });
};

export const useAssetMeter = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.assetMeters.detail(id),
    queryFn: () => client.getAssetMeter(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useAssetMetersByAsset = (assetId: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.assetMeters.byAsset(assetId),
    queryFn: () => client.getAssetMeters({ assetId }),
    enabled: !!assetId && options?.enabled !== false,
    ...options,
  });
};

export const useMeterStats = (meterId: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.assetMeters.stats(meterId),
    queryFn: () => client.getMeterStats(meterId),
    enabled: !!meterId && options?.enabled !== false,
    ...options,
  });
};

export const useCreateAssetMeter = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (data: CreateAssetMeterData) => client.createAssetMeter(data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.assetMeters.all() });
      if (variables.assetId) {
        queryClient.invalidateQueries({
          queryKey: queryKeys.assetMeters.byAsset(variables.assetId)
        });
      }
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useUpdateAssetMeter = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({ id, data }: { id: string; data: UpdateAssetMeterData }) =>
      client.updateAssetMeter(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.assetMeters.all() });
      queryClient.setQueryData(queryKeys.assetMeters.detail(variables.id), data);
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useDeleteAssetMeter = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (id: string) => client.deleteAssetMeter(id),
    onSuccess: (data, id) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.assetMeters.all() });
      queryClient.removeQueries({ queryKey: queryKeys.assetMeters.detail(id) });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

// Meter Readings hooks
export const useMeterReadings = (meterId: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: queryKeys.meterReadings.byMeter(meterId),
    queryFn: () => client.getMeterReadings(meterId),
    enabled: !!meterId && options?.enabled !== false,
    ...options,
  });
};

export const useCreateMeterReading = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({ meterId, data }: { meterId: string; data: CreateMeterReadingData }) =>
      client.createMeterReading(meterId, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({
        queryKey: queryKeys.meterReadings.byMeter(variables.meterId)
      });
      queryClient.invalidateQueries({
        queryKey: queryKeys.assetMeters.detail(variables.meterId)
      });
      queryClient.invalidateQueries({
        queryKey: queryKeys.assetMeters.stats(variables.meterId)
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};
