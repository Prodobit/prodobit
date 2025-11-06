import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase_requisition_models.freezed.dart';
part 'purchase_requisition_models.g.dart';

/// Purchase requisition model
@freezed
sealed class PurchaseRequisition with _$PurchaseRequisition {
  const factory PurchaseRequisition({
    required String id,
    required String requisitionNumber,
    required String requestedBy,
    required String status, // 'draft', 'submitted', 'approved', 'rejected', 'converted', 'closed', 'cancelled'
    required DateTime requestDate,
    required DateTime requiredDate,
    required String priority, // 'low', 'medium', 'high', 'urgent'
    required DateTime createdAt,
    required DateTime updatedAt,
    DateTime? submittedAt,
    DateTime? approvedAt,
    DateTime? rejectedAt,
    DateTime? convertedAt,
    DateTime? closedAt,
    DateTime? cancelledAt,
    String? approvedBy,
    String? rejectedBy,
    String? convertedBy,
    String? department,
    String? costCenter,
    String? project,
    String? justification,
    String? notes,
    String? rejectionReason,
    String? approvalNotes,
    Map<String, dynamic>? metadata,
  }) = _PurchaseRequisition;

  factory PurchaseRequisition.fromJson(Map<String, dynamic> json) =>
      _$PurchaseRequisitionFromJson(json);
}

/// Purchase requisition line item model
@freezed
sealed class PurchaseRequisitionLineItem with _$PurchaseRequisitionLineItem {
  const factory PurchaseRequisitionLineItem({
    required String id,
    required String purchaseRequisitionId,
    required String itemId,
    required double quantity,
    required String unit,
    required DateTime requiredDate,
    required String status, // 'pending', 'approved', 'rejected', 'converted'
    double? estimatedPrice,
    double? budgetAmount,
    int? sequence,
    String? justification,
    String? notes,
    String? specification,
    String? preferredSupplier,
    String? convertedPurchaseOrderId,
    Map<String, dynamic>? attributes,
    Map<String, dynamic>? metadata,
  }) = _PurchaseRequisitionLineItem;

  factory PurchaseRequisitionLineItem.fromJson(Map<String, dynamic> json) =>
      _$PurchaseRequisitionLineItemFromJson(json);
}

/// Create purchase requisition request
@freezed
sealed class CreatePurchaseRequisitionRequest with _$CreatePurchaseRequisitionRequest {
  const factory CreatePurchaseRequisitionRequest({
    required DateTime requiredDate,
    required String priority,
    String? department,
    String? costCenter,
    String? project,
    String? justification,
    String? notes,
    List<CreatePurchaseRequisitionLineItemRequest>? lineItems,
    Map<String, dynamic>? metadata,
  }) = _CreatePurchaseRequisitionRequest;

  factory CreatePurchaseRequisitionRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePurchaseRequisitionRequestFromJson(json);
}

/// Create purchase requisition line item request
@freezed
sealed class CreatePurchaseRequisitionLineItemRequest with _$CreatePurchaseRequisitionLineItemRequest {
  const factory CreatePurchaseRequisitionLineItemRequest({
    required String itemId,
    required double quantity,
    required String unit,
    required DateTime requiredDate,
    double? estimatedPrice,
    double? budgetAmount,
    int? sequence,
    String? justification,
    String? notes,
    String? specification,
    String? preferredSupplier,
    Map<String, dynamic>? attributes,
  }) = _CreatePurchaseRequisitionLineItemRequest;

  factory CreatePurchaseRequisitionLineItemRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePurchaseRequisitionLineItemRequestFromJson(json);
}

/// Update purchase requisition request
@freezed
sealed class UpdatePurchaseRequisitionRequest with _$UpdatePurchaseRequisitionRequest {
  const factory UpdatePurchaseRequisitionRequest({
    DateTime? requiredDate,
    String? priority,
    String? department,
    String? costCenter,
    String? project,
    String? justification,
    String? notes,
    Map<String, dynamic>? metadata,
  }) = _UpdatePurchaseRequisitionRequest;

  factory UpdatePurchaseRequisitionRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdatePurchaseRequisitionRequestFromJson(json);
}

/// Update purchase requisition line item request
@freezed
sealed class UpdatePurchaseRequisitionLineItemRequest with _$UpdatePurchaseRequisitionLineItemRequest {
  const factory UpdatePurchaseRequisitionLineItemRequest({
    double? quantity,
    String? unit,
    DateTime? requiredDate,
    double? estimatedPrice,
    double? budgetAmount,
    int? sequence,
    String? justification,
    String? notes,
    String? specification,
    String? preferredSupplier,
    Map<String, dynamic>? attributes,
  }) = _UpdatePurchaseRequisitionLineItemRequest;

  factory UpdatePurchaseRequisitionLineItemRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdatePurchaseRequisitionLineItemRequestFromJson(json);
}

/// Purchase requisition filters
@freezed
sealed class PurchaseRequisitionFilters with _$PurchaseRequisitionFilters {
  const factory PurchaseRequisitionFilters({
    String? requestedBy,
    String? status,
    String? priority,
    String? department,
    String? costCenter,
    String? project,
    DateTime? requestDateAfter,
    DateTime? requestDateBefore,
    DateTime? requiredDateAfter,
    DateTime? requiredDateBefore,
    List<String>? itemIds,
    int? page,
    int? limit,
    String? sortBy,
    String? sortOrder,
  }) = _PurchaseRequisitionFilters;

  factory PurchaseRequisitionFilters.fromJson(Map<String, dynamic> json) =>
      _$PurchaseRequisitionFiltersFromJson(json);

  const PurchaseRequisitionFilters._();

  /// Convert to query parameters map
  Map<String, dynamic> toQueryMap() {
    return {
      if (requestedBy != null) 'requestedBy': requestedBy,
      if (status != null) 'status': status,
      if (priority != null) 'priority': priority,
      if (department != null) 'department': department,
      if (costCenter != null) 'costCenter': costCenter,
      if (project != null) 'project': project,
      if (requestDateAfter != null) 'requestDateAfter': requestDateAfter!.toIso8601String(),
      if (requestDateBefore != null) 'requestDateBefore': requestDateBefore!.toIso8601String(),
      if (requiredDateAfter != null) 'requiredDateAfter': requiredDateAfter!.toIso8601String(),
      if (requiredDateBefore != null) 'requiredDateBefore': requiredDateBefore!.toIso8601String(),
      if (itemIds != null) 'itemIds': itemIds,
      if (page != null) 'page': page,
      if (limit != null) 'limit': limit,
      if (sortBy != null) 'sortBy': sortBy,
      if (sortOrder != null) 'sortOrder': sortOrder,
    };
  }
}

/// Approve/Reject purchase requisition request
@freezed
sealed class ApprovePurchaseRequisitionRequest with _$ApprovePurchaseRequisitionRequest {
  const factory ApprovePurchaseRequisitionRequest({
    String? notes,
  }) = _ApprovePurchaseRequisitionRequest;

  factory ApprovePurchaseRequisitionRequest.fromJson(Map<String, dynamic> json) =>
      _$ApprovePurchaseRequisitionRequestFromJson(json);
}

/// Reject purchase requisition request
@freezed
sealed class RejectPurchaseRequisitionRequest with _$RejectPurchaseRequisitionRequest {
  const factory RejectPurchaseRequisitionRequest({
    required String reason,
    String? notes,
  }) = _RejectPurchaseRequisitionRequest;

  factory RejectPurchaseRequisitionRequest.fromJson(Map<String, dynamic> json) =>
      _$RejectPurchaseRequisitionRequestFromJson(json);
}