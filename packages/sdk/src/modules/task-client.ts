import type {
  Task,
  TaskDependency,
  CreateTaskRequest,
  UpdateTaskRequest,
  TaskQuery,
  CreateTaskDependencyRequest,
  Response,
} from "@prodobit/types";
import type { RequestConfig } from "../types";
import { BaseClient } from "./base-client";
import { buildQuery } from "../utils/query-builder";

export class TaskClient extends BaseClient {
  /**
   * Get all tasks with optional filters
   */
  async getAll(
    query?: TaskQuery,
    config?: RequestConfig
  ): Promise<Response<Task[]>> {
    const queryString = buildQuery(query);
    return this.request("GET", `/api/v1/tasks${queryString ? `?${queryString}` : ""}`, undefined, config);
  }

  /**
   * Get a single task by ID
   */
  async getById(
    id: string,
    config?: RequestConfig
  ): Promise<Response<Task>> {
    return this.request("GET", `/api/v1/tasks/${id}`, undefined, config);
  }

  /**
   * Get subtasks of a parent task
   */
  async getSubtasks(
    parentTaskId: string,
    config?: RequestConfig
  ): Promise<Response<Task[]>> {
    return this.request("GET", `/api/v1/tasks/${parentTaskId}/subtasks`, undefined, config);
  }

  /**
   * Get overdue tasks
   */
  async getOverdue(
    config?: RequestConfig
  ): Promise<Response<Task[]>> {
    return this.request("GET", "/api/v1/tasks/overdue", undefined, config);
  }

  /**
   * Get upcoming tasks
   */
  async getUpcoming(
    days: number,
    config?: RequestConfig
  ): Promise<Response<Task[]>> {
    return this.request("GET", `/api/v1/tasks/upcoming?days=${days}`, undefined, config);
  }

  /**
   * Get my tasks (assigned to current user)
   */
  async getMyTasks(
    config?: RequestConfig
  ): Promise<Response<Task[]>> {
    return this.request("GET", "/api/v1/tasks/my-tasks", undefined, config);
  }

  /**
   * Get task dependencies
   */
  async getDependencies(
    taskId: string,
    config?: RequestConfig
  ): Promise<Response<TaskDependency[]>> {
    return this.request("GET", `/api/v1/tasks/${taskId}/dependencies`, undefined, config);
  }

  /**
   * Create a new task
   */
  async create(
    data: CreateTaskRequest,
    config?: RequestConfig
  ): Promise<Response<Task>> {
    return this.request("POST", "/api/v1/tasks", data, config);
  }

  /**
   * Update an existing task
   */
  async update(
    id: string,
    data: UpdateTaskRequest,
    config?: RequestConfig
  ): Promise<Response<Task>> {
    return this.request("PUT", `/api/v1/tasks/${id}`, data, config);
  }

  /**
   * Delete a task
   */
  async delete(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.request("DELETE", `/api/v1/tasks/${id}`, undefined, config);
  }

  /**
   * Add a task dependency
   */
  async addDependency(
    taskId: string,
    data: Omit<CreateTaskDependencyRequest, "taskId">,
    config?: RequestConfig
  ): Promise<Response<TaskDependency>> {
    return this.request("POST", `/api/v1/tasks/${taskId}/dependencies`, data, config);
  }

  /**
   * Remove a task dependency
   */
  async removeDependency(
    dependencyId: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.request("DELETE", `/api/v1/tasks/dependencies/${dependencyId}`, undefined, config);
  }
}
