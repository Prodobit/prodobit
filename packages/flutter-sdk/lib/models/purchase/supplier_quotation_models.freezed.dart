// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supplier_quotation_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SupplierQuotation _$SupplierQuotationFromJson(Map<String, dynamic> json) {
  return _SupplierQuotation.fromJson(json);
}

/// @nodoc
mixin _$SupplierQuotation {
  String get id => throw _privateConstructorUsedError;
  String get quotationNumber => throw _privateConstructorUsedError;
  String get supplierId => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // 'draft', 'sent', 'received', 'selected', 'rejected', 'expired'
  DateTime get quotationDate => throw _privateConstructorUsedError;
  DateTime get validUntil => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  double get taxAmount => throw _privateConstructorUsedError;
  double get netAmount => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime? get sentAt => throw _privateConstructorUsedError;
  DateTime? get receivedAt => throw _privateConstructorUsedError;
  DateTime? get selectedAt => throw _privateConstructorUsedError;
  DateTime? get rejectedAt => throw _privateConstructorUsedError;
  String? get rfqId => throw _privateConstructorUsedError;
  String? get selectedBy => throw _privateConstructorUsedError;
  String? get rejectedBy => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get termsAndConditions => throw _privateConstructorUsedError;
  String? get paymentTerms => throw _privateConstructorUsedError;
  String? get deliveryTerms => throw _privateConstructorUsedError;
  String? get supplierReference => throw _privateConstructorUsedError;
  String? get contactPerson => throw _privateConstructorUsedError;
  String? get contactEmail => throw _privateConstructorUsedError;
  String? get contactPhone => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupplierQuotationCopyWith<SupplierQuotation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplierQuotationCopyWith<$Res> {
  factory $SupplierQuotationCopyWith(
          SupplierQuotation value, $Res Function(SupplierQuotation) then) =
      _$SupplierQuotationCopyWithImpl<$Res, SupplierQuotation>;
  @useResult
  $Res call(
      {String id,
      String quotationNumber,
      String supplierId,
      String status,
      DateTime quotationDate,
      DateTime validUntil,
      double totalAmount,
      double taxAmount,
      double netAmount,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? sentAt,
      DateTime? receivedAt,
      DateTime? selectedAt,
      DateTime? rejectedAt,
      String? rfqId,
      String? selectedBy,
      String? rejectedBy,
      String? notes,
      String? termsAndConditions,
      String? paymentTerms,
      String? deliveryTerms,
      String? supplierReference,
      String? contactPerson,
      String? contactEmail,
      String? contactPhone,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$SupplierQuotationCopyWithImpl<$Res, $Val extends SupplierQuotation>
    implements $SupplierQuotationCopyWith<$Res> {
  _$SupplierQuotationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quotationNumber = null,
    Object? supplierId = null,
    Object? status = null,
    Object? quotationDate = null,
    Object? validUntil = null,
    Object? totalAmount = null,
    Object? taxAmount = null,
    Object? netAmount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? sentAt = freezed,
    Object? receivedAt = freezed,
    Object? selectedAt = freezed,
    Object? rejectedAt = freezed,
    Object? rfqId = freezed,
    Object? selectedBy = freezed,
    Object? rejectedBy = freezed,
    Object? notes = freezed,
    Object? termsAndConditions = freezed,
    Object? paymentTerms = freezed,
    Object? deliveryTerms = freezed,
    Object? supplierReference = freezed,
    Object? contactPerson = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      quotationNumber: null == quotationNumber
          ? _value.quotationNumber
          : quotationNumber // ignore: cast_nullable_to_non_nullable
              as String,
      supplierId: null == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      quotationDate: null == quotationDate
          ? _value.quotationDate
          : quotationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      validUntil: null == validUntil
          ? _value.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      netAmount: null == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      receivedAt: freezed == receivedAt
          ? _value.receivedAt
          : receivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedAt: freezed == selectedAt
          ? _value.selectedAt
          : selectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _value.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rfqId: freezed == rfqId
          ? _value.rfqId
          : rfqId // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedBy: freezed == selectedBy
          ? _value.selectedBy
          : selectedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectedBy: freezed == rejectedBy
          ? _value.rejectedBy
          : rejectedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _value.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _value.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryTerms: freezed == deliveryTerms
          ? _value.deliveryTerms
          : deliveryTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierReference: freezed == supplierReference
          ? _value.supplierReference
          : supplierReference // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPerson: freezed == contactPerson
          ? _value.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupplierQuotationImplCopyWith<$Res>
    implements $SupplierQuotationCopyWith<$Res> {
  factory _$$SupplierQuotationImplCopyWith(_$SupplierQuotationImpl value,
          $Res Function(_$SupplierQuotationImpl) then) =
      __$$SupplierQuotationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String quotationNumber,
      String supplierId,
      String status,
      DateTime quotationDate,
      DateTime validUntil,
      double totalAmount,
      double taxAmount,
      double netAmount,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? sentAt,
      DateTime? receivedAt,
      DateTime? selectedAt,
      DateTime? rejectedAt,
      String? rfqId,
      String? selectedBy,
      String? rejectedBy,
      String? notes,
      String? termsAndConditions,
      String? paymentTerms,
      String? deliveryTerms,
      String? supplierReference,
      String? contactPerson,
      String? contactEmail,
      String? contactPhone,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$SupplierQuotationImplCopyWithImpl<$Res>
    extends _$SupplierQuotationCopyWithImpl<$Res, _$SupplierQuotationImpl>
    implements _$$SupplierQuotationImplCopyWith<$Res> {
  __$$SupplierQuotationImplCopyWithImpl(_$SupplierQuotationImpl _value,
      $Res Function(_$SupplierQuotationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quotationNumber = null,
    Object? supplierId = null,
    Object? status = null,
    Object? quotationDate = null,
    Object? validUntil = null,
    Object? totalAmount = null,
    Object? taxAmount = null,
    Object? netAmount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? sentAt = freezed,
    Object? receivedAt = freezed,
    Object? selectedAt = freezed,
    Object? rejectedAt = freezed,
    Object? rfqId = freezed,
    Object? selectedBy = freezed,
    Object? rejectedBy = freezed,
    Object? notes = freezed,
    Object? termsAndConditions = freezed,
    Object? paymentTerms = freezed,
    Object? deliveryTerms = freezed,
    Object? supplierReference = freezed,
    Object? contactPerson = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$SupplierQuotationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      quotationNumber: null == quotationNumber
          ? _value.quotationNumber
          : quotationNumber // ignore: cast_nullable_to_non_nullable
              as String,
      supplierId: null == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      quotationDate: null == quotationDate
          ? _value.quotationDate
          : quotationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      validUntil: null == validUntil
          ? _value.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      netAmount: null == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      receivedAt: freezed == receivedAt
          ? _value.receivedAt
          : receivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedAt: freezed == selectedAt
          ? _value.selectedAt
          : selectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _value.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rfqId: freezed == rfqId
          ? _value.rfqId
          : rfqId // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedBy: freezed == selectedBy
          ? _value.selectedBy
          : selectedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectedBy: freezed == rejectedBy
          ? _value.rejectedBy
          : rejectedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _value.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _value.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryTerms: freezed == deliveryTerms
          ? _value.deliveryTerms
          : deliveryTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierReference: freezed == supplierReference
          ? _value.supplierReference
          : supplierReference // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPerson: freezed == contactPerson
          ? _value.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupplierQuotationImpl implements _SupplierQuotation {
  const _$SupplierQuotationImpl(
      {required this.id,
      required this.quotationNumber,
      required this.supplierId,
      required this.status,
      required this.quotationDate,
      required this.validUntil,
      required this.totalAmount,
      required this.taxAmount,
      required this.netAmount,
      required this.createdAt,
      required this.updatedAt,
      this.sentAt,
      this.receivedAt,
      this.selectedAt,
      this.rejectedAt,
      this.rfqId,
      this.selectedBy,
      this.rejectedBy,
      this.notes,
      this.termsAndConditions,
      this.paymentTerms,
      this.deliveryTerms,
      this.supplierReference,
      this.contactPerson,
      this.contactEmail,
      this.contactPhone,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$SupplierQuotationImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupplierQuotationImplFromJson(json);

  @override
  final String id;
  @override
  final String quotationNumber;
  @override
  final String supplierId;
  @override
  final String status;
// 'draft', 'sent', 'received', 'selected', 'rejected', 'expired'
  @override
  final DateTime quotationDate;
  @override
  final DateTime validUntil;
  @override
  final double totalAmount;
  @override
  final double taxAmount;
  @override
  final double netAmount;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime? sentAt;
  @override
  final DateTime? receivedAt;
  @override
  final DateTime? selectedAt;
  @override
  final DateTime? rejectedAt;
  @override
  final String? rfqId;
  @override
  final String? selectedBy;
  @override
  final String? rejectedBy;
  @override
  final String? notes;
  @override
  final String? termsAndConditions;
  @override
  final String? paymentTerms;
  @override
  final String? deliveryTerms;
  @override
  final String? supplierReference;
  @override
  final String? contactPerson;
  @override
  final String? contactEmail;
  @override
  final String? contactPhone;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SupplierQuotation(id: $id, quotationNumber: $quotationNumber, supplierId: $supplierId, status: $status, quotationDate: $quotationDate, validUntil: $validUntil, totalAmount: $totalAmount, taxAmount: $taxAmount, netAmount: $netAmount, createdAt: $createdAt, updatedAt: $updatedAt, sentAt: $sentAt, receivedAt: $receivedAt, selectedAt: $selectedAt, rejectedAt: $rejectedAt, rfqId: $rfqId, selectedBy: $selectedBy, rejectedBy: $rejectedBy, notes: $notes, termsAndConditions: $termsAndConditions, paymentTerms: $paymentTerms, deliveryTerms: $deliveryTerms, supplierReference: $supplierReference, contactPerson: $contactPerson, contactEmail: $contactEmail, contactPhone: $contactPhone, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupplierQuotationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quotationNumber, quotationNumber) ||
                other.quotationNumber == quotationNumber) &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.quotationDate, quotationDate) ||
                other.quotationDate == quotationDate) &&
            (identical(other.validUntil, validUntil) ||
                other.validUntil == validUntil) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.netAmount, netAmount) ||
                other.netAmount == netAmount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.receivedAt, receivedAt) ||
                other.receivedAt == receivedAt) &&
            (identical(other.selectedAt, selectedAt) ||
                other.selectedAt == selectedAt) &&
            (identical(other.rejectedAt, rejectedAt) ||
                other.rejectedAt == rejectedAt) &&
            (identical(other.rfqId, rfqId) || other.rfqId == rfqId) &&
            (identical(other.selectedBy, selectedBy) ||
                other.selectedBy == selectedBy) &&
            (identical(other.rejectedBy, rejectedBy) ||
                other.rejectedBy == rejectedBy) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.termsAndConditions, termsAndConditions) ||
                other.termsAndConditions == termsAndConditions) &&
            (identical(other.paymentTerms, paymentTerms) ||
                other.paymentTerms == paymentTerms) &&
            (identical(other.deliveryTerms, deliveryTerms) ||
                other.deliveryTerms == deliveryTerms) &&
            (identical(other.supplierReference, supplierReference) ||
                other.supplierReference == supplierReference) &&
            (identical(other.contactPerson, contactPerson) ||
                other.contactPerson == contactPerson) &&
            (identical(other.contactEmail, contactEmail) ||
                other.contactEmail == contactEmail) &&
            (identical(other.contactPhone, contactPhone) ||
                other.contactPhone == contactPhone) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        quotationNumber,
        supplierId,
        status,
        quotationDate,
        validUntil,
        totalAmount,
        taxAmount,
        netAmount,
        createdAt,
        updatedAt,
        sentAt,
        receivedAt,
        selectedAt,
        rejectedAt,
        rfqId,
        selectedBy,
        rejectedBy,
        notes,
        termsAndConditions,
        paymentTerms,
        deliveryTerms,
        supplierReference,
        contactPerson,
        contactEmail,
        contactPhone,
        const DeepCollectionEquality().hash(_metadata)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupplierQuotationImplCopyWith<_$SupplierQuotationImpl> get copyWith =>
      __$$SupplierQuotationImplCopyWithImpl<_$SupplierQuotationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupplierQuotationImplToJson(
      this,
    );
  }
}

abstract class _SupplierQuotation implements SupplierQuotation {
  const factory _SupplierQuotation(
      {required final String id,
      required final String quotationNumber,
      required final String supplierId,
      required final String status,
      required final DateTime quotationDate,
      required final DateTime validUntil,
      required final double totalAmount,
      required final double taxAmount,
      required final double netAmount,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final DateTime? sentAt,
      final DateTime? receivedAt,
      final DateTime? selectedAt,
      final DateTime? rejectedAt,
      final String? rfqId,
      final String? selectedBy,
      final String? rejectedBy,
      final String? notes,
      final String? termsAndConditions,
      final String? paymentTerms,
      final String? deliveryTerms,
      final String? supplierReference,
      final String? contactPerson,
      final String? contactEmail,
      final String? contactPhone,
      final Map<String, dynamic>? metadata}) = _$SupplierQuotationImpl;

  factory _SupplierQuotation.fromJson(Map<String, dynamic> json) =
      _$SupplierQuotationImpl.fromJson;

  @override
  String get id;
  @override
  String get quotationNumber;
  @override
  String get supplierId;
  @override
  String get status;
  @override // 'draft', 'sent', 'received', 'selected', 'rejected', 'expired'
  DateTime get quotationDate;
  @override
  DateTime get validUntil;
  @override
  double get totalAmount;
  @override
  double get taxAmount;
  @override
  double get netAmount;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  DateTime? get sentAt;
  @override
  DateTime? get receivedAt;
  @override
  DateTime? get selectedAt;
  @override
  DateTime? get rejectedAt;
  @override
  String? get rfqId;
  @override
  String? get selectedBy;
  @override
  String? get rejectedBy;
  @override
  String? get notes;
  @override
  String? get termsAndConditions;
  @override
  String? get paymentTerms;
  @override
  String? get deliveryTerms;
  @override
  String? get supplierReference;
  @override
  String? get contactPerson;
  @override
  String? get contactEmail;
  @override
  String? get contactPhone;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$SupplierQuotationImplCopyWith<_$SupplierQuotationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SupplierQuotationLineItem _$SupplierQuotationLineItemFromJson(
    Map<String, dynamic> json) {
  return _SupplierQuotationLineItem.fromJson(json);
}

/// @nodoc
mixin _$SupplierQuotationLineItem {
  String get id => throw _privateConstructorUsedError;
  String get supplierQuotationId => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  double get unitPrice => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  double get discountAmount => throw _privateConstructorUsedError;
  double get taxAmount => throw _privateConstructorUsedError;
  double get netAmount => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // 'pending', 'quoted', 'selected', 'rejected'
  int? get sequence => throw _privateConstructorUsedError;
  int? get leadTimeDays => throw _privateConstructorUsedError;
  DateTime? get deliveryDate => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get specification => throw _privateConstructorUsedError;
  String? get brandModel => throw _privateConstructorUsedError;
  String? get partNumber => throw _privateConstructorUsedError;
  double? get moq =>
      throw _privateConstructorUsedError; // Minimum Order Quantity
  Map<String, dynamic>? get attributes => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupplierQuotationLineItemCopyWith<SupplierQuotationLineItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplierQuotationLineItemCopyWith<$Res> {
  factory $SupplierQuotationLineItemCopyWith(SupplierQuotationLineItem value,
          $Res Function(SupplierQuotationLineItem) then) =
      _$SupplierQuotationLineItemCopyWithImpl<$Res, SupplierQuotationLineItem>;
  @useResult
  $Res call(
      {String id,
      String supplierQuotationId,
      String itemId,
      double quantity,
      String unit,
      double unitPrice,
      double totalPrice,
      double discountAmount,
      double taxAmount,
      double netAmount,
      String status,
      int? sequence,
      int? leadTimeDays,
      DateTime? deliveryDate,
      String? notes,
      String? specification,
      String? brandModel,
      String? partNumber,
      double? moq,
      Map<String, dynamic>? attributes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$SupplierQuotationLineItemCopyWithImpl<$Res,
        $Val extends SupplierQuotationLineItem>
    implements $SupplierQuotationLineItemCopyWith<$Res> {
  _$SupplierQuotationLineItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? supplierQuotationId = null,
    Object? itemId = null,
    Object? quantity = null,
    Object? unit = null,
    Object? unitPrice = null,
    Object? totalPrice = null,
    Object? discountAmount = null,
    Object? taxAmount = null,
    Object? netAmount = null,
    Object? status = null,
    Object? sequence = freezed,
    Object? leadTimeDays = freezed,
    Object? deliveryDate = freezed,
    Object? notes = freezed,
    Object? specification = freezed,
    Object? brandModel = freezed,
    Object? partNumber = freezed,
    Object? moq = freezed,
    Object? attributes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      supplierQuotationId: null == supplierQuotationId
          ? _value.supplierQuotationId
          : supplierQuotationId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      netAmount: null == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      leadTimeDays: freezed == leadTimeDays
          ? _value.leadTimeDays
          : leadTimeDays // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      brandModel: freezed == brandModel
          ? _value.brandModel
          : brandModel // ignore: cast_nullable_to_non_nullable
              as String?,
      partNumber: freezed == partNumber
          ? _value.partNumber
          : partNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      moq: freezed == moq
          ? _value.moq
          : moq // ignore: cast_nullable_to_non_nullable
              as double?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupplierQuotationLineItemImplCopyWith<$Res>
    implements $SupplierQuotationLineItemCopyWith<$Res> {
  factory _$$SupplierQuotationLineItemImplCopyWith(
          _$SupplierQuotationLineItemImpl value,
          $Res Function(_$SupplierQuotationLineItemImpl) then) =
      __$$SupplierQuotationLineItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String supplierQuotationId,
      String itemId,
      double quantity,
      String unit,
      double unitPrice,
      double totalPrice,
      double discountAmount,
      double taxAmount,
      double netAmount,
      String status,
      int? sequence,
      int? leadTimeDays,
      DateTime? deliveryDate,
      String? notes,
      String? specification,
      String? brandModel,
      String? partNumber,
      double? moq,
      Map<String, dynamic>? attributes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$SupplierQuotationLineItemImplCopyWithImpl<$Res>
    extends _$SupplierQuotationLineItemCopyWithImpl<$Res,
        _$SupplierQuotationLineItemImpl>
    implements _$$SupplierQuotationLineItemImplCopyWith<$Res> {
  __$$SupplierQuotationLineItemImplCopyWithImpl(
      _$SupplierQuotationLineItemImpl _value,
      $Res Function(_$SupplierQuotationLineItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? supplierQuotationId = null,
    Object? itemId = null,
    Object? quantity = null,
    Object? unit = null,
    Object? unitPrice = null,
    Object? totalPrice = null,
    Object? discountAmount = null,
    Object? taxAmount = null,
    Object? netAmount = null,
    Object? status = null,
    Object? sequence = freezed,
    Object? leadTimeDays = freezed,
    Object? deliveryDate = freezed,
    Object? notes = freezed,
    Object? specification = freezed,
    Object? brandModel = freezed,
    Object? partNumber = freezed,
    Object? moq = freezed,
    Object? attributes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$SupplierQuotationLineItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      supplierQuotationId: null == supplierQuotationId
          ? _value.supplierQuotationId
          : supplierQuotationId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      netAmount: null == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      leadTimeDays: freezed == leadTimeDays
          ? _value.leadTimeDays
          : leadTimeDays // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      brandModel: freezed == brandModel
          ? _value.brandModel
          : brandModel // ignore: cast_nullable_to_non_nullable
              as String?,
      partNumber: freezed == partNumber
          ? _value.partNumber
          : partNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      moq: freezed == moq
          ? _value.moq
          : moq // ignore: cast_nullable_to_non_nullable
              as double?,
      attributes: freezed == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupplierQuotationLineItemImpl implements _SupplierQuotationLineItem {
  const _$SupplierQuotationLineItemImpl(
      {required this.id,
      required this.supplierQuotationId,
      required this.itemId,
      required this.quantity,
      required this.unit,
      required this.unitPrice,
      required this.totalPrice,
      required this.discountAmount,
      required this.taxAmount,
      required this.netAmount,
      required this.status,
      this.sequence,
      this.leadTimeDays,
      this.deliveryDate,
      this.notes,
      this.specification,
      this.brandModel,
      this.partNumber,
      this.moq,
      final Map<String, dynamic>? attributes,
      final Map<String, dynamic>? metadata})
      : _attributes = attributes,
        _metadata = metadata;

  factory _$SupplierQuotationLineItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupplierQuotationLineItemImplFromJson(json);

  @override
  final String id;
  @override
  final String supplierQuotationId;
  @override
  final String itemId;
  @override
  final double quantity;
  @override
  final String unit;
  @override
  final double unitPrice;
  @override
  final double totalPrice;
  @override
  final double discountAmount;
  @override
  final double taxAmount;
  @override
  final double netAmount;
  @override
  final String status;
// 'pending', 'quoted', 'selected', 'rejected'
  @override
  final int? sequence;
  @override
  final int? leadTimeDays;
  @override
  final DateTime? deliveryDate;
  @override
  final String? notes;
  @override
  final String? specification;
  @override
  final String? brandModel;
  @override
  final String? partNumber;
  @override
  final double? moq;
// Minimum Order Quantity
  final Map<String, dynamic>? _attributes;
// Minimum Order Quantity
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SupplierQuotationLineItem(id: $id, supplierQuotationId: $supplierQuotationId, itemId: $itemId, quantity: $quantity, unit: $unit, unitPrice: $unitPrice, totalPrice: $totalPrice, discountAmount: $discountAmount, taxAmount: $taxAmount, netAmount: $netAmount, status: $status, sequence: $sequence, leadTimeDays: $leadTimeDays, deliveryDate: $deliveryDate, notes: $notes, specification: $specification, brandModel: $brandModel, partNumber: $partNumber, moq: $moq, attributes: $attributes, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupplierQuotationLineItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.supplierQuotationId, supplierQuotationId) ||
                other.supplierQuotationId == supplierQuotationId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.netAmount, netAmount) ||
                other.netAmount == netAmount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.leadTimeDays, leadTimeDays) ||
                other.leadTimeDays == leadTimeDays) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.specification, specification) ||
                other.specification == specification) &&
            (identical(other.brandModel, brandModel) ||
                other.brandModel == brandModel) &&
            (identical(other.partNumber, partNumber) ||
                other.partNumber == partNumber) &&
            (identical(other.moq, moq) || other.moq == moq) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        supplierQuotationId,
        itemId,
        quantity,
        unit,
        unitPrice,
        totalPrice,
        discountAmount,
        taxAmount,
        netAmount,
        status,
        sequence,
        leadTimeDays,
        deliveryDate,
        notes,
        specification,
        brandModel,
        partNumber,
        moq,
        const DeepCollectionEquality().hash(_attributes),
        const DeepCollectionEquality().hash(_metadata)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupplierQuotationLineItemImplCopyWith<_$SupplierQuotationLineItemImpl>
      get copyWith => __$$SupplierQuotationLineItemImplCopyWithImpl<
          _$SupplierQuotationLineItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupplierQuotationLineItemImplToJson(
      this,
    );
  }
}

abstract class _SupplierQuotationLineItem implements SupplierQuotationLineItem {
  const factory _SupplierQuotationLineItem(
      {required final String id,
      required final String supplierQuotationId,
      required final String itemId,
      required final double quantity,
      required final String unit,
      required final double unitPrice,
      required final double totalPrice,
      required final double discountAmount,
      required final double taxAmount,
      required final double netAmount,
      required final String status,
      final int? sequence,
      final int? leadTimeDays,
      final DateTime? deliveryDate,
      final String? notes,
      final String? specification,
      final String? brandModel,
      final String? partNumber,
      final double? moq,
      final Map<String, dynamic>? attributes,
      final Map<String, dynamic>? metadata}) = _$SupplierQuotationLineItemImpl;

  factory _SupplierQuotationLineItem.fromJson(Map<String, dynamic> json) =
      _$SupplierQuotationLineItemImpl.fromJson;

  @override
  String get id;
  @override
  String get supplierQuotationId;
  @override
  String get itemId;
  @override
  double get quantity;
  @override
  String get unit;
  @override
  double get unitPrice;
  @override
  double get totalPrice;
  @override
  double get discountAmount;
  @override
  double get taxAmount;
  @override
  double get netAmount;
  @override
  String get status;
  @override // 'pending', 'quoted', 'selected', 'rejected'
  int? get sequence;
  @override
  int? get leadTimeDays;
  @override
  DateTime? get deliveryDate;
  @override
  String? get notes;
  @override
  String? get specification;
  @override
  String? get brandModel;
  @override
  String? get partNumber;
  @override
  double? get moq;
  @override // Minimum Order Quantity
  Map<String, dynamic>? get attributes;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$SupplierQuotationLineItemImplCopyWith<_$SupplierQuotationLineItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateSupplierQuotationRequest _$CreateSupplierQuotationRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateSupplierQuotationRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateSupplierQuotationRequest {
  String get supplierId => throw _privateConstructorUsedError;
  DateTime get quotationDate => throw _privateConstructorUsedError;
  DateTime get validUntil => throw _privateConstructorUsedError;
  String? get rfqId => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get termsAndConditions => throw _privateConstructorUsedError;
  String? get paymentTerms => throw _privateConstructorUsedError;
  String? get deliveryTerms => throw _privateConstructorUsedError;
  String? get supplierReference => throw _privateConstructorUsedError;
  String? get contactPerson => throw _privateConstructorUsedError;
  String? get contactEmail => throw _privateConstructorUsedError;
  String? get contactPhone => throw _privateConstructorUsedError;
  List<CreateSupplierQuotationLineItemRequest>? get lineItems =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateSupplierQuotationRequestCopyWith<CreateSupplierQuotationRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSupplierQuotationRequestCopyWith<$Res> {
  factory $CreateSupplierQuotationRequestCopyWith(
          CreateSupplierQuotationRequest value,
          $Res Function(CreateSupplierQuotationRequest) then) =
      _$CreateSupplierQuotationRequestCopyWithImpl<$Res,
          CreateSupplierQuotationRequest>;
  @useResult
  $Res call(
      {String supplierId,
      DateTime quotationDate,
      DateTime validUntil,
      String? rfqId,
      String? notes,
      String? termsAndConditions,
      String? paymentTerms,
      String? deliveryTerms,
      String? supplierReference,
      String? contactPerson,
      String? contactEmail,
      String? contactPhone,
      List<CreateSupplierQuotationLineItemRequest>? lineItems,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$CreateSupplierQuotationRequestCopyWithImpl<$Res,
        $Val extends CreateSupplierQuotationRequest>
    implements $CreateSupplierQuotationRequestCopyWith<$Res> {
  _$CreateSupplierQuotationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supplierId = null,
    Object? quotationDate = null,
    Object? validUntil = null,
    Object? rfqId = freezed,
    Object? notes = freezed,
    Object? termsAndConditions = freezed,
    Object? paymentTerms = freezed,
    Object? deliveryTerms = freezed,
    Object? supplierReference = freezed,
    Object? contactPerson = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? lineItems = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      supplierId: null == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      quotationDate: null == quotationDate
          ? _value.quotationDate
          : quotationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      validUntil: null == validUntil
          ? _value.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rfqId: freezed == rfqId
          ? _value.rfqId
          : rfqId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _value.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _value.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryTerms: freezed == deliveryTerms
          ? _value.deliveryTerms
          : deliveryTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierReference: freezed == supplierReference
          ? _value.supplierReference
          : supplierReference // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPerson: freezed == contactPerson
          ? _value.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      lineItems: freezed == lineItems
          ? _value.lineItems
          : lineItems // ignore: cast_nullable_to_non_nullable
              as List<CreateSupplierQuotationLineItemRequest>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateSupplierQuotationRequestImplCopyWith<$Res>
    implements $CreateSupplierQuotationRequestCopyWith<$Res> {
  factory _$$CreateSupplierQuotationRequestImplCopyWith(
          _$CreateSupplierQuotationRequestImpl value,
          $Res Function(_$CreateSupplierQuotationRequestImpl) then) =
      __$$CreateSupplierQuotationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String supplierId,
      DateTime quotationDate,
      DateTime validUntil,
      String? rfqId,
      String? notes,
      String? termsAndConditions,
      String? paymentTerms,
      String? deliveryTerms,
      String? supplierReference,
      String? contactPerson,
      String? contactEmail,
      String? contactPhone,
      List<CreateSupplierQuotationLineItemRequest>? lineItems,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$CreateSupplierQuotationRequestImplCopyWithImpl<$Res>
    extends _$CreateSupplierQuotationRequestCopyWithImpl<$Res,
        _$CreateSupplierQuotationRequestImpl>
    implements _$$CreateSupplierQuotationRequestImplCopyWith<$Res> {
  __$$CreateSupplierQuotationRequestImplCopyWithImpl(
      _$CreateSupplierQuotationRequestImpl _value,
      $Res Function(_$CreateSupplierQuotationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supplierId = null,
    Object? quotationDate = null,
    Object? validUntil = null,
    Object? rfqId = freezed,
    Object? notes = freezed,
    Object? termsAndConditions = freezed,
    Object? paymentTerms = freezed,
    Object? deliveryTerms = freezed,
    Object? supplierReference = freezed,
    Object? contactPerson = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? lineItems = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$CreateSupplierQuotationRequestImpl(
      supplierId: null == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      quotationDate: null == quotationDate
          ? _value.quotationDate
          : quotationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      validUntil: null == validUntil
          ? _value.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rfqId: freezed == rfqId
          ? _value.rfqId
          : rfqId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _value.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _value.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryTerms: freezed == deliveryTerms
          ? _value.deliveryTerms
          : deliveryTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierReference: freezed == supplierReference
          ? _value.supplierReference
          : supplierReference // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPerson: freezed == contactPerson
          ? _value.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      lineItems: freezed == lineItems
          ? _value._lineItems
          : lineItems // ignore: cast_nullable_to_non_nullable
              as List<CreateSupplierQuotationLineItemRequest>?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateSupplierQuotationRequestImpl
    implements _CreateSupplierQuotationRequest {
  const _$CreateSupplierQuotationRequestImpl(
      {required this.supplierId,
      required this.quotationDate,
      required this.validUntil,
      this.rfqId,
      this.notes,
      this.termsAndConditions,
      this.paymentTerms,
      this.deliveryTerms,
      this.supplierReference,
      this.contactPerson,
      this.contactEmail,
      this.contactPhone,
      final List<CreateSupplierQuotationLineItemRequest>? lineItems,
      final Map<String, dynamic>? metadata})
      : _lineItems = lineItems,
        _metadata = metadata;

  factory _$CreateSupplierQuotationRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateSupplierQuotationRequestImplFromJson(json);

  @override
  final String supplierId;
  @override
  final DateTime quotationDate;
  @override
  final DateTime validUntil;
  @override
  final String? rfqId;
  @override
  final String? notes;
  @override
  final String? termsAndConditions;
  @override
  final String? paymentTerms;
  @override
  final String? deliveryTerms;
  @override
  final String? supplierReference;
  @override
  final String? contactPerson;
  @override
  final String? contactEmail;
  @override
  final String? contactPhone;
  final List<CreateSupplierQuotationLineItemRequest>? _lineItems;
  @override
  List<CreateSupplierQuotationLineItemRequest>? get lineItems {
    final value = _lineItems;
    if (value == null) return null;
    if (_lineItems is EqualUnmodifiableListView) return _lineItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'CreateSupplierQuotationRequest(supplierId: $supplierId, quotationDate: $quotationDate, validUntil: $validUntil, rfqId: $rfqId, notes: $notes, termsAndConditions: $termsAndConditions, paymentTerms: $paymentTerms, deliveryTerms: $deliveryTerms, supplierReference: $supplierReference, contactPerson: $contactPerson, contactEmail: $contactEmail, contactPhone: $contactPhone, lineItems: $lineItems, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSupplierQuotationRequestImpl &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.quotationDate, quotationDate) ||
                other.quotationDate == quotationDate) &&
            (identical(other.validUntil, validUntil) ||
                other.validUntil == validUntil) &&
            (identical(other.rfqId, rfqId) || other.rfqId == rfqId) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.termsAndConditions, termsAndConditions) ||
                other.termsAndConditions == termsAndConditions) &&
            (identical(other.paymentTerms, paymentTerms) ||
                other.paymentTerms == paymentTerms) &&
            (identical(other.deliveryTerms, deliveryTerms) ||
                other.deliveryTerms == deliveryTerms) &&
            (identical(other.supplierReference, supplierReference) ||
                other.supplierReference == supplierReference) &&
            (identical(other.contactPerson, contactPerson) ||
                other.contactPerson == contactPerson) &&
            (identical(other.contactEmail, contactEmail) ||
                other.contactEmail == contactEmail) &&
            (identical(other.contactPhone, contactPhone) ||
                other.contactPhone == contactPhone) &&
            const DeepCollectionEquality()
                .equals(other._lineItems, _lineItems) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      supplierId,
      quotationDate,
      validUntil,
      rfqId,
      notes,
      termsAndConditions,
      paymentTerms,
      deliveryTerms,
      supplierReference,
      contactPerson,
      contactEmail,
      contactPhone,
      const DeepCollectionEquality().hash(_lineItems),
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSupplierQuotationRequestImplCopyWith<
          _$CreateSupplierQuotationRequestImpl>
      get copyWith => __$$CreateSupplierQuotationRequestImplCopyWithImpl<
          _$CreateSupplierQuotationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSupplierQuotationRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateSupplierQuotationRequest
    implements CreateSupplierQuotationRequest {
  const factory _CreateSupplierQuotationRequest(
          {required final String supplierId,
          required final DateTime quotationDate,
          required final DateTime validUntil,
          final String? rfqId,
          final String? notes,
          final String? termsAndConditions,
          final String? paymentTerms,
          final String? deliveryTerms,
          final String? supplierReference,
          final String? contactPerson,
          final String? contactEmail,
          final String? contactPhone,
          final List<CreateSupplierQuotationLineItemRequest>? lineItems,
          final Map<String, dynamic>? metadata}) =
      _$CreateSupplierQuotationRequestImpl;

  factory _CreateSupplierQuotationRequest.fromJson(Map<String, dynamic> json) =
      _$CreateSupplierQuotationRequestImpl.fromJson;

  @override
  String get supplierId;
  @override
  DateTime get quotationDate;
  @override
  DateTime get validUntil;
  @override
  String? get rfqId;
  @override
  String? get notes;
  @override
  String? get termsAndConditions;
  @override
  String? get paymentTerms;
  @override
  String? get deliveryTerms;
  @override
  String? get supplierReference;
  @override
  String? get contactPerson;
  @override
  String? get contactEmail;
  @override
  String? get contactPhone;
  @override
  List<CreateSupplierQuotationLineItemRequest>? get lineItems;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$CreateSupplierQuotationRequestImplCopyWith<
          _$CreateSupplierQuotationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateSupplierQuotationLineItemRequest
    _$CreateSupplierQuotationLineItemRequestFromJson(
        Map<String, dynamic> json) {
  return _CreateSupplierQuotationLineItemRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateSupplierQuotationLineItemRequest {
  String get itemId => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  double get unitPrice => throw _privateConstructorUsedError;
  double? get discountAmount => throw _privateConstructorUsedError;
  double? get taxAmount => throw _privateConstructorUsedError;
  int? get sequence => throw _privateConstructorUsedError;
  int? get leadTimeDays => throw _privateConstructorUsedError;
  DateTime? get deliveryDate => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get specification => throw _privateConstructorUsedError;
  String? get brandModel => throw _privateConstructorUsedError;
  String? get partNumber => throw _privateConstructorUsedError;
  double? get moq => throw _privateConstructorUsedError;
  Map<String, dynamic>? get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateSupplierQuotationLineItemRequestCopyWith<
          CreateSupplierQuotationLineItemRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSupplierQuotationLineItemRequestCopyWith<$Res> {
  factory $CreateSupplierQuotationLineItemRequestCopyWith(
          CreateSupplierQuotationLineItemRequest value,
          $Res Function(CreateSupplierQuotationLineItemRequest) then) =
      _$CreateSupplierQuotationLineItemRequestCopyWithImpl<$Res,
          CreateSupplierQuotationLineItemRequest>;
  @useResult
  $Res call(
      {String itemId,
      double quantity,
      String unit,
      double unitPrice,
      double? discountAmount,
      double? taxAmount,
      int? sequence,
      int? leadTimeDays,
      DateTime? deliveryDate,
      String? notes,
      String? specification,
      String? brandModel,
      String? partNumber,
      double? moq,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class _$CreateSupplierQuotationLineItemRequestCopyWithImpl<$Res,
        $Val extends CreateSupplierQuotationLineItemRequest>
    implements $CreateSupplierQuotationLineItemRequestCopyWith<$Res> {
  _$CreateSupplierQuotationLineItemRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? quantity = null,
    Object? unit = null,
    Object? unitPrice = null,
    Object? discountAmount = freezed,
    Object? taxAmount = freezed,
    Object? sequence = freezed,
    Object? leadTimeDays = freezed,
    Object? deliveryDate = freezed,
    Object? notes = freezed,
    Object? specification = freezed,
    Object? brandModel = freezed,
    Object? partNumber = freezed,
    Object? moq = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: freezed == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      leadTimeDays: freezed == leadTimeDays
          ? _value.leadTimeDays
          : leadTimeDays // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      brandModel: freezed == brandModel
          ? _value.brandModel
          : brandModel // ignore: cast_nullable_to_non_nullable
              as String?,
      partNumber: freezed == partNumber
          ? _value.partNumber
          : partNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      moq: freezed == moq
          ? _value.moq
          : moq // ignore: cast_nullable_to_non_nullable
              as double?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateSupplierQuotationLineItemRequestImplCopyWith<$Res>
    implements $CreateSupplierQuotationLineItemRequestCopyWith<$Res> {
  factory _$$CreateSupplierQuotationLineItemRequestImplCopyWith(
          _$CreateSupplierQuotationLineItemRequestImpl value,
          $Res Function(_$CreateSupplierQuotationLineItemRequestImpl) then) =
      __$$CreateSupplierQuotationLineItemRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String itemId,
      double quantity,
      String unit,
      double unitPrice,
      double? discountAmount,
      double? taxAmount,
      int? sequence,
      int? leadTimeDays,
      DateTime? deliveryDate,
      String? notes,
      String? specification,
      String? brandModel,
      String? partNumber,
      double? moq,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class __$$CreateSupplierQuotationLineItemRequestImplCopyWithImpl<$Res>
    extends _$CreateSupplierQuotationLineItemRequestCopyWithImpl<$Res,
        _$CreateSupplierQuotationLineItemRequestImpl>
    implements _$$CreateSupplierQuotationLineItemRequestImplCopyWith<$Res> {
  __$$CreateSupplierQuotationLineItemRequestImplCopyWithImpl(
      _$CreateSupplierQuotationLineItemRequestImpl _value,
      $Res Function(_$CreateSupplierQuotationLineItemRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? quantity = null,
    Object? unit = null,
    Object? unitPrice = null,
    Object? discountAmount = freezed,
    Object? taxAmount = freezed,
    Object? sequence = freezed,
    Object? leadTimeDays = freezed,
    Object? deliveryDate = freezed,
    Object? notes = freezed,
    Object? specification = freezed,
    Object? brandModel = freezed,
    Object? partNumber = freezed,
    Object? moq = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_$CreateSupplierQuotationLineItemRequestImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: freezed == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      leadTimeDays: freezed == leadTimeDays
          ? _value.leadTimeDays
          : leadTimeDays // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      brandModel: freezed == brandModel
          ? _value.brandModel
          : brandModel // ignore: cast_nullable_to_non_nullable
              as String?,
      partNumber: freezed == partNumber
          ? _value.partNumber
          : partNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      moq: freezed == moq
          ? _value.moq
          : moq // ignore: cast_nullable_to_non_nullable
              as double?,
      attributes: freezed == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateSupplierQuotationLineItemRequestImpl
    implements _CreateSupplierQuotationLineItemRequest {
  const _$CreateSupplierQuotationLineItemRequestImpl(
      {required this.itemId,
      required this.quantity,
      required this.unit,
      required this.unitPrice,
      this.discountAmount,
      this.taxAmount,
      this.sequence,
      this.leadTimeDays,
      this.deliveryDate,
      this.notes,
      this.specification,
      this.brandModel,
      this.partNumber,
      this.moq,
      final Map<String, dynamic>? attributes})
      : _attributes = attributes;

  factory _$CreateSupplierQuotationLineItemRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateSupplierQuotationLineItemRequestImplFromJson(json);

  @override
  final String itemId;
  @override
  final double quantity;
  @override
  final String unit;
  @override
  final double unitPrice;
  @override
  final double? discountAmount;
  @override
  final double? taxAmount;
  @override
  final int? sequence;
  @override
  final int? leadTimeDays;
  @override
  final DateTime? deliveryDate;
  @override
  final String? notes;
  @override
  final String? specification;
  @override
  final String? brandModel;
  @override
  final String? partNumber;
  @override
  final double? moq;
  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'CreateSupplierQuotationLineItemRequest(itemId: $itemId, quantity: $quantity, unit: $unit, unitPrice: $unitPrice, discountAmount: $discountAmount, taxAmount: $taxAmount, sequence: $sequence, leadTimeDays: $leadTimeDays, deliveryDate: $deliveryDate, notes: $notes, specification: $specification, brandModel: $brandModel, partNumber: $partNumber, moq: $moq, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSupplierQuotationLineItemRequestImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.leadTimeDays, leadTimeDays) ||
                other.leadTimeDays == leadTimeDays) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.specification, specification) ||
                other.specification == specification) &&
            (identical(other.brandModel, brandModel) ||
                other.brandModel == brandModel) &&
            (identical(other.partNumber, partNumber) ||
                other.partNumber == partNumber) &&
            (identical(other.moq, moq) || other.moq == moq) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemId,
      quantity,
      unit,
      unitPrice,
      discountAmount,
      taxAmount,
      sequence,
      leadTimeDays,
      deliveryDate,
      notes,
      specification,
      brandModel,
      partNumber,
      moq,
      const DeepCollectionEquality().hash(_attributes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSupplierQuotationLineItemRequestImplCopyWith<
          _$CreateSupplierQuotationLineItemRequestImpl>
      get copyWith =>
          __$$CreateSupplierQuotationLineItemRequestImplCopyWithImpl<
              _$CreateSupplierQuotationLineItemRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSupplierQuotationLineItemRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateSupplierQuotationLineItemRequest
    implements CreateSupplierQuotationLineItemRequest {
  const factory _CreateSupplierQuotationLineItemRequest(
          {required final String itemId,
          required final double quantity,
          required final String unit,
          required final double unitPrice,
          final double? discountAmount,
          final double? taxAmount,
          final int? sequence,
          final int? leadTimeDays,
          final DateTime? deliveryDate,
          final String? notes,
          final String? specification,
          final String? brandModel,
          final String? partNumber,
          final double? moq,
          final Map<String, dynamic>? attributes}) =
      _$CreateSupplierQuotationLineItemRequestImpl;

  factory _CreateSupplierQuotationLineItemRequest.fromJson(
          Map<String, dynamic> json) =
      _$CreateSupplierQuotationLineItemRequestImpl.fromJson;

  @override
  String get itemId;
  @override
  double get quantity;
  @override
  String get unit;
  @override
  double get unitPrice;
  @override
  double? get discountAmount;
  @override
  double? get taxAmount;
  @override
  int? get sequence;
  @override
  int? get leadTimeDays;
  @override
  DateTime? get deliveryDate;
  @override
  String? get notes;
  @override
  String? get specification;
  @override
  String? get brandModel;
  @override
  String? get partNumber;
  @override
  double? get moq;
  @override
  Map<String, dynamic>? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$CreateSupplierQuotationLineItemRequestImplCopyWith<
          _$CreateSupplierQuotationLineItemRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateSupplierQuotationRequest _$UpdateSupplierQuotationRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateSupplierQuotationRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateSupplierQuotationRequest {
  DateTime? get quotationDate => throw _privateConstructorUsedError;
  DateTime? get validUntil => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get termsAndConditions => throw _privateConstructorUsedError;
  String? get paymentTerms => throw _privateConstructorUsedError;
  String? get deliveryTerms => throw _privateConstructorUsedError;
  String? get supplierReference => throw _privateConstructorUsedError;
  String? get contactPerson => throw _privateConstructorUsedError;
  String? get contactEmail => throw _privateConstructorUsedError;
  String? get contactPhone => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateSupplierQuotationRequestCopyWith<UpdateSupplierQuotationRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSupplierQuotationRequestCopyWith<$Res> {
  factory $UpdateSupplierQuotationRequestCopyWith(
          UpdateSupplierQuotationRequest value,
          $Res Function(UpdateSupplierQuotationRequest) then) =
      _$UpdateSupplierQuotationRequestCopyWithImpl<$Res,
          UpdateSupplierQuotationRequest>;
  @useResult
  $Res call(
      {DateTime? quotationDate,
      DateTime? validUntil,
      String? notes,
      String? termsAndConditions,
      String? paymentTerms,
      String? deliveryTerms,
      String? supplierReference,
      String? contactPerson,
      String? contactEmail,
      String? contactPhone,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$UpdateSupplierQuotationRequestCopyWithImpl<$Res,
        $Val extends UpdateSupplierQuotationRequest>
    implements $UpdateSupplierQuotationRequestCopyWith<$Res> {
  _$UpdateSupplierQuotationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotationDate = freezed,
    Object? validUntil = freezed,
    Object? notes = freezed,
    Object? termsAndConditions = freezed,
    Object? paymentTerms = freezed,
    Object? deliveryTerms = freezed,
    Object? supplierReference = freezed,
    Object? contactPerson = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      quotationDate: freezed == quotationDate
          ? _value.quotationDate
          : quotationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validUntil: freezed == validUntil
          ? _value.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _value.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _value.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryTerms: freezed == deliveryTerms
          ? _value.deliveryTerms
          : deliveryTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierReference: freezed == supplierReference
          ? _value.supplierReference
          : supplierReference // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPerson: freezed == contactPerson
          ? _value.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateSupplierQuotationRequestImplCopyWith<$Res>
    implements $UpdateSupplierQuotationRequestCopyWith<$Res> {
  factory _$$UpdateSupplierQuotationRequestImplCopyWith(
          _$UpdateSupplierQuotationRequestImpl value,
          $Res Function(_$UpdateSupplierQuotationRequestImpl) then) =
      __$$UpdateSupplierQuotationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? quotationDate,
      DateTime? validUntil,
      String? notes,
      String? termsAndConditions,
      String? paymentTerms,
      String? deliveryTerms,
      String? supplierReference,
      String? contactPerson,
      String? contactEmail,
      String? contactPhone,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$UpdateSupplierQuotationRequestImplCopyWithImpl<$Res>
    extends _$UpdateSupplierQuotationRequestCopyWithImpl<$Res,
        _$UpdateSupplierQuotationRequestImpl>
    implements _$$UpdateSupplierQuotationRequestImplCopyWith<$Res> {
  __$$UpdateSupplierQuotationRequestImplCopyWithImpl(
      _$UpdateSupplierQuotationRequestImpl _value,
      $Res Function(_$UpdateSupplierQuotationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotationDate = freezed,
    Object? validUntil = freezed,
    Object? notes = freezed,
    Object? termsAndConditions = freezed,
    Object? paymentTerms = freezed,
    Object? deliveryTerms = freezed,
    Object? supplierReference = freezed,
    Object? contactPerson = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$UpdateSupplierQuotationRequestImpl(
      quotationDate: freezed == quotationDate
          ? _value.quotationDate
          : quotationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validUntil: freezed == validUntil
          ? _value.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _value.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _value.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryTerms: freezed == deliveryTerms
          ? _value.deliveryTerms
          : deliveryTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierReference: freezed == supplierReference
          ? _value.supplierReference
          : supplierReference // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPerson: freezed == contactPerson
          ? _value.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateSupplierQuotationRequestImpl
    implements _UpdateSupplierQuotationRequest {
  const _$UpdateSupplierQuotationRequestImpl(
      {this.quotationDate,
      this.validUntil,
      this.notes,
      this.termsAndConditions,
      this.paymentTerms,
      this.deliveryTerms,
      this.supplierReference,
      this.contactPerson,
      this.contactEmail,
      this.contactPhone,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$UpdateSupplierQuotationRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateSupplierQuotationRequestImplFromJson(json);

  @override
  final DateTime? quotationDate;
  @override
  final DateTime? validUntil;
  @override
  final String? notes;
  @override
  final String? termsAndConditions;
  @override
  final String? paymentTerms;
  @override
  final String? deliveryTerms;
  @override
  final String? supplierReference;
  @override
  final String? contactPerson;
  @override
  final String? contactEmail;
  @override
  final String? contactPhone;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'UpdateSupplierQuotationRequest(quotationDate: $quotationDate, validUntil: $validUntil, notes: $notes, termsAndConditions: $termsAndConditions, paymentTerms: $paymentTerms, deliveryTerms: $deliveryTerms, supplierReference: $supplierReference, contactPerson: $contactPerson, contactEmail: $contactEmail, contactPhone: $contactPhone, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSupplierQuotationRequestImpl &&
            (identical(other.quotationDate, quotationDate) ||
                other.quotationDate == quotationDate) &&
            (identical(other.validUntil, validUntil) ||
                other.validUntil == validUntil) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.termsAndConditions, termsAndConditions) ||
                other.termsAndConditions == termsAndConditions) &&
            (identical(other.paymentTerms, paymentTerms) ||
                other.paymentTerms == paymentTerms) &&
            (identical(other.deliveryTerms, deliveryTerms) ||
                other.deliveryTerms == deliveryTerms) &&
            (identical(other.supplierReference, supplierReference) ||
                other.supplierReference == supplierReference) &&
            (identical(other.contactPerson, contactPerson) ||
                other.contactPerson == contactPerson) &&
            (identical(other.contactEmail, contactEmail) ||
                other.contactEmail == contactEmail) &&
            (identical(other.contactPhone, contactPhone) ||
                other.contactPhone == contactPhone) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      quotationDate,
      validUntil,
      notes,
      termsAndConditions,
      paymentTerms,
      deliveryTerms,
      supplierReference,
      contactPerson,
      contactEmail,
      contactPhone,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSupplierQuotationRequestImplCopyWith<
          _$UpdateSupplierQuotationRequestImpl>
      get copyWith => __$$UpdateSupplierQuotationRequestImplCopyWithImpl<
          _$UpdateSupplierQuotationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateSupplierQuotationRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateSupplierQuotationRequest
    implements UpdateSupplierQuotationRequest {
  const factory _UpdateSupplierQuotationRequest(
          {final DateTime? quotationDate,
          final DateTime? validUntil,
          final String? notes,
          final String? termsAndConditions,
          final String? paymentTerms,
          final String? deliveryTerms,
          final String? supplierReference,
          final String? contactPerson,
          final String? contactEmail,
          final String? contactPhone,
          final Map<String, dynamic>? metadata}) =
      _$UpdateSupplierQuotationRequestImpl;

  factory _UpdateSupplierQuotationRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateSupplierQuotationRequestImpl.fromJson;

  @override
  DateTime? get quotationDate;
  @override
  DateTime? get validUntil;
  @override
  String? get notes;
  @override
  String? get termsAndConditions;
  @override
  String? get paymentTerms;
  @override
  String? get deliveryTerms;
  @override
  String? get supplierReference;
  @override
  String? get contactPerson;
  @override
  String? get contactEmail;
  @override
  String? get contactPhone;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$UpdateSupplierQuotationRequestImplCopyWith<
          _$UpdateSupplierQuotationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupplierQuotationFilters _$SupplierQuotationFiltersFromJson(
    Map<String, dynamic> json) {
  return _SupplierQuotationFilters.fromJson(json);
}

/// @nodoc
mixin _$SupplierQuotationFilters {
  String? get supplierId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get rfqId => throw _privateConstructorUsedError;
  DateTime? get quotationDateAfter => throw _privateConstructorUsedError;
  DateTime? get quotationDateBefore => throw _privateConstructorUsedError;
  DateTime? get validUntilAfter => throw _privateConstructorUsedError;
  DateTime? get validUntilBefore => throw _privateConstructorUsedError;
  double? get totalAmountMin => throw _privateConstructorUsedError;
  double? get totalAmountMax => throw _privateConstructorUsedError;
  List<String>? get itemIds => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String? get sortBy => throw _privateConstructorUsedError;
  String? get sortOrder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupplierQuotationFiltersCopyWith<SupplierQuotationFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplierQuotationFiltersCopyWith<$Res> {
  factory $SupplierQuotationFiltersCopyWith(SupplierQuotationFilters value,
          $Res Function(SupplierQuotationFilters) then) =
      _$SupplierQuotationFiltersCopyWithImpl<$Res, SupplierQuotationFilters>;
  @useResult
  $Res call(
      {String? supplierId,
      String? status,
      String? rfqId,
      DateTime? quotationDateAfter,
      DateTime? quotationDateBefore,
      DateTime? validUntilAfter,
      DateTime? validUntilBefore,
      double? totalAmountMin,
      double? totalAmountMax,
      List<String>? itemIds,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class _$SupplierQuotationFiltersCopyWithImpl<$Res,
        $Val extends SupplierQuotationFilters>
    implements $SupplierQuotationFiltersCopyWith<$Res> {
  _$SupplierQuotationFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supplierId = freezed,
    Object? status = freezed,
    Object? rfqId = freezed,
    Object? quotationDateAfter = freezed,
    Object? quotationDateBefore = freezed,
    Object? validUntilAfter = freezed,
    Object? validUntilBefore = freezed,
    Object? totalAmountMin = freezed,
    Object? totalAmountMax = freezed,
    Object? itemIds = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_value.copyWith(
      supplierId: freezed == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      rfqId: freezed == rfqId
          ? _value.rfqId
          : rfqId // ignore: cast_nullable_to_non_nullable
              as String?,
      quotationDateAfter: freezed == quotationDateAfter
          ? _value.quotationDateAfter
          : quotationDateAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quotationDateBefore: freezed == quotationDateBefore
          ? _value.quotationDateBefore
          : quotationDateBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validUntilAfter: freezed == validUntilAfter
          ? _value.validUntilAfter
          : validUntilAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validUntilBefore: freezed == validUntilBefore
          ? _value.validUntilBefore
          : validUntilBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalAmountMin: freezed == totalAmountMin
          ? _value.totalAmountMin
          : totalAmountMin // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmountMax: freezed == totalAmountMax
          ? _value.totalAmountMax
          : totalAmountMax // ignore: cast_nullable_to_non_nullable
              as double?,
      itemIds: freezed == itemIds
          ? _value.itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupplierQuotationFiltersImplCopyWith<$Res>
    implements $SupplierQuotationFiltersCopyWith<$Res> {
  factory _$$SupplierQuotationFiltersImplCopyWith(
          _$SupplierQuotationFiltersImpl value,
          $Res Function(_$SupplierQuotationFiltersImpl) then) =
      __$$SupplierQuotationFiltersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? supplierId,
      String? status,
      String? rfqId,
      DateTime? quotationDateAfter,
      DateTime? quotationDateBefore,
      DateTime? validUntilAfter,
      DateTime? validUntilBefore,
      double? totalAmountMin,
      double? totalAmountMax,
      List<String>? itemIds,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class __$$SupplierQuotationFiltersImplCopyWithImpl<$Res>
    extends _$SupplierQuotationFiltersCopyWithImpl<$Res,
        _$SupplierQuotationFiltersImpl>
    implements _$$SupplierQuotationFiltersImplCopyWith<$Res> {
  __$$SupplierQuotationFiltersImplCopyWithImpl(
      _$SupplierQuotationFiltersImpl _value,
      $Res Function(_$SupplierQuotationFiltersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supplierId = freezed,
    Object? status = freezed,
    Object? rfqId = freezed,
    Object? quotationDateAfter = freezed,
    Object? quotationDateBefore = freezed,
    Object? validUntilAfter = freezed,
    Object? validUntilBefore = freezed,
    Object? totalAmountMin = freezed,
    Object? totalAmountMax = freezed,
    Object? itemIds = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_$SupplierQuotationFiltersImpl(
      supplierId: freezed == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      rfqId: freezed == rfqId
          ? _value.rfqId
          : rfqId // ignore: cast_nullable_to_non_nullable
              as String?,
      quotationDateAfter: freezed == quotationDateAfter
          ? _value.quotationDateAfter
          : quotationDateAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quotationDateBefore: freezed == quotationDateBefore
          ? _value.quotationDateBefore
          : quotationDateBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validUntilAfter: freezed == validUntilAfter
          ? _value.validUntilAfter
          : validUntilAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validUntilBefore: freezed == validUntilBefore
          ? _value.validUntilBefore
          : validUntilBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalAmountMin: freezed == totalAmountMin
          ? _value.totalAmountMin
          : totalAmountMin // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmountMax: freezed == totalAmountMax
          ? _value.totalAmountMax
          : totalAmountMax // ignore: cast_nullable_to_non_nullable
              as double?,
      itemIds: freezed == itemIds
          ? _value._itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupplierQuotationFiltersImpl extends _SupplierQuotationFilters {
  const _$SupplierQuotationFiltersImpl(
      {this.supplierId,
      this.status,
      this.rfqId,
      this.quotationDateAfter,
      this.quotationDateBefore,
      this.validUntilAfter,
      this.validUntilBefore,
      this.totalAmountMin,
      this.totalAmountMax,
      final List<String>? itemIds,
      this.page,
      this.limit,
      this.sortBy,
      this.sortOrder})
      : _itemIds = itemIds,
        super._();

  factory _$SupplierQuotationFiltersImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupplierQuotationFiltersImplFromJson(json);

  @override
  final String? supplierId;
  @override
  final String? status;
  @override
  final String? rfqId;
  @override
  final DateTime? quotationDateAfter;
  @override
  final DateTime? quotationDateBefore;
  @override
  final DateTime? validUntilAfter;
  @override
  final DateTime? validUntilBefore;
  @override
  final double? totalAmountMin;
  @override
  final double? totalAmountMax;
  final List<String>? _itemIds;
  @override
  List<String>? get itemIds {
    final value = _itemIds;
    if (value == null) return null;
    if (_itemIds is EqualUnmodifiableListView) return _itemIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? page;
  @override
  final int? limit;
  @override
  final String? sortBy;
  @override
  final String? sortOrder;

  @override
  String toString() {
    return 'SupplierQuotationFilters(supplierId: $supplierId, status: $status, rfqId: $rfqId, quotationDateAfter: $quotationDateAfter, quotationDateBefore: $quotationDateBefore, validUntilAfter: $validUntilAfter, validUntilBefore: $validUntilBefore, totalAmountMin: $totalAmountMin, totalAmountMax: $totalAmountMax, itemIds: $itemIds, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupplierQuotationFiltersImpl &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.rfqId, rfqId) || other.rfqId == rfqId) &&
            (identical(other.quotationDateAfter, quotationDateAfter) ||
                other.quotationDateAfter == quotationDateAfter) &&
            (identical(other.quotationDateBefore, quotationDateBefore) ||
                other.quotationDateBefore == quotationDateBefore) &&
            (identical(other.validUntilAfter, validUntilAfter) ||
                other.validUntilAfter == validUntilAfter) &&
            (identical(other.validUntilBefore, validUntilBefore) ||
                other.validUntilBefore == validUntilBefore) &&
            (identical(other.totalAmountMin, totalAmountMin) ||
                other.totalAmountMin == totalAmountMin) &&
            (identical(other.totalAmountMax, totalAmountMax) ||
                other.totalAmountMax == totalAmountMax) &&
            const DeepCollectionEquality().equals(other._itemIds, _itemIds) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      supplierId,
      status,
      rfqId,
      quotationDateAfter,
      quotationDateBefore,
      validUntilAfter,
      validUntilBefore,
      totalAmountMin,
      totalAmountMax,
      const DeepCollectionEquality().hash(_itemIds),
      page,
      limit,
      sortBy,
      sortOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupplierQuotationFiltersImplCopyWith<_$SupplierQuotationFiltersImpl>
      get copyWith => __$$SupplierQuotationFiltersImplCopyWithImpl<
          _$SupplierQuotationFiltersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupplierQuotationFiltersImplToJson(
      this,
    );
  }
}

abstract class _SupplierQuotationFilters extends SupplierQuotationFilters {
  const factory _SupplierQuotationFilters(
      {final String? supplierId,
      final String? status,
      final String? rfqId,
      final DateTime? quotationDateAfter,
      final DateTime? quotationDateBefore,
      final DateTime? validUntilAfter,
      final DateTime? validUntilBefore,
      final double? totalAmountMin,
      final double? totalAmountMax,
      final List<String>? itemIds,
      final int? page,
      final int? limit,
      final String? sortBy,
      final String? sortOrder}) = _$SupplierQuotationFiltersImpl;
  const _SupplierQuotationFilters._() : super._();

  factory _SupplierQuotationFilters.fromJson(Map<String, dynamic> json) =
      _$SupplierQuotationFiltersImpl.fromJson;

  @override
  String? get supplierId;
  @override
  String? get status;
  @override
  String? get rfqId;
  @override
  DateTime? get quotationDateAfter;
  @override
  DateTime? get quotationDateBefore;
  @override
  DateTime? get validUntilAfter;
  @override
  DateTime? get validUntilBefore;
  @override
  double? get totalAmountMin;
  @override
  double? get totalAmountMax;
  @override
  List<String>? get itemIds;
  @override
  int? get page;
  @override
  int? get limit;
  @override
  String? get sortBy;
  @override
  String? get sortOrder;
  @override
  @JsonKey(ignore: true)
  _$$SupplierQuotationFiltersImplCopyWith<_$SupplierQuotationFiltersImpl>
      get copyWith => throw _privateConstructorUsedError;
}

QuotationComparison _$QuotationComparisonFromJson(Map<String, dynamic> json) {
  return _QuotationComparison.fromJson(json);
}

/// @nodoc
mixin _$QuotationComparison {
  String get itemId => throw _privateConstructorUsedError;
  String get itemName => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  List<QuotationComparisonEntry> get quotations =>
      throw _privateConstructorUsedError;
  String? get recommendation => throw _privateConstructorUsedError;
  Map<String, dynamic>? get analysis => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuotationComparisonCopyWith<QuotationComparison> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotationComparisonCopyWith<$Res> {
  factory $QuotationComparisonCopyWith(
          QuotationComparison value, $Res Function(QuotationComparison) then) =
      _$QuotationComparisonCopyWithImpl<$Res, QuotationComparison>;
  @useResult
  $Res call(
      {String itemId,
      String itemName,
      double quantity,
      String unit,
      List<QuotationComparisonEntry> quotations,
      String? recommendation,
      Map<String, dynamic>? analysis});
}

/// @nodoc
class _$QuotationComparisonCopyWithImpl<$Res, $Val extends QuotationComparison>
    implements $QuotationComparisonCopyWith<$Res> {
  _$QuotationComparisonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? itemName = null,
    Object? quantity = null,
    Object? unit = null,
    Object? quotations = null,
    Object? recommendation = freezed,
    Object? analysis = freezed,
  }) {
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      quotations: null == quotations
          ? _value.quotations
          : quotations // ignore: cast_nullable_to_non_nullable
              as List<QuotationComparisonEntry>,
      recommendation: freezed == recommendation
          ? _value.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as String?,
      analysis: freezed == analysis
          ? _value.analysis
          : analysis // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuotationComparisonImplCopyWith<$Res>
    implements $QuotationComparisonCopyWith<$Res> {
  factory _$$QuotationComparisonImplCopyWith(_$QuotationComparisonImpl value,
          $Res Function(_$QuotationComparisonImpl) then) =
      __$$QuotationComparisonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String itemId,
      String itemName,
      double quantity,
      String unit,
      List<QuotationComparisonEntry> quotations,
      String? recommendation,
      Map<String, dynamic>? analysis});
}

/// @nodoc
class __$$QuotationComparisonImplCopyWithImpl<$Res>
    extends _$QuotationComparisonCopyWithImpl<$Res, _$QuotationComparisonImpl>
    implements _$$QuotationComparisonImplCopyWith<$Res> {
  __$$QuotationComparisonImplCopyWithImpl(_$QuotationComparisonImpl _value,
      $Res Function(_$QuotationComparisonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? itemName = null,
    Object? quantity = null,
    Object? unit = null,
    Object? quotations = null,
    Object? recommendation = freezed,
    Object? analysis = freezed,
  }) {
    return _then(_$QuotationComparisonImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      quotations: null == quotations
          ? _value._quotations
          : quotations // ignore: cast_nullable_to_non_nullable
              as List<QuotationComparisonEntry>,
      recommendation: freezed == recommendation
          ? _value.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as String?,
      analysis: freezed == analysis
          ? _value._analysis
          : analysis // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuotationComparisonImpl implements _QuotationComparison {
  const _$QuotationComparisonImpl(
      {required this.itemId,
      required this.itemName,
      required this.quantity,
      required this.unit,
      required final List<QuotationComparisonEntry> quotations,
      this.recommendation,
      final Map<String, dynamic>? analysis})
      : _quotations = quotations,
        _analysis = analysis;

  factory _$QuotationComparisonImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuotationComparisonImplFromJson(json);

  @override
  final String itemId;
  @override
  final String itemName;
  @override
  final double quantity;
  @override
  final String unit;
  final List<QuotationComparisonEntry> _quotations;
  @override
  List<QuotationComparisonEntry> get quotations {
    if (_quotations is EqualUnmodifiableListView) return _quotations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quotations);
  }

  @override
  final String? recommendation;
  final Map<String, dynamic>? _analysis;
  @override
  Map<String, dynamic>? get analysis {
    final value = _analysis;
    if (value == null) return null;
    if (_analysis is EqualUnmodifiableMapView) return _analysis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'QuotationComparison(itemId: $itemId, itemName: $itemName, quantity: $quantity, unit: $unit, quotations: $quotations, recommendation: $recommendation, analysis: $analysis)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuotationComparisonImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            const DeepCollectionEquality()
                .equals(other._quotations, _quotations) &&
            (identical(other.recommendation, recommendation) ||
                other.recommendation == recommendation) &&
            const DeepCollectionEquality().equals(other._analysis, _analysis));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemId,
      itemName,
      quantity,
      unit,
      const DeepCollectionEquality().hash(_quotations),
      recommendation,
      const DeepCollectionEquality().hash(_analysis));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuotationComparisonImplCopyWith<_$QuotationComparisonImpl> get copyWith =>
      __$$QuotationComparisonImplCopyWithImpl<_$QuotationComparisonImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuotationComparisonImplToJson(
      this,
    );
  }
}

abstract class _QuotationComparison implements QuotationComparison {
  const factory _QuotationComparison(
      {required final String itemId,
      required final String itemName,
      required final double quantity,
      required final String unit,
      required final List<QuotationComparisonEntry> quotations,
      final String? recommendation,
      final Map<String, dynamic>? analysis}) = _$QuotationComparisonImpl;

  factory _QuotationComparison.fromJson(Map<String, dynamic> json) =
      _$QuotationComparisonImpl.fromJson;

  @override
  String get itemId;
  @override
  String get itemName;
  @override
  double get quantity;
  @override
  String get unit;
  @override
  List<QuotationComparisonEntry> get quotations;
  @override
  String? get recommendation;
  @override
  Map<String, dynamic>? get analysis;
  @override
  @JsonKey(ignore: true)
  _$$QuotationComparisonImplCopyWith<_$QuotationComparisonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuotationComparisonEntry _$QuotationComparisonEntryFromJson(
    Map<String, dynamic> json) {
  return _QuotationComparisonEntry.fromJson(json);
}

/// @nodoc
mixin _$QuotationComparisonEntry {
  String get quotationId => throw _privateConstructorUsedError;
  String get supplierId => throw _privateConstructorUsedError;
  String get supplierName => throw _privateConstructorUsedError;
  double get unitPrice => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  int get leadTimeDays => throw _privateConstructorUsedError;
  DateTime? get deliveryDate => throw _privateConstructorUsedError;
  String? get brandModel => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metrics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuotationComparisonEntryCopyWith<QuotationComparisonEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotationComparisonEntryCopyWith<$Res> {
  factory $QuotationComparisonEntryCopyWith(QuotationComparisonEntry value,
          $Res Function(QuotationComparisonEntry) then) =
      _$QuotationComparisonEntryCopyWithImpl<$Res, QuotationComparisonEntry>;
  @useResult
  $Res call(
      {String quotationId,
      String supplierId,
      String supplierName,
      double unitPrice,
      double totalPrice,
      int leadTimeDays,
      DateTime? deliveryDate,
      String? brandModel,
      String? notes,
      double? score,
      Map<String, dynamic>? metrics});
}

/// @nodoc
class _$QuotationComparisonEntryCopyWithImpl<$Res,
        $Val extends QuotationComparisonEntry>
    implements $QuotationComparisonEntryCopyWith<$Res> {
  _$QuotationComparisonEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotationId = null,
    Object? supplierId = null,
    Object? supplierName = null,
    Object? unitPrice = null,
    Object? totalPrice = null,
    Object? leadTimeDays = null,
    Object? deliveryDate = freezed,
    Object? brandModel = freezed,
    Object? notes = freezed,
    Object? score = freezed,
    Object? metrics = freezed,
  }) {
    return _then(_value.copyWith(
      quotationId: null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String,
      supplierId: null == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      supplierName: null == supplierName
          ? _value.supplierName
          : supplierName // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      leadTimeDays: null == leadTimeDays
          ? _value.leadTimeDays
          : leadTimeDays // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      brandModel: freezed == brandModel
          ? _value.brandModel
          : brandModel // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      metrics: freezed == metrics
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuotationComparisonEntryImplCopyWith<$Res>
    implements $QuotationComparisonEntryCopyWith<$Res> {
  factory _$$QuotationComparisonEntryImplCopyWith(
          _$QuotationComparisonEntryImpl value,
          $Res Function(_$QuotationComparisonEntryImpl) then) =
      __$$QuotationComparisonEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String quotationId,
      String supplierId,
      String supplierName,
      double unitPrice,
      double totalPrice,
      int leadTimeDays,
      DateTime? deliveryDate,
      String? brandModel,
      String? notes,
      double? score,
      Map<String, dynamic>? metrics});
}

/// @nodoc
class __$$QuotationComparisonEntryImplCopyWithImpl<$Res>
    extends _$QuotationComparisonEntryCopyWithImpl<$Res,
        _$QuotationComparisonEntryImpl>
    implements _$$QuotationComparisonEntryImplCopyWith<$Res> {
  __$$QuotationComparisonEntryImplCopyWithImpl(
      _$QuotationComparisonEntryImpl _value,
      $Res Function(_$QuotationComparisonEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotationId = null,
    Object? supplierId = null,
    Object? supplierName = null,
    Object? unitPrice = null,
    Object? totalPrice = null,
    Object? leadTimeDays = null,
    Object? deliveryDate = freezed,
    Object? brandModel = freezed,
    Object? notes = freezed,
    Object? score = freezed,
    Object? metrics = freezed,
  }) {
    return _then(_$QuotationComparisonEntryImpl(
      quotationId: null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String,
      supplierId: null == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      supplierName: null == supplierName
          ? _value.supplierName
          : supplierName // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      leadTimeDays: null == leadTimeDays
          ? _value.leadTimeDays
          : leadTimeDays // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      brandModel: freezed == brandModel
          ? _value.brandModel
          : brandModel // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      metrics: freezed == metrics
          ? _value._metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuotationComparisonEntryImpl implements _QuotationComparisonEntry {
  const _$QuotationComparisonEntryImpl(
      {required this.quotationId,
      required this.supplierId,
      required this.supplierName,
      required this.unitPrice,
      required this.totalPrice,
      required this.leadTimeDays,
      this.deliveryDate,
      this.brandModel,
      this.notes,
      this.score,
      final Map<String, dynamic>? metrics})
      : _metrics = metrics;

  factory _$QuotationComparisonEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuotationComparisonEntryImplFromJson(json);

  @override
  final String quotationId;
  @override
  final String supplierId;
  @override
  final String supplierName;
  @override
  final double unitPrice;
  @override
  final double totalPrice;
  @override
  final int leadTimeDays;
  @override
  final DateTime? deliveryDate;
  @override
  final String? brandModel;
  @override
  final String? notes;
  @override
  final double? score;
  final Map<String, dynamic>? _metrics;
  @override
  Map<String, dynamic>? get metrics {
    final value = _metrics;
    if (value == null) return null;
    if (_metrics is EqualUnmodifiableMapView) return _metrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'QuotationComparisonEntry(quotationId: $quotationId, supplierId: $supplierId, supplierName: $supplierName, unitPrice: $unitPrice, totalPrice: $totalPrice, leadTimeDays: $leadTimeDays, deliveryDate: $deliveryDate, brandModel: $brandModel, notes: $notes, score: $score, metrics: $metrics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuotationComparisonEntryImpl &&
            (identical(other.quotationId, quotationId) ||
                other.quotationId == quotationId) &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.supplierName, supplierName) ||
                other.supplierName == supplierName) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.leadTimeDays, leadTimeDays) ||
                other.leadTimeDays == leadTimeDays) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.brandModel, brandModel) ||
                other.brandModel == brandModel) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality().equals(other._metrics, _metrics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      quotationId,
      supplierId,
      supplierName,
      unitPrice,
      totalPrice,
      leadTimeDays,
      deliveryDate,
      brandModel,
      notes,
      score,
      const DeepCollectionEquality().hash(_metrics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuotationComparisonEntryImplCopyWith<_$QuotationComparisonEntryImpl>
      get copyWith => __$$QuotationComparisonEntryImplCopyWithImpl<
          _$QuotationComparisonEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuotationComparisonEntryImplToJson(
      this,
    );
  }
}

abstract class _QuotationComparisonEntry implements QuotationComparisonEntry {
  const factory _QuotationComparisonEntry(
      {required final String quotationId,
      required final String supplierId,
      required final String supplierName,
      required final double unitPrice,
      required final double totalPrice,
      required final int leadTimeDays,
      final DateTime? deliveryDate,
      final String? brandModel,
      final String? notes,
      final double? score,
      final Map<String, dynamic>? metrics}) = _$QuotationComparisonEntryImpl;

  factory _QuotationComparisonEntry.fromJson(Map<String, dynamic> json) =
      _$QuotationComparisonEntryImpl.fromJson;

  @override
  String get quotationId;
  @override
  String get supplierId;
  @override
  String get supplierName;
  @override
  double get unitPrice;
  @override
  double get totalPrice;
  @override
  int get leadTimeDays;
  @override
  DateTime? get deliveryDate;
  @override
  String? get brandModel;
  @override
  String? get notes;
  @override
  double? get score;
  @override
  Map<String, dynamic>? get metrics;
  @override
  @JsonKey(ignore: true)
  _$$QuotationComparisonEntryImplCopyWith<_$QuotationComparisonEntryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
