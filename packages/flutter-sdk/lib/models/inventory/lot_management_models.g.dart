// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lot_management_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LotGenealogyImpl _$$LotGenealogyImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$LotGenealogyImpl',
      json,
      ($checkedConvert) {
        final val = _$LotGenealogyImpl(
          id: $checkedConvert('id', (v) => v as String),
          lotNumber: $checkedConvert('lotNumber', (v) => v as String),
          itemId: $checkedConvert('itemId', (v) => v as String),
          locationId: $checkedConvert('locationId', (v) => v as String),
          quantity: $checkedConvert('quantity', (v) => (v as num).toDouble()),
          status: $checkedConvert('status', (v) => v as String),
          createdAt:
              $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
          expiryDate: $checkedConvert('expiryDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          quarantinedAt: $checkedConvert('quarantinedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          releasedAt: $checkedConvert('releasedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          parentLotId: $checkedConvert('parentLotId', (v) => v as String?),
          supplierLotNumber:
              $checkedConvert('supplierLotNumber', (v) => v as String?),
          supplierName: $checkedConvert('supplierName', (v) => v as String?),
          receiptNumber: $checkedConvert('receiptNumber', (v) => v as String?),
          quarantineReason:
              $checkedConvert('quarantineReason', (v) => v as String?),
          releaseReason: $checkedConvert('releaseReason', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          attributes:
              $checkedConvert('attributes', (v) => v as Map<String, dynamic>?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$LotGenealogyImplToJson(_$LotGenealogyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lotNumber': instance.lotNumber,
      'itemId': instance.itemId,
      'locationId': instance.locationId,
      'quantity': instance.quantity,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'quarantinedAt': instance.quarantinedAt?.toIso8601String(),
      'releasedAt': instance.releasedAt?.toIso8601String(),
      'parentLotId': instance.parentLotId,
      'supplierLotNumber': instance.supplierLotNumber,
      'supplierName': instance.supplierName,
      'receiptNumber': instance.receiptNumber,
      'quarantineReason': instance.quarantineReason,
      'releaseReason': instance.releaseReason,
      'notes': instance.notes,
      'attributes': instance.attributes,
      'metadata': instance.metadata,
    };

_$LotTrackingHistoryImpl _$$LotTrackingHistoryImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$LotTrackingHistoryImpl',
      json,
      ($checkedConvert) {
        final val = _$LotTrackingHistoryImpl(
          id: $checkedConvert('id', (v) => v as String),
          lotId: $checkedConvert('lotId', (v) => v as String),
          eventType: $checkedConvert('eventType', (v) => v as String),
          fromLocationId: $checkedConvert('fromLocationId', (v) => v as String),
          toLocationId: $checkedConvert('toLocationId', (v) => v as String),
          quantity: $checkedConvert('quantity', (v) => (v as num).toDouble()),
          eventDate:
              $checkedConvert('eventDate', (v) => DateTime.parse(v as String)),
          referenceType: $checkedConvert('referenceType', (v) => v as String?),
          referenceId: $checkedConvert('referenceId', (v) => v as String?),
          performedBy: $checkedConvert('performedBy', (v) => v as String?),
          reason: $checkedConvert('reason', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$LotTrackingHistoryImplToJson(
        _$LotTrackingHistoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lotId': instance.lotId,
      'eventType': instance.eventType,
      'fromLocationId': instance.fromLocationId,
      'toLocationId': instance.toLocationId,
      'quantity': instance.quantity,
      'eventDate': instance.eventDate.toIso8601String(),
      'referenceType': instance.referenceType,
      'referenceId': instance.referenceId,
      'performedBy': instance.performedBy,
      'reason': instance.reason,
      'notes': instance.notes,
      'metadata': instance.metadata,
    };

_$SplitLotRequestImpl _$$SplitLotRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SplitLotRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$SplitLotRequestImpl(
          sourceLotId: $checkedConvert('sourceLotId', (v) => v as String),
          splitItems: $checkedConvert(
              'splitItems',
              (v) => (v as List<dynamic>)
                  .map((e) => LotSplitItem.fromJson(e as Map<String, dynamic>))
                  .toList()),
          reason: $checkedConvert('reason', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SplitLotRequestImplToJson(
        _$SplitLotRequestImpl instance) =>
    <String, dynamic>{
      'sourceLotId': instance.sourceLotId,
      'splitItems': instance.splitItems.map((e) => e.toJson()).toList(),
      'reason': instance.reason,
      'notes': instance.notes,
    };

_$LotSplitItemImpl _$$LotSplitItemImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$LotSplitItemImpl',
      json,
      ($checkedConvert) {
        final val = _$LotSplitItemImpl(
          newLotNumber: $checkedConvert('newLotNumber', (v) => v as String),
          quantity: $checkedConvert('quantity', (v) => (v as num).toDouble()),
          locationId: $checkedConvert('locationId', (v) => v as String?),
          expiryDate: $checkedConvert('expiryDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          attributes:
              $checkedConvert('attributes', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$LotSplitItemImplToJson(_$LotSplitItemImpl instance) =>
    <String, dynamic>{
      'newLotNumber': instance.newLotNumber,
      'quantity': instance.quantity,
      'locationId': instance.locationId,
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'attributes': instance.attributes,
    };

_$MergeLotsRequestImpl _$$MergeLotsRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$MergeLotsRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$MergeLotsRequestImpl(
          sourceLotIds: $checkedConvert('sourceLotIds',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          targetLotNumber:
              $checkedConvert('targetLotNumber', (v) => v as String),
          targetLocationId:
              $checkedConvert('targetLocationId', (v) => v as String),
          targetExpiryDate: $checkedConvert('targetExpiryDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          reason: $checkedConvert('reason', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          attributes:
              $checkedConvert('attributes', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$MergeLotsRequestImplToJson(
        _$MergeLotsRequestImpl instance) =>
    <String, dynamic>{
      'sourceLotIds': instance.sourceLotIds,
      'targetLotNumber': instance.targetLotNumber,
      'targetLocationId': instance.targetLocationId,
      'targetExpiryDate': instance.targetExpiryDate?.toIso8601String(),
      'reason': instance.reason,
      'notes': instance.notes,
      'attributes': instance.attributes,
    };

_$UpdateLotTrackingRequestImpl _$$UpdateLotTrackingRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$UpdateLotTrackingRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$UpdateLotTrackingRequestImpl(
          status: $checkedConvert('status', (v) => v as String?),
          expiryDate: $checkedConvert('expiryDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          notes: $checkedConvert('notes', (v) => v as String?),
          attributes:
              $checkedConvert('attributes', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$UpdateLotTrackingRequestImplToJson(
        _$UpdateLotTrackingRequestImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'notes': instance.notes,
      'attributes': instance.attributes,
    };

_$QuarantineLotRequestImpl _$$QuarantineLotRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$QuarantineLotRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$QuarantineLotRequestImpl(
          reason: $checkedConvert('reason', (v) => v as String),
          notes: $checkedConvert('notes', (v) => v as String?),
          quarantinedUntil: $checkedConvert('quarantinedUntil',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$QuarantineLotRequestImplToJson(
        _$QuarantineLotRequestImpl instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'notes': instance.notes,
      'quarantinedUntil': instance.quarantinedUntil?.toIso8601String(),
    };

_$ReleaseLotRequestImpl _$$ReleaseLotRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ReleaseLotRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$ReleaseLotRequestImpl(
          releaseReason: $checkedConvert('releaseReason', (v) => v as String),
          notes: $checkedConvert('notes', (v) => v as String?),
          inspectedBy: $checkedConvert('inspectedBy', (v) => v as String?),
          inspectionDate: $checkedConvert('inspectionDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ReleaseLotRequestImplToJson(
        _$ReleaseLotRequestImpl instance) =>
    <String, dynamic>{
      'releaseReason': instance.releaseReason,
      'notes': instance.notes,
      'inspectedBy': instance.inspectedBy,
      'inspectionDate': instance.inspectionDate?.toIso8601String(),
    };

_$LotGenealogyFiltersImpl _$$LotGenealogyFiltersImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$LotGenealogyFiltersImpl',
      json,
      ($checkedConvert) {
        final val = _$LotGenealogyFiltersImpl(
          itemId: $checkedConvert('itemId', (v) => v as String?),
          locationId: $checkedConvert('locationId', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          lotNumber: $checkedConvert('lotNumber', (v) => v as String?),
          supplierLotNumber:
              $checkedConvert('supplierLotNumber', (v) => v as String?),
          parentLotId: $checkedConvert('parentLotId', (v) => v as String?),
          createdAfter: $checkedConvert('createdAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          createdBefore: $checkedConvert('createdBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          expiryAfter: $checkedConvert('expiryAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          expiryBefore: $checkedConvert('expiryBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          quarantinedAfter: $checkedConvert('quarantinedAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          quarantinedBefore: $checkedConvert('quarantinedBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          page: $checkedConvert('page', (v) => (v as num?)?.toInt()),
          limit: $checkedConvert('limit', (v) => (v as num?)?.toInt()),
          sortBy: $checkedConvert('sortBy', (v) => v as String?),
          sortOrder: $checkedConvert('sortOrder', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$LotGenealogyFiltersImplToJson(
        _$LotGenealogyFiltersImpl instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'locationId': instance.locationId,
      'status': instance.status,
      'lotNumber': instance.lotNumber,
      'supplierLotNumber': instance.supplierLotNumber,
      'parentLotId': instance.parentLotId,
      'createdAfter': instance.createdAfter?.toIso8601String(),
      'createdBefore': instance.createdBefore?.toIso8601String(),
      'expiryAfter': instance.expiryAfter?.toIso8601String(),
      'expiryBefore': instance.expiryBefore?.toIso8601String(),
      'quarantinedAfter': instance.quarantinedAfter?.toIso8601String(),
      'quarantinedBefore': instance.quarantinedBefore?.toIso8601String(),
      'page': instance.page,
      'limit': instance.limit,
      'sortBy': instance.sortBy,
      'sortOrder': instance.sortOrder,
    };

_$LotTrackingHistoryFiltersImpl _$$LotTrackingHistoryFiltersImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$LotTrackingHistoryFiltersImpl',
      json,
      ($checkedConvert) {
        final val = _$LotTrackingHistoryFiltersImpl(
          lotId: $checkedConvert('lotId', (v) => v as String?),
          eventType: $checkedConvert('eventType', (v) => v as String?),
          fromLocationId:
              $checkedConvert('fromLocationId', (v) => v as String?),
          toLocationId: $checkedConvert('toLocationId', (v) => v as String?),
          referenceType: $checkedConvert('referenceType', (v) => v as String?),
          referenceId: $checkedConvert('referenceId', (v) => v as String?),
          performedBy: $checkedConvert('performedBy', (v) => v as String?),
          eventAfter: $checkedConvert('eventAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          eventBefore: $checkedConvert('eventBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          page: $checkedConvert('page', (v) => (v as num?)?.toInt()),
          limit: $checkedConvert('limit', (v) => (v as num?)?.toInt()),
          sortBy: $checkedConvert('sortBy', (v) => v as String?),
          sortOrder: $checkedConvert('sortOrder', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$LotTrackingHistoryFiltersImplToJson(
        _$LotTrackingHistoryFiltersImpl instance) =>
    <String, dynamic>{
      'lotId': instance.lotId,
      'eventType': instance.eventType,
      'fromLocationId': instance.fromLocationId,
      'toLocationId': instance.toLocationId,
      'referenceType': instance.referenceType,
      'referenceId': instance.referenceId,
      'performedBy': instance.performedBy,
      'eventAfter': instance.eventAfter?.toIso8601String(),
      'eventBefore': instance.eventBefore?.toIso8601String(),
      'page': instance.page,
      'limit': instance.limit,
      'sortBy': instance.sortBy,
      'sortOrder': instance.sortOrder,
    };

_$ExpiringLotImpl _$$ExpiringLotImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ExpiringLotImpl',
      json,
      ($checkedConvert) {
        final val = _$ExpiringLotImpl(
          lotId: $checkedConvert('lotId', (v) => v as String),
          lotNumber: $checkedConvert('lotNumber', (v) => v as String),
          itemId: $checkedConvert('itemId', (v) => v as String),
          itemName: $checkedConvert('itemName', (v) => v as String),
          locationId: $checkedConvert('locationId', (v) => v as String),
          locationName: $checkedConvert('locationName', (v) => v as String),
          quantity: $checkedConvert('quantity', (v) => (v as num).toDouble()),
          expiryDate:
              $checkedConvert('expiryDate', (v) => DateTime.parse(v as String)),
          daysUntilExpiry:
              $checkedConvert('daysUntilExpiry', (v) => (v as num).toInt()),
          status: $checkedConvert('status', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ExpiringLotImplToJson(_$ExpiringLotImpl instance) =>
    <String, dynamic>{
      'lotId': instance.lotId,
      'lotNumber': instance.lotNumber,
      'itemId': instance.itemId,
      'itemName': instance.itemName,
      'locationId': instance.locationId,
      'locationName': instance.locationName,
      'quantity': instance.quantity,
      'expiryDate': instance.expiryDate.toIso8601String(),
      'daysUntilExpiry': instance.daysUntilExpiry,
      'status': instance.status,
    };
