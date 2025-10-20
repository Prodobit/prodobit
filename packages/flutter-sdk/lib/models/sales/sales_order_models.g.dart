// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_order_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SalesOrderLineItemImpl _$$SalesOrderLineItemImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SalesOrderLineItemImpl',
      json,
      ($checkedConvert) {
        final val = _$SalesOrderLineItemImpl(
          id: $checkedConvert('id', (v) => v as String),
          salesOrderId: $checkedConvert('salesOrderId', (v) => v as String),
          itemId: $checkedConvert('itemId', (v) => v as String),
          quantity: $checkedConvert('quantity', (v) => (v as num).toDouble()),
          unit: $checkedConvert('unit', (v) => v as String),
          unitPrice: $checkedConvert('unitPrice', (v) => (v as num).toDouble()),
          totalPrice:
              $checkedConvert('totalPrice', (v) => (v as num).toDouble()),
          discountAmount:
              $checkedConvert('discountAmount', (v) => (v as num).toDouble()),
          taxAmount: $checkedConvert('taxAmount', (v) => (v as num).toDouble()),
          netAmount: $checkedConvert('netAmount', (v) => (v as num).toDouble()),
          status: $checkedConvert('status', (v) => v as String),
          sequence: $checkedConvert('sequence', (v) => (v as num?)?.toInt()),
          notes: $checkedConvert('notes', (v) => v as String?),
          requestedDeliveryDate: $checkedConvert('requestedDeliveryDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          confirmedDeliveryDate: $checkedConvert('confirmedDeliveryDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          actualDeliveryDate: $checkedConvert('actualDeliveryDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          shippedQuantity: $checkedConvert(
              'shippedQuantity', (v) => (v as num?)?.toDouble()),
          deliveredQuantity: $checkedConvert(
              'deliveredQuantity', (v) => (v as num?)?.toDouble()),
          returnedQuantity: $checkedConvert(
              'returnedQuantity', (v) => (v as num?)?.toDouble()),
          lotNumber: $checkedConvert('lotNumber', (v) => v as String?),
          serialNumber: $checkedConvert('serialNumber', (v) => v as String?),
          attributes:
              $checkedConvert('attributes', (v) => v as Map<String, dynamic>?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SalesOrderLineItemImplToJson(
        _$SalesOrderLineItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'salesOrderId': instance.salesOrderId,
      'itemId': instance.itemId,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'unitPrice': instance.unitPrice,
      'totalPrice': instance.totalPrice,
      'discountAmount': instance.discountAmount,
      'taxAmount': instance.taxAmount,
      'netAmount': instance.netAmount,
      'status': instance.status,
      'sequence': instance.sequence,
      'notes': instance.notes,
      'requestedDeliveryDate':
          instance.requestedDeliveryDate?.toIso8601String(),
      'confirmedDeliveryDate':
          instance.confirmedDeliveryDate?.toIso8601String(),
      'actualDeliveryDate': instance.actualDeliveryDate?.toIso8601String(),
      'shippedQuantity': instance.shippedQuantity,
      'deliveredQuantity': instance.deliveredQuantity,
      'returnedQuantity': instance.returnedQuantity,
      'lotNumber': instance.lotNumber,
      'serialNumber': instance.serialNumber,
      'attributes': instance.attributes,
      'metadata': instance.metadata,
    };

_$CreateSalesOrderLineItemRequestImpl
    _$$CreateSalesOrderLineItemRequestImplFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$CreateSalesOrderLineItemRequestImpl',
          json,
          ($checkedConvert) {
            final val = _$CreateSalesOrderLineItemRequestImpl(
              itemId: $checkedConvert('itemId', (v) => v as String),
              quantity:
                  $checkedConvert('quantity', (v) => (v as num).toDouble()),
              unit: $checkedConvert('unit', (v) => v as String),
              unitPrice:
                  $checkedConvert('unitPrice', (v) => (v as num).toDouble()),
              discountAmount: $checkedConvert(
                  'discountAmount', (v) => (v as num?)?.toDouble()),
              taxAmount:
                  $checkedConvert('taxAmount', (v) => (v as num?)?.toDouble()),
              sequence:
                  $checkedConvert('sequence', (v) => (v as num?)?.toInt()),
              notes: $checkedConvert('notes', (v) => v as String?),
              requestedDeliveryDate: $checkedConvert('requestedDeliveryDate',
                  (v) => v == null ? null : DateTime.parse(v as String)),
              lotNumber: $checkedConvert('lotNumber', (v) => v as String?),
              serialNumber:
                  $checkedConvert('serialNumber', (v) => v as String?),
              attributes: $checkedConvert(
                  'attributes', (v) => v as Map<String, dynamic>?),
            );
            return val;
          },
        );

Map<String, dynamic> _$$CreateSalesOrderLineItemRequestImplToJson(
        _$CreateSalesOrderLineItemRequestImpl instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'unitPrice': instance.unitPrice,
      'discountAmount': instance.discountAmount,
      'taxAmount': instance.taxAmount,
      'sequence': instance.sequence,
      'notes': instance.notes,
      'requestedDeliveryDate':
          instance.requestedDeliveryDate?.toIso8601String(),
      'lotNumber': instance.lotNumber,
      'serialNumber': instance.serialNumber,
      'attributes': instance.attributes,
    };

_$UpdateSalesOrderLineItemRequestImpl
    _$$UpdateSalesOrderLineItemRequestImplFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$UpdateSalesOrderLineItemRequestImpl',
          json,
          ($checkedConvert) {
            final val = _$UpdateSalesOrderLineItemRequestImpl(
              quantity:
                  $checkedConvert('quantity', (v) => (v as num?)?.toDouble()),
              unit: $checkedConvert('unit', (v) => v as String?),
              unitPrice:
                  $checkedConvert('unitPrice', (v) => (v as num?)?.toDouble()),
              discountAmount: $checkedConvert(
                  'discountAmount', (v) => (v as num?)?.toDouble()),
              taxAmount:
                  $checkedConvert('taxAmount', (v) => (v as num?)?.toDouble()),
              sequence:
                  $checkedConvert('sequence', (v) => (v as num?)?.toInt()),
              notes: $checkedConvert('notes', (v) => v as String?),
              requestedDeliveryDate: $checkedConvert('requestedDeliveryDate',
                  (v) => v == null ? null : DateTime.parse(v as String)),
              confirmedDeliveryDate: $checkedConvert('confirmedDeliveryDate',
                  (v) => v == null ? null : DateTime.parse(v as String)),
              lotNumber: $checkedConvert('lotNumber', (v) => v as String?),
              serialNumber:
                  $checkedConvert('serialNumber', (v) => v as String?),
              attributes: $checkedConvert(
                  'attributes', (v) => v as Map<String, dynamic>?),
            );
            return val;
          },
        );

Map<String, dynamic> _$$UpdateSalesOrderLineItemRequestImplToJson(
        _$UpdateSalesOrderLineItemRequestImpl instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'unit': instance.unit,
      'unitPrice': instance.unitPrice,
      'discountAmount': instance.discountAmount,
      'taxAmount': instance.taxAmount,
      'sequence': instance.sequence,
      'notes': instance.notes,
      'requestedDeliveryDate':
          instance.requestedDeliveryDate?.toIso8601String(),
      'confirmedDeliveryDate':
          instance.confirmedDeliveryDate?.toIso8601String(),
      'lotNumber': instance.lotNumber,
      'serialNumber': instance.serialNumber,
      'attributes': instance.attributes,
    };

_$UpdateSalesOrderStatusRequestImpl
    _$$UpdateSalesOrderStatusRequestImplFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$UpdateSalesOrderStatusRequestImpl',
          json,
          ($checkedConvert) {
            final val = _$UpdateSalesOrderStatusRequestImpl(
              status: $checkedConvert('status', (v) => v as String),
              notes: $checkedConvert('notes', (v) => v as String?),
              statusDate: $checkedConvert('statusDate',
                  (v) => v == null ? null : DateTime.parse(v as String)),
            );
            return val;
          },
        );

Map<String, dynamic> _$$UpdateSalesOrderStatusRequestImplToJson(
        _$UpdateSalesOrderStatusRequestImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'notes': instance.notes,
      'statusDate': instance.statusDate?.toIso8601String(),
    };

_$SalesOrderHistoryImpl _$$SalesOrderHistoryImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SalesOrderHistoryImpl',
      json,
      ($checkedConvert) {
        final val = _$SalesOrderHistoryImpl(
          id: $checkedConvert('id', (v) => v as String),
          salesOrderId: $checkedConvert('salesOrderId', (v) => v as String),
          eventType: $checkedConvert('eventType', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          eventDate:
              $checkedConvert('eventDate', (v) => DateTime.parse(v as String)),
          performedBy: $checkedConvert('performedBy', (v) => v as String?),
          oldValue: $checkedConvert('oldValue', (v) => v as String?),
          newValue: $checkedConvert('newValue', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SalesOrderHistoryImplToJson(
        _$SalesOrderHistoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'salesOrderId': instance.salesOrderId,
      'eventType': instance.eventType,
      'description': instance.description,
      'eventDate': instance.eventDate.toIso8601String(),
      'performedBy': instance.performedBy,
      'oldValue': instance.oldValue,
      'newValue': instance.newValue,
      'notes': instance.notes,
      'metadata': instance.metadata,
    };

_$SalesOrderFiltersImpl _$$SalesOrderFiltersImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SalesOrderFiltersImpl',
      json,
      ($checkedConvert) {
        final val = _$SalesOrderFiltersImpl(
          customerId: $checkedConvert('customerId', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          orderNumber: $checkedConvert('orderNumber', (v) => v as String?),
          orderDateAfter: $checkedConvert('orderDateAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          orderDateBefore: $checkedConvert('orderDateBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          deliveryDateAfter: $checkedConvert('deliveryDateAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          deliveryDateBefore: $checkedConvert('deliveryDateBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          totalAmountMin:
              $checkedConvert('totalAmountMin', (v) => (v as num?)?.toDouble()),
          totalAmountMax:
              $checkedConvert('totalAmountMax', (v) => (v as num?)?.toDouble()),
          createdBy: $checkedConvert('createdBy', (v) => v as String?),
          itemIds: $checkedConvert('itemIds',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          page: $checkedConvert('page', (v) => (v as num?)?.toInt()),
          limit: $checkedConvert('limit', (v) => (v as num?)?.toInt()),
          sortBy: $checkedConvert('sortBy', (v) => v as String?),
          sortOrder: $checkedConvert('sortOrder', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SalesOrderFiltersImplToJson(
        _$SalesOrderFiltersImpl instance) =>
    <String, dynamic>{
      'customerId': instance.customerId,
      'status': instance.status,
      'orderNumber': instance.orderNumber,
      'orderDateAfter': instance.orderDateAfter?.toIso8601String(),
      'orderDateBefore': instance.orderDateBefore?.toIso8601String(),
      'deliveryDateAfter': instance.deliveryDateAfter?.toIso8601String(),
      'deliveryDateBefore': instance.deliveryDateBefore?.toIso8601String(),
      'totalAmountMin': instance.totalAmountMin,
      'totalAmountMax': instance.totalAmountMax,
      'createdBy': instance.createdBy,
      'itemIds': instance.itemIds,
      'page': instance.page,
      'limit': instance.limit,
      'sortBy': instance.sortBy,
      'sortOrder': instance.sortOrder,
    };
