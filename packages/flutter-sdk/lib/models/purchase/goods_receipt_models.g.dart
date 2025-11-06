// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goods_receipt_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GoodsReceipt _$GoodsReceiptFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_GoodsReceipt',
      json,
      ($checkedConvert) {
        final val = _GoodsReceipt(
          id: $checkedConvert('id', (v) => v as String),
          receiptNumber: $checkedConvert('receiptNumber', (v) => v as String),
          purchaseOrderId:
              $checkedConvert('purchaseOrderId', (v) => v as String),
          supplierId: $checkedConvert('supplierId', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          receiptDate: $checkedConvert(
              'receiptDate', (v) => DateTime.parse(v as String)),
          createdAt:
              $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
          inspectedAt: $checkedConvert('inspectedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          acceptedAt: $checkedConvert('acceptedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          rejectedAt: $checkedConvert('rejectedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          postedAt: $checkedConvert('postedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          receivedBy: $checkedConvert('receivedBy', (v) => v as String?),
          inspectedBy: $checkedConvert('inspectedBy', (v) => v as String?),
          acceptedBy: $checkedConvert('acceptedBy', (v) => v as String?),
          rejectedBy: $checkedConvert('rejectedBy', (v) => v as String?),
          postedBy: $checkedConvert('postedBy', (v) => v as String?),
          deliveryNote: $checkedConvert('deliveryNote', (v) => v as String?),
          invoiceNumber: $checkedConvert('invoiceNumber', (v) => v as String?),
          transportCompany:
              $checkedConvert('transportCompany', (v) => v as String?),
          vehicleNumber: $checkedConvert('vehicleNumber', (v) => v as String?),
          driverName: $checkedConvert('driverName', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          inspectionNotes:
              $checkedConvert('inspectionNotes', (v) => v as String?),
          rejectionReason:
              $checkedConvert('rejectionReason', (v) => v as String?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$GoodsReceiptToJson(_GoodsReceipt instance) =>
    <String, dynamic>{
      'id': instance.id,
      'receiptNumber': instance.receiptNumber,
      'purchaseOrderId': instance.purchaseOrderId,
      'supplierId': instance.supplierId,
      'status': instance.status,
      'receiptDate': instance.receiptDate.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'inspectedAt': instance.inspectedAt?.toIso8601String(),
      'acceptedAt': instance.acceptedAt?.toIso8601String(),
      'rejectedAt': instance.rejectedAt?.toIso8601String(),
      'postedAt': instance.postedAt?.toIso8601String(),
      'receivedBy': instance.receivedBy,
      'inspectedBy': instance.inspectedBy,
      'acceptedBy': instance.acceptedBy,
      'rejectedBy': instance.rejectedBy,
      'postedBy': instance.postedBy,
      'deliveryNote': instance.deliveryNote,
      'invoiceNumber': instance.invoiceNumber,
      'transportCompany': instance.transportCompany,
      'vehicleNumber': instance.vehicleNumber,
      'driverName': instance.driverName,
      'notes': instance.notes,
      'inspectionNotes': instance.inspectionNotes,
      'rejectionReason': instance.rejectionReason,
      'metadata': instance.metadata,
    };

_GoodsReceiptLineItem _$GoodsReceiptLineItemFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_GoodsReceiptLineItem',
      json,
      ($checkedConvert) {
        final val = _GoodsReceiptLineItem(
          id: $checkedConvert('id', (v) => v as String),
          goodsReceiptId: $checkedConvert('goodsReceiptId', (v) => v as String),
          purchaseOrderLineItemId:
              $checkedConvert('purchaseOrderLineItemId', (v) => v as String),
          itemId: $checkedConvert('itemId', (v) => v as String),
          orderedQuantity:
              $checkedConvert('orderedQuantity', (v) => (v as num).toDouble()),
          receivedQuantity:
              $checkedConvert('receivedQuantity', (v) => (v as num).toDouble()),
          acceptedQuantity:
              $checkedConvert('acceptedQuantity', (v) => (v as num).toDouble()),
          rejectedQuantity:
              $checkedConvert('rejectedQuantity', (v) => (v as num).toDouble()),
          unit: $checkedConvert('unit', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          sequence: $checkedConvert('sequence', (v) => (v as num?)?.toInt()),
          lotNumber: $checkedConvert('lotNumber', (v) => v as String?),
          serialNumber: $checkedConvert('serialNumber', (v) => v as String?),
          expiryDate: $checkedConvert('expiryDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          condition: $checkedConvert('condition', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          inspectionNotes:
              $checkedConvert('inspectionNotes', (v) => v as String?),
          rejectionReason:
              $checkedConvert('rejectionReason', (v) => v as String?),
          storageLocation:
              $checkedConvert('storageLocation', (v) => v as String?),
          qualityMetrics: $checkedConvert(
              'qualityMetrics', (v) => v as Map<String, dynamic>?),
          attributes:
              $checkedConvert('attributes', (v) => v as Map<String, dynamic>?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$GoodsReceiptLineItemToJson(
        _GoodsReceiptLineItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'goodsReceiptId': instance.goodsReceiptId,
      'purchaseOrderLineItemId': instance.purchaseOrderLineItemId,
      'itemId': instance.itemId,
      'orderedQuantity': instance.orderedQuantity,
      'receivedQuantity': instance.receivedQuantity,
      'acceptedQuantity': instance.acceptedQuantity,
      'rejectedQuantity': instance.rejectedQuantity,
      'unit': instance.unit,
      'status': instance.status,
      'sequence': instance.sequence,
      'lotNumber': instance.lotNumber,
      'serialNumber': instance.serialNumber,
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'condition': instance.condition,
      'notes': instance.notes,
      'inspectionNotes': instance.inspectionNotes,
      'rejectionReason': instance.rejectionReason,
      'storageLocation': instance.storageLocation,
      'qualityMetrics': instance.qualityMetrics,
      'attributes': instance.attributes,
      'metadata': instance.metadata,
    };

_CreateGoodsReceiptRequest _$CreateGoodsReceiptRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_CreateGoodsReceiptRequest',
      json,
      ($checkedConvert) {
        final val = _CreateGoodsReceiptRequest(
          purchaseOrderId:
              $checkedConvert('purchaseOrderId', (v) => v as String),
          receiptDate: $checkedConvert(
              'receiptDate', (v) => DateTime.parse(v as String)),
          deliveryNote: $checkedConvert('deliveryNote', (v) => v as String?),
          invoiceNumber: $checkedConvert('invoiceNumber', (v) => v as String?),
          transportCompany:
              $checkedConvert('transportCompany', (v) => v as String?),
          vehicleNumber: $checkedConvert('vehicleNumber', (v) => v as String?),
          driverName: $checkedConvert('driverName', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          lineItems: $checkedConvert(
              'lineItems',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => CreateGoodsReceiptLineItemRequest.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$CreateGoodsReceiptRequestToJson(
        _CreateGoodsReceiptRequest instance) =>
    <String, dynamic>{
      'purchaseOrderId': instance.purchaseOrderId,
      'receiptDate': instance.receiptDate.toIso8601String(),
      'deliveryNote': instance.deliveryNote,
      'invoiceNumber': instance.invoiceNumber,
      'transportCompany': instance.transportCompany,
      'vehicleNumber': instance.vehicleNumber,
      'driverName': instance.driverName,
      'notes': instance.notes,
      'lineItems': instance.lineItems?.map((e) => e.toJson()).toList(),
      'metadata': instance.metadata,
    };

_CreateGoodsReceiptLineItemRequest _$CreateGoodsReceiptLineItemRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_CreateGoodsReceiptLineItemRequest',
      json,
      ($checkedConvert) {
        final val = _CreateGoodsReceiptLineItemRequest(
          purchaseOrderLineItemId:
              $checkedConvert('purchaseOrderLineItemId', (v) => v as String),
          receivedQuantity:
              $checkedConvert('receivedQuantity', (v) => (v as num).toDouble()),
          lotNumber: $checkedConvert('lotNumber', (v) => v as String?),
          serialNumber: $checkedConvert('serialNumber', (v) => v as String?),
          expiryDate: $checkedConvert('expiryDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          condition: $checkedConvert('condition', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          storageLocation:
              $checkedConvert('storageLocation', (v) => v as String?),
          qualityMetrics: $checkedConvert(
              'qualityMetrics', (v) => v as Map<String, dynamic>?),
          attributes:
              $checkedConvert('attributes', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$CreateGoodsReceiptLineItemRequestToJson(
        _CreateGoodsReceiptLineItemRequest instance) =>
    <String, dynamic>{
      'purchaseOrderLineItemId': instance.purchaseOrderLineItemId,
      'receivedQuantity': instance.receivedQuantity,
      'lotNumber': instance.lotNumber,
      'serialNumber': instance.serialNumber,
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'condition': instance.condition,
      'notes': instance.notes,
      'storageLocation': instance.storageLocation,
      'qualityMetrics': instance.qualityMetrics,
      'attributes': instance.attributes,
    };

_UpdateGoodsReceiptRequest _$UpdateGoodsReceiptRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_UpdateGoodsReceiptRequest',
      json,
      ($checkedConvert) {
        final val = _UpdateGoodsReceiptRequest(
          receiptDate: $checkedConvert('receiptDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          deliveryNote: $checkedConvert('deliveryNote', (v) => v as String?),
          invoiceNumber: $checkedConvert('invoiceNumber', (v) => v as String?),
          transportCompany:
              $checkedConvert('transportCompany', (v) => v as String?),
          vehicleNumber: $checkedConvert('vehicleNumber', (v) => v as String?),
          driverName: $checkedConvert('driverName', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$UpdateGoodsReceiptRequestToJson(
        _UpdateGoodsReceiptRequest instance) =>
    <String, dynamic>{
      'receiptDate': instance.receiptDate?.toIso8601String(),
      'deliveryNote': instance.deliveryNote,
      'invoiceNumber': instance.invoiceNumber,
      'transportCompany': instance.transportCompany,
      'vehicleNumber': instance.vehicleNumber,
      'driverName': instance.driverName,
      'notes': instance.notes,
      'metadata': instance.metadata,
    };

_UpdateGoodsReceiptLineItemRequest _$UpdateGoodsReceiptLineItemRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_UpdateGoodsReceiptLineItemRequest',
      json,
      ($checkedConvert) {
        final val = _UpdateGoodsReceiptLineItemRequest(
          receivedQuantity: $checkedConvert(
              'receivedQuantity', (v) => (v as num?)?.toDouble()),
          acceptedQuantity: $checkedConvert(
              'acceptedQuantity', (v) => (v as num?)?.toDouble()),
          rejectedQuantity: $checkedConvert(
              'rejectedQuantity', (v) => (v as num?)?.toDouble()),
          lotNumber: $checkedConvert('lotNumber', (v) => v as String?),
          serialNumber: $checkedConvert('serialNumber', (v) => v as String?),
          expiryDate: $checkedConvert('expiryDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          condition: $checkedConvert('condition', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          inspectionNotes:
              $checkedConvert('inspectionNotes', (v) => v as String?),
          rejectionReason:
              $checkedConvert('rejectionReason', (v) => v as String?),
          storageLocation:
              $checkedConvert('storageLocation', (v) => v as String?),
          qualityMetrics: $checkedConvert(
              'qualityMetrics', (v) => v as Map<String, dynamic>?),
          attributes:
              $checkedConvert('attributes', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$UpdateGoodsReceiptLineItemRequestToJson(
        _UpdateGoodsReceiptLineItemRequest instance) =>
    <String, dynamic>{
      'receivedQuantity': instance.receivedQuantity,
      'acceptedQuantity': instance.acceptedQuantity,
      'rejectedQuantity': instance.rejectedQuantity,
      'lotNumber': instance.lotNumber,
      'serialNumber': instance.serialNumber,
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'condition': instance.condition,
      'notes': instance.notes,
      'inspectionNotes': instance.inspectionNotes,
      'rejectionReason': instance.rejectionReason,
      'storageLocation': instance.storageLocation,
      'qualityMetrics': instance.qualityMetrics,
      'attributes': instance.attributes,
    };

_GoodsReceiptFilters _$GoodsReceiptFiltersFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_GoodsReceiptFilters',
      json,
      ($checkedConvert) {
        final val = _GoodsReceiptFilters(
          purchaseOrderId:
              $checkedConvert('purchaseOrderId', (v) => v as String?),
          supplierId: $checkedConvert('supplierId', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          receivedBy: $checkedConvert('receivedBy', (v) => v as String?),
          receiptDateAfter: $checkedConvert('receiptDateAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          receiptDateBefore: $checkedConvert('receiptDateBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          createdAfter: $checkedConvert('createdAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          createdBefore: $checkedConvert('createdBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
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

Map<String, dynamic> _$GoodsReceiptFiltersToJson(
        _GoodsReceiptFilters instance) =>
    <String, dynamic>{
      'purchaseOrderId': instance.purchaseOrderId,
      'supplierId': instance.supplierId,
      'status': instance.status,
      'receivedBy': instance.receivedBy,
      'receiptDateAfter': instance.receiptDateAfter?.toIso8601String(),
      'receiptDateBefore': instance.receiptDateBefore?.toIso8601String(),
      'createdAfter': instance.createdAfter?.toIso8601String(),
      'createdBefore': instance.createdBefore?.toIso8601String(),
      'itemIds': instance.itemIds,
      'page': instance.page,
      'limit': instance.limit,
      'sortBy': instance.sortBy,
      'sortOrder': instance.sortOrder,
    };

_InspectGoodsReceiptRequest _$InspectGoodsReceiptRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_InspectGoodsReceiptRequest',
      json,
      ($checkedConvert) {
        final val = _InspectGoodsReceiptRequest(
          inspectionNotes:
              $checkedConvert('inspectionNotes', (v) => v as String?),
          qualityMetrics: $checkedConvert(
              'qualityMetrics', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$InspectGoodsReceiptRequestToJson(
        _InspectGoodsReceiptRequest instance) =>
    <String, dynamic>{
      'inspectionNotes': instance.inspectionNotes,
      'qualityMetrics': instance.qualityMetrics,
    };

_AcceptGoodsReceiptRequest _$AcceptGoodsReceiptRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_AcceptGoodsReceiptRequest',
      json,
      ($checkedConvert) {
        final val = _AcceptGoodsReceiptRequest(
          notes: $checkedConvert('notes', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$AcceptGoodsReceiptRequestToJson(
        _AcceptGoodsReceiptRequest instance) =>
    <String, dynamic>{
      'notes': instance.notes,
    };

_RejectGoodsReceiptRequest _$RejectGoodsReceiptRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_RejectGoodsReceiptRequest',
      json,
      ($checkedConvert) {
        final val = _RejectGoodsReceiptRequest(
          reason: $checkedConvert('reason', (v) => v as String),
          notes: $checkedConvert('notes', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$RejectGoodsReceiptRequestToJson(
        _RejectGoodsReceiptRequest instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'notes': instance.notes,
    };
