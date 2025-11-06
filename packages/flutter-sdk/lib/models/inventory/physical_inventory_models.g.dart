// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'physical_inventory_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PhysicalInventory _$PhysicalInventoryFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_PhysicalInventory',
      json,
      ($checkedConvert) {
        final val = _PhysicalInventory(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          locationId: $checkedConvert('locationId', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          createdAt:
              $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
          startedAt: $checkedConvert('startedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          completedAt: $checkedConvert('completedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          cancelledAt: $checkedConvert('cancelledAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          createdBy: $checkedConvert('createdBy', (v) => v as String?),
          startedBy: $checkedConvert('startedBy', (v) => v as String?),
          completedBy: $checkedConvert('completedBy', (v) => v as String?),
          cancelledBy: $checkedConvert('cancelledBy', (v) => v as String?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$PhysicalInventoryToJson(_PhysicalInventory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'locationId': instance.locationId,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'startedAt': instance.startedAt?.toIso8601String(),
      'completedAt': instance.completedAt?.toIso8601String(),
      'cancelledAt': instance.cancelledAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'startedBy': instance.startedBy,
      'completedBy': instance.completedBy,
      'cancelledBy': instance.cancelledBy,
      'metadata': instance.metadata,
    };

_PhysicalInventoryItem _$PhysicalInventoryItemFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_PhysicalInventoryItem',
      json,
      ($checkedConvert) {
        final val = _PhysicalInventoryItem(
          id: $checkedConvert('id', (v) => v as String),
          physicalInventoryId:
              $checkedConvert('physicalInventoryId', (v) => v as String),
          itemId: $checkedConvert('itemId', (v) => v as String),
          locationId: $checkedConvert('locationId', (v) => v as String),
          systemQuantity:
              $checkedConvert('systemQuantity', (v) => (v as num).toDouble()),
          countedQuantity:
              $checkedConvert('countedQuantity', (v) => (v as num).toDouble()),
          varianceQuantity:
              $checkedConvert('varianceQuantity', (v) => (v as num).toDouble()),
          varianceValue:
              $checkedConvert('varianceValue', (v) => (v as num).toDouble()),
          status: $checkedConvert('status', (v) => v as String),
          countedAt: $checkedConvert('countedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          countedBy: $checkedConvert('countedBy', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          lotNumber: $checkedConvert('lotNumber', (v) => v as String?),
          serialNumber: $checkedConvert('serialNumber', (v) => v as String?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$PhysicalInventoryItemToJson(
        _PhysicalInventoryItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'physicalInventoryId': instance.physicalInventoryId,
      'itemId': instance.itemId,
      'locationId': instance.locationId,
      'systemQuantity': instance.systemQuantity,
      'countedQuantity': instance.countedQuantity,
      'varianceQuantity': instance.varianceQuantity,
      'varianceValue': instance.varianceValue,
      'status': instance.status,
      'countedAt': instance.countedAt?.toIso8601String(),
      'countedBy': instance.countedBy,
      'notes': instance.notes,
      'lotNumber': instance.lotNumber,
      'serialNumber': instance.serialNumber,
      'metadata': instance.metadata,
    };

_CreatePhysicalInventoryRequest _$CreatePhysicalInventoryRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_CreatePhysicalInventoryRequest',
      json,
      ($checkedConvert) {
        final val = _CreatePhysicalInventoryRequest(
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          locationId: $checkedConvert('locationId', (v) => v as String),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$CreatePhysicalInventoryRequestToJson(
        _CreatePhysicalInventoryRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'locationId': instance.locationId,
      'metadata': instance.metadata,
    };

_UpdatePhysicalInventoryRequest _$UpdatePhysicalInventoryRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_UpdatePhysicalInventoryRequest',
      json,
      ($checkedConvert) {
        final val = _UpdatePhysicalInventoryRequest(
          name: $checkedConvert('name', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$UpdatePhysicalInventoryRequestToJson(
        _UpdatePhysicalInventoryRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'metadata': instance.metadata,
    };

_PhysicalInventoryFilters _$PhysicalInventoryFiltersFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_PhysicalInventoryFilters',
      json,
      ($checkedConvert) {
        final val = _PhysicalInventoryFilters(
          locationId: $checkedConvert('locationId', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          createdBy: $checkedConvert('createdBy', (v) => v as String?),
          createdAfter: $checkedConvert('createdAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          createdBefore: $checkedConvert('createdBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          startedAfter: $checkedConvert('startedAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          startedBefore: $checkedConvert('startedBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          completedAfter: $checkedConvert('completedAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          completedBefore: $checkedConvert('completedBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          page: $checkedConvert('page', (v) => (v as num?)?.toInt()),
          limit: $checkedConvert('limit', (v) => (v as num?)?.toInt()),
          sortBy: $checkedConvert('sortBy', (v) => v as String?),
          sortOrder: $checkedConvert('sortOrder', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$PhysicalInventoryFiltersToJson(
        _PhysicalInventoryFilters instance) =>
    <String, dynamic>{
      'locationId': instance.locationId,
      'status': instance.status,
      'createdBy': instance.createdBy,
      'createdAfter': instance.createdAfter?.toIso8601String(),
      'createdBefore': instance.createdBefore?.toIso8601String(),
      'startedAfter': instance.startedAfter?.toIso8601String(),
      'startedBefore': instance.startedBefore?.toIso8601String(),
      'completedAfter': instance.completedAfter?.toIso8601String(),
      'completedBefore': instance.completedBefore?.toIso8601String(),
      'page': instance.page,
      'limit': instance.limit,
      'sortBy': instance.sortBy,
      'sortOrder': instance.sortOrder,
    };

_UpdatePhysicalInventoryItemRequest
    _$UpdatePhysicalInventoryItemRequestFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          '_UpdatePhysicalInventoryItemRequest',
          json,
          ($checkedConvert) {
            final val = _UpdatePhysicalInventoryItemRequest(
              countedQuantity: $checkedConvert(
                  'countedQuantity', (v) => (v as num).toDouble()),
              notes: $checkedConvert('notes', (v) => v as String?),
              lotNumber: $checkedConvert('lotNumber', (v) => v as String?),
              serialNumber:
                  $checkedConvert('serialNumber', (v) => v as String?),
            );
            return val;
          },
        );

Map<String, dynamic> _$UpdatePhysicalInventoryItemRequestToJson(
        _UpdatePhysicalInventoryItemRequest instance) =>
    <String, dynamic>{
      'countedQuantity': instance.countedQuantity,
      'notes': instance.notes,
      'lotNumber': instance.lotNumber,
      'serialNumber': instance.serialNumber,
    };

_PhysicalInventoryAdjustment _$PhysicalInventoryAdjustmentFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_PhysicalInventoryAdjustment',
      json,
      ($checkedConvert) {
        final val = _PhysicalInventoryAdjustment(
          id: $checkedConvert('id', (v) => v as String),
          physicalInventoryId:
              $checkedConvert('physicalInventoryId', (v) => v as String),
          itemId: $checkedConvert('itemId', (v) => v as String),
          locationId: $checkedConvert('locationId', (v) => v as String),
          adjustmentQuantity: $checkedConvert(
              'adjustmentQuantity', (v) => (v as num).toDouble()),
          adjustmentValue:
              $checkedConvert('adjustmentValue', (v) => (v as num).toDouble()),
          reason: $checkedConvert('reason', (v) => v as String),
          createdAt:
              $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
          createdBy: $checkedConvert('createdBy', (v) => v as String?),
          lotNumber: $checkedConvert('lotNumber', (v) => v as String?),
          serialNumber: $checkedConvert('serialNumber', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$PhysicalInventoryAdjustmentToJson(
        _PhysicalInventoryAdjustment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'physicalInventoryId': instance.physicalInventoryId,
      'itemId': instance.itemId,
      'locationId': instance.locationId,
      'adjustmentQuantity': instance.adjustmentQuantity,
      'adjustmentValue': instance.adjustmentValue,
      'reason': instance.reason,
      'createdAt': instance.createdAt.toIso8601String(),
      'createdBy': instance.createdBy,
      'lotNumber': instance.lotNumber,
      'serialNumber': instance.serialNumber,
      'notes': instance.notes,
      'metadata': instance.metadata,
    };
