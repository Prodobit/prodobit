// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_adjustment_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StockAdjustment {
  String get id;
  String get itemId;
  String get locationId;
  double get quantity;
  double get value;
  String get type; // 'increase', 'decrease'
  String
      get reason; // 'damage', 'theft', 'obsolete', 'found', 'correction', 'other'
  String
      get status; // 'draft', 'pending_approval', 'approved', 'rejected', 'posted'
  DateTime get createdAt;
  DateTime get updatedAt;
  String? get referenceNumber;
  String? get notes;
  String? get createdBy;
  String? get approvedBy;
  String? get rejectedBy;
  String? get postedBy;
  DateTime? get approvedAt;
  DateTime? get rejectedAt;
  DateTime? get postedAt;
  String? get rejectionReason;
  String? get lotNumber;
  String? get serialNumber;
  Map<String, dynamic>? get metadata;

  /// Create a copy of StockAdjustment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StockAdjustmentCopyWith<StockAdjustment> get copyWith =>
      _$StockAdjustmentCopyWithImpl<StockAdjustment>(
          this as StockAdjustment, _$identity);

  /// Serializes this StockAdjustment to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StockAdjustment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.referenceNumber, referenceNumber) ||
                other.referenceNumber == referenceNumber) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy) &&
            (identical(other.rejectedBy, rejectedBy) ||
                other.rejectedBy == rejectedBy) &&
            (identical(other.postedBy, postedBy) ||
                other.postedBy == postedBy) &&
            (identical(other.approvedAt, approvedAt) ||
                other.approvedAt == approvedAt) &&
            (identical(other.rejectedAt, rejectedAt) ||
                other.rejectedAt == rejectedAt) &&
            (identical(other.postedAt, postedAt) ||
                other.postedAt == postedAt) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        itemId,
        locationId,
        quantity,
        value,
        type,
        reason,
        status,
        createdAt,
        updatedAt,
        referenceNumber,
        notes,
        createdBy,
        approvedBy,
        rejectedBy,
        postedBy,
        approvedAt,
        rejectedAt,
        postedAt,
        rejectionReason,
        lotNumber,
        serialNumber,
        const DeepCollectionEquality().hash(metadata)
      ]);

  @override
  String toString() {
    return 'StockAdjustment(id: $id, itemId: $itemId, locationId: $locationId, quantity: $quantity, value: $value, type: $type, reason: $reason, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, referenceNumber: $referenceNumber, notes: $notes, createdBy: $createdBy, approvedBy: $approvedBy, rejectedBy: $rejectedBy, postedBy: $postedBy, approvedAt: $approvedAt, rejectedAt: $rejectedAt, postedAt: $postedAt, rejectionReason: $rejectionReason, lotNumber: $lotNumber, serialNumber: $serialNumber, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $StockAdjustmentCopyWith<$Res> {
  factory $StockAdjustmentCopyWith(
          StockAdjustment value, $Res Function(StockAdjustment) _then) =
      _$StockAdjustmentCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String itemId,
      String locationId,
      double quantity,
      double value,
      String type,
      String reason,
      String status,
      DateTime createdAt,
      DateTime updatedAt,
      String? referenceNumber,
      String? notes,
      String? createdBy,
      String? approvedBy,
      String? rejectedBy,
      String? postedBy,
      DateTime? approvedAt,
      DateTime? rejectedAt,
      DateTime? postedAt,
      String? rejectionReason,
      String? lotNumber,
      String? serialNumber,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$StockAdjustmentCopyWithImpl<$Res>
    implements $StockAdjustmentCopyWith<$Res> {
  _$StockAdjustmentCopyWithImpl(this._self, this._then);

  final StockAdjustment _self;
  final $Res Function(StockAdjustment) _then;

  /// Create a copy of StockAdjustment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? itemId = null,
    Object? locationId = null,
    Object? quantity = null,
    Object? value = null,
    Object? type = null,
    Object? reason = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? referenceNumber = freezed,
    Object? notes = freezed,
    Object? createdBy = freezed,
    Object? approvedBy = freezed,
    Object? rejectedBy = freezed,
    Object? postedBy = freezed,
    Object? approvedAt = freezed,
    Object? rejectedAt = freezed,
    Object? postedAt = freezed,
    Object? rejectionReason = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      referenceNumber: freezed == referenceNumber
          ? _self.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedBy: freezed == approvedBy
          ? _self.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectedBy: freezed == rejectedBy
          ? _self.rejectedBy
          : rejectedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      postedBy: freezed == postedBy
          ? _self.postedBy
          : postedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedAt: freezed == approvedAt
          ? _self.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _self.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      postedAt: freezed == postedAt
          ? _self.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectionReason: freezed == rejectionReason
          ? _self.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumber: freezed == lotNumber
          ? _self.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [StockAdjustment].
extension StockAdjustmentPatterns on StockAdjustment {
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
    TResult Function(_StockAdjustment value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StockAdjustment() when $default != null:
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
    TResult Function(_StockAdjustment value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockAdjustment():
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
    TResult? Function(_StockAdjustment value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockAdjustment() when $default != null:
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
            String itemId,
            String locationId,
            double quantity,
            double value,
            String type,
            String reason,
            String status,
            DateTime createdAt,
            DateTime updatedAt,
            String? referenceNumber,
            String? notes,
            String? createdBy,
            String? approvedBy,
            String? rejectedBy,
            String? postedBy,
            DateTime? approvedAt,
            DateTime? rejectedAt,
            DateTime? postedAt,
            String? rejectionReason,
            String? lotNumber,
            String? serialNumber,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StockAdjustment() when $default != null:
        return $default(
            _that.id,
            _that.itemId,
            _that.locationId,
            _that.quantity,
            _that.value,
            _that.type,
            _that.reason,
            _that.status,
            _that.createdAt,
            _that.updatedAt,
            _that.referenceNumber,
            _that.notes,
            _that.createdBy,
            _that.approvedBy,
            _that.rejectedBy,
            _that.postedBy,
            _that.approvedAt,
            _that.rejectedAt,
            _that.postedAt,
            _that.rejectionReason,
            _that.lotNumber,
            _that.serialNumber,
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
            String itemId,
            String locationId,
            double quantity,
            double value,
            String type,
            String reason,
            String status,
            DateTime createdAt,
            DateTime updatedAt,
            String? referenceNumber,
            String? notes,
            String? createdBy,
            String? approvedBy,
            String? rejectedBy,
            String? postedBy,
            DateTime? approvedAt,
            DateTime? rejectedAt,
            DateTime? postedAt,
            String? rejectionReason,
            String? lotNumber,
            String? serialNumber,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockAdjustment():
        return $default(
            _that.id,
            _that.itemId,
            _that.locationId,
            _that.quantity,
            _that.value,
            _that.type,
            _that.reason,
            _that.status,
            _that.createdAt,
            _that.updatedAt,
            _that.referenceNumber,
            _that.notes,
            _that.createdBy,
            _that.approvedBy,
            _that.rejectedBy,
            _that.postedBy,
            _that.approvedAt,
            _that.rejectedAt,
            _that.postedAt,
            _that.rejectionReason,
            _that.lotNumber,
            _that.serialNumber,
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
            String itemId,
            String locationId,
            double quantity,
            double value,
            String type,
            String reason,
            String status,
            DateTime createdAt,
            DateTime updatedAt,
            String? referenceNumber,
            String? notes,
            String? createdBy,
            String? approvedBy,
            String? rejectedBy,
            String? postedBy,
            DateTime? approvedAt,
            DateTime? rejectedAt,
            DateTime? postedAt,
            String? rejectionReason,
            String? lotNumber,
            String? serialNumber,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockAdjustment() when $default != null:
        return $default(
            _that.id,
            _that.itemId,
            _that.locationId,
            _that.quantity,
            _that.value,
            _that.type,
            _that.reason,
            _that.status,
            _that.createdAt,
            _that.updatedAt,
            _that.referenceNumber,
            _that.notes,
            _that.createdBy,
            _that.approvedBy,
            _that.rejectedBy,
            _that.postedBy,
            _that.approvedAt,
            _that.rejectedAt,
            _that.postedAt,
            _that.rejectionReason,
            _that.lotNumber,
            _that.serialNumber,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StockAdjustment implements StockAdjustment {
  const _StockAdjustment(
      {required this.id,
      required this.itemId,
      required this.locationId,
      required this.quantity,
      required this.value,
      required this.type,
      required this.reason,
      required this.status,
      required this.createdAt,
      required this.updatedAt,
      this.referenceNumber,
      this.notes,
      this.createdBy,
      this.approvedBy,
      this.rejectedBy,
      this.postedBy,
      this.approvedAt,
      this.rejectedAt,
      this.postedAt,
      this.rejectionReason,
      this.lotNumber,
      this.serialNumber,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _StockAdjustment.fromJson(Map<String, dynamic> json) =>
      _$StockAdjustmentFromJson(json);

  @override
  final String id;
  @override
  final String itemId;
  @override
  final String locationId;
  @override
  final double quantity;
  @override
  final double value;
  @override
  final String type;
// 'increase', 'decrease'
  @override
  final String reason;
// 'damage', 'theft', 'obsolete', 'found', 'correction', 'other'
  @override
  final String status;
// 'draft', 'pending_approval', 'approved', 'rejected', 'posted'
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String? referenceNumber;
  @override
  final String? notes;
  @override
  final String? createdBy;
  @override
  final String? approvedBy;
  @override
  final String? rejectedBy;
  @override
  final String? postedBy;
  @override
  final DateTime? approvedAt;
  @override
  final DateTime? rejectedAt;
  @override
  final DateTime? postedAt;
  @override
  final String? rejectionReason;
  @override
  final String? lotNumber;
  @override
  final String? serialNumber;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of StockAdjustment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StockAdjustmentCopyWith<_StockAdjustment> get copyWith =>
      __$StockAdjustmentCopyWithImpl<_StockAdjustment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StockAdjustmentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StockAdjustment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.referenceNumber, referenceNumber) ||
                other.referenceNumber == referenceNumber) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy) &&
            (identical(other.rejectedBy, rejectedBy) ||
                other.rejectedBy == rejectedBy) &&
            (identical(other.postedBy, postedBy) ||
                other.postedBy == postedBy) &&
            (identical(other.approvedAt, approvedAt) ||
                other.approvedAt == approvedAt) &&
            (identical(other.rejectedAt, rejectedAt) ||
                other.rejectedAt == rejectedAt) &&
            (identical(other.postedAt, postedAt) ||
                other.postedAt == postedAt) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        itemId,
        locationId,
        quantity,
        value,
        type,
        reason,
        status,
        createdAt,
        updatedAt,
        referenceNumber,
        notes,
        createdBy,
        approvedBy,
        rejectedBy,
        postedBy,
        approvedAt,
        rejectedAt,
        postedAt,
        rejectionReason,
        lotNumber,
        serialNumber,
        const DeepCollectionEquality().hash(_metadata)
      ]);

  @override
  String toString() {
    return 'StockAdjustment(id: $id, itemId: $itemId, locationId: $locationId, quantity: $quantity, value: $value, type: $type, reason: $reason, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, referenceNumber: $referenceNumber, notes: $notes, createdBy: $createdBy, approvedBy: $approvedBy, rejectedBy: $rejectedBy, postedBy: $postedBy, approvedAt: $approvedAt, rejectedAt: $rejectedAt, postedAt: $postedAt, rejectionReason: $rejectionReason, lotNumber: $lotNumber, serialNumber: $serialNumber, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$StockAdjustmentCopyWith<$Res>
    implements $StockAdjustmentCopyWith<$Res> {
  factory _$StockAdjustmentCopyWith(
          _StockAdjustment value, $Res Function(_StockAdjustment) _then) =
      __$StockAdjustmentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String itemId,
      String locationId,
      double quantity,
      double value,
      String type,
      String reason,
      String status,
      DateTime createdAt,
      DateTime updatedAt,
      String? referenceNumber,
      String? notes,
      String? createdBy,
      String? approvedBy,
      String? rejectedBy,
      String? postedBy,
      DateTime? approvedAt,
      DateTime? rejectedAt,
      DateTime? postedAt,
      String? rejectionReason,
      String? lotNumber,
      String? serialNumber,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$StockAdjustmentCopyWithImpl<$Res>
    implements _$StockAdjustmentCopyWith<$Res> {
  __$StockAdjustmentCopyWithImpl(this._self, this._then);

  final _StockAdjustment _self;
  final $Res Function(_StockAdjustment) _then;

  /// Create a copy of StockAdjustment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? itemId = null,
    Object? locationId = null,
    Object? quantity = null,
    Object? value = null,
    Object? type = null,
    Object? reason = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? referenceNumber = freezed,
    Object? notes = freezed,
    Object? createdBy = freezed,
    Object? approvedBy = freezed,
    Object? rejectedBy = freezed,
    Object? postedBy = freezed,
    Object? approvedAt = freezed,
    Object? rejectedAt = freezed,
    Object? postedAt = freezed,
    Object? rejectionReason = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_StockAdjustment(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      referenceNumber: freezed == referenceNumber
          ? _self.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedBy: freezed == approvedBy
          ? _self.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectedBy: freezed == rejectedBy
          ? _self.rejectedBy
          : rejectedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      postedBy: freezed == postedBy
          ? _self.postedBy
          : postedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedAt: freezed == approvedAt
          ? _self.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _self.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      postedAt: freezed == postedAt
          ? _self.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectionReason: freezed == rejectionReason
          ? _self.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumber: freezed == lotNumber
          ? _self.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$StockAdjustmentItem {
  String get id;
  String get stockAdjustmentId;
  String get itemId;
  String get locationId;
  double get quantity;
  double get unitCost;
  double get totalValue;
  String? get reason;
  String? get notes;
  String? get lotNumber;
  String? get serialNumber;
  Map<String, dynamic>? get metadata;

  /// Create a copy of StockAdjustmentItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StockAdjustmentItemCopyWith<StockAdjustmentItem> get copyWith =>
      _$StockAdjustmentItemCopyWithImpl<StockAdjustmentItem>(
          this as StockAdjustmentItem, _$identity);

  /// Serializes this StockAdjustmentItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StockAdjustmentItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stockAdjustmentId, stockAdjustmentId) ||
                other.stockAdjustmentId == stockAdjustmentId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.totalValue, totalValue) ||
                other.totalValue == totalValue) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      stockAdjustmentId,
      itemId,
      locationId,
      quantity,
      unitCost,
      totalValue,
      reason,
      notes,
      lotNumber,
      serialNumber,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'StockAdjustmentItem(id: $id, stockAdjustmentId: $stockAdjustmentId, itemId: $itemId, locationId: $locationId, quantity: $quantity, unitCost: $unitCost, totalValue: $totalValue, reason: $reason, notes: $notes, lotNumber: $lotNumber, serialNumber: $serialNumber, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $StockAdjustmentItemCopyWith<$Res> {
  factory $StockAdjustmentItemCopyWith(
          StockAdjustmentItem value, $Res Function(StockAdjustmentItem) _then) =
      _$StockAdjustmentItemCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String stockAdjustmentId,
      String itemId,
      String locationId,
      double quantity,
      double unitCost,
      double totalValue,
      String? reason,
      String? notes,
      String? lotNumber,
      String? serialNumber,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$StockAdjustmentItemCopyWithImpl<$Res>
    implements $StockAdjustmentItemCopyWith<$Res> {
  _$StockAdjustmentItemCopyWithImpl(this._self, this._then);

  final StockAdjustmentItem _self;
  final $Res Function(StockAdjustmentItem) _then;

  /// Create a copy of StockAdjustmentItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stockAdjustmentId = null,
    Object? itemId = null,
    Object? locationId = null,
    Object? quantity = null,
    Object? unitCost = null,
    Object? totalValue = null,
    Object? reason = freezed,
    Object? notes = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stockAdjustmentId: null == stockAdjustmentId
          ? _self.stockAdjustmentId
          : stockAdjustmentId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unitCost: null == unitCost
          ? _self.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double,
      totalValue: null == totalValue
          ? _self.totalValue
          : totalValue // ignore: cast_nullable_to_non_nullable
              as double,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumber: freezed == lotNumber
          ? _self.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [StockAdjustmentItem].
extension StockAdjustmentItemPatterns on StockAdjustmentItem {
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
    TResult Function(_StockAdjustmentItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StockAdjustmentItem() when $default != null:
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
    TResult Function(_StockAdjustmentItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockAdjustmentItem():
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
    TResult? Function(_StockAdjustmentItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockAdjustmentItem() when $default != null:
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
            String stockAdjustmentId,
            String itemId,
            String locationId,
            double quantity,
            double unitCost,
            double totalValue,
            String? reason,
            String? notes,
            String? lotNumber,
            String? serialNumber,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StockAdjustmentItem() when $default != null:
        return $default(
            _that.id,
            _that.stockAdjustmentId,
            _that.itemId,
            _that.locationId,
            _that.quantity,
            _that.unitCost,
            _that.totalValue,
            _that.reason,
            _that.notes,
            _that.lotNumber,
            _that.serialNumber,
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
            String stockAdjustmentId,
            String itemId,
            String locationId,
            double quantity,
            double unitCost,
            double totalValue,
            String? reason,
            String? notes,
            String? lotNumber,
            String? serialNumber,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockAdjustmentItem():
        return $default(
            _that.id,
            _that.stockAdjustmentId,
            _that.itemId,
            _that.locationId,
            _that.quantity,
            _that.unitCost,
            _that.totalValue,
            _that.reason,
            _that.notes,
            _that.lotNumber,
            _that.serialNumber,
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
            String stockAdjustmentId,
            String itemId,
            String locationId,
            double quantity,
            double unitCost,
            double totalValue,
            String? reason,
            String? notes,
            String? lotNumber,
            String? serialNumber,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockAdjustmentItem() when $default != null:
        return $default(
            _that.id,
            _that.stockAdjustmentId,
            _that.itemId,
            _that.locationId,
            _that.quantity,
            _that.unitCost,
            _that.totalValue,
            _that.reason,
            _that.notes,
            _that.lotNumber,
            _that.serialNumber,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StockAdjustmentItem implements StockAdjustmentItem {
  const _StockAdjustmentItem(
      {required this.id,
      required this.stockAdjustmentId,
      required this.itemId,
      required this.locationId,
      required this.quantity,
      required this.unitCost,
      required this.totalValue,
      this.reason,
      this.notes,
      this.lotNumber,
      this.serialNumber,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _StockAdjustmentItem.fromJson(Map<String, dynamic> json) =>
      _$StockAdjustmentItemFromJson(json);

  @override
  final String id;
  @override
  final String stockAdjustmentId;
  @override
  final String itemId;
  @override
  final String locationId;
  @override
  final double quantity;
  @override
  final double unitCost;
  @override
  final double totalValue;
  @override
  final String? reason;
  @override
  final String? notes;
  @override
  final String? lotNumber;
  @override
  final String? serialNumber;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of StockAdjustmentItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StockAdjustmentItemCopyWith<_StockAdjustmentItem> get copyWith =>
      __$StockAdjustmentItemCopyWithImpl<_StockAdjustmentItem>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StockAdjustmentItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StockAdjustmentItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stockAdjustmentId, stockAdjustmentId) ||
                other.stockAdjustmentId == stockAdjustmentId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.totalValue, totalValue) ||
                other.totalValue == totalValue) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      stockAdjustmentId,
      itemId,
      locationId,
      quantity,
      unitCost,
      totalValue,
      reason,
      notes,
      lotNumber,
      serialNumber,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'StockAdjustmentItem(id: $id, stockAdjustmentId: $stockAdjustmentId, itemId: $itemId, locationId: $locationId, quantity: $quantity, unitCost: $unitCost, totalValue: $totalValue, reason: $reason, notes: $notes, lotNumber: $lotNumber, serialNumber: $serialNumber, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$StockAdjustmentItemCopyWith<$Res>
    implements $StockAdjustmentItemCopyWith<$Res> {
  factory _$StockAdjustmentItemCopyWith(_StockAdjustmentItem value,
          $Res Function(_StockAdjustmentItem) _then) =
      __$StockAdjustmentItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String stockAdjustmentId,
      String itemId,
      String locationId,
      double quantity,
      double unitCost,
      double totalValue,
      String? reason,
      String? notes,
      String? lotNumber,
      String? serialNumber,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$StockAdjustmentItemCopyWithImpl<$Res>
    implements _$StockAdjustmentItemCopyWith<$Res> {
  __$StockAdjustmentItemCopyWithImpl(this._self, this._then);

  final _StockAdjustmentItem _self;
  final $Res Function(_StockAdjustmentItem) _then;

  /// Create a copy of StockAdjustmentItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? stockAdjustmentId = null,
    Object? itemId = null,
    Object? locationId = null,
    Object? quantity = null,
    Object? unitCost = null,
    Object? totalValue = null,
    Object? reason = freezed,
    Object? notes = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_StockAdjustmentItem(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stockAdjustmentId: null == stockAdjustmentId
          ? _self.stockAdjustmentId
          : stockAdjustmentId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unitCost: null == unitCost
          ? _self.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double,
      totalValue: null == totalValue
          ? _self.totalValue
          : totalValue // ignore: cast_nullable_to_non_nullable
              as double,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumber: freezed == lotNumber
          ? _self.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$CreateStockAdjustmentRequest {
  String get itemId;
  String get locationId;
  double get quantity;
  String get type;
  String get reason;
  String? get referenceNumber;
  String? get notes;
  String? get lotNumber;
  String? get serialNumber;
  Map<String, dynamic>? get metadata;

  /// Create a copy of CreateStockAdjustmentRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateStockAdjustmentRequestCopyWith<CreateStockAdjustmentRequest>
      get copyWith => _$CreateStockAdjustmentRequestCopyWithImpl<
              CreateStockAdjustmentRequest>(
          this as CreateStockAdjustmentRequest, _$identity);

  /// Serializes this CreateStockAdjustmentRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateStockAdjustmentRequest &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.referenceNumber, referenceNumber) ||
                other.referenceNumber == referenceNumber) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemId,
      locationId,
      quantity,
      type,
      reason,
      referenceNumber,
      notes,
      lotNumber,
      serialNumber,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'CreateStockAdjustmentRequest(itemId: $itemId, locationId: $locationId, quantity: $quantity, type: $type, reason: $reason, referenceNumber: $referenceNumber, notes: $notes, lotNumber: $lotNumber, serialNumber: $serialNumber, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $CreateStockAdjustmentRequestCopyWith<$Res> {
  factory $CreateStockAdjustmentRequestCopyWith(
          CreateStockAdjustmentRequest value,
          $Res Function(CreateStockAdjustmentRequest) _then) =
      _$CreateStockAdjustmentRequestCopyWithImpl;
  @useResult
  $Res call(
      {String itemId,
      String locationId,
      double quantity,
      String type,
      String reason,
      String? referenceNumber,
      String? notes,
      String? lotNumber,
      String? serialNumber,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$CreateStockAdjustmentRequestCopyWithImpl<$Res>
    implements $CreateStockAdjustmentRequestCopyWith<$Res> {
  _$CreateStockAdjustmentRequestCopyWithImpl(this._self, this._then);

  final CreateStockAdjustmentRequest _self;
  final $Res Function(CreateStockAdjustmentRequest) _then;

  /// Create a copy of CreateStockAdjustmentRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? locationId = null,
    Object? quantity = null,
    Object? type = null,
    Object? reason = null,
    Object? referenceNumber = freezed,
    Object? notes = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      referenceNumber: freezed == referenceNumber
          ? _self.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumber: freezed == lotNumber
          ? _self.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateStockAdjustmentRequest].
extension CreateStockAdjustmentRequestPatterns on CreateStockAdjustmentRequest {
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
    TResult Function(_CreateStockAdjustmentRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateStockAdjustmentRequest() when $default != null:
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
    TResult Function(_CreateStockAdjustmentRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateStockAdjustmentRequest():
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
    TResult? Function(_CreateStockAdjustmentRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateStockAdjustmentRequest() when $default != null:
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
            String locationId,
            double quantity,
            String type,
            String reason,
            String? referenceNumber,
            String? notes,
            String? lotNumber,
            String? serialNumber,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateStockAdjustmentRequest() when $default != null:
        return $default(
            _that.itemId,
            _that.locationId,
            _that.quantity,
            _that.type,
            _that.reason,
            _that.referenceNumber,
            _that.notes,
            _that.lotNumber,
            _that.serialNumber,
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
            String itemId,
            String locationId,
            double quantity,
            String type,
            String reason,
            String? referenceNumber,
            String? notes,
            String? lotNumber,
            String? serialNumber,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateStockAdjustmentRequest():
        return $default(
            _that.itemId,
            _that.locationId,
            _that.quantity,
            _that.type,
            _that.reason,
            _that.referenceNumber,
            _that.notes,
            _that.lotNumber,
            _that.serialNumber,
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
            String itemId,
            String locationId,
            double quantity,
            String type,
            String reason,
            String? referenceNumber,
            String? notes,
            String? lotNumber,
            String? serialNumber,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateStockAdjustmentRequest() when $default != null:
        return $default(
            _that.itemId,
            _that.locationId,
            _that.quantity,
            _that.type,
            _that.reason,
            _that.referenceNumber,
            _that.notes,
            _that.lotNumber,
            _that.serialNumber,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateStockAdjustmentRequest implements CreateStockAdjustmentRequest {
  const _CreateStockAdjustmentRequest(
      {required this.itemId,
      required this.locationId,
      required this.quantity,
      required this.type,
      required this.reason,
      this.referenceNumber,
      this.notes,
      this.lotNumber,
      this.serialNumber,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _CreateStockAdjustmentRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateStockAdjustmentRequestFromJson(json);

  @override
  final String itemId;
  @override
  final String locationId;
  @override
  final double quantity;
  @override
  final String type;
  @override
  final String reason;
  @override
  final String? referenceNumber;
  @override
  final String? notes;
  @override
  final String? lotNumber;
  @override
  final String? serialNumber;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of CreateStockAdjustmentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateStockAdjustmentRequestCopyWith<_CreateStockAdjustmentRequest>
      get copyWith => __$CreateStockAdjustmentRequestCopyWithImpl<
          _CreateStockAdjustmentRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateStockAdjustmentRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateStockAdjustmentRequest &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.referenceNumber, referenceNumber) ||
                other.referenceNumber == referenceNumber) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemId,
      locationId,
      quantity,
      type,
      reason,
      referenceNumber,
      notes,
      lotNumber,
      serialNumber,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'CreateStockAdjustmentRequest(itemId: $itemId, locationId: $locationId, quantity: $quantity, type: $type, reason: $reason, referenceNumber: $referenceNumber, notes: $notes, lotNumber: $lotNumber, serialNumber: $serialNumber, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$CreateStockAdjustmentRequestCopyWith<$Res>
    implements $CreateStockAdjustmentRequestCopyWith<$Res> {
  factory _$CreateStockAdjustmentRequestCopyWith(
          _CreateStockAdjustmentRequest value,
          $Res Function(_CreateStockAdjustmentRequest) _then) =
      __$CreateStockAdjustmentRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String itemId,
      String locationId,
      double quantity,
      String type,
      String reason,
      String? referenceNumber,
      String? notes,
      String? lotNumber,
      String? serialNumber,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$CreateStockAdjustmentRequestCopyWithImpl<$Res>
    implements _$CreateStockAdjustmentRequestCopyWith<$Res> {
  __$CreateStockAdjustmentRequestCopyWithImpl(this._self, this._then);

  final _CreateStockAdjustmentRequest _self;
  final $Res Function(_CreateStockAdjustmentRequest) _then;

  /// Create a copy of CreateStockAdjustmentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? itemId = null,
    Object? locationId = null,
    Object? quantity = null,
    Object? type = null,
    Object? reason = null,
    Object? referenceNumber = freezed,
    Object? notes = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_CreateStockAdjustmentRequest(
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      referenceNumber: freezed == referenceNumber
          ? _self.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumber: freezed == lotNumber
          ? _self.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$UpdateStockAdjustmentRequest {
  double? get quantity;
  String? get reason;
  String? get referenceNumber;
  String? get notes;
  String? get lotNumber;
  String? get serialNumber;
  Map<String, dynamic>? get metadata;

  /// Create a copy of UpdateStockAdjustmentRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateStockAdjustmentRequestCopyWith<UpdateStockAdjustmentRequest>
      get copyWith => _$UpdateStockAdjustmentRequestCopyWithImpl<
              UpdateStockAdjustmentRequest>(
          this as UpdateStockAdjustmentRequest, _$identity);

  /// Serializes this UpdateStockAdjustmentRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateStockAdjustmentRequest &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.referenceNumber, referenceNumber) ||
                other.referenceNumber == referenceNumber) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      quantity,
      reason,
      referenceNumber,
      notes,
      lotNumber,
      serialNumber,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'UpdateStockAdjustmentRequest(quantity: $quantity, reason: $reason, referenceNumber: $referenceNumber, notes: $notes, lotNumber: $lotNumber, serialNumber: $serialNumber, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $UpdateStockAdjustmentRequestCopyWith<$Res> {
  factory $UpdateStockAdjustmentRequestCopyWith(
          UpdateStockAdjustmentRequest value,
          $Res Function(UpdateStockAdjustmentRequest) _then) =
      _$UpdateStockAdjustmentRequestCopyWithImpl;
  @useResult
  $Res call(
      {double? quantity,
      String? reason,
      String? referenceNumber,
      String? notes,
      String? lotNumber,
      String? serialNumber,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$UpdateStockAdjustmentRequestCopyWithImpl<$Res>
    implements $UpdateStockAdjustmentRequestCopyWith<$Res> {
  _$UpdateStockAdjustmentRequestCopyWithImpl(this._self, this._then);

  final UpdateStockAdjustmentRequest _self;
  final $Res Function(UpdateStockAdjustmentRequest) _then;

  /// Create a copy of UpdateStockAdjustmentRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = freezed,
    Object? reason = freezed,
    Object? referenceNumber = freezed,
    Object? notes = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      quantity: freezed == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceNumber: freezed == referenceNumber
          ? _self.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumber: freezed == lotNumber
          ? _self.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateStockAdjustmentRequest].
extension UpdateStockAdjustmentRequestPatterns on UpdateStockAdjustmentRequest {
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
    TResult Function(_UpdateStockAdjustmentRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateStockAdjustmentRequest() when $default != null:
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
    TResult Function(_UpdateStockAdjustmentRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateStockAdjustmentRequest():
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
    TResult? Function(_UpdateStockAdjustmentRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateStockAdjustmentRequest() when $default != null:
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
            double? quantity,
            String? reason,
            String? referenceNumber,
            String? notes,
            String? lotNumber,
            String? serialNumber,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateStockAdjustmentRequest() when $default != null:
        return $default(_that.quantity, _that.reason, _that.referenceNumber,
            _that.notes, _that.lotNumber, _that.serialNumber, _that.metadata);
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
            double? quantity,
            String? reason,
            String? referenceNumber,
            String? notes,
            String? lotNumber,
            String? serialNumber,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateStockAdjustmentRequest():
        return $default(_that.quantity, _that.reason, _that.referenceNumber,
            _that.notes, _that.lotNumber, _that.serialNumber, _that.metadata);
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
            double? quantity,
            String? reason,
            String? referenceNumber,
            String? notes,
            String? lotNumber,
            String? serialNumber,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateStockAdjustmentRequest() when $default != null:
        return $default(_that.quantity, _that.reason, _that.referenceNumber,
            _that.notes, _that.lotNumber, _that.serialNumber, _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateStockAdjustmentRequest implements UpdateStockAdjustmentRequest {
  const _UpdateStockAdjustmentRequest(
      {this.quantity,
      this.reason,
      this.referenceNumber,
      this.notes,
      this.lotNumber,
      this.serialNumber,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _UpdateStockAdjustmentRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateStockAdjustmentRequestFromJson(json);

  @override
  final double? quantity;
  @override
  final String? reason;
  @override
  final String? referenceNumber;
  @override
  final String? notes;
  @override
  final String? lotNumber;
  @override
  final String? serialNumber;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of UpdateStockAdjustmentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateStockAdjustmentRequestCopyWith<_UpdateStockAdjustmentRequest>
      get copyWith => __$UpdateStockAdjustmentRequestCopyWithImpl<
          _UpdateStockAdjustmentRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateStockAdjustmentRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateStockAdjustmentRequest &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.referenceNumber, referenceNumber) ||
                other.referenceNumber == referenceNumber) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      quantity,
      reason,
      referenceNumber,
      notes,
      lotNumber,
      serialNumber,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'UpdateStockAdjustmentRequest(quantity: $quantity, reason: $reason, referenceNumber: $referenceNumber, notes: $notes, lotNumber: $lotNumber, serialNumber: $serialNumber, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$UpdateStockAdjustmentRequestCopyWith<$Res>
    implements $UpdateStockAdjustmentRequestCopyWith<$Res> {
  factory _$UpdateStockAdjustmentRequestCopyWith(
          _UpdateStockAdjustmentRequest value,
          $Res Function(_UpdateStockAdjustmentRequest) _then) =
      __$UpdateStockAdjustmentRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double? quantity,
      String? reason,
      String? referenceNumber,
      String? notes,
      String? lotNumber,
      String? serialNumber,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$UpdateStockAdjustmentRequestCopyWithImpl<$Res>
    implements _$UpdateStockAdjustmentRequestCopyWith<$Res> {
  __$UpdateStockAdjustmentRequestCopyWithImpl(this._self, this._then);

  final _UpdateStockAdjustmentRequest _self;
  final $Res Function(_UpdateStockAdjustmentRequest) _then;

  /// Create a copy of UpdateStockAdjustmentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? quantity = freezed,
    Object? reason = freezed,
    Object? referenceNumber = freezed,
    Object? notes = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_UpdateStockAdjustmentRequest(
      quantity: freezed == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceNumber: freezed == referenceNumber
          ? _self.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumber: freezed == lotNumber
          ? _self.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$StockAdjustmentFilters {
  String? get itemId;
  String? get locationId;
  String? get type;
  String? get reason;
  String? get status;
  String? get createdBy;
  String? get approvedBy;
  DateTime? get createdAfter;
  DateTime? get createdBefore;
  DateTime? get approvedAfter;
  DateTime? get approvedBefore;
  DateTime? get postedAfter;
  DateTime? get postedBefore;
  int? get page;
  int? get limit;
  String? get sortBy;
  String? get sortOrder;

  /// Create a copy of StockAdjustmentFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StockAdjustmentFiltersCopyWith<StockAdjustmentFilters> get copyWith =>
      _$StockAdjustmentFiltersCopyWithImpl<StockAdjustmentFilters>(
          this as StockAdjustmentFilters, _$identity);

  /// Serializes this StockAdjustmentFilters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StockAdjustmentFilters &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy) &&
            (identical(other.createdAfter, createdAfter) ||
                other.createdAfter == createdAfter) &&
            (identical(other.createdBefore, createdBefore) ||
                other.createdBefore == createdBefore) &&
            (identical(other.approvedAfter, approvedAfter) ||
                other.approvedAfter == approvedAfter) &&
            (identical(other.approvedBefore, approvedBefore) ||
                other.approvedBefore == approvedBefore) &&
            (identical(other.postedAfter, postedAfter) ||
                other.postedAfter == postedAfter) &&
            (identical(other.postedBefore, postedBefore) ||
                other.postedBefore == postedBefore) &&
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
      itemId,
      locationId,
      type,
      reason,
      status,
      createdBy,
      approvedBy,
      createdAfter,
      createdBefore,
      approvedAfter,
      approvedBefore,
      postedAfter,
      postedBefore,
      page,
      limit,
      sortBy,
      sortOrder);

  @override
  String toString() {
    return 'StockAdjustmentFilters(itemId: $itemId, locationId: $locationId, type: $type, reason: $reason, status: $status, createdBy: $createdBy, approvedBy: $approvedBy, createdAfter: $createdAfter, createdBefore: $createdBefore, approvedAfter: $approvedAfter, approvedBefore: $approvedBefore, postedAfter: $postedAfter, postedBefore: $postedBefore, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class $StockAdjustmentFiltersCopyWith<$Res> {
  factory $StockAdjustmentFiltersCopyWith(StockAdjustmentFilters value,
          $Res Function(StockAdjustmentFilters) _then) =
      _$StockAdjustmentFiltersCopyWithImpl;
  @useResult
  $Res call(
      {String? itemId,
      String? locationId,
      String? type,
      String? reason,
      String? status,
      String? createdBy,
      String? approvedBy,
      DateTime? createdAfter,
      DateTime? createdBefore,
      DateTime? approvedAfter,
      DateTime? approvedBefore,
      DateTime? postedAfter,
      DateTime? postedBefore,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class _$StockAdjustmentFiltersCopyWithImpl<$Res>
    implements $StockAdjustmentFiltersCopyWith<$Res> {
  _$StockAdjustmentFiltersCopyWithImpl(this._self, this._then);

  final StockAdjustmentFilters _self;
  final $Res Function(StockAdjustmentFilters) _then;

  /// Create a copy of StockAdjustmentFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = freezed,
    Object? locationId = freezed,
    Object? type = freezed,
    Object? reason = freezed,
    Object? status = freezed,
    Object? createdBy = freezed,
    Object? approvedBy = freezed,
    Object? createdAfter = freezed,
    Object? createdBefore = freezed,
    Object? approvedAfter = freezed,
    Object? approvedBefore = freezed,
    Object? postedAfter = freezed,
    Object? postedBefore = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_self.copyWith(
      itemId: freezed == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      locationId: freezed == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedBy: freezed == approvedBy
          ? _self.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAfter: freezed == createdAfter
          ? _self.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _self.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAfter: freezed == approvedAfter
          ? _self.approvedAfter
          : approvedAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedBefore: freezed == approvedBefore
          ? _self.approvedBefore
          : approvedBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      postedAfter: freezed == postedAfter
          ? _self.postedAfter
          : postedAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      postedBefore: freezed == postedBefore
          ? _self.postedBefore
          : postedBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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

/// Adds pattern-matching-related methods to [StockAdjustmentFilters].
extension StockAdjustmentFiltersPatterns on StockAdjustmentFilters {
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
    TResult Function(_StockAdjustmentFilters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StockAdjustmentFilters() when $default != null:
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
    TResult Function(_StockAdjustmentFilters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockAdjustmentFilters():
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
    TResult? Function(_StockAdjustmentFilters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockAdjustmentFilters() when $default != null:
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
            String? itemId,
            String? locationId,
            String? type,
            String? reason,
            String? status,
            String? createdBy,
            String? approvedBy,
            DateTime? createdAfter,
            DateTime? createdBefore,
            DateTime? approvedAfter,
            DateTime? approvedBefore,
            DateTime? postedAfter,
            DateTime? postedBefore,
            int? page,
            int? limit,
            String? sortBy,
            String? sortOrder)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StockAdjustmentFilters() when $default != null:
        return $default(
            _that.itemId,
            _that.locationId,
            _that.type,
            _that.reason,
            _that.status,
            _that.createdBy,
            _that.approvedBy,
            _that.createdAfter,
            _that.createdBefore,
            _that.approvedAfter,
            _that.approvedBefore,
            _that.postedAfter,
            _that.postedBefore,
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
            String? itemId,
            String? locationId,
            String? type,
            String? reason,
            String? status,
            String? createdBy,
            String? approvedBy,
            DateTime? createdAfter,
            DateTime? createdBefore,
            DateTime? approvedAfter,
            DateTime? approvedBefore,
            DateTime? postedAfter,
            DateTime? postedBefore,
            int? page,
            int? limit,
            String? sortBy,
            String? sortOrder)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockAdjustmentFilters():
        return $default(
            _that.itemId,
            _that.locationId,
            _that.type,
            _that.reason,
            _that.status,
            _that.createdBy,
            _that.approvedBy,
            _that.createdAfter,
            _that.createdBefore,
            _that.approvedAfter,
            _that.approvedBefore,
            _that.postedAfter,
            _that.postedBefore,
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
            String? itemId,
            String? locationId,
            String? type,
            String? reason,
            String? status,
            String? createdBy,
            String? approvedBy,
            DateTime? createdAfter,
            DateTime? createdBefore,
            DateTime? approvedAfter,
            DateTime? approvedBefore,
            DateTime? postedAfter,
            DateTime? postedBefore,
            int? page,
            int? limit,
            String? sortBy,
            String? sortOrder)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockAdjustmentFilters() when $default != null:
        return $default(
            _that.itemId,
            _that.locationId,
            _that.type,
            _that.reason,
            _that.status,
            _that.createdBy,
            _that.approvedBy,
            _that.createdAfter,
            _that.createdBefore,
            _that.approvedAfter,
            _that.approvedBefore,
            _that.postedAfter,
            _that.postedBefore,
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
class _StockAdjustmentFilters extends StockAdjustmentFilters {
  const _StockAdjustmentFilters(
      {this.itemId,
      this.locationId,
      this.type,
      this.reason,
      this.status,
      this.createdBy,
      this.approvedBy,
      this.createdAfter,
      this.createdBefore,
      this.approvedAfter,
      this.approvedBefore,
      this.postedAfter,
      this.postedBefore,
      this.page,
      this.limit,
      this.sortBy,
      this.sortOrder})
      : super._();
  factory _StockAdjustmentFilters.fromJson(Map<String, dynamic> json) =>
      _$StockAdjustmentFiltersFromJson(json);

  @override
  final String? itemId;
  @override
  final String? locationId;
  @override
  final String? type;
  @override
  final String? reason;
  @override
  final String? status;
  @override
  final String? createdBy;
  @override
  final String? approvedBy;
  @override
  final DateTime? createdAfter;
  @override
  final DateTime? createdBefore;
  @override
  final DateTime? approvedAfter;
  @override
  final DateTime? approvedBefore;
  @override
  final DateTime? postedAfter;
  @override
  final DateTime? postedBefore;
  @override
  final int? page;
  @override
  final int? limit;
  @override
  final String? sortBy;
  @override
  final String? sortOrder;

  /// Create a copy of StockAdjustmentFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StockAdjustmentFiltersCopyWith<_StockAdjustmentFilters> get copyWith =>
      __$StockAdjustmentFiltersCopyWithImpl<_StockAdjustmentFilters>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StockAdjustmentFiltersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StockAdjustmentFilters &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy) &&
            (identical(other.createdAfter, createdAfter) ||
                other.createdAfter == createdAfter) &&
            (identical(other.createdBefore, createdBefore) ||
                other.createdBefore == createdBefore) &&
            (identical(other.approvedAfter, approvedAfter) ||
                other.approvedAfter == approvedAfter) &&
            (identical(other.approvedBefore, approvedBefore) ||
                other.approvedBefore == approvedBefore) &&
            (identical(other.postedAfter, postedAfter) ||
                other.postedAfter == postedAfter) &&
            (identical(other.postedBefore, postedBefore) ||
                other.postedBefore == postedBefore) &&
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
      itemId,
      locationId,
      type,
      reason,
      status,
      createdBy,
      approvedBy,
      createdAfter,
      createdBefore,
      approvedAfter,
      approvedBefore,
      postedAfter,
      postedBefore,
      page,
      limit,
      sortBy,
      sortOrder);

  @override
  String toString() {
    return 'StockAdjustmentFilters(itemId: $itemId, locationId: $locationId, type: $type, reason: $reason, status: $status, createdBy: $createdBy, approvedBy: $approvedBy, createdAfter: $createdAfter, createdBefore: $createdBefore, approvedAfter: $approvedAfter, approvedBefore: $approvedBefore, postedAfter: $postedAfter, postedBefore: $postedBefore, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class _$StockAdjustmentFiltersCopyWith<$Res>
    implements $StockAdjustmentFiltersCopyWith<$Res> {
  factory _$StockAdjustmentFiltersCopyWith(_StockAdjustmentFilters value,
          $Res Function(_StockAdjustmentFilters) _then) =
      __$StockAdjustmentFiltersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? itemId,
      String? locationId,
      String? type,
      String? reason,
      String? status,
      String? createdBy,
      String? approvedBy,
      DateTime? createdAfter,
      DateTime? createdBefore,
      DateTime? approvedAfter,
      DateTime? approvedBefore,
      DateTime? postedAfter,
      DateTime? postedBefore,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class __$StockAdjustmentFiltersCopyWithImpl<$Res>
    implements _$StockAdjustmentFiltersCopyWith<$Res> {
  __$StockAdjustmentFiltersCopyWithImpl(this._self, this._then);

  final _StockAdjustmentFilters _self;
  final $Res Function(_StockAdjustmentFilters) _then;

  /// Create a copy of StockAdjustmentFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? itemId = freezed,
    Object? locationId = freezed,
    Object? type = freezed,
    Object? reason = freezed,
    Object? status = freezed,
    Object? createdBy = freezed,
    Object? approvedBy = freezed,
    Object? createdAfter = freezed,
    Object? createdBefore = freezed,
    Object? approvedAfter = freezed,
    Object? approvedBefore = freezed,
    Object? postedAfter = freezed,
    Object? postedBefore = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_StockAdjustmentFilters(
      itemId: freezed == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      locationId: freezed == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedBy: freezed == approvedBy
          ? _self.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAfter: freezed == createdAfter
          ? _self.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _self.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAfter: freezed == approvedAfter
          ? _self.approvedAfter
          : approvedAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedBefore: freezed == approvedBefore
          ? _self.approvedBefore
          : approvedBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      postedAfter: freezed == postedAfter
          ? _self.postedAfter
          : postedAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      postedBefore: freezed == postedBefore
          ? _self.postedBefore
          : postedBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
mixin _$ApproveStockAdjustmentRequest {
  String? get notes;

  /// Create a copy of ApproveStockAdjustmentRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApproveStockAdjustmentRequestCopyWith<ApproveStockAdjustmentRequest>
      get copyWith => _$ApproveStockAdjustmentRequestCopyWithImpl<
              ApproveStockAdjustmentRequest>(
          this as ApproveStockAdjustmentRequest, _$identity);

  /// Serializes this ApproveStockAdjustmentRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApproveStockAdjustmentRequest &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, notes);

  @override
  String toString() {
    return 'ApproveStockAdjustmentRequest(notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $ApproveStockAdjustmentRequestCopyWith<$Res> {
  factory $ApproveStockAdjustmentRequestCopyWith(
          ApproveStockAdjustmentRequest value,
          $Res Function(ApproveStockAdjustmentRequest) _then) =
      _$ApproveStockAdjustmentRequestCopyWithImpl;
  @useResult
  $Res call({String? notes});
}

/// @nodoc
class _$ApproveStockAdjustmentRequestCopyWithImpl<$Res>
    implements $ApproveStockAdjustmentRequestCopyWith<$Res> {
  _$ApproveStockAdjustmentRequestCopyWithImpl(this._self, this._then);

  final ApproveStockAdjustmentRequest _self;
  final $Res Function(ApproveStockAdjustmentRequest) _then;

  /// Create a copy of ApproveStockAdjustmentRequest
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

/// Adds pattern-matching-related methods to [ApproveStockAdjustmentRequest].
extension ApproveStockAdjustmentRequestPatterns
    on ApproveStockAdjustmentRequest {
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
    TResult Function(_ApproveStockAdjustmentRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ApproveStockAdjustmentRequest() when $default != null:
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
    TResult Function(_ApproveStockAdjustmentRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApproveStockAdjustmentRequest():
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
    TResult? Function(_ApproveStockAdjustmentRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApproveStockAdjustmentRequest() when $default != null:
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
      case _ApproveStockAdjustmentRequest() when $default != null:
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
      case _ApproveStockAdjustmentRequest():
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
      case _ApproveStockAdjustmentRequest() when $default != null:
        return $default(_that.notes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ApproveStockAdjustmentRequest implements ApproveStockAdjustmentRequest {
  const _ApproveStockAdjustmentRequest({this.notes});
  factory _ApproveStockAdjustmentRequest.fromJson(Map<String, dynamic> json) =>
      _$ApproveStockAdjustmentRequestFromJson(json);

  @override
  final String? notes;

  /// Create a copy of ApproveStockAdjustmentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ApproveStockAdjustmentRequestCopyWith<_ApproveStockAdjustmentRequest>
      get copyWith => __$ApproveStockAdjustmentRequestCopyWithImpl<
          _ApproveStockAdjustmentRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ApproveStockAdjustmentRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApproveStockAdjustmentRequest &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, notes);

  @override
  String toString() {
    return 'ApproveStockAdjustmentRequest(notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$ApproveStockAdjustmentRequestCopyWith<$Res>
    implements $ApproveStockAdjustmentRequestCopyWith<$Res> {
  factory _$ApproveStockAdjustmentRequestCopyWith(
          _ApproveStockAdjustmentRequest value,
          $Res Function(_ApproveStockAdjustmentRequest) _then) =
      __$ApproveStockAdjustmentRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String? notes});
}

/// @nodoc
class __$ApproveStockAdjustmentRequestCopyWithImpl<$Res>
    implements _$ApproveStockAdjustmentRequestCopyWith<$Res> {
  __$ApproveStockAdjustmentRequestCopyWithImpl(this._self, this._then);

  final _ApproveStockAdjustmentRequest _self;
  final $Res Function(_ApproveStockAdjustmentRequest) _then;

  /// Create a copy of ApproveStockAdjustmentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? notes = freezed,
  }) {
    return _then(_ApproveStockAdjustmentRequest(
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$RejectStockAdjustmentRequest {
  String get reason;
  String? get notes;

  /// Create a copy of RejectStockAdjustmentRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RejectStockAdjustmentRequestCopyWith<RejectStockAdjustmentRequest>
      get copyWith => _$RejectStockAdjustmentRequestCopyWithImpl<
              RejectStockAdjustmentRequest>(
          this as RejectStockAdjustmentRequest, _$identity);

  /// Serializes this RejectStockAdjustmentRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RejectStockAdjustmentRequest &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason, notes);

  @override
  String toString() {
    return 'RejectStockAdjustmentRequest(reason: $reason, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $RejectStockAdjustmentRequestCopyWith<$Res> {
  factory $RejectStockAdjustmentRequestCopyWith(
          RejectStockAdjustmentRequest value,
          $Res Function(RejectStockAdjustmentRequest) _then) =
      _$RejectStockAdjustmentRequestCopyWithImpl;
  @useResult
  $Res call({String reason, String? notes});
}

/// @nodoc
class _$RejectStockAdjustmentRequestCopyWithImpl<$Res>
    implements $RejectStockAdjustmentRequestCopyWith<$Res> {
  _$RejectStockAdjustmentRequestCopyWithImpl(this._self, this._then);

  final RejectStockAdjustmentRequest _self;
  final $Res Function(RejectStockAdjustmentRequest) _then;

  /// Create a copy of RejectStockAdjustmentRequest
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

/// Adds pattern-matching-related methods to [RejectStockAdjustmentRequest].
extension RejectStockAdjustmentRequestPatterns on RejectStockAdjustmentRequest {
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
    TResult Function(_RejectStockAdjustmentRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RejectStockAdjustmentRequest() when $default != null:
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
    TResult Function(_RejectStockAdjustmentRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RejectStockAdjustmentRequest():
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
    TResult? Function(_RejectStockAdjustmentRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RejectStockAdjustmentRequest() when $default != null:
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
      case _RejectStockAdjustmentRequest() when $default != null:
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
      case _RejectStockAdjustmentRequest():
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
      case _RejectStockAdjustmentRequest() when $default != null:
        return $default(_that.reason, _that.notes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RejectStockAdjustmentRequest implements RejectStockAdjustmentRequest {
  const _RejectStockAdjustmentRequest({required this.reason, this.notes});
  factory _RejectStockAdjustmentRequest.fromJson(Map<String, dynamic> json) =>
      _$RejectStockAdjustmentRequestFromJson(json);

  @override
  final String reason;
  @override
  final String? notes;

  /// Create a copy of RejectStockAdjustmentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RejectStockAdjustmentRequestCopyWith<_RejectStockAdjustmentRequest>
      get copyWith => __$RejectStockAdjustmentRequestCopyWithImpl<
          _RejectStockAdjustmentRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RejectStockAdjustmentRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RejectStockAdjustmentRequest &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason, notes);

  @override
  String toString() {
    return 'RejectStockAdjustmentRequest(reason: $reason, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$RejectStockAdjustmentRequestCopyWith<$Res>
    implements $RejectStockAdjustmentRequestCopyWith<$Res> {
  factory _$RejectStockAdjustmentRequestCopyWith(
          _RejectStockAdjustmentRequest value,
          $Res Function(_RejectStockAdjustmentRequest) _then) =
      __$RejectStockAdjustmentRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String reason, String? notes});
}

/// @nodoc
class __$RejectStockAdjustmentRequestCopyWithImpl<$Res>
    implements _$RejectStockAdjustmentRequestCopyWith<$Res> {
  __$RejectStockAdjustmentRequestCopyWithImpl(this._self, this._then);

  final _RejectStockAdjustmentRequest _self;
  final $Res Function(_RejectStockAdjustmentRequest) _then;

  /// Create a copy of RejectStockAdjustmentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reason = null,
    Object? notes = freezed,
  }) {
    return _then(_RejectStockAdjustmentRequest(
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
