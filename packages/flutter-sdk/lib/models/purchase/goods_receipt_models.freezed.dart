// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goods_receipt_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GoodsReceipt {
  String get id;
  String get receiptNumber;
  String get purchaseOrderId;
  String get supplierId;
  String
      get status; // 'draft', 'received', 'inspected', 'accepted', 'rejected', 'posted'
  DateTime get receiptDate;
  DateTime get createdAt;
  DateTime get updatedAt;
  DateTime? get inspectedAt;
  DateTime? get acceptedAt;
  DateTime? get rejectedAt;
  DateTime? get postedAt;
  String? get receivedBy;
  String? get inspectedBy;
  String? get acceptedBy;
  String? get rejectedBy;
  String? get postedBy;
  String? get deliveryNote;
  String? get invoiceNumber;
  String? get transportCompany;
  String? get vehicleNumber;
  String? get driverName;
  String? get notes;
  String? get inspectionNotes;
  String? get rejectionReason;
  Map<String, dynamic>? get metadata;

  /// Create a copy of GoodsReceipt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GoodsReceiptCopyWith<GoodsReceipt> get copyWith =>
      _$GoodsReceiptCopyWithImpl<GoodsReceipt>(
          this as GoodsReceipt, _$identity);

  /// Serializes this GoodsReceipt to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GoodsReceipt &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.receiptNumber, receiptNumber) ||
                other.receiptNumber == receiptNumber) &&
            (identical(other.purchaseOrderId, purchaseOrderId) ||
                other.purchaseOrderId == purchaseOrderId) &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.receiptDate, receiptDate) ||
                other.receiptDate == receiptDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.inspectedAt, inspectedAt) ||
                other.inspectedAt == inspectedAt) &&
            (identical(other.acceptedAt, acceptedAt) ||
                other.acceptedAt == acceptedAt) &&
            (identical(other.rejectedAt, rejectedAt) ||
                other.rejectedAt == rejectedAt) &&
            (identical(other.postedAt, postedAt) ||
                other.postedAt == postedAt) &&
            (identical(other.receivedBy, receivedBy) ||
                other.receivedBy == receivedBy) &&
            (identical(other.inspectedBy, inspectedBy) ||
                other.inspectedBy == inspectedBy) &&
            (identical(other.acceptedBy, acceptedBy) ||
                other.acceptedBy == acceptedBy) &&
            (identical(other.rejectedBy, rejectedBy) ||
                other.rejectedBy == rejectedBy) &&
            (identical(other.postedBy, postedBy) ||
                other.postedBy == postedBy) &&
            (identical(other.deliveryNote, deliveryNote) ||
                other.deliveryNote == deliveryNote) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber) &&
            (identical(other.transportCompany, transportCompany) ||
                other.transportCompany == transportCompany) &&
            (identical(other.vehicleNumber, vehicleNumber) ||
                other.vehicleNumber == vehicleNumber) &&
            (identical(other.driverName, driverName) ||
                other.driverName == driverName) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.inspectionNotes, inspectionNotes) ||
                other.inspectionNotes == inspectionNotes) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        receiptNumber,
        purchaseOrderId,
        supplierId,
        status,
        receiptDate,
        createdAt,
        updatedAt,
        inspectedAt,
        acceptedAt,
        rejectedAt,
        postedAt,
        receivedBy,
        inspectedBy,
        acceptedBy,
        rejectedBy,
        postedBy,
        deliveryNote,
        invoiceNumber,
        transportCompany,
        vehicleNumber,
        driverName,
        notes,
        inspectionNotes,
        rejectionReason,
        const DeepCollectionEquality().hash(metadata)
      ]);

  @override
  String toString() {
    return 'GoodsReceipt(id: $id, receiptNumber: $receiptNumber, purchaseOrderId: $purchaseOrderId, supplierId: $supplierId, status: $status, receiptDate: $receiptDate, createdAt: $createdAt, updatedAt: $updatedAt, inspectedAt: $inspectedAt, acceptedAt: $acceptedAt, rejectedAt: $rejectedAt, postedAt: $postedAt, receivedBy: $receivedBy, inspectedBy: $inspectedBy, acceptedBy: $acceptedBy, rejectedBy: $rejectedBy, postedBy: $postedBy, deliveryNote: $deliveryNote, invoiceNumber: $invoiceNumber, transportCompany: $transportCompany, vehicleNumber: $vehicleNumber, driverName: $driverName, notes: $notes, inspectionNotes: $inspectionNotes, rejectionReason: $rejectionReason, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $GoodsReceiptCopyWith<$Res> {
  factory $GoodsReceiptCopyWith(
          GoodsReceipt value, $Res Function(GoodsReceipt) _then) =
      _$GoodsReceiptCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String receiptNumber,
      String purchaseOrderId,
      String supplierId,
      String status,
      DateTime receiptDate,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? inspectedAt,
      DateTime? acceptedAt,
      DateTime? rejectedAt,
      DateTime? postedAt,
      String? receivedBy,
      String? inspectedBy,
      String? acceptedBy,
      String? rejectedBy,
      String? postedBy,
      String? deliveryNote,
      String? invoiceNumber,
      String? transportCompany,
      String? vehicleNumber,
      String? driverName,
      String? notes,
      String? inspectionNotes,
      String? rejectionReason,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$GoodsReceiptCopyWithImpl<$Res> implements $GoodsReceiptCopyWith<$Res> {
  _$GoodsReceiptCopyWithImpl(this._self, this._then);

  final GoodsReceipt _self;
  final $Res Function(GoodsReceipt) _then;

  /// Create a copy of GoodsReceipt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? receiptNumber = null,
    Object? purchaseOrderId = null,
    Object? supplierId = null,
    Object? status = null,
    Object? receiptDate = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? inspectedAt = freezed,
    Object? acceptedAt = freezed,
    Object? rejectedAt = freezed,
    Object? postedAt = freezed,
    Object? receivedBy = freezed,
    Object? inspectedBy = freezed,
    Object? acceptedBy = freezed,
    Object? rejectedBy = freezed,
    Object? postedBy = freezed,
    Object? deliveryNote = freezed,
    Object? invoiceNumber = freezed,
    Object? transportCompany = freezed,
    Object? vehicleNumber = freezed,
    Object? driverName = freezed,
    Object? notes = freezed,
    Object? inspectionNotes = freezed,
    Object? rejectionReason = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      receiptNumber: null == receiptNumber
          ? _self.receiptNumber
          : receiptNumber // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseOrderId: null == purchaseOrderId
          ? _self.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      supplierId: null == supplierId
          ? _self.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      receiptDate: null == receiptDate
          ? _self.receiptDate
          : receiptDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      inspectedAt: freezed == inspectedAt
          ? _self.inspectedAt
          : inspectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      acceptedAt: freezed == acceptedAt
          ? _self.acceptedAt
          : acceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _self.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      postedAt: freezed == postedAt
          ? _self.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      receivedBy: freezed == receivedBy
          ? _self.receivedBy
          : receivedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectedBy: freezed == inspectedBy
          ? _self.inspectedBy
          : inspectedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptedBy: freezed == acceptedBy
          ? _self.acceptedBy
          : acceptedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectedBy: freezed == rejectedBy
          ? _self.rejectedBy
          : rejectedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      postedBy: freezed == postedBy
          ? _self.postedBy
          : postedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryNote: freezed == deliveryNote
          ? _self.deliveryNote
          : deliveryNote // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceNumber: freezed == invoiceNumber
          ? _self.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      transportCompany: freezed == transportCompany
          ? _self.transportCompany
          : transportCompany // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleNumber: freezed == vehicleNumber
          ? _self.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      driverName: freezed == driverName
          ? _self.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionNotes: freezed == inspectionNotes
          ? _self.inspectionNotes
          : inspectionNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectionReason: freezed == rejectionReason
          ? _self.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [GoodsReceipt].
extension GoodsReceiptPatterns on GoodsReceipt {
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
    TResult Function(_GoodsReceipt value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GoodsReceipt() when $default != null:
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
    TResult Function(_GoodsReceipt value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoodsReceipt():
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
    TResult? Function(_GoodsReceipt value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoodsReceipt() when $default != null:
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
            String receiptNumber,
            String purchaseOrderId,
            String supplierId,
            String status,
            DateTime receiptDate,
            DateTime createdAt,
            DateTime updatedAt,
            DateTime? inspectedAt,
            DateTime? acceptedAt,
            DateTime? rejectedAt,
            DateTime? postedAt,
            String? receivedBy,
            String? inspectedBy,
            String? acceptedBy,
            String? rejectedBy,
            String? postedBy,
            String? deliveryNote,
            String? invoiceNumber,
            String? transportCompany,
            String? vehicleNumber,
            String? driverName,
            String? notes,
            String? inspectionNotes,
            String? rejectionReason,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GoodsReceipt() when $default != null:
        return $default(
            _that.id,
            _that.receiptNumber,
            _that.purchaseOrderId,
            _that.supplierId,
            _that.status,
            _that.receiptDate,
            _that.createdAt,
            _that.updatedAt,
            _that.inspectedAt,
            _that.acceptedAt,
            _that.rejectedAt,
            _that.postedAt,
            _that.receivedBy,
            _that.inspectedBy,
            _that.acceptedBy,
            _that.rejectedBy,
            _that.postedBy,
            _that.deliveryNote,
            _that.invoiceNumber,
            _that.transportCompany,
            _that.vehicleNumber,
            _that.driverName,
            _that.notes,
            _that.inspectionNotes,
            _that.rejectionReason,
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
            String receiptNumber,
            String purchaseOrderId,
            String supplierId,
            String status,
            DateTime receiptDate,
            DateTime createdAt,
            DateTime updatedAt,
            DateTime? inspectedAt,
            DateTime? acceptedAt,
            DateTime? rejectedAt,
            DateTime? postedAt,
            String? receivedBy,
            String? inspectedBy,
            String? acceptedBy,
            String? rejectedBy,
            String? postedBy,
            String? deliveryNote,
            String? invoiceNumber,
            String? transportCompany,
            String? vehicleNumber,
            String? driverName,
            String? notes,
            String? inspectionNotes,
            String? rejectionReason,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoodsReceipt():
        return $default(
            _that.id,
            _that.receiptNumber,
            _that.purchaseOrderId,
            _that.supplierId,
            _that.status,
            _that.receiptDate,
            _that.createdAt,
            _that.updatedAt,
            _that.inspectedAt,
            _that.acceptedAt,
            _that.rejectedAt,
            _that.postedAt,
            _that.receivedBy,
            _that.inspectedBy,
            _that.acceptedBy,
            _that.rejectedBy,
            _that.postedBy,
            _that.deliveryNote,
            _that.invoiceNumber,
            _that.transportCompany,
            _that.vehicleNumber,
            _that.driverName,
            _that.notes,
            _that.inspectionNotes,
            _that.rejectionReason,
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
            String receiptNumber,
            String purchaseOrderId,
            String supplierId,
            String status,
            DateTime receiptDate,
            DateTime createdAt,
            DateTime updatedAt,
            DateTime? inspectedAt,
            DateTime? acceptedAt,
            DateTime? rejectedAt,
            DateTime? postedAt,
            String? receivedBy,
            String? inspectedBy,
            String? acceptedBy,
            String? rejectedBy,
            String? postedBy,
            String? deliveryNote,
            String? invoiceNumber,
            String? transportCompany,
            String? vehicleNumber,
            String? driverName,
            String? notes,
            String? inspectionNotes,
            String? rejectionReason,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoodsReceipt() when $default != null:
        return $default(
            _that.id,
            _that.receiptNumber,
            _that.purchaseOrderId,
            _that.supplierId,
            _that.status,
            _that.receiptDate,
            _that.createdAt,
            _that.updatedAt,
            _that.inspectedAt,
            _that.acceptedAt,
            _that.rejectedAt,
            _that.postedAt,
            _that.receivedBy,
            _that.inspectedBy,
            _that.acceptedBy,
            _that.rejectedBy,
            _that.postedBy,
            _that.deliveryNote,
            _that.invoiceNumber,
            _that.transportCompany,
            _that.vehicleNumber,
            _that.driverName,
            _that.notes,
            _that.inspectionNotes,
            _that.rejectionReason,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GoodsReceipt implements GoodsReceipt {
  const _GoodsReceipt(
      {required this.id,
      required this.receiptNumber,
      required this.purchaseOrderId,
      required this.supplierId,
      required this.status,
      required this.receiptDate,
      required this.createdAt,
      required this.updatedAt,
      this.inspectedAt,
      this.acceptedAt,
      this.rejectedAt,
      this.postedAt,
      this.receivedBy,
      this.inspectedBy,
      this.acceptedBy,
      this.rejectedBy,
      this.postedBy,
      this.deliveryNote,
      this.invoiceNumber,
      this.transportCompany,
      this.vehicleNumber,
      this.driverName,
      this.notes,
      this.inspectionNotes,
      this.rejectionReason,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _GoodsReceipt.fromJson(Map<String, dynamic> json) =>
      _$GoodsReceiptFromJson(json);

  @override
  final String id;
  @override
  final String receiptNumber;
  @override
  final String purchaseOrderId;
  @override
  final String supplierId;
  @override
  final String status;
// 'draft', 'received', 'inspected', 'accepted', 'rejected', 'posted'
  @override
  final DateTime receiptDate;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime? inspectedAt;
  @override
  final DateTime? acceptedAt;
  @override
  final DateTime? rejectedAt;
  @override
  final DateTime? postedAt;
  @override
  final String? receivedBy;
  @override
  final String? inspectedBy;
  @override
  final String? acceptedBy;
  @override
  final String? rejectedBy;
  @override
  final String? postedBy;
  @override
  final String? deliveryNote;
  @override
  final String? invoiceNumber;
  @override
  final String? transportCompany;
  @override
  final String? vehicleNumber;
  @override
  final String? driverName;
  @override
  final String? notes;
  @override
  final String? inspectionNotes;
  @override
  final String? rejectionReason;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of GoodsReceipt
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GoodsReceiptCopyWith<_GoodsReceipt> get copyWith =>
      __$GoodsReceiptCopyWithImpl<_GoodsReceipt>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GoodsReceiptToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GoodsReceipt &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.receiptNumber, receiptNumber) ||
                other.receiptNumber == receiptNumber) &&
            (identical(other.purchaseOrderId, purchaseOrderId) ||
                other.purchaseOrderId == purchaseOrderId) &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.receiptDate, receiptDate) ||
                other.receiptDate == receiptDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.inspectedAt, inspectedAt) ||
                other.inspectedAt == inspectedAt) &&
            (identical(other.acceptedAt, acceptedAt) ||
                other.acceptedAt == acceptedAt) &&
            (identical(other.rejectedAt, rejectedAt) ||
                other.rejectedAt == rejectedAt) &&
            (identical(other.postedAt, postedAt) ||
                other.postedAt == postedAt) &&
            (identical(other.receivedBy, receivedBy) ||
                other.receivedBy == receivedBy) &&
            (identical(other.inspectedBy, inspectedBy) ||
                other.inspectedBy == inspectedBy) &&
            (identical(other.acceptedBy, acceptedBy) ||
                other.acceptedBy == acceptedBy) &&
            (identical(other.rejectedBy, rejectedBy) ||
                other.rejectedBy == rejectedBy) &&
            (identical(other.postedBy, postedBy) ||
                other.postedBy == postedBy) &&
            (identical(other.deliveryNote, deliveryNote) ||
                other.deliveryNote == deliveryNote) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber) &&
            (identical(other.transportCompany, transportCompany) ||
                other.transportCompany == transportCompany) &&
            (identical(other.vehicleNumber, vehicleNumber) ||
                other.vehicleNumber == vehicleNumber) &&
            (identical(other.driverName, driverName) ||
                other.driverName == driverName) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.inspectionNotes, inspectionNotes) ||
                other.inspectionNotes == inspectionNotes) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        receiptNumber,
        purchaseOrderId,
        supplierId,
        status,
        receiptDate,
        createdAt,
        updatedAt,
        inspectedAt,
        acceptedAt,
        rejectedAt,
        postedAt,
        receivedBy,
        inspectedBy,
        acceptedBy,
        rejectedBy,
        postedBy,
        deliveryNote,
        invoiceNumber,
        transportCompany,
        vehicleNumber,
        driverName,
        notes,
        inspectionNotes,
        rejectionReason,
        const DeepCollectionEquality().hash(_metadata)
      ]);

  @override
  String toString() {
    return 'GoodsReceipt(id: $id, receiptNumber: $receiptNumber, purchaseOrderId: $purchaseOrderId, supplierId: $supplierId, status: $status, receiptDate: $receiptDate, createdAt: $createdAt, updatedAt: $updatedAt, inspectedAt: $inspectedAt, acceptedAt: $acceptedAt, rejectedAt: $rejectedAt, postedAt: $postedAt, receivedBy: $receivedBy, inspectedBy: $inspectedBy, acceptedBy: $acceptedBy, rejectedBy: $rejectedBy, postedBy: $postedBy, deliveryNote: $deliveryNote, invoiceNumber: $invoiceNumber, transportCompany: $transportCompany, vehicleNumber: $vehicleNumber, driverName: $driverName, notes: $notes, inspectionNotes: $inspectionNotes, rejectionReason: $rejectionReason, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$GoodsReceiptCopyWith<$Res>
    implements $GoodsReceiptCopyWith<$Res> {
  factory _$GoodsReceiptCopyWith(
          _GoodsReceipt value, $Res Function(_GoodsReceipt) _then) =
      __$GoodsReceiptCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String receiptNumber,
      String purchaseOrderId,
      String supplierId,
      String status,
      DateTime receiptDate,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? inspectedAt,
      DateTime? acceptedAt,
      DateTime? rejectedAt,
      DateTime? postedAt,
      String? receivedBy,
      String? inspectedBy,
      String? acceptedBy,
      String? rejectedBy,
      String? postedBy,
      String? deliveryNote,
      String? invoiceNumber,
      String? transportCompany,
      String? vehicleNumber,
      String? driverName,
      String? notes,
      String? inspectionNotes,
      String? rejectionReason,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$GoodsReceiptCopyWithImpl<$Res>
    implements _$GoodsReceiptCopyWith<$Res> {
  __$GoodsReceiptCopyWithImpl(this._self, this._then);

  final _GoodsReceipt _self;
  final $Res Function(_GoodsReceipt) _then;

  /// Create a copy of GoodsReceipt
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? receiptNumber = null,
    Object? purchaseOrderId = null,
    Object? supplierId = null,
    Object? status = null,
    Object? receiptDate = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? inspectedAt = freezed,
    Object? acceptedAt = freezed,
    Object? rejectedAt = freezed,
    Object? postedAt = freezed,
    Object? receivedBy = freezed,
    Object? inspectedBy = freezed,
    Object? acceptedBy = freezed,
    Object? rejectedBy = freezed,
    Object? postedBy = freezed,
    Object? deliveryNote = freezed,
    Object? invoiceNumber = freezed,
    Object? transportCompany = freezed,
    Object? vehicleNumber = freezed,
    Object? driverName = freezed,
    Object? notes = freezed,
    Object? inspectionNotes = freezed,
    Object? rejectionReason = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_GoodsReceipt(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      receiptNumber: null == receiptNumber
          ? _self.receiptNumber
          : receiptNumber // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseOrderId: null == purchaseOrderId
          ? _self.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      supplierId: null == supplierId
          ? _self.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      receiptDate: null == receiptDate
          ? _self.receiptDate
          : receiptDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      inspectedAt: freezed == inspectedAt
          ? _self.inspectedAt
          : inspectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      acceptedAt: freezed == acceptedAt
          ? _self.acceptedAt
          : acceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _self.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      postedAt: freezed == postedAt
          ? _self.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      receivedBy: freezed == receivedBy
          ? _self.receivedBy
          : receivedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectedBy: freezed == inspectedBy
          ? _self.inspectedBy
          : inspectedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptedBy: freezed == acceptedBy
          ? _self.acceptedBy
          : acceptedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectedBy: freezed == rejectedBy
          ? _self.rejectedBy
          : rejectedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      postedBy: freezed == postedBy
          ? _self.postedBy
          : postedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryNote: freezed == deliveryNote
          ? _self.deliveryNote
          : deliveryNote // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceNumber: freezed == invoiceNumber
          ? _self.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      transportCompany: freezed == transportCompany
          ? _self.transportCompany
          : transportCompany // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleNumber: freezed == vehicleNumber
          ? _self.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      driverName: freezed == driverName
          ? _self.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionNotes: freezed == inspectionNotes
          ? _self.inspectionNotes
          : inspectionNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectionReason: freezed == rejectionReason
          ? _self.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$GoodsReceiptLineItem {
  String get id;
  String get goodsReceiptId;
  String get purchaseOrderLineItemId;
  String get itemId;
  double get orderedQuantity;
  double get receivedQuantity;
  double get acceptedQuantity;
  double get rejectedQuantity;
  String get unit;
  String
      get status; // 'pending', 'received', 'inspected', 'accepted', 'rejected'
  int? get sequence;
  String? get lotNumber;
  String? get serialNumber;
  DateTime? get expiryDate;
  String? get condition; // 'good', 'damaged', 'expired', 'defective'
  String? get notes;
  String? get inspectionNotes;
  String? get rejectionReason;
  String? get storageLocation;
  Map<String, dynamic>? get qualityMetrics;
  Map<String, dynamic>? get attributes;
  Map<String, dynamic>? get metadata;

  /// Create a copy of GoodsReceiptLineItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GoodsReceiptLineItemCopyWith<GoodsReceiptLineItem> get copyWith =>
      _$GoodsReceiptLineItemCopyWithImpl<GoodsReceiptLineItem>(
          this as GoodsReceiptLineItem, _$identity);

  /// Serializes this GoodsReceiptLineItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GoodsReceiptLineItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.goodsReceiptId, goodsReceiptId) ||
                other.goodsReceiptId == goodsReceiptId) &&
            (identical(
                    other.purchaseOrderLineItemId, purchaseOrderLineItemId) ||
                other.purchaseOrderLineItemId == purchaseOrderLineItemId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.orderedQuantity, orderedQuantity) ||
                other.orderedQuantity == orderedQuantity) &&
            (identical(other.receivedQuantity, receivedQuantity) ||
                other.receivedQuantity == receivedQuantity) &&
            (identical(other.acceptedQuantity, acceptedQuantity) ||
                other.acceptedQuantity == acceptedQuantity) &&
            (identical(other.rejectedQuantity, rejectedQuantity) ||
                other.rejectedQuantity == rejectedQuantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.inspectionNotes, inspectionNotes) ||
                other.inspectionNotes == inspectionNotes) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            (identical(other.storageLocation, storageLocation) ||
                other.storageLocation == storageLocation) &&
            const DeepCollectionEquality()
                .equals(other.qualityMetrics, qualityMetrics) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        goodsReceiptId,
        purchaseOrderLineItemId,
        itemId,
        orderedQuantity,
        receivedQuantity,
        acceptedQuantity,
        rejectedQuantity,
        unit,
        status,
        sequence,
        lotNumber,
        serialNumber,
        expiryDate,
        condition,
        notes,
        inspectionNotes,
        rejectionReason,
        storageLocation,
        const DeepCollectionEquality().hash(qualityMetrics),
        const DeepCollectionEquality().hash(attributes),
        const DeepCollectionEquality().hash(metadata)
      ]);

  @override
  String toString() {
    return 'GoodsReceiptLineItem(id: $id, goodsReceiptId: $goodsReceiptId, purchaseOrderLineItemId: $purchaseOrderLineItemId, itemId: $itemId, orderedQuantity: $orderedQuantity, receivedQuantity: $receivedQuantity, acceptedQuantity: $acceptedQuantity, rejectedQuantity: $rejectedQuantity, unit: $unit, status: $status, sequence: $sequence, lotNumber: $lotNumber, serialNumber: $serialNumber, expiryDate: $expiryDate, condition: $condition, notes: $notes, inspectionNotes: $inspectionNotes, rejectionReason: $rejectionReason, storageLocation: $storageLocation, qualityMetrics: $qualityMetrics, attributes: $attributes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $GoodsReceiptLineItemCopyWith<$Res> {
  factory $GoodsReceiptLineItemCopyWith(GoodsReceiptLineItem value,
          $Res Function(GoodsReceiptLineItem) _then) =
      _$GoodsReceiptLineItemCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String goodsReceiptId,
      String purchaseOrderLineItemId,
      String itemId,
      double orderedQuantity,
      double receivedQuantity,
      double acceptedQuantity,
      double rejectedQuantity,
      String unit,
      String status,
      int? sequence,
      String? lotNumber,
      String? serialNumber,
      DateTime? expiryDate,
      String? condition,
      String? notes,
      String? inspectionNotes,
      String? rejectionReason,
      String? storageLocation,
      Map<String, dynamic>? qualityMetrics,
      Map<String, dynamic>? attributes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$GoodsReceiptLineItemCopyWithImpl<$Res>
    implements $GoodsReceiptLineItemCopyWith<$Res> {
  _$GoodsReceiptLineItemCopyWithImpl(this._self, this._then);

  final GoodsReceiptLineItem _self;
  final $Res Function(GoodsReceiptLineItem) _then;

  /// Create a copy of GoodsReceiptLineItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? goodsReceiptId = null,
    Object? purchaseOrderLineItemId = null,
    Object? itemId = null,
    Object? orderedQuantity = null,
    Object? receivedQuantity = null,
    Object? acceptedQuantity = null,
    Object? rejectedQuantity = null,
    Object? unit = null,
    Object? status = null,
    Object? sequence = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? expiryDate = freezed,
    Object? condition = freezed,
    Object? notes = freezed,
    Object? inspectionNotes = freezed,
    Object? rejectionReason = freezed,
    Object? storageLocation = freezed,
    Object? qualityMetrics = freezed,
    Object? attributes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      goodsReceiptId: null == goodsReceiptId
          ? _self.goodsReceiptId
          : goodsReceiptId // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseOrderLineItemId: null == purchaseOrderLineItemId
          ? _self.purchaseOrderLineItemId
          : purchaseOrderLineItemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      orderedQuantity: null == orderedQuantity
          ? _self.orderedQuantity
          : orderedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      receivedQuantity: null == receivedQuantity
          ? _self.receivedQuantity
          : receivedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      acceptedQuantity: null == acceptedQuantity
          ? _self.acceptedQuantity
          : acceptedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      rejectedQuantity: null == rejectedQuantity
          ? _self.rejectedQuantity
          : rejectedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      sequence: freezed == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      lotNumber: freezed == lotNumber
          ? _self.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _self.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      condition: freezed == condition
          ? _self.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionNotes: freezed == inspectionNotes
          ? _self.inspectionNotes
          : inspectionNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectionReason: freezed == rejectionReason
          ? _self.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      storageLocation: freezed == storageLocation
          ? _self.storageLocation
          : storageLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      qualityMetrics: freezed == qualityMetrics
          ? _self.qualityMetrics
          : qualityMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
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

/// Adds pattern-matching-related methods to [GoodsReceiptLineItem].
extension GoodsReceiptLineItemPatterns on GoodsReceiptLineItem {
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
    TResult Function(_GoodsReceiptLineItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GoodsReceiptLineItem() when $default != null:
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
    TResult Function(_GoodsReceiptLineItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoodsReceiptLineItem():
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
    TResult? Function(_GoodsReceiptLineItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoodsReceiptLineItem() when $default != null:
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
            String goodsReceiptId,
            String purchaseOrderLineItemId,
            String itemId,
            double orderedQuantity,
            double receivedQuantity,
            double acceptedQuantity,
            double rejectedQuantity,
            String unit,
            String status,
            int? sequence,
            String? lotNumber,
            String? serialNumber,
            DateTime? expiryDate,
            String? condition,
            String? notes,
            String? inspectionNotes,
            String? rejectionReason,
            String? storageLocation,
            Map<String, dynamic>? qualityMetrics,
            Map<String, dynamic>? attributes,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GoodsReceiptLineItem() when $default != null:
        return $default(
            _that.id,
            _that.goodsReceiptId,
            _that.purchaseOrderLineItemId,
            _that.itemId,
            _that.orderedQuantity,
            _that.receivedQuantity,
            _that.acceptedQuantity,
            _that.rejectedQuantity,
            _that.unit,
            _that.status,
            _that.sequence,
            _that.lotNumber,
            _that.serialNumber,
            _that.expiryDate,
            _that.condition,
            _that.notes,
            _that.inspectionNotes,
            _that.rejectionReason,
            _that.storageLocation,
            _that.qualityMetrics,
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
            String goodsReceiptId,
            String purchaseOrderLineItemId,
            String itemId,
            double orderedQuantity,
            double receivedQuantity,
            double acceptedQuantity,
            double rejectedQuantity,
            String unit,
            String status,
            int? sequence,
            String? lotNumber,
            String? serialNumber,
            DateTime? expiryDate,
            String? condition,
            String? notes,
            String? inspectionNotes,
            String? rejectionReason,
            String? storageLocation,
            Map<String, dynamic>? qualityMetrics,
            Map<String, dynamic>? attributes,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoodsReceiptLineItem():
        return $default(
            _that.id,
            _that.goodsReceiptId,
            _that.purchaseOrderLineItemId,
            _that.itemId,
            _that.orderedQuantity,
            _that.receivedQuantity,
            _that.acceptedQuantity,
            _that.rejectedQuantity,
            _that.unit,
            _that.status,
            _that.sequence,
            _that.lotNumber,
            _that.serialNumber,
            _that.expiryDate,
            _that.condition,
            _that.notes,
            _that.inspectionNotes,
            _that.rejectionReason,
            _that.storageLocation,
            _that.qualityMetrics,
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
            String goodsReceiptId,
            String purchaseOrderLineItemId,
            String itemId,
            double orderedQuantity,
            double receivedQuantity,
            double acceptedQuantity,
            double rejectedQuantity,
            String unit,
            String status,
            int? sequence,
            String? lotNumber,
            String? serialNumber,
            DateTime? expiryDate,
            String? condition,
            String? notes,
            String? inspectionNotes,
            String? rejectionReason,
            String? storageLocation,
            Map<String, dynamic>? qualityMetrics,
            Map<String, dynamic>? attributes,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoodsReceiptLineItem() when $default != null:
        return $default(
            _that.id,
            _that.goodsReceiptId,
            _that.purchaseOrderLineItemId,
            _that.itemId,
            _that.orderedQuantity,
            _that.receivedQuantity,
            _that.acceptedQuantity,
            _that.rejectedQuantity,
            _that.unit,
            _that.status,
            _that.sequence,
            _that.lotNumber,
            _that.serialNumber,
            _that.expiryDate,
            _that.condition,
            _that.notes,
            _that.inspectionNotes,
            _that.rejectionReason,
            _that.storageLocation,
            _that.qualityMetrics,
            _that.attributes,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GoodsReceiptLineItem implements GoodsReceiptLineItem {
  const _GoodsReceiptLineItem(
      {required this.id,
      required this.goodsReceiptId,
      required this.purchaseOrderLineItemId,
      required this.itemId,
      required this.orderedQuantity,
      required this.receivedQuantity,
      required this.acceptedQuantity,
      required this.rejectedQuantity,
      required this.unit,
      required this.status,
      this.sequence,
      this.lotNumber,
      this.serialNumber,
      this.expiryDate,
      this.condition,
      this.notes,
      this.inspectionNotes,
      this.rejectionReason,
      this.storageLocation,
      final Map<String, dynamic>? qualityMetrics,
      final Map<String, dynamic>? attributes,
      final Map<String, dynamic>? metadata})
      : _qualityMetrics = qualityMetrics,
        _attributes = attributes,
        _metadata = metadata;
  factory _GoodsReceiptLineItem.fromJson(Map<String, dynamic> json) =>
      _$GoodsReceiptLineItemFromJson(json);

  @override
  final String id;
  @override
  final String goodsReceiptId;
  @override
  final String purchaseOrderLineItemId;
  @override
  final String itemId;
  @override
  final double orderedQuantity;
  @override
  final double receivedQuantity;
  @override
  final double acceptedQuantity;
  @override
  final double rejectedQuantity;
  @override
  final String unit;
  @override
  final String status;
// 'pending', 'received', 'inspected', 'accepted', 'rejected'
  @override
  final int? sequence;
  @override
  final String? lotNumber;
  @override
  final String? serialNumber;
  @override
  final DateTime? expiryDate;
  @override
  final String? condition;
// 'good', 'damaged', 'expired', 'defective'
  @override
  final String? notes;
  @override
  final String? inspectionNotes;
  @override
  final String? rejectionReason;
  @override
  final String? storageLocation;
  final Map<String, dynamic>? _qualityMetrics;
  @override
  Map<String, dynamic>? get qualityMetrics {
    final value = _qualityMetrics;
    if (value == null) return null;
    if (_qualityMetrics is EqualUnmodifiableMapView) return _qualityMetrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _attributes;
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

  /// Create a copy of GoodsReceiptLineItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GoodsReceiptLineItemCopyWith<_GoodsReceiptLineItem> get copyWith =>
      __$GoodsReceiptLineItemCopyWithImpl<_GoodsReceiptLineItem>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GoodsReceiptLineItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GoodsReceiptLineItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.goodsReceiptId, goodsReceiptId) ||
                other.goodsReceiptId == goodsReceiptId) &&
            (identical(
                    other.purchaseOrderLineItemId, purchaseOrderLineItemId) ||
                other.purchaseOrderLineItemId == purchaseOrderLineItemId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.orderedQuantity, orderedQuantity) ||
                other.orderedQuantity == orderedQuantity) &&
            (identical(other.receivedQuantity, receivedQuantity) ||
                other.receivedQuantity == receivedQuantity) &&
            (identical(other.acceptedQuantity, acceptedQuantity) ||
                other.acceptedQuantity == acceptedQuantity) &&
            (identical(other.rejectedQuantity, rejectedQuantity) ||
                other.rejectedQuantity == rejectedQuantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.inspectionNotes, inspectionNotes) ||
                other.inspectionNotes == inspectionNotes) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            (identical(other.storageLocation, storageLocation) ||
                other.storageLocation == storageLocation) &&
            const DeepCollectionEquality()
                .equals(other._qualityMetrics, _qualityMetrics) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        goodsReceiptId,
        purchaseOrderLineItemId,
        itemId,
        orderedQuantity,
        receivedQuantity,
        acceptedQuantity,
        rejectedQuantity,
        unit,
        status,
        sequence,
        lotNumber,
        serialNumber,
        expiryDate,
        condition,
        notes,
        inspectionNotes,
        rejectionReason,
        storageLocation,
        const DeepCollectionEquality().hash(_qualityMetrics),
        const DeepCollectionEquality().hash(_attributes),
        const DeepCollectionEquality().hash(_metadata)
      ]);

  @override
  String toString() {
    return 'GoodsReceiptLineItem(id: $id, goodsReceiptId: $goodsReceiptId, purchaseOrderLineItemId: $purchaseOrderLineItemId, itemId: $itemId, orderedQuantity: $orderedQuantity, receivedQuantity: $receivedQuantity, acceptedQuantity: $acceptedQuantity, rejectedQuantity: $rejectedQuantity, unit: $unit, status: $status, sequence: $sequence, lotNumber: $lotNumber, serialNumber: $serialNumber, expiryDate: $expiryDate, condition: $condition, notes: $notes, inspectionNotes: $inspectionNotes, rejectionReason: $rejectionReason, storageLocation: $storageLocation, qualityMetrics: $qualityMetrics, attributes: $attributes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$GoodsReceiptLineItemCopyWith<$Res>
    implements $GoodsReceiptLineItemCopyWith<$Res> {
  factory _$GoodsReceiptLineItemCopyWith(_GoodsReceiptLineItem value,
          $Res Function(_GoodsReceiptLineItem) _then) =
      __$GoodsReceiptLineItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String goodsReceiptId,
      String purchaseOrderLineItemId,
      String itemId,
      double orderedQuantity,
      double receivedQuantity,
      double acceptedQuantity,
      double rejectedQuantity,
      String unit,
      String status,
      int? sequence,
      String? lotNumber,
      String? serialNumber,
      DateTime? expiryDate,
      String? condition,
      String? notes,
      String? inspectionNotes,
      String? rejectionReason,
      String? storageLocation,
      Map<String, dynamic>? qualityMetrics,
      Map<String, dynamic>? attributes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$GoodsReceiptLineItemCopyWithImpl<$Res>
    implements _$GoodsReceiptLineItemCopyWith<$Res> {
  __$GoodsReceiptLineItemCopyWithImpl(this._self, this._then);

  final _GoodsReceiptLineItem _self;
  final $Res Function(_GoodsReceiptLineItem) _then;

  /// Create a copy of GoodsReceiptLineItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? goodsReceiptId = null,
    Object? purchaseOrderLineItemId = null,
    Object? itemId = null,
    Object? orderedQuantity = null,
    Object? receivedQuantity = null,
    Object? acceptedQuantity = null,
    Object? rejectedQuantity = null,
    Object? unit = null,
    Object? status = null,
    Object? sequence = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? expiryDate = freezed,
    Object? condition = freezed,
    Object? notes = freezed,
    Object? inspectionNotes = freezed,
    Object? rejectionReason = freezed,
    Object? storageLocation = freezed,
    Object? qualityMetrics = freezed,
    Object? attributes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_GoodsReceiptLineItem(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      goodsReceiptId: null == goodsReceiptId
          ? _self.goodsReceiptId
          : goodsReceiptId // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseOrderLineItemId: null == purchaseOrderLineItemId
          ? _self.purchaseOrderLineItemId
          : purchaseOrderLineItemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      orderedQuantity: null == orderedQuantity
          ? _self.orderedQuantity
          : orderedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      receivedQuantity: null == receivedQuantity
          ? _self.receivedQuantity
          : receivedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      acceptedQuantity: null == acceptedQuantity
          ? _self.acceptedQuantity
          : acceptedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      rejectedQuantity: null == rejectedQuantity
          ? _self.rejectedQuantity
          : rejectedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      sequence: freezed == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      lotNumber: freezed == lotNumber
          ? _self.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _self.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      condition: freezed == condition
          ? _self.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionNotes: freezed == inspectionNotes
          ? _self.inspectionNotes
          : inspectionNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectionReason: freezed == rejectionReason
          ? _self.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      storageLocation: freezed == storageLocation
          ? _self.storageLocation
          : storageLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      qualityMetrics: freezed == qualityMetrics
          ? _self._qualityMetrics
          : qualityMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
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
mixin _$CreateGoodsReceiptRequest {
  String get purchaseOrderId;
  DateTime get receiptDate;
  String? get deliveryNote;
  String? get invoiceNumber;
  String? get transportCompany;
  String? get vehicleNumber;
  String? get driverName;
  String? get notes;
  List<CreateGoodsReceiptLineItemRequest>? get lineItems;
  Map<String, dynamic>? get metadata;

  /// Create a copy of CreateGoodsReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateGoodsReceiptRequestCopyWith<CreateGoodsReceiptRequest> get copyWith =>
      _$CreateGoodsReceiptRequestCopyWithImpl<CreateGoodsReceiptRequest>(
          this as CreateGoodsReceiptRequest, _$identity);

  /// Serializes this CreateGoodsReceiptRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateGoodsReceiptRequest &&
            (identical(other.purchaseOrderId, purchaseOrderId) ||
                other.purchaseOrderId == purchaseOrderId) &&
            (identical(other.receiptDate, receiptDate) ||
                other.receiptDate == receiptDate) &&
            (identical(other.deliveryNote, deliveryNote) ||
                other.deliveryNote == deliveryNote) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber) &&
            (identical(other.transportCompany, transportCompany) ||
                other.transportCompany == transportCompany) &&
            (identical(other.vehicleNumber, vehicleNumber) ||
                other.vehicleNumber == vehicleNumber) &&
            (identical(other.driverName, driverName) ||
                other.driverName == driverName) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other.lineItems, lineItems) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      purchaseOrderId,
      receiptDate,
      deliveryNote,
      invoiceNumber,
      transportCompany,
      vehicleNumber,
      driverName,
      notes,
      const DeepCollectionEquality().hash(lineItems),
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'CreateGoodsReceiptRequest(purchaseOrderId: $purchaseOrderId, receiptDate: $receiptDate, deliveryNote: $deliveryNote, invoiceNumber: $invoiceNumber, transportCompany: $transportCompany, vehicleNumber: $vehicleNumber, driverName: $driverName, notes: $notes, lineItems: $lineItems, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $CreateGoodsReceiptRequestCopyWith<$Res> {
  factory $CreateGoodsReceiptRequestCopyWith(CreateGoodsReceiptRequest value,
          $Res Function(CreateGoodsReceiptRequest) _then) =
      _$CreateGoodsReceiptRequestCopyWithImpl;
  @useResult
  $Res call(
      {String purchaseOrderId,
      DateTime receiptDate,
      String? deliveryNote,
      String? invoiceNumber,
      String? transportCompany,
      String? vehicleNumber,
      String? driverName,
      String? notes,
      List<CreateGoodsReceiptLineItemRequest>? lineItems,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$CreateGoodsReceiptRequestCopyWithImpl<$Res>
    implements $CreateGoodsReceiptRequestCopyWith<$Res> {
  _$CreateGoodsReceiptRequestCopyWithImpl(this._self, this._then);

  final CreateGoodsReceiptRequest _self;
  final $Res Function(CreateGoodsReceiptRequest) _then;

  /// Create a copy of CreateGoodsReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseOrderId = null,
    Object? receiptDate = null,
    Object? deliveryNote = freezed,
    Object? invoiceNumber = freezed,
    Object? transportCompany = freezed,
    Object? vehicleNumber = freezed,
    Object? driverName = freezed,
    Object? notes = freezed,
    Object? lineItems = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      purchaseOrderId: null == purchaseOrderId
          ? _self.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      receiptDate: null == receiptDate
          ? _self.receiptDate
          : receiptDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryNote: freezed == deliveryNote
          ? _self.deliveryNote
          : deliveryNote // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceNumber: freezed == invoiceNumber
          ? _self.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      transportCompany: freezed == transportCompany
          ? _self.transportCompany
          : transportCompany // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleNumber: freezed == vehicleNumber
          ? _self.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      driverName: freezed == driverName
          ? _self.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      lineItems: freezed == lineItems
          ? _self.lineItems
          : lineItems // ignore: cast_nullable_to_non_nullable
              as List<CreateGoodsReceiptLineItemRequest>?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateGoodsReceiptRequest].
extension CreateGoodsReceiptRequestPatterns on CreateGoodsReceiptRequest {
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
    TResult Function(_CreateGoodsReceiptRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateGoodsReceiptRequest() when $default != null:
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
    TResult Function(_CreateGoodsReceiptRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateGoodsReceiptRequest():
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
    TResult? Function(_CreateGoodsReceiptRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateGoodsReceiptRequest() when $default != null:
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
            String purchaseOrderId,
            DateTime receiptDate,
            String? deliveryNote,
            String? invoiceNumber,
            String? transportCompany,
            String? vehicleNumber,
            String? driverName,
            String? notes,
            List<CreateGoodsReceiptLineItemRequest>? lineItems,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateGoodsReceiptRequest() when $default != null:
        return $default(
            _that.purchaseOrderId,
            _that.receiptDate,
            _that.deliveryNote,
            _that.invoiceNumber,
            _that.transportCompany,
            _that.vehicleNumber,
            _that.driverName,
            _that.notes,
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
            String purchaseOrderId,
            DateTime receiptDate,
            String? deliveryNote,
            String? invoiceNumber,
            String? transportCompany,
            String? vehicleNumber,
            String? driverName,
            String? notes,
            List<CreateGoodsReceiptLineItemRequest>? lineItems,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateGoodsReceiptRequest():
        return $default(
            _that.purchaseOrderId,
            _that.receiptDate,
            _that.deliveryNote,
            _that.invoiceNumber,
            _that.transportCompany,
            _that.vehicleNumber,
            _that.driverName,
            _that.notes,
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
            String purchaseOrderId,
            DateTime receiptDate,
            String? deliveryNote,
            String? invoiceNumber,
            String? transportCompany,
            String? vehicleNumber,
            String? driverName,
            String? notes,
            List<CreateGoodsReceiptLineItemRequest>? lineItems,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateGoodsReceiptRequest() when $default != null:
        return $default(
            _that.purchaseOrderId,
            _that.receiptDate,
            _that.deliveryNote,
            _that.invoiceNumber,
            _that.transportCompany,
            _that.vehicleNumber,
            _that.driverName,
            _that.notes,
            _that.lineItems,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateGoodsReceiptRequest implements CreateGoodsReceiptRequest {
  const _CreateGoodsReceiptRequest(
      {required this.purchaseOrderId,
      required this.receiptDate,
      this.deliveryNote,
      this.invoiceNumber,
      this.transportCompany,
      this.vehicleNumber,
      this.driverName,
      this.notes,
      final List<CreateGoodsReceiptLineItemRequest>? lineItems,
      final Map<String, dynamic>? metadata})
      : _lineItems = lineItems,
        _metadata = metadata;
  factory _CreateGoodsReceiptRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateGoodsReceiptRequestFromJson(json);

  @override
  final String purchaseOrderId;
  @override
  final DateTime receiptDate;
  @override
  final String? deliveryNote;
  @override
  final String? invoiceNumber;
  @override
  final String? transportCompany;
  @override
  final String? vehicleNumber;
  @override
  final String? driverName;
  @override
  final String? notes;
  final List<CreateGoodsReceiptLineItemRequest>? _lineItems;
  @override
  List<CreateGoodsReceiptLineItemRequest>? get lineItems {
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

  /// Create a copy of CreateGoodsReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateGoodsReceiptRequestCopyWith<_CreateGoodsReceiptRequest>
      get copyWith =>
          __$CreateGoodsReceiptRequestCopyWithImpl<_CreateGoodsReceiptRequest>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateGoodsReceiptRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateGoodsReceiptRequest &&
            (identical(other.purchaseOrderId, purchaseOrderId) ||
                other.purchaseOrderId == purchaseOrderId) &&
            (identical(other.receiptDate, receiptDate) ||
                other.receiptDate == receiptDate) &&
            (identical(other.deliveryNote, deliveryNote) ||
                other.deliveryNote == deliveryNote) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber) &&
            (identical(other.transportCompany, transportCompany) ||
                other.transportCompany == transportCompany) &&
            (identical(other.vehicleNumber, vehicleNumber) ||
                other.vehicleNumber == vehicleNumber) &&
            (identical(other.driverName, driverName) ||
                other.driverName == driverName) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._lineItems, _lineItems) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      purchaseOrderId,
      receiptDate,
      deliveryNote,
      invoiceNumber,
      transportCompany,
      vehicleNumber,
      driverName,
      notes,
      const DeepCollectionEquality().hash(_lineItems),
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'CreateGoodsReceiptRequest(purchaseOrderId: $purchaseOrderId, receiptDate: $receiptDate, deliveryNote: $deliveryNote, invoiceNumber: $invoiceNumber, transportCompany: $transportCompany, vehicleNumber: $vehicleNumber, driverName: $driverName, notes: $notes, lineItems: $lineItems, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$CreateGoodsReceiptRequestCopyWith<$Res>
    implements $CreateGoodsReceiptRequestCopyWith<$Res> {
  factory _$CreateGoodsReceiptRequestCopyWith(_CreateGoodsReceiptRequest value,
          $Res Function(_CreateGoodsReceiptRequest) _then) =
      __$CreateGoodsReceiptRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String purchaseOrderId,
      DateTime receiptDate,
      String? deliveryNote,
      String? invoiceNumber,
      String? transportCompany,
      String? vehicleNumber,
      String? driverName,
      String? notes,
      List<CreateGoodsReceiptLineItemRequest>? lineItems,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$CreateGoodsReceiptRequestCopyWithImpl<$Res>
    implements _$CreateGoodsReceiptRequestCopyWith<$Res> {
  __$CreateGoodsReceiptRequestCopyWithImpl(this._self, this._then);

  final _CreateGoodsReceiptRequest _self;
  final $Res Function(_CreateGoodsReceiptRequest) _then;

  /// Create a copy of CreateGoodsReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? purchaseOrderId = null,
    Object? receiptDate = null,
    Object? deliveryNote = freezed,
    Object? invoiceNumber = freezed,
    Object? transportCompany = freezed,
    Object? vehicleNumber = freezed,
    Object? driverName = freezed,
    Object? notes = freezed,
    Object? lineItems = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_CreateGoodsReceiptRequest(
      purchaseOrderId: null == purchaseOrderId
          ? _self.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      receiptDate: null == receiptDate
          ? _self.receiptDate
          : receiptDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryNote: freezed == deliveryNote
          ? _self.deliveryNote
          : deliveryNote // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceNumber: freezed == invoiceNumber
          ? _self.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      transportCompany: freezed == transportCompany
          ? _self.transportCompany
          : transportCompany // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleNumber: freezed == vehicleNumber
          ? _self.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      driverName: freezed == driverName
          ? _self.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      lineItems: freezed == lineItems
          ? _self._lineItems
          : lineItems // ignore: cast_nullable_to_non_nullable
              as List<CreateGoodsReceiptLineItemRequest>?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$CreateGoodsReceiptLineItemRequest {
  String get purchaseOrderLineItemId;
  double get receivedQuantity;
  String? get lotNumber;
  String? get serialNumber;
  DateTime? get expiryDate;
  String? get condition;
  String? get notes;
  String? get storageLocation;
  Map<String, dynamic>? get qualityMetrics;
  Map<String, dynamic>? get attributes;

  /// Create a copy of CreateGoodsReceiptLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateGoodsReceiptLineItemRequestCopyWith<CreateGoodsReceiptLineItemRequest>
      get copyWith => _$CreateGoodsReceiptLineItemRequestCopyWithImpl<
              CreateGoodsReceiptLineItemRequest>(
          this as CreateGoodsReceiptLineItemRequest, _$identity);

  /// Serializes this CreateGoodsReceiptLineItemRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateGoodsReceiptLineItemRequest &&
            (identical(
                    other.purchaseOrderLineItemId, purchaseOrderLineItemId) ||
                other.purchaseOrderLineItemId == purchaseOrderLineItemId) &&
            (identical(other.receivedQuantity, receivedQuantity) ||
                other.receivedQuantity == receivedQuantity) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.storageLocation, storageLocation) ||
                other.storageLocation == storageLocation) &&
            const DeepCollectionEquality()
                .equals(other.qualityMetrics, qualityMetrics) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      purchaseOrderLineItemId,
      receivedQuantity,
      lotNumber,
      serialNumber,
      expiryDate,
      condition,
      notes,
      storageLocation,
      const DeepCollectionEquality().hash(qualityMetrics),
      const DeepCollectionEquality().hash(attributes));

  @override
  String toString() {
    return 'CreateGoodsReceiptLineItemRequest(purchaseOrderLineItemId: $purchaseOrderLineItemId, receivedQuantity: $receivedQuantity, lotNumber: $lotNumber, serialNumber: $serialNumber, expiryDate: $expiryDate, condition: $condition, notes: $notes, storageLocation: $storageLocation, qualityMetrics: $qualityMetrics, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class $CreateGoodsReceiptLineItemRequestCopyWith<$Res> {
  factory $CreateGoodsReceiptLineItemRequestCopyWith(
          CreateGoodsReceiptLineItemRequest value,
          $Res Function(CreateGoodsReceiptLineItemRequest) _then) =
      _$CreateGoodsReceiptLineItemRequestCopyWithImpl;
  @useResult
  $Res call(
      {String purchaseOrderLineItemId,
      double receivedQuantity,
      String? lotNumber,
      String? serialNumber,
      DateTime? expiryDate,
      String? condition,
      String? notes,
      String? storageLocation,
      Map<String, dynamic>? qualityMetrics,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class _$CreateGoodsReceiptLineItemRequestCopyWithImpl<$Res>
    implements $CreateGoodsReceiptLineItemRequestCopyWith<$Res> {
  _$CreateGoodsReceiptLineItemRequestCopyWithImpl(this._self, this._then);

  final CreateGoodsReceiptLineItemRequest _self;
  final $Res Function(CreateGoodsReceiptLineItemRequest) _then;

  /// Create a copy of CreateGoodsReceiptLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseOrderLineItemId = null,
    Object? receivedQuantity = null,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? expiryDate = freezed,
    Object? condition = freezed,
    Object? notes = freezed,
    Object? storageLocation = freezed,
    Object? qualityMetrics = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_self.copyWith(
      purchaseOrderLineItemId: null == purchaseOrderLineItemId
          ? _self.purchaseOrderLineItemId
          : purchaseOrderLineItemId // ignore: cast_nullable_to_non_nullable
              as String,
      receivedQuantity: null == receivedQuantity
          ? _self.receivedQuantity
          : receivedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      lotNumber: freezed == lotNumber
          ? _self.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _self.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      condition: freezed == condition
          ? _self.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      storageLocation: freezed == storageLocation
          ? _self.storageLocation
          : storageLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      qualityMetrics: freezed == qualityMetrics
          ? _self.qualityMetrics
          : qualityMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      attributes: freezed == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateGoodsReceiptLineItemRequest].
extension CreateGoodsReceiptLineItemRequestPatterns
    on CreateGoodsReceiptLineItemRequest {
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
    TResult Function(_CreateGoodsReceiptLineItemRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateGoodsReceiptLineItemRequest() when $default != null:
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
    TResult Function(_CreateGoodsReceiptLineItemRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateGoodsReceiptLineItemRequest():
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
    TResult? Function(_CreateGoodsReceiptLineItemRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateGoodsReceiptLineItemRequest() when $default != null:
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
            String purchaseOrderLineItemId,
            double receivedQuantity,
            String? lotNumber,
            String? serialNumber,
            DateTime? expiryDate,
            String? condition,
            String? notes,
            String? storageLocation,
            Map<String, dynamic>? qualityMetrics,
            Map<String, dynamic>? attributes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateGoodsReceiptLineItemRequest() when $default != null:
        return $default(
            _that.purchaseOrderLineItemId,
            _that.receivedQuantity,
            _that.lotNumber,
            _that.serialNumber,
            _that.expiryDate,
            _that.condition,
            _that.notes,
            _that.storageLocation,
            _that.qualityMetrics,
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
            String purchaseOrderLineItemId,
            double receivedQuantity,
            String? lotNumber,
            String? serialNumber,
            DateTime? expiryDate,
            String? condition,
            String? notes,
            String? storageLocation,
            Map<String, dynamic>? qualityMetrics,
            Map<String, dynamic>? attributes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateGoodsReceiptLineItemRequest():
        return $default(
            _that.purchaseOrderLineItemId,
            _that.receivedQuantity,
            _that.lotNumber,
            _that.serialNumber,
            _that.expiryDate,
            _that.condition,
            _that.notes,
            _that.storageLocation,
            _that.qualityMetrics,
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
            String purchaseOrderLineItemId,
            double receivedQuantity,
            String? lotNumber,
            String? serialNumber,
            DateTime? expiryDate,
            String? condition,
            String? notes,
            String? storageLocation,
            Map<String, dynamic>? qualityMetrics,
            Map<String, dynamic>? attributes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateGoodsReceiptLineItemRequest() when $default != null:
        return $default(
            _that.purchaseOrderLineItemId,
            _that.receivedQuantity,
            _that.lotNumber,
            _that.serialNumber,
            _that.expiryDate,
            _that.condition,
            _that.notes,
            _that.storageLocation,
            _that.qualityMetrics,
            _that.attributes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateGoodsReceiptLineItemRequest
    implements CreateGoodsReceiptLineItemRequest {
  const _CreateGoodsReceiptLineItemRequest(
      {required this.purchaseOrderLineItemId,
      required this.receivedQuantity,
      this.lotNumber,
      this.serialNumber,
      this.expiryDate,
      this.condition,
      this.notes,
      this.storageLocation,
      final Map<String, dynamic>? qualityMetrics,
      final Map<String, dynamic>? attributes})
      : _qualityMetrics = qualityMetrics,
        _attributes = attributes;
  factory _CreateGoodsReceiptLineItemRequest.fromJson(
          Map<String, dynamic> json) =>
      _$CreateGoodsReceiptLineItemRequestFromJson(json);

  @override
  final String purchaseOrderLineItemId;
  @override
  final double receivedQuantity;
  @override
  final String? lotNumber;
  @override
  final String? serialNumber;
  @override
  final DateTime? expiryDate;
  @override
  final String? condition;
  @override
  final String? notes;
  @override
  final String? storageLocation;
  final Map<String, dynamic>? _qualityMetrics;
  @override
  Map<String, dynamic>? get qualityMetrics {
    final value = _qualityMetrics;
    if (value == null) return null;
    if (_qualityMetrics is EqualUnmodifiableMapView) return _qualityMetrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of CreateGoodsReceiptLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateGoodsReceiptLineItemRequestCopyWith<
          _CreateGoodsReceiptLineItemRequest>
      get copyWith => __$CreateGoodsReceiptLineItemRequestCopyWithImpl<
          _CreateGoodsReceiptLineItemRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateGoodsReceiptLineItemRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateGoodsReceiptLineItemRequest &&
            (identical(
                    other.purchaseOrderLineItemId, purchaseOrderLineItemId) ||
                other.purchaseOrderLineItemId == purchaseOrderLineItemId) &&
            (identical(other.receivedQuantity, receivedQuantity) ||
                other.receivedQuantity == receivedQuantity) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.storageLocation, storageLocation) ||
                other.storageLocation == storageLocation) &&
            const DeepCollectionEquality()
                .equals(other._qualityMetrics, _qualityMetrics) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      purchaseOrderLineItemId,
      receivedQuantity,
      lotNumber,
      serialNumber,
      expiryDate,
      condition,
      notes,
      storageLocation,
      const DeepCollectionEquality().hash(_qualityMetrics),
      const DeepCollectionEquality().hash(_attributes));

  @override
  String toString() {
    return 'CreateGoodsReceiptLineItemRequest(purchaseOrderLineItemId: $purchaseOrderLineItemId, receivedQuantity: $receivedQuantity, lotNumber: $lotNumber, serialNumber: $serialNumber, expiryDate: $expiryDate, condition: $condition, notes: $notes, storageLocation: $storageLocation, qualityMetrics: $qualityMetrics, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class _$CreateGoodsReceiptLineItemRequestCopyWith<$Res>
    implements $CreateGoodsReceiptLineItemRequestCopyWith<$Res> {
  factory _$CreateGoodsReceiptLineItemRequestCopyWith(
          _CreateGoodsReceiptLineItemRequest value,
          $Res Function(_CreateGoodsReceiptLineItemRequest) _then) =
      __$CreateGoodsReceiptLineItemRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String purchaseOrderLineItemId,
      double receivedQuantity,
      String? lotNumber,
      String? serialNumber,
      DateTime? expiryDate,
      String? condition,
      String? notes,
      String? storageLocation,
      Map<String, dynamic>? qualityMetrics,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class __$CreateGoodsReceiptLineItemRequestCopyWithImpl<$Res>
    implements _$CreateGoodsReceiptLineItemRequestCopyWith<$Res> {
  __$CreateGoodsReceiptLineItemRequestCopyWithImpl(this._self, this._then);

  final _CreateGoodsReceiptLineItemRequest _self;
  final $Res Function(_CreateGoodsReceiptLineItemRequest) _then;

  /// Create a copy of CreateGoodsReceiptLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? purchaseOrderLineItemId = null,
    Object? receivedQuantity = null,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? expiryDate = freezed,
    Object? condition = freezed,
    Object? notes = freezed,
    Object? storageLocation = freezed,
    Object? qualityMetrics = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_CreateGoodsReceiptLineItemRequest(
      purchaseOrderLineItemId: null == purchaseOrderLineItemId
          ? _self.purchaseOrderLineItemId
          : purchaseOrderLineItemId // ignore: cast_nullable_to_non_nullable
              as String,
      receivedQuantity: null == receivedQuantity
          ? _self.receivedQuantity
          : receivedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      lotNumber: freezed == lotNumber
          ? _self.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _self.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      condition: freezed == condition
          ? _self.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      storageLocation: freezed == storageLocation
          ? _self.storageLocation
          : storageLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      qualityMetrics: freezed == qualityMetrics
          ? _self._qualityMetrics
          : qualityMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      attributes: freezed == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$UpdateGoodsReceiptRequest {
  DateTime? get receiptDate;
  String? get deliveryNote;
  String? get invoiceNumber;
  String? get transportCompany;
  String? get vehicleNumber;
  String? get driverName;
  String? get notes;
  Map<String, dynamic>? get metadata;

  /// Create a copy of UpdateGoodsReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateGoodsReceiptRequestCopyWith<UpdateGoodsReceiptRequest> get copyWith =>
      _$UpdateGoodsReceiptRequestCopyWithImpl<UpdateGoodsReceiptRequest>(
          this as UpdateGoodsReceiptRequest, _$identity);

  /// Serializes this UpdateGoodsReceiptRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateGoodsReceiptRequest &&
            (identical(other.receiptDate, receiptDate) ||
                other.receiptDate == receiptDate) &&
            (identical(other.deliveryNote, deliveryNote) ||
                other.deliveryNote == deliveryNote) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber) &&
            (identical(other.transportCompany, transportCompany) ||
                other.transportCompany == transportCompany) &&
            (identical(other.vehicleNumber, vehicleNumber) ||
                other.vehicleNumber == vehicleNumber) &&
            (identical(other.driverName, driverName) ||
                other.driverName == driverName) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      receiptDate,
      deliveryNote,
      invoiceNumber,
      transportCompany,
      vehicleNumber,
      driverName,
      notes,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'UpdateGoodsReceiptRequest(receiptDate: $receiptDate, deliveryNote: $deliveryNote, invoiceNumber: $invoiceNumber, transportCompany: $transportCompany, vehicleNumber: $vehicleNumber, driverName: $driverName, notes: $notes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $UpdateGoodsReceiptRequestCopyWith<$Res> {
  factory $UpdateGoodsReceiptRequestCopyWith(UpdateGoodsReceiptRequest value,
          $Res Function(UpdateGoodsReceiptRequest) _then) =
      _$UpdateGoodsReceiptRequestCopyWithImpl;
  @useResult
  $Res call(
      {DateTime? receiptDate,
      String? deliveryNote,
      String? invoiceNumber,
      String? transportCompany,
      String? vehicleNumber,
      String? driverName,
      String? notes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$UpdateGoodsReceiptRequestCopyWithImpl<$Res>
    implements $UpdateGoodsReceiptRequestCopyWith<$Res> {
  _$UpdateGoodsReceiptRequestCopyWithImpl(this._self, this._then);

  final UpdateGoodsReceiptRequest _self;
  final $Res Function(UpdateGoodsReceiptRequest) _then;

  /// Create a copy of UpdateGoodsReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiptDate = freezed,
    Object? deliveryNote = freezed,
    Object? invoiceNumber = freezed,
    Object? transportCompany = freezed,
    Object? vehicleNumber = freezed,
    Object? driverName = freezed,
    Object? notes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      receiptDate: freezed == receiptDate
          ? _self.receiptDate
          : receiptDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryNote: freezed == deliveryNote
          ? _self.deliveryNote
          : deliveryNote // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceNumber: freezed == invoiceNumber
          ? _self.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      transportCompany: freezed == transportCompany
          ? _self.transportCompany
          : transportCompany // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleNumber: freezed == vehicleNumber
          ? _self.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      driverName: freezed == driverName
          ? _self.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateGoodsReceiptRequest].
extension UpdateGoodsReceiptRequestPatterns on UpdateGoodsReceiptRequest {
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
    TResult Function(_UpdateGoodsReceiptRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateGoodsReceiptRequest() when $default != null:
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
    TResult Function(_UpdateGoodsReceiptRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateGoodsReceiptRequest():
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
    TResult? Function(_UpdateGoodsReceiptRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateGoodsReceiptRequest() when $default != null:
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
            DateTime? receiptDate,
            String? deliveryNote,
            String? invoiceNumber,
            String? transportCompany,
            String? vehicleNumber,
            String? driverName,
            String? notes,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateGoodsReceiptRequest() when $default != null:
        return $default(
            _that.receiptDate,
            _that.deliveryNote,
            _that.invoiceNumber,
            _that.transportCompany,
            _that.vehicleNumber,
            _that.driverName,
            _that.notes,
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
            DateTime? receiptDate,
            String? deliveryNote,
            String? invoiceNumber,
            String? transportCompany,
            String? vehicleNumber,
            String? driverName,
            String? notes,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateGoodsReceiptRequest():
        return $default(
            _that.receiptDate,
            _that.deliveryNote,
            _that.invoiceNumber,
            _that.transportCompany,
            _that.vehicleNumber,
            _that.driverName,
            _that.notes,
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
            DateTime? receiptDate,
            String? deliveryNote,
            String? invoiceNumber,
            String? transportCompany,
            String? vehicleNumber,
            String? driverName,
            String? notes,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateGoodsReceiptRequest() when $default != null:
        return $default(
            _that.receiptDate,
            _that.deliveryNote,
            _that.invoiceNumber,
            _that.transportCompany,
            _that.vehicleNumber,
            _that.driverName,
            _that.notes,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateGoodsReceiptRequest implements UpdateGoodsReceiptRequest {
  const _UpdateGoodsReceiptRequest(
      {this.receiptDate,
      this.deliveryNote,
      this.invoiceNumber,
      this.transportCompany,
      this.vehicleNumber,
      this.driverName,
      this.notes,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _UpdateGoodsReceiptRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateGoodsReceiptRequestFromJson(json);

  @override
  final DateTime? receiptDate;
  @override
  final String? deliveryNote;
  @override
  final String? invoiceNumber;
  @override
  final String? transportCompany;
  @override
  final String? vehicleNumber;
  @override
  final String? driverName;
  @override
  final String? notes;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of UpdateGoodsReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateGoodsReceiptRequestCopyWith<_UpdateGoodsReceiptRequest>
      get copyWith =>
          __$UpdateGoodsReceiptRequestCopyWithImpl<_UpdateGoodsReceiptRequest>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateGoodsReceiptRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateGoodsReceiptRequest &&
            (identical(other.receiptDate, receiptDate) ||
                other.receiptDate == receiptDate) &&
            (identical(other.deliveryNote, deliveryNote) ||
                other.deliveryNote == deliveryNote) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber) &&
            (identical(other.transportCompany, transportCompany) ||
                other.transportCompany == transportCompany) &&
            (identical(other.vehicleNumber, vehicleNumber) ||
                other.vehicleNumber == vehicleNumber) &&
            (identical(other.driverName, driverName) ||
                other.driverName == driverName) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      receiptDate,
      deliveryNote,
      invoiceNumber,
      transportCompany,
      vehicleNumber,
      driverName,
      notes,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'UpdateGoodsReceiptRequest(receiptDate: $receiptDate, deliveryNote: $deliveryNote, invoiceNumber: $invoiceNumber, transportCompany: $transportCompany, vehicleNumber: $vehicleNumber, driverName: $driverName, notes: $notes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$UpdateGoodsReceiptRequestCopyWith<$Res>
    implements $UpdateGoodsReceiptRequestCopyWith<$Res> {
  factory _$UpdateGoodsReceiptRequestCopyWith(_UpdateGoodsReceiptRequest value,
          $Res Function(_UpdateGoodsReceiptRequest) _then) =
      __$UpdateGoodsReceiptRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {DateTime? receiptDate,
      String? deliveryNote,
      String? invoiceNumber,
      String? transportCompany,
      String? vehicleNumber,
      String? driverName,
      String? notes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$UpdateGoodsReceiptRequestCopyWithImpl<$Res>
    implements _$UpdateGoodsReceiptRequestCopyWith<$Res> {
  __$UpdateGoodsReceiptRequestCopyWithImpl(this._self, this._then);

  final _UpdateGoodsReceiptRequest _self;
  final $Res Function(_UpdateGoodsReceiptRequest) _then;

  /// Create a copy of UpdateGoodsReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? receiptDate = freezed,
    Object? deliveryNote = freezed,
    Object? invoiceNumber = freezed,
    Object? transportCompany = freezed,
    Object? vehicleNumber = freezed,
    Object? driverName = freezed,
    Object? notes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_UpdateGoodsReceiptRequest(
      receiptDate: freezed == receiptDate
          ? _self.receiptDate
          : receiptDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryNote: freezed == deliveryNote
          ? _self.deliveryNote
          : deliveryNote // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceNumber: freezed == invoiceNumber
          ? _self.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      transportCompany: freezed == transportCompany
          ? _self.transportCompany
          : transportCompany // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleNumber: freezed == vehicleNumber
          ? _self.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      driverName: freezed == driverName
          ? _self.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$UpdateGoodsReceiptLineItemRequest {
  double? get receivedQuantity;
  double? get acceptedQuantity;
  double? get rejectedQuantity;
  String? get lotNumber;
  String? get serialNumber;
  DateTime? get expiryDate;
  String? get condition;
  String? get notes;
  String? get inspectionNotes;
  String? get rejectionReason;
  String? get storageLocation;
  Map<String, dynamic>? get qualityMetrics;
  Map<String, dynamic>? get attributes;

  /// Create a copy of UpdateGoodsReceiptLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateGoodsReceiptLineItemRequestCopyWith<UpdateGoodsReceiptLineItemRequest>
      get copyWith => _$UpdateGoodsReceiptLineItemRequestCopyWithImpl<
              UpdateGoodsReceiptLineItemRequest>(
          this as UpdateGoodsReceiptLineItemRequest, _$identity);

  /// Serializes this UpdateGoodsReceiptLineItemRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateGoodsReceiptLineItemRequest &&
            (identical(other.receivedQuantity, receivedQuantity) ||
                other.receivedQuantity == receivedQuantity) &&
            (identical(other.acceptedQuantity, acceptedQuantity) ||
                other.acceptedQuantity == acceptedQuantity) &&
            (identical(other.rejectedQuantity, rejectedQuantity) ||
                other.rejectedQuantity == rejectedQuantity) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.inspectionNotes, inspectionNotes) ||
                other.inspectionNotes == inspectionNotes) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            (identical(other.storageLocation, storageLocation) ||
                other.storageLocation == storageLocation) &&
            const DeepCollectionEquality()
                .equals(other.qualityMetrics, qualityMetrics) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      receivedQuantity,
      acceptedQuantity,
      rejectedQuantity,
      lotNumber,
      serialNumber,
      expiryDate,
      condition,
      notes,
      inspectionNotes,
      rejectionReason,
      storageLocation,
      const DeepCollectionEquality().hash(qualityMetrics),
      const DeepCollectionEquality().hash(attributes));

  @override
  String toString() {
    return 'UpdateGoodsReceiptLineItemRequest(receivedQuantity: $receivedQuantity, acceptedQuantity: $acceptedQuantity, rejectedQuantity: $rejectedQuantity, lotNumber: $lotNumber, serialNumber: $serialNumber, expiryDate: $expiryDate, condition: $condition, notes: $notes, inspectionNotes: $inspectionNotes, rejectionReason: $rejectionReason, storageLocation: $storageLocation, qualityMetrics: $qualityMetrics, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class $UpdateGoodsReceiptLineItemRequestCopyWith<$Res> {
  factory $UpdateGoodsReceiptLineItemRequestCopyWith(
          UpdateGoodsReceiptLineItemRequest value,
          $Res Function(UpdateGoodsReceiptLineItemRequest) _then) =
      _$UpdateGoodsReceiptLineItemRequestCopyWithImpl;
  @useResult
  $Res call(
      {double? receivedQuantity,
      double? acceptedQuantity,
      double? rejectedQuantity,
      String? lotNumber,
      String? serialNumber,
      DateTime? expiryDate,
      String? condition,
      String? notes,
      String? inspectionNotes,
      String? rejectionReason,
      String? storageLocation,
      Map<String, dynamic>? qualityMetrics,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class _$UpdateGoodsReceiptLineItemRequestCopyWithImpl<$Res>
    implements $UpdateGoodsReceiptLineItemRequestCopyWith<$Res> {
  _$UpdateGoodsReceiptLineItemRequestCopyWithImpl(this._self, this._then);

  final UpdateGoodsReceiptLineItemRequest _self;
  final $Res Function(UpdateGoodsReceiptLineItemRequest) _then;

  /// Create a copy of UpdateGoodsReceiptLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receivedQuantity = freezed,
    Object? acceptedQuantity = freezed,
    Object? rejectedQuantity = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? expiryDate = freezed,
    Object? condition = freezed,
    Object? notes = freezed,
    Object? inspectionNotes = freezed,
    Object? rejectionReason = freezed,
    Object? storageLocation = freezed,
    Object? qualityMetrics = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_self.copyWith(
      receivedQuantity: freezed == receivedQuantity
          ? _self.receivedQuantity
          : receivedQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      acceptedQuantity: freezed == acceptedQuantity
          ? _self.acceptedQuantity
          : acceptedQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      rejectedQuantity: freezed == rejectedQuantity
          ? _self.rejectedQuantity
          : rejectedQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      lotNumber: freezed == lotNumber
          ? _self.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _self.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      condition: freezed == condition
          ? _self.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionNotes: freezed == inspectionNotes
          ? _self.inspectionNotes
          : inspectionNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectionReason: freezed == rejectionReason
          ? _self.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      storageLocation: freezed == storageLocation
          ? _self.storageLocation
          : storageLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      qualityMetrics: freezed == qualityMetrics
          ? _self.qualityMetrics
          : qualityMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      attributes: freezed == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateGoodsReceiptLineItemRequest].
extension UpdateGoodsReceiptLineItemRequestPatterns
    on UpdateGoodsReceiptLineItemRequest {
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
    TResult Function(_UpdateGoodsReceiptLineItemRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateGoodsReceiptLineItemRequest() when $default != null:
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
    TResult Function(_UpdateGoodsReceiptLineItemRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateGoodsReceiptLineItemRequest():
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
    TResult? Function(_UpdateGoodsReceiptLineItemRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateGoodsReceiptLineItemRequest() when $default != null:
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
            double? receivedQuantity,
            double? acceptedQuantity,
            double? rejectedQuantity,
            String? lotNumber,
            String? serialNumber,
            DateTime? expiryDate,
            String? condition,
            String? notes,
            String? inspectionNotes,
            String? rejectionReason,
            String? storageLocation,
            Map<String, dynamic>? qualityMetrics,
            Map<String, dynamic>? attributes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateGoodsReceiptLineItemRequest() when $default != null:
        return $default(
            _that.receivedQuantity,
            _that.acceptedQuantity,
            _that.rejectedQuantity,
            _that.lotNumber,
            _that.serialNumber,
            _that.expiryDate,
            _that.condition,
            _that.notes,
            _that.inspectionNotes,
            _that.rejectionReason,
            _that.storageLocation,
            _that.qualityMetrics,
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
            double? receivedQuantity,
            double? acceptedQuantity,
            double? rejectedQuantity,
            String? lotNumber,
            String? serialNumber,
            DateTime? expiryDate,
            String? condition,
            String? notes,
            String? inspectionNotes,
            String? rejectionReason,
            String? storageLocation,
            Map<String, dynamic>? qualityMetrics,
            Map<String, dynamic>? attributes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateGoodsReceiptLineItemRequest():
        return $default(
            _that.receivedQuantity,
            _that.acceptedQuantity,
            _that.rejectedQuantity,
            _that.lotNumber,
            _that.serialNumber,
            _that.expiryDate,
            _that.condition,
            _that.notes,
            _that.inspectionNotes,
            _that.rejectionReason,
            _that.storageLocation,
            _that.qualityMetrics,
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
            double? receivedQuantity,
            double? acceptedQuantity,
            double? rejectedQuantity,
            String? lotNumber,
            String? serialNumber,
            DateTime? expiryDate,
            String? condition,
            String? notes,
            String? inspectionNotes,
            String? rejectionReason,
            String? storageLocation,
            Map<String, dynamic>? qualityMetrics,
            Map<String, dynamic>? attributes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateGoodsReceiptLineItemRequest() when $default != null:
        return $default(
            _that.receivedQuantity,
            _that.acceptedQuantity,
            _that.rejectedQuantity,
            _that.lotNumber,
            _that.serialNumber,
            _that.expiryDate,
            _that.condition,
            _that.notes,
            _that.inspectionNotes,
            _that.rejectionReason,
            _that.storageLocation,
            _that.qualityMetrics,
            _that.attributes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateGoodsReceiptLineItemRequest
    implements UpdateGoodsReceiptLineItemRequest {
  const _UpdateGoodsReceiptLineItemRequest(
      {this.receivedQuantity,
      this.acceptedQuantity,
      this.rejectedQuantity,
      this.lotNumber,
      this.serialNumber,
      this.expiryDate,
      this.condition,
      this.notes,
      this.inspectionNotes,
      this.rejectionReason,
      this.storageLocation,
      final Map<String, dynamic>? qualityMetrics,
      final Map<String, dynamic>? attributes})
      : _qualityMetrics = qualityMetrics,
        _attributes = attributes;
  factory _UpdateGoodsReceiptLineItemRequest.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateGoodsReceiptLineItemRequestFromJson(json);

  @override
  final double? receivedQuantity;
  @override
  final double? acceptedQuantity;
  @override
  final double? rejectedQuantity;
  @override
  final String? lotNumber;
  @override
  final String? serialNumber;
  @override
  final DateTime? expiryDate;
  @override
  final String? condition;
  @override
  final String? notes;
  @override
  final String? inspectionNotes;
  @override
  final String? rejectionReason;
  @override
  final String? storageLocation;
  final Map<String, dynamic>? _qualityMetrics;
  @override
  Map<String, dynamic>? get qualityMetrics {
    final value = _qualityMetrics;
    if (value == null) return null;
    if (_qualityMetrics is EqualUnmodifiableMapView) return _qualityMetrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of UpdateGoodsReceiptLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateGoodsReceiptLineItemRequestCopyWith<
          _UpdateGoodsReceiptLineItemRequest>
      get copyWith => __$UpdateGoodsReceiptLineItemRequestCopyWithImpl<
          _UpdateGoodsReceiptLineItemRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateGoodsReceiptLineItemRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateGoodsReceiptLineItemRequest &&
            (identical(other.receivedQuantity, receivedQuantity) ||
                other.receivedQuantity == receivedQuantity) &&
            (identical(other.acceptedQuantity, acceptedQuantity) ||
                other.acceptedQuantity == acceptedQuantity) &&
            (identical(other.rejectedQuantity, rejectedQuantity) ||
                other.rejectedQuantity == rejectedQuantity) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.inspectionNotes, inspectionNotes) ||
                other.inspectionNotes == inspectionNotes) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            (identical(other.storageLocation, storageLocation) ||
                other.storageLocation == storageLocation) &&
            const DeepCollectionEquality()
                .equals(other._qualityMetrics, _qualityMetrics) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      receivedQuantity,
      acceptedQuantity,
      rejectedQuantity,
      lotNumber,
      serialNumber,
      expiryDate,
      condition,
      notes,
      inspectionNotes,
      rejectionReason,
      storageLocation,
      const DeepCollectionEquality().hash(_qualityMetrics),
      const DeepCollectionEquality().hash(_attributes));

  @override
  String toString() {
    return 'UpdateGoodsReceiptLineItemRequest(receivedQuantity: $receivedQuantity, acceptedQuantity: $acceptedQuantity, rejectedQuantity: $rejectedQuantity, lotNumber: $lotNumber, serialNumber: $serialNumber, expiryDate: $expiryDate, condition: $condition, notes: $notes, inspectionNotes: $inspectionNotes, rejectionReason: $rejectionReason, storageLocation: $storageLocation, qualityMetrics: $qualityMetrics, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class _$UpdateGoodsReceiptLineItemRequestCopyWith<$Res>
    implements $UpdateGoodsReceiptLineItemRequestCopyWith<$Res> {
  factory _$UpdateGoodsReceiptLineItemRequestCopyWith(
          _UpdateGoodsReceiptLineItemRequest value,
          $Res Function(_UpdateGoodsReceiptLineItemRequest) _then) =
      __$UpdateGoodsReceiptLineItemRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double? receivedQuantity,
      double? acceptedQuantity,
      double? rejectedQuantity,
      String? lotNumber,
      String? serialNumber,
      DateTime? expiryDate,
      String? condition,
      String? notes,
      String? inspectionNotes,
      String? rejectionReason,
      String? storageLocation,
      Map<String, dynamic>? qualityMetrics,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class __$UpdateGoodsReceiptLineItemRequestCopyWithImpl<$Res>
    implements _$UpdateGoodsReceiptLineItemRequestCopyWith<$Res> {
  __$UpdateGoodsReceiptLineItemRequestCopyWithImpl(this._self, this._then);

  final _UpdateGoodsReceiptLineItemRequest _self;
  final $Res Function(_UpdateGoodsReceiptLineItemRequest) _then;

  /// Create a copy of UpdateGoodsReceiptLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? receivedQuantity = freezed,
    Object? acceptedQuantity = freezed,
    Object? rejectedQuantity = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? expiryDate = freezed,
    Object? condition = freezed,
    Object? notes = freezed,
    Object? inspectionNotes = freezed,
    Object? rejectionReason = freezed,
    Object? storageLocation = freezed,
    Object? qualityMetrics = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_UpdateGoodsReceiptLineItemRequest(
      receivedQuantity: freezed == receivedQuantity
          ? _self.receivedQuantity
          : receivedQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      acceptedQuantity: freezed == acceptedQuantity
          ? _self.acceptedQuantity
          : acceptedQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      rejectedQuantity: freezed == rejectedQuantity
          ? _self.rejectedQuantity
          : rejectedQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      lotNumber: freezed == lotNumber
          ? _self.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _self.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      condition: freezed == condition
          ? _self.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionNotes: freezed == inspectionNotes
          ? _self.inspectionNotes
          : inspectionNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectionReason: freezed == rejectionReason
          ? _self.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      storageLocation: freezed == storageLocation
          ? _self.storageLocation
          : storageLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      qualityMetrics: freezed == qualityMetrics
          ? _self._qualityMetrics
          : qualityMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      attributes: freezed == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$GoodsReceiptFilters {
  String? get purchaseOrderId;
  String? get supplierId;
  String? get status;
  String? get receivedBy;
  DateTime? get receiptDateAfter;
  DateTime? get receiptDateBefore;
  DateTime? get createdAfter;
  DateTime? get createdBefore;
  List<String>? get itemIds;
  int? get page;
  int? get limit;
  String? get sortBy;
  String? get sortOrder;

  /// Create a copy of GoodsReceiptFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GoodsReceiptFiltersCopyWith<GoodsReceiptFilters> get copyWith =>
      _$GoodsReceiptFiltersCopyWithImpl<GoodsReceiptFilters>(
          this as GoodsReceiptFilters, _$identity);

  /// Serializes this GoodsReceiptFilters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GoodsReceiptFilters &&
            (identical(other.purchaseOrderId, purchaseOrderId) ||
                other.purchaseOrderId == purchaseOrderId) &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.receivedBy, receivedBy) ||
                other.receivedBy == receivedBy) &&
            (identical(other.receiptDateAfter, receiptDateAfter) ||
                other.receiptDateAfter == receiptDateAfter) &&
            (identical(other.receiptDateBefore, receiptDateBefore) ||
                other.receiptDateBefore == receiptDateBefore) &&
            (identical(other.createdAfter, createdAfter) ||
                other.createdAfter == createdAfter) &&
            (identical(other.createdBefore, createdBefore) ||
                other.createdBefore == createdBefore) &&
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
      purchaseOrderId,
      supplierId,
      status,
      receivedBy,
      receiptDateAfter,
      receiptDateBefore,
      createdAfter,
      createdBefore,
      const DeepCollectionEquality().hash(itemIds),
      page,
      limit,
      sortBy,
      sortOrder);

  @override
  String toString() {
    return 'GoodsReceiptFilters(purchaseOrderId: $purchaseOrderId, supplierId: $supplierId, status: $status, receivedBy: $receivedBy, receiptDateAfter: $receiptDateAfter, receiptDateBefore: $receiptDateBefore, createdAfter: $createdAfter, createdBefore: $createdBefore, itemIds: $itemIds, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class $GoodsReceiptFiltersCopyWith<$Res> {
  factory $GoodsReceiptFiltersCopyWith(
          GoodsReceiptFilters value, $Res Function(GoodsReceiptFilters) _then) =
      _$GoodsReceiptFiltersCopyWithImpl;
  @useResult
  $Res call(
      {String? purchaseOrderId,
      String? supplierId,
      String? status,
      String? receivedBy,
      DateTime? receiptDateAfter,
      DateTime? receiptDateBefore,
      DateTime? createdAfter,
      DateTime? createdBefore,
      List<String>? itemIds,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class _$GoodsReceiptFiltersCopyWithImpl<$Res>
    implements $GoodsReceiptFiltersCopyWith<$Res> {
  _$GoodsReceiptFiltersCopyWithImpl(this._self, this._then);

  final GoodsReceiptFilters _self;
  final $Res Function(GoodsReceiptFilters) _then;

  /// Create a copy of GoodsReceiptFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseOrderId = freezed,
    Object? supplierId = freezed,
    Object? status = freezed,
    Object? receivedBy = freezed,
    Object? receiptDateAfter = freezed,
    Object? receiptDateBefore = freezed,
    Object? createdAfter = freezed,
    Object? createdBefore = freezed,
    Object? itemIds = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_self.copyWith(
      purchaseOrderId: freezed == purchaseOrderId
          ? _self.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierId: freezed == supplierId
          ? _self.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      receivedBy: freezed == receivedBy
          ? _self.receivedBy
          : receivedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      receiptDateAfter: freezed == receiptDateAfter
          ? _self.receiptDateAfter
          : receiptDateAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      receiptDateBefore: freezed == receiptDateBefore
          ? _self.receiptDateBefore
          : receiptDateBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAfter: freezed == createdAfter
          ? _self.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _self.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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

/// Adds pattern-matching-related methods to [GoodsReceiptFilters].
extension GoodsReceiptFiltersPatterns on GoodsReceiptFilters {
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
    TResult Function(_GoodsReceiptFilters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GoodsReceiptFilters() when $default != null:
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
    TResult Function(_GoodsReceiptFilters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoodsReceiptFilters():
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
    TResult? Function(_GoodsReceiptFilters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoodsReceiptFilters() when $default != null:
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
            String? purchaseOrderId,
            String? supplierId,
            String? status,
            String? receivedBy,
            DateTime? receiptDateAfter,
            DateTime? receiptDateBefore,
            DateTime? createdAfter,
            DateTime? createdBefore,
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
      case _GoodsReceiptFilters() when $default != null:
        return $default(
            _that.purchaseOrderId,
            _that.supplierId,
            _that.status,
            _that.receivedBy,
            _that.receiptDateAfter,
            _that.receiptDateBefore,
            _that.createdAfter,
            _that.createdBefore,
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
            String? purchaseOrderId,
            String? supplierId,
            String? status,
            String? receivedBy,
            DateTime? receiptDateAfter,
            DateTime? receiptDateBefore,
            DateTime? createdAfter,
            DateTime? createdBefore,
            List<String>? itemIds,
            int? page,
            int? limit,
            String? sortBy,
            String? sortOrder)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoodsReceiptFilters():
        return $default(
            _that.purchaseOrderId,
            _that.supplierId,
            _that.status,
            _that.receivedBy,
            _that.receiptDateAfter,
            _that.receiptDateBefore,
            _that.createdAfter,
            _that.createdBefore,
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
            String? purchaseOrderId,
            String? supplierId,
            String? status,
            String? receivedBy,
            DateTime? receiptDateAfter,
            DateTime? receiptDateBefore,
            DateTime? createdAfter,
            DateTime? createdBefore,
            List<String>? itemIds,
            int? page,
            int? limit,
            String? sortBy,
            String? sortOrder)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoodsReceiptFilters() when $default != null:
        return $default(
            _that.purchaseOrderId,
            _that.supplierId,
            _that.status,
            _that.receivedBy,
            _that.receiptDateAfter,
            _that.receiptDateBefore,
            _that.createdAfter,
            _that.createdBefore,
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
class _GoodsReceiptFilters extends GoodsReceiptFilters {
  const _GoodsReceiptFilters(
      {this.purchaseOrderId,
      this.supplierId,
      this.status,
      this.receivedBy,
      this.receiptDateAfter,
      this.receiptDateBefore,
      this.createdAfter,
      this.createdBefore,
      final List<String>? itemIds,
      this.page,
      this.limit,
      this.sortBy,
      this.sortOrder})
      : _itemIds = itemIds,
        super._();
  factory _GoodsReceiptFilters.fromJson(Map<String, dynamic> json) =>
      _$GoodsReceiptFiltersFromJson(json);

  @override
  final String? purchaseOrderId;
  @override
  final String? supplierId;
  @override
  final String? status;
  @override
  final String? receivedBy;
  @override
  final DateTime? receiptDateAfter;
  @override
  final DateTime? receiptDateBefore;
  @override
  final DateTime? createdAfter;
  @override
  final DateTime? createdBefore;
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

  /// Create a copy of GoodsReceiptFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GoodsReceiptFiltersCopyWith<_GoodsReceiptFilters> get copyWith =>
      __$GoodsReceiptFiltersCopyWithImpl<_GoodsReceiptFilters>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GoodsReceiptFiltersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GoodsReceiptFilters &&
            (identical(other.purchaseOrderId, purchaseOrderId) ||
                other.purchaseOrderId == purchaseOrderId) &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.receivedBy, receivedBy) ||
                other.receivedBy == receivedBy) &&
            (identical(other.receiptDateAfter, receiptDateAfter) ||
                other.receiptDateAfter == receiptDateAfter) &&
            (identical(other.receiptDateBefore, receiptDateBefore) ||
                other.receiptDateBefore == receiptDateBefore) &&
            (identical(other.createdAfter, createdAfter) ||
                other.createdAfter == createdAfter) &&
            (identical(other.createdBefore, createdBefore) ||
                other.createdBefore == createdBefore) &&
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
      purchaseOrderId,
      supplierId,
      status,
      receivedBy,
      receiptDateAfter,
      receiptDateBefore,
      createdAfter,
      createdBefore,
      const DeepCollectionEquality().hash(_itemIds),
      page,
      limit,
      sortBy,
      sortOrder);

  @override
  String toString() {
    return 'GoodsReceiptFilters(purchaseOrderId: $purchaseOrderId, supplierId: $supplierId, status: $status, receivedBy: $receivedBy, receiptDateAfter: $receiptDateAfter, receiptDateBefore: $receiptDateBefore, createdAfter: $createdAfter, createdBefore: $createdBefore, itemIds: $itemIds, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class _$GoodsReceiptFiltersCopyWith<$Res>
    implements $GoodsReceiptFiltersCopyWith<$Res> {
  factory _$GoodsReceiptFiltersCopyWith(_GoodsReceiptFilters value,
          $Res Function(_GoodsReceiptFilters) _then) =
      __$GoodsReceiptFiltersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? purchaseOrderId,
      String? supplierId,
      String? status,
      String? receivedBy,
      DateTime? receiptDateAfter,
      DateTime? receiptDateBefore,
      DateTime? createdAfter,
      DateTime? createdBefore,
      List<String>? itemIds,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class __$GoodsReceiptFiltersCopyWithImpl<$Res>
    implements _$GoodsReceiptFiltersCopyWith<$Res> {
  __$GoodsReceiptFiltersCopyWithImpl(this._self, this._then);

  final _GoodsReceiptFilters _self;
  final $Res Function(_GoodsReceiptFilters) _then;

  /// Create a copy of GoodsReceiptFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? purchaseOrderId = freezed,
    Object? supplierId = freezed,
    Object? status = freezed,
    Object? receivedBy = freezed,
    Object? receiptDateAfter = freezed,
    Object? receiptDateBefore = freezed,
    Object? createdAfter = freezed,
    Object? createdBefore = freezed,
    Object? itemIds = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_GoodsReceiptFilters(
      purchaseOrderId: freezed == purchaseOrderId
          ? _self.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierId: freezed == supplierId
          ? _self.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      receivedBy: freezed == receivedBy
          ? _self.receivedBy
          : receivedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      receiptDateAfter: freezed == receiptDateAfter
          ? _self.receiptDateAfter
          : receiptDateAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      receiptDateBefore: freezed == receiptDateBefore
          ? _self.receiptDateBefore
          : receiptDateBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAfter: freezed == createdAfter
          ? _self.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _self.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
mixin _$InspectGoodsReceiptRequest {
  String? get inspectionNotes;
  Map<String, dynamic>? get qualityMetrics;

  /// Create a copy of InspectGoodsReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InspectGoodsReceiptRequestCopyWith<InspectGoodsReceiptRequest>
      get copyWith =>
          _$InspectGoodsReceiptRequestCopyWithImpl<InspectGoodsReceiptRequest>(
              this as InspectGoodsReceiptRequest, _$identity);

  /// Serializes this InspectGoodsReceiptRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InspectGoodsReceiptRequest &&
            (identical(other.inspectionNotes, inspectionNotes) ||
                other.inspectionNotes == inspectionNotes) &&
            const DeepCollectionEquality()
                .equals(other.qualityMetrics, qualityMetrics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, inspectionNotes,
      const DeepCollectionEquality().hash(qualityMetrics));

  @override
  String toString() {
    return 'InspectGoodsReceiptRequest(inspectionNotes: $inspectionNotes, qualityMetrics: $qualityMetrics)';
  }
}

/// @nodoc
abstract mixin class $InspectGoodsReceiptRequestCopyWith<$Res> {
  factory $InspectGoodsReceiptRequestCopyWith(InspectGoodsReceiptRequest value,
          $Res Function(InspectGoodsReceiptRequest) _then) =
      _$InspectGoodsReceiptRequestCopyWithImpl;
  @useResult
  $Res call({String? inspectionNotes, Map<String, dynamic>? qualityMetrics});
}

/// @nodoc
class _$InspectGoodsReceiptRequestCopyWithImpl<$Res>
    implements $InspectGoodsReceiptRequestCopyWith<$Res> {
  _$InspectGoodsReceiptRequestCopyWithImpl(this._self, this._then);

  final InspectGoodsReceiptRequest _self;
  final $Res Function(InspectGoodsReceiptRequest) _then;

  /// Create a copy of InspectGoodsReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inspectionNotes = freezed,
    Object? qualityMetrics = freezed,
  }) {
    return _then(_self.copyWith(
      inspectionNotes: freezed == inspectionNotes
          ? _self.inspectionNotes
          : inspectionNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      qualityMetrics: freezed == qualityMetrics
          ? _self.qualityMetrics
          : qualityMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [InspectGoodsReceiptRequest].
extension InspectGoodsReceiptRequestPatterns on InspectGoodsReceiptRequest {
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
    TResult Function(_InspectGoodsReceiptRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InspectGoodsReceiptRequest() when $default != null:
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
    TResult Function(_InspectGoodsReceiptRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InspectGoodsReceiptRequest():
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
    TResult? Function(_InspectGoodsReceiptRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InspectGoodsReceiptRequest() when $default != null:
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
            String? inspectionNotes, Map<String, dynamic>? qualityMetrics)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InspectGoodsReceiptRequest() when $default != null:
        return $default(_that.inspectionNotes, _that.qualityMetrics);
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
            String? inspectionNotes, Map<String, dynamic>? qualityMetrics)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InspectGoodsReceiptRequest():
        return $default(_that.inspectionNotes, _that.qualityMetrics);
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
            String? inspectionNotes, Map<String, dynamic>? qualityMetrics)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InspectGoodsReceiptRequest() when $default != null:
        return $default(_that.inspectionNotes, _that.qualityMetrics);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _InspectGoodsReceiptRequest implements InspectGoodsReceiptRequest {
  const _InspectGoodsReceiptRequest(
      {this.inspectionNotes, final Map<String, dynamic>? qualityMetrics})
      : _qualityMetrics = qualityMetrics;
  factory _InspectGoodsReceiptRequest.fromJson(Map<String, dynamic> json) =>
      _$InspectGoodsReceiptRequestFromJson(json);

  @override
  final String? inspectionNotes;
  final Map<String, dynamic>? _qualityMetrics;
  @override
  Map<String, dynamic>? get qualityMetrics {
    final value = _qualityMetrics;
    if (value == null) return null;
    if (_qualityMetrics is EqualUnmodifiableMapView) return _qualityMetrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of InspectGoodsReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InspectGoodsReceiptRequestCopyWith<_InspectGoodsReceiptRequest>
      get copyWith => __$InspectGoodsReceiptRequestCopyWithImpl<
          _InspectGoodsReceiptRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InspectGoodsReceiptRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InspectGoodsReceiptRequest &&
            (identical(other.inspectionNotes, inspectionNotes) ||
                other.inspectionNotes == inspectionNotes) &&
            const DeepCollectionEquality()
                .equals(other._qualityMetrics, _qualityMetrics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, inspectionNotes,
      const DeepCollectionEquality().hash(_qualityMetrics));

  @override
  String toString() {
    return 'InspectGoodsReceiptRequest(inspectionNotes: $inspectionNotes, qualityMetrics: $qualityMetrics)';
  }
}

/// @nodoc
abstract mixin class _$InspectGoodsReceiptRequestCopyWith<$Res>
    implements $InspectGoodsReceiptRequestCopyWith<$Res> {
  factory _$InspectGoodsReceiptRequestCopyWith(
          _InspectGoodsReceiptRequest value,
          $Res Function(_InspectGoodsReceiptRequest) _then) =
      __$InspectGoodsReceiptRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String? inspectionNotes, Map<String, dynamic>? qualityMetrics});
}

/// @nodoc
class __$InspectGoodsReceiptRequestCopyWithImpl<$Res>
    implements _$InspectGoodsReceiptRequestCopyWith<$Res> {
  __$InspectGoodsReceiptRequestCopyWithImpl(this._self, this._then);

  final _InspectGoodsReceiptRequest _self;
  final $Res Function(_InspectGoodsReceiptRequest) _then;

  /// Create a copy of InspectGoodsReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? inspectionNotes = freezed,
    Object? qualityMetrics = freezed,
  }) {
    return _then(_InspectGoodsReceiptRequest(
      inspectionNotes: freezed == inspectionNotes
          ? _self.inspectionNotes
          : inspectionNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      qualityMetrics: freezed == qualityMetrics
          ? _self._qualityMetrics
          : qualityMetrics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$AcceptGoodsReceiptRequest {
  String? get notes;

  /// Create a copy of AcceptGoodsReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AcceptGoodsReceiptRequestCopyWith<AcceptGoodsReceiptRequest> get copyWith =>
      _$AcceptGoodsReceiptRequestCopyWithImpl<AcceptGoodsReceiptRequest>(
          this as AcceptGoodsReceiptRequest, _$identity);

  /// Serializes this AcceptGoodsReceiptRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AcceptGoodsReceiptRequest &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, notes);

  @override
  String toString() {
    return 'AcceptGoodsReceiptRequest(notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $AcceptGoodsReceiptRequestCopyWith<$Res> {
  factory $AcceptGoodsReceiptRequestCopyWith(AcceptGoodsReceiptRequest value,
          $Res Function(AcceptGoodsReceiptRequest) _then) =
      _$AcceptGoodsReceiptRequestCopyWithImpl;
  @useResult
  $Res call({String? notes});
}

/// @nodoc
class _$AcceptGoodsReceiptRequestCopyWithImpl<$Res>
    implements $AcceptGoodsReceiptRequestCopyWith<$Res> {
  _$AcceptGoodsReceiptRequestCopyWithImpl(this._self, this._then);

  final AcceptGoodsReceiptRequest _self;
  final $Res Function(AcceptGoodsReceiptRequest) _then;

  /// Create a copy of AcceptGoodsReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = freezed,
  }) {
    return _then(_self.copyWith(
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AcceptGoodsReceiptRequest].
extension AcceptGoodsReceiptRequestPatterns on AcceptGoodsReceiptRequest {
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
    TResult Function(_AcceptGoodsReceiptRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AcceptGoodsReceiptRequest() when $default != null:
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
    TResult Function(_AcceptGoodsReceiptRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcceptGoodsReceiptRequest():
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
    TResult? Function(_AcceptGoodsReceiptRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcceptGoodsReceiptRequest() when $default != null:
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
    TResult Function(String? notes)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AcceptGoodsReceiptRequest() when $default != null:
        return $default(_that.notes);
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
    TResult Function(String? notes) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcceptGoodsReceiptRequest():
        return $default(_that.notes);
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
    TResult? Function(String? notes)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AcceptGoodsReceiptRequest() when $default != null:
        return $default(_that.notes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AcceptGoodsReceiptRequest implements AcceptGoodsReceiptRequest {
  const _AcceptGoodsReceiptRequest({this.notes});
  factory _AcceptGoodsReceiptRequest.fromJson(Map<String, dynamic> json) =>
      _$AcceptGoodsReceiptRequestFromJson(json);

  @override
  final String? notes;

  /// Create a copy of AcceptGoodsReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AcceptGoodsReceiptRequestCopyWith<_AcceptGoodsReceiptRequest>
      get copyWith =>
          __$AcceptGoodsReceiptRequestCopyWithImpl<_AcceptGoodsReceiptRequest>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AcceptGoodsReceiptRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AcceptGoodsReceiptRequest &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, notes);

  @override
  String toString() {
    return 'AcceptGoodsReceiptRequest(notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$AcceptGoodsReceiptRequestCopyWith<$Res>
    implements $AcceptGoodsReceiptRequestCopyWith<$Res> {
  factory _$AcceptGoodsReceiptRequestCopyWith(_AcceptGoodsReceiptRequest value,
          $Res Function(_AcceptGoodsReceiptRequest) _then) =
      __$AcceptGoodsReceiptRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String? notes});
}

/// @nodoc
class __$AcceptGoodsReceiptRequestCopyWithImpl<$Res>
    implements _$AcceptGoodsReceiptRequestCopyWith<$Res> {
  __$AcceptGoodsReceiptRequestCopyWithImpl(this._self, this._then);

  final _AcceptGoodsReceiptRequest _self;
  final $Res Function(_AcceptGoodsReceiptRequest) _then;

  /// Create a copy of AcceptGoodsReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? notes = freezed,
  }) {
    return _then(_AcceptGoodsReceiptRequest(
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$RejectGoodsReceiptRequest {
  String get reason;
  String? get notes;

  /// Create a copy of RejectGoodsReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RejectGoodsReceiptRequestCopyWith<RejectGoodsReceiptRequest> get copyWith =>
      _$RejectGoodsReceiptRequestCopyWithImpl<RejectGoodsReceiptRequest>(
          this as RejectGoodsReceiptRequest, _$identity);

  /// Serializes this RejectGoodsReceiptRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RejectGoodsReceiptRequest &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason, notes);

  @override
  String toString() {
    return 'RejectGoodsReceiptRequest(reason: $reason, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $RejectGoodsReceiptRequestCopyWith<$Res> {
  factory $RejectGoodsReceiptRequestCopyWith(RejectGoodsReceiptRequest value,
          $Res Function(RejectGoodsReceiptRequest) _then) =
      _$RejectGoodsReceiptRequestCopyWithImpl;
  @useResult
  $Res call({String reason, String? notes});
}

/// @nodoc
class _$RejectGoodsReceiptRequestCopyWithImpl<$Res>
    implements $RejectGoodsReceiptRequestCopyWith<$Res> {
  _$RejectGoodsReceiptRequestCopyWithImpl(this._self, this._then);

  final RejectGoodsReceiptRequest _self;
  final $Res Function(RejectGoodsReceiptRequest) _then;

  /// Create a copy of RejectGoodsReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? notes = freezed,
  }) {
    return _then(_self.copyWith(
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [RejectGoodsReceiptRequest].
extension RejectGoodsReceiptRequestPatterns on RejectGoodsReceiptRequest {
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
    TResult Function(_RejectGoodsReceiptRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RejectGoodsReceiptRequest() when $default != null:
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
    TResult Function(_RejectGoodsReceiptRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RejectGoodsReceiptRequest():
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
    TResult? Function(_RejectGoodsReceiptRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RejectGoodsReceiptRequest() when $default != null:
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
    TResult Function(String reason, String? notes)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RejectGoodsReceiptRequest() when $default != null:
        return $default(_that.reason, _that.notes);
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
    TResult Function(String reason, String? notes) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RejectGoodsReceiptRequest():
        return $default(_that.reason, _that.notes);
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
    TResult? Function(String reason, String? notes)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RejectGoodsReceiptRequest() when $default != null:
        return $default(_that.reason, _that.notes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RejectGoodsReceiptRequest implements RejectGoodsReceiptRequest {
  const _RejectGoodsReceiptRequest({required this.reason, this.notes});
  factory _RejectGoodsReceiptRequest.fromJson(Map<String, dynamic> json) =>
      _$RejectGoodsReceiptRequestFromJson(json);

  @override
  final String reason;
  @override
  final String? notes;

  /// Create a copy of RejectGoodsReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RejectGoodsReceiptRequestCopyWith<_RejectGoodsReceiptRequest>
      get copyWith =>
          __$RejectGoodsReceiptRequestCopyWithImpl<_RejectGoodsReceiptRequest>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RejectGoodsReceiptRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RejectGoodsReceiptRequest &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason, notes);

  @override
  String toString() {
    return 'RejectGoodsReceiptRequest(reason: $reason, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$RejectGoodsReceiptRequestCopyWith<$Res>
    implements $RejectGoodsReceiptRequestCopyWith<$Res> {
  factory _$RejectGoodsReceiptRequestCopyWith(_RejectGoodsReceiptRequest value,
          $Res Function(_RejectGoodsReceiptRequest) _then) =
      __$RejectGoodsReceiptRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String reason, String? notes});
}

/// @nodoc
class __$RejectGoodsReceiptRequestCopyWithImpl<$Res>
    implements _$RejectGoodsReceiptRequestCopyWith<$Res> {
  __$RejectGoodsReceiptRequestCopyWithImpl(this._self, this._then);

  final _RejectGoodsReceiptRequest _self;
  final $Res Function(_RejectGoodsReceiptRequest) _then;

  /// Create a copy of RejectGoodsReceiptRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reason = null,
    Object? notes = freezed,
  }) {
    return _then(_RejectGoodsReceiptRequest(
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
