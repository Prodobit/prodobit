import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prodobit_flutter_sdk/models/common/common_models.dart';

part 'sales_models.freezed.dart';
part 'sales_models.g.dart';

/// Sales order item creation request
@freezed
sealed class CreateSalesOrderItemRequest with _$CreateSalesOrderItemRequest {
  const factory CreateSalesOrderItemRequest({
    required String itemId,
    required double quantity,
    required Money unitPrice,
    String? description,
  }) = _CreateSalesOrderItemRequest;

  factory CreateSalesOrderItemRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSalesOrderItemRequestFromJson(json);
}

/// Sales order creation request
@freezed
sealed class CreateSalesOrderRequest with _$CreateSalesOrderRequest {
  const factory CreateSalesOrderRequest({
    required String customerId,
    required DateTime orderDate,
    required List<CreateSalesOrderItemRequest> items,
    DateTime? deliveryDate,
    String? notes,
  }) = _CreateSalesOrderRequest;

  factory CreateSalesOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSalesOrderRequestFromJson(json);
}

/// Sales order model
@freezed
sealed class SalesOrder with _$SalesOrder {
  const factory SalesOrder({
    required String id,
    required String orderNumber,
    required String customerId,
    required String customerName,
    required String status,
    required DateTime orderDate,
    required Money total,
    required List<SalesOrderItem> items,
    required DateTime createdAt,
    DateTime? deliveryDate,
    String? notes,
    String? organizationId,
    DateTime? updatedAt,
  }) = _SalesOrder;

  factory SalesOrder.fromJson(Map<String, dynamic> json) =>
      _$SalesOrderFromJson(json);
}

/// Update sales order request
@freezed
sealed class UpdateSalesOrderRequest with _$UpdateSalesOrderRequest {
  const factory UpdateSalesOrderRequest({
    String? orderNumber,
    DateTime? orderDate,
    DateTime? deliveryDate,
    String? status,
    String? notes,
    Map<String, dynamic>? metadata,
  }) = _UpdateSalesOrderRequest;

  factory UpdateSalesOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateSalesOrderRequestFromJson(json);
}

/// Sales order item model
@freezed
sealed class SalesOrderItem with _$SalesOrderItem {
  const factory SalesOrderItem({
    required String id,
    required String itemId,
    required String itemName,
    required double quantity,
    required Money unitPrice,
    required Money totalPrice,
    String? description,
  }) = _SalesOrderItem;

  factory SalesOrderItem.fromJson(Map<String, dynamic> json) =>
      _$SalesOrderItemFromJson(json);
}
