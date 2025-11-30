import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useProdobitClient } from '../providers/ProdobitProvider';
import { queryKeys } from '../utils/query-keys';
import type { QueryOptions, MutationOptions } from '../types';
import type {
  CreateServiceTicketRequest,
  UpdateServiceTicketRequest,
  ServiceTicket,
  ServiceTicketQuery,
  ServiceTicketComment,
  CreateTicketCommentRequest,
} from '@prodobit/types';

// Service Tickets
export const useServiceTickets = (
  filters?: ServiceTicketQuery,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<ServiceTicket[], Error>({
    queryKey: queryKeys.serviceTickets.list(filters),
    queryFn: async () => {
      const response = await client.getServiceTickets(filters);
      return response.data || [];
    },
    ...options,
  });
};

export const useServiceTicket = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<ServiceTicket, Error>({
    queryKey: queryKeys.serviceTickets.detail(id),
    queryFn: async () => {
      const response = await client.getServiceTicketById(id);
      return response.data as ServiceTicket;
    },
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useServiceTicketsByContract = (
  contractId: string,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<ServiceTicket[], Error>({
    queryKey: queryKeys.serviceTickets.byContract(contractId),
    queryFn: async () => {
      const response = await client.getServiceTicketsByContract(contractId);
      return response.data || [];
    },
    enabled: !!contractId && options?.enabled !== false,
    ...options,
  });
};

export const useServiceTicketsByAsset = (
  assetId: string,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<ServiceTicket[], Error>({
    queryKey: queryKeys.serviceTickets.byAsset(assetId),
    queryFn: async () => {
      const response = await client.getServiceTicketsByAsset(assetId);
      return response.data || [];
    },
    enabled: !!assetId && options?.enabled !== false,
    ...options,
  });
};

export const useOpenServiceTickets = (options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<ServiceTicket[], Error>({
    queryKey: queryKeys.serviceTickets.open(),
    queryFn: async () => {
      const response = await client.getOpenServiceTickets();
      return response.data || [];
    },
    ...options,
  });
};

export const useOverdueServiceTickets = (options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<ServiceTicket[], Error>({
    queryKey: queryKeys.serviceTickets.overdue(),
    queryFn: async () => {
      const response = await client.getOverdueServiceTickets();
      return response.data || [];
    },
    ...options,
  });
};

export const useServiceTicketStatistics = (options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<{
    totalTickets: number;
    openTickets: number;
    closedTickets: number;
    avgResolutionTimeMinutes: number;
    ticketsByPriority: Record<string, number>;
    ticketsByStatus: Record<string, number>;
  }, Error>({
    queryKey: queryKeys.serviceTickets.statistics(),
    queryFn: async () => {
      const response = await client.getServiceTicketStatistics();
      return response.data as any;
    },
    ...options,
  });
};

export const useCreateServiceTicket = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<ServiceTicket, Error, CreateServiceTicketRequest>({
    mutationFn: async (data: CreateServiceTicketRequest) => {
      const response = await client.createServiceTicket(data);
      return response.data as ServiceTicket;
    },
    onSuccess: (data) => {
      queryClient.invalidateQueries({
        queryKey: queryKeys.serviceTickets.all(),
      });
      // Also invalidate contract tickets if the ticket belongs to a contract
      if (data.contractId) {
        queryClient.invalidateQueries({
          queryKey: queryKeys.serviceTickets.byContract(data.contractId),
        });
        queryClient.invalidateQueries({
          queryKey: queryKeys.serviceContracts.detail(data.contractId),
        });
      }
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useUpdateServiceTicket = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<
    ServiceTicket,
    Error,
    { id: string; data: UpdateServiceTicketRequest }
  >({
    mutationFn: async ({
      id,
      data,
    }: {
      id: string;
      data: UpdateServiceTicketRequest;
    }) => {
      const response = await client.updateServiceTicket(id, data);
      return response.data as ServiceTicket;
    },
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({
        queryKey: queryKeys.serviceTickets.all(),
      });
      queryClient.invalidateQueries({
        queryKey: queryKeys.serviceTickets.detail(variables.id),
      });
      if (data.contractId) {
        queryClient.invalidateQueries({
          queryKey: queryKeys.serviceTickets.byContract(data.contractId),
        });
        queryClient.invalidateQueries({
          queryKey: queryKeys.serviceContracts.detail(data.contractId),
        });
      }
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useDeleteServiceTicket = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<void, Error, string>({
    mutationFn: async (id: string) => {
      await client.deleteServiceTicket(id);
    },
    onSuccess: (data, id) => {
      queryClient.invalidateQueries({
        queryKey: queryKeys.serviceTickets.all(),
      });
      queryClient.removeQueries({
        queryKey: queryKeys.serviceTickets.detail(id),
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

// Ticket Comments
export const useServiceTicketComments = (
  ticketId: string,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<ServiceTicketComment[], Error>({
    queryKey: queryKeys.serviceTickets.comments(ticketId),
    queryFn: async () => {
      const response = await client.getServiceTicketComments(ticketId);
      return response.data || [];
    },
    enabled: !!ticketId && options?.enabled !== false,
    ...options,
  });
};

export const useAddServiceTicketComment = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<
    ServiceTicketComment,
    Error,
    { ticketId: string; data: CreateTicketCommentRequest }
  >({
    mutationFn: async ({
      ticketId,
      data,
    }: {
      ticketId: string;
      data: CreateTicketCommentRequest;
    }) => {
      const response = await client.addServiceTicketComment(ticketId, data);
      return response.data as ServiceTicketComment;
    },
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({
        queryKey: queryKeys.serviceTickets.comments(variables.ticketId),
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

// Ticket Status History
export const useServiceTicketStatusHistory = (
  ticketId: string,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<unknown[], Error>({
    queryKey: queryKeys.serviceTickets.history(ticketId),
    queryFn: async () => {
      const response = await client.getServiceTicketStatusHistory(ticketId);
      return response.data || [];
    },
    enabled: !!ticketId && options?.enabled !== false,
    ...options,
  });
};
