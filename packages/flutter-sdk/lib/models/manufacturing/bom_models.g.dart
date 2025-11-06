// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bom_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BomComponent _$BomComponentFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_BomComponent',
      json,
      ($checkedConvert) {
        final val = _BomComponent(
          id: $checkedConvert('id', (v) => v as String),
          bomId: $checkedConvert('bomId', (v) => v as String),
          itemId: $checkedConvert('itemId', (v) => v as String),
          quantity: $checkedConvert('quantity', (v) => (v as num).toDouble()),
          unit: $checkedConvert('unit', (v) => v as String),
          unitCost: $checkedConvert('unitCost', (v) => (v as num).toDouble()),
          totalCost: $checkedConvert('totalCost', (v) => (v as num).toDouble()),
          sequence: $checkedConvert('sequence', (v) => (v as num).toInt()),
          notes: $checkedConvert('notes', (v) => v as String?),
          specification: $checkedConvert('specification', (v) => v as String?),
          isOptional: $checkedConvert('isOptional', (v) => v as bool?),
          alternativeItemId:
              $checkedConvert('alternativeItemId', (v) => v as String?),
          wastagePercentage: $checkedConvert(
              'wastagePercentage', (v) => (v as num?)?.toDouble()),
          leadTime: $checkedConvert('leadTime', (v) => (v as num?)?.toDouble()),
          attributes:
              $checkedConvert('attributes', (v) => v as Map<String, dynamic>?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$BomComponentToJson(_BomComponent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bomId': instance.bomId,
      'itemId': instance.itemId,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'unitCost': instance.unitCost,
      'totalCost': instance.totalCost,
      'sequence': instance.sequence,
      'notes': instance.notes,
      'specification': instance.specification,
      'isOptional': instance.isOptional,
      'alternativeItemId': instance.alternativeItemId,
      'wastagePercentage': instance.wastagePercentage,
      'leadTime': instance.leadTime,
      'attributes': instance.attributes,
      'metadata': instance.metadata,
    };

_CreateBomComponentRequest _$CreateBomComponentRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_CreateBomComponentRequest',
      json,
      ($checkedConvert) {
        final val = _CreateBomComponentRequest(
          itemId: $checkedConvert('itemId', (v) => v as String),
          quantity: $checkedConvert('quantity', (v) => (v as num).toDouble()),
          unit: $checkedConvert('unit', (v) => v as String),
          unitCost: $checkedConvert('unitCost', (v) => (v as num).toDouble()),
          sequence: $checkedConvert('sequence', (v) => (v as num?)?.toInt()),
          notes: $checkedConvert('notes', (v) => v as String?),
          specification: $checkedConvert('specification', (v) => v as String?),
          isOptional: $checkedConvert('isOptional', (v) => v as bool?),
          alternativeItemId:
              $checkedConvert('alternativeItemId', (v) => v as String?),
          wastagePercentage: $checkedConvert(
              'wastagePercentage', (v) => (v as num?)?.toDouble()),
          leadTime: $checkedConvert('leadTime', (v) => (v as num?)?.toDouble()),
          attributes:
              $checkedConvert('attributes', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$CreateBomComponentRequestToJson(
        _CreateBomComponentRequest instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'unitCost': instance.unitCost,
      'sequence': instance.sequence,
      'notes': instance.notes,
      'specification': instance.specification,
      'isOptional': instance.isOptional,
      'alternativeItemId': instance.alternativeItemId,
      'wastagePercentage': instance.wastagePercentage,
      'leadTime': instance.leadTime,
      'attributes': instance.attributes,
    };

_UpdateBomComponentRequest _$UpdateBomComponentRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_UpdateBomComponentRequest',
      json,
      ($checkedConvert) {
        final val = _UpdateBomComponentRequest(
          quantity: $checkedConvert('quantity', (v) => (v as num?)?.toDouble()),
          unit: $checkedConvert('unit', (v) => v as String?),
          unitCost: $checkedConvert('unitCost', (v) => (v as num?)?.toDouble()),
          sequence: $checkedConvert('sequence', (v) => (v as num?)?.toInt()),
          notes: $checkedConvert('notes', (v) => v as String?),
          specification: $checkedConvert('specification', (v) => v as String?),
          isOptional: $checkedConvert('isOptional', (v) => v as bool?),
          alternativeItemId:
              $checkedConvert('alternativeItemId', (v) => v as String?),
          wastagePercentage: $checkedConvert(
              'wastagePercentage', (v) => (v as num?)?.toDouble()),
          leadTime: $checkedConvert('leadTime', (v) => (v as num?)?.toDouble()),
          attributes:
              $checkedConvert('attributes', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$UpdateBomComponentRequestToJson(
        _UpdateBomComponentRequest instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'unit': instance.unit,
      'unitCost': instance.unitCost,
      'sequence': instance.sequence,
      'notes': instance.notes,
      'specification': instance.specification,
      'isOptional': instance.isOptional,
      'alternativeItemId': instance.alternativeItemId,
      'wastagePercentage': instance.wastagePercentage,
      'leadTime': instance.leadTime,
      'attributes': instance.attributes,
    };

_BomExplosionItem _$BomExplosionItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_BomExplosionItem',
      json,
      ($checkedConvert) {
        final val = _BomExplosionItem(
          itemId: $checkedConvert('itemId', (v) => v as String),
          itemName: $checkedConvert('itemName', (v) => v as String),
          itemCode: $checkedConvert('itemCode', (v) => v as String),
          quantity: $checkedConvert('quantity', (v) => (v as num).toDouble()),
          unit: $checkedConvert('unit', (v) => v as String),
          unitCost: $checkedConvert('unitCost', (v) => (v as num).toDouble()),
          totalCost: $checkedConvert('totalCost', (v) => (v as num).toDouble()),
          level: $checkedConvert('level', (v) => (v as num).toInt()),
          parentItemId: $checkedConvert('parentItemId', (v) => v as String?),
          bomId: $checkedConvert('bomId', (v) => v as String?),
          componentId: $checkedConvert('componentId', (v) => v as String?),
          isOptional: $checkedConvert('isOptional', (v) => v as bool?),
          wastagePercentage: $checkedConvert(
              'wastagePercentage', (v) => (v as num?)?.toDouble()),
          leadTime: $checkedConvert('leadTime', (v) => (v as num?)?.toDouble()),
          children: $checkedConvert(
              'children',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      BomExplosionItem.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$BomExplosionItemToJson(_BomExplosionItem instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'itemName': instance.itemName,
      'itemCode': instance.itemCode,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'unitCost': instance.unitCost,
      'totalCost': instance.totalCost,
      'level': instance.level,
      'parentItemId': instance.parentItemId,
      'bomId': instance.bomId,
      'componentId': instance.componentId,
      'isOptional': instance.isOptional,
      'wastagePercentage': instance.wastagePercentage,
      'leadTime': instance.leadTime,
      'children': instance.children?.map((e) => e.toJson()).toList(),
    };

_BomStats _$BomStatsFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_BomStats',
      json,
      ($checkedConvert) {
        final val = _BomStats(
          bomId: $checkedConvert('bomId', (v) => v as String),
          totalComponents:
              $checkedConvert('totalComponents', (v) => (v as num).toInt()),
          totalCost: $checkedConvert('totalCost', (v) => (v as num).toDouble()),
          totalLeadTime:
              $checkedConvert('totalLeadTime', (v) => (v as num).toDouble()),
          maxLevels: $checkedConvert('maxLevels', (v) => (v as num).toInt()),
          componentsByCategory: $checkedConvert(
              'componentsByCategory',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, (e as num).toInt()),
                  )),
          costByCategory: $checkedConvert(
              'costByCategory',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, (e as num).toDouble()),
                  )),
        );
        return val;
      },
    );

Map<String, dynamic> _$BomStatsToJson(_BomStats instance) => <String, dynamic>{
      'bomId': instance.bomId,
      'totalComponents': instance.totalComponents,
      'totalCost': instance.totalCost,
      'totalLeadTime': instance.totalLeadTime,
      'maxLevels': instance.maxLevels,
      'componentsByCategory': instance.componentsByCategory,
      'costByCategory': instance.costByCategory,
    };

_BomLeadTimeAnalysis _$BomLeadTimeAnalysisFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_BomLeadTimeAnalysis',
      json,
      ($checkedConvert) {
        final val = _BomLeadTimeAnalysis(
          bomId: $checkedConvert('bomId', (v) => v as String),
          totalLeadTime:
              $checkedConvert('totalLeadTime', (v) => (v as num).toDouble()),
          criticalPath:
              $checkedConvert('criticalPath', (v) => (v as num).toDouble()),
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      BomLeadTimeItem.fromJson(e as Map<String, dynamic>))
                  .toList()),
          criticalPathItems: $checkedConvert('criticalPathItems',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$BomLeadTimeAnalysisToJson(
        _BomLeadTimeAnalysis instance) =>
    <String, dynamic>{
      'bomId': instance.bomId,
      'totalLeadTime': instance.totalLeadTime,
      'criticalPath': instance.criticalPath,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'criticalPathItems': instance.criticalPathItems,
    };

_BomLeadTimeItem _$BomLeadTimeItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_BomLeadTimeItem',
      json,
      ($checkedConvert) {
        final val = _BomLeadTimeItem(
          itemId: $checkedConvert('itemId', (v) => v as String),
          itemName: $checkedConvert('itemName', (v) => v as String),
          leadTime: $checkedConvert('leadTime', (v) => (v as num).toDouble()),
          isCritical: $checkedConvert('isCritical', (v) => v as bool),
          level: $checkedConvert('level', (v) => (v as num).toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$BomLeadTimeItemToJson(_BomLeadTimeItem instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'itemName': instance.itemName,
      'leadTime': instance.leadTime,
      'isCritical': instance.isCritical,
      'level': instance.level,
    };

_CloneBomRequest _$CloneBomRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_CloneBomRequest',
      json,
      ($checkedConvert) {
        final val = _CloneBomRequest(
          name: $checkedConvert('name', (v) => v as String),
          version: $checkedConvert('version', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          includeComponents:
              $checkedConvert('includeComponents', (v) => v as bool?),
          updateReferences:
              $checkedConvert('updateReferences', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$CloneBomRequestToJson(_CloneBomRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'version': instance.version,
      'description': instance.description,
      'includeComponents': instance.includeComponents,
      'updateReferences': instance.updateReferences,
    };

_CreateBomQuickRequest _$CreateBomQuickRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_CreateBomQuickRequest',
      json,
      ($checkedConvert) {
        final val = _CreateBomQuickRequest(
          itemId: $checkedConvert('itemId', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          version: $checkedConvert('version', (v) => v as String),
          components: $checkedConvert(
              'components',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      BomQuickComponent.fromJson(e as Map<String, dynamic>))
                  .toList()),
          description: $checkedConvert('description', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$CreateBomQuickRequestToJson(
        _CreateBomQuickRequest instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'name': instance.name,
      'version': instance.version,
      'components': instance.components.map((e) => e.toJson()).toList(),
      'description': instance.description,
    };

_BomQuickComponent _$BomQuickComponentFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_BomQuickComponent',
      json,
      ($checkedConvert) {
        final val = _BomQuickComponent(
          itemId: $checkedConvert('itemId', (v) => v as String),
          quantity: $checkedConvert('quantity', (v) => (v as num).toDouble()),
          unit: $checkedConvert('unit', (v) => v as String),
          unitCost: $checkedConvert('unitCost', (v) => (v as num?)?.toDouble()),
          sequence: $checkedConvert('sequence', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$BomQuickComponentToJson(_BomQuickComponent instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'unitCost': instance.unitCost,
      'sequence': instance.sequence,
    };
