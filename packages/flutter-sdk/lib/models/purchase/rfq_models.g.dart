// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rfq_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RFQ _$RFQFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_RFQ',
      json,
      ($checkedConvert) {
        final val = _RFQ(
          id: $checkedConvert('id', (v) => v as String),
          rfqNumber: $checkedConvert('rfqNumber', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          rfqDate:
              $checkedConvert('rfqDate', (v) => DateTime.parse(v as String)),
          responseDeadline: $checkedConvert(
              'responseDeadline', (v) => DateTime.parse(v as String)),
          createdAt:
              $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
          sentAt: $checkedConvert(
              'sentAt', (v) => v == null ? null : DateTime.parse(v as String)),
          closedAt: $checkedConvert('closedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          cancelledAt: $checkedConvert('cancelledAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          createdBy: $checkedConvert('createdBy', (v) => v as String?),
          closedBy: $checkedConvert('closedBy', (v) => v as String?),
          cancelledBy: $checkedConvert('cancelledBy', (v) => v as String?),
          department: $checkedConvert('department', (v) => v as String?),
          project: $checkedConvert('project', (v) => v as String?),
          deliveryLocation:
              $checkedConvert('deliveryLocation', (v) => v as String?),
          paymentTerms: $checkedConvert('paymentTerms', (v) => v as String?),
          evaluationCriteria:
              $checkedConvert('evaluationCriteria', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          termsAndConditions:
              $checkedConvert('termsAndConditions', (v) => v as String?),
          supplierIds: $checkedConvert('supplierIds',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$RFQToJson(_RFQ instance) => <String, dynamic>{
      'id': instance.id,
      'rfqNumber': instance.rfqNumber,
      'title': instance.title,
      'description': instance.description,
      'status': instance.status,
      'rfqDate': instance.rfqDate.toIso8601String(),
      'responseDeadline': instance.responseDeadline.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'sentAt': instance.sentAt?.toIso8601String(),
      'closedAt': instance.closedAt?.toIso8601String(),
      'cancelledAt': instance.cancelledAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'closedBy': instance.closedBy,
      'cancelledBy': instance.cancelledBy,
      'department': instance.department,
      'project': instance.project,
      'deliveryLocation': instance.deliveryLocation,
      'paymentTerms': instance.paymentTerms,
      'evaluationCriteria': instance.evaluationCriteria,
      'notes': instance.notes,
      'termsAndConditions': instance.termsAndConditions,
      'supplierIds': instance.supplierIds,
      'metadata': instance.metadata,
    };

_RFQLineItem _$RFQLineItemFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_RFQLineItem',
      json,
      ($checkedConvert) {
        final val = _RFQLineItem(
          id: $checkedConvert('id', (v) => v as String),
          rfqId: $checkedConvert('rfqId', (v) => v as String),
          itemId: $checkedConvert('itemId', (v) => v as String),
          quantity: $checkedConvert('quantity', (v) => (v as num).toDouble()),
          unit: $checkedConvert('unit', (v) => v as String),
          requiredDate: $checkedConvert(
              'requiredDate', (v) => DateTime.parse(v as String)),
          sequence: $checkedConvert('sequence', (v) => (v as num?)?.toInt()),
          specification: $checkedConvert('specification', (v) => v as String?),
          brandPreference:
              $checkedConvert('brandPreference', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          budgetPrice:
              $checkedConvert('budgetPrice', (v) => (v as num?)?.toDouble()),
          maxPrice: $checkedConvert('maxPrice', (v) => (v as num?)?.toDouble()),
          technicalRequirements: $checkedConvert(
              'technicalRequirements', (v) => v as Map<String, dynamic>?),
          attributes:
              $checkedConvert('attributes', (v) => v as Map<String, dynamic>?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$RFQLineItemToJson(_RFQLineItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rfqId': instance.rfqId,
      'itemId': instance.itemId,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'requiredDate': instance.requiredDate.toIso8601String(),
      'sequence': instance.sequence,
      'specification': instance.specification,
      'brandPreference': instance.brandPreference,
      'notes': instance.notes,
      'budgetPrice': instance.budgetPrice,
      'maxPrice': instance.maxPrice,
      'technicalRequirements': instance.technicalRequirements,
      'attributes': instance.attributes,
      'metadata': instance.metadata,
    };

_RFQSupplier _$RFQSupplierFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_RFQSupplier',
      json,
      ($checkedConvert) {
        final val = _RFQSupplier(
          id: $checkedConvert('id', (v) => v as String),
          rfqId: $checkedConvert('rfqId', (v) => v as String),
          supplierId: $checkedConvert('supplierId', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          invitedAt:
              $checkedConvert('invitedAt', (v) => DateTime.parse(v as String)),
          acknowledgedAt: $checkedConvert('acknowledgedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          quotedAt: $checkedConvert('quotedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          declinedAt: $checkedConvert('declinedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          quotationId: $checkedConvert('quotationId', (v) => v as String?),
          declineReason: $checkedConvert('declineReason', (v) => v as String?),
          contactPerson: $checkedConvert('contactPerson', (v) => v as String?),
          contactEmail: $checkedConvert('contactEmail', (v) => v as String?),
          contactPhone: $checkedConvert('contactPhone', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$RFQSupplierToJson(_RFQSupplier instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rfqId': instance.rfqId,
      'supplierId': instance.supplierId,
      'status': instance.status,
      'invitedAt': instance.invitedAt.toIso8601String(),
      'acknowledgedAt': instance.acknowledgedAt?.toIso8601String(),
      'quotedAt': instance.quotedAt?.toIso8601String(),
      'declinedAt': instance.declinedAt?.toIso8601String(),
      'quotationId': instance.quotationId,
      'declineReason': instance.declineReason,
      'contactPerson': instance.contactPerson,
      'contactEmail': instance.contactEmail,
      'contactPhone': instance.contactPhone,
      'notes': instance.notes,
      'metadata': instance.metadata,
    };

_CreateRFQRequest _$CreateRFQRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_CreateRFQRequest',
      json,
      ($checkedConvert) {
        final val = _CreateRFQRequest(
          title: $checkedConvert('title', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          responseDeadline: $checkedConvert(
              'responseDeadline', (v) => DateTime.parse(v as String)),
          department: $checkedConvert('department', (v) => v as String?),
          project: $checkedConvert('project', (v) => v as String?),
          deliveryLocation:
              $checkedConvert('deliveryLocation', (v) => v as String?),
          paymentTerms: $checkedConvert('paymentTerms', (v) => v as String?),
          evaluationCriteria:
              $checkedConvert('evaluationCriteria', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          termsAndConditions:
              $checkedConvert('termsAndConditions', (v) => v as String?),
          supplierIds: $checkedConvert('supplierIds',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          lineItems: $checkedConvert(
              'lineItems',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => CreateRFQLineItemRequest.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$CreateRFQRequestToJson(_CreateRFQRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'responseDeadline': instance.responseDeadline.toIso8601String(),
      'department': instance.department,
      'project': instance.project,
      'deliveryLocation': instance.deliveryLocation,
      'paymentTerms': instance.paymentTerms,
      'evaluationCriteria': instance.evaluationCriteria,
      'notes': instance.notes,
      'termsAndConditions': instance.termsAndConditions,
      'supplierIds': instance.supplierIds,
      'lineItems': instance.lineItems?.map((e) => e.toJson()).toList(),
      'metadata': instance.metadata,
    };

_CreateRFQLineItemRequest _$CreateRFQLineItemRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_CreateRFQLineItemRequest',
      json,
      ($checkedConvert) {
        final val = _CreateRFQLineItemRequest(
          itemId: $checkedConvert('itemId', (v) => v as String),
          quantity: $checkedConvert('quantity', (v) => (v as num).toDouble()),
          unit: $checkedConvert('unit', (v) => v as String),
          requiredDate: $checkedConvert(
              'requiredDate', (v) => DateTime.parse(v as String)),
          sequence: $checkedConvert('sequence', (v) => (v as num?)?.toInt()),
          specification: $checkedConvert('specification', (v) => v as String?),
          brandPreference:
              $checkedConvert('brandPreference', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          budgetPrice:
              $checkedConvert('budgetPrice', (v) => (v as num?)?.toDouble()),
          maxPrice: $checkedConvert('maxPrice', (v) => (v as num?)?.toDouble()),
          technicalRequirements: $checkedConvert(
              'technicalRequirements', (v) => v as Map<String, dynamic>?),
          attributes:
              $checkedConvert('attributes', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$CreateRFQLineItemRequestToJson(
        _CreateRFQLineItemRequest instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'requiredDate': instance.requiredDate.toIso8601String(),
      'sequence': instance.sequence,
      'specification': instance.specification,
      'brandPreference': instance.brandPreference,
      'notes': instance.notes,
      'budgetPrice': instance.budgetPrice,
      'maxPrice': instance.maxPrice,
      'technicalRequirements': instance.technicalRequirements,
      'attributes': instance.attributes,
    };

_UpdateRFQRequest _$UpdateRFQRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_UpdateRFQRequest',
      json,
      ($checkedConvert) {
        final val = _UpdateRFQRequest(
          title: $checkedConvert('title', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          responseDeadline: $checkedConvert('responseDeadline',
              (v) => v == null ? null : DateTime.parse(v as String)),
          department: $checkedConvert('department', (v) => v as String?),
          project: $checkedConvert('project', (v) => v as String?),
          deliveryLocation:
              $checkedConvert('deliveryLocation', (v) => v as String?),
          paymentTerms: $checkedConvert('paymentTerms', (v) => v as String?),
          evaluationCriteria:
              $checkedConvert('evaluationCriteria', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          termsAndConditions:
              $checkedConvert('termsAndConditions', (v) => v as String?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$UpdateRFQRequestToJson(_UpdateRFQRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'responseDeadline': instance.responseDeadline?.toIso8601String(),
      'department': instance.department,
      'project': instance.project,
      'deliveryLocation': instance.deliveryLocation,
      'paymentTerms': instance.paymentTerms,
      'evaluationCriteria': instance.evaluationCriteria,
      'notes': instance.notes,
      'termsAndConditions': instance.termsAndConditions,
      'metadata': instance.metadata,
    };

_RFQFilters _$RFQFiltersFromJson(Map<String, dynamic> json) => $checkedCreate(
      '_RFQFilters',
      json,
      ($checkedConvert) {
        final val = _RFQFilters(
          status: $checkedConvert('status', (v) => v as String?),
          createdBy: $checkedConvert('createdBy', (v) => v as String?),
          department: $checkedConvert('department', (v) => v as String?),
          project: $checkedConvert('project', (v) => v as String?),
          rfqDateAfter: $checkedConvert('rfqDateAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          rfqDateBefore: $checkedConvert('rfqDateBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          responseDeadlineAfter: $checkedConvert('responseDeadlineAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          responseDeadlineBefore: $checkedConvert('responseDeadlineBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          supplierIds: $checkedConvert('supplierIds',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
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

Map<String, dynamic> _$RFQFiltersToJson(_RFQFilters instance) =>
    <String, dynamic>{
      'status': instance.status,
      'createdBy': instance.createdBy,
      'department': instance.department,
      'project': instance.project,
      'rfqDateAfter': instance.rfqDateAfter?.toIso8601String(),
      'rfqDateBefore': instance.rfqDateBefore?.toIso8601String(),
      'responseDeadlineAfter':
          instance.responseDeadlineAfter?.toIso8601String(),
      'responseDeadlineBefore':
          instance.responseDeadlineBefore?.toIso8601String(),
      'supplierIds': instance.supplierIds,
      'itemIds': instance.itemIds,
      'page': instance.page,
      'limit': instance.limit,
      'sortBy': instance.sortBy,
      'sortOrder': instance.sortOrder,
    };

_AddRFQSupplierRequest _$AddRFQSupplierRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_AddRFQSupplierRequest',
      json,
      ($checkedConvert) {
        final val = _AddRFQSupplierRequest(
          supplierId: $checkedConvert('supplierId', (v) => v as String),
          contactPerson: $checkedConvert('contactPerson', (v) => v as String?),
          contactEmail: $checkedConvert('contactEmail', (v) => v as String?),
          contactPhone: $checkedConvert('contactPhone', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$AddRFQSupplierRequestToJson(
        _AddRFQSupplierRequest instance) =>
    <String, dynamic>{
      'supplierId': instance.supplierId,
      'contactPerson': instance.contactPerson,
      'contactEmail': instance.contactEmail,
      'contactPhone': instance.contactPhone,
      'notes': instance.notes,
    };
