import 'package:freezed_annotation/freezed_annotation.dart';

part 'asset_issue_models.freezed.dart';
part 'asset_issue_models.g.dart';

@freezed
sealed class AssetIssue with _$AssetIssue {
  const factory AssetIssue({
    required String id,
    required String tenantId,
    required String assetId,
    required String title,
    required String description,
    required String category,
    required String severity,
    required String status,
    required String reportedBy,
    required DateTime reportedAt,
    required DateTime insertedAt,
    required DateTime updatedAt,
    String? assignedTo,
    String? relatedTaskId,
    DateTime? acknowledgedAt,
    DateTime? resolvedAt,
    DateTime? closedAt,
    int? estimatedResolutionTime,
    int? actualResolutionTime,
    String? resolutionNotes,
    String? rootCause,
    String? correctiveActions,
    String? preventiveActions,
    List<String>? imageIds,
    List<String>? documentIds,
    String? location,
    String? impactDescription,
    bool? downtime,
    DateTime? deletedAt,
  }) = _AssetIssue;

  factory AssetIssue.fromJson(Map<String, dynamic> json) =>
      _$AssetIssueFromJson(json);
}

@freezed
sealed class CreateAssetIssueRequest with _$CreateAssetIssueRequest {
  const factory CreateAssetIssueRequest({
    required String assetId,
    required String title,
    required String description,
    required String category,
    required String severity,
    String? assignedTo,
    int? estimatedResolutionTime,
    List<String>? imageIds,
    List<String>? documentIds,
    String? location,
    String? impactDescription,
    bool? downtime,
  }) = _CreateAssetIssueRequest;

  factory CreateAssetIssueRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateAssetIssueRequestFromJson(json);
}

@freezed
sealed class UpdateAssetIssueRequest with _$UpdateAssetIssueRequest {
  const factory UpdateAssetIssueRequest({
    String? title,
    String? description,
    String? category,
    String? severity,
    String? status,
    String? assignedTo,
    int? estimatedResolutionTime,
    int? actualResolutionTime,
    String? resolutionNotes,
    String? rootCause,
    String? correctiveActions,
    String? preventiveActions,
    List<String>? imageIds,
    List<String>? documentIds,
    String? location,
    String? impactDescription,
    bool? downtime,
  }) = _UpdateAssetIssueRequest;

  factory UpdateAssetIssueRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateAssetIssueRequestFromJson(json);
}
