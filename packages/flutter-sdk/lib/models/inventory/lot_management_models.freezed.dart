// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lot_management_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LotGenealogy {
  String get id;
  String get lotNumber;
  String get itemId;
  String get locationId;
  double get quantity;
  String
      get status; // 'active', 'consumed', 'quarantined', 'expired', 'recalled'
  DateTime get createdAt;
  DateTime get updatedAt;
  DateTime? get expiryDate;
  DateTime? get quarantinedAt;
  DateTime? get releasedAt;
  String? get parentLotId;
  String? get supplierLotNumber;
  String? get supplierName;
  String? get receiptNumber;
  String? get quarantineReason;
  String? get releaseReason;
  String? get notes;
  Map<String, dynamic>? get attributes;
  Map<String, dynamic>? get metadata;

  /// Create a copy of LotGenealogy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LotGenealogyCopyWith<LotGenealogy> get copyWith =>
      _$LotGenealogyCopyWithImpl<LotGenealogy>(
          this as LotGenealogy, _$identity);

  /// Serializes this LotGenealogy to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LotGenealogy &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.quarantinedAt, quarantinedAt) ||
                other.quarantinedAt == quarantinedAt) &&
            (identical(other.releasedAt, releasedAt) ||
                other.releasedAt == releasedAt) &&
            (identical(other.parentLotId, parentLotId) ||
                other.parentLotId == parentLotId) &&
            (identical(other.supplierLotNumber, supplierLotNumber) ||
                other.supplierLotNumber == supplierLotNumber) &&
            (identical(other.supplierName, supplierName) ||
                other.supplierName == supplierName) &&
            (identical(other.receiptNumber, receiptNumber) ||
                other.receiptNumber == receiptNumber) &&
            (identical(other.quarantineReason, quarantineReason) ||
                other.quarantineReason == quarantineReason) &&
            (identical(other.releaseReason, releaseReason) ||
                other.releaseReason == releaseReason) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        lotNumber,
        itemId,
        locationId,
        quantity,
        status,
        createdAt,
        updatedAt,
        expiryDate,
        quarantinedAt,
        releasedAt,
        parentLotId,
        supplierLotNumber,
        supplierName,
        receiptNumber,
        quarantineReason,
        releaseReason,
        notes,
        const DeepCollectionEquality().hash(attributes),
        const DeepCollectionEquality().hash(metadata)
      ]);

  @override
  String toString() {
    return 'LotGenealogy(id: $id, lotNumber: $lotNumber, itemId: $itemId, locationId: $locationId, quantity: $quantity, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, expiryDate: $expiryDate, quarantinedAt: $quarantinedAt, releasedAt: $releasedAt, parentLotId: $parentLotId, supplierLotNumber: $supplierLotNumber, supplierName: $supplierName, receiptNumber: $receiptNumber, quarantineReason: $quarantineReason, releaseReason: $releaseReason, notes: $notes, attributes: $attributes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $LotGenealogyCopyWith<$Res> {
  factory $LotGenealogyCopyWith(
          LotGenealogy value, $Res Function(LotGenealogy) _then) =
      _$LotGenealogyCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String lotNumber,
      String itemId,
      String locationId,
      double quantity,
      String status,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? expiryDate,
      DateTime? quarantinedAt,
      DateTime? releasedAt,
      String? parentLotId,
      String? supplierLotNumber,
      String? supplierName,
      String? receiptNumber,
      String? quarantineReason,
      String? releaseReason,
      String? notes,
      Map<String, dynamic>? attributes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$LotGenealogyCopyWithImpl<$Res> implements $LotGenealogyCopyWith<$Res> {
  _$LotGenealogyCopyWithImpl(this._self, this._then);

  final LotGenealogy _self;
  final $Res Function(LotGenealogy) _then;

  /// Create a copy of LotGenealogy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lotNumber = null,
    Object? itemId = null,
    Object? locationId = null,
    Object? quantity = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? expiryDate = freezed,
    Object? quarantinedAt = freezed,
    Object? releasedAt = freezed,
    Object? parentLotId = freezed,
    Object? supplierLotNumber = freezed,
    Object? supplierName = freezed,
    Object? receiptNumber = freezed,
    Object? quarantineReason = freezed,
    Object? releaseReason = freezed,
    Object? notes = freezed,
    Object? attributes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lotNumber: null == lotNumber
          ? _self.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
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
      expiryDate: freezed == expiryDate
          ? _self.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quarantinedAt: freezed == quarantinedAt
          ? _self.quarantinedAt
          : quarantinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      releasedAt: freezed == releasedAt
          ? _self.releasedAt
          : releasedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      parentLotId: freezed == parentLotId
          ? _self.parentLotId
          : parentLotId // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierLotNumber: freezed == supplierLotNumber
          ? _self.supplierLotNumber
          : supplierLotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierName: freezed == supplierName
          ? _self.supplierName
          : supplierName // ignore: cast_nullable_to_non_nullable
              as String?,
      receiptNumber: freezed == receiptNumber
          ? _self.receiptNumber
          : receiptNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      quarantineReason: freezed == quarantineReason
          ? _self.quarantineReason
          : quarantineReason // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseReason: freezed == releaseReason
          ? _self.releaseReason
          : releaseReason // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
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

/// Adds pattern-matching-related methods to [LotGenealogy].
extension LotGenealogyPatterns on LotGenealogy {
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
    TResult Function(_LotGenealogy value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LotGenealogy() when $default != null:
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
    TResult Function(_LotGenealogy value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LotGenealogy():
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
    TResult? Function(_LotGenealogy value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LotGenealogy() when $default != null:
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
            String lotNumber,
            String itemId,
            String locationId,
            double quantity,
            String status,
            DateTime createdAt,
            DateTime updatedAt,
            DateTime? expiryDate,
            DateTime? quarantinedAt,
            DateTime? releasedAt,
            String? parentLotId,
            String? supplierLotNumber,
            String? supplierName,
            String? receiptNumber,
            String? quarantineReason,
            String? releaseReason,
            String? notes,
            Map<String, dynamic>? attributes,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LotGenealogy() when $default != null:
        return $default(
            _that.id,
            _that.lotNumber,
            _that.itemId,
            _that.locationId,
            _that.quantity,
            _that.status,
            _that.createdAt,
            _that.updatedAt,
            _that.expiryDate,
            _that.quarantinedAt,
            _that.releasedAt,
            _that.parentLotId,
            _that.supplierLotNumber,
            _that.supplierName,
            _that.receiptNumber,
            _that.quarantineReason,
            _that.releaseReason,
            _that.notes,
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
            String lotNumber,
            String itemId,
            String locationId,
            double quantity,
            String status,
            DateTime createdAt,
            DateTime updatedAt,
            DateTime? expiryDate,
            DateTime? quarantinedAt,
            DateTime? releasedAt,
            String? parentLotId,
            String? supplierLotNumber,
            String? supplierName,
            String? receiptNumber,
            String? quarantineReason,
            String? releaseReason,
            String? notes,
            Map<String, dynamic>? attributes,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LotGenealogy():
        return $default(
            _that.id,
            _that.lotNumber,
            _that.itemId,
            _that.locationId,
            _that.quantity,
            _that.status,
            _that.createdAt,
            _that.updatedAt,
            _that.expiryDate,
            _that.quarantinedAt,
            _that.releasedAt,
            _that.parentLotId,
            _that.supplierLotNumber,
            _that.supplierName,
            _that.receiptNumber,
            _that.quarantineReason,
            _that.releaseReason,
            _that.notes,
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
            String lotNumber,
            String itemId,
            String locationId,
            double quantity,
            String status,
            DateTime createdAt,
            DateTime updatedAt,
            DateTime? expiryDate,
            DateTime? quarantinedAt,
            DateTime? releasedAt,
            String? parentLotId,
            String? supplierLotNumber,
            String? supplierName,
            String? receiptNumber,
            String? quarantineReason,
            String? releaseReason,
            String? notes,
            Map<String, dynamic>? attributes,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LotGenealogy() when $default != null:
        return $default(
            _that.id,
            _that.lotNumber,
            _that.itemId,
            _that.locationId,
            _that.quantity,
            _that.status,
            _that.createdAt,
            _that.updatedAt,
            _that.expiryDate,
            _that.quarantinedAt,
            _that.releasedAt,
            _that.parentLotId,
            _that.supplierLotNumber,
            _that.supplierName,
            _that.receiptNumber,
            _that.quarantineReason,
            _that.releaseReason,
            _that.notes,
            _that.attributes,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LotGenealogy implements LotGenealogy {
  const _LotGenealogy(
      {required this.id,
      required this.lotNumber,
      required this.itemId,
      required this.locationId,
      required this.quantity,
      required this.status,
      required this.createdAt,
      required this.updatedAt,
      this.expiryDate,
      this.quarantinedAt,
      this.releasedAt,
      this.parentLotId,
      this.supplierLotNumber,
      this.supplierName,
      this.receiptNumber,
      this.quarantineReason,
      this.releaseReason,
      this.notes,
      final Map<String, dynamic>? attributes,
      final Map<String, dynamic>? metadata})
      : _attributes = attributes,
        _metadata = metadata;
  factory _LotGenealogy.fromJson(Map<String, dynamic> json) =>
      _$LotGenealogyFromJson(json);

  @override
  final String id;
  @override
  final String lotNumber;
  @override
  final String itemId;
  @override
  final String locationId;
  @override
  final double quantity;
  @override
  final String status;
// 'active', 'consumed', 'quarantined', 'expired', 'recalled'
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime? expiryDate;
  @override
  final DateTime? quarantinedAt;
  @override
  final DateTime? releasedAt;
  @override
  final String? parentLotId;
  @override
  final String? supplierLotNumber;
  @override
  final String? supplierName;
  @override
  final String? receiptNumber;
  @override
  final String? quarantineReason;
  @override
  final String? releaseReason;
  @override
  final String? notes;
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

  /// Create a copy of LotGenealogy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LotGenealogyCopyWith<_LotGenealogy> get copyWith =>
      __$LotGenealogyCopyWithImpl<_LotGenealogy>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LotGenealogyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LotGenealogy &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.quarantinedAt, quarantinedAt) ||
                other.quarantinedAt == quarantinedAt) &&
            (identical(other.releasedAt, releasedAt) ||
                other.releasedAt == releasedAt) &&
            (identical(other.parentLotId, parentLotId) ||
                other.parentLotId == parentLotId) &&
            (identical(other.supplierLotNumber, supplierLotNumber) ||
                other.supplierLotNumber == supplierLotNumber) &&
            (identical(other.supplierName, supplierName) ||
                other.supplierName == supplierName) &&
            (identical(other.receiptNumber, receiptNumber) ||
                other.receiptNumber == receiptNumber) &&
            (identical(other.quarantineReason, quarantineReason) ||
                other.quarantineReason == quarantineReason) &&
            (identical(other.releaseReason, releaseReason) ||
                other.releaseReason == releaseReason) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        lotNumber,
        itemId,
        locationId,
        quantity,
        status,
        createdAt,
        updatedAt,
        expiryDate,
        quarantinedAt,
        releasedAt,
        parentLotId,
        supplierLotNumber,
        supplierName,
        receiptNumber,
        quarantineReason,
        releaseReason,
        notes,
        const DeepCollectionEquality().hash(_attributes),
        const DeepCollectionEquality().hash(_metadata)
      ]);

  @override
  String toString() {
    return 'LotGenealogy(id: $id, lotNumber: $lotNumber, itemId: $itemId, locationId: $locationId, quantity: $quantity, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, expiryDate: $expiryDate, quarantinedAt: $quarantinedAt, releasedAt: $releasedAt, parentLotId: $parentLotId, supplierLotNumber: $supplierLotNumber, supplierName: $supplierName, receiptNumber: $receiptNumber, quarantineReason: $quarantineReason, releaseReason: $releaseReason, notes: $notes, attributes: $attributes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$LotGenealogyCopyWith<$Res>
    implements $LotGenealogyCopyWith<$Res> {
  factory _$LotGenealogyCopyWith(
          _LotGenealogy value, $Res Function(_LotGenealogy) _then) =
      __$LotGenealogyCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String lotNumber,
      String itemId,
      String locationId,
      double quantity,
      String status,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? expiryDate,
      DateTime? quarantinedAt,
      DateTime? releasedAt,
      String? parentLotId,
      String? supplierLotNumber,
      String? supplierName,
      String? receiptNumber,
      String? quarantineReason,
      String? releaseReason,
      String? notes,
      Map<String, dynamic>? attributes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$LotGenealogyCopyWithImpl<$Res>
    implements _$LotGenealogyCopyWith<$Res> {
  __$LotGenealogyCopyWithImpl(this._self, this._then);

  final _LotGenealogy _self;
  final $Res Function(_LotGenealogy) _then;

  /// Create a copy of LotGenealogy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? lotNumber = null,
    Object? itemId = null,
    Object? locationId = null,
    Object? quantity = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? expiryDate = freezed,
    Object? quarantinedAt = freezed,
    Object? releasedAt = freezed,
    Object? parentLotId = freezed,
    Object? supplierLotNumber = freezed,
    Object? supplierName = freezed,
    Object? receiptNumber = freezed,
    Object? quarantineReason = freezed,
    Object? releaseReason = freezed,
    Object? notes = freezed,
    Object? attributes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_LotGenealogy(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lotNumber: null == lotNumber
          ? _self.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
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
      expiryDate: freezed == expiryDate
          ? _self.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quarantinedAt: freezed == quarantinedAt
          ? _self.quarantinedAt
          : quarantinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      releasedAt: freezed == releasedAt
          ? _self.releasedAt
          : releasedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      parentLotId: freezed == parentLotId
          ? _self.parentLotId
          : parentLotId // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierLotNumber: freezed == supplierLotNumber
          ? _self.supplierLotNumber
          : supplierLotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierName: freezed == supplierName
          ? _self.supplierName
          : supplierName // ignore: cast_nullable_to_non_nullable
              as String?,
      receiptNumber: freezed == receiptNumber
          ? _self.receiptNumber
          : receiptNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      quarantineReason: freezed == quarantineReason
          ? _self.quarantineReason
          : quarantineReason // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseReason: freezed == releaseReason
          ? _self.releaseReason
          : releaseReason // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
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
mixin _$LotTrackingHistory {
  String get id;
  String get lotId;
  String
      get eventType; // 'created', 'moved', 'consumed', 'split', 'merged', 'quarantined', 'released'
  String get fromLocationId;
  String get toLocationId;
  double get quantity;
  DateTime get eventDate;
  String?
      get referenceType; // 'sales_order', 'production_order', 'transfer', 'adjustment'
  String? get referenceId;
  String? get performedBy;
  String? get reason;
  String? get notes;
  Map<String, dynamic>? get metadata;

  /// Create a copy of LotTrackingHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LotTrackingHistoryCopyWith<LotTrackingHistory> get copyWith =>
      _$LotTrackingHistoryCopyWithImpl<LotTrackingHistory>(
          this as LotTrackingHistory, _$identity);

  /// Serializes this LotTrackingHistory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LotTrackingHistory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lotId, lotId) || other.lotId == lotId) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.fromLocationId, fromLocationId) ||
                other.fromLocationId == fromLocationId) &&
            (identical(other.toLocationId, toLocationId) ||
                other.toLocationId == toLocationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.eventDate, eventDate) ||
                other.eventDate == eventDate) &&
            (identical(other.referenceType, referenceType) ||
                other.referenceType == referenceType) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.performedBy, performedBy) ||
                other.performedBy == performedBy) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      lotId,
      eventType,
      fromLocationId,
      toLocationId,
      quantity,
      eventDate,
      referenceType,
      referenceId,
      performedBy,
      reason,
      notes,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'LotTrackingHistory(id: $id, lotId: $lotId, eventType: $eventType, fromLocationId: $fromLocationId, toLocationId: $toLocationId, quantity: $quantity, eventDate: $eventDate, referenceType: $referenceType, referenceId: $referenceId, performedBy: $performedBy, reason: $reason, notes: $notes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $LotTrackingHistoryCopyWith<$Res> {
  factory $LotTrackingHistoryCopyWith(
          LotTrackingHistory value, $Res Function(LotTrackingHistory) _then) =
      _$LotTrackingHistoryCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String lotId,
      String eventType,
      String fromLocationId,
      String toLocationId,
      double quantity,
      DateTime eventDate,
      String? referenceType,
      String? referenceId,
      String? performedBy,
      String? reason,
      String? notes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$LotTrackingHistoryCopyWithImpl<$Res>
    implements $LotTrackingHistoryCopyWith<$Res> {
  _$LotTrackingHistoryCopyWithImpl(this._self, this._then);

  final LotTrackingHistory _self;
  final $Res Function(LotTrackingHistory) _then;

  /// Create a copy of LotTrackingHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lotId = null,
    Object? eventType = null,
    Object? fromLocationId = null,
    Object? toLocationId = null,
    Object? quantity = null,
    Object? eventDate = null,
    Object? referenceType = freezed,
    Object? referenceId = freezed,
    Object? performedBy = freezed,
    Object? reason = freezed,
    Object? notes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lotId: null == lotId
          ? _self.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _self.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      fromLocationId: null == fromLocationId
          ? _self.fromLocationId
          : fromLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      toLocationId: null == toLocationId
          ? _self.toLocationId
          : toLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      eventDate: null == eventDate
          ? _self.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      referenceType: freezed == referenceType
          ? _self.referenceType
          : referenceType // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _self.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      performedBy: freezed == performedBy
          ? _self.performedBy
          : performedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
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

/// Adds pattern-matching-related methods to [LotTrackingHistory].
extension LotTrackingHistoryPatterns on LotTrackingHistory {
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
    TResult Function(_LotTrackingHistory value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LotTrackingHistory() when $default != null:
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
    TResult Function(_LotTrackingHistory value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LotTrackingHistory():
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
    TResult? Function(_LotTrackingHistory value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LotTrackingHistory() when $default != null:
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
            String lotId,
            String eventType,
            String fromLocationId,
            String toLocationId,
            double quantity,
            DateTime eventDate,
            String? referenceType,
            String? referenceId,
            String? performedBy,
            String? reason,
            String? notes,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LotTrackingHistory() when $default != null:
        return $default(
            _that.id,
            _that.lotId,
            _that.eventType,
            _that.fromLocationId,
            _that.toLocationId,
            _that.quantity,
            _that.eventDate,
            _that.referenceType,
            _that.referenceId,
            _that.performedBy,
            _that.reason,
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
            String id,
            String lotId,
            String eventType,
            String fromLocationId,
            String toLocationId,
            double quantity,
            DateTime eventDate,
            String? referenceType,
            String? referenceId,
            String? performedBy,
            String? reason,
            String? notes,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LotTrackingHistory():
        return $default(
            _that.id,
            _that.lotId,
            _that.eventType,
            _that.fromLocationId,
            _that.toLocationId,
            _that.quantity,
            _that.eventDate,
            _that.referenceType,
            _that.referenceId,
            _that.performedBy,
            _that.reason,
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
            String id,
            String lotId,
            String eventType,
            String fromLocationId,
            String toLocationId,
            double quantity,
            DateTime eventDate,
            String? referenceType,
            String? referenceId,
            String? performedBy,
            String? reason,
            String? notes,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LotTrackingHistory() when $default != null:
        return $default(
            _that.id,
            _that.lotId,
            _that.eventType,
            _that.fromLocationId,
            _that.toLocationId,
            _that.quantity,
            _that.eventDate,
            _that.referenceType,
            _that.referenceId,
            _that.performedBy,
            _that.reason,
            _that.notes,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LotTrackingHistory implements LotTrackingHistory {
  const _LotTrackingHistory(
      {required this.id,
      required this.lotId,
      required this.eventType,
      required this.fromLocationId,
      required this.toLocationId,
      required this.quantity,
      required this.eventDate,
      this.referenceType,
      this.referenceId,
      this.performedBy,
      this.reason,
      this.notes,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _LotTrackingHistory.fromJson(Map<String, dynamic> json) =>
      _$LotTrackingHistoryFromJson(json);

  @override
  final String id;
  @override
  final String lotId;
  @override
  final String eventType;
// 'created', 'moved', 'consumed', 'split', 'merged', 'quarantined', 'released'
  @override
  final String fromLocationId;
  @override
  final String toLocationId;
  @override
  final double quantity;
  @override
  final DateTime eventDate;
  @override
  final String? referenceType;
// 'sales_order', 'production_order', 'transfer', 'adjustment'
  @override
  final String? referenceId;
  @override
  final String? performedBy;
  @override
  final String? reason;
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

  /// Create a copy of LotTrackingHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LotTrackingHistoryCopyWith<_LotTrackingHistory> get copyWith =>
      __$LotTrackingHistoryCopyWithImpl<_LotTrackingHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LotTrackingHistoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LotTrackingHistory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lotId, lotId) || other.lotId == lotId) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.fromLocationId, fromLocationId) ||
                other.fromLocationId == fromLocationId) &&
            (identical(other.toLocationId, toLocationId) ||
                other.toLocationId == toLocationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.eventDate, eventDate) ||
                other.eventDate == eventDate) &&
            (identical(other.referenceType, referenceType) ||
                other.referenceType == referenceType) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.performedBy, performedBy) ||
                other.performedBy == performedBy) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      lotId,
      eventType,
      fromLocationId,
      toLocationId,
      quantity,
      eventDate,
      referenceType,
      referenceId,
      performedBy,
      reason,
      notes,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'LotTrackingHistory(id: $id, lotId: $lotId, eventType: $eventType, fromLocationId: $fromLocationId, toLocationId: $toLocationId, quantity: $quantity, eventDate: $eventDate, referenceType: $referenceType, referenceId: $referenceId, performedBy: $performedBy, reason: $reason, notes: $notes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$LotTrackingHistoryCopyWith<$Res>
    implements $LotTrackingHistoryCopyWith<$Res> {
  factory _$LotTrackingHistoryCopyWith(
          _LotTrackingHistory value, $Res Function(_LotTrackingHistory) _then) =
      __$LotTrackingHistoryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String lotId,
      String eventType,
      String fromLocationId,
      String toLocationId,
      double quantity,
      DateTime eventDate,
      String? referenceType,
      String? referenceId,
      String? performedBy,
      String? reason,
      String? notes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$LotTrackingHistoryCopyWithImpl<$Res>
    implements _$LotTrackingHistoryCopyWith<$Res> {
  __$LotTrackingHistoryCopyWithImpl(this._self, this._then);

  final _LotTrackingHistory _self;
  final $Res Function(_LotTrackingHistory) _then;

  /// Create a copy of LotTrackingHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? lotId = null,
    Object? eventType = null,
    Object? fromLocationId = null,
    Object? toLocationId = null,
    Object? quantity = null,
    Object? eventDate = null,
    Object? referenceType = freezed,
    Object? referenceId = freezed,
    Object? performedBy = freezed,
    Object? reason = freezed,
    Object? notes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_LotTrackingHistory(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lotId: null == lotId
          ? _self.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _self.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      fromLocationId: null == fromLocationId
          ? _self.fromLocationId
          : fromLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      toLocationId: null == toLocationId
          ? _self.toLocationId
          : toLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      eventDate: null == eventDate
          ? _self.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      referenceType: freezed == referenceType
          ? _self.referenceType
          : referenceType // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _self.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      performedBy: freezed == performedBy
          ? _self.performedBy
          : performedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
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
mixin _$SplitLotRequest {
  String get sourceLotId;
  List<LotSplitItem> get splitItems;
  String? get reason;
  String? get notes;

  /// Create a copy of SplitLotRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SplitLotRequestCopyWith<SplitLotRequest> get copyWith =>
      _$SplitLotRequestCopyWithImpl<SplitLotRequest>(
          this as SplitLotRequest, _$identity);

  /// Serializes this SplitLotRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SplitLotRequest &&
            (identical(other.sourceLotId, sourceLotId) ||
                other.sourceLotId == sourceLotId) &&
            const DeepCollectionEquality()
                .equals(other.splitItems, splitItems) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sourceLotId,
      const DeepCollectionEquality().hash(splitItems), reason, notes);

  @override
  String toString() {
    return 'SplitLotRequest(sourceLotId: $sourceLotId, splitItems: $splitItems, reason: $reason, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $SplitLotRequestCopyWith<$Res> {
  factory $SplitLotRequestCopyWith(
          SplitLotRequest value, $Res Function(SplitLotRequest) _then) =
      _$SplitLotRequestCopyWithImpl;
  @useResult
  $Res call(
      {String sourceLotId,
      List<LotSplitItem> splitItems,
      String? reason,
      String? notes});
}

/// @nodoc
class _$SplitLotRequestCopyWithImpl<$Res>
    implements $SplitLotRequestCopyWith<$Res> {
  _$SplitLotRequestCopyWithImpl(this._self, this._then);

  final SplitLotRequest _self;
  final $Res Function(SplitLotRequest) _then;

  /// Create a copy of SplitLotRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceLotId = null,
    Object? splitItems = null,
    Object? reason = freezed,
    Object? notes = freezed,
  }) {
    return _then(_self.copyWith(
      sourceLotId: null == sourceLotId
          ? _self.sourceLotId
          : sourceLotId // ignore: cast_nullable_to_non_nullable
              as String,
      splitItems: null == splitItems
          ? _self.splitItems
          : splitItems // ignore: cast_nullable_to_non_nullable
              as List<LotSplitItem>,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SplitLotRequest].
extension SplitLotRequestPatterns on SplitLotRequest {
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
    TResult Function(_SplitLotRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SplitLotRequest() when $default != null:
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
    TResult Function(_SplitLotRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SplitLotRequest():
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
    TResult? Function(_SplitLotRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SplitLotRequest() when $default != null:
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
    TResult Function(String sourceLotId, List<LotSplitItem> splitItems,
            String? reason, String? notes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SplitLotRequest() when $default != null:
        return $default(
            _that.sourceLotId, _that.splitItems, _that.reason, _that.notes);
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
    TResult Function(String sourceLotId, List<LotSplitItem> splitItems,
            String? reason, String? notes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SplitLotRequest():
        return $default(
            _that.sourceLotId, _that.splitItems, _that.reason, _that.notes);
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
    TResult? Function(String sourceLotId, List<LotSplitItem> splitItems,
            String? reason, String? notes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SplitLotRequest() when $default != null:
        return $default(
            _that.sourceLotId, _that.splitItems, _that.reason, _that.notes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SplitLotRequest implements SplitLotRequest {
  const _SplitLotRequest(
      {required this.sourceLotId,
      required final List<LotSplitItem> splitItems,
      this.reason,
      this.notes})
      : _splitItems = splitItems;
  factory _SplitLotRequest.fromJson(Map<String, dynamic> json) =>
      _$SplitLotRequestFromJson(json);

  @override
  final String sourceLotId;
  final List<LotSplitItem> _splitItems;
  @override
  List<LotSplitItem> get splitItems {
    if (_splitItems is EqualUnmodifiableListView) return _splitItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_splitItems);
  }

  @override
  final String? reason;
  @override
  final String? notes;

  /// Create a copy of SplitLotRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SplitLotRequestCopyWith<_SplitLotRequest> get copyWith =>
      __$SplitLotRequestCopyWithImpl<_SplitLotRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SplitLotRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SplitLotRequest &&
            (identical(other.sourceLotId, sourceLotId) ||
                other.sourceLotId == sourceLotId) &&
            const DeepCollectionEquality()
                .equals(other._splitItems, _splitItems) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sourceLotId,
      const DeepCollectionEquality().hash(_splitItems), reason, notes);

  @override
  String toString() {
    return 'SplitLotRequest(sourceLotId: $sourceLotId, splitItems: $splitItems, reason: $reason, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$SplitLotRequestCopyWith<$Res>
    implements $SplitLotRequestCopyWith<$Res> {
  factory _$SplitLotRequestCopyWith(
          _SplitLotRequest value, $Res Function(_SplitLotRequest) _then) =
      __$SplitLotRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String sourceLotId,
      List<LotSplitItem> splitItems,
      String? reason,
      String? notes});
}

/// @nodoc
class __$SplitLotRequestCopyWithImpl<$Res>
    implements _$SplitLotRequestCopyWith<$Res> {
  __$SplitLotRequestCopyWithImpl(this._self, this._then);

  final _SplitLotRequest _self;
  final $Res Function(_SplitLotRequest) _then;

  /// Create a copy of SplitLotRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sourceLotId = null,
    Object? splitItems = null,
    Object? reason = freezed,
    Object? notes = freezed,
  }) {
    return _then(_SplitLotRequest(
      sourceLotId: null == sourceLotId
          ? _self.sourceLotId
          : sourceLotId // ignore: cast_nullable_to_non_nullable
              as String,
      splitItems: null == splitItems
          ? _self._splitItems
          : splitItems // ignore: cast_nullable_to_non_nullable
              as List<LotSplitItem>,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$LotSplitItem {
  String get newLotNumber;
  double get quantity;
  String? get locationId;
  DateTime? get expiryDate;
  Map<String, dynamic>? get attributes;

  /// Create a copy of LotSplitItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LotSplitItemCopyWith<LotSplitItem> get copyWith =>
      _$LotSplitItemCopyWithImpl<LotSplitItem>(
          this as LotSplitItem, _$identity);

  /// Serializes this LotSplitItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LotSplitItem &&
            (identical(other.newLotNumber, newLotNumber) ||
                other.newLotNumber == newLotNumber) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, newLotNumber, quantity,
      locationId, expiryDate, const DeepCollectionEquality().hash(attributes));

  @override
  String toString() {
    return 'LotSplitItem(newLotNumber: $newLotNumber, quantity: $quantity, locationId: $locationId, expiryDate: $expiryDate, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class $LotSplitItemCopyWith<$Res> {
  factory $LotSplitItemCopyWith(
          LotSplitItem value, $Res Function(LotSplitItem) _then) =
      _$LotSplitItemCopyWithImpl;
  @useResult
  $Res call(
      {String newLotNumber,
      double quantity,
      String? locationId,
      DateTime? expiryDate,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class _$LotSplitItemCopyWithImpl<$Res> implements $LotSplitItemCopyWith<$Res> {
  _$LotSplitItemCopyWithImpl(this._self, this._then);

  final LotSplitItem _self;
  final $Res Function(LotSplitItem) _then;

  /// Create a copy of LotSplitItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newLotNumber = null,
    Object? quantity = null,
    Object? locationId = freezed,
    Object? expiryDate = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_self.copyWith(
      newLotNumber: null == newLotNumber
          ? _self.newLotNumber
          : newLotNumber // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      locationId: freezed == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _self.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      attributes: freezed == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [LotSplitItem].
extension LotSplitItemPatterns on LotSplitItem {
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
    TResult Function(_LotSplitItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LotSplitItem() when $default != null:
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
    TResult Function(_LotSplitItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LotSplitItem():
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
    TResult? Function(_LotSplitItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LotSplitItem() when $default != null:
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
    TResult Function(String newLotNumber, double quantity, String? locationId,
            DateTime? expiryDate, Map<String, dynamic>? attributes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LotSplitItem() when $default != null:
        return $default(_that.newLotNumber, _that.quantity, _that.locationId,
            _that.expiryDate, _that.attributes);
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
    TResult Function(String newLotNumber, double quantity, String? locationId,
            DateTime? expiryDate, Map<String, dynamic>? attributes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LotSplitItem():
        return $default(_that.newLotNumber, _that.quantity, _that.locationId,
            _that.expiryDate, _that.attributes);
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
    TResult? Function(String newLotNumber, double quantity, String? locationId,
            DateTime? expiryDate, Map<String, dynamic>? attributes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LotSplitItem() when $default != null:
        return $default(_that.newLotNumber, _that.quantity, _that.locationId,
            _that.expiryDate, _that.attributes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LotSplitItem implements LotSplitItem {
  const _LotSplitItem(
      {required this.newLotNumber,
      required this.quantity,
      this.locationId,
      this.expiryDate,
      final Map<String, dynamic>? attributes})
      : _attributes = attributes;
  factory _LotSplitItem.fromJson(Map<String, dynamic> json) =>
      _$LotSplitItemFromJson(json);

  @override
  final String newLotNumber;
  @override
  final double quantity;
  @override
  final String? locationId;
  @override
  final DateTime? expiryDate;
  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of LotSplitItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LotSplitItemCopyWith<_LotSplitItem> get copyWith =>
      __$LotSplitItemCopyWithImpl<_LotSplitItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LotSplitItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LotSplitItem &&
            (identical(other.newLotNumber, newLotNumber) ||
                other.newLotNumber == newLotNumber) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, newLotNumber, quantity,
      locationId, expiryDate, const DeepCollectionEquality().hash(_attributes));

  @override
  String toString() {
    return 'LotSplitItem(newLotNumber: $newLotNumber, quantity: $quantity, locationId: $locationId, expiryDate: $expiryDate, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class _$LotSplitItemCopyWith<$Res>
    implements $LotSplitItemCopyWith<$Res> {
  factory _$LotSplitItemCopyWith(
          _LotSplitItem value, $Res Function(_LotSplitItem) _then) =
      __$LotSplitItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String newLotNumber,
      double quantity,
      String? locationId,
      DateTime? expiryDate,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class __$LotSplitItemCopyWithImpl<$Res>
    implements _$LotSplitItemCopyWith<$Res> {
  __$LotSplitItemCopyWithImpl(this._self, this._then);

  final _LotSplitItem _self;
  final $Res Function(_LotSplitItem) _then;

  /// Create a copy of LotSplitItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? newLotNumber = null,
    Object? quantity = null,
    Object? locationId = freezed,
    Object? expiryDate = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_LotSplitItem(
      newLotNumber: null == newLotNumber
          ? _self.newLotNumber
          : newLotNumber // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      locationId: freezed == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _self.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      attributes: freezed == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$MergeLotsRequest {
  List<String> get sourceLotIds;
  String get targetLotNumber;
  String get targetLocationId;
  DateTime? get targetExpiryDate;
  String? get reason;
  String? get notes;
  Map<String, dynamic>? get attributes;

  /// Create a copy of MergeLotsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MergeLotsRequestCopyWith<MergeLotsRequest> get copyWith =>
      _$MergeLotsRequestCopyWithImpl<MergeLotsRequest>(
          this as MergeLotsRequest, _$identity);

  /// Serializes this MergeLotsRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MergeLotsRequest &&
            const DeepCollectionEquality()
                .equals(other.sourceLotIds, sourceLotIds) &&
            (identical(other.targetLotNumber, targetLotNumber) ||
                other.targetLotNumber == targetLotNumber) &&
            (identical(other.targetLocationId, targetLocationId) ||
                other.targetLocationId == targetLocationId) &&
            (identical(other.targetExpiryDate, targetExpiryDate) ||
                other.targetExpiryDate == targetExpiryDate) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sourceLotIds),
      targetLotNumber,
      targetLocationId,
      targetExpiryDate,
      reason,
      notes,
      const DeepCollectionEquality().hash(attributes));

  @override
  String toString() {
    return 'MergeLotsRequest(sourceLotIds: $sourceLotIds, targetLotNumber: $targetLotNumber, targetLocationId: $targetLocationId, targetExpiryDate: $targetExpiryDate, reason: $reason, notes: $notes, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class $MergeLotsRequestCopyWith<$Res> {
  factory $MergeLotsRequestCopyWith(
          MergeLotsRequest value, $Res Function(MergeLotsRequest) _then) =
      _$MergeLotsRequestCopyWithImpl;
  @useResult
  $Res call(
      {List<String> sourceLotIds,
      String targetLotNumber,
      String targetLocationId,
      DateTime? targetExpiryDate,
      String? reason,
      String? notes,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class _$MergeLotsRequestCopyWithImpl<$Res>
    implements $MergeLotsRequestCopyWith<$Res> {
  _$MergeLotsRequestCopyWithImpl(this._self, this._then);

  final MergeLotsRequest _self;
  final $Res Function(MergeLotsRequest) _then;

  /// Create a copy of MergeLotsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceLotIds = null,
    Object? targetLotNumber = null,
    Object? targetLocationId = null,
    Object? targetExpiryDate = freezed,
    Object? reason = freezed,
    Object? notes = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_self.copyWith(
      sourceLotIds: null == sourceLotIds
          ? _self.sourceLotIds
          : sourceLotIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      targetLotNumber: null == targetLotNumber
          ? _self.targetLotNumber
          : targetLotNumber // ignore: cast_nullable_to_non_nullable
              as String,
      targetLocationId: null == targetLocationId
          ? _self.targetLocationId
          : targetLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      targetExpiryDate: freezed == targetExpiryDate
          ? _self.targetExpiryDate
          : targetExpiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [MergeLotsRequest].
extension MergeLotsRequestPatterns on MergeLotsRequest {
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
    TResult Function(_MergeLotsRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MergeLotsRequest() when $default != null:
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
    TResult Function(_MergeLotsRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MergeLotsRequest():
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
    TResult? Function(_MergeLotsRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MergeLotsRequest() when $default != null:
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
            List<String> sourceLotIds,
            String targetLotNumber,
            String targetLocationId,
            DateTime? targetExpiryDate,
            String? reason,
            String? notes,
            Map<String, dynamic>? attributes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MergeLotsRequest() when $default != null:
        return $default(
            _that.sourceLotIds,
            _that.targetLotNumber,
            _that.targetLocationId,
            _that.targetExpiryDate,
            _that.reason,
            _that.notes,
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
            List<String> sourceLotIds,
            String targetLotNumber,
            String targetLocationId,
            DateTime? targetExpiryDate,
            String? reason,
            String? notes,
            Map<String, dynamic>? attributes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MergeLotsRequest():
        return $default(
            _that.sourceLotIds,
            _that.targetLotNumber,
            _that.targetLocationId,
            _that.targetExpiryDate,
            _that.reason,
            _that.notes,
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
            List<String> sourceLotIds,
            String targetLotNumber,
            String targetLocationId,
            DateTime? targetExpiryDate,
            String? reason,
            String? notes,
            Map<String, dynamic>? attributes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MergeLotsRequest() when $default != null:
        return $default(
            _that.sourceLotIds,
            _that.targetLotNumber,
            _that.targetLocationId,
            _that.targetExpiryDate,
            _that.reason,
            _that.notes,
            _that.attributes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MergeLotsRequest implements MergeLotsRequest {
  const _MergeLotsRequest(
      {required final List<String> sourceLotIds,
      required this.targetLotNumber,
      required this.targetLocationId,
      this.targetExpiryDate,
      this.reason,
      this.notes,
      final Map<String, dynamic>? attributes})
      : _sourceLotIds = sourceLotIds,
        _attributes = attributes;
  factory _MergeLotsRequest.fromJson(Map<String, dynamic> json) =>
      _$MergeLotsRequestFromJson(json);

  final List<String> _sourceLotIds;
  @override
  List<String> get sourceLotIds {
    if (_sourceLotIds is EqualUnmodifiableListView) return _sourceLotIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sourceLotIds);
  }

  @override
  final String targetLotNumber;
  @override
  final String targetLocationId;
  @override
  final DateTime? targetExpiryDate;
  @override
  final String? reason;
  @override
  final String? notes;
  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of MergeLotsRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MergeLotsRequestCopyWith<_MergeLotsRequest> get copyWith =>
      __$MergeLotsRequestCopyWithImpl<_MergeLotsRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MergeLotsRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MergeLotsRequest &&
            const DeepCollectionEquality()
                .equals(other._sourceLotIds, _sourceLotIds) &&
            (identical(other.targetLotNumber, targetLotNumber) ||
                other.targetLotNumber == targetLotNumber) &&
            (identical(other.targetLocationId, targetLocationId) ||
                other.targetLocationId == targetLocationId) &&
            (identical(other.targetExpiryDate, targetExpiryDate) ||
                other.targetExpiryDate == targetExpiryDate) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sourceLotIds),
      targetLotNumber,
      targetLocationId,
      targetExpiryDate,
      reason,
      notes,
      const DeepCollectionEquality().hash(_attributes));

  @override
  String toString() {
    return 'MergeLotsRequest(sourceLotIds: $sourceLotIds, targetLotNumber: $targetLotNumber, targetLocationId: $targetLocationId, targetExpiryDate: $targetExpiryDate, reason: $reason, notes: $notes, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class _$MergeLotsRequestCopyWith<$Res>
    implements $MergeLotsRequestCopyWith<$Res> {
  factory _$MergeLotsRequestCopyWith(
          _MergeLotsRequest value, $Res Function(_MergeLotsRequest) _then) =
      __$MergeLotsRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<String> sourceLotIds,
      String targetLotNumber,
      String targetLocationId,
      DateTime? targetExpiryDate,
      String? reason,
      String? notes,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class __$MergeLotsRequestCopyWithImpl<$Res>
    implements _$MergeLotsRequestCopyWith<$Res> {
  __$MergeLotsRequestCopyWithImpl(this._self, this._then);

  final _MergeLotsRequest _self;
  final $Res Function(_MergeLotsRequest) _then;

  /// Create a copy of MergeLotsRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sourceLotIds = null,
    Object? targetLotNumber = null,
    Object? targetLocationId = null,
    Object? targetExpiryDate = freezed,
    Object? reason = freezed,
    Object? notes = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_MergeLotsRequest(
      sourceLotIds: null == sourceLotIds
          ? _self._sourceLotIds
          : sourceLotIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      targetLotNumber: null == targetLotNumber
          ? _self.targetLotNumber
          : targetLotNumber // ignore: cast_nullable_to_non_nullable
              as String,
      targetLocationId: null == targetLocationId
          ? _self.targetLocationId
          : targetLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      targetExpiryDate: freezed == targetExpiryDate
          ? _self.targetExpiryDate
          : targetExpiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$UpdateLotTrackingRequest {
  String? get status;
  DateTime? get expiryDate;
  String? get notes;
  Map<String, dynamic>? get attributes;

  /// Create a copy of UpdateLotTrackingRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateLotTrackingRequestCopyWith<UpdateLotTrackingRequest> get copyWith =>
      _$UpdateLotTrackingRequestCopyWithImpl<UpdateLotTrackingRequest>(
          this as UpdateLotTrackingRequest, _$identity);

  /// Serializes this UpdateLotTrackingRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateLotTrackingRequest &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, expiryDate, notes,
      const DeepCollectionEquality().hash(attributes));

  @override
  String toString() {
    return 'UpdateLotTrackingRequest(status: $status, expiryDate: $expiryDate, notes: $notes, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class $UpdateLotTrackingRequestCopyWith<$Res> {
  factory $UpdateLotTrackingRequestCopyWith(UpdateLotTrackingRequest value,
          $Res Function(UpdateLotTrackingRequest) _then) =
      _$UpdateLotTrackingRequestCopyWithImpl;
  @useResult
  $Res call(
      {String? status,
      DateTime? expiryDate,
      String? notes,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class _$UpdateLotTrackingRequestCopyWithImpl<$Res>
    implements $UpdateLotTrackingRequestCopyWith<$Res> {
  _$UpdateLotTrackingRequestCopyWithImpl(this._self, this._then);

  final UpdateLotTrackingRequest _self;
  final $Res Function(UpdateLotTrackingRequest) _then;

  /// Create a copy of UpdateLotTrackingRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? expiryDate = freezed,
    Object? notes = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_self.copyWith(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _self.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateLotTrackingRequest].
extension UpdateLotTrackingRequestPatterns on UpdateLotTrackingRequest {
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
    TResult Function(_UpdateLotTrackingRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateLotTrackingRequest() when $default != null:
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
    TResult Function(_UpdateLotTrackingRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateLotTrackingRequest():
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
    TResult? Function(_UpdateLotTrackingRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateLotTrackingRequest() when $default != null:
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
    TResult Function(String? status, DateTime? expiryDate, String? notes,
            Map<String, dynamic>? attributes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateLotTrackingRequest() when $default != null:
        return $default(
            _that.status, _that.expiryDate, _that.notes, _that.attributes);
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
    TResult Function(String? status, DateTime? expiryDate, String? notes,
            Map<String, dynamic>? attributes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateLotTrackingRequest():
        return $default(
            _that.status, _that.expiryDate, _that.notes, _that.attributes);
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
    TResult? Function(String? status, DateTime? expiryDate, String? notes,
            Map<String, dynamic>? attributes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateLotTrackingRequest() when $default != null:
        return $default(
            _that.status, _that.expiryDate, _that.notes, _that.attributes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateLotTrackingRequest implements UpdateLotTrackingRequest {
  const _UpdateLotTrackingRequest(
      {this.status,
      this.expiryDate,
      this.notes,
      final Map<String, dynamic>? attributes})
      : _attributes = attributes;
  factory _UpdateLotTrackingRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateLotTrackingRequestFromJson(json);

  @override
  final String? status;
  @override
  final DateTime? expiryDate;
  @override
  final String? notes;
  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of UpdateLotTrackingRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateLotTrackingRequestCopyWith<_UpdateLotTrackingRequest> get copyWith =>
      __$UpdateLotTrackingRequestCopyWithImpl<_UpdateLotTrackingRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateLotTrackingRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateLotTrackingRequest &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, expiryDate, notes,
      const DeepCollectionEquality().hash(_attributes));

  @override
  String toString() {
    return 'UpdateLotTrackingRequest(status: $status, expiryDate: $expiryDate, notes: $notes, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class _$UpdateLotTrackingRequestCopyWith<$Res>
    implements $UpdateLotTrackingRequestCopyWith<$Res> {
  factory _$UpdateLotTrackingRequestCopyWith(_UpdateLotTrackingRequest value,
          $Res Function(_UpdateLotTrackingRequest) _then) =
      __$UpdateLotTrackingRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? status,
      DateTime? expiryDate,
      String? notes,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class __$UpdateLotTrackingRequestCopyWithImpl<$Res>
    implements _$UpdateLotTrackingRequestCopyWith<$Res> {
  __$UpdateLotTrackingRequestCopyWithImpl(this._self, this._then);

  final _UpdateLotTrackingRequest _self;
  final $Res Function(_UpdateLotTrackingRequest) _then;

  /// Create a copy of UpdateLotTrackingRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = freezed,
    Object? expiryDate = freezed,
    Object? notes = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_UpdateLotTrackingRequest(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _self.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$QuarantineLotRequest {
  String get reason;
  String? get notes;
  DateTime? get quarantinedUntil;

  /// Create a copy of QuarantineLotRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QuarantineLotRequestCopyWith<QuarantineLotRequest> get copyWith =>
      _$QuarantineLotRequestCopyWithImpl<QuarantineLotRequest>(
          this as QuarantineLotRequest, _$identity);

  /// Serializes this QuarantineLotRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QuarantineLotRequest &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.quarantinedUntil, quarantinedUntil) ||
                other.quarantinedUntil == quarantinedUntil));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason, notes, quarantinedUntil);

  @override
  String toString() {
    return 'QuarantineLotRequest(reason: $reason, notes: $notes, quarantinedUntil: $quarantinedUntil)';
  }
}

/// @nodoc
abstract mixin class $QuarantineLotRequestCopyWith<$Res> {
  factory $QuarantineLotRequestCopyWith(QuarantineLotRequest value,
          $Res Function(QuarantineLotRequest) _then) =
      _$QuarantineLotRequestCopyWithImpl;
  @useResult
  $Res call({String reason, String? notes, DateTime? quarantinedUntil});
}

/// @nodoc
class _$QuarantineLotRequestCopyWithImpl<$Res>
    implements $QuarantineLotRequestCopyWith<$Res> {
  _$QuarantineLotRequestCopyWithImpl(this._self, this._then);

  final QuarantineLotRequest _self;
  final $Res Function(QuarantineLotRequest) _then;

  /// Create a copy of QuarantineLotRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? notes = freezed,
    Object? quarantinedUntil = freezed,
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
      quarantinedUntil: freezed == quarantinedUntil
          ? _self.quarantinedUntil
          : quarantinedUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [QuarantineLotRequest].
extension QuarantineLotRequestPatterns on QuarantineLotRequest {
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
    TResult Function(_QuarantineLotRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _QuarantineLotRequest() when $default != null:
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
    TResult Function(_QuarantineLotRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QuarantineLotRequest():
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
    TResult? Function(_QuarantineLotRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QuarantineLotRequest() when $default != null:
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
    TResult Function(String reason, String? notes, DateTime? quarantinedUntil)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _QuarantineLotRequest() when $default != null:
        return $default(_that.reason, _that.notes, _that.quarantinedUntil);
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
    TResult Function(String reason, String? notes, DateTime? quarantinedUntil)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QuarantineLotRequest():
        return $default(_that.reason, _that.notes, _that.quarantinedUntil);
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
    TResult? Function(String reason, String? notes, DateTime? quarantinedUntil)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QuarantineLotRequest() when $default != null:
        return $default(_that.reason, _that.notes, _that.quarantinedUntil);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _QuarantineLotRequest implements QuarantineLotRequest {
  const _QuarantineLotRequest(
      {required this.reason, this.notes, this.quarantinedUntil});
  factory _QuarantineLotRequest.fromJson(Map<String, dynamic> json) =>
      _$QuarantineLotRequestFromJson(json);

  @override
  final String reason;
  @override
  final String? notes;
  @override
  final DateTime? quarantinedUntil;

  /// Create a copy of QuarantineLotRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$QuarantineLotRequestCopyWith<_QuarantineLotRequest> get copyWith =>
      __$QuarantineLotRequestCopyWithImpl<_QuarantineLotRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$QuarantineLotRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuarantineLotRequest &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.quarantinedUntil, quarantinedUntil) ||
                other.quarantinedUntil == quarantinedUntil));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason, notes, quarantinedUntil);

  @override
  String toString() {
    return 'QuarantineLotRequest(reason: $reason, notes: $notes, quarantinedUntil: $quarantinedUntil)';
  }
}

/// @nodoc
abstract mixin class _$QuarantineLotRequestCopyWith<$Res>
    implements $QuarantineLotRequestCopyWith<$Res> {
  factory _$QuarantineLotRequestCopyWith(_QuarantineLotRequest value,
          $Res Function(_QuarantineLotRequest) _then) =
      __$QuarantineLotRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String reason, String? notes, DateTime? quarantinedUntil});
}

/// @nodoc
class __$QuarantineLotRequestCopyWithImpl<$Res>
    implements _$QuarantineLotRequestCopyWith<$Res> {
  __$QuarantineLotRequestCopyWithImpl(this._self, this._then);

  final _QuarantineLotRequest _self;
  final $Res Function(_QuarantineLotRequest) _then;

  /// Create a copy of QuarantineLotRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reason = null,
    Object? notes = freezed,
    Object? quarantinedUntil = freezed,
  }) {
    return _then(_QuarantineLotRequest(
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      quarantinedUntil: freezed == quarantinedUntil
          ? _self.quarantinedUntil
          : quarantinedUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
mixin _$ReleaseLotRequest {
  String get releaseReason;
  String? get notes;
  String? get inspectedBy;
  DateTime? get inspectionDate;

  /// Create a copy of ReleaseLotRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReleaseLotRequestCopyWith<ReleaseLotRequest> get copyWith =>
      _$ReleaseLotRequestCopyWithImpl<ReleaseLotRequest>(
          this as ReleaseLotRequest, _$identity);

  /// Serializes this ReleaseLotRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReleaseLotRequest &&
            (identical(other.releaseReason, releaseReason) ||
                other.releaseReason == releaseReason) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.inspectedBy, inspectedBy) ||
                other.inspectedBy == inspectedBy) &&
            (identical(other.inspectionDate, inspectionDate) ||
                other.inspectionDate == inspectionDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, releaseReason, notes, inspectedBy, inspectionDate);

  @override
  String toString() {
    return 'ReleaseLotRequest(releaseReason: $releaseReason, notes: $notes, inspectedBy: $inspectedBy, inspectionDate: $inspectionDate)';
  }
}

/// @nodoc
abstract mixin class $ReleaseLotRequestCopyWith<$Res> {
  factory $ReleaseLotRequestCopyWith(
          ReleaseLotRequest value, $Res Function(ReleaseLotRequest) _then) =
      _$ReleaseLotRequestCopyWithImpl;
  @useResult
  $Res call(
      {String releaseReason,
      String? notes,
      String? inspectedBy,
      DateTime? inspectionDate});
}

/// @nodoc
class _$ReleaseLotRequestCopyWithImpl<$Res>
    implements $ReleaseLotRequestCopyWith<$Res> {
  _$ReleaseLotRequestCopyWithImpl(this._self, this._then);

  final ReleaseLotRequest _self;
  final $Res Function(ReleaseLotRequest) _then;

  /// Create a copy of ReleaseLotRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? releaseReason = null,
    Object? notes = freezed,
    Object? inspectedBy = freezed,
    Object? inspectionDate = freezed,
  }) {
    return _then(_self.copyWith(
      releaseReason: null == releaseReason
          ? _self.releaseReason
          : releaseReason // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectedBy: freezed == inspectedBy
          ? _self.inspectedBy
          : inspectedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionDate: freezed == inspectionDate
          ? _self.inspectionDate
          : inspectionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ReleaseLotRequest].
extension ReleaseLotRequestPatterns on ReleaseLotRequest {
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
    TResult Function(_ReleaseLotRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReleaseLotRequest() when $default != null:
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
    TResult Function(_ReleaseLotRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReleaseLotRequest():
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
    TResult? Function(_ReleaseLotRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReleaseLotRequest() when $default != null:
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
    TResult Function(String releaseReason, String? notes, String? inspectedBy,
            DateTime? inspectionDate)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReleaseLotRequest() when $default != null:
        return $default(_that.releaseReason, _that.notes, _that.inspectedBy,
            _that.inspectionDate);
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
    TResult Function(String releaseReason, String? notes, String? inspectedBy,
            DateTime? inspectionDate)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReleaseLotRequest():
        return $default(_that.releaseReason, _that.notes, _that.inspectedBy,
            _that.inspectionDate);
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
    TResult? Function(String releaseReason, String? notes, String? inspectedBy,
            DateTime? inspectionDate)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReleaseLotRequest() when $default != null:
        return $default(_that.releaseReason, _that.notes, _that.inspectedBy,
            _that.inspectionDate);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReleaseLotRequest implements ReleaseLotRequest {
  const _ReleaseLotRequest(
      {required this.releaseReason,
      this.notes,
      this.inspectedBy,
      this.inspectionDate});
  factory _ReleaseLotRequest.fromJson(Map<String, dynamic> json) =>
      _$ReleaseLotRequestFromJson(json);

  @override
  final String releaseReason;
  @override
  final String? notes;
  @override
  final String? inspectedBy;
  @override
  final DateTime? inspectionDate;

  /// Create a copy of ReleaseLotRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReleaseLotRequestCopyWith<_ReleaseLotRequest> get copyWith =>
      __$ReleaseLotRequestCopyWithImpl<_ReleaseLotRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReleaseLotRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReleaseLotRequest &&
            (identical(other.releaseReason, releaseReason) ||
                other.releaseReason == releaseReason) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.inspectedBy, inspectedBy) ||
                other.inspectedBy == inspectedBy) &&
            (identical(other.inspectionDate, inspectionDate) ||
                other.inspectionDate == inspectionDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, releaseReason, notes, inspectedBy, inspectionDate);

  @override
  String toString() {
    return 'ReleaseLotRequest(releaseReason: $releaseReason, notes: $notes, inspectedBy: $inspectedBy, inspectionDate: $inspectionDate)';
  }
}

/// @nodoc
abstract mixin class _$ReleaseLotRequestCopyWith<$Res>
    implements $ReleaseLotRequestCopyWith<$Res> {
  factory _$ReleaseLotRequestCopyWith(
          _ReleaseLotRequest value, $Res Function(_ReleaseLotRequest) _then) =
      __$ReleaseLotRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String releaseReason,
      String? notes,
      String? inspectedBy,
      DateTime? inspectionDate});
}

/// @nodoc
class __$ReleaseLotRequestCopyWithImpl<$Res>
    implements _$ReleaseLotRequestCopyWith<$Res> {
  __$ReleaseLotRequestCopyWithImpl(this._self, this._then);

  final _ReleaseLotRequest _self;
  final $Res Function(_ReleaseLotRequest) _then;

  /// Create a copy of ReleaseLotRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? releaseReason = null,
    Object? notes = freezed,
    Object? inspectedBy = freezed,
    Object? inspectionDate = freezed,
  }) {
    return _then(_ReleaseLotRequest(
      releaseReason: null == releaseReason
          ? _self.releaseReason
          : releaseReason // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectedBy: freezed == inspectedBy
          ? _self.inspectedBy
          : inspectedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionDate: freezed == inspectionDate
          ? _self.inspectionDate
          : inspectionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
mixin _$LotGenealogyFilters {
  String? get itemId;
  String? get locationId;
  String? get status;
  String? get lotNumber;
  String? get supplierLotNumber;
  String? get parentLotId;
  DateTime? get createdAfter;
  DateTime? get createdBefore;
  DateTime? get expiryAfter;
  DateTime? get expiryBefore;
  DateTime? get quarantinedAfter;
  DateTime? get quarantinedBefore;
  int? get page;
  int? get limit;
  String? get sortBy;
  String? get sortOrder;

  /// Create a copy of LotGenealogyFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LotGenealogyFiltersCopyWith<LotGenealogyFilters> get copyWith =>
      _$LotGenealogyFiltersCopyWithImpl<LotGenealogyFilters>(
          this as LotGenealogyFilters, _$identity);

  /// Serializes this LotGenealogyFilters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LotGenealogyFilters &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.supplierLotNumber, supplierLotNumber) ||
                other.supplierLotNumber == supplierLotNumber) &&
            (identical(other.parentLotId, parentLotId) ||
                other.parentLotId == parentLotId) &&
            (identical(other.createdAfter, createdAfter) ||
                other.createdAfter == createdAfter) &&
            (identical(other.createdBefore, createdBefore) ||
                other.createdBefore == createdBefore) &&
            (identical(other.expiryAfter, expiryAfter) ||
                other.expiryAfter == expiryAfter) &&
            (identical(other.expiryBefore, expiryBefore) ||
                other.expiryBefore == expiryBefore) &&
            (identical(other.quarantinedAfter, quarantinedAfter) ||
                other.quarantinedAfter == quarantinedAfter) &&
            (identical(other.quarantinedBefore, quarantinedBefore) ||
                other.quarantinedBefore == quarantinedBefore) &&
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
      lotNumber,
      supplierLotNumber,
      parentLotId,
      createdAfter,
      createdBefore,
      expiryAfter,
      expiryBefore,
      quarantinedAfter,
      quarantinedBefore,
      page,
      limit,
      sortBy,
      sortOrder);

  @override
  String toString() {
    return 'LotGenealogyFilters(itemId: $itemId, locationId: $locationId, status: $status, lotNumber: $lotNumber, supplierLotNumber: $supplierLotNumber, parentLotId: $parentLotId, createdAfter: $createdAfter, createdBefore: $createdBefore, expiryAfter: $expiryAfter, expiryBefore: $expiryBefore, quarantinedAfter: $quarantinedAfter, quarantinedBefore: $quarantinedBefore, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class $LotGenealogyFiltersCopyWith<$Res> {
  factory $LotGenealogyFiltersCopyWith(
          LotGenealogyFilters value, $Res Function(LotGenealogyFilters) _then) =
      _$LotGenealogyFiltersCopyWithImpl;
  @useResult
  $Res call(
      {String? itemId,
      String? locationId,
      String? status,
      String? lotNumber,
      String? supplierLotNumber,
      String? parentLotId,
      DateTime? createdAfter,
      DateTime? createdBefore,
      DateTime? expiryAfter,
      DateTime? expiryBefore,
      DateTime? quarantinedAfter,
      DateTime? quarantinedBefore,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class _$LotGenealogyFiltersCopyWithImpl<$Res>
    implements $LotGenealogyFiltersCopyWith<$Res> {
  _$LotGenealogyFiltersCopyWithImpl(this._self, this._then);

  final LotGenealogyFilters _self;
  final $Res Function(LotGenealogyFilters) _then;

  /// Create a copy of LotGenealogyFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = freezed,
    Object? locationId = freezed,
    Object? status = freezed,
    Object? lotNumber = freezed,
    Object? supplierLotNumber = freezed,
    Object? parentLotId = freezed,
    Object? createdAfter = freezed,
    Object? createdBefore = freezed,
    Object? expiryAfter = freezed,
    Object? expiryBefore = freezed,
    Object? quarantinedAfter = freezed,
    Object? quarantinedBefore = freezed,
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
      lotNumber: freezed == lotNumber
          ? _self.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierLotNumber: freezed == supplierLotNumber
          ? _self.supplierLotNumber
          : supplierLotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      parentLotId: freezed == parentLotId
          ? _self.parentLotId
          : parentLotId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAfter: freezed == createdAfter
          ? _self.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _self.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiryAfter: freezed == expiryAfter
          ? _self.expiryAfter
          : expiryAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiryBefore: freezed == expiryBefore
          ? _self.expiryBefore
          : expiryBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quarantinedAfter: freezed == quarantinedAfter
          ? _self.quarantinedAfter
          : quarantinedAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quarantinedBefore: freezed == quarantinedBefore
          ? _self.quarantinedBefore
          : quarantinedBefore // ignore: cast_nullable_to_non_nullable
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

/// Adds pattern-matching-related methods to [LotGenealogyFilters].
extension LotGenealogyFiltersPatterns on LotGenealogyFilters {
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
    TResult Function(_LotGenealogyFilters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LotGenealogyFilters() when $default != null:
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
    TResult Function(_LotGenealogyFilters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LotGenealogyFilters():
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
    TResult? Function(_LotGenealogyFilters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LotGenealogyFilters() when $default != null:
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
            String? lotNumber,
            String? supplierLotNumber,
            String? parentLotId,
            DateTime? createdAfter,
            DateTime? createdBefore,
            DateTime? expiryAfter,
            DateTime? expiryBefore,
            DateTime? quarantinedAfter,
            DateTime? quarantinedBefore,
            int? page,
            int? limit,
            String? sortBy,
            String? sortOrder)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LotGenealogyFilters() when $default != null:
        return $default(
            _that.itemId,
            _that.locationId,
            _that.status,
            _that.lotNumber,
            _that.supplierLotNumber,
            _that.parentLotId,
            _that.createdAfter,
            _that.createdBefore,
            _that.expiryAfter,
            _that.expiryBefore,
            _that.quarantinedAfter,
            _that.quarantinedBefore,
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
            String? lotNumber,
            String? supplierLotNumber,
            String? parentLotId,
            DateTime? createdAfter,
            DateTime? createdBefore,
            DateTime? expiryAfter,
            DateTime? expiryBefore,
            DateTime? quarantinedAfter,
            DateTime? quarantinedBefore,
            int? page,
            int? limit,
            String? sortBy,
            String? sortOrder)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LotGenealogyFilters():
        return $default(
            _that.itemId,
            _that.locationId,
            _that.status,
            _that.lotNumber,
            _that.supplierLotNumber,
            _that.parentLotId,
            _that.createdAfter,
            _that.createdBefore,
            _that.expiryAfter,
            _that.expiryBefore,
            _that.quarantinedAfter,
            _that.quarantinedBefore,
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
            String? lotNumber,
            String? supplierLotNumber,
            String? parentLotId,
            DateTime? createdAfter,
            DateTime? createdBefore,
            DateTime? expiryAfter,
            DateTime? expiryBefore,
            DateTime? quarantinedAfter,
            DateTime? quarantinedBefore,
            int? page,
            int? limit,
            String? sortBy,
            String? sortOrder)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LotGenealogyFilters() when $default != null:
        return $default(
            _that.itemId,
            _that.locationId,
            _that.status,
            _that.lotNumber,
            _that.supplierLotNumber,
            _that.parentLotId,
            _that.createdAfter,
            _that.createdBefore,
            _that.expiryAfter,
            _that.expiryBefore,
            _that.quarantinedAfter,
            _that.quarantinedBefore,
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
class _LotGenealogyFilters extends LotGenealogyFilters {
  const _LotGenealogyFilters(
      {this.itemId,
      this.locationId,
      this.status,
      this.lotNumber,
      this.supplierLotNumber,
      this.parentLotId,
      this.createdAfter,
      this.createdBefore,
      this.expiryAfter,
      this.expiryBefore,
      this.quarantinedAfter,
      this.quarantinedBefore,
      this.page,
      this.limit,
      this.sortBy,
      this.sortOrder})
      : super._();
  factory _LotGenealogyFilters.fromJson(Map<String, dynamic> json) =>
      _$LotGenealogyFiltersFromJson(json);

  @override
  final String? itemId;
  @override
  final String? locationId;
  @override
  final String? status;
  @override
  final String? lotNumber;
  @override
  final String? supplierLotNumber;
  @override
  final String? parentLotId;
  @override
  final DateTime? createdAfter;
  @override
  final DateTime? createdBefore;
  @override
  final DateTime? expiryAfter;
  @override
  final DateTime? expiryBefore;
  @override
  final DateTime? quarantinedAfter;
  @override
  final DateTime? quarantinedBefore;
  @override
  final int? page;
  @override
  final int? limit;
  @override
  final String? sortBy;
  @override
  final String? sortOrder;

  /// Create a copy of LotGenealogyFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LotGenealogyFiltersCopyWith<_LotGenealogyFilters> get copyWith =>
      __$LotGenealogyFiltersCopyWithImpl<_LotGenealogyFilters>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LotGenealogyFiltersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LotGenealogyFilters &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.supplierLotNumber, supplierLotNumber) ||
                other.supplierLotNumber == supplierLotNumber) &&
            (identical(other.parentLotId, parentLotId) ||
                other.parentLotId == parentLotId) &&
            (identical(other.createdAfter, createdAfter) ||
                other.createdAfter == createdAfter) &&
            (identical(other.createdBefore, createdBefore) ||
                other.createdBefore == createdBefore) &&
            (identical(other.expiryAfter, expiryAfter) ||
                other.expiryAfter == expiryAfter) &&
            (identical(other.expiryBefore, expiryBefore) ||
                other.expiryBefore == expiryBefore) &&
            (identical(other.quarantinedAfter, quarantinedAfter) ||
                other.quarantinedAfter == quarantinedAfter) &&
            (identical(other.quarantinedBefore, quarantinedBefore) ||
                other.quarantinedBefore == quarantinedBefore) &&
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
      lotNumber,
      supplierLotNumber,
      parentLotId,
      createdAfter,
      createdBefore,
      expiryAfter,
      expiryBefore,
      quarantinedAfter,
      quarantinedBefore,
      page,
      limit,
      sortBy,
      sortOrder);

  @override
  String toString() {
    return 'LotGenealogyFilters(itemId: $itemId, locationId: $locationId, status: $status, lotNumber: $lotNumber, supplierLotNumber: $supplierLotNumber, parentLotId: $parentLotId, createdAfter: $createdAfter, createdBefore: $createdBefore, expiryAfter: $expiryAfter, expiryBefore: $expiryBefore, quarantinedAfter: $quarantinedAfter, quarantinedBefore: $quarantinedBefore, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class _$LotGenealogyFiltersCopyWith<$Res>
    implements $LotGenealogyFiltersCopyWith<$Res> {
  factory _$LotGenealogyFiltersCopyWith(_LotGenealogyFilters value,
          $Res Function(_LotGenealogyFilters) _then) =
      __$LotGenealogyFiltersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? itemId,
      String? locationId,
      String? status,
      String? lotNumber,
      String? supplierLotNumber,
      String? parentLotId,
      DateTime? createdAfter,
      DateTime? createdBefore,
      DateTime? expiryAfter,
      DateTime? expiryBefore,
      DateTime? quarantinedAfter,
      DateTime? quarantinedBefore,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class __$LotGenealogyFiltersCopyWithImpl<$Res>
    implements _$LotGenealogyFiltersCopyWith<$Res> {
  __$LotGenealogyFiltersCopyWithImpl(this._self, this._then);

  final _LotGenealogyFilters _self;
  final $Res Function(_LotGenealogyFilters) _then;

  /// Create a copy of LotGenealogyFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? itemId = freezed,
    Object? locationId = freezed,
    Object? status = freezed,
    Object? lotNumber = freezed,
    Object? supplierLotNumber = freezed,
    Object? parentLotId = freezed,
    Object? createdAfter = freezed,
    Object? createdBefore = freezed,
    Object? expiryAfter = freezed,
    Object? expiryBefore = freezed,
    Object? quarantinedAfter = freezed,
    Object? quarantinedBefore = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_LotGenealogyFilters(
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
      lotNumber: freezed == lotNumber
          ? _self.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierLotNumber: freezed == supplierLotNumber
          ? _self.supplierLotNumber
          : supplierLotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      parentLotId: freezed == parentLotId
          ? _self.parentLotId
          : parentLotId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAfter: freezed == createdAfter
          ? _self.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _self.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiryAfter: freezed == expiryAfter
          ? _self.expiryAfter
          : expiryAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiryBefore: freezed == expiryBefore
          ? _self.expiryBefore
          : expiryBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quarantinedAfter: freezed == quarantinedAfter
          ? _self.quarantinedAfter
          : quarantinedAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quarantinedBefore: freezed == quarantinedBefore
          ? _self.quarantinedBefore
          : quarantinedBefore // ignore: cast_nullable_to_non_nullable
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
mixin _$LotTrackingHistoryFilters {
  String? get lotId;
  String? get eventType;
  String? get fromLocationId;
  String? get toLocationId;
  String? get referenceType;
  String? get referenceId;
  String? get performedBy;
  DateTime? get eventAfter;
  DateTime? get eventBefore;
  int? get page;
  int? get limit;
  String? get sortBy;
  String? get sortOrder;

  /// Create a copy of LotTrackingHistoryFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LotTrackingHistoryFiltersCopyWith<LotTrackingHistoryFilters> get copyWith =>
      _$LotTrackingHistoryFiltersCopyWithImpl<LotTrackingHistoryFilters>(
          this as LotTrackingHistoryFilters, _$identity);

  /// Serializes this LotTrackingHistoryFilters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LotTrackingHistoryFilters &&
            (identical(other.lotId, lotId) || other.lotId == lotId) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.fromLocationId, fromLocationId) ||
                other.fromLocationId == fromLocationId) &&
            (identical(other.toLocationId, toLocationId) ||
                other.toLocationId == toLocationId) &&
            (identical(other.referenceType, referenceType) ||
                other.referenceType == referenceType) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.performedBy, performedBy) ||
                other.performedBy == performedBy) &&
            (identical(other.eventAfter, eventAfter) ||
                other.eventAfter == eventAfter) &&
            (identical(other.eventBefore, eventBefore) ||
                other.eventBefore == eventBefore) &&
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
      lotId,
      eventType,
      fromLocationId,
      toLocationId,
      referenceType,
      referenceId,
      performedBy,
      eventAfter,
      eventBefore,
      page,
      limit,
      sortBy,
      sortOrder);

  @override
  String toString() {
    return 'LotTrackingHistoryFilters(lotId: $lotId, eventType: $eventType, fromLocationId: $fromLocationId, toLocationId: $toLocationId, referenceType: $referenceType, referenceId: $referenceId, performedBy: $performedBy, eventAfter: $eventAfter, eventBefore: $eventBefore, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class $LotTrackingHistoryFiltersCopyWith<$Res> {
  factory $LotTrackingHistoryFiltersCopyWith(LotTrackingHistoryFilters value,
          $Res Function(LotTrackingHistoryFilters) _then) =
      _$LotTrackingHistoryFiltersCopyWithImpl;
  @useResult
  $Res call(
      {String? lotId,
      String? eventType,
      String? fromLocationId,
      String? toLocationId,
      String? referenceType,
      String? referenceId,
      String? performedBy,
      DateTime? eventAfter,
      DateTime? eventBefore,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class _$LotTrackingHistoryFiltersCopyWithImpl<$Res>
    implements $LotTrackingHistoryFiltersCopyWith<$Res> {
  _$LotTrackingHistoryFiltersCopyWithImpl(this._self, this._then);

  final LotTrackingHistoryFilters _self;
  final $Res Function(LotTrackingHistoryFilters) _then;

  /// Create a copy of LotTrackingHistoryFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotId = freezed,
    Object? eventType = freezed,
    Object? fromLocationId = freezed,
    Object? toLocationId = freezed,
    Object? referenceType = freezed,
    Object? referenceId = freezed,
    Object? performedBy = freezed,
    Object? eventAfter = freezed,
    Object? eventBefore = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_self.copyWith(
      lotId: freezed == lotId
          ? _self.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as String?,
      eventType: freezed == eventType
          ? _self.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String?,
      fromLocationId: freezed == fromLocationId
          ? _self.fromLocationId
          : fromLocationId // ignore: cast_nullable_to_non_nullable
              as String?,
      toLocationId: freezed == toLocationId
          ? _self.toLocationId
          : toLocationId // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceType: freezed == referenceType
          ? _self.referenceType
          : referenceType // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _self.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      performedBy: freezed == performedBy
          ? _self.performedBy
          : performedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      eventAfter: freezed == eventAfter
          ? _self.eventAfter
          : eventAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      eventBefore: freezed == eventBefore
          ? _self.eventBefore
          : eventBefore // ignore: cast_nullable_to_non_nullable
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

/// Adds pattern-matching-related methods to [LotTrackingHistoryFilters].
extension LotTrackingHistoryFiltersPatterns on LotTrackingHistoryFilters {
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
    TResult Function(_LotTrackingHistoryFilters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LotTrackingHistoryFilters() when $default != null:
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
    TResult Function(_LotTrackingHistoryFilters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LotTrackingHistoryFilters():
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
    TResult? Function(_LotTrackingHistoryFilters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LotTrackingHistoryFilters() when $default != null:
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
            String? lotId,
            String? eventType,
            String? fromLocationId,
            String? toLocationId,
            String? referenceType,
            String? referenceId,
            String? performedBy,
            DateTime? eventAfter,
            DateTime? eventBefore,
            int? page,
            int? limit,
            String? sortBy,
            String? sortOrder)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LotTrackingHistoryFilters() when $default != null:
        return $default(
            _that.lotId,
            _that.eventType,
            _that.fromLocationId,
            _that.toLocationId,
            _that.referenceType,
            _that.referenceId,
            _that.performedBy,
            _that.eventAfter,
            _that.eventBefore,
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
            String? lotId,
            String? eventType,
            String? fromLocationId,
            String? toLocationId,
            String? referenceType,
            String? referenceId,
            String? performedBy,
            DateTime? eventAfter,
            DateTime? eventBefore,
            int? page,
            int? limit,
            String? sortBy,
            String? sortOrder)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LotTrackingHistoryFilters():
        return $default(
            _that.lotId,
            _that.eventType,
            _that.fromLocationId,
            _that.toLocationId,
            _that.referenceType,
            _that.referenceId,
            _that.performedBy,
            _that.eventAfter,
            _that.eventBefore,
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
            String? lotId,
            String? eventType,
            String? fromLocationId,
            String? toLocationId,
            String? referenceType,
            String? referenceId,
            String? performedBy,
            DateTime? eventAfter,
            DateTime? eventBefore,
            int? page,
            int? limit,
            String? sortBy,
            String? sortOrder)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LotTrackingHistoryFilters() when $default != null:
        return $default(
            _that.lotId,
            _that.eventType,
            _that.fromLocationId,
            _that.toLocationId,
            _that.referenceType,
            _that.referenceId,
            _that.performedBy,
            _that.eventAfter,
            _that.eventBefore,
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
class _LotTrackingHistoryFilters extends LotTrackingHistoryFilters {
  const _LotTrackingHistoryFilters(
      {this.lotId,
      this.eventType,
      this.fromLocationId,
      this.toLocationId,
      this.referenceType,
      this.referenceId,
      this.performedBy,
      this.eventAfter,
      this.eventBefore,
      this.page,
      this.limit,
      this.sortBy,
      this.sortOrder})
      : super._();
  factory _LotTrackingHistoryFilters.fromJson(Map<String, dynamic> json) =>
      _$LotTrackingHistoryFiltersFromJson(json);

  @override
  final String? lotId;
  @override
  final String? eventType;
  @override
  final String? fromLocationId;
  @override
  final String? toLocationId;
  @override
  final String? referenceType;
  @override
  final String? referenceId;
  @override
  final String? performedBy;
  @override
  final DateTime? eventAfter;
  @override
  final DateTime? eventBefore;
  @override
  final int? page;
  @override
  final int? limit;
  @override
  final String? sortBy;
  @override
  final String? sortOrder;

  /// Create a copy of LotTrackingHistoryFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LotTrackingHistoryFiltersCopyWith<_LotTrackingHistoryFilters>
      get copyWith =>
          __$LotTrackingHistoryFiltersCopyWithImpl<_LotTrackingHistoryFilters>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LotTrackingHistoryFiltersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LotTrackingHistoryFilters &&
            (identical(other.lotId, lotId) || other.lotId == lotId) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.fromLocationId, fromLocationId) ||
                other.fromLocationId == fromLocationId) &&
            (identical(other.toLocationId, toLocationId) ||
                other.toLocationId == toLocationId) &&
            (identical(other.referenceType, referenceType) ||
                other.referenceType == referenceType) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.performedBy, performedBy) ||
                other.performedBy == performedBy) &&
            (identical(other.eventAfter, eventAfter) ||
                other.eventAfter == eventAfter) &&
            (identical(other.eventBefore, eventBefore) ||
                other.eventBefore == eventBefore) &&
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
      lotId,
      eventType,
      fromLocationId,
      toLocationId,
      referenceType,
      referenceId,
      performedBy,
      eventAfter,
      eventBefore,
      page,
      limit,
      sortBy,
      sortOrder);

  @override
  String toString() {
    return 'LotTrackingHistoryFilters(lotId: $lotId, eventType: $eventType, fromLocationId: $fromLocationId, toLocationId: $toLocationId, referenceType: $referenceType, referenceId: $referenceId, performedBy: $performedBy, eventAfter: $eventAfter, eventBefore: $eventBefore, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class _$LotTrackingHistoryFiltersCopyWith<$Res>
    implements $LotTrackingHistoryFiltersCopyWith<$Res> {
  factory _$LotTrackingHistoryFiltersCopyWith(_LotTrackingHistoryFilters value,
          $Res Function(_LotTrackingHistoryFilters) _then) =
      __$LotTrackingHistoryFiltersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? lotId,
      String? eventType,
      String? fromLocationId,
      String? toLocationId,
      String? referenceType,
      String? referenceId,
      String? performedBy,
      DateTime? eventAfter,
      DateTime? eventBefore,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class __$LotTrackingHistoryFiltersCopyWithImpl<$Res>
    implements _$LotTrackingHistoryFiltersCopyWith<$Res> {
  __$LotTrackingHistoryFiltersCopyWithImpl(this._self, this._then);

  final _LotTrackingHistoryFilters _self;
  final $Res Function(_LotTrackingHistoryFilters) _then;

  /// Create a copy of LotTrackingHistoryFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? lotId = freezed,
    Object? eventType = freezed,
    Object? fromLocationId = freezed,
    Object? toLocationId = freezed,
    Object? referenceType = freezed,
    Object? referenceId = freezed,
    Object? performedBy = freezed,
    Object? eventAfter = freezed,
    Object? eventBefore = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_LotTrackingHistoryFilters(
      lotId: freezed == lotId
          ? _self.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as String?,
      eventType: freezed == eventType
          ? _self.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String?,
      fromLocationId: freezed == fromLocationId
          ? _self.fromLocationId
          : fromLocationId // ignore: cast_nullable_to_non_nullable
              as String?,
      toLocationId: freezed == toLocationId
          ? _self.toLocationId
          : toLocationId // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceType: freezed == referenceType
          ? _self.referenceType
          : referenceType // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _self.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      performedBy: freezed == performedBy
          ? _self.performedBy
          : performedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      eventAfter: freezed == eventAfter
          ? _self.eventAfter
          : eventAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      eventBefore: freezed == eventBefore
          ? _self.eventBefore
          : eventBefore // ignore: cast_nullable_to_non_nullable
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
mixin _$ExpiringLot {
  String get lotId;
  String get lotNumber;
  String get itemId;
  String get itemName;
  String get locationId;
  String get locationName;
  double get quantity;
  DateTime get expiryDate;
  int get daysUntilExpiry;
  String? get status;

  /// Create a copy of ExpiringLot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExpiringLotCopyWith<ExpiringLot> get copyWith =>
      _$ExpiringLotCopyWithImpl<ExpiringLot>(this as ExpiringLot, _$identity);

  /// Serializes this ExpiringLot to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExpiringLot &&
            (identical(other.lotId, lotId) || other.lotId == lotId) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.daysUntilExpiry, daysUntilExpiry) ||
                other.daysUntilExpiry == daysUntilExpiry) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lotId,
      lotNumber,
      itemId,
      itemName,
      locationId,
      locationName,
      quantity,
      expiryDate,
      daysUntilExpiry,
      status);

  @override
  String toString() {
    return 'ExpiringLot(lotId: $lotId, lotNumber: $lotNumber, itemId: $itemId, itemName: $itemName, locationId: $locationId, locationName: $locationName, quantity: $quantity, expiryDate: $expiryDate, daysUntilExpiry: $daysUntilExpiry, status: $status)';
  }
}

/// @nodoc
abstract mixin class $ExpiringLotCopyWith<$Res> {
  factory $ExpiringLotCopyWith(
          ExpiringLot value, $Res Function(ExpiringLot) _then) =
      _$ExpiringLotCopyWithImpl;
  @useResult
  $Res call(
      {String lotId,
      String lotNumber,
      String itemId,
      String itemName,
      String locationId,
      String locationName,
      double quantity,
      DateTime expiryDate,
      int daysUntilExpiry,
      String? status});
}

/// @nodoc
class _$ExpiringLotCopyWithImpl<$Res> implements $ExpiringLotCopyWith<$Res> {
  _$ExpiringLotCopyWithImpl(this._self, this._then);

  final ExpiringLot _self;
  final $Res Function(ExpiringLot) _then;

  /// Create a copy of ExpiringLot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotId = null,
    Object? lotNumber = null,
    Object? itemId = null,
    Object? itemName = null,
    Object? locationId = null,
    Object? locationName = null,
    Object? quantity = null,
    Object? expiryDate = null,
    Object? daysUntilExpiry = null,
    Object? status = freezed,
  }) {
    return _then(_self.copyWith(
      lotId: null == lotId
          ? _self.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as String,
      lotNumber: null == lotNumber
          ? _self.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _self.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      locationName: null == locationName
          ? _self.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      expiryDate: null == expiryDate
          ? _self.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      daysUntilExpiry: null == daysUntilExpiry
          ? _self.daysUntilExpiry
          : daysUntilExpiry // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ExpiringLot].
extension ExpiringLotPatterns on ExpiringLot {
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
    TResult Function(_ExpiringLot value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExpiringLot() when $default != null:
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
    TResult Function(_ExpiringLot value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExpiringLot():
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
    TResult? Function(_ExpiringLot value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExpiringLot() when $default != null:
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
            String lotId,
            String lotNumber,
            String itemId,
            String itemName,
            String locationId,
            String locationName,
            double quantity,
            DateTime expiryDate,
            int daysUntilExpiry,
            String? status)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExpiringLot() when $default != null:
        return $default(
            _that.lotId,
            _that.lotNumber,
            _that.itemId,
            _that.itemName,
            _that.locationId,
            _that.locationName,
            _that.quantity,
            _that.expiryDate,
            _that.daysUntilExpiry,
            _that.status);
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
            String lotId,
            String lotNumber,
            String itemId,
            String itemName,
            String locationId,
            String locationName,
            double quantity,
            DateTime expiryDate,
            int daysUntilExpiry,
            String? status)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExpiringLot():
        return $default(
            _that.lotId,
            _that.lotNumber,
            _that.itemId,
            _that.itemName,
            _that.locationId,
            _that.locationName,
            _that.quantity,
            _that.expiryDate,
            _that.daysUntilExpiry,
            _that.status);
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
            String lotId,
            String lotNumber,
            String itemId,
            String itemName,
            String locationId,
            String locationName,
            double quantity,
            DateTime expiryDate,
            int daysUntilExpiry,
            String? status)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExpiringLot() when $default != null:
        return $default(
            _that.lotId,
            _that.lotNumber,
            _that.itemId,
            _that.itemName,
            _that.locationId,
            _that.locationName,
            _that.quantity,
            _that.expiryDate,
            _that.daysUntilExpiry,
            _that.status);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ExpiringLot implements ExpiringLot {
  const _ExpiringLot(
      {required this.lotId,
      required this.lotNumber,
      required this.itemId,
      required this.itemName,
      required this.locationId,
      required this.locationName,
      required this.quantity,
      required this.expiryDate,
      required this.daysUntilExpiry,
      this.status});
  factory _ExpiringLot.fromJson(Map<String, dynamic> json) =>
      _$ExpiringLotFromJson(json);

  @override
  final String lotId;
  @override
  final String lotNumber;
  @override
  final String itemId;
  @override
  final String itemName;
  @override
  final String locationId;
  @override
  final String locationName;
  @override
  final double quantity;
  @override
  final DateTime expiryDate;
  @override
  final int daysUntilExpiry;
  @override
  final String? status;

  /// Create a copy of ExpiringLot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExpiringLotCopyWith<_ExpiringLot> get copyWith =>
      __$ExpiringLotCopyWithImpl<_ExpiringLot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExpiringLotToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExpiringLot &&
            (identical(other.lotId, lotId) || other.lotId == lotId) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.daysUntilExpiry, daysUntilExpiry) ||
                other.daysUntilExpiry == daysUntilExpiry) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lotId,
      lotNumber,
      itemId,
      itemName,
      locationId,
      locationName,
      quantity,
      expiryDate,
      daysUntilExpiry,
      status);

  @override
  String toString() {
    return 'ExpiringLot(lotId: $lotId, lotNumber: $lotNumber, itemId: $itemId, itemName: $itemName, locationId: $locationId, locationName: $locationName, quantity: $quantity, expiryDate: $expiryDate, daysUntilExpiry: $daysUntilExpiry, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$ExpiringLotCopyWith<$Res>
    implements $ExpiringLotCopyWith<$Res> {
  factory _$ExpiringLotCopyWith(
          _ExpiringLot value, $Res Function(_ExpiringLot) _then) =
      __$ExpiringLotCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String lotId,
      String lotNumber,
      String itemId,
      String itemName,
      String locationId,
      String locationName,
      double quantity,
      DateTime expiryDate,
      int daysUntilExpiry,
      String? status});
}

/// @nodoc
class __$ExpiringLotCopyWithImpl<$Res> implements _$ExpiringLotCopyWith<$Res> {
  __$ExpiringLotCopyWithImpl(this._self, this._then);

  final _ExpiringLot _self;
  final $Res Function(_ExpiringLot) _then;

  /// Create a copy of ExpiringLot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? lotId = null,
    Object? lotNumber = null,
    Object? itemId = null,
    Object? itemName = null,
    Object? locationId = null,
    Object? locationName = null,
    Object? quantity = null,
    Object? expiryDate = null,
    Object? daysUntilExpiry = null,
    Object? status = freezed,
  }) {
    return _then(_ExpiringLot(
      lotId: null == lotId
          ? _self.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as String,
      lotNumber: null == lotNumber
          ? _self.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _self.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      locationName: null == locationName
          ? _self.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      expiryDate: null == expiryDate
          ? _self.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      daysUntilExpiry: null == daysUntilExpiry
          ? _self.daysUntilExpiry
          : daysUntilExpiry // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
