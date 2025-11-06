// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eco_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Eco _$EcoFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_Eco',
      json,
      ($checkedConvert) {
        final val = _Eco(
          id: $checkedConvert('id', (v) => v as String),
          ecoNumber: $checkedConvert('ecoNumber', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          priority: $checkedConvert('priority', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          reason: $checkedConvert('reason', (v) => v as String),
          createdAt:
              $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
          requestedBy: $checkedConvert('requestedBy', (v) => v as String?),
          reviewedBy: $checkedConvert('reviewedBy', (v) => v as String?),
          approvedBy: $checkedConvert('approvedBy', (v) => v as String?),
          implementedBy: $checkedConvert('implementedBy', (v) => v as String?),
          targetImplementationDate: $checkedConvert('targetImplementationDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          actualImplementationDate: $checkedConvert('actualImplementationDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          approvedAt: $checkedConvert('approvedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          rejectedAt: $checkedConvert('rejectedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          implementedAt: $checkedConvert('implementedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          rejectionReason:
              $checkedConvert('rejectionReason', (v) => v as String?),
          implementationNotes:
              $checkedConvert('implementationNotes', (v) => v as String?),
          estimatedCost:
              $checkedConvert('estimatedCost', (v) => (v as num?)?.toDouble()),
          actualCost:
              $checkedConvert('actualCost', (v) => (v as num?)?.toDouble()),
          estimatedHours:
              $checkedConvert('estimatedHours', (v) => (v as num?)?.toInt()),
          actualHours:
              $checkedConvert('actualHours', (v) => (v as num?)?.toInt()),
          affectedBomIds: $checkedConvert('affectedBomIds',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          affectedItemIds: $checkedConvert('affectedItemIds',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$EcoToJson(_Eco instance) => <String, dynamic>{
      'id': instance.id,
      'ecoNumber': instance.ecoNumber,
      'title': instance.title,
      'description': instance.description,
      'type': instance.type,
      'priority': instance.priority,
      'status': instance.status,
      'reason': instance.reason,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'requestedBy': instance.requestedBy,
      'reviewedBy': instance.reviewedBy,
      'approvedBy': instance.approvedBy,
      'implementedBy': instance.implementedBy,
      'targetImplementationDate':
          instance.targetImplementationDate?.toIso8601String(),
      'actualImplementationDate':
          instance.actualImplementationDate?.toIso8601String(),
      'approvedAt': instance.approvedAt?.toIso8601String(),
      'rejectedAt': instance.rejectedAt?.toIso8601String(),
      'implementedAt': instance.implementedAt?.toIso8601String(),
      'rejectionReason': instance.rejectionReason,
      'implementationNotes': instance.implementationNotes,
      'estimatedCost': instance.estimatedCost,
      'actualCost': instance.actualCost,
      'estimatedHours': instance.estimatedHours,
      'actualHours': instance.actualHours,
      'affectedBomIds': instance.affectedBomIds,
      'affectedItemIds': instance.affectedItemIds,
      'metadata': instance.metadata,
    };

_CreateEcoRequest _$CreateEcoRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_CreateEcoRequest',
      json,
      ($checkedConvert) {
        final val = _CreateEcoRequest(
          ecoNumber: $checkedConvert('ecoNumber', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          priority: $checkedConvert('priority', (v) => v as String),
          reason: $checkedConvert('reason', (v) => v as String),
          targetImplementationDate: $checkedConvert('targetImplementationDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          estimatedCost:
              $checkedConvert('estimatedCost', (v) => (v as num?)?.toDouble()),
          estimatedHours:
              $checkedConvert('estimatedHours', (v) => (v as num?)?.toInt()),
          affectedBomIds: $checkedConvert('affectedBomIds',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          affectedItemIds: $checkedConvert('affectedItemIds',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$CreateEcoRequestToJson(_CreateEcoRequest instance) =>
    <String, dynamic>{
      'ecoNumber': instance.ecoNumber,
      'title': instance.title,
      'description': instance.description,
      'type': instance.type,
      'priority': instance.priority,
      'reason': instance.reason,
      'targetImplementationDate':
          instance.targetImplementationDate?.toIso8601String(),
      'estimatedCost': instance.estimatedCost,
      'estimatedHours': instance.estimatedHours,
      'affectedBomIds': instance.affectedBomIds,
      'affectedItemIds': instance.affectedItemIds,
      'metadata': instance.metadata,
    };

_UpdateEcoRequest _$UpdateEcoRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_UpdateEcoRequest',
      json,
      ($checkedConvert) {
        final val = _UpdateEcoRequest(
          title: $checkedConvert('title', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String?),
          priority: $checkedConvert('priority', (v) => v as String?),
          reason: $checkedConvert('reason', (v) => v as String?),
          targetImplementationDate: $checkedConvert('targetImplementationDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          estimatedCost:
              $checkedConvert('estimatedCost', (v) => (v as num?)?.toDouble()),
          estimatedHours:
              $checkedConvert('estimatedHours', (v) => (v as num?)?.toInt()),
          affectedBomIds: $checkedConvert('affectedBomIds',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          affectedItemIds: $checkedConvert('affectedItemIds',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$UpdateEcoRequestToJson(_UpdateEcoRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'type': instance.type,
      'priority': instance.priority,
      'reason': instance.reason,
      'targetImplementationDate':
          instance.targetImplementationDate?.toIso8601String(),
      'estimatedCost': instance.estimatedCost,
      'estimatedHours': instance.estimatedHours,
      'affectedBomIds': instance.affectedBomIds,
      'affectedItemIds': instance.affectedItemIds,
      'metadata': instance.metadata,
    };

_ApproveEcoRequest _$ApproveEcoRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_ApproveEcoRequest',
      json,
      ($checkedConvert) {
        final val = _ApproveEcoRequest(
          notes: $checkedConvert('notes', (v) => v as String?),
          targetImplementationDate: $checkedConvert('targetImplementationDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$ApproveEcoRequestToJson(_ApproveEcoRequest instance) =>
    <String, dynamic>{
      'notes': instance.notes,
      'targetImplementationDate':
          instance.targetImplementationDate?.toIso8601String(),
    };

_RejectEcoRequest _$RejectEcoRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_RejectEcoRequest',
      json,
      ($checkedConvert) {
        final val = _RejectEcoRequest(
          reason: $checkedConvert('reason', (v) => v as String),
          notes: $checkedConvert('notes', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$RejectEcoRequestToJson(_RejectEcoRequest instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'notes': instance.notes,
    };

_EcoFilters _$EcoFiltersFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_EcoFilters',
      json,
      ($checkedConvert) {
        final val = _EcoFilters(
          type: $checkedConvert('type', (v) => v as String?),
          priority: $checkedConvert('priority', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          requestedBy: $checkedConvert('requestedBy', (v) => v as String?),
          reviewedBy: $checkedConvert('reviewedBy', (v) => v as String?),
          createdAfter: $checkedConvert('createdAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          createdBefore: $checkedConvert('createdBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          targetImplementationAfter: $checkedConvert(
              'targetImplementationAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          targetImplementationBefore: $checkedConvert(
              'targetImplementationBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          affectedBomIds: $checkedConvert('affectedBomIds',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          affectedItemIds: $checkedConvert('affectedItemIds',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          page: $checkedConvert('page', (v) => (v as num?)?.toInt()),
          limit: $checkedConvert('limit', (v) => (v as num?)?.toInt()),
          sortBy: $checkedConvert('sortBy', (v) => v as String?),
          sortOrder: $checkedConvert('sortOrder', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$EcoFiltersToJson(_EcoFilters instance) =>
    <String, dynamic>{
      'type': instance.type,
      'priority': instance.priority,
      'status': instance.status,
      'requestedBy': instance.requestedBy,
      'reviewedBy': instance.reviewedBy,
      'createdAfter': instance.createdAfter?.toIso8601String(),
      'createdBefore': instance.createdBefore?.toIso8601String(),
      'targetImplementationAfter':
          instance.targetImplementationAfter?.toIso8601String(),
      'targetImplementationBefore':
          instance.targetImplementationBefore?.toIso8601String(),
      'affectedBomIds': instance.affectedBomIds,
      'affectedItemIds': instance.affectedItemIds,
      'page': instance.page,
      'limit': instance.limit,
      'sortBy': instance.sortBy,
      'sortOrder': instance.sortOrder,
    };
