import 'package:freezed_annotation/freezed_annotation.dart';

part 'eco_models.freezed.dart';
part 'eco_models.g.dart';

/// ECO (Engineering Change Order) model
@freezed
sealed class Eco with _$Eco {
  const factory Eco({
    required String id,
    required String ecoNumber,
    required String title,
    required String description,
    required String type, // 'bom_change', 'item_change', 'process_change', 'routing_change'
    required String priority, // 'low', 'medium', 'high', 'critical'
    required String status, // 'draft', 'pending_review', 'approved', 'rejected', 'implemented', 'cancelled'
    required String reason,
    required DateTime createdAt,
    required DateTime updatedAt,
    String? requestedBy,
    String? reviewedBy,
    String? approvedBy,
    String? implementedBy,
    DateTime? targetImplementationDate,
    DateTime? actualImplementationDate,
    DateTime? approvedAt,
    DateTime? rejectedAt,
    DateTime? implementedAt,
    String? rejectionReason,
    String? implementationNotes,
    double? estimatedCost,
    double? actualCost,
    int? estimatedHours,
    int? actualHours,
    List<String>? affectedBomIds,
    List<String>? affectedItemIds,
    Map<String, dynamic>? metadata,
  }) = _Eco;

  factory Eco.fromJson(Map<String, dynamic> json) => _$EcoFromJson(json);
}

/// Create ECO request
@freezed
sealed class CreateEcoRequest with _$CreateEcoRequest {
  const factory CreateEcoRequest({
    required String ecoNumber,
    required String title,
    required String description,
    required String type,
    required String priority,
    required String reason,
    DateTime? targetImplementationDate,
    double? estimatedCost,
    int? estimatedHours,
    List<String>? affectedBomIds,
    List<String>? affectedItemIds,
    Map<String, dynamic>? metadata,
  }) = _CreateEcoRequest;

  factory CreateEcoRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateEcoRequestFromJson(json);
}

/// Update ECO request
@freezed
sealed class UpdateEcoRequest with _$UpdateEcoRequest {
  const factory UpdateEcoRequest({
    String? title,
    String? description,
    String? type,
    String? priority,
    String? reason,
    DateTime? targetImplementationDate,
    double? estimatedCost,
    int? estimatedHours,
    List<String>? affectedBomIds,
    List<String>? affectedItemIds,
    Map<String, dynamic>? metadata,
  }) = _UpdateEcoRequest;

  factory UpdateEcoRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateEcoRequestFromJson(json);
}

/// Approve ECO request
@freezed
sealed class ApproveEcoRequest with _$ApproveEcoRequest {
  const factory ApproveEcoRequest({
    String? notes,
    DateTime? targetImplementationDate,
  }) = _ApproveEcoRequest;

  factory ApproveEcoRequest.fromJson(Map<String, dynamic> json) =>
      _$ApproveEcoRequestFromJson(json);
}

/// Reject ECO request
@freezed
sealed class RejectEcoRequest with _$RejectEcoRequest {
  const factory RejectEcoRequest({
    required String reason,
    String? notes,
  }) = _RejectEcoRequest;

  factory RejectEcoRequest.fromJson(Map<String, dynamic> json) =>
      _$RejectEcoRequestFromJson(json);
}

/// ECO filters
@freezed
sealed class EcoFilters with _$EcoFilters {
  const factory EcoFilters({
    String? type,
    String? priority,
    String? status,
    String? requestedBy,
    String? reviewedBy,
    DateTime? createdAfter,
    DateTime? createdBefore,
    DateTime? targetImplementationAfter,
    DateTime? targetImplementationBefore,
    List<String>? affectedBomIds,
    List<String>? affectedItemIds,
    int? page,
    int? limit,
    String? sortBy,
    String? sortOrder,
  }) = _EcoFilters;

  factory EcoFilters.fromJson(Map<String, dynamic> json) =>
      _$EcoFiltersFromJson(json);

  const EcoFilters._();

  /// Convert to query parameters map
  Map<String, dynamic> toQueryMap() {
    return {
      if (type != null) 'type': type,
      if (priority != null) 'priority': priority,
      if (status != null) 'status': status,
      if (requestedBy != null) 'requestedBy': requestedBy,
      if (reviewedBy != null) 'reviewedBy': reviewedBy,
      if (createdAfter != null) 'createdAfter': createdAfter!.toIso8601String(),
      if (createdBefore != null) 'createdBefore': createdBefore!.toIso8601String(),
      if (targetImplementationAfter != null) 'targetImplementationAfter': targetImplementationAfter!.toIso8601String(),
      if (targetImplementationBefore != null) 'targetImplementationBefore': targetImplementationBefore!.toIso8601String(),
      if (affectedBomIds != null) 'affectedBomIds': affectedBomIds,
      if (affectedItemIds != null) 'affectedItemIds': affectedItemIds,
      if (page != null) 'page': page,
      if (limit != null) 'limit': limit,
      if (sortBy != null) 'sortBy': sortBy,
      if (sortOrder != null) 'sortOrder': sortOrder,
    };
  }
}