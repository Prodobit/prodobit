import 'package:freezed_annotation/freezed_annotation.dart';

part 'asset_assignment_models.freezed.dart';
part 'asset_assignment_models.g.dart';

/// Asset Assignment model
@freezed
sealed class AssetAssignment with _$AssetAssignment {
  const factory AssetAssignment({
    required String id,
    required String tenantId,
    required String assetId,
    required String assignedTo,
    required String assignedType, // 'user', 'department', 'location'
    required String assignedBy,
    required DateTime assignmentDate,
    required String status, // 'active', 'returned', 'transferred'
    required DateTime insertedAt,
    required DateTime updatedAt,
    String? expectedReturnDate,
    DateTime? actualReturnDate,
    String? transferredToAssignmentId,
    String? notes,
    String? signatureImageId,
    String? assignmentReason,
    String? returnCondition, // 'good', 'damaged', 'needs_repair'
    DateTime? deletedAt,
    // Related data (from joins)
    AssetInfo? asset,
  }) = _AssetAssignment;

  factory AssetAssignment.fromJson(Map<String, dynamic> json) =>
      _$AssetAssignmentFromJson(json);
}

/// Asset info for assignment list
@freezed
sealed class AssetInfo with _$AssetInfo {
  const factory AssetInfo({
    required String id,
    required String name,
    String? code,
    String? serialNumber,
  }) = _AssetInfo;

  factory AssetInfo.fromJson(Map<String, dynamic> json) =>
      _$AssetInfoFromJson(json);
}

/// Create asset assignment request
@freezed
sealed class CreateAssetAssignmentRequest with _$CreateAssetAssignmentRequest {
  const factory CreateAssetAssignmentRequest({
    required String assetId,
    required String assignedTo,
    required String assignedType,
    String? expectedReturnDate,
    String? notes,
    String? assignmentReason,
    String? signatureImageId,
  }) = _CreateAssetAssignmentRequest;

  factory CreateAssetAssignmentRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateAssetAssignmentRequestFromJson(json);
}

/// Update asset assignment request
@freezed
sealed class UpdateAssetAssignmentRequest with _$UpdateAssetAssignmentRequest {
  const factory UpdateAssetAssignmentRequest({
    String? status,
    DateTime? actualReturnDate,
    String? returnCondition,
    String? notes,
    String? transferredToAssignmentId,
  }) = _UpdateAssetAssignmentRequest;

  factory UpdateAssetAssignmentRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateAssetAssignmentRequestFromJson(json);
}

/// Transfer assignment request
@freezed
sealed class TransferAssignmentRequest with _$TransferAssignmentRequest {
  const factory TransferAssignmentRequest({
    required String newAssignedTo,
    required String newAssignedType,
  }) = _TransferAssignmentRequest;

  factory TransferAssignmentRequest.fromJson(Map<String, dynamic> json) =>
      _$TransferAssignmentRequestFromJson(json);
}

/// Return assignment request
@freezed
sealed class ReturnAssignmentRequest with _$ReturnAssignmentRequest {
  const factory ReturnAssignmentRequest({
    String? returnCondition, // 'good', 'damaged', 'needs_repair'
  }) = _ReturnAssignmentRequest;

  factory ReturnAssignmentRequest.fromJson(Map<String, dynamic> json) =>
      _$ReturnAssignmentRequestFromJson(json);
}
