import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_order_models.freezed.dart';
part 'sales_order_models.g.dart';

/// Sales order line item model
@freezed
class SalesOrderLineItem with _$SalesOrderLineItem {
  const factory SalesOrderLineItem({
    required String id,
    required String salesOrderId,
    required String itemId,
    required double quantity,
    required String unit,
    required double unitPrice,
    required double totalPrice,
    required double discountAmount,
    required double taxAmount,
    required double netAmount,
    required String status, // 'pending', 'confirmed', 'shipped', 'delivered', 'cancelled'
    int? sequence,
    String? notes,
    DateTime? requestedDeliveryDate,
    DateTime? confirmedDeliveryDate,
    DateTime? actualDeliveryDate,
    double? shippedQuantity,
    double? deliveredQuantity,
    double? returnedQuantity,
    String? lotNumber,
    String? serialNumber,
    Map<String, dynamic>? attributes,
    Map<String, dynamic>? metadata,
  }) = _SalesOrderLineItem;

  factory SalesOrderLineItem.fromJson(Map<String, dynamic> json) =>
      _$SalesOrderLineItemFromJson(json);
}

/// Create sales order line item request
@freezed
class CreateSalesOrderLineItemRequest with _$CreateSalesOrderLineItemRequest {
  const factory CreateSalesOrderLineItemRequest({
    required String itemId,
    required double quantity,
    required String unit,
    required double unitPrice,
    double? discountAmount,
    double? taxAmount,
    int? sequence,
    String? notes,
    DateTime? requestedDeliveryDate,
    String? lotNumber,
    String? serialNumber,
    Map<String, dynamic>? attributes,
  }) = _CreateSalesOrderLineItemRequest;

  factory CreateSalesOrderLineItemRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSalesOrderLineItemRequestFromJson(json);
}

/// Update sales order line item request
@freezed
class UpdateSalesOrderLineItemRequest with _$UpdateSalesOrderLineItemRequest {
  const factory UpdateSalesOrderLineItemRequest({
    double? quantity,
    String? unit,
    double? unitPrice,
    double? discountAmount,
    double? taxAmount,
    int? sequence,
    String? notes,
    DateTime? requestedDeliveryDate,
    DateTime? confirmedDeliveryDate,
    String? lotNumber,
    String? serialNumber,
    Map<String, dynamic>? attributes,
  }) = _UpdateSalesOrderLineItemRequest;

  factory UpdateSalesOrderLineItemRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateSalesOrderLineItemRequestFromJson(json);
}

/// Update sales order status request
@freezed
class UpdateSalesOrderStatusRequest with _$UpdateSalesOrderStatusRequest {
  const factory UpdateSalesOrderStatusRequest({
    required String status,
    String? notes,
    DateTime? statusDate,
  }) = _UpdateSalesOrderStatusRequest;

  factory UpdateSalesOrderStatusRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateSalesOrderStatusRequestFromJson(json);
}

/// Sales order history entry
@freezed
class SalesOrderHistory with _$SalesOrderHistory {
  const factory SalesOrderHistory({
    required String id,
    required String salesOrderId,
    required String eventType, // 'created', 'status_changed', 'item_added', 'item_updated', 'item_removed', 'shipped', 'delivered'
    required String description,
    required DateTime eventDate,
    String? performedBy,
    String? oldValue,
    String? newValue,
    String? notes,
    Map<String, dynamic>? metadata,
  }) = _SalesOrderHistory;

  factory SalesOrderHistory.fromJson(Map<String, dynamic> json) =>
      _$SalesOrderHistoryFromJson(json);
}

/// Sales order filters
@freezed
class SalesOrderFilters with _$SalesOrderFilters {
  const factory SalesOrderFilters({
    String? customerId,
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
  }) = _SalesOrderFilters;

  factory SalesOrderFilters.fromJson(Map<String, dynamic> json) =>
      _$SalesOrderFiltersFromJson(json);

  const SalesOrderFilters._();

  /// Convert to query parameters map
  Map<String, dynamic> toQueryMap() {
    return {
      if (customerId != null) 'customerId': customerId,
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