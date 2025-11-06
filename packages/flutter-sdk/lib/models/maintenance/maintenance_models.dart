import 'package:freezed_annotation/freezed_annotation.dart';

part 'maintenance_models.freezed.dart';
part 'maintenance_models.g.dart';

@freezed
sealed class MaintenancePlan with _$MaintenancePlan {
  const factory MaintenancePlan({
    required String id,
    required String tenantId,
    required String assetId,
    required String name,
    required String type,
    required String frequency,
    required String status,
    required DateTime startDate,
    required DateTime insertedAt,
    required DateTime updatedAt,
    String? description,
    DateTime? endDate,
    DateTime? nextScheduledDate,
    DateTime? lastMaintenanceDate,
    int? intervalDays,
    int? intervalHours,
    int? intervalCycles,
    int? estimatedDurationHours,
    String? assignedTeamId,
    String? defaultAssigneeId,
    String? priority,
    String? instructions,
    Map<String, dynamic>? checklistItems,
    List<String>? requiredSkills,
    String? safetyPrecautions,
    Map<String, dynamic>? requiredMaterials,
    Map<String, dynamic>? spareParts,
    bool? autoCreateTask,
    int? taskCreationLeadDays,
    int? totalMaintenanceCount,
    int? completedMaintenanceCount,
    int? missedMaintenanceCount,
    double? averageCompletionTime,
    List<String>? imageIds,
    List<String>? documentIds,
    String? procedureDocumentId,
    DateTime? deletedAt,
  }) = _MaintenancePlan;

  factory MaintenancePlan.fromJson(Map<String, dynamic> json) =>
      _$MaintenancePlanFromJson(json);
}

@freezed
sealed class MaintenanceRecord with _$MaintenanceRecord {
  const factory MaintenanceRecord({
    required String id,
    required String tenantId,
    required String maintenancePlanId,
    required String assetId,
    required String taskId,
    required DateTime scheduledDate,
    required String status,
    required DateTime insertedAt,
    required DateTime updatedAt,
    DateTime? completedDate,
    String? performedBy,
    int? durationHours,
    String? notes,
    String? issuesFound,
    Map<String, dynamic>? partsReplaced,
    Map<String, dynamic>? materialsUsed,
    DateTime? nextRecommendedDate,
    List<String>? imageIds,
    List<String>? documentIds,
  }) = _MaintenanceRecord;

  factory MaintenanceRecord.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceRecordFromJson(json);
}

@freezed
sealed class CreateMaintenancePlanRequest with _$CreateMaintenancePlanRequest {
  const factory CreateMaintenancePlanRequest({
    required String assetId,
    required String name,
    required String type,
    required String frequency,
    required DateTime startDate,
    String? description,
    DateTime? endDate,
    int? intervalDays,
    int? intervalHours,
    int? intervalCycles,
    int? estimatedDurationHours,
    String? assignedTeamId,
    String? defaultAssigneeId,
    String? priority,
    String? instructions,
    Map<String, dynamic>? checklistItems,
    List<String>? requiredSkills,
    String? safetyPrecautions,
    Map<String, dynamic>? requiredMaterials,
    Map<String, dynamic>? spareParts,
    bool? autoCreateTask,
    int? taskCreationLeadDays,
    List<String>? imageIds,
    List<String>? documentIds,
    String? procedureDocumentId,
  }) = _CreateMaintenancePlanRequest;

  factory CreateMaintenancePlanRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateMaintenancePlanRequestFromJson(json);
}

@freezed
sealed class UpdateMaintenancePlanRequest with _$UpdateMaintenancePlanRequest {
  const factory UpdateMaintenancePlanRequest({
    String? name,
    String? description,
    String? type,
    String? frequency,
    String? status,
    DateTime? startDate,
    DateTime? endDate,
    DateTime? nextScheduledDate,
    int? intervalDays,
    int? intervalHours,
    int? intervalCycles,
    int? estimatedDurationHours,
    String? assignedTeamId,
    String? defaultAssigneeId,
    String? priority,
    String? instructions,
    Map<String, dynamic>? checklistItems,
    List<String>? requiredSkills,
    String? safetyPrecautions,
    Map<String, dynamic>? requiredMaterials,
    Map<String, dynamic>? spareParts,
    bool? autoCreateTask,
    int? taskCreationLeadDays,
    List<String>? imageIds,
    List<String>? documentIds,
    String? procedureDocumentId,
  }) = _UpdateMaintenancePlanRequest;

  factory UpdateMaintenancePlanRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateMaintenancePlanRequestFromJson(json);
}

@freezed
sealed class CreateMaintenanceRecordRequest with _$CreateMaintenanceRecordRequest {
  const factory CreateMaintenanceRecordRequest({
    required String maintenancePlanId,
    required DateTime scheduledDate,
    String? notes,
  }) = _CreateMaintenanceRecordRequest;

  factory CreateMaintenanceRecordRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateMaintenanceRecordRequestFromJson(json);
}

@freezed
sealed class UpdateMaintenanceRecordRequest with _$UpdateMaintenanceRecordRequest {
  const factory UpdateMaintenanceRecordRequest({
    String? status,
    DateTime? completedDate,
    String? performedBy,
    int? durationHours,
    String? notes,
    String? issuesFound,
    Map<String, dynamic>? partsReplaced,
    Map<String, dynamic>? materialsUsed,
    DateTime? nextRecommendedDate,
    List<String>? imageIds,
    List<String>? documentIds,
  }) = _UpdateMaintenanceRecordRequest;

  factory UpdateMaintenanceRecordRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateMaintenanceRecordRequestFromJson(json);
}
