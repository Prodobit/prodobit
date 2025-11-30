import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useProdobitClient } from '../providers/ProdobitProvider';
import { queryKeys } from '../utils/query-keys';
import type { QueryOptions, MutationOptions } from '../types';
import type {
  CreateServiceContractRequest,
  UpdateServiceContractRequest,
  ServiceContract,
  ServiceContractQuery,
  ServiceContractAsset,
  AddContractAssetRequest,
} from '@prodobit/types';

// Service Contracts
export const useServiceContracts = (
  filters?: ServiceContractQuery,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<ServiceContract[], Error>({
    queryKey: queryKeys.serviceContracts.list(filters),
    queryFn: async () => {
      const response = await client.getServiceContracts(filters);
      return response.data || [];
    },
    ...options,
  });
};

export const useServiceContract = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<ServiceContract, Error>({
    queryKey: queryKeys.serviceContracts.detail(id),
    queryFn: async () => {
      const response = await client.getServiceContractById(id);
      return response.data as ServiceContract;
    },
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useServiceContractsByCustomer = (
  customerId: string,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<ServiceContract[], Error>({
    queryKey: queryKeys.serviceContracts.byCustomer(customerId),
    queryFn: async () => {
      const response = await client.getServiceContractsByCustomer(customerId);
      return response.data || [];
    },
    enabled: !!customerId && options?.enabled !== false,
    ...options,
  });
};

export const useServiceContractsForAsset = (
  assetId: string,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<ServiceContract[], Error>({
    queryKey: queryKeys.serviceContracts.byAsset(assetId),
    queryFn: async () => {
      const response = await client.getServiceContractsForAsset(assetId);
      return response.data || [];
    },
    enabled: !!assetId && options?.enabled !== false,
    ...options,
  });
};

export const useExpiringServiceContracts = (
  days: number = 30,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<ServiceContract[], Error>({
    queryKey: queryKeys.serviceContracts.expiring(days),
    queryFn: async () => {
      const response = await client.getExpiringServiceContracts(days);
      return response.data || [];
    },
    ...options,
  });
};

export const useCreateServiceContract = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<ServiceContract, Error, CreateServiceContractRequest>({
    mutationFn: async (data: CreateServiceContractRequest) => {
      const response = await client.createServiceContract(data);
      return response.data as ServiceContract;
    },
    onSuccess: (data) => {
      queryClient.invalidateQueries({
        queryKey: queryKeys.serviceContracts.all(),
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useUpdateServiceContract = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<
    ServiceContract,
    Error,
    { id: string; data: UpdateServiceContractRequest }
  >({
    mutationFn: async ({
      id,
      data,
    }: {
      id: string;
      data: UpdateServiceContractRequest;
    }) => {
      const response = await client.updateServiceContract(id, data);
      return response.data as ServiceContract;
    },
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({
        queryKey: queryKeys.serviceContracts.all(),
      });
      queryClient.invalidateQueries({
        queryKey: queryKeys.serviceContracts.detail(variables.id),
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useDeleteServiceContract = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<void, Error, string>({
    mutationFn: async (id: string) => {
      await client.deleteServiceContract(id);
    },
    onSuccess: (data, id) => {
      queryClient.invalidateQueries({
        queryKey: queryKeys.serviceContracts.all(),
      });
      queryClient.removeQueries({
        queryKey: queryKeys.serviceContracts.detail(id),
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

// Contract Assets
export const useServiceContractAssets = (
  contractId: string,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<ServiceContractAsset[], Error>({
    queryKey: queryKeys.serviceContracts.assets(contractId),
    queryFn: async () => {
      const response = await client.getServiceContractAssets(contractId);
      return response.data || [];
    },
    enabled: !!contractId && options?.enabled !== false,
    ...options,
  });
};

export const useAddServiceContractAsset = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<
    ServiceContractAsset,
    Error,
    { contractId: string; data: AddContractAssetRequest }
  >({
    mutationFn: async ({
      contractId,
      data,
    }: {
      contractId: string;
      data: AddContractAssetRequest;
    }) => {
      const response = await client.addServiceContractAsset(contractId, data);
      return response.data as ServiceContractAsset;
    },
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({
        queryKey: queryKeys.serviceContracts.assets(variables.contractId),
      });
      queryClient.invalidateQueries({
        queryKey: queryKeys.serviceContracts.detail(variables.contractId),
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useRemoveServiceContractAsset = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<void, Error, { contractId: string; assetId: string }>({
    mutationFn: async ({
      contractId,
      assetId,
    }: {
      contractId: string;
      assetId: string;
    }) => {
      await client.removeServiceContractAsset(contractId, assetId);
    },
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({
        queryKey: queryKeys.serviceContracts.assets(variables.contractId),
      });
      queryClient.invalidateQueries({
        queryKey: queryKeys.serviceContracts.detail(variables.contractId),
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};
