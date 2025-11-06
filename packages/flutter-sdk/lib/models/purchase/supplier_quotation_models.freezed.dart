// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supplier_quotation_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupplierQuotation {
  String get id;
  String get quotationNumber;
  String get supplierId;
  String
      get status; // 'draft', 'sent', 'received', 'selected', 'rejected', 'expired'
  DateTime get quotationDate;
  DateTime get validUntil;
  double get totalAmount;
  double get taxAmount;
  double get netAmount;
  DateTime get createdAt;
  DateTime get updatedAt;
  DateTime? get sentAt;
  DateTime? get receivedAt;
  DateTime? get selectedAt;
  DateTime? get rejectedAt;
  String? get rfqId;
  String? get selectedBy;
  String? get rejectedBy;
  String? get notes;
  String? get termsAndConditions;
  String? get paymentTerms;
  String? get deliveryTerms;
  String? get supplierReference;
  String? get contactPerson;
  String? get contactEmail;
  String? get contactPhone;
  Map<String, dynamic>? get metadata;

  /// Create a copy of SupplierQuotation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SupplierQuotationCopyWith<SupplierQuotation> get copyWith =>
      _$SupplierQuotationCopyWithImpl<SupplierQuotation>(
          this as SupplierQuotation, _$identity);

  /// Serializes this SupplierQuotation to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SupplierQuotation &&
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
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
        const DeepCollectionEquality().hash(metadata)
      ]);

  @override
  String toString() {
    return 'SupplierQuotation(id: $id, quotationNumber: $quotationNumber, supplierId: $supplierId, status: $status, quotationDate: $quotationDate, validUntil: $validUntil, totalAmount: $totalAmount, taxAmount: $taxAmount, netAmount: $netAmount, createdAt: $createdAt, updatedAt: $updatedAt, sentAt: $sentAt, receivedAt: $receivedAt, selectedAt: $selectedAt, rejectedAt: $rejectedAt, rfqId: $rfqId, selectedBy: $selectedBy, rejectedBy: $rejectedBy, notes: $notes, termsAndConditions: $termsAndConditions, paymentTerms: $paymentTerms, deliveryTerms: $deliveryTerms, supplierReference: $supplierReference, contactPerson: $contactPerson, contactEmail: $contactEmail, contactPhone: $contactPhone, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $SupplierQuotationCopyWith<$Res> {
  factory $SupplierQuotationCopyWith(
          SupplierQuotation value, $Res Function(SupplierQuotation) _then) =
      _$SupplierQuotationCopyWithImpl;
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
class _$SupplierQuotationCopyWithImpl<$Res>
    implements $SupplierQuotationCopyWith<$Res> {
  _$SupplierQuotationCopyWithImpl(this._self, this._then);

  final SupplierQuotation _self;
  final $Res Function(SupplierQuotation) _then;

  /// Create a copy of SupplierQuotation
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      quotationNumber: null == quotationNumber
          ? _self.quotationNumber
          : quotationNumber // ignore: cast_nullable_to_non_nullable
              as String,
      supplierId: null == supplierId
          ? _self.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      quotationDate: null == quotationDate
          ? _self.quotationDate
          : quotationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      validUntil: null == validUntil
          ? _self.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalAmount: null == totalAmount
          ? _self.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxAmount: null == taxAmount
          ? _self.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      netAmount: null == netAmount
          ? _self.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sentAt: freezed == sentAt
          ? _self.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      receivedAt: freezed == receivedAt
          ? _self.receivedAt
          : receivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedAt: freezed == selectedAt
          ? _self.selectedAt
          : selectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _self.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rfqId: freezed == rfqId
          ? _self.rfqId
          : rfqId // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedBy: freezed == selectedBy
          ? _self.selectedBy
          : selectedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectedBy: freezed == rejectedBy
          ? _self.rejectedBy
          : rejectedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _self.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _self.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryTerms: freezed == deliveryTerms
          ? _self.deliveryTerms
          : deliveryTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierReference: freezed == supplierReference
          ? _self.supplierReference
          : supplierReference // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPerson: freezed == contactPerson
          ? _self.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _self.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _self.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SupplierQuotation].
extension SupplierQuotationPatterns on SupplierQuotation {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SupplierQuotation value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SupplierQuotation() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SupplierQuotation value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupplierQuotation():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SupplierQuotation value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupplierQuotation() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
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
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SupplierQuotation() when $default != null:
        return $default(
            _that.id,
            _that.quotationNumber,
            _that.supplierId,
            _that.status,
            _that.quotationDate,
            _that.validUntil,
            _that.totalAmount,
            _that.taxAmount,
            _that.netAmount,
            _that.createdAt,
            _that.updatedAt,
            _that.sentAt,
            _that.receivedAt,
            _that.selectedAt,
            _that.rejectedAt,
            _that.rfqId,
            _that.selectedBy,
            _that.rejectedBy,
            _that.notes,
            _that.termsAndConditions,
            _that.paymentTerms,
            _that.deliveryTerms,
            _that.supplierReference,
            _that.contactPerson,
            _that.contactEmail,
            _that.contactPhone,
            _that.metadata);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
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
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupplierQuotation():
        return $default(
            _that.id,
            _that.quotationNumber,
            _that.supplierId,
            _that.status,
            _that.quotationDate,
            _that.validUntil,
            _that.totalAmount,
            _that.taxAmount,
            _that.netAmount,
            _that.createdAt,
            _that.updatedAt,
            _that.sentAt,
            _that.receivedAt,
            _that.selectedAt,
            _that.rejectedAt,
            _that.rfqId,
            _that.selectedBy,
            _that.rejectedBy,
            _that.notes,
            _that.termsAndConditions,
            _that.paymentTerms,
            _that.deliveryTerms,
            _that.supplierReference,
            _that.contactPerson,
            _that.contactEmail,
            _that.contactPhone,
            _that.metadata);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
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
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupplierQuotation() when $default != null:
        return $default(
            _that.id,
            _that.quotationNumber,
            _that.supplierId,
            _that.status,
            _that.quotationDate,
            _that.validUntil,
            _that.totalAmount,
            _that.taxAmount,
            _that.netAmount,
            _that.createdAt,
            _that.updatedAt,
            _that.sentAt,
            _that.receivedAt,
            _that.selectedAt,
            _that.rejectedAt,
            _that.rfqId,
            _that.selectedBy,
            _that.rejectedBy,
            _that.notes,
            _that.termsAndConditions,
            _that.paymentTerms,
            _that.deliveryTerms,
            _that.supplierReference,
            _that.contactPerson,
            _that.contactEmail,
            _that.contactPhone,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SupplierQuotation implements SupplierQuotation {
  const _SupplierQuotation(
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
  factory _SupplierQuotation.fromJson(Map<String, dynamic> json) =>
      _$SupplierQuotationFromJson(json);

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

  /// Create a copy of SupplierQuotation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SupplierQuotationCopyWith<_SupplierQuotation> get copyWith =>
      __$SupplierQuotationCopyWithImpl<_SupplierQuotation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SupplierQuotationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SupplierQuotation &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'SupplierQuotation(id: $id, quotationNumber: $quotationNumber, supplierId: $supplierId, status: $status, quotationDate: $quotationDate, validUntil: $validUntil, totalAmount: $totalAmount, taxAmount: $taxAmount, netAmount: $netAmount, createdAt: $createdAt, updatedAt: $updatedAt, sentAt: $sentAt, receivedAt: $receivedAt, selectedAt: $selectedAt, rejectedAt: $rejectedAt, rfqId: $rfqId, selectedBy: $selectedBy, rejectedBy: $rejectedBy, notes: $notes, termsAndConditions: $termsAndConditions, paymentTerms: $paymentTerms, deliveryTerms: $deliveryTerms, supplierReference: $supplierReference, contactPerson: $contactPerson, contactEmail: $contactEmail, contactPhone: $contactPhone, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$SupplierQuotationCopyWith<$Res>
    implements $SupplierQuotationCopyWith<$Res> {
  factory _$SupplierQuotationCopyWith(
          _SupplierQuotation value, $Res Function(_SupplierQuotation) _then) =
      __$SupplierQuotationCopyWithImpl;
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
class __$SupplierQuotationCopyWithImpl<$Res>
    implements _$SupplierQuotationCopyWith<$Res> {
  __$SupplierQuotationCopyWithImpl(this._self, this._then);

  final _SupplierQuotation _self;
  final $Res Function(_SupplierQuotation) _then;

  /// Create a copy of SupplierQuotation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_SupplierQuotation(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      quotationNumber: null == quotationNumber
          ? _self.quotationNumber
          : quotationNumber // ignore: cast_nullable_to_non_nullable
              as String,
      supplierId: null == supplierId
          ? _self.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      quotationDate: null == quotationDate
          ? _self.quotationDate
          : quotationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      validUntil: null == validUntil
          ? _self.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalAmount: null == totalAmount
          ? _self.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxAmount: null == taxAmount
          ? _self.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      netAmount: null == netAmount
          ? _self.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sentAt: freezed == sentAt
          ? _self.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      receivedAt: freezed == receivedAt
          ? _self.receivedAt
          : receivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedAt: freezed == selectedAt
          ? _self.selectedAt
          : selectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _self.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rfqId: freezed == rfqId
          ? _self.rfqId
          : rfqId // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedBy: freezed == selectedBy
          ? _self.selectedBy
          : selectedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectedBy: freezed == rejectedBy
          ? _self.rejectedBy
          : rejectedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _self.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _self.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryTerms: freezed == deliveryTerms
          ? _self.deliveryTerms
          : deliveryTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierReference: freezed == supplierReference
          ? _self.supplierReference
          : supplierReference // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPerson: freezed == contactPerson
          ? _self.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _self.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _self.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$SupplierQuotationLineItem {
  String get id;
  String get supplierQuotationId;
  String get itemId;
  double get quantity;
  String get unit;
  double get unitPrice;
  double get totalPrice;
  double get discountAmount;
  double get taxAmount;
  double get netAmount;
  String get status; // 'pending', 'quoted', 'selected', 'rejected'
  int? get sequence;
  int? get leadTimeDays;
  DateTime? get deliveryDate;
  String? get notes;
  String? get specification;
  String? get brandModel;
  String? get partNumber;
  double? get moq; // Minimum Order Quantity
  Map<String, dynamic>? get attributes;
  Map<String, dynamic>? get metadata;

  /// Create a copy of SupplierQuotationLineItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SupplierQuotationLineItemCopyWith<SupplierQuotationLineItem> get copyWith =>
      _$SupplierQuotationLineItemCopyWithImpl<SupplierQuotationLineItem>(
          this as SupplierQuotationLineItem, _$identity);

  /// Serializes this SupplierQuotationLineItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SupplierQuotationLineItem &&
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
                .equals(other.attributes, attributes) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
        const DeepCollectionEquality().hash(attributes),
        const DeepCollectionEquality().hash(metadata)
      ]);

  @override
  String toString() {
    return 'SupplierQuotationLineItem(id: $id, supplierQuotationId: $supplierQuotationId, itemId: $itemId, quantity: $quantity, unit: $unit, unitPrice: $unitPrice, totalPrice: $totalPrice, discountAmount: $discountAmount, taxAmount: $taxAmount, netAmount: $netAmount, status: $status, sequence: $sequence, leadTimeDays: $leadTimeDays, deliveryDate: $deliveryDate, notes: $notes, specification: $specification, brandModel: $brandModel, partNumber: $partNumber, moq: $moq, attributes: $attributes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $SupplierQuotationLineItemCopyWith<$Res> {
  factory $SupplierQuotationLineItemCopyWith(SupplierQuotationLineItem value,
          $Res Function(SupplierQuotationLineItem) _then) =
      _$SupplierQuotationLineItemCopyWithImpl;
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
class _$SupplierQuotationLineItemCopyWithImpl<$Res>
    implements $SupplierQuotationLineItemCopyWith<$Res> {
  _$SupplierQuotationLineItemCopyWithImpl(this._self, this._then);

  final SupplierQuotationLineItem _self;
  final $Res Function(SupplierQuotationLineItem) _then;

  /// Create a copy of SupplierQuotationLineItem
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      supplierQuotationId: null == supplierQuotationId
          ? _self.supplierQuotationId
          : supplierQuotationId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _self.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _self.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: null == discountAmount
          ? _self.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxAmount: null == taxAmount
          ? _self.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      netAmount: null == netAmount
          ? _self.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      sequence: freezed == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      leadTimeDays: freezed == leadTimeDays
          ? _self.leadTimeDays
          : leadTimeDays // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryDate: freezed == deliveryDate
          ? _self.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _self.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      brandModel: freezed == brandModel
          ? _self.brandModel
          : brandModel // ignore: cast_nullable_to_non_nullable
              as String?,
      partNumber: freezed == partNumber
          ? _self.partNumber
          : partNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      moq: freezed == moq
          ? _self.moq
          : moq // ignore: cast_nullable_to_non_nullable
              as double?,
      attributes: freezed == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SupplierQuotationLineItem].
extension SupplierQuotationLineItemPatterns on SupplierQuotationLineItem {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SupplierQuotationLineItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SupplierQuotationLineItem() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SupplierQuotationLineItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupplierQuotationLineItem():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SupplierQuotationLineItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupplierQuotationLineItem() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
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
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SupplierQuotationLineItem() when $default != null:
        return $default(
            _that.id,
            _that.supplierQuotationId,
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.unitPrice,
            _that.totalPrice,
            _that.discountAmount,
            _that.taxAmount,
            _that.netAmount,
            _that.status,
            _that.sequence,
            _that.leadTimeDays,
            _that.deliveryDate,
            _that.notes,
            _that.specification,
            _that.brandModel,
            _that.partNumber,
            _that.moq,
            _that.attributes,
            _that.metadata);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
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
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupplierQuotationLineItem():
        return $default(
            _that.id,
            _that.supplierQuotationId,
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.unitPrice,
            _that.totalPrice,
            _that.discountAmount,
            _that.taxAmount,
            _that.netAmount,
            _that.status,
            _that.sequence,
            _that.leadTimeDays,
            _that.deliveryDate,
            _that.notes,
            _that.specification,
            _that.brandModel,
            _that.partNumber,
            _that.moq,
            _that.attributes,
            _that.metadata);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
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
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupplierQuotationLineItem() when $default != null:
        return $default(
            _that.id,
            _that.supplierQuotationId,
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.unitPrice,
            _that.totalPrice,
            _that.discountAmount,
            _that.taxAmount,
            _that.netAmount,
            _that.status,
            _that.sequence,
            _that.leadTimeDays,
            _that.deliveryDate,
            _that.notes,
            _that.specification,
            _that.brandModel,
            _that.partNumber,
            _that.moq,
            _that.attributes,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SupplierQuotationLineItem implements SupplierQuotationLineItem {
  const _SupplierQuotationLineItem(
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
  factory _SupplierQuotationLineItem.fromJson(Map<String, dynamic> json) =>
      _$SupplierQuotationLineItemFromJson(json);

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

  /// Create a copy of SupplierQuotationLineItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SupplierQuotationLineItemCopyWith<_SupplierQuotationLineItem>
      get copyWith =>
          __$SupplierQuotationLineItemCopyWithImpl<_SupplierQuotationLineItem>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SupplierQuotationLineItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SupplierQuotationLineItem &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'SupplierQuotationLineItem(id: $id, supplierQuotationId: $supplierQuotationId, itemId: $itemId, quantity: $quantity, unit: $unit, unitPrice: $unitPrice, totalPrice: $totalPrice, discountAmount: $discountAmount, taxAmount: $taxAmount, netAmount: $netAmount, status: $status, sequence: $sequence, leadTimeDays: $leadTimeDays, deliveryDate: $deliveryDate, notes: $notes, specification: $specification, brandModel: $brandModel, partNumber: $partNumber, moq: $moq, attributes: $attributes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$SupplierQuotationLineItemCopyWith<$Res>
    implements $SupplierQuotationLineItemCopyWith<$Res> {
  factory _$SupplierQuotationLineItemCopyWith(_SupplierQuotationLineItem value,
          $Res Function(_SupplierQuotationLineItem) _then) =
      __$SupplierQuotationLineItemCopyWithImpl;
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
class __$SupplierQuotationLineItemCopyWithImpl<$Res>
    implements _$SupplierQuotationLineItemCopyWith<$Res> {
  __$SupplierQuotationLineItemCopyWithImpl(this._self, this._then);

  final _SupplierQuotationLineItem _self;
  final $Res Function(_SupplierQuotationLineItem) _then;

  /// Create a copy of SupplierQuotationLineItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_SupplierQuotationLineItem(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      supplierQuotationId: null == supplierQuotationId
          ? _self.supplierQuotationId
          : supplierQuotationId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _self.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _self.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: null == discountAmount
          ? _self.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxAmount: null == taxAmount
          ? _self.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      netAmount: null == netAmount
          ? _self.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      sequence: freezed == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      leadTimeDays: freezed == leadTimeDays
          ? _self.leadTimeDays
          : leadTimeDays // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryDate: freezed == deliveryDate
          ? _self.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _self.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      brandModel: freezed == brandModel
          ? _self.brandModel
          : brandModel // ignore: cast_nullable_to_non_nullable
              as String?,
      partNumber: freezed == partNumber
          ? _self.partNumber
          : partNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      moq: freezed == moq
          ? _self.moq
          : moq // ignore: cast_nullable_to_non_nullable
              as double?,
      attributes: freezed == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$CreateSupplierQuotationRequest {
  String get supplierId;
  DateTime get quotationDate;
  DateTime get validUntil;
  String? get rfqId;
  String? get notes;
  String? get termsAndConditions;
  String? get paymentTerms;
  String? get deliveryTerms;
  String? get supplierReference;
  String? get contactPerson;
  String? get contactEmail;
  String? get contactPhone;
  List<CreateSupplierQuotationLineItemRequest>? get lineItems;
  Map<String, dynamic>? get metadata;

  /// Create a copy of CreateSupplierQuotationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateSupplierQuotationRequestCopyWith<CreateSupplierQuotationRequest>
      get copyWith => _$CreateSupplierQuotationRequestCopyWithImpl<
              CreateSupplierQuotationRequest>(
          this as CreateSupplierQuotationRequest, _$identity);

  /// Serializes this CreateSupplierQuotationRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateSupplierQuotationRequest &&
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
            const DeepCollectionEquality().equals(other.lineItems, lineItems) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(lineItems),
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'CreateSupplierQuotationRequest(supplierId: $supplierId, quotationDate: $quotationDate, validUntil: $validUntil, rfqId: $rfqId, notes: $notes, termsAndConditions: $termsAndConditions, paymentTerms: $paymentTerms, deliveryTerms: $deliveryTerms, supplierReference: $supplierReference, contactPerson: $contactPerson, contactEmail: $contactEmail, contactPhone: $contactPhone, lineItems: $lineItems, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $CreateSupplierQuotationRequestCopyWith<$Res> {
  factory $CreateSupplierQuotationRequestCopyWith(
          CreateSupplierQuotationRequest value,
          $Res Function(CreateSupplierQuotationRequest) _then) =
      _$CreateSupplierQuotationRequestCopyWithImpl;
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
class _$CreateSupplierQuotationRequestCopyWithImpl<$Res>
    implements $CreateSupplierQuotationRequestCopyWith<$Res> {
  _$CreateSupplierQuotationRequestCopyWithImpl(this._self, this._then);

  final CreateSupplierQuotationRequest _self;
  final $Res Function(CreateSupplierQuotationRequest) _then;

  /// Create a copy of CreateSupplierQuotationRequest
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      supplierId: null == supplierId
          ? _self.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      quotationDate: null == quotationDate
          ? _self.quotationDate
          : quotationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      validUntil: null == validUntil
          ? _self.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rfqId: freezed == rfqId
          ? _self.rfqId
          : rfqId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _self.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _self.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryTerms: freezed == deliveryTerms
          ? _self.deliveryTerms
          : deliveryTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierReference: freezed == supplierReference
          ? _self.supplierReference
          : supplierReference // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPerson: freezed == contactPerson
          ? _self.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _self.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _self.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      lineItems: freezed == lineItems
          ? _self.lineItems
          : lineItems // ignore: cast_nullable_to_non_nullable
              as List<CreateSupplierQuotationLineItemRequest>?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateSupplierQuotationRequest].
extension CreateSupplierQuotationRequestPatterns
    on CreateSupplierQuotationRequest {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CreateSupplierQuotationRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateSupplierQuotationRequest() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CreateSupplierQuotationRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSupplierQuotationRequest():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CreateSupplierQuotationRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSupplierQuotationRequest() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String supplierId,
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
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateSupplierQuotationRequest() when $default != null:
        return $default(
            _that.supplierId,
            _that.quotationDate,
            _that.validUntil,
            _that.rfqId,
            _that.notes,
            _that.termsAndConditions,
            _that.paymentTerms,
            _that.deliveryTerms,
            _that.supplierReference,
            _that.contactPerson,
            _that.contactEmail,
            _that.contactPhone,
            _that.lineItems,
            _that.metadata);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String supplierId,
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
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSupplierQuotationRequest():
        return $default(
            _that.supplierId,
            _that.quotationDate,
            _that.validUntil,
            _that.rfqId,
            _that.notes,
            _that.termsAndConditions,
            _that.paymentTerms,
            _that.deliveryTerms,
            _that.supplierReference,
            _that.contactPerson,
            _that.contactEmail,
            _that.contactPhone,
            _that.lineItems,
            _that.metadata);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String supplierId,
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
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSupplierQuotationRequest() when $default != null:
        return $default(
            _that.supplierId,
            _that.quotationDate,
            _that.validUntil,
            _that.rfqId,
            _that.notes,
            _that.termsAndConditions,
            _that.paymentTerms,
            _that.deliveryTerms,
            _that.supplierReference,
            _that.contactPerson,
            _that.contactEmail,
            _that.contactPhone,
            _that.lineItems,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateSupplierQuotationRequest
    implements CreateSupplierQuotationRequest {
  const _CreateSupplierQuotationRequest(
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
  factory _CreateSupplierQuotationRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSupplierQuotationRequestFromJson(json);

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

  /// Create a copy of CreateSupplierQuotationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateSupplierQuotationRequestCopyWith<_CreateSupplierQuotationRequest>
      get copyWith => __$CreateSupplierQuotationRequestCopyWithImpl<
          _CreateSupplierQuotationRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateSupplierQuotationRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateSupplierQuotationRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'CreateSupplierQuotationRequest(supplierId: $supplierId, quotationDate: $quotationDate, validUntil: $validUntil, rfqId: $rfqId, notes: $notes, termsAndConditions: $termsAndConditions, paymentTerms: $paymentTerms, deliveryTerms: $deliveryTerms, supplierReference: $supplierReference, contactPerson: $contactPerson, contactEmail: $contactEmail, contactPhone: $contactPhone, lineItems: $lineItems, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$CreateSupplierQuotationRequestCopyWith<$Res>
    implements $CreateSupplierQuotationRequestCopyWith<$Res> {
  factory _$CreateSupplierQuotationRequestCopyWith(
          _CreateSupplierQuotationRequest value,
          $Res Function(_CreateSupplierQuotationRequest) _then) =
      __$CreateSupplierQuotationRequestCopyWithImpl;
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
class __$CreateSupplierQuotationRequestCopyWithImpl<$Res>
    implements _$CreateSupplierQuotationRequestCopyWith<$Res> {
  __$CreateSupplierQuotationRequestCopyWithImpl(this._self, this._then);

  final _CreateSupplierQuotationRequest _self;
  final $Res Function(_CreateSupplierQuotationRequest) _then;

  /// Create a copy of CreateSupplierQuotationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_CreateSupplierQuotationRequest(
      supplierId: null == supplierId
          ? _self.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      quotationDate: null == quotationDate
          ? _self.quotationDate
          : quotationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      validUntil: null == validUntil
          ? _self.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rfqId: freezed == rfqId
          ? _self.rfqId
          : rfqId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _self.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _self.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryTerms: freezed == deliveryTerms
          ? _self.deliveryTerms
          : deliveryTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierReference: freezed == supplierReference
          ? _self.supplierReference
          : supplierReference // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPerson: freezed == contactPerson
          ? _self.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _self.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _self.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      lineItems: freezed == lineItems
          ? _self._lineItems
          : lineItems // ignore: cast_nullable_to_non_nullable
              as List<CreateSupplierQuotationLineItemRequest>?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$CreateSupplierQuotationLineItemRequest {
  String get itemId;
  double get quantity;
  String get unit;
  double get unitPrice;
  double? get discountAmount;
  double? get taxAmount;
  int? get sequence;
  int? get leadTimeDays;
  DateTime? get deliveryDate;
  String? get notes;
  String? get specification;
  String? get brandModel;
  String? get partNumber;
  double? get moq;
  Map<String, dynamic>? get attributes;

  /// Create a copy of CreateSupplierQuotationLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateSupplierQuotationLineItemRequestCopyWith<
          CreateSupplierQuotationLineItemRequest>
      get copyWith => _$CreateSupplierQuotationLineItemRequestCopyWithImpl<
              CreateSupplierQuotationLineItemRequest>(
          this as CreateSupplierQuotationLineItemRequest, _$identity);

  /// Serializes this CreateSupplierQuotationLineItemRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateSupplierQuotationLineItemRequest &&
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
                .equals(other.attributes, attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(attributes));

  @override
  String toString() {
    return 'CreateSupplierQuotationLineItemRequest(itemId: $itemId, quantity: $quantity, unit: $unit, unitPrice: $unitPrice, discountAmount: $discountAmount, taxAmount: $taxAmount, sequence: $sequence, leadTimeDays: $leadTimeDays, deliveryDate: $deliveryDate, notes: $notes, specification: $specification, brandModel: $brandModel, partNumber: $partNumber, moq: $moq, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class $CreateSupplierQuotationLineItemRequestCopyWith<$Res> {
  factory $CreateSupplierQuotationLineItemRequestCopyWith(
          CreateSupplierQuotationLineItemRequest value,
          $Res Function(CreateSupplierQuotationLineItemRequest) _then) =
      _$CreateSupplierQuotationLineItemRequestCopyWithImpl;
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
class _$CreateSupplierQuotationLineItemRequestCopyWithImpl<$Res>
    implements $CreateSupplierQuotationLineItemRequestCopyWith<$Res> {
  _$CreateSupplierQuotationLineItemRequestCopyWithImpl(this._self, this._then);

  final CreateSupplierQuotationLineItemRequest _self;
  final $Res Function(CreateSupplierQuotationLineItemRequest) _then;

  /// Create a copy of CreateSupplierQuotationLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _self.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: freezed == discountAmount
          ? _self.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      taxAmount: freezed == taxAmount
          ? _self.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      leadTimeDays: freezed == leadTimeDays
          ? _self.leadTimeDays
          : leadTimeDays // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryDate: freezed == deliveryDate
          ? _self.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _self.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      brandModel: freezed == brandModel
          ? _self.brandModel
          : brandModel // ignore: cast_nullable_to_non_nullable
              as String?,
      partNumber: freezed == partNumber
          ? _self.partNumber
          : partNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      moq: freezed == moq
          ? _self.moq
          : moq // ignore: cast_nullable_to_non_nullable
              as double?,
      attributes: freezed == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateSupplierQuotationLineItemRequest].
extension CreateSupplierQuotationLineItemRequestPatterns
    on CreateSupplierQuotationLineItemRequest {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CreateSupplierQuotationLineItemRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateSupplierQuotationLineItemRequest() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CreateSupplierQuotationLineItemRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSupplierQuotationLineItemRequest():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CreateSupplierQuotationLineItemRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSupplierQuotationLineItemRequest() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String itemId,
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
            Map<String, dynamic>? attributes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateSupplierQuotationLineItemRequest() when $default != null:
        return $default(
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.unitPrice,
            _that.discountAmount,
            _that.taxAmount,
            _that.sequence,
            _that.leadTimeDays,
            _that.deliveryDate,
            _that.notes,
            _that.specification,
            _that.brandModel,
            _that.partNumber,
            _that.moq,
            _that.attributes);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String itemId,
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
            Map<String, dynamic>? attributes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSupplierQuotationLineItemRequest():
        return $default(
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.unitPrice,
            _that.discountAmount,
            _that.taxAmount,
            _that.sequence,
            _that.leadTimeDays,
            _that.deliveryDate,
            _that.notes,
            _that.specification,
            _that.brandModel,
            _that.partNumber,
            _that.moq,
            _that.attributes);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String itemId,
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
            Map<String, dynamic>? attributes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSupplierQuotationLineItemRequest() when $default != null:
        return $default(
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.unitPrice,
            _that.discountAmount,
            _that.taxAmount,
            _that.sequence,
            _that.leadTimeDays,
            _that.deliveryDate,
            _that.notes,
            _that.specification,
            _that.brandModel,
            _that.partNumber,
            _that.moq,
            _that.attributes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateSupplierQuotationLineItemRequest
    implements CreateSupplierQuotationLineItemRequest {
  const _CreateSupplierQuotationLineItemRequest(
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
  factory _CreateSupplierQuotationLineItemRequest.fromJson(
          Map<String, dynamic> json) =>
      _$CreateSupplierQuotationLineItemRequestFromJson(json);

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

  /// Create a copy of CreateSupplierQuotationLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateSupplierQuotationLineItemRequestCopyWith<
          _CreateSupplierQuotationLineItemRequest>
      get copyWith => __$CreateSupplierQuotationLineItemRequestCopyWithImpl<
          _CreateSupplierQuotationLineItemRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateSupplierQuotationLineItemRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateSupplierQuotationLineItemRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'CreateSupplierQuotationLineItemRequest(itemId: $itemId, quantity: $quantity, unit: $unit, unitPrice: $unitPrice, discountAmount: $discountAmount, taxAmount: $taxAmount, sequence: $sequence, leadTimeDays: $leadTimeDays, deliveryDate: $deliveryDate, notes: $notes, specification: $specification, brandModel: $brandModel, partNumber: $partNumber, moq: $moq, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class _$CreateSupplierQuotationLineItemRequestCopyWith<$Res>
    implements $CreateSupplierQuotationLineItemRequestCopyWith<$Res> {
  factory _$CreateSupplierQuotationLineItemRequestCopyWith(
          _CreateSupplierQuotationLineItemRequest value,
          $Res Function(_CreateSupplierQuotationLineItemRequest) _then) =
      __$CreateSupplierQuotationLineItemRequestCopyWithImpl;
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
class __$CreateSupplierQuotationLineItemRequestCopyWithImpl<$Res>
    implements _$CreateSupplierQuotationLineItemRequestCopyWith<$Res> {
  __$CreateSupplierQuotationLineItemRequestCopyWithImpl(this._self, this._then);

  final _CreateSupplierQuotationLineItemRequest _self;
  final $Res Function(_CreateSupplierQuotationLineItemRequest) _then;

  /// Create a copy of CreateSupplierQuotationLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_CreateSupplierQuotationLineItemRequest(
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _self.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: freezed == discountAmount
          ? _self.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      taxAmount: freezed == taxAmount
          ? _self.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      leadTimeDays: freezed == leadTimeDays
          ? _self.leadTimeDays
          : leadTimeDays // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryDate: freezed == deliveryDate
          ? _self.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _self.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      brandModel: freezed == brandModel
          ? _self.brandModel
          : brandModel // ignore: cast_nullable_to_non_nullable
              as String?,
      partNumber: freezed == partNumber
          ? _self.partNumber
          : partNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      moq: freezed == moq
          ? _self.moq
          : moq // ignore: cast_nullable_to_non_nullable
              as double?,
      attributes: freezed == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$UpdateSupplierQuotationRequest {
  DateTime? get quotationDate;
  DateTime? get validUntil;
  String? get notes;
  String? get termsAndConditions;
  String? get paymentTerms;
  String? get deliveryTerms;
  String? get supplierReference;
  String? get contactPerson;
  String? get contactEmail;
  String? get contactPhone;
  Map<String, dynamic>? get metadata;

  /// Create a copy of UpdateSupplierQuotationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateSupplierQuotationRequestCopyWith<UpdateSupplierQuotationRequest>
      get copyWith => _$UpdateSupplierQuotationRequestCopyWithImpl<
              UpdateSupplierQuotationRequest>(
          this as UpdateSupplierQuotationRequest, _$identity);

  /// Serializes this UpdateSupplierQuotationRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateSupplierQuotationRequest &&
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
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'UpdateSupplierQuotationRequest(quotationDate: $quotationDate, validUntil: $validUntil, notes: $notes, termsAndConditions: $termsAndConditions, paymentTerms: $paymentTerms, deliveryTerms: $deliveryTerms, supplierReference: $supplierReference, contactPerson: $contactPerson, contactEmail: $contactEmail, contactPhone: $contactPhone, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $UpdateSupplierQuotationRequestCopyWith<$Res> {
  factory $UpdateSupplierQuotationRequestCopyWith(
          UpdateSupplierQuotationRequest value,
          $Res Function(UpdateSupplierQuotationRequest) _then) =
      _$UpdateSupplierQuotationRequestCopyWithImpl;
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
class _$UpdateSupplierQuotationRequestCopyWithImpl<$Res>
    implements $UpdateSupplierQuotationRequestCopyWith<$Res> {
  _$UpdateSupplierQuotationRequestCopyWithImpl(this._self, this._then);

  final UpdateSupplierQuotationRequest _self;
  final $Res Function(UpdateSupplierQuotationRequest) _then;

  /// Create a copy of UpdateSupplierQuotationRequest
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      quotationDate: freezed == quotationDate
          ? _self.quotationDate
          : quotationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validUntil: freezed == validUntil
          ? _self.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _self.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _self.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryTerms: freezed == deliveryTerms
          ? _self.deliveryTerms
          : deliveryTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierReference: freezed == supplierReference
          ? _self.supplierReference
          : supplierReference // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPerson: freezed == contactPerson
          ? _self.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _self.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _self.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateSupplierQuotationRequest].
extension UpdateSupplierQuotationRequestPatterns
    on UpdateSupplierQuotationRequest {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UpdateSupplierQuotationRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateSupplierQuotationRequest() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UpdateSupplierQuotationRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateSupplierQuotationRequest():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UpdateSupplierQuotationRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateSupplierQuotationRequest() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            DateTime? quotationDate,
            DateTime? validUntil,
            String? notes,
            String? termsAndConditions,
            String? paymentTerms,
            String? deliveryTerms,
            String? supplierReference,
            String? contactPerson,
            String? contactEmail,
            String? contactPhone,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateSupplierQuotationRequest() when $default != null:
        return $default(
            _that.quotationDate,
            _that.validUntil,
            _that.notes,
            _that.termsAndConditions,
            _that.paymentTerms,
            _that.deliveryTerms,
            _that.supplierReference,
            _that.contactPerson,
            _that.contactEmail,
            _that.contactPhone,
            _that.metadata);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            DateTime? quotationDate,
            DateTime? validUntil,
            String? notes,
            String? termsAndConditions,
            String? paymentTerms,
            String? deliveryTerms,
            String? supplierReference,
            String? contactPerson,
            String? contactEmail,
            String? contactPhone,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateSupplierQuotationRequest():
        return $default(
            _that.quotationDate,
            _that.validUntil,
            _that.notes,
            _that.termsAndConditions,
            _that.paymentTerms,
            _that.deliveryTerms,
            _that.supplierReference,
            _that.contactPerson,
            _that.contactEmail,
            _that.contactPhone,
            _that.metadata);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            DateTime? quotationDate,
            DateTime? validUntil,
            String? notes,
            String? termsAndConditions,
            String? paymentTerms,
            String? deliveryTerms,
            String? supplierReference,
            String? contactPerson,
            String? contactEmail,
            String? contactPhone,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateSupplierQuotationRequest() when $default != null:
        return $default(
            _that.quotationDate,
            _that.validUntil,
            _that.notes,
            _that.termsAndConditions,
            _that.paymentTerms,
            _that.deliveryTerms,
            _that.supplierReference,
            _that.contactPerson,
            _that.contactEmail,
            _that.contactPhone,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateSupplierQuotationRequest
    implements UpdateSupplierQuotationRequest {
  const _UpdateSupplierQuotationRequest(
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
  factory _UpdateSupplierQuotationRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateSupplierQuotationRequestFromJson(json);

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

  /// Create a copy of UpdateSupplierQuotationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateSupplierQuotationRequestCopyWith<_UpdateSupplierQuotationRequest>
      get copyWith => __$UpdateSupplierQuotationRequestCopyWithImpl<
          _UpdateSupplierQuotationRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateSupplierQuotationRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateSupplierQuotationRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'UpdateSupplierQuotationRequest(quotationDate: $quotationDate, validUntil: $validUntil, notes: $notes, termsAndConditions: $termsAndConditions, paymentTerms: $paymentTerms, deliveryTerms: $deliveryTerms, supplierReference: $supplierReference, contactPerson: $contactPerson, contactEmail: $contactEmail, contactPhone: $contactPhone, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$UpdateSupplierQuotationRequestCopyWith<$Res>
    implements $UpdateSupplierQuotationRequestCopyWith<$Res> {
  factory _$UpdateSupplierQuotationRequestCopyWith(
          _UpdateSupplierQuotationRequest value,
          $Res Function(_UpdateSupplierQuotationRequest) _then) =
      __$UpdateSupplierQuotationRequestCopyWithImpl;
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
class __$UpdateSupplierQuotationRequestCopyWithImpl<$Res>
    implements _$UpdateSupplierQuotationRequestCopyWith<$Res> {
  __$UpdateSupplierQuotationRequestCopyWithImpl(this._self, this._then);

  final _UpdateSupplierQuotationRequest _self;
  final $Res Function(_UpdateSupplierQuotationRequest) _then;

  /// Create a copy of UpdateSupplierQuotationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_UpdateSupplierQuotationRequest(
      quotationDate: freezed == quotationDate
          ? _self.quotationDate
          : quotationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validUntil: freezed == validUntil
          ? _self.validUntil
          : validUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _self.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _self.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryTerms: freezed == deliveryTerms
          ? _self.deliveryTerms
          : deliveryTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierReference: freezed == supplierReference
          ? _self.supplierReference
          : supplierReference // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPerson: freezed == contactPerson
          ? _self.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _self.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _self.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$SupplierQuotationFilters {
  String? get supplierId;
  String? get status;
  String? get rfqId;
  DateTime? get quotationDateAfter;
  DateTime? get quotationDateBefore;
  DateTime? get validUntilAfter;
  DateTime? get validUntilBefore;
  double? get totalAmountMin;
  double? get totalAmountMax;
  List<String>? get itemIds;
  int? get page;
  int? get limit;
  String? get sortBy;
  String? get sortOrder;

  /// Create a copy of SupplierQuotationFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SupplierQuotationFiltersCopyWith<SupplierQuotationFilters> get copyWith =>
      _$SupplierQuotationFiltersCopyWithImpl<SupplierQuotationFilters>(
          this as SupplierQuotationFilters, _$identity);

  /// Serializes this SupplierQuotationFilters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SupplierQuotationFilters &&
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
            const DeepCollectionEquality().equals(other.itemIds, itemIds) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(itemIds),
      page,
      limit,
      sortBy,
      sortOrder);

  @override
  String toString() {
    return 'SupplierQuotationFilters(supplierId: $supplierId, status: $status, rfqId: $rfqId, quotationDateAfter: $quotationDateAfter, quotationDateBefore: $quotationDateBefore, validUntilAfter: $validUntilAfter, validUntilBefore: $validUntilBefore, totalAmountMin: $totalAmountMin, totalAmountMax: $totalAmountMax, itemIds: $itemIds, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class $SupplierQuotationFiltersCopyWith<$Res> {
  factory $SupplierQuotationFiltersCopyWith(SupplierQuotationFilters value,
          $Res Function(SupplierQuotationFilters) _then) =
      _$SupplierQuotationFiltersCopyWithImpl;
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
class _$SupplierQuotationFiltersCopyWithImpl<$Res>
    implements $SupplierQuotationFiltersCopyWith<$Res> {
  _$SupplierQuotationFiltersCopyWithImpl(this._self, this._then);

  final SupplierQuotationFilters _self;
  final $Res Function(SupplierQuotationFilters) _then;

  /// Create a copy of SupplierQuotationFilters
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      supplierId: freezed == supplierId
          ? _self.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      rfqId: freezed == rfqId
          ? _self.rfqId
          : rfqId // ignore: cast_nullable_to_non_nullable
              as String?,
      quotationDateAfter: freezed == quotationDateAfter
          ? _self.quotationDateAfter
          : quotationDateAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quotationDateBefore: freezed == quotationDateBefore
          ? _self.quotationDateBefore
          : quotationDateBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validUntilAfter: freezed == validUntilAfter
          ? _self.validUntilAfter
          : validUntilAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validUntilBefore: freezed == validUntilBefore
          ? _self.validUntilBefore
          : validUntilBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalAmountMin: freezed == totalAmountMin
          ? _self.totalAmountMin
          : totalAmountMin // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmountMax: freezed == totalAmountMax
          ? _self.totalAmountMax
          : totalAmountMax // ignore: cast_nullable_to_non_nullable
              as double?,
      itemIds: freezed == itemIds
          ? _self.itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _self.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SupplierQuotationFilters].
extension SupplierQuotationFiltersPatterns on SupplierQuotationFilters {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SupplierQuotationFilters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SupplierQuotationFilters() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SupplierQuotationFilters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupplierQuotationFilters():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SupplierQuotationFilters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupplierQuotationFilters() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? supplierId,
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
            String? sortOrder)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SupplierQuotationFilters() when $default != null:
        return $default(
            _that.supplierId,
            _that.status,
            _that.rfqId,
            _that.quotationDateAfter,
            _that.quotationDateBefore,
            _that.validUntilAfter,
            _that.validUntilBefore,
            _that.totalAmountMin,
            _that.totalAmountMax,
            _that.itemIds,
            _that.page,
            _that.limit,
            _that.sortBy,
            _that.sortOrder);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? supplierId,
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
            String? sortOrder)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupplierQuotationFilters():
        return $default(
            _that.supplierId,
            _that.status,
            _that.rfqId,
            _that.quotationDateAfter,
            _that.quotationDateBefore,
            _that.validUntilAfter,
            _that.validUntilBefore,
            _that.totalAmountMin,
            _that.totalAmountMax,
            _that.itemIds,
            _that.page,
            _that.limit,
            _that.sortBy,
            _that.sortOrder);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String? supplierId,
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
            String? sortOrder)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupplierQuotationFilters() when $default != null:
        return $default(
            _that.supplierId,
            _that.status,
            _that.rfqId,
            _that.quotationDateAfter,
            _that.quotationDateBefore,
            _that.validUntilAfter,
            _that.validUntilBefore,
            _that.totalAmountMin,
            _that.totalAmountMax,
            _that.itemIds,
            _that.page,
            _that.limit,
            _that.sortBy,
            _that.sortOrder);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SupplierQuotationFilters extends SupplierQuotationFilters {
  const _SupplierQuotationFilters(
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
  factory _SupplierQuotationFilters.fromJson(Map<String, dynamic> json) =>
      _$SupplierQuotationFiltersFromJson(json);

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

  /// Create a copy of SupplierQuotationFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SupplierQuotationFiltersCopyWith<_SupplierQuotationFilters> get copyWith =>
      __$SupplierQuotationFiltersCopyWithImpl<_SupplierQuotationFilters>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SupplierQuotationFiltersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SupplierQuotationFilters &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'SupplierQuotationFilters(supplierId: $supplierId, status: $status, rfqId: $rfqId, quotationDateAfter: $quotationDateAfter, quotationDateBefore: $quotationDateBefore, validUntilAfter: $validUntilAfter, validUntilBefore: $validUntilBefore, totalAmountMin: $totalAmountMin, totalAmountMax: $totalAmountMax, itemIds: $itemIds, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class _$SupplierQuotationFiltersCopyWith<$Res>
    implements $SupplierQuotationFiltersCopyWith<$Res> {
  factory _$SupplierQuotationFiltersCopyWith(_SupplierQuotationFilters value,
          $Res Function(_SupplierQuotationFilters) _then) =
      __$SupplierQuotationFiltersCopyWithImpl;
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
class __$SupplierQuotationFiltersCopyWithImpl<$Res>
    implements _$SupplierQuotationFiltersCopyWith<$Res> {
  __$SupplierQuotationFiltersCopyWithImpl(this._self, this._then);

  final _SupplierQuotationFilters _self;
  final $Res Function(_SupplierQuotationFilters) _then;

  /// Create a copy of SupplierQuotationFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_SupplierQuotationFilters(
      supplierId: freezed == supplierId
          ? _self.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      rfqId: freezed == rfqId
          ? _self.rfqId
          : rfqId // ignore: cast_nullable_to_non_nullable
              as String?,
      quotationDateAfter: freezed == quotationDateAfter
          ? _self.quotationDateAfter
          : quotationDateAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quotationDateBefore: freezed == quotationDateBefore
          ? _self.quotationDateBefore
          : quotationDateBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validUntilAfter: freezed == validUntilAfter
          ? _self.validUntilAfter
          : validUntilAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validUntilBefore: freezed == validUntilBefore
          ? _self.validUntilBefore
          : validUntilBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalAmountMin: freezed == totalAmountMin
          ? _self.totalAmountMin
          : totalAmountMin // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmountMax: freezed == totalAmountMax
          ? _self.totalAmountMax
          : totalAmountMax // ignore: cast_nullable_to_non_nullable
              as double?,
      itemIds: freezed == itemIds
          ? _self._itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _self.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$QuotationComparison {
  String get itemId;
  String get itemName;
  double get quantity;
  String get unit;
  List<QuotationComparisonEntry> get quotations;
  String? get recommendation;
  Map<String, dynamic>? get analysis;

  /// Create a copy of QuotationComparison
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QuotationComparisonCopyWith<QuotationComparison> get copyWith =>
      _$QuotationComparisonCopyWithImpl<QuotationComparison>(
          this as QuotationComparison, _$identity);

  /// Serializes this QuotationComparison to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QuotationComparison &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            const DeepCollectionEquality()
                .equals(other.quotations, quotations) &&
            (identical(other.recommendation, recommendation) ||
                other.recommendation == recommendation) &&
            const DeepCollectionEquality().equals(other.analysis, analysis));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemId,
      itemName,
      quantity,
      unit,
      const DeepCollectionEquality().hash(quotations),
      recommendation,
      const DeepCollectionEquality().hash(analysis));

  @override
  String toString() {
    return 'QuotationComparison(itemId: $itemId, itemName: $itemName, quantity: $quantity, unit: $unit, quotations: $quotations, recommendation: $recommendation, analysis: $analysis)';
  }
}

/// @nodoc
abstract mixin class $QuotationComparisonCopyWith<$Res> {
  factory $QuotationComparisonCopyWith(
          QuotationComparison value, $Res Function(QuotationComparison) _then) =
      _$QuotationComparisonCopyWithImpl;
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
class _$QuotationComparisonCopyWithImpl<$Res>
    implements $QuotationComparisonCopyWith<$Res> {
  _$QuotationComparisonCopyWithImpl(this._self, this._then);

  final QuotationComparison _self;
  final $Res Function(QuotationComparison) _then;

  /// Create a copy of QuotationComparison
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _self.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      quotations: null == quotations
          ? _self.quotations
          : quotations // ignore: cast_nullable_to_non_nullable
              as List<QuotationComparisonEntry>,
      recommendation: freezed == recommendation
          ? _self.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as String?,
      analysis: freezed == analysis
          ? _self.analysis
          : analysis // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [QuotationComparison].
extension QuotationComparisonPatterns on QuotationComparison {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_QuotationComparison value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _QuotationComparison() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_QuotationComparison value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QuotationComparison():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_QuotationComparison value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QuotationComparison() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String itemId,
            String itemName,
            double quantity,
            String unit,
            List<QuotationComparisonEntry> quotations,
            String? recommendation,
            Map<String, dynamic>? analysis)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _QuotationComparison() when $default != null:
        return $default(_that.itemId, _that.itemName, _that.quantity,
            _that.unit, _that.quotations, _that.recommendation, _that.analysis);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String itemId,
            String itemName,
            double quantity,
            String unit,
            List<QuotationComparisonEntry> quotations,
            String? recommendation,
            Map<String, dynamic>? analysis)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QuotationComparison():
        return $default(_that.itemId, _that.itemName, _that.quantity,
            _that.unit, _that.quotations, _that.recommendation, _that.analysis);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String itemId,
            String itemName,
            double quantity,
            String unit,
            List<QuotationComparisonEntry> quotations,
            String? recommendation,
            Map<String, dynamic>? analysis)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QuotationComparison() when $default != null:
        return $default(_that.itemId, _that.itemName, _that.quantity,
            _that.unit, _that.quotations, _that.recommendation, _that.analysis);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _QuotationComparison implements QuotationComparison {
  const _QuotationComparison(
      {required this.itemId,
      required this.itemName,
      required this.quantity,
      required this.unit,
      required final List<QuotationComparisonEntry> quotations,
      this.recommendation,
      final Map<String, dynamic>? analysis})
      : _quotations = quotations,
        _analysis = analysis;
  factory _QuotationComparison.fromJson(Map<String, dynamic> json) =>
      _$QuotationComparisonFromJson(json);

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

  /// Create a copy of QuotationComparison
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$QuotationComparisonCopyWith<_QuotationComparison> get copyWith =>
      __$QuotationComparisonCopyWithImpl<_QuotationComparison>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$QuotationComparisonToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuotationComparison &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'QuotationComparison(itemId: $itemId, itemName: $itemName, quantity: $quantity, unit: $unit, quotations: $quotations, recommendation: $recommendation, analysis: $analysis)';
  }
}

/// @nodoc
abstract mixin class _$QuotationComparisonCopyWith<$Res>
    implements $QuotationComparisonCopyWith<$Res> {
  factory _$QuotationComparisonCopyWith(_QuotationComparison value,
          $Res Function(_QuotationComparison) _then) =
      __$QuotationComparisonCopyWithImpl;
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
class __$QuotationComparisonCopyWithImpl<$Res>
    implements _$QuotationComparisonCopyWith<$Res> {
  __$QuotationComparisonCopyWithImpl(this._self, this._then);

  final _QuotationComparison _self;
  final $Res Function(_QuotationComparison) _then;

  /// Create a copy of QuotationComparison
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? itemId = null,
    Object? itemName = null,
    Object? quantity = null,
    Object? unit = null,
    Object? quotations = null,
    Object? recommendation = freezed,
    Object? analysis = freezed,
  }) {
    return _then(_QuotationComparison(
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _self.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      quotations: null == quotations
          ? _self._quotations
          : quotations // ignore: cast_nullable_to_non_nullable
              as List<QuotationComparisonEntry>,
      recommendation: freezed == recommendation
          ? _self.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as String?,
      analysis: freezed == analysis
          ? _self._analysis
          : analysis // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$QuotationComparisonEntry {
  String get quotationId;
  String get supplierId;
  String get supplierName;
  double get unitPrice;
  double get totalPrice;
  int get leadTimeDays;
  DateTime? get deliveryDate;
  String? get brandModel;
  String? get notes;
  double? get score;
  Map<String, dynamic>? get metrics;

  /// Create a copy of QuotationComparisonEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QuotationComparisonEntryCopyWith<QuotationComparisonEntry> get copyWith =>
      _$QuotationComparisonEntryCopyWithImpl<QuotationComparisonEntry>(
          this as QuotationComparisonEntry, _$identity);

  /// Serializes this QuotationComparisonEntry to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QuotationComparisonEntry &&
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
            const DeepCollectionEquality().equals(other.metrics, metrics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(metrics));

  @override
  String toString() {
    return 'QuotationComparisonEntry(quotationId: $quotationId, supplierId: $supplierId, supplierName: $supplierName, unitPrice: $unitPrice, totalPrice: $totalPrice, leadTimeDays: $leadTimeDays, deliveryDate: $deliveryDate, brandModel: $brandModel, notes: $notes, score: $score, metrics: $metrics)';
  }
}

/// @nodoc
abstract mixin class $QuotationComparisonEntryCopyWith<$Res> {
  factory $QuotationComparisonEntryCopyWith(QuotationComparisonEntry value,
          $Res Function(QuotationComparisonEntry) _then) =
      _$QuotationComparisonEntryCopyWithImpl;
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
class _$QuotationComparisonEntryCopyWithImpl<$Res>
    implements $QuotationComparisonEntryCopyWith<$Res> {
  _$QuotationComparisonEntryCopyWithImpl(this._self, this._then);

  final QuotationComparisonEntry _self;
  final $Res Function(QuotationComparisonEntry) _then;

  /// Create a copy of QuotationComparisonEntry
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      quotationId: null == quotationId
          ? _self.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String,
      supplierId: null == supplierId
          ? _self.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      supplierName: null == supplierName
          ? _self.supplierName
          : supplierName // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _self.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _self.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      leadTimeDays: null == leadTimeDays
          ? _self.leadTimeDays
          : leadTimeDays // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryDate: freezed == deliveryDate
          ? _self.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      brandModel: freezed == brandModel
          ? _self.brandModel
          : brandModel // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _self.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      metrics: freezed == metrics
          ? _self.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [QuotationComparisonEntry].
extension QuotationComparisonEntryPatterns on QuotationComparisonEntry {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_QuotationComparisonEntry value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _QuotationComparisonEntry() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_QuotationComparisonEntry value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QuotationComparisonEntry():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_QuotationComparisonEntry value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QuotationComparisonEntry() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String quotationId,
            String supplierId,
            String supplierName,
            double unitPrice,
            double totalPrice,
            int leadTimeDays,
            DateTime? deliveryDate,
            String? brandModel,
            String? notes,
            double? score,
            Map<String, dynamic>? metrics)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _QuotationComparisonEntry() when $default != null:
        return $default(
            _that.quotationId,
            _that.supplierId,
            _that.supplierName,
            _that.unitPrice,
            _that.totalPrice,
            _that.leadTimeDays,
            _that.deliveryDate,
            _that.brandModel,
            _that.notes,
            _that.score,
            _that.metrics);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String quotationId,
            String supplierId,
            String supplierName,
            double unitPrice,
            double totalPrice,
            int leadTimeDays,
            DateTime? deliveryDate,
            String? brandModel,
            String? notes,
            double? score,
            Map<String, dynamic>? metrics)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QuotationComparisonEntry():
        return $default(
            _that.quotationId,
            _that.supplierId,
            _that.supplierName,
            _that.unitPrice,
            _that.totalPrice,
            _that.leadTimeDays,
            _that.deliveryDate,
            _that.brandModel,
            _that.notes,
            _that.score,
            _that.metrics);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String quotationId,
            String supplierId,
            String supplierName,
            double unitPrice,
            double totalPrice,
            int leadTimeDays,
            DateTime? deliveryDate,
            String? brandModel,
            String? notes,
            double? score,
            Map<String, dynamic>? metrics)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QuotationComparisonEntry() when $default != null:
        return $default(
            _that.quotationId,
            _that.supplierId,
            _that.supplierName,
            _that.unitPrice,
            _that.totalPrice,
            _that.leadTimeDays,
            _that.deliveryDate,
            _that.brandModel,
            _that.notes,
            _that.score,
            _that.metrics);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _QuotationComparisonEntry implements QuotationComparisonEntry {
  const _QuotationComparisonEntry(
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
  factory _QuotationComparisonEntry.fromJson(Map<String, dynamic> json) =>
      _$QuotationComparisonEntryFromJson(json);

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

  /// Create a copy of QuotationComparisonEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$QuotationComparisonEntryCopyWith<_QuotationComparisonEntry> get copyWith =>
      __$QuotationComparisonEntryCopyWithImpl<_QuotationComparisonEntry>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$QuotationComparisonEntryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuotationComparisonEntry &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'QuotationComparisonEntry(quotationId: $quotationId, supplierId: $supplierId, supplierName: $supplierName, unitPrice: $unitPrice, totalPrice: $totalPrice, leadTimeDays: $leadTimeDays, deliveryDate: $deliveryDate, brandModel: $brandModel, notes: $notes, score: $score, metrics: $metrics)';
  }
}

/// @nodoc
abstract mixin class _$QuotationComparisonEntryCopyWith<$Res>
    implements $QuotationComparisonEntryCopyWith<$Res> {
  factory _$QuotationComparisonEntryCopyWith(_QuotationComparisonEntry value,
          $Res Function(_QuotationComparisonEntry) _then) =
      __$QuotationComparisonEntryCopyWithImpl;
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
class __$QuotationComparisonEntryCopyWithImpl<$Res>
    implements _$QuotationComparisonEntryCopyWith<$Res> {
  __$QuotationComparisonEntryCopyWithImpl(this._self, this._then);

  final _QuotationComparisonEntry _self;
  final $Res Function(_QuotationComparisonEntry) _then;

  /// Create a copy of QuotationComparisonEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_QuotationComparisonEntry(
      quotationId: null == quotationId
          ? _self.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String,
      supplierId: null == supplierId
          ? _self.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      supplierName: null == supplierName
          ? _self.supplierName
          : supplierName // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _self.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _self.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      leadTimeDays: null == leadTimeDays
          ? _self.leadTimeDays
          : leadTimeDays // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryDate: freezed == deliveryDate
          ? _self.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      brandModel: freezed == brandModel
          ? _self.brandModel
          : brandModel // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _self.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      metrics: freezed == metrics
          ? _self._metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
