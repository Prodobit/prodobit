import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query';
import { useProdobitClient } from '../providers/ProdobitProvider';
import { queryKeys } from '../utils/query-keys';
import type { QueryOptions, MutationOptions } from '../types';
import type {
  CreateTaskRequest,
  UpdateTaskRequest,
  Task,
  TaskQuery,
  CreateTaskDependencyRequest,
  TaskDependency,
} from '@prodobit/types';

export const useTasks = (filters?: TaskQuery, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<Task[], Error>({
    queryKey: queryKeys.tasks.list(filters),
    queryFn: async () => {
      const response = await client.getTasks(filters);
      return response.data || [];
    },
    ...options,
  });
};

export const useTask = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<Task, Error>({
    queryKey: queryKeys.tasks.detail(id),
    queryFn: async () => {
      const response = await client.getTaskById(id);
      return response.data as Task;
    },
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useSubtasks = (parentTaskId: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<Task[], Error>({
    queryKey: queryKeys.tasks.subtasks(parentTaskId),
    queryFn: async () => {
      const response = await client.getTaskSubtasks(parentTaskId);
      return response.data || [];
    },
    enabled: !!parentTaskId && options?.enabled !== false,
    ...options,
  });
};

export const useTaskDependencies = (taskId: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<TaskDependency[], Error>({
    queryKey: queryKeys.tasks.dependencies(taskId),
    queryFn: async () => {
      const response = await client.getTaskDependencies(taskId);
      return response.data || [];
    },
    enabled: !!taskId && options?.enabled !== false,
    ...options,
  });
};

export const useTasksByAssignee = (
  assigneeId: string,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery<Task[], Error>({
    queryKey: queryKeys.tasks.byAssignee(assigneeId),
    queryFn: async () => {
      const response = await client.getTasks({ assigneeId });
      return response.data || [];
    },
    enabled: !!assigneeId && options?.enabled !== false,
    ...options,
  });
};

export const useOverdueTasks = (options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<Task[], Error>({
    queryKey: queryKeys.tasks.overdue(),
    queryFn: async () => {
      const response = await client.getOverdueTasks();
      return response.data || [];
    },
    ...options,
  });
};

export const useTaskStatistics = (options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<Record<string, unknown>, Error>({
    queryKey: queryKeys.tasks.statistics(),
    queryFn: async () => {
      // Note: Task statistics endpoint may not be implemented yet
      // Using getTasks to compute basic stats
      const response = await client.getTasks();
      const tasks = response.data || [];
      return {
        total: tasks.length,
        pending: tasks.filter((t: Task) => t.status === 'pending').length,
        in_progress: tasks.filter((t: Task) => t.status === 'in_progress').length,
        completed: tasks.filter((t: Task) => t.status === 'completed').length,
      };
    },
    ...options,
  });
};

export const useCreateTask = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Task, Error, CreateTaskRequest>({
    mutationFn: async (data: CreateTaskRequest) => {
      const response = await client.createTask(data);
      return response.data as Task;
    },
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.tasks.all() });
      if (data.parentTaskId) {
        queryClient.invalidateQueries({
          queryKey: queryKeys.tasks.subtasks(data.parentTaskId),
        });
      }
      if (data.assigneeId) {
        queryClient.invalidateQueries({
          queryKey: queryKeys.tasks.byAssignee(data.assigneeId),
        });
      }
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useUpdateTask = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Task, Error, { id: string; data: UpdateTaskRequest }>({
    mutationFn: async ({ id, data }: { id: string; data: UpdateTaskRequest }) => {
      const response = await client.updateTask(id, data);
      return response.data as Task;
    },
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.tasks.all() });
      queryClient.invalidateQueries({
        queryKey: queryKeys.tasks.detail(variables.id),
      });
      if (data.parentTaskId) {
        queryClient.invalidateQueries({
          queryKey: queryKeys.tasks.subtasks(data.parentTaskId),
        });
      }
      if (data.assigneeId) {
        queryClient.invalidateQueries({
          queryKey: queryKeys.tasks.byAssignee(data.assigneeId),
        });
      }
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useDeleteTask = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<void, Error, string>({
    mutationFn: async (id: string) => {
      await client.deleteTask(id);
    },
    onSuccess: (data, id) => {
      queryClient.invalidateQueries({ queryKey: queryKeys.tasks.all() });
      queryClient.removeQueries({ queryKey: queryKeys.tasks.detail(id) });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useCreateTaskDependency = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<TaskDependency, Error, { taskId: string; data: CreateTaskDependencyRequest }>({
    mutationFn: async ({ taskId, data }: { taskId: string; data: CreateTaskDependencyRequest }) => {
      const response = await client.addTaskDependency(taskId, data);
      return response.data as TaskDependency;
    },
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({
        queryKey: queryKeys.tasks.dependencies(variables.taskId),
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useDeleteTaskDependency = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<void, Error, { taskId: string; dependencyId: string }>({
    mutationFn: async ({
      dependencyId,
      taskId,
    }: {
      taskId: string;
      dependencyId: string;
    }) => {
      await client.removeTaskDependency(dependencyId);
    },
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({
        queryKey: queryKeys.tasks.dependencies(variables.taskId),
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};
