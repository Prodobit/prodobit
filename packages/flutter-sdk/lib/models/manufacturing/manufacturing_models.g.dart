// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manufacturing_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Bom _$BomFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_Bom',
      json,
      ($checkedConvert) {
        final val = _Bom(
          id: $checkedConvert('id', (v) => v as String),
          itemId: $checkedConvert('itemId', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          version: $checkedConvert('version', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          createdAt:
              $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
          description: $checkedConvert('description', (v) => v as String?),
          effectiveDate: $checkedConvert('effectiveDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          expiryDate: $checkedConvert('expiryDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          createdBy: $checkedConvert('createdBy', (v) => v as String?),
          totalCost:
              $checkedConvert('totalCost', (v) => (v as num?)?.toDouble()),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$BomToJson(_Bom instance) => <String, dynamic>{
      'id': instance.id,
      'itemId': instance.itemId,
      'name': instance.name,
      'version': instance.version,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'description': instance.description,
      'effectiveDate': instance.effectiveDate?.toIso8601String(),
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'createdBy': instance.createdBy,
      'totalCost': instance.totalCost,
      'metadata': instance.metadata,
    };

_CreateBomRequest _$CreateBomRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_CreateBomRequest',
      json,
      ($checkedConvert) {
        final val = _CreateBomRequest(
          itemId: $checkedConvert('itemId', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          version: $checkedConvert('version', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          effectiveDate: $checkedConvert('effectiveDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          expiryDate: $checkedConvert('expiryDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$CreateBomRequestToJson(_CreateBomRequest instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'name': instance.name,
      'version': instance.version,
      'description': instance.description,
      'effectiveDate': instance.effectiveDate?.toIso8601String(),
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'metadata': instance.metadata,
    };

_UpdateBomRequest _$UpdateBomRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_UpdateBomRequest',
      json,
      ($checkedConvert) {
        final val = _UpdateBomRequest(
          name: $checkedConvert('name', (v) => v as String?),
          version: $checkedConvert('version', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          effectiveDate: $checkedConvert('effectiveDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          expiryDate: $checkedConvert('expiryDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$UpdateBomRequestToJson(_UpdateBomRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'version': instance.version,
      'description': instance.description,
      'status': instance.status,
      'effectiveDate': instance.effectiveDate?.toIso8601String(),
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'metadata': instance.metadata,
    };

_WorkOrder _$WorkOrderFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_WorkOrder',
      json,
      ($checkedConvert) {
        final val = _WorkOrder(
          id: $checkedConvert('id', (v) => v as String),
          workOrderNumber:
              $checkedConvert('workOrderNumber', (v) => v as String),
          itemId: $checkedConvert('itemId', (v) => v as String),
          quantity: $checkedConvert('quantity', (v) => (v as num).toDouble()),
          status: $checkedConvert('status', (v) => v as String),
          plannedStartDate: $checkedConvert('plannedStartDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          plannedEndDate: $checkedConvert('plannedEndDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          actualStartDate: $checkedConvert('actualStartDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          actualEndDate: $checkedConvert('actualEndDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          bomId: $checkedConvert('bomId', (v) => v as String?),
          priority: $checkedConvert('priority', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$WorkOrderToJson(_WorkOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'workOrderNumber': instance.workOrderNumber,
      'itemId': instance.itemId,
      'quantity': instance.quantity,
      'status': instance.status,
      'plannedStartDate': instance.plannedStartDate?.toIso8601String(),
      'plannedEndDate': instance.plannedEndDate?.toIso8601String(),
      'actualStartDate': instance.actualStartDate?.toIso8601String(),
      'actualEndDate': instance.actualEndDate?.toIso8601String(),
      'bomId': instance.bomId,
      'priority': instance.priority,
      'notes': instance.notes,
      'metadata': instance.metadata,
    };

_CreateProductionOrderMaterialRequest
    _$CreateProductionOrderMaterialRequestFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          '_CreateProductionOrderMaterialRequest',
          json,
          ($checkedConvert) {
            final val = _CreateProductionOrderMaterialRequest(
              itemId: $checkedConvert('itemId', (v) => v as String),
              requiredQuantity: $checkedConvert(
                  'requiredQuantity', (v) => (v as num).toDouble()),
            );
            return val;
          },
        );

Map<String, dynamic> _$CreateProductionOrderMaterialRequestToJson(
        _CreateProductionOrderMaterialRequest instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'requiredQuantity': instance.requiredQuantity,
    };

_CreateProductionOrderRequest _$CreateProductionOrderRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_CreateProductionOrderRequest',
      json,
      ($checkedConvert) {
        final val = _CreateProductionOrderRequest(
          itemId: $checkedConvert('itemId', (v) => v as String),
          quantity: $checkedConvert('quantity', (v) => (v as num).toDouble()),
          startDate:
              $checkedConvert('startDate', (v) => DateTime.parse(v as String)),
          materials: $checkedConvert(
              'materials',
              (v) => (v as List<dynamic>)
                  .map((e) => CreateProductionOrderMaterialRequest.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          endDate: $checkedConvert(
              'endDate', (v) => v == null ? null : DateTime.parse(v as String)),
          notes: $checkedConvert('notes', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$CreateProductionOrderRequestToJson(
        _CreateProductionOrderRequest instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'quantity': instance.quantity,
      'startDate': instance.startDate.toIso8601String(),
      'materials': instance.materials.map((e) => e.toJson()).toList(),
      'endDate': instance.endDate?.toIso8601String(),
      'notes': instance.notes,
    };

_ProductionOrder _$ProductionOrderFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_ProductionOrder',
      json,
      ($checkedConvert) {
        final val = _ProductionOrder(
          id: $checkedConvert('id', (v) => v as String),
          orderNumber: $checkedConvert('orderNumber', (v) => v as String),
          itemId: $checkedConvert('itemId', (v) => v as String),
          itemName: $checkedConvert('itemName', (v) => v as String),
          quantity: $checkedConvert('quantity', (v) => (v as num).toDouble()),
          status: $checkedConvert('status', (v) => v as String),
          startDate:
              $checkedConvert('startDate', (v) => DateTime.parse(v as String)),
          materials: $checkedConvert(
              'materials',
              (v) => (v as List<dynamic>)
                  .map((e) => ProductionOrderMaterial.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          createdAt:
              $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
          endDate: $checkedConvert(
              'endDate', (v) => v == null ? null : DateTime.parse(v as String)),
          notes: $checkedConvert('notes', (v) => v as String?),
          organizationId:
              $checkedConvert('organizationId', (v) => v as String?),
          updatedAt: $checkedConvert('updatedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$ProductionOrderToJson(_ProductionOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderNumber': instance.orderNumber,
      'itemId': instance.itemId,
      'itemName': instance.itemName,
      'quantity': instance.quantity,
      'status': instance.status,
      'startDate': instance.startDate.toIso8601String(),
      'materials': instance.materials.map((e) => e.toJson()).toList(),
      'createdAt': instance.createdAt.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'notes': instance.notes,
      'organizationId': instance.organizationId,
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_ProductionOrderMaterial _$ProductionOrderMaterialFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_ProductionOrderMaterial',
      json,
      ($checkedConvert) {
        final val = _ProductionOrderMaterial(
          id: $checkedConvert('id', (v) => v as String),
          itemId: $checkedConvert('itemId', (v) => v as String),
          itemName: $checkedConvert('itemName', (v) => v as String),
          requiredQuantity:
              $checkedConvert('requiredQuantity', (v) => (v as num).toDouble()),
          consumedQuantity:
              $checkedConvert('consumedQuantity', (v) => (v as num).toDouble()),
          unit: $checkedConvert('unit', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$ProductionOrderMaterialToJson(
        _ProductionOrderMaterial instance) =>
    <String, dynamic>{
      'id': instance.id,
      'itemId': instance.itemId,
      'itemName': instance.itemName,
      'requiredQuantity': instance.requiredQuantity,
      'consumedQuantity': instance.consumedQuantity,
      'unit': instance.unit,
    };
