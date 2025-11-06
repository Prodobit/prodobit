// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateSalesOrderItemRequest _$CreateSalesOrderItemRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_CreateSalesOrderItemRequest',
      json,
      ($checkedConvert) {
        final val = _CreateSalesOrderItemRequest(
          itemId: $checkedConvert('itemId', (v) => v as String),
          quantity: $checkedConvert('quantity', (v) => (v as num).toDouble()),
          unitPrice: $checkedConvert(
              'unitPrice', (v) => Money.fromJson(v as Map<String, dynamic>)),
          description: $checkedConvert('description', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$CreateSalesOrderItemRequestToJson(
        _CreateSalesOrderItemRequest instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'quantity': instance.quantity,
      'unitPrice': instance.unitPrice.toJson(),
      'description': instance.description,
    };

_CreateSalesOrderRequest _$CreateSalesOrderRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_CreateSalesOrderRequest',
      json,
      ($checkedConvert) {
        final val = _CreateSalesOrderRequest(
          customerId: $checkedConvert('customerId', (v) => v as String),
          orderDate:
              $checkedConvert('orderDate', (v) => DateTime.parse(v as String)),
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>)
                  .map((e) => CreateSalesOrderItemRequest.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          deliveryDate: $checkedConvert('deliveryDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          notes: $checkedConvert('notes', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$CreateSalesOrderRequestToJson(
        _CreateSalesOrderRequest instance) =>
    <String, dynamic>{
      'customerId': instance.customerId,
      'orderDate': instance.orderDate.toIso8601String(),
      'items': instance.items.map((e) => e.toJson()).toList(),
      'deliveryDate': instance.deliveryDate?.toIso8601String(),
      'notes': instance.notes,
    };

_SalesOrder _$SalesOrderFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_SalesOrder',
      json,
      ($checkedConvert) {
        final val = _SalesOrder(
          id: $checkedConvert('id', (v) => v as String),
          orderNumber: $checkedConvert('orderNumber', (v) => v as String),
          customerId: $checkedConvert('customerId', (v) => v as String),
          customerName: $checkedConvert('customerName', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          orderDate:
              $checkedConvert('orderDate', (v) => DateTime.parse(v as String)),
          total: $checkedConvert(
              'total', (v) => Money.fromJson(v as Map<String, dynamic>)),
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>)
                  .map(
                      (e) => SalesOrderItem.fromJson(e as Map<String, dynamic>))
                  .toList()),
          createdAt:
              $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
          deliveryDate: $checkedConvert('deliveryDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          notes: $checkedConvert('notes', (v) => v as String?),
          organizationId:
              $checkedConvert('organizationId', (v) => v as String?),
          updatedAt: $checkedConvert('updatedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$SalesOrderToJson(_SalesOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderNumber': instance.orderNumber,
      'customerId': instance.customerId,
      'customerName': instance.customerName,
      'status': instance.status,
      'orderDate': instance.orderDate.toIso8601String(),
      'total': instance.total.toJson(),
      'items': instance.items.map((e) => e.toJson()).toList(),
      'createdAt': instance.createdAt.toIso8601String(),
      'deliveryDate': instance.deliveryDate?.toIso8601String(),
      'notes': instance.notes,
      'organizationId': instance.organizationId,
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_UpdateSalesOrderRequest _$UpdateSalesOrderRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_UpdateSalesOrderRequest',
      json,
      ($checkedConvert) {
        final val = _UpdateSalesOrderRequest(
          orderNumber: $checkedConvert('orderNumber', (v) => v as String?),
          orderDate: $checkedConvert('orderDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          deliveryDate: $checkedConvert('deliveryDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          status: $checkedConvert('status', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$UpdateSalesOrderRequestToJson(
        _UpdateSalesOrderRequest instance) =>
    <String, dynamic>{
      'orderNumber': instance.orderNumber,
      'orderDate': instance.orderDate?.toIso8601String(),
      'deliveryDate': instance.deliveryDate?.toIso8601String(),
      'status': instance.status,
      'notes': instance.notes,
      'metadata': instance.metadata,
    };

_SalesOrderItem _$SalesOrderItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_SalesOrderItem',
      json,
      ($checkedConvert) {
        final val = _SalesOrderItem(
          id: $checkedConvert('id', (v) => v as String),
          itemId: $checkedConvert('itemId', (v) => v as String),
          itemName: $checkedConvert('itemName', (v) => v as String),
          quantity: $checkedConvert('quantity', (v) => (v as num).toDouble()),
          unitPrice: $checkedConvert(
              'unitPrice', (v) => Money.fromJson(v as Map<String, dynamic>)),
          totalPrice: $checkedConvert(
              'totalPrice', (v) => Money.fromJson(v as Map<String, dynamic>)),
          description: $checkedConvert('description', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$SalesOrderItemToJson(_SalesOrderItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'itemId': instance.itemId,
      'itemName': instance.itemName,
      'quantity': instance.quantity,
      'unitPrice': instance.unitPrice.toJson(),
      'totalPrice': instance.totalPrice.toJson(),
      'description': instance.description,
    };
