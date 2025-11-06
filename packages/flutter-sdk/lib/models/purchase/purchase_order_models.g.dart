// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_order_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PurchaseOrder _$PurchaseOrderFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_PurchaseOrder',
      json,
      ($checkedConvert) {
        final val = _PurchaseOrder(
          id: $checkedConvert('id', (v) => v as String),
          orderNumber: $checkedConvert('orderNumber', (v) => v as String),
          supplierId: $checkedConvert('supplierId', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          orderDate:
              $checkedConvert('orderDate', (v) => DateTime.parse(v as String)),
          totalAmount:
              $checkedConvert('totalAmount', (v) => (v as num).toDouble()),
          taxAmount: $checkedConvert('taxAmount', (v) => (v as num).toDouble()),
          netAmount: $checkedConvert('netAmount', (v) => (v as num).toDouble()),
          createdAt:
              $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
          deliveryDate: $checkedConvert('deliveryDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          acknowledgedAt: $checkedConvert('acknowledgedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          approvedAt: $checkedConvert('approvedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          sentAt: $checkedConvert(
              'sentAt', (v) => v == null ? null : DateTime.parse(v as String)),
          cancelledAt: $checkedConvert('cancelledAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          closedAt: $checkedConvert('closedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          createdBy: $checkedConvert('createdBy', (v) => v as String?),
          approvedBy: $checkedConvert('approvedBy', (v) => v as String?),
          cancelledBy: $checkedConvert('cancelledBy', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          termsAndConditions:
              $checkedConvert('termsAndConditions', (v) => v as String?),
          paymentTerms: $checkedConvert('paymentTerms', (v) => v as String?),
          deliveryAddress:
              $checkedConvert('deliveryAddress', (v) => v as String?),
          billingAddress:
              $checkedConvert('billingAddress', (v) => v as String?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$PurchaseOrderToJson(_PurchaseOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderNumber': instance.orderNumber,
      'supplierId': instance.supplierId,
      'status': instance.status,
      'orderDate': instance.orderDate.toIso8601String(),
      'totalAmount': instance.totalAmount,
      'taxAmount': instance.taxAmount,
      'netAmount': instance.netAmount,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'deliveryDate': instance.deliveryDate?.toIso8601String(),
      'acknowledgedAt': instance.acknowledgedAt?.toIso8601String(),
      'approvedAt': instance.approvedAt?.toIso8601String(),
      'sentAt': instance.sentAt?.toIso8601String(),
      'cancelledAt': instance.cancelledAt?.toIso8601String(),
      'closedAt': instance.closedAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'approvedBy': instance.approvedBy,
      'cancelledBy': instance.cancelledBy,
      'notes': instance.notes,
      'termsAndConditions': instance.termsAndConditions,
      'paymentTerms': instance.paymentTerms,
      'deliveryAddress': instance.deliveryAddress,
      'billingAddress': instance.billingAddress,
      'metadata': instance.metadata,
    };

_PurchaseOrderLineItem _$PurchaseOrderLineItemFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_PurchaseOrderLineItem',
      json,
      ($checkedConvert) {
        final val = _PurchaseOrderLineItem(
          id: $checkedConvert('id', (v) => v as String),
          purchaseOrderId:
              $checkedConvert('purchaseOrderId', (v) => v as String),
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
          requestedDeliveryDate: $checkedConvert('requestedDeliveryDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          confirmedDeliveryDate: $checkedConvert('confirmedDeliveryDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          receivedQuantity: $checkedConvert(
              'receivedQuantity', (v) => (v as num?)?.toDouble()),
          returnedQuantity: $checkedConvert(
              'returnedQuantity', (v) => (v as num?)?.toDouble()),
          notes: $checkedConvert('notes', (v) => v as String?),
          specification: $checkedConvert('specification', (v) => v as String?),
          attributes:
              $checkedConvert('attributes', (v) => v as Map<String, dynamic>?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$PurchaseOrderLineItemToJson(
        _PurchaseOrderLineItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'purchaseOrderId': instance.purchaseOrderId,
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
      'requestedDeliveryDate':
          instance.requestedDeliveryDate?.toIso8601String(),
      'confirmedDeliveryDate':
          instance.confirmedDeliveryDate?.toIso8601String(),
      'receivedQuantity': instance.receivedQuantity,
      'returnedQuantity': instance.returnedQuantity,
      'notes': instance.notes,
      'specification': instance.specification,
      'attributes': instance.attributes,
      'metadata': instance.metadata,
    };

_CreatePurchaseOrderRequest _$CreatePurchaseOrderRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_CreatePurchaseOrderRequest',
      json,
      ($checkedConvert) {
        final val = _CreatePurchaseOrderRequest(
          supplierId: $checkedConvert('supplierId', (v) => v as String),
          orderDate:
              $checkedConvert('orderDate', (v) => DateTime.parse(v as String)),
          deliveryDate: $checkedConvert('deliveryDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          notes: $checkedConvert('notes', (v) => v as String?),
          termsAndConditions:
              $checkedConvert('termsAndConditions', (v) => v as String?),
          paymentTerms: $checkedConvert('paymentTerms', (v) => v as String?),
          deliveryAddress:
              $checkedConvert('deliveryAddress', (v) => v as String?),
          billingAddress:
              $checkedConvert('billingAddress', (v) => v as String?),
          lineItems: $checkedConvert(
              'lineItems',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => CreatePurchaseOrderLineItemRequest.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$CreatePurchaseOrderRequestToJson(
        _CreatePurchaseOrderRequest instance) =>
    <String, dynamic>{
      'supplierId': instance.supplierId,
      'orderDate': instance.orderDate.toIso8601String(),
      'deliveryDate': instance.deliveryDate?.toIso8601String(),
      'notes': instance.notes,
      'termsAndConditions': instance.termsAndConditions,
      'paymentTerms': instance.paymentTerms,
      'deliveryAddress': instance.deliveryAddress,
      'billingAddress': instance.billingAddress,
      'lineItems': instance.lineItems?.map((e) => e.toJson()).toList(),
      'metadata': instance.metadata,
    };

_CreatePurchaseOrderLineItemRequest
    _$CreatePurchaseOrderLineItemRequestFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          '_CreatePurchaseOrderLineItemRequest',
          json,
          ($checkedConvert) {
            final val = _CreatePurchaseOrderLineItemRequest(
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
              requestedDeliveryDate: $checkedConvert('requestedDeliveryDate',
                  (v) => v == null ? null : DateTime.parse(v as String)),
              notes: $checkedConvert('notes', (v) => v as String?),
              specification:
                  $checkedConvert('specification', (v) => v as String?),
              attributes: $checkedConvert(
                  'attributes', (v) => v as Map<String, dynamic>?),
            );
            return val;
          },
        );

Map<String, dynamic> _$CreatePurchaseOrderLineItemRequestToJson(
        _CreatePurchaseOrderLineItemRequest instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'unitPrice': instance.unitPrice,
      'discountAmount': instance.discountAmount,
      'taxAmount': instance.taxAmount,
      'sequence': instance.sequence,
      'requestedDeliveryDate':
          instance.requestedDeliveryDate?.toIso8601String(),
      'notes': instance.notes,
      'specification': instance.specification,
      'attributes': instance.attributes,
    };

_UpdatePurchaseOrderRequest _$UpdatePurchaseOrderRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_UpdatePurchaseOrderRequest',
      json,
      ($checkedConvert) {
        final val = _UpdatePurchaseOrderRequest(
          orderDate: $checkedConvert('orderDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          deliveryDate: $checkedConvert('deliveryDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          notes: $checkedConvert('notes', (v) => v as String?),
          termsAndConditions:
              $checkedConvert('termsAndConditions', (v) => v as String?),
          paymentTerms: $checkedConvert('paymentTerms', (v) => v as String?),
          deliveryAddress:
              $checkedConvert('deliveryAddress', (v) => v as String?),
          billingAddress:
              $checkedConvert('billingAddress', (v) => v as String?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$UpdatePurchaseOrderRequestToJson(
        _UpdatePurchaseOrderRequest instance) =>
    <String, dynamic>{
      'orderDate': instance.orderDate?.toIso8601String(),
      'deliveryDate': instance.deliveryDate?.toIso8601String(),
      'notes': instance.notes,
      'termsAndConditions': instance.termsAndConditions,
      'paymentTerms': instance.paymentTerms,
      'deliveryAddress': instance.deliveryAddress,
      'billingAddress': instance.billingAddress,
      'metadata': instance.metadata,
    };

_UpdatePurchaseOrderLineItemRequest
    _$UpdatePurchaseOrderLineItemRequestFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          '_UpdatePurchaseOrderLineItemRequest',
          json,
          ($checkedConvert) {
            final val = _UpdatePurchaseOrderLineItemRequest(
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
              requestedDeliveryDate: $checkedConvert('requestedDeliveryDate',
                  (v) => v == null ? null : DateTime.parse(v as String)),
              confirmedDeliveryDate: $checkedConvert('confirmedDeliveryDate',
                  (v) => v == null ? null : DateTime.parse(v as String)),
              notes: $checkedConvert('notes', (v) => v as String?),
              specification:
                  $checkedConvert('specification', (v) => v as String?),
              attributes: $checkedConvert(
                  'attributes', (v) => v as Map<String, dynamic>?),
            );
            return val;
          },
        );

Map<String, dynamic> _$UpdatePurchaseOrderLineItemRequestToJson(
        _UpdatePurchaseOrderLineItemRequest instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'unit': instance.unit,
      'unitPrice': instance.unitPrice,
      'discountAmount': instance.discountAmount,
      'taxAmount': instance.taxAmount,
      'sequence': instance.sequence,
      'requestedDeliveryDate':
          instance.requestedDeliveryDate?.toIso8601String(),
      'confirmedDeliveryDate':
          instance.confirmedDeliveryDate?.toIso8601String(),
      'notes': instance.notes,
      'specification': instance.specification,
      'attributes': instance.attributes,
    };

_PurchaseOrderFilters _$PurchaseOrderFiltersFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_PurchaseOrderFilters',
      json,
      ($checkedConvert) {
        final val = _PurchaseOrderFilters(
          supplierId: $checkedConvert('supplierId', (v) => v as String?),
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

Map<String, dynamic> _$PurchaseOrderFiltersToJson(
        _PurchaseOrderFilters instance) =>
    <String, dynamic>{
      'supplierId': instance.supplierId,
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
