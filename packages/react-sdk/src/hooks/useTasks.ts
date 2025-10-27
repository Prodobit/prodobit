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
    queryFn: () => client.getTasks(filters),
    ...options,
  });
};

export const useTask = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<Task, Error>({
    queryKey: queryKeys.tasks.detail(id),
    queryFn: () => client.getTask(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useSubtasks = (parentTaskId: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<Task[], Error>({
    queryKey: queryKeys.tasks.subtasks(parentTaskId),
    queryFn: () => client.getSubtasks(parentTaskId),
    enabled: !!parentTaskId && options?.enabled !== false,
    ...options,
  });
};

export const useTaskDependencies = (taskId: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<TaskDependency[], Error>({
    queryKey: queryKeys.tasks.dependencies(taskId),
    queryFn: () => client.getTaskDependencies(taskId),
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
    queryFn: () => client.getTasksByAssignee(assigneeId),
    enabled: !!assigneeId && options?.enabled !== false,
    ...options,
  });
};

export const useOverdueTasks = (options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<Task[], Error>({
    queryKey: queryKeys.tasks.overdue(),
    queryFn: () => client.getOverdueTasks(),
    ...options,
  });
};

export const useTaskStatistics = (options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery<any[], Error>({
    queryKey: queryKeys.tasks.statistics(),
    queryFn: () => client.getTaskStatistics(),
    ...options,
  });
};

export const useCreateTask = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation<Task, Error, CreateTaskRequest>({
    mutationFn: (data: CreateTaskRequest) => client.createTask(data),
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
    mutationFn: ({ id, data }: { id: string; data: UpdateTaskRequest }) =>
      client.updateTask(id, data),
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
    mutationFn: (id: string) => client.deleteTask(id),
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

  return useMutation<TaskDependency, Error, CreateTaskDependencyRequest>({
    mutationFn: (data: CreateTaskDependencyRequest) =>
      client.createTaskDependency(data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({
        queryKey: queryKeys.tasks.dependencies(data.taskId),
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
    mutationFn: ({
      taskId,
      dependencyId,
    }: {
      taskId: string;
      dependencyId: string;
    }) => client.deleteTaskDependency(taskId, dependencyId),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({
        queryKey: queryKeys.tasks.dependencies(variables.taskId),
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};
