// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_reservation_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StockReservation {
  String get id;
  String get itemId;
  String get locationId;
  double get quantity;
  double get reservedQuantity;
  double get consumedQuantity;
  String get status; // 'active', 'consumed', 'released', 'expired'
  String get purpose; // 'sales_order', 'production_order', 'transfer', 'custom'
  DateTime get createdAt;
  DateTime get updatedAt;
  String? get referenceId;
  String? get referenceType;
  String? get notes;
  DateTime? get expiresAt;
  DateTime? get releasedAt;
  DateTime? get consumedAt;
  Map<String, dynamic>? get metadata;

  /// Create a copy of StockReservation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StockReservationCopyWith<StockReservation> get copyWith =>
      _$StockReservationCopyWithImpl<StockReservation>(
          this as StockReservation, _$identity);

  /// Serializes this StockReservation to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StockReservation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.reservedQuantity, reservedQuantity) ||
                other.reservedQuantity == reservedQuantity) &&
            (identical(other.consumedQuantity, consumedQuantity) ||
                other.consumedQuantity == consumedQuantity) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.referenceType, referenceType) ||
                other.referenceType == referenceType) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.releasedAt, releasedAt) ||
                other.releasedAt == releasedAt) &&
            (identical(other.consumedAt, consumedAt) ||
                other.consumedAt == consumedAt) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      itemId,
      locationId,
      quantity,
      reservedQuantity,
      consumedQuantity,
      status,
      purpose,
      createdAt,
      updatedAt,
      referenceId,
      referenceType,
      notes,
      expiresAt,
      releasedAt,
      consumedAt,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'StockReservation(id: $id, itemId: $itemId, locationId: $locationId, quantity: $quantity, reservedQuantity: $reservedQuantity, consumedQuantity: $consumedQuantity, status: $status, purpose: $purpose, createdAt: $createdAt, updatedAt: $updatedAt, referenceId: $referenceId, referenceType: $referenceType, notes: $notes, expiresAt: $expiresAt, releasedAt: $releasedAt, consumedAt: $consumedAt, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $StockReservationCopyWith<$Res> {
  factory $StockReservationCopyWith(
          StockReservation value, $Res Function(StockReservation) _then) =
      _$StockReservationCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String itemId,
      String locationId,
      double quantity,
      double reservedQuantity,
      double consumedQuantity,
      String status,
      String purpose,
      DateTime createdAt,
      DateTime updatedAt,
      String? referenceId,
      String? referenceType,
      String? notes,
      DateTime? expiresAt,
      DateTime? releasedAt,
      DateTime? consumedAt,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$StockReservationCopyWithImpl<$Res>
    implements $StockReservationCopyWith<$Res> {
  _$StockReservationCopyWithImpl(this._self, this._then);

  final StockReservation _self;
  final $Res Function(StockReservation) _then;

  /// Create a copy of StockReservation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? itemId = null,
    Object? locationId = null,
    Object? quantity = null,
    Object? reservedQuantity = null,
    Object? consumedQuantity = null,
    Object? status = null,
    Object? purpose = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? referenceId = freezed,
    Object? referenceType = freezed,
    Object? notes = freezed,
    Object? expiresAt = freezed,
    Object? releasedAt = freezed,
    Object? consumedAt = freezed,
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
      reservedQuantity: null == reservedQuantity
          ? _self.reservedQuantity
          : reservedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      consumedQuantity: null == consumedQuantity
          ? _self.consumedQuantity
          : consumedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
          ? _self.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      referenceId: freezed == referenceId
          ? _self.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceType: freezed == referenceType
          ? _self.referenceType
          : referenceType // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      releasedAt: freezed == releasedAt
          ? _self.releasedAt
          : releasedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      consumedAt: freezed == consumedAt
          ? _self.consumedAt
          : consumedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [StockReservation].
extension StockReservationPatterns on StockReservation {
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
    TResult Function(_StockReservation value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StockReservation() when $default != null:
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
    TResult Function(_StockReservation value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockReservation():
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
    TResult? Function(_StockReservation value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockReservation() when $default != null:
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
            double reservedQuantity,
            double consumedQuantity,
            String status,
            String purpose,
            DateTime createdAt,
            DateTime updatedAt,
            String? referenceId,
            String? referenceType,
            String? notes,
            DateTime? expiresAt,
            DateTime? releasedAt,
            DateTime? consumedAt,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StockReservation() when $default != null:
        return $default(
            _that.id,
            _that.itemId,
            _that.locationId,
            _that.quantity,
            _that.reservedQuantity,
            _that.consumedQuantity,
            _that.status,
            _that.purpose,
            _that.createdAt,
            _that.updatedAt,
            _that.referenceId,
            _that.referenceType,
            _that.notes,
            _that.expiresAt,
            _that.releasedAt,
            _that.consumedAt,
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
            double reservedQuantity,
            double consumedQuantity,
            String status,
            String purpose,
            DateTime createdAt,
            DateTime updatedAt,
            String? referenceId,
            String? referenceType,
            String? notes,
            DateTime? expiresAt,
            DateTime? releasedAt,
            DateTime? consumedAt,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockReservation():
        return $default(
            _that.id,
            _that.itemId,
            _that.locationId,
            _that.quantity,
            _that.reservedQuantity,
            _that.consumedQuantity,
            _that.status,
            _that.purpose,
            _that.createdAt,
            _that.updatedAt,
            _that.referenceId,
            _that.referenceType,
            _that.notes,
            _that.expiresAt,
            _that.releasedAt,
            _that.consumedAt,
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
            double reservedQuantity,
            double consumedQuantity,
            String status,
            String purpose,
            DateTime createdAt,
            DateTime updatedAt,
            String? referenceId,
            String? referenceType,
            String? notes,
            DateTime? expiresAt,
            DateTime? releasedAt,
            DateTime? consumedAt,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockReservation() when $default != null:
        return $default(
            _that.id,
            _that.itemId,
            _that.locationId,
            _that.quantity,
            _that.reservedQuantity,
            _that.consumedQuantity,
            _that.status,
            _that.purpose,
            _that.createdAt,
            _that.updatedAt,
            _that.referenceId,
            _that.referenceType,
            _that.notes,
            _that.expiresAt,
            _that.releasedAt,
            _that.consumedAt,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StockReservation implements StockReservation {
  const _StockReservation(
      {required this.id,
      required this.itemId,
      required this.locationId,
      required this.quantity,
      required this.reservedQuantity,
      required this.consumedQuantity,
      required this.status,
      required this.purpose,
      required this.createdAt,
      required this.updatedAt,
      this.referenceId,
      this.referenceType,
      this.notes,
      this.expiresAt,
      this.releasedAt,
      this.consumedAt,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _StockReservation.fromJson(Map<String, dynamic> json) =>
      _$StockReservationFromJson(json);

  @override
  final String id;
  @override
  final String itemId;
  @override
  final String locationId;
  @override
  final double quantity;
  @override
  final double reservedQuantity;
  @override
  final double consumedQuantity;
  @override
  final String status;
// 'active', 'consumed', 'released', 'expired'
  @override
  final String purpose;
// 'sales_order', 'production_order', 'transfer', 'custom'
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String? referenceId;
  @override
  final String? referenceType;
  @override
  final String? notes;
  @override
  final DateTime? expiresAt;
  @override
  final DateTime? releasedAt;
  @override
  final DateTime? consumedAt;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of StockReservation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StockReservationCopyWith<_StockReservation> get copyWith =>
      __$StockReservationCopyWithImpl<_StockReservation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StockReservationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StockReservation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.reservedQuantity, reservedQuantity) ||
                other.reservedQuantity == reservedQuantity) &&
            (identical(other.consumedQuantity, consumedQuantity) ||
                other.consumedQuantity == consumedQuantity) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.referenceType, referenceType) ||
                other.referenceType == referenceType) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.releasedAt, releasedAt) ||
                other.releasedAt == releasedAt) &&
            (identical(other.consumedAt, consumedAt) ||
                other.consumedAt == consumedAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      itemId,
      locationId,
      quantity,
      reservedQuantity,
      consumedQuantity,
      status,
      purpose,
      createdAt,
      updatedAt,
      referenceId,
      referenceType,
      notes,
      expiresAt,
      releasedAt,
      consumedAt,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'StockReservation(id: $id, itemId: $itemId, locationId: $locationId, quantity: $quantity, reservedQuantity: $reservedQuantity, consumedQuantity: $consumedQuantity, status: $status, purpose: $purpose, createdAt: $createdAt, updatedAt: $updatedAt, referenceId: $referenceId, referenceType: $referenceType, notes: $notes, expiresAt: $expiresAt, releasedAt: $releasedAt, consumedAt: $consumedAt, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$StockReservationCopyWith<$Res>
    implements $StockReservationCopyWith<$Res> {
  factory _$StockReservationCopyWith(
          _StockReservation value, $Res Function(_StockReservation) _then) =
      __$StockReservationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String itemId,
      String locationId,
      double quantity,
      double reservedQuantity,
      double consumedQuantity,
      String status,
      String purpose,
      DateTime createdAt,
      DateTime updatedAt,
      String? referenceId,
      String? referenceType,
      String? notes,
      DateTime? expiresAt,
      DateTime? releasedAt,
      DateTime? consumedAt,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$StockReservationCopyWithImpl<$Res>
    implements _$StockReservationCopyWith<$Res> {
  __$StockReservationCopyWithImpl(this._self, this._then);

  final _StockReservation _self;
  final $Res Function(_StockReservation) _then;

  /// Create a copy of StockReservation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? itemId = null,
    Object? locationId = null,
    Object? quantity = null,
    Object? reservedQuantity = null,
    Object? consumedQuantity = null,
    Object? status = null,
    Object? purpose = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? referenceId = freezed,
    Object? referenceType = freezed,
    Object? notes = freezed,
    Object? expiresAt = freezed,
    Object? releasedAt = freezed,
    Object? consumedAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_StockReservation(
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
      reservedQuantity: null == reservedQuantity
          ? _self.reservedQuantity
          : reservedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      consumedQuantity: null == consumedQuantity
          ? _self.consumedQuantity
          : consumedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
          ? _self.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      referenceId: freezed == referenceId
          ? _self.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceType: freezed == referenceType
          ? _self.referenceType
          : referenceType // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      releasedAt: freezed == releasedAt
          ? _self.releasedAt
          : releasedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      consumedAt: freezed == consumedAt
          ? _self.consumedAt
          : consumedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$CreateStockReservationRequest {
  String get itemId;
  String get locationId;
  double get quantity;
  String get purpose;
  String? get referenceId;
  String? get referenceType;
  String? get notes;
  DateTime? get expiresAt;
  Map<String, dynamic>? get metadata;

  /// Create a copy of CreateStockReservationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateStockReservationRequestCopyWith<CreateStockReservationRequest>
      get copyWith => _$CreateStockReservationRequestCopyWithImpl<
              CreateStockReservationRequest>(
          this as CreateStockReservationRequest, _$identity);

  /// Serializes this CreateStockReservationRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateStockReservationRequest &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.referenceType, referenceType) ||
                other.referenceType == referenceType) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemId,
      locationId,
      quantity,
      purpose,
      referenceId,
      referenceType,
      notes,
      expiresAt,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'CreateStockReservationRequest(itemId: $itemId, locationId: $locationId, quantity: $quantity, purpose: $purpose, referenceId: $referenceId, referenceType: $referenceType, notes: $notes, expiresAt: $expiresAt, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $CreateStockReservationRequestCopyWith<$Res> {
  factory $CreateStockReservationRequestCopyWith(
          CreateStockReservationRequest value,
          $Res Function(CreateStockReservationRequest) _then) =
      _$CreateStockReservationRequestCopyWithImpl;
  @useResult
  $Res call(
      {String itemId,
      String locationId,
      double quantity,
      String purpose,
      String? referenceId,
      String? referenceType,
      String? notes,
      DateTime? expiresAt,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$CreateStockReservationRequestCopyWithImpl<$Res>
    implements $CreateStockReservationRequestCopyWith<$Res> {
  _$CreateStockReservationRequestCopyWithImpl(this._self, this._then);

  final CreateStockReservationRequest _self;
  final $Res Function(CreateStockReservationRequest) _then;

  /// Create a copy of CreateStockReservationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? locationId = null,
    Object? quantity = null,
    Object? purpose = null,
    Object? referenceId = freezed,
    Object? referenceType = freezed,
    Object? notes = freezed,
    Object? expiresAt = freezed,
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
      purpose: null == purpose
          ? _self.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      referenceId: freezed == referenceId
          ? _self.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceType: freezed == referenceType
          ? _self.referenceType
          : referenceType // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateStockReservationRequest].
extension CreateStockReservationRequestPatterns
    on CreateStockReservationRequest {
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
    TResult Function(_CreateStockReservationRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateStockReservationRequest() when $default != null:
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
    TResult Function(_CreateStockReservationRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateStockReservationRequest():
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
    TResult? Function(_CreateStockReservationRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateStockReservationRequest() when $default != null:
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
            String purpose,
            String? referenceId,
            String? referenceType,
            String? notes,
            DateTime? expiresAt,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateStockReservationRequest() when $default != null:
        return $default(
            _that.itemId,
            _that.locationId,
            _that.quantity,
            _that.purpose,
            _that.referenceId,
            _that.referenceType,
            _that.notes,
            _that.expiresAt,
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
            String purpose,
            String? referenceId,
            String? referenceType,
            String? notes,
            DateTime? expiresAt,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateStockReservationRequest():
        return $default(
            _that.itemId,
            _that.locationId,
            _that.quantity,
            _that.purpose,
            _that.referenceId,
            _that.referenceType,
            _that.notes,
            _that.expiresAt,
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
            String purpose,
            String? referenceId,
            String? referenceType,
            String? notes,
            DateTime? expiresAt,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateStockReservationRequest() when $default != null:
        return $default(
            _that.itemId,
            _that.locationId,
            _that.quantity,
            _that.purpose,
            _that.referenceId,
            _that.referenceType,
            _that.notes,
            _that.expiresAt,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateStockReservationRequest implements CreateStockReservationRequest {
  const _CreateStockReservationRequest(
      {required this.itemId,
      required this.locationId,
      required this.quantity,
      required this.purpose,
      this.referenceId,
      this.referenceType,
      this.notes,
      this.expiresAt,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _CreateStockReservationRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateStockReservationRequestFromJson(json);

  @override
  final String itemId;
  @override
  final String locationId;
  @override
  final double quantity;
  @override
  final String purpose;
  @override
  final String? referenceId;
  @override
  final String? referenceType;
  @override
  final String? notes;
  @override
  final DateTime? expiresAt;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of CreateStockReservationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateStockReservationRequestCopyWith<_CreateStockReservationRequest>
      get copyWith => __$CreateStockReservationRequestCopyWithImpl<
          _CreateStockReservationRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateStockReservationRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateStockReservationRequest &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.referenceType, referenceType) ||
                other.referenceType == referenceType) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemId,
      locationId,
      quantity,
      purpose,
      referenceId,
      referenceType,
      notes,
      expiresAt,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'CreateStockReservationRequest(itemId: $itemId, locationId: $locationId, quantity: $quantity, purpose: $purpose, referenceId: $referenceId, referenceType: $referenceType, notes: $notes, expiresAt: $expiresAt, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$CreateStockReservationRequestCopyWith<$Res>
    implements $CreateStockReservationRequestCopyWith<$Res> {
  factory _$CreateStockReservationRequestCopyWith(
          _CreateStockReservationRequest value,
          $Res Function(_CreateStockReservationRequest) _then) =
      __$CreateStockReservationRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String itemId,
      String locationId,
      double quantity,
      String purpose,
      String? referenceId,
      String? referenceType,
      String? notes,
      DateTime? expiresAt,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$CreateStockReservationRequestCopyWithImpl<$Res>
    implements _$CreateStockReservationRequestCopyWith<$Res> {
  __$CreateStockReservationRequestCopyWithImpl(this._self, this._then);

  final _CreateStockReservationRequest _self;
  final $Res Function(_CreateStockReservationRequest) _then;

  /// Create a copy of CreateStockReservationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? itemId = null,
    Object? locationId = null,
    Object? quantity = null,
    Object? purpose = null,
    Object? referenceId = freezed,
    Object? referenceType = freezed,
    Object? notes = freezed,
    Object? expiresAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_CreateStockReservationRequest(
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
      purpose: null == purpose
          ? _self.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      referenceId: freezed == referenceId
          ? _self.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceType: freezed == referenceType
          ? _self.referenceType
          : referenceType // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$UpdateStockReservationRequest {
  double? get quantity;
  String? get notes;
  DateTime? get expiresAt;
  Map<String, dynamic>? get metadata;

  /// Create a copy of UpdateStockReservationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateStockReservationRequestCopyWith<UpdateStockReservationRequest>
      get copyWith => _$UpdateStockReservationRequestCopyWithImpl<
              UpdateStockReservationRequest>(
          this as UpdateStockReservationRequest, _$identity);

  /// Serializes this UpdateStockReservationRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateStockReservationRequest &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, quantity, notes, expiresAt,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'UpdateStockReservationRequest(quantity: $quantity, notes: $notes, expiresAt: $expiresAt, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $UpdateStockReservationRequestCopyWith<$Res> {
  factory $UpdateStockReservationRequestCopyWith(
          UpdateStockReservationRequest value,
          $Res Function(UpdateStockReservationRequest) _then) =
      _$UpdateStockReservationRequestCopyWithImpl;
  @useResult
  $Res call(
      {double? quantity,
      String? notes,
      DateTime? expiresAt,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$UpdateStockReservationRequestCopyWithImpl<$Res>
    implements $UpdateStockReservationRequestCopyWith<$Res> {
  _$UpdateStockReservationRequestCopyWithImpl(this._self, this._then);

  final UpdateStockReservationRequest _self;
  final $Res Function(UpdateStockReservationRequest) _then;

  /// Create a copy of UpdateStockReservationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = freezed,
    Object? notes = freezed,
    Object? expiresAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      quantity: freezed == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateStockReservationRequest].
extension UpdateStockReservationRequestPatterns
    on UpdateStockReservationRequest {
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
    TResult Function(_UpdateStockReservationRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateStockReservationRequest() when $default != null:
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
    TResult Function(_UpdateStockReservationRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateStockReservationRequest():
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
    TResult? Function(_UpdateStockReservationRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateStockReservationRequest() when $default != null:
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
    TResult Function(double? quantity, String? notes, DateTime? expiresAt,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateStockReservationRequest() when $default != null:
        return $default(
            _that.quantity, _that.notes, _that.expiresAt, _that.metadata);
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
    TResult Function(double? quantity, String? notes, DateTime? expiresAt,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateStockReservationRequest():
        return $default(
            _that.quantity, _that.notes, _that.expiresAt, _that.metadata);
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
    TResult? Function(double? quantity, String? notes, DateTime? expiresAt,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateStockReservationRequest() when $default != null:
        return $default(
            _that.quantity, _that.notes, _that.expiresAt, _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateStockReservationRequest implements UpdateStockReservationRequest {
  const _UpdateStockReservationRequest(
      {this.quantity,
      this.notes,
      this.expiresAt,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _UpdateStockReservationRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateStockReservationRequestFromJson(json);

  @override
  final double? quantity;
  @override
  final String? notes;
  @override
  final DateTime? expiresAt;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of UpdateStockReservationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateStockReservationRequestCopyWith<_UpdateStockReservationRequest>
      get copyWith => __$UpdateStockReservationRequestCopyWithImpl<
          _UpdateStockReservationRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateStockReservationRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateStockReservationRequest &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, quantity, notes, expiresAt,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'UpdateStockReservationRequest(quantity: $quantity, notes: $notes, expiresAt: $expiresAt, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$UpdateStockReservationRequestCopyWith<$Res>
    implements $UpdateStockReservationRequestCopyWith<$Res> {
  factory _$UpdateStockReservationRequestCopyWith(
          _UpdateStockReservationRequest value,
          $Res Function(_UpdateStockReservationRequest) _then) =
      __$UpdateStockReservationRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double? quantity,
      String? notes,
      DateTime? expiresAt,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$UpdateStockReservationRequestCopyWithImpl<$Res>
    implements _$UpdateStockReservationRequestCopyWith<$Res> {
  __$UpdateStockReservationRequestCopyWithImpl(this._self, this._then);

  final _UpdateStockReservationRequest _self;
  final $Res Function(_UpdateStockReservationRequest) _then;

  /// Create a copy of UpdateStockReservationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? quantity = freezed,
    Object? notes = freezed,
    Object? expiresAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_UpdateStockReservationRequest(
      quantity: freezed == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$StockReservationFilters {
  String? get itemId;
  String? get locationId;
  String? get status;
  String? get purpose;
  String? get referenceId;
  String? get referenceType;
  DateTime? get createdAfter;
  DateTime? get createdBefore;
  DateTime? get expiresAfter;
  DateTime? get expiresBefore;
  int? get page;
  int? get limit;
  String? get sortBy;
  String? get sortOrder;

  /// Create a copy of StockReservationFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StockReservationFiltersCopyWith<StockReservationFilters> get copyWith =>
      _$StockReservationFiltersCopyWithImpl<StockReservationFilters>(
          this as StockReservationFilters, _$identity);

  /// Serializes this StockReservationFilters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StockReservationFilters &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.referenceType, referenceType) ||
                other.referenceType == referenceType) &&
            (identical(other.createdAfter, createdAfter) ||
                other.createdAfter == createdAfter) &&
            (identical(other.createdBefore, createdBefore) ||
                other.createdBefore == createdBefore) &&
            (identical(other.expiresAfter, expiresAfter) ||
                other.expiresAfter == expiresAfter) &&
            (identical(other.expiresBefore, expiresBefore) ||
                other.expiresBefore == expiresBefore) &&
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
      status,
      purpose,
      referenceId,
      referenceType,
      createdAfter,
      createdBefore,
      expiresAfter,
      expiresBefore,
      page,
      limit,
      sortBy,
      sortOrder);

  @override
  String toString() {
    return 'StockReservationFilters(itemId: $itemId, locationId: $locationId, status: $status, purpose: $purpose, referenceId: $referenceId, referenceType: $referenceType, createdAfter: $createdAfter, createdBefore: $createdBefore, expiresAfter: $expiresAfter, expiresBefore: $expiresBefore, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class $StockReservationFiltersCopyWith<$Res> {
  factory $StockReservationFiltersCopyWith(StockReservationFilters value,
          $Res Function(StockReservationFilters) _then) =
      _$StockReservationFiltersCopyWithImpl;
  @useResult
  $Res call(
      {String? itemId,
      String? locationId,
      String? status,
      String? purpose,
      String? referenceId,
      String? referenceType,
      DateTime? createdAfter,
      DateTime? createdBefore,
      DateTime? expiresAfter,
      DateTime? expiresBefore,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class _$StockReservationFiltersCopyWithImpl<$Res>
    implements $StockReservationFiltersCopyWith<$Res> {
  _$StockReservationFiltersCopyWithImpl(this._self, this._then);

  final StockReservationFilters _self;
  final $Res Function(StockReservationFilters) _then;

  /// Create a copy of StockReservationFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = freezed,
    Object? locationId = freezed,
    Object? status = freezed,
    Object? purpose = freezed,
    Object? referenceId = freezed,
    Object? referenceType = freezed,
    Object? createdAfter = freezed,
    Object? createdBefore = freezed,
    Object? expiresAfter = freezed,
    Object? expiresBefore = freezed,
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
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: freezed == purpose
          ? _self.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _self.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceType: freezed == referenceType
          ? _self.referenceType
          : referenceType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAfter: freezed == createdAfter
          ? _self.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _self.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresAfter: freezed == expiresAfter
          ? _self.expiresAfter
          : expiresAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresBefore: freezed == expiresBefore
          ? _self.expiresBefore
          : expiresBefore // ignore: cast_nullable_to_non_nullable
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

/// Adds pattern-matching-related methods to [StockReservationFilters].
extension StockReservationFiltersPatterns on StockReservationFilters {
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
    TResult Function(_StockReservationFilters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StockReservationFilters() when $default != null:
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
    TResult Function(_StockReservationFilters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockReservationFilters():
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
    TResult? Function(_StockReservationFilters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockReservationFilters() when $default != null:
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
            String? status,
            String? purpose,
            String? referenceId,
            String? referenceType,
            DateTime? createdAfter,
            DateTime? createdBefore,
            DateTime? expiresAfter,
            DateTime? expiresBefore,
            int? page,
            int? limit,
            String? sortBy,
            String? sortOrder)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StockReservationFilters() when $default != null:
        return $default(
            _that.itemId,
            _that.locationId,
            _that.status,
            _that.purpose,
            _that.referenceId,
            _that.referenceType,
            _that.createdAfter,
            _that.createdBefore,
            _that.expiresAfter,
            _that.expiresBefore,
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
            String? status,
            String? purpose,
            String? referenceId,
            String? referenceType,
            DateTime? createdAfter,
            DateTime? createdBefore,
            DateTime? expiresAfter,
            DateTime? expiresBefore,
            int? page,
            int? limit,
            String? sortBy,
            String? sortOrder)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockReservationFilters():
        return $default(
            _that.itemId,
            _that.locationId,
            _that.status,
            _that.purpose,
            _that.referenceId,
            _that.referenceType,
            _that.createdAfter,
            _that.createdBefore,
            _that.expiresAfter,
            _that.expiresBefore,
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
            String? status,
            String? purpose,
            String? referenceId,
            String? referenceType,
            DateTime? createdAfter,
            DateTime? createdBefore,
            DateTime? expiresAfter,
            DateTime? expiresBefore,
            int? page,
            int? limit,
            String? sortBy,
            String? sortOrder)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockReservationFilters() when $default != null:
        return $default(
            _that.itemId,
            _that.locationId,
            _that.status,
            _that.purpose,
            _that.referenceId,
            _that.referenceType,
            _that.createdAfter,
            _that.createdBefore,
            _that.expiresAfter,
            _that.expiresBefore,
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
class _StockReservationFilters extends StockReservationFilters {
  const _StockReservationFilters(
      {this.itemId,
      this.locationId,
      this.status,
      this.purpose,
      this.referenceId,
      this.referenceType,
      this.createdAfter,
      this.createdBefore,
      this.expiresAfter,
      this.expiresBefore,
      this.page,
      this.limit,
      this.sortBy,
      this.sortOrder})
      : super._();
  factory _StockReservationFilters.fromJson(Map<String, dynamic> json) =>
      _$StockReservationFiltersFromJson(json);

  @override
  final String? itemId;
  @override
  final String? locationId;
  @override
  final String? status;
  @override
  final String? purpose;
  @override
  final String? referenceId;
  @override
  final String? referenceType;
  @override
  final DateTime? createdAfter;
  @override
  final DateTime? createdBefore;
  @override
  final DateTime? expiresAfter;
  @override
  final DateTime? expiresBefore;
  @override
  final int? page;
  @override
  final int? limit;
  @override
  final String? sortBy;
  @override
  final String? sortOrder;

  /// Create a copy of StockReservationFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StockReservationFiltersCopyWith<_StockReservationFilters> get copyWith =>
      __$StockReservationFiltersCopyWithImpl<_StockReservationFilters>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StockReservationFiltersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StockReservationFilters &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.referenceType, referenceType) ||
                other.referenceType == referenceType) &&
            (identical(other.createdAfter, createdAfter) ||
                other.createdAfter == createdAfter) &&
            (identical(other.createdBefore, createdBefore) ||
                other.createdBefore == createdBefore) &&
            (identical(other.expiresAfter, expiresAfter) ||
                other.expiresAfter == expiresAfter) &&
            (identical(other.expiresBefore, expiresBefore) ||
                other.expiresBefore == expiresBefore) &&
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
      status,
      purpose,
      referenceId,
      referenceType,
      createdAfter,
      createdBefore,
      expiresAfter,
      expiresBefore,
      page,
      limit,
      sortBy,
      sortOrder);

  @override
  String toString() {
    return 'StockReservationFilters(itemId: $itemId, locationId: $locationId, status: $status, purpose: $purpose, referenceId: $referenceId, referenceType: $referenceType, createdAfter: $createdAfter, createdBefore: $createdBefore, expiresAfter: $expiresAfter, expiresBefore: $expiresBefore, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class _$StockReservationFiltersCopyWith<$Res>
    implements $StockReservationFiltersCopyWith<$Res> {
  factory _$StockReservationFiltersCopyWith(_StockReservationFilters value,
          $Res Function(_StockReservationFilters) _then) =
      __$StockReservationFiltersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? itemId,
      String? locationId,
      String? status,
      String? purpose,
      String? referenceId,
      String? referenceType,
      DateTime? createdAfter,
      DateTime? createdBefore,
      DateTime? expiresAfter,
      DateTime? expiresBefore,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class __$StockReservationFiltersCopyWithImpl<$Res>
    implements _$StockReservationFiltersCopyWith<$Res> {
  __$StockReservationFiltersCopyWithImpl(this._self, this._then);

  final _StockReservationFilters _self;
  final $Res Function(_StockReservationFilters) _then;

  /// Create a copy of StockReservationFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? itemId = freezed,
    Object? locationId = freezed,
    Object? status = freezed,
    Object? purpose = freezed,
    Object? referenceId = freezed,
    Object? referenceType = freezed,
    Object? createdAfter = freezed,
    Object? createdBefore = freezed,
    Object? expiresAfter = freezed,
    Object? expiresBefore = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_StockReservationFilters(
      itemId: freezed == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      locationId: freezed == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: freezed == purpose
          ? _self.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _self.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceType: freezed == referenceType
          ? _self.referenceType
          : referenceType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAfter: freezed == createdAfter
          ? _self.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _self.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresAfter: freezed == expiresAfter
          ? _self.expiresAfter
          : expiresAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresBefore: freezed == expiresBefore
          ? _self.expiresBefore
          : expiresBefore // ignore: cast_nullable_to_non_nullable
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
mixin _$ConsumeStockReservationRequest {
  double get quantity;
  String? get notes;

  /// Create a copy of ConsumeStockReservationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ConsumeStockReservationRequestCopyWith<ConsumeStockReservationRequest>
      get copyWith => _$ConsumeStockReservationRequestCopyWithImpl<
              ConsumeStockReservationRequest>(
          this as ConsumeStockReservationRequest, _$identity);

  /// Serializes this ConsumeStockReservationRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConsumeStockReservationRequest &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, quantity, notes);

  @override
  String toString() {
    return 'ConsumeStockReservationRequest(quantity: $quantity, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $ConsumeStockReservationRequestCopyWith<$Res> {
  factory $ConsumeStockReservationRequestCopyWith(
          ConsumeStockReservationRequest value,
          $Res Function(ConsumeStockReservationRequest) _then) =
      _$ConsumeStockReservationRequestCopyWithImpl;
  @useResult
  $Res call({double quantity, String? notes});
}

/// @nodoc
class _$ConsumeStockReservationRequestCopyWithImpl<$Res>
    implements $ConsumeStockReservationRequestCopyWith<$Res> {
  _$ConsumeStockReservationRequestCopyWithImpl(this._self, this._then);

  final ConsumeStockReservationRequest _self;
  final $Res Function(ConsumeStockReservationRequest) _then;

  /// Create a copy of ConsumeStockReservationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? notes = freezed,
  }) {
    return _then(_self.copyWith(
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ConsumeStockReservationRequest].
extension ConsumeStockReservationRequestPatterns
    on ConsumeStockReservationRequest {
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
    TResult Function(_ConsumeStockReservationRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ConsumeStockReservationRequest() when $default != null:
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
    TResult Function(_ConsumeStockReservationRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ConsumeStockReservationRequest():
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
    TResult? Function(_ConsumeStockReservationRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ConsumeStockReservationRequest() when $default != null:
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
    TResult Function(double quantity, String? notes)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ConsumeStockReservationRequest() when $default != null:
        return $default(_that.quantity, _that.notes);
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
    TResult Function(double quantity, String? notes) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ConsumeStockReservationRequest():
        return $default(_that.quantity, _that.notes);
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
    TResult? Function(double quantity, String? notes)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ConsumeStockReservationRequest() when $default != null:
        return $default(_that.quantity, _that.notes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ConsumeStockReservationRequest
    implements ConsumeStockReservationRequest {
  const _ConsumeStockReservationRequest({required this.quantity, this.notes});
  factory _ConsumeStockReservationRequest.fromJson(Map<String, dynamic> json) =>
      _$ConsumeStockReservationRequestFromJson(json);

  @override
  final double quantity;
  @override
  final String? notes;

  /// Create a copy of ConsumeStockReservationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ConsumeStockReservationRequestCopyWith<_ConsumeStockReservationRequest>
      get copyWith => __$ConsumeStockReservationRequestCopyWithImpl<
          _ConsumeStockReservationRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ConsumeStockReservationRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConsumeStockReservationRequest &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, quantity, notes);

  @override
  String toString() {
    return 'ConsumeStockReservationRequest(quantity: $quantity, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$ConsumeStockReservationRequestCopyWith<$Res>
    implements $ConsumeStockReservationRequestCopyWith<$Res> {
  factory _$ConsumeStockReservationRequestCopyWith(
          _ConsumeStockReservationRequest value,
          $Res Function(_ConsumeStockReservationRequest) _then) =
      __$ConsumeStockReservationRequestCopyWithImpl;
  @override
  @useResult
  $Res call({double quantity, String? notes});
}

/// @nodoc
class __$ConsumeStockReservationRequestCopyWithImpl<$Res>
    implements _$ConsumeStockReservationRequestCopyWith<$Res> {
  __$ConsumeStockReservationRequestCopyWithImpl(this._self, this._then);

  final _ConsumeStockReservationRequest _self;
  final $Res Function(_ConsumeStockReservationRequest) _then;

  /// Create a copy of ConsumeStockReservationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? quantity = null,
    Object? notes = freezed,
  }) {
    return _then(_ConsumeStockReservationRequest(
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
