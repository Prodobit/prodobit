// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Item _$ItemFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_Item',
      json,
      ($checkedConvert) {
        final val = _Item(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          code: $checkedConvert('code', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          unit: $checkedConvert('unit', (v) => v as String),
          isActive: $checkedConvert('isActive', (v) => v as bool),
          auditInfo: $checkedConvert('auditInfo',
              (v) => AuditInfo.fromJson(v as Map<String, dynamic>)),
          description: $checkedConvert('description', (v) => v as String?),
          category: $checkedConvert('category', (v) => v as String?),
          brand: $checkedConvert('brand', (v) => v as String?),
          basePrice: $checkedConvert(
              'basePrice',
              (v) =>
                  v == null ? null : Money.fromJson(v as Map<String, dynamic>)),
          costPrice: $checkedConvert(
              'costPrice',
              (v) =>
                  v == null ? null : Money.fromJson(v as Map<String, dynamic>)),
          barcode: $checkedConvert('barcode', (v) => v as String?),
          imageUrl: $checkedConvert('imageUrl', (v) => v as String?),
          specifications: $checkedConvert(
              'specifications', (v) => v as Map<String, dynamic>?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$ItemToJson(_Item instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'type': instance.type,
      'unit': instance.unit,
      'isActive': instance.isActive,
      'auditInfo': instance.auditInfo.toJson(),
      'description': instance.description,
      'category': instance.category,
      'brand': instance.brand,
      'basePrice': instance.basePrice?.toJson(),
      'costPrice': instance.costPrice?.toJson(),
      'barcode': instance.barcode,
      'imageUrl': instance.imageUrl,
      'specifications': instance.specifications,
      'metadata': instance.metadata,
    };

_ItemRequest _$ItemRequestFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_ItemRequest',
      json,
      ($checkedConvert) {
        final val = _ItemRequest(
          name: $checkedConvert('name', (v) => v as String),
          code: $checkedConvert('code', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          unit: $checkedConvert('unit', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          category: $checkedConvert('category', (v) => v as String?),
          brand: $checkedConvert('brand', (v) => v as String?),
          basePrice: $checkedConvert(
              'basePrice',
              (v) =>
                  v == null ? null : Money.fromJson(v as Map<String, dynamic>)),
          costPrice: $checkedConvert(
              'costPrice',
              (v) =>
                  v == null ? null : Money.fromJson(v as Map<String, dynamic>)),
          barcode: $checkedConvert('barcode', (v) => v as String?),
          imageUrl: $checkedConvert('imageUrl', (v) => v as String?),
          isActive: $checkedConvert('isActive', (v) => v as bool? ?? true),
          specifications: $checkedConvert(
              'specifications', (v) => v as Map<String, dynamic>?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$ItemRequestToJson(_ItemRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'type': instance.type,
      'unit': instance.unit,
      'description': instance.description,
      'category': instance.category,
      'brand': instance.brand,
      'basePrice': instance.basePrice?.toJson(),
      'costPrice': instance.costPrice?.toJson(),
      'barcode': instance.barcode,
      'imageUrl': instance.imageUrl,
      'isActive': instance.isActive,
      'specifications': instance.specifications,
      'metadata': instance.metadata,
    };

_Location _$LocationFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_Location',
      json,
      ($checkedConvert) {
        final val = _Location(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          code: $checkedConvert('code', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          insertedAt:
              $checkedConvert('insertedAt', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
          tenantId: $checkedConvert('tenantId', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String?),
          parentId: $checkedConvert('parentId', (v) => v as String?),
          parentLocationId:
              $checkedConvert('parentLocationId', (v) => v as String?),
          locationTypeId:
              $checkedConvert('locationTypeId', (v) => v as String?),
          deletedAt: $checkedConvert('deletedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          address: $checkedConvert(
              'address',
              (v) => v == null
                  ? null
                  : Address.fromJson(v as Map<String, dynamic>)),
          contactInfo: $checkedConvert(
              'contactInfo',
              (v) => v == null
                  ? null
                  : ContactInfo.fromJson(v as Map<String, dynamic>)),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$LocationToJson(_Location instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'status': instance.status,
      'insertedAt': instance.insertedAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'tenantId': instance.tenantId,
      'description': instance.description,
      'type': instance.type,
      'parentId': instance.parentId,
      'parentLocationId': instance.parentLocationId,
      'locationTypeId': instance.locationTypeId,
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'address': instance.address?.toJson(),
      'contactInfo': instance.contactInfo?.toJson(),
      'metadata': instance.metadata,
    };

_StockAdjustmentRequest _$StockAdjustmentRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_StockAdjustmentRequest',
      json,
      ($checkedConvert) {
        final val = _StockAdjustmentRequest(
          itemId: $checkedConvert('itemId', (v) => v as String),
          locationId: $checkedConvert('locationId', (v) => v as String),
          quantity: $checkedConvert('quantity', (v) => (v as num).toDouble()),
          reason: $checkedConvert('reason', (v) => v as String),
          notes: $checkedConvert('notes', (v) => v as String?),
          cost: $checkedConvert(
              'cost',
              (v) =>
                  v == null ? null : Money.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$StockAdjustmentRequestToJson(
        _StockAdjustmentRequest instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'locationId': instance.locationId,
      'quantity': instance.quantity,
      'reason': instance.reason,
      'notes': instance.notes,
      'cost': instance.cost?.toJson(),
    };

_StockEntry _$StockEntryFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_StockEntry',
      json,
      ($checkedConvert) {
        final val = _StockEntry(
          id: $checkedConvert('id', (v) => v as String),
          itemId: $checkedConvert('itemId', (v) => v as String),
          locationId: $checkedConvert('locationId', (v) => v as String),
          quantity: $checkedConvert('quantity', (v) => (v as num).toDouble()),
          availableQuantity: $checkedConvert(
              'availableQuantity', (v) => (v as num).toDouble()),
          reservedQuantity:
              $checkedConvert('reservedQuantity', (v) => (v as num).toDouble()),
          lastUpdated: $checkedConvert(
              'lastUpdated', (v) => DateTime.parse(v as String)),
          minQuantity:
              $checkedConvert('minQuantity', (v) => (v as num?)?.toDouble()),
          maxQuantity:
              $checkedConvert('maxQuantity', (v) => (v as num?)?.toDouble()),
          averageCost: $checkedConvert(
              'averageCost',
              (v) =>
                  v == null ? null : Money.fromJson(v as Map<String, dynamic>)),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$StockEntryToJson(_StockEntry instance) =>
    <String, dynamic>{
      'id': instance.id,
      'itemId': instance.itemId,
      'locationId': instance.locationId,
      'quantity': instance.quantity,
      'availableQuantity': instance.availableQuantity,
      'reservedQuantity': instance.reservedQuantity,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'minQuantity': instance.minQuantity,
      'maxQuantity': instance.maxQuantity,
      'averageCost': instance.averageCost?.toJson(),
      'metadata': instance.metadata,
    };

_StockMovement _$StockMovementFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_StockMovement',
      json,
      ($checkedConvert) {
        final val = _StockMovement(
          id: $checkedConvert('id', (v) => v as String),
          itemId: $checkedConvert('itemId', (v) => v as String),
          locationId: $checkedConvert('locationId', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          quantity: $checkedConvert('quantity', (v) => (v as num).toDouble()),
          movementDate: $checkedConvert(
              'movementDate', (v) => DateTime.parse(v as String)),
          auditInfo: $checkedConvert('auditInfo',
              (v) => AuditInfo.fromJson(v as Map<String, dynamic>)),
          cost: $checkedConvert('cost', (v) => (v as num?)?.toDouble()),
          referenceType: $checkedConvert('referenceType', (v) => v as String?),
          referenceId: $checkedConvert('referenceId', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$StockMovementToJson(_StockMovement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'itemId': instance.itemId,
      'locationId': instance.locationId,
      'type': instance.type,
      'quantity': instance.quantity,
      'movementDate': instance.movementDate.toIso8601String(),
      'auditInfo': instance.auditInfo.toJson(),
      'cost': instance.cost,
      'referenceType': instance.referenceType,
      'referenceId': instance.referenceId,
      'notes': instance.notes,
    };

_StockTransferRequest _$StockTransferRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_StockTransferRequest',
      json,
      ($checkedConvert) {
        final val = _StockTransferRequest(
          itemId: $checkedConvert('itemId', (v) => v as String),
          fromLocationId: $checkedConvert('fromLocationId', (v) => v as String),
          toLocationId: $checkedConvert('toLocationId', (v) => v as String),
          quantity: $checkedConvert('quantity', (v) => (v as num).toDouble()),
          notes: $checkedConvert('notes', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$StockTransferRequestToJson(
        _StockTransferRequest instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'fromLocationId': instance.fromLocationId,
      'toLocationId': instance.toLocationId,
      'quantity': instance.quantity,
      'notes': instance.notes,
    };
