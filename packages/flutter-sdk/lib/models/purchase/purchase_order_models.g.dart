// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_order_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PurchaseOrderImpl _$$PurchaseOrderImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PurchaseOrderImpl',
      json,
      ($checkedConvert) {
        final val = _$PurchaseOrderImpl(
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

Map<String, dynamic> _$$PurchaseOrderImplToJson(_$PurchaseOrderImpl instance) =>
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

_$PurchaseOrderLineItemImpl _$$PurchaseOrderLineItemImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PurchaseOrderLineItemImpl',
      json,
      ($checkedConvert) {
        final val = _$PurchaseOrderLineItemImpl(
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

Map<String, dynamic> _$$PurchaseOrderLineItemImplToJson(
        _$PurchaseOrderLineItemImpl instance) =>
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

_$CreatePurchaseOrderRequestImpl _$$CreatePurchaseOrderRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CreatePurchaseOrderRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$CreatePurchaseOrderRequestImpl(
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

Map<String, dynamic> _$$CreatePurchaseOrderRequestImplToJson(
        _$CreatePurchaseOrderRequestImpl instance) =>
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

_$CreatePurchaseOrderLineItemRequestImpl
    _$$CreatePurchaseOrderLineItemRequestImplFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$CreatePurchaseOrderLineItemRequestImpl',
          json,
          ($checkedConvert) {
            final val = _$CreatePurchaseOrderLineItemRequestImpl(
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

Map<String, dynamic> _$$CreatePurchaseOrderLineItemRequestImplToJson(
        _$CreatePurchaseOrderLineItemRequestImpl instance) =>
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

_$UpdatePurchaseOrderRequestImpl _$$UpdatePurchaseOrderRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$UpdatePurchaseOrderRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$UpdatePurchaseOrderRequestImpl(
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

Map<String, dynamic> _$$UpdatePurchaseOrderRequestImplToJson(
        _$UpdatePurchaseOrderRequestImpl instance) =>
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

_$UpdatePurchaseOrderLineItemRequestImpl
    _$$UpdatePurchaseOrderLineItemRequestImplFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$UpdatePurchaseOrderLineItemRequestImpl',
          json,
          ($checkedConvert) {
            final val = _$UpdatePurchaseOrderLineItemRequestImpl(
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

Map<String, dynamic> _$$UpdatePurchaseOrderLineItemRequestImplToJson(
        _$UpdatePurchaseOrderLineItemRequestImpl instance) =>
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

_$PurchaseOrderFiltersImpl _$$PurchaseOrderFiltersImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PurchaseOrderFiltersImpl',
      json,
      ($checkedConvert) {
        final val = _$PurchaseOrderFiltersImpl(
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

Map<String, dynamic> _$$PurchaseOrderFiltersImplToJson(
        _$PurchaseOrderFiltersImpl instance) =>
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
