import 'package:freezed_annotation/freezed_annotation.dart';

part 'supplier_quotation_models.freezed.dart';
part 'supplier_quotation_models.g.dart';

/// Supplier quotation model
@freezed
sealed class SupplierQuotation with _$SupplierQuotation {
  const factory SupplierQuotation({
    required String id,
    required String quotationNumber,
    required String supplierId,
    required String status, // 'draft', 'sent', 'received', 'selected', 'rejected', 'expired'
    required DateTime quotationDate,
    required DateTime validUntil,
    required double totalAmount,
    required double taxAmount,
    required double netAmount,
    required DateTime createdAt,
    required DateTime updatedAt,
    DateTime? sentAt,
    DateTime? receivedAt,
    DateTime? selectedAt,
    DateTime? rejectedAt,
    String? rfqId,
    String? selectedBy,
    String? rejectedBy,
    String? notes,
    String? termsAndConditions,
    String? paymentTerms,
    String? deliveryTerms,
    String? supplierReference,
    String? contactPerson,
    String? contactEmail,
    String? contactPhone,
    Map<String, dynamic>? metadata,
  }) = _SupplierQuotation;

  factory SupplierQuotation.fromJson(Map<String, dynamic> json) =>
      _$SupplierQuotationFromJson(json);
}

/// Supplier quotation line item model
@freezed
sealed class SupplierQuotationLineItem with _$SupplierQuotationLineItem {
  const factory SupplierQuotationLineItem({
    required String id,
    required String supplierQuotationId,
    required String itemId,
    required double quantity,
    required String unit,
    required double unitPrice,
    required double totalPrice,
    required double discountAmount,
    required double taxAmount,
    required double netAmount,
    required String status, // 'pending', 'quoted', 'selected', 'rejected'
    int? sequence,
    int? leadTimeDays,
    DateTime? deliveryDate,
    String? notes,
    String? specification,
    String? brandModel,
    String? partNumber,
    double? moq, // Minimum Order Quantity
    Map<String, dynamic>? attributes,
    Map<String, dynamic>? metadata,
  }) = _SupplierQuotationLineItem;

  factory SupplierQuotationLineItem.fromJson(Map<String, dynamic> json) =>
      _$SupplierQuotationLineItemFromJson(json);
}

/// Create supplier quotation request
@freezed
sealed class CreateSupplierQuotationRequest with _$CreateSupplierQuotationRequest {
  const factory CreateSupplierQuotationRequest({
    required String supplierId,
    required DateTime quotationDate,
    required DateTime validUntil,
    String? rfqId,
    String? notes,
    String? termsAndConditions,
    String? paymentTerms,
    String? deliveryTerms,
    String? supplierReference,
    String? contactPerson,
    String? contactEmail,
    String? contactPhone,
    List<CreateSupplierQuotationLineItemRequest>? lineItems,
    Map<String, dynamic>? metadata,
  }) = _CreateSupplierQuotationRequest;

  factory CreateSupplierQuotationRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSupplierQuotationRequestFromJson(json);
}

/// Create supplier quotation line item request
@freezed
sealed class CreateSupplierQuotationLineItemRequest with _$CreateSupplierQuotationLineItemRequest {
  const factory CreateSupplierQuotationLineItemRequest({
    required String itemId,
    required double quantity,
    required String unit,
    required double unitPrice,
    double? discountAmount,
    double? taxAmount,
    int? sequence,
    int? leadTimeDays,
    DateTime? deliveryDate,
    String? notes,
    String? specification,
    String? brandModel,
    String? partNumber,
    double? moq,
    Map<String, dynamic>? attributes,
  }) = _CreateSupplierQuotationLineItemRequest;

  factory CreateSupplierQuotationLineItemRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSupplierQuotationLineItemRequestFromJson(json);
}

/// Update supplier quotation request
@freezed
sealed class UpdateSupplierQuotationRequest with _$UpdateSupplierQuotationRequest {
  const factory UpdateSupplierQuotationRequest({
    DateTime? quotationDate,
    DateTime? validUntil,
    String? notes,
    String? termsAndConditions,
    String? paymentTerms,
    String? deliveryTerms,
    String? supplierReference,
    String? contactPerson,
    String? contactEmail,
    String? contactPhone,
    Map<String, dynamic>? metadata,
  }) = _UpdateSupplierQuotationRequest;

  factory UpdateSupplierQuotationRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateSupplierQuotationRequestFromJson(json);
}

/// Supplier quotation filters
@freezed
sealed class SupplierQuotationFilters with _$SupplierQuotationFilters {
  const factory SupplierQuotationFilters({
    String? supplierId,
    String? status,
    String? rfqId,
    DateTime? quotationDateAfter,
    DateTime? quotationDateBefore,
    DateTime? validUntilAfter,
    DateTime? validUntilBefore,
    double? totalAmountMin,
    double? totalAmountMax,
    List<String>? itemIds,
    int? page,
    int? limit,
    String? sortBy,
    String? sortOrder,
  }) = _SupplierQuotationFilters;

  factory SupplierQuotationFilters.fromJson(Map<String, dynamic> json) =>
      _$SupplierQuotationFiltersFromJson(json);

  const SupplierQuotationFilters._();

  /// Convert to query parameters map
  Map<String, dynamic> toQueryMap() {
    return {
      if (supplierId != null) 'supplierId': supplierId,
      if (status != null) 'status': status,
      if (rfqId != null) 'rfqId': rfqId,
      if (quotationDateAfter != null) 'quotationDateAfter': quotationDateAfter!.toIso8601String(),
      if (quotationDateBefore != null) 'quotationDateBefore': quotationDateBefore!.toIso8601String(),
      if (validUntilAfter != null) 'validUntilAfter': validUntilAfter!.toIso8601String(),
      if (validUntilBefore != null) 'validUntilBefore': validUntilBefore!.toIso8601String(),
      if (totalAmountMin != null) 'totalAmountMin': totalAmountMin,
      if (totalAmountMax != null) 'totalAmountMax': totalAmountMax,
      if (itemIds != null) 'itemIds': itemIds,
      if (page != null) 'page': page,
      if (limit != null) 'limit': limit,
      if (sortBy != null) 'sortBy': sortBy,
      if (sortOrder != null) 'sortOrder': sortOrder,
    };
  }
}

/// Quotation comparison model
@freezed
sealed class QuotationComparison with _$QuotationComparison {
  const factory QuotationComparison({
    required String itemId,
    required String itemName,
    required double quantity,
    required String unit,
    required List<QuotationComparisonEntry> quotations,
    String? recommendation,
    Map<String, dynamic>? analysis,
  }) = _QuotationComparison;

  factory QuotationComparison.fromJson(Map<String, dynamic> json) =>
      _$QuotationComparisonFromJson(json);
}

/// Quotation comparison entry
@freezed
sealed class QuotationComparisonEntry with _$QuotationComparisonEntry {
  const factory QuotationComparisonEntry({
    required String quotationId,
    required String supplierId,
    required String supplierName,
    required double unitPrice,
    required double totalPrice,
    required int leadTimeDays,
    DateTime? deliveryDate,
    String? brandModel,
    String? notes,
    double? score,
    Map<String, dynamic>? metrics,
  }) = _QuotationComparisonEntry;

  factory QuotationComparisonEntry.fromJson(Map<String, dynamic> json) =>
      _$QuotationComparisonEntryFromJson(json);
}