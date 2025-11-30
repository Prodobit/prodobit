import 'package:freezed_annotation/freezed_annotation.dart';

part 'asset_status_history_models.freezed.dart';
part 'asset_status_history_models.g.dart';

/// Asset status enum
enum AssetStatus {
  @JsonValue('available')
  available,
  @JsonValue('in_use')
  inUse,
  @JsonValue('under_maintenance')
  underMaintenance,
  @JsonValue('under_repair')
  underRepair,
  @JsonValue('under_calibration')
  underCalibration,
  @JsonValue('reserved')
  reserved,
  @JsonValue('disposed')
  disposed,
  @JsonValue('lost')
  lost,
  @JsonValue('damaged')
  damaged,
  @JsonValue('retired')
  retired,
}

/// Status change reason enum
enum StatusChangeReason {
  @JsonValue('manual')
  manual,
  @JsonValue('maintenance_start')
  maintenanceStart,
  @JsonValue('maintenance_complete')
  maintenanceComplete,
  @JsonValue('repair_start')
  repairStart,
  @JsonValue('repair_complete')
  repairComplete,
  @JsonValue('calibration_start')
  calibrationStart,
  @JsonValue('calibration_complete')
  calibrationComplete,
  @JsonValue('assignment')
  assignment,
  @JsonValue('return')
  return_,
  @JsonValue('transfer')
  transfer,
  @JsonValue('issue_reported')
  issueReported,
  @JsonValue('issue_resolved')
  issueResolved,
  @JsonValue('scheduled')
  scheduled,
  @JsonValue('system')
  system,
}

/// Asset status history model - tracks all status changes for assets
@freezed
sealed class AssetStatusHistory with _$AssetStatusHistory {
  const factory AssetStatusHistory({
    required String id,
    required String tenantId,
    required String assetId,
    required String newStatus,
    required DateTime changedAt,
    required DateTime insertedAt,
    required DateTime updatedAt,
    String? previousStatus,
    StatusChangeReason? changeReason,
    String? reasonDetails,
    String? changedById,
    String? durationMinutes,
    String? relatedMaintenanceRecordId,
    String? relatedIssueId,
    String? relatedAssignmentId,
    DateTime? deletedAt,
    // Related data
    StatusHistoryAssetInfo? asset,
    StatusHistoryUserInfo? changedBy,
  }) = _AssetStatusHistory;

  factory AssetStatusHistory.fromJson(Map<String, dynamic> json) =>
      _$AssetStatusHistoryFromJson(json);
}

/// Simplified asset info for status history display
@freezed
sealed class StatusHistoryAssetInfo with _$StatusHistoryAssetInfo {
  const factory StatusHistoryAssetInfo({
    required String id,
    required String name,
    String? code,
    String? status,
  }) = _StatusHistoryAssetInfo;

  factory StatusHistoryAssetInfo.fromJson(Map<String, dynamic> json) =>
      _$StatusHistoryAssetInfoFromJson(json);
}

/// Simplified user info for status history display
@freezed
sealed class StatusHistoryUserInfo with _$StatusHistoryUserInfo {
  const factory StatusHistoryUserInfo({
    required String id,
    String? name,
    String? email,
  }) = _StatusHistoryUserInfo;

  factory StatusHistoryUserInfo.fromJson(Map<String, dynamic> json) =>
      _$StatusHistoryUserInfoFromJson(json);
}

/// Update asset status request
@freezed
sealed class UpdateAssetStatusRequest with _$UpdateAssetStatusRequest {
  const factory UpdateAssetStatusRequest({
    required String newStatus,
    StatusChangeReason? changeReason,
    String? reasonDetails,
    String? relatedMaintenanceRecordId,
    String? relatedIssueId,
    String? relatedAssignmentId,
  }) = _UpdateAssetStatusRequest;

  factory UpdateAssetStatusRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateAssetStatusRequestFromJson(json);
}

/// Asset status history query filters
@freezed
sealed class AssetStatusHistoryQuery with _$AssetStatusHistoryQuery {
  const factory AssetStatusHistoryQuery({
    String? assetId,
    String? status,
    StatusChangeReason? changeReason,
    String? changedById,
    DateTime? fromDate,
    DateTime? toDate,
  }) = _AssetStatusHistoryQuery;

  factory AssetStatusHistoryQuery.fromJson(Map<String, dynamic> json) =>
      _$AssetStatusHistoryQueryFromJson(json);
}

/// Asset lifecycle summary - analytics for asset status changes
@freezed
sealed class AssetLifecycleSummary with _$AssetLifecycleSummary {
  const factory AssetLifecycleSummary({
    required String assetId,
    required String currentStatus,
    required int totalStatusChanges,
    required Map<String, int> statusCounts,
    required Map<String, int> totalMinutesInStatus,
    required DateTime firstRecordedAt,
    DateTime? lastStatusChange,
    AssetStatusHistory? lastStatusChangeRecord,
  }) = _AssetLifecycleSummary;

  factory AssetLifecycleSummary.fromJson(Map<String, dynamic> json) =>
      _$AssetLifecycleSummaryFromJson(json);
}
