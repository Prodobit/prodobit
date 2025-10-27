import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_models.freezed.dart';
part 'task_models.g.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required String id,
    required String tenantId,
    required String title,
    required String type,
    required String priority,
    required String status,
    required String createdBy,
    required DateTime insertedAt,
    required DateTime updatedAt,
    String? description,
    String? assigneeId,
    String? assignedBy,
    String? parentTaskId,
    String? relatedAssetId,
    String? relatedIssueId,
    String? relatedMaintenancePlanId,
    String? relatedCalibrationPlanId,
    String? locationId,
    DateTime? startDate,
    DateTime? endDate,
    DateTime? dueDate,
    DateTime? completedAt,
    int? estimatedHours,
    int? actualHours,
    int? progressPercentage,
    Map<String, dynamic>? checklistItems,
    int? checklistCompletedCount,
    bool? isRecurring,
    String? recurrenceInterval,
    int? recurrenceCount,
    DateTime? nextOccurrenceDate,
    String? notes,
    List<String>? tags,
    List<String>? imageIds,
    List<String>? documentIds,
    String? completionNotes,
    String? blockingReason,
    DateTime? deletedAt,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}

@freezed
class TaskDependency with _$TaskDependency {
  const factory TaskDependency({
    required String id,
    required String tenantId,
    required String taskId,
    required String dependsOnTaskId,
    required String dependencyType,
    required DateTime insertedAt,
    int? lagDays,
  }) = _TaskDependency;

  factory TaskDependency.fromJson(Map<String, dynamic> json) =>
      _$TaskDependencyFromJson(json);
}

@freezed
class CreateTaskRequest with _$CreateTaskRequest {
  const factory CreateTaskRequest({
    required String title,
    String? description,
    String? type,
    String? priority,
    String? assigneeId,
    String? parentTaskId,
    String? relatedAssetId,
    String? relatedIssueId,
    String? relatedMaintenancePlanId,
    String? relatedCalibrationPlanId,
    String? locationId,
    DateTime? startDate,
    DateTime? endDate,
    DateTime? dueDate,
    int? estimatedHours,
    bool? isRecurring,
    String? recurrenceInterval,
    int? recurrenceCount,
    String? notes,
    List<String>? tags,
    List<String>? imageIds,
    List<String>? documentIds,
    Map<String, dynamic>? checklistItems,
  }) = _CreateTaskRequest;

  factory CreateTaskRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateTaskRequestFromJson(json);
}

@freezed
class UpdateTaskRequest with _$UpdateTaskRequest {
  const factory UpdateTaskRequest({
    String? title,
    String? description,
    String? type,
    String? priority,
    String? status,
    String? assigneeId,
    String? parentTaskId,
    String? relatedAssetId,
    String? relatedIssueId,
    String? relatedMaintenancePlanId,
    String? relatedCalibrationPlanId,
    String? locationId,
    DateTime? startDate,
    DateTime? endDate,
    DateTime? dueDate,
    int? estimatedHours,
    int? actualHours,
    int? progressPercentage,
    Map<String, dynamic>? checklistItems,
    int? checklistCompletedCount,
    bool? isRecurring,
    String? recurrenceInterval,
    int? recurrenceCount,
    DateTime? nextOccurrenceDate,
    String? notes,
    List<String>? tags,
    List<String>? imageIds,
    List<String>? documentIds,
    String? completionNotes,
    String? blockingReason,
  }) = _UpdateTaskRequest;

  factory UpdateTaskRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateTaskRequestFromJson(json);
}

@freezed
class CreateTaskDependencyRequest with _$CreateTaskDependencyRequest {
  const factory CreateTaskDependencyRequest({
    required String taskId,
    required String dependsOnTaskId,
    String? dependencyType,
    int? lagDays,
  }) = _CreateTaskDependencyRequest;

  factory CreateTaskDependencyRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateTaskDependencyRequestFromJson(json);
}
