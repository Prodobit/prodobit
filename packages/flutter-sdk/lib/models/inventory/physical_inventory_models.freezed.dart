// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'physical_inventory_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PhysicalInventory {
  String get id;
  String get name;
  String get description;
  String get locationId;
  String get status; // 'draft', 'in_progress', 'completed', 'cancelled'
  DateTime get createdAt;
  DateTime get updatedAt;
  DateTime? get startedAt;
  DateTime? get completedAt;
  DateTime? get cancelledAt;
  String? get createdBy;
  String? get startedBy;
  String? get completedBy;
  String? get cancelledBy;
  Map<String, dynamic>? get metadata;

  /// Create a copy of PhysicalInventory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PhysicalInventoryCopyWith<PhysicalInventory> get copyWith =>
      _$PhysicalInventoryCopyWithImpl<PhysicalInventory>(
          this as PhysicalInventory, _$identity);

  /// Serializes this PhysicalInventory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PhysicalInventory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.startedBy, startedBy) ||
                other.startedBy == startedBy) &&
            (identical(other.completedBy, completedBy) ||
                other.completedBy == completedBy) &&
            (identical(other.cancelledBy, cancelledBy) ||
                other.cancelledBy == cancelledBy) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      locationId,
      status,
      createdAt,
      updatedAt,
      startedAt,
      completedAt,
      cancelledAt,
      createdBy,
      startedBy,
      completedBy,
      cancelledBy,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'PhysicalInventory(id: $id, name: $name, description: $description, locationId: $locationId, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, startedAt: $startedAt, completedAt: $completedAt, cancelledAt: $cancelledAt, createdBy: $createdBy, startedBy: $startedBy, completedBy: $completedBy, cancelledBy: $cancelledBy, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $PhysicalInventoryCopyWith<$Res> {
  factory $PhysicalInventoryCopyWith(
          PhysicalInventory value, $Res Function(PhysicalInventory) _then) =
      _$PhysicalInventoryCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String locationId,
      String status,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? startedAt,
      DateTime? completedAt,
      DateTime? cancelledAt,
      String? createdBy,
      String? startedBy,
      String? completedBy,
      String? cancelledBy,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$PhysicalInventoryCopyWithImpl<$Res>
    implements $PhysicalInventoryCopyWith<$Res> {
  _$PhysicalInventoryCopyWithImpl(this._self, this._then);

  final PhysicalInventory _self;
  final $Res Function(PhysicalInventory) _then;

  /// Create a copy of PhysicalInventory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? locationId = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? startedAt = freezed,
    Object? completedAt = freezed,
    Object? cancelledAt = freezed,
    Object? createdBy = freezed,
    Object? startedBy = freezed,
    Object? completedBy = freezed,
    Object? cancelledBy = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
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
      startedAt: freezed == startedAt
          ? _self.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedAt: freezed == completedAt
          ? _self.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledAt: freezed == cancelledAt
          ? _self.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      startedBy: freezed == startedBy
          ? _self.startedBy
          : startedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      completedBy: freezed == completedBy
          ? _self.completedBy
          : completedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelledBy: freezed == cancelledBy
          ? _self.cancelledBy
          : cancelledBy // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PhysicalInventory].
extension PhysicalInventoryPatterns on PhysicalInventory {
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
    TResult Function(_PhysicalInventory value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PhysicalInventory() when $default != null:
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
    TResult Function(_PhysicalInventory value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PhysicalInventory():
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
    TResult? Function(_PhysicalInventory value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PhysicalInventory() when $default != null:
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
            String name,
            String description,
            String locationId,
            String status,
            DateTime createdAt,
            DateTime updatedAt,
            DateTime? startedAt,
            DateTime? completedAt,
            DateTime? cancelledAt,
            String? createdBy,
            String? startedBy,
            String? completedBy,
            String? cancelledBy,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PhysicalInventory() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.description,
            _that.locationId,
            _that.status,
            _that.createdAt,
            _that.updatedAt,
            _that.startedAt,
            _that.completedAt,
            _that.cancelledAt,
            _that.createdBy,
            _that.startedBy,
            _that.completedBy,
            _that.cancelledBy,
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
            String name,
            String description,
            String locationId,
            String status,
            DateTime createdAt,
            DateTime updatedAt,
            DateTime? startedAt,
            DateTime? completedAt,
            DateTime? cancelledAt,
            String? createdBy,
            String? startedBy,
            String? completedBy,
            String? cancelledBy,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PhysicalInventory():
        return $default(
            _that.id,
            _that.name,
            _that.description,
            _that.locationId,
            _that.status,
            _that.createdAt,
            _that.updatedAt,
            _that.startedAt,
            _that.completedAt,
            _that.cancelledAt,
            _that.createdBy,
            _that.startedBy,
            _that.completedBy,
            _that.cancelledBy,
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
            String name,
            String description,
            String locationId,
            String status,
            DateTime createdAt,
            DateTime updatedAt,
            DateTime? startedAt,
            DateTime? completedAt,
            DateTime? cancelledAt,
            String? createdBy,
            String? startedBy,
            String? completedBy,
            String? cancelledBy,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PhysicalInventory() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.description,
            _that.locationId,
            _that.status,
            _that.createdAt,
            _that.updatedAt,
            _that.startedAt,
            _that.completedAt,
            _that.cancelledAt,
            _that.createdBy,
            _that.startedBy,
            _that.completedBy,
            _that.cancelledBy,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PhysicalInventory implements PhysicalInventory {
  const _PhysicalInventory(
      {required this.id,
      required this.name,
      required this.description,
      required this.locationId,
      required this.status,
      required this.createdAt,
      required this.updatedAt,
      this.startedAt,
      this.completedAt,
      this.cancelledAt,
      this.createdBy,
      this.startedBy,
      this.completedBy,
      this.cancelledBy,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _PhysicalInventory.fromJson(Map<String, dynamic> json) =>
      _$PhysicalInventoryFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String locationId;
  @override
  final String status;
// 'draft', 'in_progress', 'completed', 'cancelled'
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? completedAt;
  @override
  final DateTime? cancelledAt;
  @override
  final String? createdBy;
  @override
  final String? startedBy;
  @override
  final String? completedBy;
  @override
  final String? cancelledBy;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of PhysicalInventory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PhysicalInventoryCopyWith<_PhysicalInventory> get copyWith =>
      __$PhysicalInventoryCopyWithImpl<_PhysicalInventory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PhysicalInventoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PhysicalInventory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.startedBy, startedBy) ||
                other.startedBy == startedBy) &&
            (identical(other.completedBy, completedBy) ||
                other.completedBy == completedBy) &&
            (identical(other.cancelledBy, cancelledBy) ||
                other.cancelledBy == cancelledBy) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      locationId,
      status,
      createdAt,
      updatedAt,
      startedAt,
      completedAt,
      cancelledAt,
      createdBy,
      startedBy,
      completedBy,
      cancelledBy,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'PhysicalInventory(id: $id, name: $name, description: $description, locationId: $locationId, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, startedAt: $startedAt, completedAt: $completedAt, cancelledAt: $cancelledAt, createdBy: $createdBy, startedBy: $startedBy, completedBy: $completedBy, cancelledBy: $cancelledBy, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$PhysicalInventoryCopyWith<$Res>
    implements $PhysicalInventoryCopyWith<$Res> {
  factory _$PhysicalInventoryCopyWith(
          _PhysicalInventory value, $Res Function(_PhysicalInventory) _then) =
      __$PhysicalInventoryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String locationId,
      String status,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? startedAt,
      DateTime? completedAt,
      DateTime? cancelledAt,
      String? createdBy,
      String? startedBy,
      String? completedBy,
      String? cancelledBy,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$PhysicalInventoryCopyWithImpl<$Res>
    implements _$PhysicalInventoryCopyWith<$Res> {
  __$PhysicalInventoryCopyWithImpl(this._self, this._then);

  final _PhysicalInventory _self;
  final $Res Function(_PhysicalInventory) _then;

  /// Create a copy of PhysicalInventory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? locationId = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? startedAt = freezed,
    Object? completedAt = freezed,
    Object? cancelledAt = freezed,
    Object? createdBy = freezed,
    Object? startedBy = freezed,
    Object? completedBy = freezed,
    Object? cancelledBy = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_PhysicalInventory(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
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
      startedAt: freezed == startedAt
          ? _self.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedAt: freezed == completedAt
          ? _self.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledAt: freezed == cancelledAt
          ? _self.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      startedBy: freezed == startedBy
          ? _self.startedBy
          : startedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      completedBy: freezed == completedBy
          ? _self.completedBy
          : completedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelledBy: freezed == cancelledBy
          ? _self.cancelledBy
          : cancelledBy // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$PhysicalInventoryItem {
  String get id;
  String get physicalInventoryId;
  String get itemId;
  String get locationId;
  double get systemQuantity;
  double get countedQuantity;
  double get varianceQuantity;
  double get varianceValue;
  String get status; // 'pending', 'counted', 'adjusted'
  DateTime? get countedAt;
  String? get countedBy;
  String? get notes;
  String? get lotNumber;
  String? get serialNumber;
  Map<String, dynamic>? get metadata;

  /// Create a copy of PhysicalInventoryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PhysicalInventoryItemCopyWith<PhysicalInventoryItem> get copyWith =>
      _$PhysicalInventoryItemCopyWithImpl<PhysicalInventoryItem>(
          this as PhysicalInventoryItem, _$identity);

  /// Serializes this PhysicalInventoryItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PhysicalInventoryItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.physicalInventoryId, physicalInventoryId) ||
                other.physicalInventoryId == physicalInventoryId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.systemQuantity, systemQuantity) ||
                other.systemQuantity == systemQuantity) &&
            (identical(other.countedQuantity, countedQuantity) ||
                other.countedQuantity == countedQuantity) &&
            (identical(other.varianceQuantity, varianceQuantity) ||
                other.varianceQuantity == varianceQuantity) &&
            (identical(other.varianceValue, varianceValue) ||
                other.varianceValue == varianceValue) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.countedAt, countedAt) ||
                other.countedAt == countedAt) &&
            (identical(other.countedBy, countedBy) ||
                other.countedBy == countedBy) &&
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
      physicalInventoryId,
      itemId,
      locationId,
      systemQuantity,
      countedQuantity,
      varianceQuantity,
      varianceValue,
      status,
      countedAt,
      countedBy,
      notes,
      lotNumber,
      serialNumber,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'PhysicalInventoryItem(id: $id, physicalInventoryId: $physicalInventoryId, itemId: $itemId, locationId: $locationId, systemQuantity: $systemQuantity, countedQuantity: $countedQuantity, varianceQuantity: $varianceQuantity, varianceValue: $varianceValue, status: $status, countedAt: $countedAt, countedBy: $countedBy, notes: $notes, lotNumber: $lotNumber, serialNumber: $serialNumber, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $PhysicalInventoryItemCopyWith<$Res> {
  factory $PhysicalInventoryItemCopyWith(PhysicalInventoryItem value,
          $Res Function(PhysicalInventoryItem) _then) =
      _$PhysicalInventoryItemCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String physicalInventoryId,
      String itemId,
      String locationId,
      double systemQuantity,
      double countedQuantity,
      double varianceQuantity,
      double varianceValue,
      String status,
      DateTime? countedAt,
      String? countedBy,
      String? notes,
      String? lotNumber,
      String? serialNumber,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$PhysicalInventoryItemCopyWithImpl<$Res>
    implements $PhysicalInventoryItemCopyWith<$Res> {
  _$PhysicalInventoryItemCopyWithImpl(this._self, this._then);

  final PhysicalInventoryItem _self;
  final $Res Function(PhysicalInventoryItem) _then;

  /// Create a copy of PhysicalInventoryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? physicalInventoryId = null,
    Object? itemId = null,
    Object? locationId = null,
    Object? systemQuantity = null,
    Object? countedQuantity = null,
    Object? varianceQuantity = null,
    Object? varianceValue = null,
    Object? status = null,
    Object? countedAt = freezed,
    Object? countedBy = freezed,
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
      physicalInventoryId: null == physicalInventoryId
          ? _self.physicalInventoryId
          : physicalInventoryId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      systemQuantity: null == systemQuantity
          ? _self.systemQuantity
          : systemQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      countedQuantity: null == countedQuantity
          ? _self.countedQuantity
          : countedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      varianceQuantity: null == varianceQuantity
          ? _self.varianceQuantity
          : varianceQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      varianceValue: null == varianceValue
          ? _self.varianceValue
          : varianceValue // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      countedAt: freezed == countedAt
          ? _self.countedAt
          : countedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      countedBy: freezed == countedBy
          ? _self.countedBy
          : countedBy // ignore: cast_nullable_to_non_nullable
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

/// Adds pattern-matching-related methods to [PhysicalInventoryItem].
extension PhysicalInventoryItemPatterns on PhysicalInventoryItem {
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
    TResult Function(_PhysicalInventoryItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PhysicalInventoryItem() when $default != null:
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
    TResult Function(_PhysicalInventoryItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PhysicalInventoryItem():
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
    TResult? Function(_PhysicalInventoryItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PhysicalInventoryItem() when $default != null:
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
            String physicalInventoryId,
            String itemId,
            String locationId,
            double systemQuantity,
            double countedQuantity,
            double varianceQuantity,
            double varianceValue,
            String status,
            DateTime? countedAt,
            String? countedBy,
            String? notes,
            String? lotNumber,
            String? serialNumber,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PhysicalInventoryItem() when $default != null:
        return $default(
            _that.id,
            _that.physicalInventoryId,
            _that.itemId,
            _that.locationId,
            _that.systemQuantity,
            _that.countedQuantity,
            _that.varianceQuantity,
            _that.varianceValue,
            _that.status,
            _that.countedAt,
            _that.countedBy,
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
            String physicalInventoryId,
            String itemId,
            String locationId,
            double systemQuantity,
            double countedQuantity,
            double varianceQuantity,
            double varianceValue,
            String status,
            DateTime? countedAt,
            String? countedBy,
            String? notes,
            String? lotNumber,
            String? serialNumber,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PhysicalInventoryItem():
        return $default(
            _that.id,
            _that.physicalInventoryId,
            _that.itemId,
            _that.locationId,
            _that.systemQuantity,
            _that.countedQuantity,
            _that.varianceQuantity,
            _that.varianceValue,
            _that.status,
            _that.countedAt,
            _that.countedBy,
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
            String physicalInventoryId,
            String itemId,
            String locationId,
            double systemQuantity,
            double countedQuantity,
            double varianceQuantity,
            double varianceValue,
            String status,
            DateTime? countedAt,
            String? countedBy,
            String? notes,
            String? lotNumber,
            String? serialNumber,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PhysicalInventoryItem() when $default != null:
        return $default(
            _that.id,
            _that.physicalInventoryId,
            _that.itemId,
            _that.locationId,
            _that.systemQuantity,
            _that.countedQuantity,
            _that.varianceQuantity,
            _that.varianceValue,
            _that.status,
            _that.countedAt,
            _that.countedBy,
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
class _PhysicalInventoryItem implements PhysicalInventoryItem {
  const _PhysicalInventoryItem(
      {required this.id,
      required this.physicalInventoryId,
      required this.itemId,
      required this.locationId,
      required this.systemQuantity,
      required this.countedQuantity,
      required this.varianceQuantity,
      required this.varianceValue,
      required this.status,
      this.countedAt,
      this.countedBy,
      this.notes,
      this.lotNumber,
      this.serialNumber,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _PhysicalInventoryItem.fromJson(Map<String, dynamic> json) =>
      _$PhysicalInventoryItemFromJson(json);

  @override
  final String id;
  @override
  final String physicalInventoryId;
  @override
  final String itemId;
  @override
  final String locationId;
  @override
  final double systemQuantity;
  @override
  final double countedQuantity;
  @override
  final double varianceQuantity;
  @override
  final double varianceValue;
  @override
  final String status;
// 'pending', 'counted', 'adjusted'
  @override
  final DateTime? countedAt;
  @override
  final String? countedBy;
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

  /// Create a copy of PhysicalInventoryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PhysicalInventoryItemCopyWith<_PhysicalInventoryItem> get copyWith =>
      __$PhysicalInventoryItemCopyWithImpl<_PhysicalInventoryItem>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PhysicalInventoryItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PhysicalInventoryItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.physicalInventoryId, physicalInventoryId) ||
                other.physicalInventoryId == physicalInventoryId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.systemQuantity, systemQuantity) ||
                other.systemQuantity == systemQuantity) &&
            (identical(other.countedQuantity, countedQuantity) ||
                other.countedQuantity == countedQuantity) &&
            (identical(other.varianceQuantity, varianceQuantity) ||
                other.varianceQuantity == varianceQuantity) &&
            (identical(other.varianceValue, varianceValue) ||
                other.varianceValue == varianceValue) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.countedAt, countedAt) ||
                other.countedAt == countedAt) &&
            (identical(other.countedBy, countedBy) ||
                other.countedBy == countedBy) &&
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
      physicalInventoryId,
      itemId,
      locationId,
      systemQuantity,
      countedQuantity,
      varianceQuantity,
      varianceValue,
      status,
      countedAt,
      countedBy,
      notes,
      lotNumber,
      serialNumber,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'PhysicalInventoryItem(id: $id, physicalInventoryId: $physicalInventoryId, itemId: $itemId, locationId: $locationId, systemQuantity: $systemQuantity, countedQuantity: $countedQuantity, varianceQuantity: $varianceQuantity, varianceValue: $varianceValue, status: $status, countedAt: $countedAt, countedBy: $countedBy, notes: $notes, lotNumber: $lotNumber, serialNumber: $serialNumber, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$PhysicalInventoryItemCopyWith<$Res>
    implements $PhysicalInventoryItemCopyWith<$Res> {
  factory _$PhysicalInventoryItemCopyWith(_PhysicalInventoryItem value,
          $Res Function(_PhysicalInventoryItem) _then) =
      __$PhysicalInventoryItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String physicalInventoryId,
      String itemId,
      String locationId,
      double systemQuantity,
      double countedQuantity,
      double varianceQuantity,
      double varianceValue,
      String status,
      DateTime? countedAt,
      String? countedBy,
      String? notes,
      String? lotNumber,
      String? serialNumber,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$PhysicalInventoryItemCopyWithImpl<$Res>
    implements _$PhysicalInventoryItemCopyWith<$Res> {
  __$PhysicalInventoryItemCopyWithImpl(this._self, this._then);

  final _PhysicalInventoryItem _self;
  final $Res Function(_PhysicalInventoryItem) _then;

  /// Create a copy of PhysicalInventoryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? physicalInventoryId = null,
    Object? itemId = null,
    Object? locationId = null,
    Object? systemQuantity = null,
    Object? countedQuantity = null,
    Object? varianceQuantity = null,
    Object? varianceValue = null,
    Object? status = null,
    Object? countedAt = freezed,
    Object? countedBy = freezed,
    Object? notes = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_PhysicalInventoryItem(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      physicalInventoryId: null == physicalInventoryId
          ? _self.physicalInventoryId
          : physicalInventoryId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      systemQuantity: null == systemQuantity
          ? _self.systemQuantity
          : systemQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      countedQuantity: null == countedQuantity
          ? _self.countedQuantity
          : countedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      varianceQuantity: null == varianceQuantity
          ? _self.varianceQuantity
          : varianceQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      varianceValue: null == varianceValue
          ? _self.varianceValue
          : varianceValue // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      countedAt: freezed == countedAt
          ? _self.countedAt
          : countedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      countedBy: freezed == countedBy
          ? _self.countedBy
          : countedBy // ignore: cast_nullable_to_non_nullable
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
mixin _$CreatePhysicalInventoryRequest {
  String get name;
  String get description;
  String get locationId;
  Map<String, dynamic>? get metadata;

  /// Create a copy of CreatePhysicalInventoryRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreatePhysicalInventoryRequestCopyWith<CreatePhysicalInventoryRequest>
      get copyWith => _$CreatePhysicalInventoryRequestCopyWithImpl<
              CreatePhysicalInventoryRequest>(
          this as CreatePhysicalInventoryRequest, _$identity);

  /// Serializes this CreatePhysicalInventoryRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreatePhysicalInventoryRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, locationId,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'CreatePhysicalInventoryRequest(name: $name, description: $description, locationId: $locationId, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $CreatePhysicalInventoryRequestCopyWith<$Res> {
  factory $CreatePhysicalInventoryRequestCopyWith(
          CreatePhysicalInventoryRequest value,
          $Res Function(CreatePhysicalInventoryRequest) _then) =
      _$CreatePhysicalInventoryRequestCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String description,
      String locationId,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$CreatePhysicalInventoryRequestCopyWithImpl<$Res>
    implements $CreatePhysicalInventoryRequestCopyWith<$Res> {
  _$CreatePhysicalInventoryRequestCopyWithImpl(this._self, this._then);

  final CreatePhysicalInventoryRequest _self;
  final $Res Function(CreatePhysicalInventoryRequest) _then;

  /// Create a copy of CreatePhysicalInventoryRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? locationId = null,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreatePhysicalInventoryRequest].
extension CreatePhysicalInventoryRequestPatterns
    on CreatePhysicalInventoryRequest {
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
    TResult Function(_CreatePhysicalInventoryRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePhysicalInventoryRequest() when $default != null:
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
    TResult Function(_CreatePhysicalInventoryRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePhysicalInventoryRequest():
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
    TResult? Function(_CreatePhysicalInventoryRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePhysicalInventoryRequest() when $default != null:
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
    TResult Function(String name, String description, String locationId,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePhysicalInventoryRequest() when $default != null:
        return $default(
            _that.name, _that.description, _that.locationId, _that.metadata);
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
    TResult Function(String name, String description, String locationId,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePhysicalInventoryRequest():
        return $default(
            _that.name, _that.description, _that.locationId, _that.metadata);
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
    TResult? Function(String name, String description, String locationId,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePhysicalInventoryRequest() when $default != null:
        return $default(
            _that.name, _that.description, _that.locationId, _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreatePhysicalInventoryRequest
    implements CreatePhysicalInventoryRequest {
  const _CreatePhysicalInventoryRequest(
      {required this.name,
      required this.description,
      required this.locationId,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _CreatePhysicalInventoryRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePhysicalInventoryRequestFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String locationId;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of CreatePhysicalInventoryRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreatePhysicalInventoryRequestCopyWith<_CreatePhysicalInventoryRequest>
      get copyWith => __$CreatePhysicalInventoryRequestCopyWithImpl<
          _CreatePhysicalInventoryRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreatePhysicalInventoryRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreatePhysicalInventoryRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, locationId,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'CreatePhysicalInventoryRequest(name: $name, description: $description, locationId: $locationId, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$CreatePhysicalInventoryRequestCopyWith<$Res>
    implements $CreatePhysicalInventoryRequestCopyWith<$Res> {
  factory _$CreatePhysicalInventoryRequestCopyWith(
          _CreatePhysicalInventoryRequest value,
          $Res Function(_CreatePhysicalInventoryRequest) _then) =
      __$CreatePhysicalInventoryRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String locationId,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$CreatePhysicalInventoryRequestCopyWithImpl<$Res>
    implements _$CreatePhysicalInventoryRequestCopyWith<$Res> {
  __$CreatePhysicalInventoryRequestCopyWithImpl(this._self, this._then);

  final _CreatePhysicalInventoryRequest _self;
  final $Res Function(_CreatePhysicalInventoryRequest) _then;

  /// Create a copy of CreatePhysicalInventoryRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? locationId = null,
    Object? metadata = freezed,
  }) {
    return _then(_CreatePhysicalInventoryRequest(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$UpdatePhysicalInventoryRequest {
  String? get name;
  String? get description;
  Map<String, dynamic>? get metadata;

  /// Create a copy of UpdatePhysicalInventoryRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdatePhysicalInventoryRequestCopyWith<UpdatePhysicalInventoryRequest>
      get copyWith => _$UpdatePhysicalInventoryRequestCopyWithImpl<
              UpdatePhysicalInventoryRequest>(
          this as UpdatePhysicalInventoryRequest, _$identity);

  /// Serializes this UpdatePhysicalInventoryRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdatePhysicalInventoryRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'UpdatePhysicalInventoryRequest(name: $name, description: $description, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $UpdatePhysicalInventoryRequestCopyWith<$Res> {
  factory $UpdatePhysicalInventoryRequestCopyWith(
          UpdatePhysicalInventoryRequest value,
          $Res Function(UpdatePhysicalInventoryRequest) _then) =
      _$UpdatePhysicalInventoryRequestCopyWithImpl;
  @useResult
  $Res call(
      {String? name, String? description, Map<String, dynamic>? metadata});
}

/// @nodoc
class _$UpdatePhysicalInventoryRequestCopyWithImpl<$Res>
    implements $UpdatePhysicalInventoryRequestCopyWith<$Res> {
  _$UpdatePhysicalInventoryRequestCopyWithImpl(this._self, this._then);

  final UpdatePhysicalInventoryRequest _self;
  final $Res Function(UpdatePhysicalInventoryRequest) _then;

  /// Create a copy of UpdatePhysicalInventoryRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdatePhysicalInventoryRequest].
extension UpdatePhysicalInventoryRequestPatterns
    on UpdatePhysicalInventoryRequest {
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
    TResult Function(_UpdatePhysicalInventoryRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdatePhysicalInventoryRequest() when $default != null:
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
    TResult Function(_UpdatePhysicalInventoryRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePhysicalInventoryRequest():
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
    TResult? Function(_UpdatePhysicalInventoryRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePhysicalInventoryRequest() when $default != null:
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
            String? name, String? description, Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdatePhysicalInventoryRequest() when $default != null:
        return $default(_that.name, _that.description, _that.metadata);
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
            String? name, String? description, Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePhysicalInventoryRequest():
        return $default(_that.name, _that.description, _that.metadata);
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
            String? name, String? description, Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePhysicalInventoryRequest() when $default != null:
        return $default(_that.name, _that.description, _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdatePhysicalInventoryRequest
    implements UpdatePhysicalInventoryRequest {
  const _UpdatePhysicalInventoryRequest(
      {this.name, this.description, final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _UpdatePhysicalInventoryRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdatePhysicalInventoryRequestFromJson(json);

  @override
  final String? name;
  @override
  final String? description;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of UpdatePhysicalInventoryRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdatePhysicalInventoryRequestCopyWith<_UpdatePhysicalInventoryRequest>
      get copyWith => __$UpdatePhysicalInventoryRequestCopyWithImpl<
          _UpdatePhysicalInventoryRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdatePhysicalInventoryRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdatePhysicalInventoryRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'UpdatePhysicalInventoryRequest(name: $name, description: $description, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$UpdatePhysicalInventoryRequestCopyWith<$Res>
    implements $UpdatePhysicalInventoryRequestCopyWith<$Res> {
  factory _$UpdatePhysicalInventoryRequestCopyWith(
          _UpdatePhysicalInventoryRequest value,
          $Res Function(_UpdatePhysicalInventoryRequest) _then) =
      __$UpdatePhysicalInventoryRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? name, String? description, Map<String, dynamic>? metadata});
}

/// @nodoc
class __$UpdatePhysicalInventoryRequestCopyWithImpl<$Res>
    implements _$UpdatePhysicalInventoryRequestCopyWith<$Res> {
  __$UpdatePhysicalInventoryRequestCopyWithImpl(this._self, this._then);

  final _UpdatePhysicalInventoryRequest _self;
  final $Res Function(_UpdatePhysicalInventoryRequest) _then;

  /// Create a copy of UpdatePhysicalInventoryRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_UpdatePhysicalInventoryRequest(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$PhysicalInventoryFilters {
  String? get locationId;
  String? get status;
  String? get createdBy;
  DateTime? get createdAfter;
  DateTime? get createdBefore;
  DateTime? get startedAfter;
  DateTime? get startedBefore;
  DateTime? get completedAfter;
  DateTime? get completedBefore;
  int? get page;
  int? get limit;
  String? get sortBy;
  String? get sortOrder;

  /// Create a copy of PhysicalInventoryFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PhysicalInventoryFiltersCopyWith<PhysicalInventoryFilters> get copyWith =>
      _$PhysicalInventoryFiltersCopyWithImpl<PhysicalInventoryFilters>(
          this as PhysicalInventoryFilters, _$identity);

  /// Serializes this PhysicalInventoryFilters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PhysicalInventoryFilters &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdAfter, createdAfter) ||
                other.createdAfter == createdAfter) &&
            (identical(other.createdBefore, createdBefore) ||
                other.createdBefore == createdBefore) &&
            (identical(other.startedAfter, startedAfter) ||
                other.startedAfter == startedAfter) &&
            (identical(other.startedBefore, startedBefore) ||
                other.startedBefore == startedBefore) &&
            (identical(other.completedAfter, completedAfter) ||
                other.completedAfter == completedAfter) &&
            (identical(other.completedBefore, completedBefore) ||
                other.completedBefore == completedBefore) &&
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
      locationId,
      status,
      createdBy,
      createdAfter,
      createdBefore,
      startedAfter,
      startedBefore,
      completedAfter,
      completedBefore,
      page,
      limit,
      sortBy,
      sortOrder);

  @override
  String toString() {
    return 'PhysicalInventoryFilters(locationId: $locationId, status: $status, createdBy: $createdBy, createdAfter: $createdAfter, createdBefore: $createdBefore, startedAfter: $startedAfter, startedBefore: $startedBefore, completedAfter: $completedAfter, completedBefore: $completedBefore, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class $PhysicalInventoryFiltersCopyWith<$Res> {
  factory $PhysicalInventoryFiltersCopyWith(PhysicalInventoryFilters value,
          $Res Function(PhysicalInventoryFilters) _then) =
      _$PhysicalInventoryFiltersCopyWithImpl;
  @useResult
  $Res call(
      {String? locationId,
      String? status,
      String? createdBy,
      DateTime? createdAfter,
      DateTime? createdBefore,
      DateTime? startedAfter,
      DateTime? startedBefore,
      DateTime? completedAfter,
      DateTime? completedBefore,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class _$PhysicalInventoryFiltersCopyWithImpl<$Res>
    implements $PhysicalInventoryFiltersCopyWith<$Res> {
  _$PhysicalInventoryFiltersCopyWithImpl(this._self, this._then);

  final PhysicalInventoryFilters _self;
  final $Res Function(PhysicalInventoryFilters) _then;

  /// Create a copy of PhysicalInventoryFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationId = freezed,
    Object? status = freezed,
    Object? createdBy = freezed,
    Object? createdAfter = freezed,
    Object? createdBefore = freezed,
    Object? startedAfter = freezed,
    Object? startedBefore = freezed,
    Object? completedAfter = freezed,
    Object? completedBefore = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_self.copyWith(
      locationId: freezed == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAfter: freezed == createdAfter
          ? _self.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _self.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedAfter: freezed == startedAfter
          ? _self.startedAfter
          : startedAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedBefore: freezed == startedBefore
          ? _self.startedBefore
          : startedBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedAfter: freezed == completedAfter
          ? _self.completedAfter
          : completedAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedBefore: freezed == completedBefore
          ? _self.completedBefore
          : completedBefore // ignore: cast_nullable_to_non_nullable
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

/// Adds pattern-matching-related methods to [PhysicalInventoryFilters].
extension PhysicalInventoryFiltersPatterns on PhysicalInventoryFilters {
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
    TResult Function(_PhysicalInventoryFilters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PhysicalInventoryFilters() when $default != null:
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
    TResult Function(_PhysicalInventoryFilters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PhysicalInventoryFilters():
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
    TResult? Function(_PhysicalInventoryFilters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PhysicalInventoryFilters() when $default != null:
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
            String? locationId,
            String? status,
            String? createdBy,
            DateTime? createdAfter,
            DateTime? createdBefore,
            DateTime? startedAfter,
            DateTime? startedBefore,
            DateTime? completedAfter,
            DateTime? completedBefore,
            int? page,
            int? limit,
            String? sortBy,
            String? sortOrder)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PhysicalInventoryFilters() when $default != null:
        return $default(
            _that.locationId,
            _that.status,
            _that.createdBy,
            _that.createdAfter,
            _that.createdBefore,
            _that.startedAfter,
            _that.startedBefore,
            _that.completedAfter,
            _that.completedBefore,
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
            String? locationId,
            String? status,
            String? createdBy,
            DateTime? createdAfter,
            DateTime? createdBefore,
            DateTime? startedAfter,
            DateTime? startedBefore,
            DateTime? completedAfter,
            DateTime? completedBefore,
            int? page,
            int? limit,
            String? sortBy,
            String? sortOrder)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PhysicalInventoryFilters():
        return $default(
            _that.locationId,
            _that.status,
            _that.createdBy,
            _that.createdAfter,
            _that.createdBefore,
            _that.startedAfter,
            _that.startedBefore,
            _that.completedAfter,
            _that.completedBefore,
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
            String? locationId,
            String? status,
            String? createdBy,
            DateTime? createdAfter,
            DateTime? createdBefore,
            DateTime? startedAfter,
            DateTime? startedBefore,
            DateTime? completedAfter,
            DateTime? completedBefore,
            int? page,
            int? limit,
            String? sortBy,
            String? sortOrder)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PhysicalInventoryFilters() when $default != null:
        return $default(
            _that.locationId,
            _that.status,
            _that.createdBy,
            _that.createdAfter,
            _that.createdBefore,
            _that.startedAfter,
            _that.startedBefore,
            _that.completedAfter,
            _that.completedBefore,
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
class _PhysicalInventoryFilters extends PhysicalInventoryFilters {
  const _PhysicalInventoryFilters(
      {this.locationId,
      this.status,
      this.createdBy,
      this.createdAfter,
      this.createdBefore,
      this.startedAfter,
      this.startedBefore,
      this.completedAfter,
      this.completedBefore,
      this.page,
      this.limit,
      this.sortBy,
      this.sortOrder})
      : super._();
  factory _PhysicalInventoryFilters.fromJson(Map<String, dynamic> json) =>
      _$PhysicalInventoryFiltersFromJson(json);

  @override
  final String? locationId;
  @override
  final String? status;
  @override
  final String? createdBy;
  @override
  final DateTime? createdAfter;
  @override
  final DateTime? createdBefore;
  @override
  final DateTime? startedAfter;
  @override
  final DateTime? startedBefore;
  @override
  final DateTime? completedAfter;
  @override
  final DateTime? completedBefore;
  @override
  final int? page;
  @override
  final int? limit;
  @override
  final String? sortBy;
  @override
  final String? sortOrder;

  /// Create a copy of PhysicalInventoryFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PhysicalInventoryFiltersCopyWith<_PhysicalInventoryFilters> get copyWith =>
      __$PhysicalInventoryFiltersCopyWithImpl<_PhysicalInventoryFilters>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PhysicalInventoryFiltersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PhysicalInventoryFilters &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdAfter, createdAfter) ||
                other.createdAfter == createdAfter) &&
            (identical(other.createdBefore, createdBefore) ||
                other.createdBefore == createdBefore) &&
            (identical(other.startedAfter, startedAfter) ||
                other.startedAfter == startedAfter) &&
            (identical(other.startedBefore, startedBefore) ||
                other.startedBefore == startedBefore) &&
            (identical(other.completedAfter, completedAfter) ||
                other.completedAfter == completedAfter) &&
            (identical(other.completedBefore, completedBefore) ||
                other.completedBefore == completedBefore) &&
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
      locationId,
      status,
      createdBy,
      createdAfter,
      createdBefore,
      startedAfter,
      startedBefore,
      completedAfter,
      completedBefore,
      page,
      limit,
      sortBy,
      sortOrder);

  @override
  String toString() {
    return 'PhysicalInventoryFilters(locationId: $locationId, status: $status, createdBy: $createdBy, createdAfter: $createdAfter, createdBefore: $createdBefore, startedAfter: $startedAfter, startedBefore: $startedBefore, completedAfter: $completedAfter, completedBefore: $completedBefore, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class _$PhysicalInventoryFiltersCopyWith<$Res>
    implements $PhysicalInventoryFiltersCopyWith<$Res> {
  factory _$PhysicalInventoryFiltersCopyWith(_PhysicalInventoryFilters value,
          $Res Function(_PhysicalInventoryFilters) _then) =
      __$PhysicalInventoryFiltersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? locationId,
      String? status,
      String? createdBy,
      DateTime? createdAfter,
      DateTime? createdBefore,
      DateTime? startedAfter,
      DateTime? startedBefore,
      DateTime? completedAfter,
      DateTime? completedBefore,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class __$PhysicalInventoryFiltersCopyWithImpl<$Res>
    implements _$PhysicalInventoryFiltersCopyWith<$Res> {
  __$PhysicalInventoryFiltersCopyWithImpl(this._self, this._then);

  final _PhysicalInventoryFilters _self;
  final $Res Function(_PhysicalInventoryFilters) _then;

  /// Create a copy of PhysicalInventoryFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? locationId = freezed,
    Object? status = freezed,
    Object? createdBy = freezed,
    Object? createdAfter = freezed,
    Object? createdBefore = freezed,
    Object? startedAfter = freezed,
    Object? startedBefore = freezed,
    Object? completedAfter = freezed,
    Object? completedBefore = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_PhysicalInventoryFilters(
      locationId: freezed == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAfter: freezed == createdAfter
          ? _self.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _self.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedAfter: freezed == startedAfter
          ? _self.startedAfter
          : startedAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedBefore: freezed == startedBefore
          ? _self.startedBefore
          : startedBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedAfter: freezed == completedAfter
          ? _self.completedAfter
          : completedAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedBefore: freezed == completedBefore
          ? _self.completedBefore
          : completedBefore // ignore: cast_nullable_to_non_nullable
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
mixin _$UpdatePhysicalInventoryItemRequest {
  double get countedQuantity;
  String? get notes;
  String? get lotNumber;
  String? get serialNumber;

  /// Create a copy of UpdatePhysicalInventoryItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdatePhysicalInventoryItemRequestCopyWith<
          UpdatePhysicalInventoryItemRequest>
      get copyWith => _$UpdatePhysicalInventoryItemRequestCopyWithImpl<
              UpdatePhysicalInventoryItemRequest>(
          this as UpdatePhysicalInventoryItemRequest, _$identity);

  /// Serializes this UpdatePhysicalInventoryItemRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdatePhysicalInventoryItemRequest &&
            (identical(other.countedQuantity, countedQuantity) ||
                other.countedQuantity == countedQuantity) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, countedQuantity, notes, lotNumber, serialNumber);

  @override
  String toString() {
    return 'UpdatePhysicalInventoryItemRequest(countedQuantity: $countedQuantity, notes: $notes, lotNumber: $lotNumber, serialNumber: $serialNumber)';
  }
}

/// @nodoc
abstract mixin class $UpdatePhysicalInventoryItemRequestCopyWith<$Res> {
  factory $UpdatePhysicalInventoryItemRequestCopyWith(
          UpdatePhysicalInventoryItemRequest value,
          $Res Function(UpdatePhysicalInventoryItemRequest) _then) =
      _$UpdatePhysicalInventoryItemRequestCopyWithImpl;
  @useResult
  $Res call(
      {double countedQuantity,
      String? notes,
      String? lotNumber,
      String? serialNumber});
}

/// @nodoc
class _$UpdatePhysicalInventoryItemRequestCopyWithImpl<$Res>
    implements $UpdatePhysicalInventoryItemRequestCopyWith<$Res> {
  _$UpdatePhysicalInventoryItemRequestCopyWithImpl(this._self, this._then);

  final UpdatePhysicalInventoryItemRequest _self;
  final $Res Function(UpdatePhysicalInventoryItemRequest) _then;

  /// Create a copy of UpdatePhysicalInventoryItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countedQuantity = null,
    Object? notes = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
  }) {
    return _then(_self.copyWith(
      countedQuantity: null == countedQuantity
          ? _self.countedQuantity
          : countedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
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
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdatePhysicalInventoryItemRequest].
extension UpdatePhysicalInventoryItemRequestPatterns
    on UpdatePhysicalInventoryItemRequest {
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
    TResult Function(_UpdatePhysicalInventoryItemRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdatePhysicalInventoryItemRequest() when $default != null:
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
    TResult Function(_UpdatePhysicalInventoryItemRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePhysicalInventoryItemRequest():
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
    TResult? Function(_UpdatePhysicalInventoryItemRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePhysicalInventoryItemRequest() when $default != null:
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
    TResult Function(double countedQuantity, String? notes, String? lotNumber,
            String? serialNumber)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdatePhysicalInventoryItemRequest() when $default != null:
        return $default(_that.countedQuantity, _that.notes, _that.lotNumber,
            _that.serialNumber);
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
    TResult Function(double countedQuantity, String? notes, String? lotNumber,
            String? serialNumber)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePhysicalInventoryItemRequest():
        return $default(_that.countedQuantity, _that.notes, _that.lotNumber,
            _that.serialNumber);
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
    TResult? Function(double countedQuantity, String? notes, String? lotNumber,
            String? serialNumber)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePhysicalInventoryItemRequest() when $default != null:
        return $default(_that.countedQuantity, _that.notes, _that.lotNumber,
            _that.serialNumber);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdatePhysicalInventoryItemRequest
    implements UpdatePhysicalInventoryItemRequest {
  const _UpdatePhysicalInventoryItemRequest(
      {required this.countedQuantity,
      this.notes,
      this.lotNumber,
      this.serialNumber});
  factory _UpdatePhysicalInventoryItemRequest.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePhysicalInventoryItemRequestFromJson(json);

  @override
  final double countedQuantity;
  @override
  final String? notes;
  @override
  final String? lotNumber;
  @override
  final String? serialNumber;

  /// Create a copy of UpdatePhysicalInventoryItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdatePhysicalInventoryItemRequestCopyWith<
          _UpdatePhysicalInventoryItemRequest>
      get copyWith => __$UpdatePhysicalInventoryItemRequestCopyWithImpl<
          _UpdatePhysicalInventoryItemRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdatePhysicalInventoryItemRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdatePhysicalInventoryItemRequest &&
            (identical(other.countedQuantity, countedQuantity) ||
                other.countedQuantity == countedQuantity) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, countedQuantity, notes, lotNumber, serialNumber);

  @override
  String toString() {
    return 'UpdatePhysicalInventoryItemRequest(countedQuantity: $countedQuantity, notes: $notes, lotNumber: $lotNumber, serialNumber: $serialNumber)';
  }
}

/// @nodoc
abstract mixin class _$UpdatePhysicalInventoryItemRequestCopyWith<$Res>
    implements $UpdatePhysicalInventoryItemRequestCopyWith<$Res> {
  factory _$UpdatePhysicalInventoryItemRequestCopyWith(
          _UpdatePhysicalInventoryItemRequest value,
          $Res Function(_UpdatePhysicalInventoryItemRequest) _then) =
      __$UpdatePhysicalInventoryItemRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double countedQuantity,
      String? notes,
      String? lotNumber,
      String? serialNumber});
}

/// @nodoc
class __$UpdatePhysicalInventoryItemRequestCopyWithImpl<$Res>
    implements _$UpdatePhysicalInventoryItemRequestCopyWith<$Res> {
  __$UpdatePhysicalInventoryItemRequestCopyWithImpl(this._self, this._then);

  final _UpdatePhysicalInventoryItemRequest _self;
  final $Res Function(_UpdatePhysicalInventoryItemRequest) _then;

  /// Create a copy of UpdatePhysicalInventoryItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? countedQuantity = null,
    Object? notes = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
  }) {
    return _then(_UpdatePhysicalInventoryItemRequest(
      countedQuantity: null == countedQuantity
          ? _self.countedQuantity
          : countedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
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
    ));
  }
}

/// @nodoc
mixin _$PhysicalInventoryAdjustment {
  String get id;
  String get physicalInventoryId;
  String get itemId;
  String get locationId;
  double get adjustmentQuantity;
  double get adjustmentValue;
  String get reason;
  DateTime get createdAt;
  String? get createdBy;
  String? get lotNumber;
  String? get serialNumber;
  String? get notes;
  Map<String, dynamic>? get metadata;

  /// Create a copy of PhysicalInventoryAdjustment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PhysicalInventoryAdjustmentCopyWith<PhysicalInventoryAdjustment>
      get copyWith => _$PhysicalInventoryAdjustmentCopyWithImpl<
              PhysicalInventoryAdjustment>(
          this as PhysicalInventoryAdjustment, _$identity);

  /// Serializes this PhysicalInventoryAdjustment to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PhysicalInventoryAdjustment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.physicalInventoryId, physicalInventoryId) ||
                other.physicalInventoryId == physicalInventoryId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.adjustmentQuantity, adjustmentQuantity) ||
                other.adjustmentQuantity == adjustmentQuantity) &&
            (identical(other.adjustmentValue, adjustmentValue) ||
                other.adjustmentValue == adjustmentValue) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      physicalInventoryId,
      itemId,
      locationId,
      adjustmentQuantity,
      adjustmentValue,
      reason,
      createdAt,
      createdBy,
      lotNumber,
      serialNumber,
      notes,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'PhysicalInventoryAdjustment(id: $id, physicalInventoryId: $physicalInventoryId, itemId: $itemId, locationId: $locationId, adjustmentQuantity: $adjustmentQuantity, adjustmentValue: $adjustmentValue, reason: $reason, createdAt: $createdAt, createdBy: $createdBy, lotNumber: $lotNumber, serialNumber: $serialNumber, notes: $notes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $PhysicalInventoryAdjustmentCopyWith<$Res> {
  factory $PhysicalInventoryAdjustmentCopyWith(
          PhysicalInventoryAdjustment value,
          $Res Function(PhysicalInventoryAdjustment) _then) =
      _$PhysicalInventoryAdjustmentCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String physicalInventoryId,
      String itemId,
      String locationId,
      double adjustmentQuantity,
      double adjustmentValue,
      String reason,
      DateTime createdAt,
      String? createdBy,
      String? lotNumber,
      String? serialNumber,
      String? notes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$PhysicalInventoryAdjustmentCopyWithImpl<$Res>
    implements $PhysicalInventoryAdjustmentCopyWith<$Res> {
  _$PhysicalInventoryAdjustmentCopyWithImpl(this._self, this._then);

  final PhysicalInventoryAdjustment _self;
  final $Res Function(PhysicalInventoryAdjustment) _then;

  /// Create a copy of PhysicalInventoryAdjustment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? physicalInventoryId = null,
    Object? itemId = null,
    Object? locationId = null,
    Object? adjustmentQuantity = null,
    Object? adjustmentValue = null,
    Object? reason = null,
    Object? createdAt = null,
    Object? createdBy = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? notes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      physicalInventoryId: null == physicalInventoryId
          ? _self.physicalInventoryId
          : physicalInventoryId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      adjustmentQuantity: null == adjustmentQuantity
          ? _self.adjustmentQuantity
          : adjustmentQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      adjustmentValue: null == adjustmentValue
          ? _self.adjustmentValue
          : adjustmentValue // ignore: cast_nullable_to_non_nullable
              as double,
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumber: freezed == lotNumber
          ? _self.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
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

/// Adds pattern-matching-related methods to [PhysicalInventoryAdjustment].
extension PhysicalInventoryAdjustmentPatterns on PhysicalInventoryAdjustment {
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
    TResult Function(_PhysicalInventoryAdjustment value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PhysicalInventoryAdjustment() when $default != null:
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
    TResult Function(_PhysicalInventoryAdjustment value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PhysicalInventoryAdjustment():
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
    TResult? Function(_PhysicalInventoryAdjustment value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PhysicalInventoryAdjustment() when $default != null:
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
            String physicalInventoryId,
            String itemId,
            String locationId,
            double adjustmentQuantity,
            double adjustmentValue,
            String reason,
            DateTime createdAt,
            String? createdBy,
            String? lotNumber,
            String? serialNumber,
            String? notes,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PhysicalInventoryAdjustment() when $default != null:
        return $default(
            _that.id,
            _that.physicalInventoryId,
            _that.itemId,
            _that.locationId,
            _that.adjustmentQuantity,
            _that.adjustmentValue,
            _that.reason,
            _that.createdAt,
            _that.createdBy,
            _that.lotNumber,
            _that.serialNumber,
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
            String physicalInventoryId,
            String itemId,
            String locationId,
            double adjustmentQuantity,
            double adjustmentValue,
            String reason,
            DateTime createdAt,
            String? createdBy,
            String? lotNumber,
            String? serialNumber,
            String? notes,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PhysicalInventoryAdjustment():
        return $default(
            _that.id,
            _that.physicalInventoryId,
            _that.itemId,
            _that.locationId,
            _that.adjustmentQuantity,
            _that.adjustmentValue,
            _that.reason,
            _that.createdAt,
            _that.createdBy,
            _that.lotNumber,
            _that.serialNumber,
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
            String physicalInventoryId,
            String itemId,
            String locationId,
            double adjustmentQuantity,
            double adjustmentValue,
            String reason,
            DateTime createdAt,
            String? createdBy,
            String? lotNumber,
            String? serialNumber,
            String? notes,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PhysicalInventoryAdjustment() when $default != null:
        return $default(
            _that.id,
            _that.physicalInventoryId,
            _that.itemId,
            _that.locationId,
            _that.adjustmentQuantity,
            _that.adjustmentValue,
            _that.reason,
            _that.createdAt,
            _that.createdBy,
            _that.lotNumber,
            _that.serialNumber,
            _that.notes,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PhysicalInventoryAdjustment implements PhysicalInventoryAdjustment {
  const _PhysicalInventoryAdjustment(
      {required this.id,
      required this.physicalInventoryId,
      required this.itemId,
      required this.locationId,
      required this.adjustmentQuantity,
      required this.adjustmentValue,
      required this.reason,
      required this.createdAt,
      this.createdBy,
      this.lotNumber,
      this.serialNumber,
      this.notes,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _PhysicalInventoryAdjustment.fromJson(Map<String, dynamic> json) =>
      _$PhysicalInventoryAdjustmentFromJson(json);

  @override
  final String id;
  @override
  final String physicalInventoryId;
  @override
  final String itemId;
  @override
  final String locationId;
  @override
  final double adjustmentQuantity;
  @override
  final double adjustmentValue;
  @override
  final String reason;
  @override
  final DateTime createdAt;
  @override
  final String? createdBy;
  @override
  final String? lotNumber;
  @override
  final String? serialNumber;
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

  /// Create a copy of PhysicalInventoryAdjustment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PhysicalInventoryAdjustmentCopyWith<_PhysicalInventoryAdjustment>
      get copyWith => __$PhysicalInventoryAdjustmentCopyWithImpl<
          _PhysicalInventoryAdjustment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PhysicalInventoryAdjustmentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PhysicalInventoryAdjustment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.physicalInventoryId, physicalInventoryId) ||
                other.physicalInventoryId == physicalInventoryId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.adjustmentQuantity, adjustmentQuantity) ||
                other.adjustmentQuantity == adjustmentQuantity) &&
            (identical(other.adjustmentValue, adjustmentValue) ||
                other.adjustmentValue == adjustmentValue) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      physicalInventoryId,
      itemId,
      locationId,
      adjustmentQuantity,
      adjustmentValue,
      reason,
      createdAt,
      createdBy,
      lotNumber,
      serialNumber,
      notes,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'PhysicalInventoryAdjustment(id: $id, physicalInventoryId: $physicalInventoryId, itemId: $itemId, locationId: $locationId, adjustmentQuantity: $adjustmentQuantity, adjustmentValue: $adjustmentValue, reason: $reason, createdAt: $createdAt, createdBy: $createdBy, lotNumber: $lotNumber, serialNumber: $serialNumber, notes: $notes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$PhysicalInventoryAdjustmentCopyWith<$Res>
    implements $PhysicalInventoryAdjustmentCopyWith<$Res> {
  factory _$PhysicalInventoryAdjustmentCopyWith(
          _PhysicalInventoryAdjustment value,
          $Res Function(_PhysicalInventoryAdjustment) _then) =
      __$PhysicalInventoryAdjustmentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String physicalInventoryId,
      String itemId,
      String locationId,
      double adjustmentQuantity,
      double adjustmentValue,
      String reason,
      DateTime createdAt,
      String? createdBy,
      String? lotNumber,
      String? serialNumber,
      String? notes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$PhysicalInventoryAdjustmentCopyWithImpl<$Res>
    implements _$PhysicalInventoryAdjustmentCopyWith<$Res> {
  __$PhysicalInventoryAdjustmentCopyWithImpl(this._self, this._then);

  final _PhysicalInventoryAdjustment _self;
  final $Res Function(_PhysicalInventoryAdjustment) _then;

  /// Create a copy of PhysicalInventoryAdjustment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? physicalInventoryId = null,
    Object? itemId = null,
    Object? locationId = null,
    Object? adjustmentQuantity = null,
    Object? adjustmentValue = null,
    Object? reason = null,
    Object? createdAt = null,
    Object? createdBy = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? notes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_PhysicalInventoryAdjustment(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      physicalInventoryId: null == physicalInventoryId
          ? _self.physicalInventoryId
          : physicalInventoryId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      adjustmentQuantity: null == adjustmentQuantity
          ? _self.adjustmentQuantity
          : adjustmentQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      adjustmentValue: null == adjustmentValue
          ? _self.adjustmentValue
          : adjustmentValue // ignore: cast_nullable_to_non_nullable
              as double,
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumber: freezed == lotNumber
          ? _self.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
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

// dart format on
