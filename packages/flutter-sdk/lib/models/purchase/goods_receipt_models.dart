import 'package:freezed_annotation/freezed_annotation.dart';

part 'goods_receipt_models.freezed.dart';
part 'goods_receipt_models.g.dart';

/// Goods receipt model
@freezed
sealed class GoodsReceipt with _$GoodsReceipt {
  const factory GoodsReceipt({
    required String id,
    required String receiptNumber,
    required String purchaseOrderId,
    required String supplierId,
    required String status, // 'draft', 'received', 'inspected', 'accepted', 'rejected', 'posted'
    required DateTime receiptDate,
    required DateTime createdAt,
    required DateTime updatedAt,
    DateTime? inspectedAt,
    DateTime? acceptedAt,
    DateTime? rejectedAt,
    DateTime? postedAt,
    String? receivedBy,
    String? inspectedBy,
    String? acceptedBy,
    String? rejectedBy,
    String? postedBy,
    String? deliveryNote,
    String? invoiceNumber,
    String? transportCompany,
    String? vehicleNumber,
    String? driverName,
    String? notes,
    String? inspectionNotes,
    String? rejectionReason,
    Map<String, dynamic>? metadata,
  }) = _GoodsReceipt;

  factory GoodsReceipt.fromJson(Map<String, dynamic> json) =>
      _$GoodsReceiptFromJson(json);
}

/// Goods receipt line item model
@freezed
sealed class GoodsReceiptLineItem with _$GoodsReceiptLineItem {
  const factory GoodsReceiptLineItem({
    required String id,
    required String goodsReceiptId,
    required String purchaseOrderLineItemId,
    required String itemId,
    required double orderedQuantity,
    required double receivedQuantity,
    required double acceptedQuantity,
    required double rejectedQuantity,
    required String unit,
    required String status, // 'pending', 'received', 'inspected', 'accepted', 'rejected'
    int? sequence,
    String? lotNumber,
    String? serialNumber,
    DateTime? expiryDate,
    String? condition, // 'good', 'damaged', 'expired', 'defective'
    String? notes,
    String? inspectionNotes,
    String? rejectionReason,
    String? storageLocation,
    Map<String, dynamic>? qualityMetrics,
    Map<String, dynamic>? attributes,
    Map<String, dynamic>? metadata,
  }) = _GoodsReceiptLineItem;

  factory GoodsReceiptLineItem.fromJson(Map<String, dynamic> json) =>
      _$GoodsReceiptLineItemFromJson(json);
}

/// Create goods receipt request
@freezed
sealed class CreateGoodsReceiptRequest with _$CreateGoodsReceiptRequest {
  const factory CreateGoodsReceiptRequest({
    required String purchaseOrderId,
    required DateTime receiptDate,
    String? deliveryNote,
    String? invoiceNumber,
    String? transportCompany,
    String? vehicleNumber,
    String? driverName,
    String? notes,
    List<CreateGoodsReceiptLineItemRequest>? lineItems,
    Map<String, dynamic>? metadata,
  }) = _CreateGoodsReceiptRequest;

  factory CreateGoodsReceiptRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateGoodsReceiptRequestFromJson(json);
}

/// Create goods receipt line item request
@freezed
sealed class CreateGoodsReceiptLineItemRequest with _$CreateGoodsReceiptLineItemRequest {
  const factory CreateGoodsReceiptLineItemRequest({
    required String purchaseOrderLineItemId,
    required double receivedQuantity,
    String? lotNumber,
    String? serialNumber,
    DateTime? expiryDate,
    String? condition,
    String? notes,
    String? storageLocation,
    Map<String, dynamic>? qualityMetrics,
    Map<String, dynamic>? attributes,
  }) = _CreateGoodsReceiptLineItemRequest;

  factory CreateGoodsReceiptLineItemRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateGoodsReceiptLineItemRequestFromJson(json);
}

/// Update goods receipt request
@freezed
sealed class UpdateGoodsReceiptRequest with _$UpdateGoodsReceiptRequest {
  const factory UpdateGoodsReceiptRequest({
    DateTime? receiptDate,
    String? deliveryNote,
    String? invoiceNumber,
    String? transportCompany,
    String? vehicleNumber,
    String? driverName,
    String? notes,
    Map<String, dynamic>? metadata,
  }) = _UpdateGoodsReceiptRequest;

  factory UpdateGoodsReceiptRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateGoodsReceiptRequestFromJson(json);
}

/// Update goods receipt line item request
@freezed
sealed class UpdateGoodsReceiptLineItemRequest with _$UpdateGoodsReceiptLineItemRequest {
  const factory UpdateGoodsReceiptLineItemRequest({
    double? receivedQuantity,
    double? acceptedQuantity,
    double? rejectedQuantity,
    String? lotNumber,
    String? serialNumber,
    DateTime? expiryDate,
    String? condition,
    String? notes,
    String? inspectionNotes,
    String? rejectionReason,
    String? storageLocation,
    Map<String, dynamic>? qualityMetrics,
    Map<String, dynamic>? attributes,
  }) = _UpdateGoodsReceiptLineItemRequest;

  factory UpdateGoodsReceiptLineItemRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateGoodsReceiptLineItemRequestFromJson(json);
}

/// Goods receipt filters
@freezed
sealed class GoodsReceiptFilters with _$GoodsReceiptFilters {
  const factory GoodsReceiptFilters({
    String? purchaseOrderId,
    String? supplierId,
    String? status,
    String? receivedBy,
    DateTime? receiptDateAfter,
    DateTime? receiptDateBefore,
    DateTime? createdAfter,
    DateTime? createdBefore,
    List<String>? itemIds,
    int? page,
    int? limit,
    String? sortBy,
    String? sortOrder,
  }) = _GoodsReceiptFilters;

  factory GoodsReceiptFilters.fromJson(Map<String, dynamic> json) =>
      _$GoodsReceiptFiltersFromJson(json);

  const GoodsReceiptFilters._();

  /// Convert to query parameters map
  Map<String, dynamic> toQueryMap() {
    return {
      if (purchaseOrderId != null) 'purchaseOrderId': purchaseOrderId,
      if (supplierId != null) 'supplierId': supplierId,
      if (status != null) 'status': status,
      if (receivedBy != null) 'receivedBy': receivedBy,
      if (receiptDateAfter != null) 'receiptDateAfter': receiptDateAfter!.toIso8601String(),
      if (receiptDateBefore != null) 'receiptDateBefore': receiptDateBefore!.toIso8601String(),
      if (createdAfter != null) 'createdAfter': createdAfter!.toIso8601String(),
      if (createdBefore != null) 'createdBefore': createdBefore!.toIso8601String(),
      if (itemIds != null) 'itemIds': itemIds,
      if (page != null) 'page': page,
      if (limit != null) 'limit': limit,
      if (sortBy != null) 'sortBy': sortBy,
      if (sortOrder != null) 'sortOrder': sortOrder,
    };
  }
}

/// Inspect goods receipt request
@freezed
sealed class InspectGoodsReceiptRequest with _$InspectGoodsReceiptRequest {
  const factory InspectGoodsReceiptRequest({
    String? inspectionNotes,
    Map<String, dynamic>? qualityMetrics,
  }) = _InspectGoodsReceiptRequest;

  factory InspectGoodsReceiptRequest.fromJson(Map<String, dynamic> json) =>
      _$InspectGoodsReceiptRequestFromJson(json);
}

/// Accept goods receipt request
@freezed
sealed class AcceptGoodsReceiptRequest with _$AcceptGoodsReceiptRequest {
  const factory AcceptGoodsReceiptRequest({
    String? notes,
  }) = _AcceptGoodsReceiptRequest;

  factory AcceptGoodsReceiptRequest.fromJson(Map<String, dynamic> json) =>
      _$AcceptGoodsReceiptRequestFromJson(json);
}

/// Reject goods receipt request
@freezed
sealed class RejectGoodsReceiptRequest with _$RejectGoodsReceiptRequest {
  const factory RejectGoodsReceiptRequest({
    required String reason,
    String? notes,
  }) = _RejectGoodsReceiptRequest;

  factory RejectGoodsReceiptRequest.fromJson(Map<String, dynamic> json) =>
      _$RejectGoodsReceiptRequestFromJson(json);
}