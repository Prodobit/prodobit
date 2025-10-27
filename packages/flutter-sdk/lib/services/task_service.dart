import 'package:prodobit_flutter_sdk/core/api_client.dart';
import 'package:prodobit_flutter_sdk/models/models.dart';

/// Service for task management operations
class TaskService {
  const TaskService(this._apiClient);

  final ApiClient _apiClient;

  // ==================== Task Operations ====================

  /// Create new task
  Future<Task> createTask(CreateTaskRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/tasks',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return Task.fromJson(data);
  }

  /// Get task by ID
  Future<Task> getTask(String taskId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/tasks/$taskId',
    );

    final data = response['data'] as Map<String, dynamic>;
    return Task.fromJson(data);
  }

  /// Get all tasks
  Future<List<Task>> getTasks({
    QueryParams? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/tasks',
      queryParameters: query?.toQueryMap(),
    );

    final data = response['data'] as List<dynamic>;
    return data.map((json) => Task.fromJson(json as Map<String, dynamic>)).toList();
  }

  /// Get tasks by asset ID
  Future<List<Task>> getTasksByAssetId(String assetId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/assets/$assetId/tasks',
    );

    final data = response['data'] as List<dynamic>;
    return data.map((json) => Task.fromJson(json as Map<String, dynamic>)).toList();
  }

  /// Get tasks by assignee ID
  Future<List<Task>> getTasksByAssigneeId(String assigneeId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/tasks',
      queryParameters: {'assigneeId': assigneeId},
    );

    final data = response['data'] as List<dynamic>;
    return data.map((json) => Task.fromJson(json as Map<String, dynamic>)).toList();
  }

  /// Update task
  Future<Task> updateTask(
    String taskId,
    UpdateTaskRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/tasks/$taskId',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return Task.fromJson(data);
  }

  /// Delete task
  Future<void> deleteTask(String taskId) async {
    await _apiClient.delete('/api/v1/tasks/$taskId');
  }

  /// Start task
  Future<Task> startTask(String taskId) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/tasks/$taskId/start',
    );

    final data = response['data'] as Map<String, dynamic>;
    return Task.fromJson(data);
  }

  /// Complete task
  Future<Task> completeTask(
    String taskId, {
    String? completionNotes,
    int? actualHours,
  }) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/tasks/$taskId/complete',
      data: {
        if (completionNotes != null) 'completionNotes': completionNotes,
        if (actualHours != null) 'actualHours': actualHours,
      },
    );

    final data = response['data'] as Map<String, dynamic>;
    return Task.fromJson(data);
  }

  /// Block task
  Future<Task> blockTask(
    String taskId, {
    required String blockingReason,
  }) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/tasks/$taskId/block',
      data: {'blockingReason': blockingReason},
    );

    final data = response['data'] as Map<String, dynamic>;
    return Task.fromJson(data);
  }

  /// Unblock task
  Future<Task> unblockTask(String taskId) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/tasks/$taskId/unblock',
    );

    final data = response['data'] as Map<String, dynamic>;
    return Task.fromJson(data);
  }

  /// Assign task
  Future<Task> assignTask(
    String taskId, {
    required String assigneeId,
  }) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/tasks/$taskId/assign',
      data: {'assigneeId': assigneeId},
    );

    final data = response['data'] as Map<String, dynamic>;
    return Task.fromJson(data);
  }

  // ==================== Task Dependency Operations ====================

  /// Create task dependency
  Future<TaskDependency> createTaskDependency(CreateTaskDependencyRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/task-dependencies',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return TaskDependency.fromJson(data);
  }

  /// Get task dependencies by task ID
  Future<List<TaskDependency>> getTaskDependencies(String taskId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/tasks/$taskId/dependencies',
    );

    final data = response['data'] as List<dynamic>;
    return data.map((json) => TaskDependency.fromJson(json as Map<String, dynamic>)).toList();
  }

  /// Delete task dependency
  Future<void> deleteTaskDependency(String dependencyId) async {
    await _apiClient.delete('/api/v1/task-dependencies/$dependencyId');
  }
}
