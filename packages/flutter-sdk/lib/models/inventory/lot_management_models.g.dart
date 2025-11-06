// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lot_management_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LotGenealogy _$LotGenealogyFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_LotGenealogy',
      json,
      ($checkedConvert) {
        final val = _LotGenealogy(
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

Map<String, dynamic> _$LotGenealogyToJson(_LotGenealogy instance) =>
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

_LotTrackingHistory _$LotTrackingHistoryFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_LotTrackingHistory',
      json,
      ($checkedConvert) {
        final val = _LotTrackingHistory(
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

Map<String, dynamic> _$LotTrackingHistoryToJson(_LotTrackingHistory instance) =>
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

_SplitLotRequest _$SplitLotRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_SplitLotRequest',
      json,
      ($checkedConvert) {
        final val = _SplitLotRequest(
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

Map<String, dynamic> _$SplitLotRequestToJson(_SplitLotRequest instance) =>
    <String, dynamic>{
      'sourceLotId': instance.sourceLotId,
      'splitItems': instance.splitItems.map((e) => e.toJson()).toList(),
      'reason': instance.reason,
      'notes': instance.notes,
    };

_LotSplitItem _$LotSplitItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_LotSplitItem',
      json,
      ($checkedConvert) {
        final val = _LotSplitItem(
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

Map<String, dynamic> _$LotSplitItemToJson(_LotSplitItem instance) =>
    <String, dynamic>{
      'newLotNumber': instance.newLotNumber,
      'quantity': instance.quantity,
      'locationId': instance.locationId,
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'attributes': instance.attributes,
    };

_MergeLotsRequest _$MergeLotsRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_MergeLotsRequest',
      json,
      ($checkedConvert) {
        final val = _MergeLotsRequest(
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

Map<String, dynamic> _$MergeLotsRequestToJson(_MergeLotsRequest instance) =>
    <String, dynamic>{
      'sourceLotIds': instance.sourceLotIds,
      'targetLotNumber': instance.targetLotNumber,
      'targetLocationId': instance.targetLocationId,
      'targetExpiryDate': instance.targetExpiryDate?.toIso8601String(),
      'reason': instance.reason,
      'notes': instance.notes,
      'attributes': instance.attributes,
    };

_UpdateLotTrackingRequest _$UpdateLotTrackingRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_UpdateLotTrackingRequest',
      json,
      ($checkedConvert) {
        final val = _UpdateLotTrackingRequest(
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

Map<String, dynamic> _$UpdateLotTrackingRequestToJson(
        _UpdateLotTrackingRequest instance) =>
    <String, dynamic>{
      'status': instance.status,
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'notes': instance.notes,
      'attributes': instance.attributes,
    };

_QuarantineLotRequest _$QuarantineLotRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_QuarantineLotRequest',
      json,
      ($checkedConvert) {
        final val = _QuarantineLotRequest(
          reason: $checkedConvert('reason', (v) => v as String),
          notes: $checkedConvert('notes', (v) => v as String?),
          quarantinedUntil: $checkedConvert('quarantinedUntil',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$QuarantineLotRequestToJson(
        _QuarantineLotRequest instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'notes': instance.notes,
      'quarantinedUntil': instance.quarantinedUntil?.toIso8601String(),
    };

_ReleaseLotRequest _$ReleaseLotRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_ReleaseLotRequest',
      json,
      ($checkedConvert) {
        final val = _ReleaseLotRequest(
          releaseReason: $checkedConvert('releaseReason', (v) => v as String),
          notes: $checkedConvert('notes', (v) => v as String?),
          inspectedBy: $checkedConvert('inspectedBy', (v) => v as String?),
          inspectionDate: $checkedConvert('inspectionDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$ReleaseLotRequestToJson(_ReleaseLotRequest instance) =>
    <String, dynamic>{
      'releaseReason': instance.releaseReason,
      'notes': instance.notes,
      'inspectedBy': instance.inspectedBy,
      'inspectionDate': instance.inspectionDate?.toIso8601String(),
    };

_LotGenealogyFilters _$LotGenealogyFiltersFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_LotGenealogyFilters',
      json,
      ($checkedConvert) {
        final val = _LotGenealogyFilters(
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

Map<String, dynamic> _$LotGenealogyFiltersToJson(
        _LotGenealogyFilters instance) =>
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

_LotTrackingHistoryFilters _$LotTrackingHistoryFiltersFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_LotTrackingHistoryFilters',
      json,
      ($checkedConvert) {
        final val = _LotTrackingHistoryFilters(
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

Map<String, dynamic> _$LotTrackingHistoryFiltersToJson(
        _LotTrackingHistoryFilters instance) =>
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

_ExpiringLot _$ExpiringLotFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_ExpiringLot',
      json,
      ($checkedConvert) {
        final val = _ExpiringLot(
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

Map<String, dynamic> _$ExpiringLotToJson(_ExpiringLot instance) =>
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
