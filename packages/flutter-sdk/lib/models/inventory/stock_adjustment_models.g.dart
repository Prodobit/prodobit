// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_adjustment_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockAdjustmentImpl _$$StockAdjustmentImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$StockAdjustmentImpl',
      json,
      ($checkedConvert) {
        final val = _$StockAdjustmentImpl(
          id: $checkedConvert('id', (v) => v as String),
          itemId: $checkedConvert('itemId', (v) => v as String),
          locationId: $checkedConvert('locationId', (v) => v as String),
          quantity: $checkedConvert('quantity', (v) => (v as num).toDouble()),
          value: $checkedConvert('value', (v) => (v as num).toDouble()),
          type: $checkedConvert('type', (v) => v as String),
          reason: $checkedConvert('reason', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          createdAt:
              $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
          referenceNumber:
              $checkedConvert('referenceNumber', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          createdBy: $checkedConvert('createdBy', (v) => v as String?),
          approvedBy: $checkedConvert('approvedBy', (v) => v as String?),
          rejectedBy: $checkedConvert('rejectedBy', (v) => v as String?),
          postedBy: $checkedConvert('postedBy', (v) => v as String?),
          approvedAt: $checkedConvert('approvedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          rejectedAt: $checkedConvert('rejectedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          postedAt: $checkedConvert('postedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          rejectionReason:
              $checkedConvert('rejectionReason', (v) => v as String?),
          lotNumber: $checkedConvert('lotNumber', (v) => v as String?),
          serialNumber: $checkedConvert('serialNumber', (v) => v as String?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$StockAdjustmentImplToJson(
        _$StockAdjustmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'itemId': instance.itemId,
      'locationId': instance.locationId,
      'quantity': instance.quantity,
      'value': instance.value,
      'type': instance.type,
      'reason': instance.reason,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'referenceNumber': instance.referenceNumber,
      'notes': instance.notes,
      'createdBy': instance.createdBy,
      'approvedBy': instance.approvedBy,
      'rejectedBy': instance.rejectedBy,
      'postedBy': instance.postedBy,
      'approvedAt': instance.approvedAt?.toIso8601String(),
      'rejectedAt': instance.rejectedAt?.toIso8601String(),
      'postedAt': instance.postedAt?.toIso8601String(),
      'rejectionReason': instance.rejectionReason,
      'lotNumber': instance.lotNumber,
      'serialNumber': instance.serialNumber,
      'metadata': instance.metadata,
    };

_$StockAdjustmentItemImpl _$$StockAdjustmentItemImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$StockAdjustmentItemImpl',
      json,
      ($checkedConvert) {
        final val = _$StockAdjustmentItemImpl(
          id: $checkedConvert('id', (v) => v as String),
          stockAdjustmentId:
              $checkedConvert('stockAdjustmentId', (v) => v as String),
          itemId: $checkedConvert('itemId', (v) => v as String),
          locationId: $checkedConvert('locationId', (v) => v as String),
          quantity: $checkedConvert('quantity', (v) => (v as num).toDouble()),
          unitCost: $checkedConvert('unitCost', (v) => (v as num).toDouble()),
          totalValue:
              $checkedConvert('totalValue', (v) => (v as num).toDouble()),
          reason: $checkedConvert('reason', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          lotNumber: $checkedConvert('lotNumber', (v) => v as String?),
          serialNumber: $checkedConvert('serialNumber', (v) => v as String?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$StockAdjustmentItemImplToJson(
        _$StockAdjustmentItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stockAdjustmentId': instance.stockAdjustmentId,
      'itemId': instance.itemId,
      'locationId': instance.locationId,
      'quantity': instance.quantity,
      'unitCost': instance.unitCost,
      'totalValue': instance.totalValue,
      'reason': instance.reason,
      'notes': instance.notes,
      'lotNumber': instance.lotNumber,
      'serialNumber': instance.serialNumber,
      'metadata': instance.metadata,
    };

_$CreateStockAdjustmentRequestImpl _$$CreateStockAdjustmentRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CreateStockAdjustmentRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$CreateStockAdjustmentRequestImpl(
          itemId: $checkedConvert('itemId', (v) => v as String),
          locationId: $checkedConvert('locationId', (v) => v as String),
          quantity: $checkedConvert('quantity', (v) => (v as num).toDouble()),
          type: $checkedConvert('type', (v) => v as String),
          reason: $checkedConvert('reason', (v) => v as String),
          referenceNumber:
              $checkedConvert('referenceNumber', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          lotNumber: $checkedConvert('lotNumber', (v) => v as String?),
          serialNumber: $checkedConvert('serialNumber', (v) => v as String?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CreateStockAdjustmentRequestImplToJson(
        _$CreateStockAdjustmentRequestImpl instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'locationId': instance.locationId,
      'quantity': instance.quantity,
      'type': instance.type,
      'reason': instance.reason,
      'referenceNumber': instance.referenceNumber,
      'notes': instance.notes,
      'lotNumber': instance.lotNumber,
      'serialNumber': instance.serialNumber,
      'metadata': instance.metadata,
    };

_$UpdateStockAdjustmentRequestImpl _$$UpdateStockAdjustmentRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$UpdateStockAdjustmentRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$UpdateStockAdjustmentRequestImpl(
          quantity: $checkedConvert('quantity', (v) => (v as num?)?.toDouble()),
          reason: $checkedConvert('reason', (v) => v as String?),
          referenceNumber:
              $checkedConvert('referenceNumber', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          lotNumber: $checkedConvert('lotNumber', (v) => v as String?),
          serialNumber: $checkedConvert('serialNumber', (v) => v as String?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$UpdateStockAdjustmentRequestImplToJson(
        _$UpdateStockAdjustmentRequestImpl instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'reason': instance.reason,
      'referenceNumber': instance.referenceNumber,
      'notes': instance.notes,
      'lotNumber': instance.lotNumber,
      'serialNumber': instance.serialNumber,
      'metadata': instance.metadata,
    };

_$StockAdjustmentFiltersImpl _$$StockAdjustmentFiltersImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$StockAdjustmentFiltersImpl',
      json,
      ($checkedConvert) {
        final val = _$StockAdjustmentFiltersImpl(
          itemId: $checkedConvert('itemId', (v) => v as String?),
          locationId: $checkedConvert('locationId', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String?),
          reason: $checkedConvert('reason', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          createdBy: $checkedConvert('createdBy', (v) => v as String?),
          approvedBy: $checkedConvert('approvedBy', (v) => v as String?),
          createdAfter: $checkedConvert('createdAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          createdBefore: $checkedConvert('createdBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          approvedAfter: $checkedConvert('approvedAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          approvedBefore: $checkedConvert('approvedBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          postedAfter: $checkedConvert('postedAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          postedBefore: $checkedConvert('postedBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          page: $checkedConvert('page', (v) => (v as num?)?.toInt()),
          limit: $checkedConvert('limit', (v) => (v as num?)?.toInt()),
          sortBy: $checkedConvert('sortBy', (v) => v as String?),
          sortOrder: $checkedConvert('sortOrder', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$StockAdjustmentFiltersImplToJson(
        _$StockAdjustmentFiltersImpl instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'locationId': instance.locationId,
      'type': instance.type,
      'reason': instance.reason,
      'status': instance.status,
      'createdBy': instance.createdBy,
      'approvedBy': instance.approvedBy,
      'createdAfter': instance.createdAfter?.toIso8601String(),
      'createdBefore': instance.createdBefore?.toIso8601String(),
      'approvedAfter': instance.approvedAfter?.toIso8601String(),
      'approvedBefore': instance.approvedBefore?.toIso8601String(),
      'postedAfter': instance.postedAfter?.toIso8601String(),
      'postedBefore': instance.postedBefore?.toIso8601String(),
      'page': instance.page,
      'limit': instance.limit,
      'sortBy': instance.sortBy,
      'sortOrder': instance.sortOrder,
    };

_$ApproveStockAdjustmentRequestImpl
    _$$ApproveStockAdjustmentRequestImplFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$ApproveStockAdjustmentRequestImpl',
          json,
          ($checkedConvert) {
            final val = _$ApproveStockAdjustmentRequestImpl(
              notes: $checkedConvert('notes', (v) => v as String?),
            );
            return val;
          },
        );

Map<String, dynamic> _$$ApproveStockAdjustmentRequestImplToJson(
        _$ApproveStockAdjustmentRequestImpl instance) =>
    <String, dynamic>{
      'notes': instance.notes,
    };

_$RejectStockAdjustmentRequestImpl _$$RejectStockAdjustmentRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$RejectStockAdjustmentRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$RejectStockAdjustmentRequestImpl(
          reason: $checkedConvert('reason', (v) => v as String),
          notes: $checkedConvert('notes', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$RejectStockAdjustmentRequestImplToJson(
        _$RejectStockAdjustmentRequestImpl instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'notes': instance.notes,
    };
