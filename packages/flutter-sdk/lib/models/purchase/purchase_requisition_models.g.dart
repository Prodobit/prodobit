// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_requisition_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PurchaseRequisitionImpl _$$PurchaseRequisitionImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PurchaseRequisitionImpl',
      json,
      ($checkedConvert) {
        final val = _$PurchaseRequisitionImpl(
          id: $checkedConvert('id', (v) => v as String),
          requisitionNumber:
              $checkedConvert('requisitionNumber', (v) => v as String),
          requestedBy: $checkedConvert('requestedBy', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          requestDate: $checkedConvert(
              'requestDate', (v) => DateTime.parse(v as String)),
          requiredDate: $checkedConvert(
              'requiredDate', (v) => DateTime.parse(v as String)),
          priority: $checkedConvert('priority', (v) => v as String),
          createdAt:
              $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
          submittedAt: $checkedConvert('submittedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          approvedAt: $checkedConvert('approvedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          rejectedAt: $checkedConvert('rejectedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          convertedAt: $checkedConvert('convertedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          closedAt: $checkedConvert('closedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          cancelledAt: $checkedConvert('cancelledAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          approvedBy: $checkedConvert('approvedBy', (v) => v as String?),
          rejectedBy: $checkedConvert('rejectedBy', (v) => v as String?),
          convertedBy: $checkedConvert('convertedBy', (v) => v as String?),
          department: $checkedConvert('department', (v) => v as String?),
          costCenter: $checkedConvert('costCenter', (v) => v as String?),
          project: $checkedConvert('project', (v) => v as String?),
          justification: $checkedConvert('justification', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          rejectionReason:
              $checkedConvert('rejectionReason', (v) => v as String?),
          approvalNotes: $checkedConvert('approvalNotes', (v) => v as String?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PurchaseRequisitionImplToJson(
        _$PurchaseRequisitionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'requisitionNumber': instance.requisitionNumber,
      'requestedBy': instance.requestedBy,
      'status': instance.status,
      'requestDate': instance.requestDate.toIso8601String(),
      'requiredDate': instance.requiredDate.toIso8601String(),
      'priority': instance.priority,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'submittedAt': instance.submittedAt?.toIso8601String(),
      'approvedAt': instance.approvedAt?.toIso8601String(),
      'rejectedAt': instance.rejectedAt?.toIso8601String(),
      'convertedAt': instance.convertedAt?.toIso8601String(),
      'closedAt': instance.closedAt?.toIso8601String(),
      'cancelledAt': instance.cancelledAt?.toIso8601String(),
      'approvedBy': instance.approvedBy,
      'rejectedBy': instance.rejectedBy,
      'convertedBy': instance.convertedBy,
      'department': instance.department,
      'costCenter': instance.costCenter,
      'project': instance.project,
      'justification': instance.justification,
      'notes': instance.notes,
      'rejectionReason': instance.rejectionReason,
      'approvalNotes': instance.approvalNotes,
      'metadata': instance.metadata,
    };

_$PurchaseRequisitionLineItemImpl _$$PurchaseRequisitionLineItemImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PurchaseRequisitionLineItemImpl',
      json,
      ($checkedConvert) {
        final val = _$PurchaseRequisitionLineItemImpl(
          id: $checkedConvert('id', (v) => v as String),
          purchaseRequisitionId:
              $checkedConvert('purchaseRequisitionId', (v) => v as String),
          itemId: $checkedConvert('itemId', (v) => v as String),
          quantity: $checkedConvert('quantity', (v) => (v as num).toDouble()),
          unit: $checkedConvert('unit', (v) => v as String),
          requiredDate: $checkedConvert(
              'requiredDate', (v) => DateTime.parse(v as String)),
          status: $checkedConvert('status', (v) => v as String),
          estimatedPrice:
              $checkedConvert('estimatedPrice', (v) => (v as num?)?.toDouble()),
          budgetAmount:
              $checkedConvert('budgetAmount', (v) => (v as num?)?.toDouble()),
          sequence: $checkedConvert('sequence', (v) => (v as num?)?.toInt()),
          justification: $checkedConvert('justification', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          specification: $checkedConvert('specification', (v) => v as String?),
          preferredSupplier:
              $checkedConvert('preferredSupplier', (v) => v as String?),
          convertedPurchaseOrderId:
              $checkedConvert('convertedPurchaseOrderId', (v) => v as String?),
          attributes:
              $checkedConvert('attributes', (v) => v as Map<String, dynamic>?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PurchaseRequisitionLineItemImplToJson(
        _$PurchaseRequisitionLineItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'purchaseRequisitionId': instance.purchaseRequisitionId,
      'itemId': instance.itemId,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'requiredDate': instance.requiredDate.toIso8601String(),
      'status': instance.status,
      'estimatedPrice': instance.estimatedPrice,
      'budgetAmount': instance.budgetAmount,
      'sequence': instance.sequence,
      'justification': instance.justification,
      'notes': instance.notes,
      'specification': instance.specification,
      'preferredSupplier': instance.preferredSupplier,
      'convertedPurchaseOrderId': instance.convertedPurchaseOrderId,
      'attributes': instance.attributes,
      'metadata': instance.metadata,
    };

_$CreatePurchaseRequisitionRequestImpl
    _$$CreatePurchaseRequisitionRequestImplFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$CreatePurchaseRequisitionRequestImpl',
          json,
          ($checkedConvert) {
            final val = _$CreatePurchaseRequisitionRequestImpl(
              requiredDate: $checkedConvert(
                  'requiredDate', (v) => DateTime.parse(v as String)),
              priority: $checkedConvert('priority', (v) => v as String),
              department: $checkedConvert('department', (v) => v as String?),
              costCenter: $checkedConvert('costCenter', (v) => v as String?),
              project: $checkedConvert('project', (v) => v as String?),
              justification:
                  $checkedConvert('justification', (v) => v as String?),
              notes: $checkedConvert('notes', (v) => v as String?),
              lineItems: $checkedConvert(
                  'lineItems',
                  (v) => (v as List<dynamic>?)
                      ?.map((e) =>
                          CreatePurchaseRequisitionLineItemRequest.fromJson(
                              e as Map<String, dynamic>))
                      .toList()),
              metadata: $checkedConvert(
                  'metadata', (v) => v as Map<String, dynamic>?),
            );
            return val;
          },
        );

Map<String, dynamic> _$$CreatePurchaseRequisitionRequestImplToJson(
        _$CreatePurchaseRequisitionRequestImpl instance) =>
    <String, dynamic>{
      'requiredDate': instance.requiredDate.toIso8601String(),
      'priority': instance.priority,
      'department': instance.department,
      'costCenter': instance.costCenter,
      'project': instance.project,
      'justification': instance.justification,
      'notes': instance.notes,
      'lineItems': instance.lineItems?.map((e) => e.toJson()).toList(),
      'metadata': instance.metadata,
    };

_$CreatePurchaseRequisitionLineItemRequestImpl
    _$$CreatePurchaseRequisitionLineItemRequestImplFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$CreatePurchaseRequisitionLineItemRequestImpl',
          json,
          ($checkedConvert) {
            final val = _$CreatePurchaseRequisitionLineItemRequestImpl(
              itemId: $checkedConvert('itemId', (v) => v as String),
              quantity:
                  $checkedConvert('quantity', (v) => (v as num).toDouble()),
              unit: $checkedConvert('unit', (v) => v as String),
              requiredDate: $checkedConvert(
                  'requiredDate', (v) => DateTime.parse(v as String)),
              estimatedPrice: $checkedConvert(
                  'estimatedPrice', (v) => (v as num?)?.toDouble()),
              budgetAmount: $checkedConvert(
                  'budgetAmount', (v) => (v as num?)?.toDouble()),
              sequence:
                  $checkedConvert('sequence', (v) => (v as num?)?.toInt()),
              justification:
                  $checkedConvert('justification', (v) => v as String?),
              notes: $checkedConvert('notes', (v) => v as String?),
              specification:
                  $checkedConvert('specification', (v) => v as String?),
              preferredSupplier:
                  $checkedConvert('preferredSupplier', (v) => v as String?),
              attributes: $checkedConvert(
                  'attributes', (v) => v as Map<String, dynamic>?),
            );
            return val;
          },
        );

Map<String, dynamic> _$$CreatePurchaseRequisitionLineItemRequestImplToJson(
        _$CreatePurchaseRequisitionLineItemRequestImpl instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'requiredDate': instance.requiredDate.toIso8601String(),
      'estimatedPrice': instance.estimatedPrice,
      'budgetAmount': instance.budgetAmount,
      'sequence': instance.sequence,
      'justification': instance.justification,
      'notes': instance.notes,
      'specification': instance.specification,
      'preferredSupplier': instance.preferredSupplier,
      'attributes': instance.attributes,
    };

_$UpdatePurchaseRequisitionRequestImpl
    _$$UpdatePurchaseRequisitionRequestImplFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$UpdatePurchaseRequisitionRequestImpl',
          json,
          ($checkedConvert) {
            final val = _$UpdatePurchaseRequisitionRequestImpl(
              requiredDate: $checkedConvert('requiredDate',
                  (v) => v == null ? null : DateTime.parse(v as String)),
              priority: $checkedConvert('priority', (v) => v as String?),
              department: $checkedConvert('department', (v) => v as String?),
              costCenter: $checkedConvert('costCenter', (v) => v as String?),
              project: $checkedConvert('project', (v) => v as String?),
              justification:
                  $checkedConvert('justification', (v) => v as String?),
              notes: $checkedConvert('notes', (v) => v as String?),
              metadata: $checkedConvert(
                  'metadata', (v) => v as Map<String, dynamic>?),
            );
            return val;
          },
        );

Map<String, dynamic> _$$UpdatePurchaseRequisitionRequestImplToJson(
        _$UpdatePurchaseRequisitionRequestImpl instance) =>
    <String, dynamic>{
      'requiredDate': instance.requiredDate?.toIso8601String(),
      'priority': instance.priority,
      'department': instance.department,
      'costCenter': instance.costCenter,
      'project': instance.project,
      'justification': instance.justification,
      'notes': instance.notes,
      'metadata': instance.metadata,
    };

_$UpdatePurchaseRequisitionLineItemRequestImpl
    _$$UpdatePurchaseRequisitionLineItemRequestImplFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$UpdatePurchaseRequisitionLineItemRequestImpl',
          json,
          ($checkedConvert) {
            final val = _$UpdatePurchaseRequisitionLineItemRequestImpl(
              quantity:
                  $checkedConvert('quantity', (v) => (v as num?)?.toDouble()),
              unit: $checkedConvert('unit', (v) => v as String?),
              requiredDate: $checkedConvert('requiredDate',
                  (v) => v == null ? null : DateTime.parse(v as String)),
              estimatedPrice: $checkedConvert(
                  'estimatedPrice', (v) => (v as num?)?.toDouble()),
              budgetAmount: $checkedConvert(
                  'budgetAmount', (v) => (v as num?)?.toDouble()),
              sequence:
                  $checkedConvert('sequence', (v) => (v as num?)?.toInt()),
              justification:
                  $checkedConvert('justification', (v) => v as String?),
              notes: $checkedConvert('notes', (v) => v as String?),
              specification:
                  $checkedConvert('specification', (v) => v as String?),
              preferredSupplier:
                  $checkedConvert('preferredSupplier', (v) => v as String?),
              attributes: $checkedConvert(
                  'attributes', (v) => v as Map<String, dynamic>?),
            );
            return val;
          },
        );

Map<String, dynamic> _$$UpdatePurchaseRequisitionLineItemRequestImplToJson(
        _$UpdatePurchaseRequisitionLineItemRequestImpl instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'unit': instance.unit,
      'requiredDate': instance.requiredDate?.toIso8601String(),
      'estimatedPrice': instance.estimatedPrice,
      'budgetAmount': instance.budgetAmount,
      'sequence': instance.sequence,
      'justification': instance.justification,
      'notes': instance.notes,
      'specification': instance.specification,
      'preferredSupplier': instance.preferredSupplier,
      'attributes': instance.attributes,
    };

_$PurchaseRequisitionFiltersImpl _$$PurchaseRequisitionFiltersImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PurchaseRequisitionFiltersImpl',
      json,
      ($checkedConvert) {
        final val = _$PurchaseRequisitionFiltersImpl(
          requestedBy: $checkedConvert('requestedBy', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          priority: $checkedConvert('priority', (v) => v as String?),
          department: $checkedConvert('department', (v) => v as String?),
          costCenter: $checkedConvert('costCenter', (v) => v as String?),
          project: $checkedConvert('project', (v) => v as String?),
          requestDateAfter: $checkedConvert('requestDateAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          requestDateBefore: $checkedConvert('requestDateBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          requiredDateAfter: $checkedConvert('requiredDateAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          requiredDateBefore: $checkedConvert('requiredDateBefore',
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

Map<String, dynamic> _$$PurchaseRequisitionFiltersImplToJson(
        _$PurchaseRequisitionFiltersImpl instance) =>
    <String, dynamic>{
      'requestedBy': instance.requestedBy,
      'status': instance.status,
      'priority': instance.priority,
      'department': instance.department,
      'costCenter': instance.costCenter,
      'project': instance.project,
      'requestDateAfter': instance.requestDateAfter?.toIso8601String(),
      'requestDateBefore': instance.requestDateBefore?.toIso8601String(),
      'requiredDateAfter': instance.requiredDateAfter?.toIso8601String(),
      'requiredDateBefore': instance.requiredDateBefore?.toIso8601String(),
      'itemIds': instance.itemIds,
      'page': instance.page,
      'limit': instance.limit,
      'sortBy': instance.sortBy,
      'sortOrder': instance.sortOrder,
    };

_$ApprovePurchaseRequisitionRequestImpl
    _$$ApprovePurchaseRequisitionRequestImplFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$ApprovePurchaseRequisitionRequestImpl',
          json,
          ($checkedConvert) {
            final val = _$ApprovePurchaseRequisitionRequestImpl(
              notes: $checkedConvert('notes', (v) => v as String?),
            );
            return val;
          },
        );

Map<String, dynamic> _$$ApprovePurchaseRequisitionRequestImplToJson(
        _$ApprovePurchaseRequisitionRequestImpl instance) =>
    <String, dynamic>{
      'notes': instance.notes,
    };

_$RejectPurchaseRequisitionRequestImpl
    _$$RejectPurchaseRequisitionRequestImplFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$RejectPurchaseRequisitionRequestImpl',
          json,
          ($checkedConvert) {
            final val = _$RejectPurchaseRequisitionRequestImpl(
              reason: $checkedConvert('reason', (v) => v as String),
              notes: $checkedConvert('notes', (v) => v as String?),
            );
            return val;
          },
        );

Map<String, dynamic> _$$RejectPurchaseRequisitionRequestImplToJson(
        _$RejectPurchaseRequisitionRequestImpl instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'notes': instance.notes,
    };
