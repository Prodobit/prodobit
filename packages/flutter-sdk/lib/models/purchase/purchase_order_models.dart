import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase_order_models.freezed.dart';
part 'purchase_order_models.g.dart';

/// Purchase order model
@freezed
sealed class PurchaseOrder with _$PurchaseOrder {
  const factory PurchaseOrder({
    required String id,
    required String orderNumber,
    required String supplierId,
    required String status, // 'draft', 'sent', 'acknowledged', 'approved', 'cancelled', 'closed'
    required DateTime orderDate,
    required double totalAmount,
    required double taxAmount,
    required double netAmount,
    required DateTime createdAt,
    required DateTime updatedAt,
    DateTime? deliveryDate,
    DateTime? acknowledgedAt,
    DateTime? approvedAt,
    DateTime? sentAt,
    DateTime? cancelledAt,
    DateTime? closedAt,
    String? createdBy,
    String? approvedBy,
    String? cancelledBy,
    String? notes,
    String? termsAndConditions,
    String? paymentTerms,
    String? deliveryAddress,
    String? billingAddress,
    Map<String, dynamic>? metadata,
  }) = _PurchaseOrder;

  factory PurchaseOrder.fromJson(Map<String, dynamic> json) =>
      _$PurchaseOrderFromJson(json);
}

/// Purchase order line item model
@freezed
sealed class PurchaseOrderLineItem with _$PurchaseOrderLineItem {
  const factory PurchaseOrderLineItem({
    required String id,
    required String purchaseOrderId,
    required String itemId,
    required double quantity,
    required String unit,
    required double unitPrice,
    required double totalPrice,
    required double discountAmount,
    required double taxAmount,
    required double netAmount,
    required String status, // 'pending', 'acknowledged', 'received', 'cancelled'
    int? sequence,
    DateTime? requestedDeliveryDate,
    DateTime? confirmedDeliveryDate,
    double? receivedQuantity,
    double? returnedQuantity,
    String? notes,
    String? specification,
    Map<String, dynamic>? attributes,
    Map<String, dynamic>? metadata,
  }) = _PurchaseOrderLineItem;

  factory PurchaseOrderLineItem.fromJson(Map<String, dynamic> json) =>
      _$PurchaseOrderLineItemFromJson(json);
}

/// Create purchase order request
@freezed
sealed class CreatePurchaseOrderRequest with _$CreatePurchaseOrderRequest {
  const factory CreatePurchaseOrderRequest({
    required String supplierId,
    required DateTime orderDate,
    DateTime? deliveryDate,
    String? notes,
    String? termsAndConditions,
    String? paymentTerms,
    String? deliveryAddress,
    String? billingAddress,
    List<CreatePurchaseOrderLineItemRequest>? lineItems,
    Map<String, dynamic>? metadata,
  }) = _CreatePurchaseOrderRequest;

  factory CreatePurchaseOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePurchaseOrderRequestFromJson(json);
}

/// Create purchase order line item request
@freezed
sealed class CreatePurchaseOrderLineItemRequest with _$CreatePurchaseOrderLineItemRequest {
  const factory CreatePurchaseOrderLineItemRequest({
    required String itemId,
    required double quantity,
    required String unit,
    required double unitPrice,
    double? discountAmount,
    double? taxAmount,
    int? sequence,
    DateTime? requestedDeliveryDate,
    String? notes,
    String? specification,
    Map<String, dynamic>? attributes,
  }) = _CreatePurchaseOrderLineItemRequest;

  factory CreatePurchaseOrderLineItemRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePurchaseOrderLineItemRequestFromJson(json);
}

/// Update purchase order request
@freezed
sealed class UpdatePurchaseOrderRequest with _$UpdatePurchaseOrderRequest {
  const factory UpdatePurchaseOrderRequest({
    DateTime? orderDate,
    DateTime? deliveryDate,
    String? notes,
    String? termsAndConditions,
    String? paymentTerms,
    String? deliveryAddress,
    String? billingAddress,
    Map<String, dynamic>? metadata,
  }) = _UpdatePurchaseOrderRequest;

  factory UpdatePurchaseOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdatePurchaseOrderRequestFromJson(json);
}

/// Update purchase order line item request
@freezed
sealed class UpdatePurchaseOrderLineItemRequest with _$UpdatePurchaseOrderLineItemRequest {
  const factory UpdatePurchaseOrderLineItemRequest({
    double? quantity,
    String? unit,
    double? unitPrice,
    double? discountAmount,
    double? taxAmount,
    int? sequence,
    DateTime? requestedDeliveryDate,
    DateTime? confirmedDeliveryDate,
    String? notes,
    String? specification,
    Map<String, dynamic>? attributes,
  }) = _UpdatePurchaseOrderLineItemRequest;

  factory UpdatePurchaseOrderLineItemRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdatePurchaseOrderLineItemRequestFromJson(json);
}

/// Purchase order filters
@freezed
sealed class PurchaseOrderFilters with _$PurchaseOrderFilters {
  const factory PurchaseOrderFilters({
    String? supplierId,
    String? status,
    String? orderNumber,
    DateTime? orderDateAfter,
    DateTime? orderDateBefore,
    DateTime? deliveryDateAfter,
    DateTime? deliveryDateBefore,
    double? totalAmountMin,
    double? totalAmountMax,
    String? createdBy,
    List<String>? itemIds,
    int? page,
    int? limit,
    String? sortBy,
    String? sortOrder,
  }) = _PurchaseOrderFilters;

  factory PurchaseOrderFilters.fromJson(Map<String, dynamic> json) =>
      _$PurchaseOrderFiltersFromJson(json);

  const PurchaseOrderFilters._();

  /// Convert to query parameters map
  Map<String, dynamic> toQueryMap() {
    return {
      if (supplierId != null) 'supplierId': supplierId,
      if (status != null) 'status': status,
      if (orderNumber != null) 'orderNumber': orderNumber,
      if (orderDateAfter != null) 'orderDateAfter': orderDateAfter!.toIso8601String(),
      if (orderDateBefore != null) 'orderDateBefore': orderDateBefore!.toIso8601String(),
      if (deliveryDateAfter != null) 'deliveryDateAfter': deliveryDateAfter!.toIso8601String(),
      if (deliveryDateBefore != null) 'deliveryDateBefore': deliveryDateBefore!.toIso8601String(),
      if (totalAmountMin != null) 'totalAmountMin': totalAmountMin,
      if (totalAmountMax != null) 'totalAmountMax': totalAmountMax,
      if (createdBy != null) 'createdBy': createdBy,
      if (itemIds != null) 'itemIds': itemIds,
      if (page != null) 'page': page,
      if (limit != null) 'limit': limit,
      if (sortBy != null) 'sortBy': sortBy,
      if (sortOrder != null) 'sortOrder': sortOrder,
    };
  }
}