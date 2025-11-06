import 'package:freezed_annotation/freezed_annotation.dart';

part 'calibration_models.freezed.dart';
part 'calibration_models.g.dart';

@freezed
sealed class CalibrationPlan with _$CalibrationPlan {
  const factory CalibrationPlan({
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
    DateTime? nextCalibrationDate,
    DateTime? lastCalibrationDate,
    int? intervalDays,
    int? intervalMonths,
    String? calibrationStandard,
    String? referenceStandard,
    String? acceptanceCriteria,
    String? toleranceRange,
    int? estimatedDurationHours,
    String? defaultAssigneeId,
    String? externalProviderId,
    String? calibrationLocation,
    String? priority,
    String? instructions,
    Map<String, dynamic>? checklistItems,
    List<String>? requiredEquipment,
    String? environmentalConditions,
    bool? requiresCertificate,
    int? certificateValidityDays,
    List<String>? regulatoryRequirements,
    List<String>? complianceStandards,
    bool? autoCreateTask,
    int? taskCreationLeadDays,
    int? alertBeforeDays,
    List<String>? alertRecipients,
    int? totalCalibrationCount,
    int? passedCalibrationCount,
    int? failedCalibrationCount,
    double? averageCompletionTime,
    List<String>? imageIds,
    List<String>? documentIds,
    String? procedureDocumentId,
    DateTime? deletedAt,
  }) = _CalibrationPlan;

  factory CalibrationPlan.fromJson(Map<String, dynamic> json) =>
      _$CalibrationPlanFromJson(json);
}

@freezed
sealed class CalibrationRecord with _$CalibrationRecord {
  const factory CalibrationRecord({
    required String id,
    required String tenantId,
    required String calibrationPlanId,
    required String assetId,
    required DateTime scheduledDate,
    required String type,
    required String status,
    required DateTime insertedAt,
    required DateTime updatedAt,
    String? taskId,
    DateTime? completedDate,
    String? performedBy,
    String? externalProviderId,
    int? durationHours,
    String? calibrationResult,
    Map<String, dynamic>? beforeCalibrationValues,
    Map<String, dynamic>? afterCalibrationValues,
    Map<String, dynamic>? deviationValues,
    String? adjustmentsMade,
    String? notes,
    String? failureReason,
    String? certificateNumber,
    DateTime? certificateIssueDate,
    DateTime? certificateExpiryDate,
    String? certificateDocumentId,
    String? accreditationBody,
    DateTime? nextRecommendedDate,
    String? recommendedActions,
    double? cost,
    String? currency,
    List<String>? imageIds,
    List<String>? documentIds,
  }) = _CalibrationRecord;

  factory CalibrationRecord.fromJson(Map<String, dynamic> json) =>
      _$CalibrationRecordFromJson(json);
}

@freezed
sealed class CreateCalibrationPlanRequest with _$CreateCalibrationPlanRequest {
  const factory CreateCalibrationPlanRequest({
    required String assetId,
    required String name,
    required String type,
    required String frequency,
    required DateTime startDate,
    String? description,
    DateTime? endDate,
    int? intervalDays,
    int? intervalMonths,
    String? calibrationStandard,
    String? referenceStandard,
    String? acceptanceCriteria,
    String? toleranceRange,
    int? estimatedDurationHours,
    String? defaultAssigneeId,
    String? externalProviderId,
    String? calibrationLocation,
    String? priority,
    String? instructions,
    Map<String, dynamic>? checklistItems,
    List<String>? requiredEquipment,
    String? environmentalConditions,
    bool? requiresCertificate,
    int? certificateValidityDays,
    List<String>? regulatoryRequirements,
    List<String>? complianceStandards,
    bool? autoCreateTask,
    int? taskCreationLeadDays,
    int? alertBeforeDays,
    List<String>? alertRecipients,
    List<String>? imageIds,
    List<String>? documentIds,
    String? procedureDocumentId,
  }) = _CreateCalibrationPlanRequest;

  factory CreateCalibrationPlanRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateCalibrationPlanRequestFromJson(json);
}

@freezed
sealed class UpdateCalibrationPlanRequest with _$UpdateCalibrationPlanRequest {
  const factory UpdateCalibrationPlanRequest({
    String? name,
    String? description,
    String? type,
    String? frequency,
    String? status,
    DateTime? startDate,
    DateTime? endDate,
    DateTime? nextCalibrationDate,
    int? intervalDays,
    int? intervalMonths,
    String? calibrationStandard,
    String? referenceStandard,
    String? acceptanceCriteria,
    String? toleranceRange,
    int? estimatedDurationHours,
    String? defaultAssigneeId,
    String? externalProviderId,
    String? calibrationLocation,
    String? priority,
    String? instructions,
    Map<String, dynamic>? checklistItems,
    List<String>? requiredEquipment,
    String? environmentalConditions,
    bool? requiresCertificate,
    int? certificateValidityDays,
    List<String>? regulatoryRequirements,
    List<String>? complianceStandards,
    bool? autoCreateTask,
    int? taskCreationLeadDays,
    int? alertBeforeDays,
    List<String>? alertRecipients,
    List<String>? imageIds,
    List<String>? documentIds,
    String? procedureDocumentId,
  }) = _UpdateCalibrationPlanRequest;

  factory UpdateCalibrationPlanRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateCalibrationPlanRequestFromJson(json);
}

@freezed
sealed class CreateCalibrationRecordRequest with _$CreateCalibrationRecordRequest {
  const factory CreateCalibrationRecordRequest({
    required String calibrationPlanId,
    required DateTime scheduledDate,
    required String type,
    String? externalProviderId,
    String? notes,
  }) = _CreateCalibrationRecordRequest;

  factory CreateCalibrationRecordRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateCalibrationRecordRequestFromJson(json);
}

@freezed
sealed class UpdateCalibrationRecordRequest with _$UpdateCalibrationRecordRequest {
  const factory UpdateCalibrationRecordRequest({
    String? status,
    DateTime? completedDate,
    String? performedBy,
    String? externalProviderId,
    int? durationHours,
    String? calibrationResult,
    Map<String, dynamic>? beforeCalibrationValues,
    Map<String, dynamic>? afterCalibrationValues,
    Map<String, dynamic>? deviationValues,
    String? adjustmentsMade,
    String? notes,
    String? failureReason,
    String? certificateNumber,
    DateTime? certificateIssueDate,
    DateTime? certificateExpiryDate,
    String? certificateDocumentId,
    String? accreditationBody,
    DateTime? nextRecommendedDate,
    String? recommendedActions,
    double? cost,
    String? currency,
    List<String>? imageIds,
    List<String>? documentIds,
  }) = _UpdateCalibrationRecordRequest;

  factory UpdateCalibrationRecordRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateCalibrationRecordRequestFromJson(json);
}
