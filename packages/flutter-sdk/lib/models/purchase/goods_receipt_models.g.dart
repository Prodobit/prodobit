// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goods_receipt_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoodsReceiptImpl _$$GoodsReceiptImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$GoodsReceiptImpl',
      json,
      ($checkedConvert) {
        final val = _$GoodsReceiptImpl(
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

Map<String, dynamic> _$$GoodsReceiptImplToJson(_$GoodsReceiptImpl instance) =>
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

_$GoodsReceiptLineItemImpl _$$GoodsReceiptLineItemImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$GoodsReceiptLineItemImpl',
      json,
      ($checkedConvert) {
        final val = _$GoodsReceiptLineItemImpl(
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

Map<String, dynamic> _$$GoodsReceiptLineItemImplToJson(
        _$GoodsReceiptLineItemImpl instance) =>
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

_$CreateGoodsReceiptRequestImpl _$$CreateGoodsReceiptRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CreateGoodsReceiptRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$CreateGoodsReceiptRequestImpl(
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

Map<String, dynamic> _$$CreateGoodsReceiptRequestImplToJson(
        _$CreateGoodsReceiptRequestImpl instance) =>
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

_$CreateGoodsReceiptLineItemRequestImpl
    _$$CreateGoodsReceiptLineItemRequestImplFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$CreateGoodsReceiptLineItemRequestImpl',
          json,
          ($checkedConvert) {
            final val = _$CreateGoodsReceiptLineItemRequestImpl(
              purchaseOrderLineItemId: $checkedConvert(
                  'purchaseOrderLineItemId', (v) => v as String),
              receivedQuantity: $checkedConvert(
                  'receivedQuantity', (v) => (v as num).toDouble()),
              lotNumber: $checkedConvert('lotNumber', (v) => v as String?),
              serialNumber:
                  $checkedConvert('serialNumber', (v) => v as String?),
              expiryDate: $checkedConvert('expiryDate',
                  (v) => v == null ? null : DateTime.parse(v as String)),
              condition: $checkedConvert('condition', (v) => v as String?),
              notes: $checkedConvert('notes', (v) => v as String?),
              storageLocation:
                  $checkedConvert('storageLocation', (v) => v as String?),
              qualityMetrics: $checkedConvert(
                  'qualityMetrics', (v) => v as Map<String, dynamic>?),
              attributes: $checkedConvert(
                  'attributes', (v) => v as Map<String, dynamic>?),
            );
            return val;
          },
        );

Map<String, dynamic> _$$CreateGoodsReceiptLineItemRequestImplToJson(
        _$CreateGoodsReceiptLineItemRequestImpl instance) =>
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

_$UpdateGoodsReceiptRequestImpl _$$UpdateGoodsReceiptRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$UpdateGoodsReceiptRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$UpdateGoodsReceiptRequestImpl(
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

Map<String, dynamic> _$$UpdateGoodsReceiptRequestImplToJson(
        _$UpdateGoodsReceiptRequestImpl instance) =>
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

_$UpdateGoodsReceiptLineItemRequestImpl
    _$$UpdateGoodsReceiptLineItemRequestImplFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$UpdateGoodsReceiptLineItemRequestImpl',
          json,
          ($checkedConvert) {
            final val = _$UpdateGoodsReceiptLineItemRequestImpl(
              receivedQuantity: $checkedConvert(
                  'receivedQuantity', (v) => (v as num?)?.toDouble()),
              acceptedQuantity: $checkedConvert(
                  'acceptedQuantity', (v) => (v as num?)?.toDouble()),
              rejectedQuantity: $checkedConvert(
                  'rejectedQuantity', (v) => (v as num?)?.toDouble()),
              lotNumber: $checkedConvert('lotNumber', (v) => v as String?),
              serialNumber:
                  $checkedConvert('serialNumber', (v) => v as String?),
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
              attributes: $checkedConvert(
                  'attributes', (v) => v as Map<String, dynamic>?),
            );
            return val;
          },
        );

Map<String, dynamic> _$$UpdateGoodsReceiptLineItemRequestImplToJson(
        _$UpdateGoodsReceiptLineItemRequestImpl instance) =>
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

_$GoodsReceiptFiltersImpl _$$GoodsReceiptFiltersImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$GoodsReceiptFiltersImpl',
      json,
      ($checkedConvert) {
        final val = _$GoodsReceiptFiltersImpl(
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

Map<String, dynamic> _$$GoodsReceiptFiltersImplToJson(
        _$GoodsReceiptFiltersImpl instance) =>
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

_$InspectGoodsReceiptRequestImpl _$$InspectGoodsReceiptRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$InspectGoodsReceiptRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$InspectGoodsReceiptRequestImpl(
          inspectionNotes:
              $checkedConvert('inspectionNotes', (v) => v as String?),
          qualityMetrics: $checkedConvert(
              'qualityMetrics', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$InspectGoodsReceiptRequestImplToJson(
        _$InspectGoodsReceiptRequestImpl instance) =>
    <String, dynamic>{
      'inspectionNotes': instance.inspectionNotes,
      'qualityMetrics': instance.qualityMetrics,
    };

_$AcceptGoodsReceiptRequestImpl _$$AcceptGoodsReceiptRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$AcceptGoodsReceiptRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$AcceptGoodsReceiptRequestImpl(
          notes: $checkedConvert('notes', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AcceptGoodsReceiptRequestImplToJson(
        _$AcceptGoodsReceiptRequestImpl instance) =>
    <String, dynamic>{
      'notes': instance.notes,
    };

_$RejectGoodsReceiptRequestImpl _$$RejectGoodsReceiptRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$RejectGoodsReceiptRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$RejectGoodsReceiptRequestImpl(
          reason: $checkedConvert('reason', (v) => v as String),
          notes: $checkedConvert('notes', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$RejectGoodsReceiptRequestImplToJson(
        _$RejectGoodsReceiptRequestImpl instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'notes': instance.notes,
    };
