import 'package:freezed_annotation/freezed_annotation.dart';

part 'rfq_models.freezed.dart';
part 'rfq_models.g.dart';

/// Request for Quotation (RFQ) model
@freezed
class RFQ with _$RFQ {
  const factory RFQ({
    required String id,
    required String rfqNumber,
    required String title,
    required String description,
    required String status, // 'draft', 'sent', 'responses_received', 'evaluated', 'closed', 'cancelled'
    required DateTime rfqDate,
    required DateTime responseDeadline,
    required DateTime createdAt,
    required DateTime updatedAt,
    DateTime? sentAt,
    DateTime? closedAt,
    DateTime? cancelledAt,
    String? createdBy,
    String? closedBy,
    String? cancelledBy,
    String? department,
    String? project,
    String? deliveryLocation,
    String? paymentTerms,
    String? evaluationCriteria,
    String? notes,
    String? termsAndConditions,
    List<String>? supplierIds,
    Map<String, dynamic>? metadata,
  }) = _RFQ;

  factory RFQ.fromJson(Map<String, dynamic> json) => _$RFQFromJson(json);
}

/// RFQ line item model
@freezed
class RFQLineItem with _$RFQLineItem {
  const factory RFQLineItem({
    required String id,
    required String rfqId,
    required String itemId,
    required double quantity,
    required String unit,
    required DateTime requiredDate,
    int? sequence,
    String? specification,
    String? brandPreference,
    String? notes,
    double? budgetPrice,
    double? maxPrice,
    Map<String, dynamic>? technicalRequirements,
    Map<String, dynamic>? attributes,
    Map<String, dynamic>? metadata,
  }) = _RFQLineItem;

  factory RFQLineItem.fromJson(Map<String, dynamic> json) =>
      _$RFQLineItemFromJson(json);
}

/// RFQ supplier model
@freezed
class RFQSupplier with _$RFQSupplier {
  const factory RFQSupplier({
    required String id,
    required String rfqId,
    required String supplierId,
    required String status, // 'invited', 'acknowledged', 'quoted', 'declined'
    required DateTime invitedAt,
    DateTime? acknowledgedAt,
    DateTime? quotedAt,
    DateTime? declinedAt,
    String? quotationId,
    String? declineReason,
    String? contactPerson,
    String? contactEmail,
    String? contactPhone,
    String? notes,
    Map<String, dynamic>? metadata,
  }) = _RFQSupplier;

  factory RFQSupplier.fromJson(Map<String, dynamic> json) =>
      _$RFQSupplierFromJson(json);
}

/// Create RFQ request
@freezed
class CreateRFQRequest with _$CreateRFQRequest {
  const factory CreateRFQRequest({
    required String title,
    required String description,
    required DateTime responseDeadline,
    String? department,
    String? project,
    String? deliveryLocation,
    String? paymentTerms,
    String? evaluationCriteria,
    String? notes,
    String? termsAndConditions,
    List<String>? supplierIds,
    List<CreateRFQLineItemRequest>? lineItems,
    Map<String, dynamic>? metadata,
  }) = _CreateRFQRequest;

  factory CreateRFQRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateRFQRequestFromJson(json);
}

/// Create RFQ line item request
@freezed
class CreateRFQLineItemRequest with _$CreateRFQLineItemRequest {
  const factory CreateRFQLineItemRequest({
    required String itemId,
    required double quantity,
    required String unit,
    required DateTime requiredDate,
    int? sequence,
    String? specification,
    String? brandPreference,
    String? notes,
    double? budgetPrice,
    double? maxPrice,
    Map<String, dynamic>? technicalRequirements,
    Map<String, dynamic>? attributes,
  }) = _CreateRFQLineItemRequest;

  factory CreateRFQLineItemRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateRFQLineItemRequestFromJson(json);
}

/// Update RFQ request
@freezed
class UpdateRFQRequest with _$UpdateRFQRequest {
  const factory UpdateRFQRequest({
    String? title,
    String? description,
    DateTime? responseDeadline,
    String? department,
    String? project,
    String? deliveryLocation,
    String? paymentTerms,
    String? evaluationCriteria,
    String? notes,
    String? termsAndConditions,
    Map<String, dynamic>? metadata,
  }) = _UpdateRFQRequest;

  factory UpdateRFQRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateRFQRequestFromJson(json);
}

/// RFQ filters
@freezed
class RFQFilters with _$RFQFilters {
  const factory RFQFilters({
    String? status,
    String? createdBy,
    String? department,
    String? project,
    DateTime? rfqDateAfter,
    DateTime? rfqDateBefore,
    DateTime? responseDeadlineAfter,
    DateTime? responseDeadlineBefore,
    List<String>? supplierIds,
    List<String>? itemIds,
    int? page,
    int? limit,
    String? sortBy,
    String? sortOrder,
  }) = _RFQFilters;

  factory RFQFilters.fromJson(Map<String, dynamic> json) =>
      _$RFQFiltersFromJson(json);

  const RFQFilters._();

  /// Convert to query parameters map
  Map<String, dynamic> toQueryMap() {
    return {
      if (status != null) 'status': status,
      if (createdBy != null) 'createdBy': createdBy,
      if (department != null) 'department': department,
      if (project != null) 'project': project,
      if (rfqDateAfter != null) 'rfqDateAfter': rfqDateAfter!.toIso8601String(),
      if (rfqDateBefore != null) 'rfqDateBefore': rfqDateBefore!.toIso8601String(),
      if (responseDeadlineAfter != null) 'responseDeadlineAfter': responseDeadlineAfter!.toIso8601String(),
      if (responseDeadlineBefore != null) 'responseDeadlineBefore': responseDeadlineBefore!.toIso8601String(),
      if (supplierIds != null) 'supplierIds': supplierIds,
      if (itemIds != null) 'itemIds': itemIds,
      if (page != null) 'page': page,
      if (limit != null) 'limit': limit,
      if (sortBy != null) 'sortBy': sortBy,
      if (sortOrder != null) 'sortOrder': sortOrder,
    };
  }
}

/// Add RFQ supplier request
@freezed
class AddRFQSupplierRequest with _$AddRFQSupplierRequest {
  const factory AddRFQSupplierRequest({
    required String supplierId,
    String? contactPerson,
    String? contactEmail,
    String? contactPhone,
    String? notes,
  }) = _AddRFQSupplierRequest;

  factory AddRFQSupplierRequest.fromJson(Map<String, dynamic> json) =>
      _$AddRFQSupplierRequestFromJson(json);
}