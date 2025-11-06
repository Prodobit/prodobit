// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_quotation_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SupplierQuotation _$SupplierQuotationFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_SupplierQuotation',
      json,
      ($checkedConvert) {
        final val = _SupplierQuotation(
          id: $checkedConvert('id', (v) => v as String),
          quotationNumber:
              $checkedConvert('quotationNumber', (v) => v as String),
          supplierId: $checkedConvert('supplierId', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          quotationDate: $checkedConvert(
              'quotationDate', (v) => DateTime.parse(v as String)),
          validUntil:
              $checkedConvert('validUntil', (v) => DateTime.parse(v as String)),
          totalAmount:
              $checkedConvert('totalAmount', (v) => (v as num).toDouble()),
          taxAmount: $checkedConvert('taxAmount', (v) => (v as num).toDouble()),
          netAmount: $checkedConvert('netAmount', (v) => (v as num).toDouble()),
          createdAt:
              $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
          sentAt: $checkedConvert(
              'sentAt', (v) => v == null ? null : DateTime.parse(v as String)),
          receivedAt: $checkedConvert('receivedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          selectedAt: $checkedConvert('selectedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          rejectedAt: $checkedConvert('rejectedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          rfqId: $checkedConvert('rfqId', (v) => v as String?),
          selectedBy: $checkedConvert('selectedBy', (v) => v as String?),
          rejectedBy: $checkedConvert('rejectedBy', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          termsAndConditions:
              $checkedConvert('termsAndConditions', (v) => v as String?),
          paymentTerms: $checkedConvert('paymentTerms', (v) => v as String?),
          deliveryTerms: $checkedConvert('deliveryTerms', (v) => v as String?),
          supplierReference:
              $checkedConvert('supplierReference', (v) => v as String?),
          contactPerson: $checkedConvert('contactPerson', (v) => v as String?),
          contactEmail: $checkedConvert('contactEmail', (v) => v as String?),
          contactPhone: $checkedConvert('contactPhone', (v) => v as String?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$SupplierQuotationToJson(_SupplierQuotation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quotationNumber': instance.quotationNumber,
      'supplierId': instance.supplierId,
      'status': instance.status,
      'quotationDate': instance.quotationDate.toIso8601String(),
      'validUntil': instance.validUntil.toIso8601String(),
      'totalAmount': instance.totalAmount,
      'taxAmount': instance.taxAmount,
      'netAmount': instance.netAmount,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'sentAt': instance.sentAt?.toIso8601String(),
      'receivedAt': instance.receivedAt?.toIso8601String(),
      'selectedAt': instance.selectedAt?.toIso8601String(),
      'rejectedAt': instance.rejectedAt?.toIso8601String(),
      'rfqId': instance.rfqId,
      'selectedBy': instance.selectedBy,
      'rejectedBy': instance.rejectedBy,
      'notes': instance.notes,
      'termsAndConditions': instance.termsAndConditions,
      'paymentTerms': instance.paymentTerms,
      'deliveryTerms': instance.deliveryTerms,
      'supplierReference': instance.supplierReference,
      'contactPerson': instance.contactPerson,
      'contactEmail': instance.contactEmail,
      'contactPhone': instance.contactPhone,
      'metadata': instance.metadata,
    };

_SupplierQuotationLineItem _$SupplierQuotationLineItemFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_SupplierQuotationLineItem',
      json,
      ($checkedConvert) {
        final val = _SupplierQuotationLineItem(
          id: $checkedConvert('id', (v) => v as String),
          supplierQuotationId:
              $checkedConvert('supplierQuotationId', (v) => v as String),
          itemId: $checkedConvert('itemId', (v) => v as String),
          quantity: $checkedConvert('quantity', (v) => (v as num).toDouble()),
          unit: $checkedConvert('unit', (v) => v as String),
          unitPrice: $checkedConvert('unitPrice', (v) => (v as num).toDouble()),
          totalPrice:
              $checkedConvert('totalPrice', (v) => (v as num).toDouble()),
          discountAmount:
              $checkedConvert('discountAmount', (v) => (v as num).toDouble()),
          taxAmount: $checkedConvert('taxAmount', (v) => (v as num).toDouble()),
          netAmount: $checkedConvert('netAmount', (v) => (v as num).toDouble()),
          status: $checkedConvert('status', (v) => v as String),
          sequence: $checkedConvert('sequence', (v) => (v as num?)?.toInt()),
          leadTimeDays:
              $checkedConvert('leadTimeDays', (v) => (v as num?)?.toInt()),
          deliveryDate: $checkedConvert('deliveryDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          notes: $checkedConvert('notes', (v) => v as String?),
          specification: $checkedConvert('specification', (v) => v as String?),
          brandModel: $checkedConvert('brandModel', (v) => v as String?),
          partNumber: $checkedConvert('partNumber', (v) => v as String?),
          moq: $checkedConvert('moq', (v) => (v as num?)?.toDouble()),
          attributes:
              $checkedConvert('attributes', (v) => v as Map<String, dynamic>?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$SupplierQuotationLineItemToJson(
        _SupplierQuotationLineItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'supplierQuotationId': instance.supplierQuotationId,
      'itemId': instance.itemId,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'unitPrice': instance.unitPrice,
      'totalPrice': instance.totalPrice,
      'discountAmount': instance.discountAmount,
      'taxAmount': instance.taxAmount,
      'netAmount': instance.netAmount,
      'status': instance.status,
      'sequence': instance.sequence,
      'leadTimeDays': instance.leadTimeDays,
      'deliveryDate': instance.deliveryDate?.toIso8601String(),
      'notes': instance.notes,
      'specification': instance.specification,
      'brandModel': instance.brandModel,
      'partNumber': instance.partNumber,
      'moq': instance.moq,
      'attributes': instance.attributes,
      'metadata': instance.metadata,
    };

_CreateSupplierQuotationRequest _$CreateSupplierQuotationRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_CreateSupplierQuotationRequest',
      json,
      ($checkedConvert) {
        final val = _CreateSupplierQuotationRequest(
          supplierId: $checkedConvert('supplierId', (v) => v as String),
          quotationDate: $checkedConvert(
              'quotationDate', (v) => DateTime.parse(v as String)),
          validUntil:
              $checkedConvert('validUntil', (v) => DateTime.parse(v as String)),
          rfqId: $checkedConvert('rfqId', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          termsAndConditions:
              $checkedConvert('termsAndConditions', (v) => v as String?),
          paymentTerms: $checkedConvert('paymentTerms', (v) => v as String?),
          deliveryTerms: $checkedConvert('deliveryTerms', (v) => v as String?),
          supplierReference:
              $checkedConvert('supplierReference', (v) => v as String?),
          contactPerson: $checkedConvert('contactPerson', (v) => v as String?),
          contactEmail: $checkedConvert('contactEmail', (v) => v as String?),
          contactPhone: $checkedConvert('contactPhone', (v) => v as String?),
          lineItems: $checkedConvert(
              'lineItems',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => CreateSupplierQuotationLineItemRequest.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$CreateSupplierQuotationRequestToJson(
        _CreateSupplierQuotationRequest instance) =>
    <String, dynamic>{
      'supplierId': instance.supplierId,
      'quotationDate': instance.quotationDate.toIso8601String(),
      'validUntil': instance.validUntil.toIso8601String(),
      'rfqId': instance.rfqId,
      'notes': instance.notes,
      'termsAndConditions': instance.termsAndConditions,
      'paymentTerms': instance.paymentTerms,
      'deliveryTerms': instance.deliveryTerms,
      'supplierReference': instance.supplierReference,
      'contactPerson': instance.contactPerson,
      'contactEmail': instance.contactEmail,
      'contactPhone': instance.contactPhone,
      'lineItems': instance.lineItems?.map((e) => e.toJson()).toList(),
      'metadata': instance.metadata,
    };

_CreateSupplierQuotationLineItemRequest
    _$CreateSupplierQuotationLineItemRequestFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          '_CreateSupplierQuotationLineItemRequest',
          json,
          ($checkedConvert) {
            final val = _CreateSupplierQuotationLineItemRequest(
              itemId: $checkedConvert('itemId', (v) => v as String),
              quantity:
                  $checkedConvert('quantity', (v) => (v as num).toDouble()),
              unit: $checkedConvert('unit', (v) => v as String),
              unitPrice:
                  $checkedConvert('unitPrice', (v) => (v as num).toDouble()),
              discountAmount: $checkedConvert(
                  'discountAmount', (v) => (v as num?)?.toDouble()),
              taxAmount:
                  $checkedConvert('taxAmount', (v) => (v as num?)?.toDouble()),
              sequence:
                  $checkedConvert('sequence', (v) => (v as num?)?.toInt()),
              leadTimeDays:
                  $checkedConvert('leadTimeDays', (v) => (v as num?)?.toInt()),
              deliveryDate: $checkedConvert('deliveryDate',
                  (v) => v == null ? null : DateTime.parse(v as String)),
              notes: $checkedConvert('notes', (v) => v as String?),
              specification:
                  $checkedConvert('specification', (v) => v as String?),
              brandModel: $checkedConvert('brandModel', (v) => v as String?),
              partNumber: $checkedConvert('partNumber', (v) => v as String?),
              moq: $checkedConvert('moq', (v) => (v as num?)?.toDouble()),
              attributes: $checkedConvert(
                  'attributes', (v) => v as Map<String, dynamic>?),
            );
            return val;
          },
        );

Map<String, dynamic> _$CreateSupplierQuotationLineItemRequestToJson(
        _CreateSupplierQuotationLineItemRequest instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'unitPrice': instance.unitPrice,
      'discountAmount': instance.discountAmount,
      'taxAmount': instance.taxAmount,
      'sequence': instance.sequence,
      'leadTimeDays': instance.leadTimeDays,
      'deliveryDate': instance.deliveryDate?.toIso8601String(),
      'notes': instance.notes,
      'specification': instance.specification,
      'brandModel': instance.brandModel,
      'partNumber': instance.partNumber,
      'moq': instance.moq,
      'attributes': instance.attributes,
    };

_UpdateSupplierQuotationRequest _$UpdateSupplierQuotationRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_UpdateSupplierQuotationRequest',
      json,
      ($checkedConvert) {
        final val = _UpdateSupplierQuotationRequest(
          quotationDate: $checkedConvert('quotationDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          validUntil: $checkedConvert('validUntil',
              (v) => v == null ? null : DateTime.parse(v as String)),
          notes: $checkedConvert('notes', (v) => v as String?),
          termsAndConditions:
              $checkedConvert('termsAndConditions', (v) => v as String?),
          paymentTerms: $checkedConvert('paymentTerms', (v) => v as String?),
          deliveryTerms: $checkedConvert('deliveryTerms', (v) => v as String?),
          supplierReference:
              $checkedConvert('supplierReference', (v) => v as String?),
          contactPerson: $checkedConvert('contactPerson', (v) => v as String?),
          contactEmail: $checkedConvert('contactEmail', (v) => v as String?),
          contactPhone: $checkedConvert('contactPhone', (v) => v as String?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$UpdateSupplierQuotationRequestToJson(
        _UpdateSupplierQuotationRequest instance) =>
    <String, dynamic>{
      'quotationDate': instance.quotationDate?.toIso8601String(),
      'validUntil': instance.validUntil?.toIso8601String(),
      'notes': instance.notes,
      'termsAndConditions': instance.termsAndConditions,
      'paymentTerms': instance.paymentTerms,
      'deliveryTerms': instance.deliveryTerms,
      'supplierReference': instance.supplierReference,
      'contactPerson': instance.contactPerson,
      'contactEmail': instance.contactEmail,
      'contactPhone': instance.contactPhone,
      'metadata': instance.metadata,
    };

_SupplierQuotationFilters _$SupplierQuotationFiltersFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_SupplierQuotationFilters',
      json,
      ($checkedConvert) {
        final val = _SupplierQuotationFilters(
          supplierId: $checkedConvert('supplierId', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          rfqId: $checkedConvert('rfqId', (v) => v as String?),
          quotationDateAfter: $checkedConvert('quotationDateAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          quotationDateBefore: $checkedConvert('quotationDateBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          validUntilAfter: $checkedConvert('validUntilAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          validUntilBefore: $checkedConvert('validUntilBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          totalAmountMin:
              $checkedConvert('totalAmountMin', (v) => (v as num?)?.toDouble()),
          totalAmountMax:
              $checkedConvert('totalAmountMax', (v) => (v as num?)?.toDouble()),
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

Map<String, dynamic> _$SupplierQuotationFiltersToJson(
        _SupplierQuotationFilters instance) =>
    <String, dynamic>{
      'supplierId': instance.supplierId,
      'status': instance.status,
      'rfqId': instance.rfqId,
      'quotationDateAfter': instance.quotationDateAfter?.toIso8601String(),
      'quotationDateBefore': instance.quotationDateBefore?.toIso8601String(),
      'validUntilAfter': instance.validUntilAfter?.toIso8601String(),
      'validUntilBefore': instance.validUntilBefore?.toIso8601String(),
      'totalAmountMin': instance.totalAmountMin,
      'totalAmountMax': instance.totalAmountMax,
      'itemIds': instance.itemIds,
      'page': instance.page,
      'limit': instance.limit,
      'sortBy': instance.sortBy,
      'sortOrder': instance.sortOrder,
    };

_QuotationComparison _$QuotationComparisonFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_QuotationComparison',
      json,
      ($checkedConvert) {
        final val = _QuotationComparison(
          itemId: $checkedConvert('itemId', (v) => v as String),
          itemName: $checkedConvert('itemName', (v) => v as String),
          quantity: $checkedConvert('quantity', (v) => (v as num).toDouble()),
          unit: $checkedConvert('unit', (v) => v as String),
          quotations: $checkedConvert(
              'quotations',
              (v) => (v as List<dynamic>)
                  .map((e) => QuotationComparisonEntry.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          recommendation:
              $checkedConvert('recommendation', (v) => v as String?),
          analysis:
              $checkedConvert('analysis', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$QuotationComparisonToJson(
        _QuotationComparison instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'itemName': instance.itemName,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'quotations': instance.quotations.map((e) => e.toJson()).toList(),
      'recommendation': instance.recommendation,
      'analysis': instance.analysis,
    };

_QuotationComparisonEntry _$QuotationComparisonEntryFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      '_QuotationComparisonEntry',
      json,
      ($checkedConvert) {
        final val = _QuotationComparisonEntry(
          quotationId: $checkedConvert('quotationId', (v) => v as String),
          supplierId: $checkedConvert('supplierId', (v) => v as String),
          supplierName: $checkedConvert('supplierName', (v) => v as String),
          unitPrice: $checkedConvert('unitPrice', (v) => (v as num).toDouble()),
          totalPrice:
              $checkedConvert('totalPrice', (v) => (v as num).toDouble()),
          leadTimeDays:
              $checkedConvert('leadTimeDays', (v) => (v as num).toInt()),
          deliveryDate: $checkedConvert('deliveryDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          brandModel: $checkedConvert('brandModel', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          score: $checkedConvert('score', (v) => (v as num?)?.toDouble()),
          metrics:
              $checkedConvert('metrics', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$QuotationComparisonEntryToJson(
        _QuotationComparisonEntry instance) =>
    <String, dynamic>{
      'quotationId': instance.quotationId,
      'supplierId': instance.supplierId,
      'supplierName': instance.supplierName,
      'unitPrice': instance.unitPrice,
      'totalPrice': instance.totalPrice,
      'leadTimeDays': instance.leadTimeDays,
      'deliveryDate': instance.deliveryDate?.toIso8601String(),
      'brandModel': instance.brandModel,
      'notes': instance.notes,
      'score': instance.score,
      'metrics': instance.metrics,
    };
