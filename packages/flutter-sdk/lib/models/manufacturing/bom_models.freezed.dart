// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bom_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BomComponent {
  String get id;
  String get bomId;
  String get itemId;
  double get quantity;
  String get unit;
  double get unitCost;
  double get totalCost;
  int get sequence;
  String? get notes;
  String? get specification;
  bool? get isOptional;
  String? get alternativeItemId;
  double? get wastagePercentage;
  double? get leadTime;
  Map<String, dynamic>? get attributes;
  Map<String, dynamic>? get metadata;

  /// Create a copy of BomComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BomComponentCopyWith<BomComponent> get copyWith =>
      _$BomComponentCopyWithImpl<BomComponent>(
          this as BomComponent, _$identity);

  /// Serializes this BomComponent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BomComponent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bomId, bomId) || other.bomId == bomId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.specification, specification) ||
                other.specification == specification) &&
            (identical(other.isOptional, isOptional) ||
                other.isOptional == isOptional) &&
            (identical(other.alternativeItemId, alternativeItemId) ||
                other.alternativeItemId == alternativeItemId) &&
            (identical(other.wastagePercentage, wastagePercentage) ||
                other.wastagePercentage == wastagePercentage) &&
            (identical(other.leadTime, leadTime) ||
                other.leadTime == leadTime) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      bomId,
      itemId,
      quantity,
      unit,
      unitCost,
      totalCost,
      sequence,
      notes,
      specification,
      isOptional,
      alternativeItemId,
      wastagePercentage,
      leadTime,
      const DeepCollectionEquality().hash(attributes),
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'BomComponent(id: $id, bomId: $bomId, itemId: $itemId, quantity: $quantity, unit: $unit, unitCost: $unitCost, totalCost: $totalCost, sequence: $sequence, notes: $notes, specification: $specification, isOptional: $isOptional, alternativeItemId: $alternativeItemId, wastagePercentage: $wastagePercentage, leadTime: $leadTime, attributes: $attributes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $BomComponentCopyWith<$Res> {
  factory $BomComponentCopyWith(
          BomComponent value, $Res Function(BomComponent) _then) =
      _$BomComponentCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String bomId,
      String itemId,
      double quantity,
      String unit,
      double unitCost,
      double totalCost,
      int sequence,
      String? notes,
      String? specification,
      bool? isOptional,
      String? alternativeItemId,
      double? wastagePercentage,
      double? leadTime,
      Map<String, dynamic>? attributes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$BomComponentCopyWithImpl<$Res> implements $BomComponentCopyWith<$Res> {
  _$BomComponentCopyWithImpl(this._self, this._then);

  final BomComponent _self;
  final $Res Function(BomComponent) _then;

  /// Create a copy of BomComponent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bomId = null,
    Object? itemId = null,
    Object? quantity = null,
    Object? unit = null,
    Object? unitCost = null,
    Object? totalCost = null,
    Object? sequence = null,
    Object? notes = freezed,
    Object? specification = freezed,
    Object? isOptional = freezed,
    Object? alternativeItemId = freezed,
    Object? wastagePercentage = freezed,
    Object? leadTime = freezed,
    Object? attributes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      bomId: null == bomId
          ? _self.bomId
          : bomId // ignore: cast_nullable_to_non_nullable
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
      unitCost: null == unitCost
          ? _self.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double,
      totalCost: null == totalCost
          ? _self.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      sequence: null == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _self.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      isOptional: freezed == isOptional
          ? _self.isOptional
          : isOptional // ignore: cast_nullable_to_non_nullable
              as bool?,
      alternativeItemId: freezed == alternativeItemId
          ? _self.alternativeItemId
          : alternativeItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      wastagePercentage: freezed == wastagePercentage
          ? _self.wastagePercentage
          : wastagePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      leadTime: freezed == leadTime
          ? _self.leadTime
          : leadTime // ignore: cast_nullable_to_non_nullable
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

/// Adds pattern-matching-related methods to [BomComponent].
extension BomComponentPatterns on BomComponent {
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
    TResult Function(_BomComponent value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BomComponent() when $default != null:
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
    TResult Function(_BomComponent value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BomComponent():
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
    TResult? Function(_BomComponent value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BomComponent() when $default != null:
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
            String bomId,
            String itemId,
            double quantity,
            String unit,
            double unitCost,
            double totalCost,
            int sequence,
            String? notes,
            String? specification,
            bool? isOptional,
            String? alternativeItemId,
            double? wastagePercentage,
            double? leadTime,
            Map<String, dynamic>? attributes,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BomComponent() when $default != null:
        return $default(
            _that.id,
            _that.bomId,
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.unitCost,
            _that.totalCost,
            _that.sequence,
            _that.notes,
            _that.specification,
            _that.isOptional,
            _that.alternativeItemId,
            _that.wastagePercentage,
            _that.leadTime,
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
            String bomId,
            String itemId,
            double quantity,
            String unit,
            double unitCost,
            double totalCost,
            int sequence,
            String? notes,
            String? specification,
            bool? isOptional,
            String? alternativeItemId,
            double? wastagePercentage,
            double? leadTime,
            Map<String, dynamic>? attributes,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BomComponent():
        return $default(
            _that.id,
            _that.bomId,
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.unitCost,
            _that.totalCost,
            _that.sequence,
            _that.notes,
            _that.specification,
            _that.isOptional,
            _that.alternativeItemId,
            _that.wastagePercentage,
            _that.leadTime,
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
            String bomId,
            String itemId,
            double quantity,
            String unit,
            double unitCost,
            double totalCost,
            int sequence,
            String? notes,
            String? specification,
            bool? isOptional,
            String? alternativeItemId,
            double? wastagePercentage,
            double? leadTime,
            Map<String, dynamic>? attributes,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BomComponent() when $default != null:
        return $default(
            _that.id,
            _that.bomId,
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.unitCost,
            _that.totalCost,
            _that.sequence,
            _that.notes,
            _that.specification,
            _that.isOptional,
            _that.alternativeItemId,
            _that.wastagePercentage,
            _that.leadTime,
            _that.attributes,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BomComponent implements BomComponent {
  const _BomComponent(
      {required this.id,
      required this.bomId,
      required this.itemId,
      required this.quantity,
      required this.unit,
      required this.unitCost,
      required this.totalCost,
      required this.sequence,
      this.notes,
      this.specification,
      this.isOptional,
      this.alternativeItemId,
      this.wastagePercentage,
      this.leadTime,
      final Map<String, dynamic>? attributes,
      final Map<String, dynamic>? metadata})
      : _attributes = attributes,
        _metadata = metadata;
  factory _BomComponent.fromJson(Map<String, dynamic> json) =>
      _$BomComponentFromJson(json);

  @override
  final String id;
  @override
  final String bomId;
  @override
  final String itemId;
  @override
  final double quantity;
  @override
  final String unit;
  @override
  final double unitCost;
  @override
  final double totalCost;
  @override
  final int sequence;
  @override
  final String? notes;
  @override
  final String? specification;
  @override
  final bool? isOptional;
  @override
  final String? alternativeItemId;
  @override
  final double? wastagePercentage;
  @override
  final double? leadTime;
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

  /// Create a copy of BomComponent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BomComponentCopyWith<_BomComponent> get copyWith =>
      __$BomComponentCopyWithImpl<_BomComponent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BomComponentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BomComponent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bomId, bomId) || other.bomId == bomId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.specification, specification) ||
                other.specification == specification) &&
            (identical(other.isOptional, isOptional) ||
                other.isOptional == isOptional) &&
            (identical(other.alternativeItemId, alternativeItemId) ||
                other.alternativeItemId == alternativeItemId) &&
            (identical(other.wastagePercentage, wastagePercentage) ||
                other.wastagePercentage == wastagePercentage) &&
            (identical(other.leadTime, leadTime) ||
                other.leadTime == leadTime) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      bomId,
      itemId,
      quantity,
      unit,
      unitCost,
      totalCost,
      sequence,
      notes,
      specification,
      isOptional,
      alternativeItemId,
      wastagePercentage,
      leadTime,
      const DeepCollectionEquality().hash(_attributes),
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'BomComponent(id: $id, bomId: $bomId, itemId: $itemId, quantity: $quantity, unit: $unit, unitCost: $unitCost, totalCost: $totalCost, sequence: $sequence, notes: $notes, specification: $specification, isOptional: $isOptional, alternativeItemId: $alternativeItemId, wastagePercentage: $wastagePercentage, leadTime: $leadTime, attributes: $attributes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$BomComponentCopyWith<$Res>
    implements $BomComponentCopyWith<$Res> {
  factory _$BomComponentCopyWith(
          _BomComponent value, $Res Function(_BomComponent) _then) =
      __$BomComponentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String bomId,
      String itemId,
      double quantity,
      String unit,
      double unitCost,
      double totalCost,
      int sequence,
      String? notes,
      String? specification,
      bool? isOptional,
      String? alternativeItemId,
      double? wastagePercentage,
      double? leadTime,
      Map<String, dynamic>? attributes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$BomComponentCopyWithImpl<$Res>
    implements _$BomComponentCopyWith<$Res> {
  __$BomComponentCopyWithImpl(this._self, this._then);

  final _BomComponent _self;
  final $Res Function(_BomComponent) _then;

  /// Create a copy of BomComponent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? bomId = null,
    Object? itemId = null,
    Object? quantity = null,
    Object? unit = null,
    Object? unitCost = null,
    Object? totalCost = null,
    Object? sequence = null,
    Object? notes = freezed,
    Object? specification = freezed,
    Object? isOptional = freezed,
    Object? alternativeItemId = freezed,
    Object? wastagePercentage = freezed,
    Object? leadTime = freezed,
    Object? attributes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_BomComponent(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      bomId: null == bomId
          ? _self.bomId
          : bomId // ignore: cast_nullable_to_non_nullable
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
      unitCost: null == unitCost
          ? _self.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double,
      totalCost: null == totalCost
          ? _self.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      sequence: null == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _self.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      isOptional: freezed == isOptional
          ? _self.isOptional
          : isOptional // ignore: cast_nullable_to_non_nullable
              as bool?,
      alternativeItemId: freezed == alternativeItemId
          ? _self.alternativeItemId
          : alternativeItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      wastagePercentage: freezed == wastagePercentage
          ? _self.wastagePercentage
          : wastagePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      leadTime: freezed == leadTime
          ? _self.leadTime
          : leadTime // ignore: cast_nullable_to_non_nullable
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
mixin _$CreateBomComponentRequest {
  String get itemId;
  double get quantity;
  String get unit;
  double get unitCost;
  int? get sequence;
  String? get notes;
  String? get specification;
  bool? get isOptional;
  String? get alternativeItemId;
  double? get wastagePercentage;
  double? get leadTime;
  Map<String, dynamic>? get attributes;

  /// Create a copy of CreateBomComponentRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateBomComponentRequestCopyWith<CreateBomComponentRequest> get copyWith =>
      _$CreateBomComponentRequestCopyWithImpl<CreateBomComponentRequest>(
          this as CreateBomComponentRequest, _$identity);

  /// Serializes this CreateBomComponentRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateBomComponentRequest &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.specification, specification) ||
                other.specification == specification) &&
            (identical(other.isOptional, isOptional) ||
                other.isOptional == isOptional) &&
            (identical(other.alternativeItemId, alternativeItemId) ||
                other.alternativeItemId == alternativeItemId) &&
            (identical(other.wastagePercentage, wastagePercentage) ||
                other.wastagePercentage == wastagePercentage) &&
            (identical(other.leadTime, leadTime) ||
                other.leadTime == leadTime) &&
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
      unitCost,
      sequence,
      notes,
      specification,
      isOptional,
      alternativeItemId,
      wastagePercentage,
      leadTime,
      const DeepCollectionEquality().hash(attributes));

  @override
  String toString() {
    return 'CreateBomComponentRequest(itemId: $itemId, quantity: $quantity, unit: $unit, unitCost: $unitCost, sequence: $sequence, notes: $notes, specification: $specification, isOptional: $isOptional, alternativeItemId: $alternativeItemId, wastagePercentage: $wastagePercentage, leadTime: $leadTime, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class $CreateBomComponentRequestCopyWith<$Res> {
  factory $CreateBomComponentRequestCopyWith(CreateBomComponentRequest value,
          $Res Function(CreateBomComponentRequest) _then) =
      _$CreateBomComponentRequestCopyWithImpl;
  @useResult
  $Res call(
      {String itemId,
      double quantity,
      String unit,
      double unitCost,
      int? sequence,
      String? notes,
      String? specification,
      bool? isOptional,
      String? alternativeItemId,
      double? wastagePercentage,
      double? leadTime,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class _$CreateBomComponentRequestCopyWithImpl<$Res>
    implements $CreateBomComponentRequestCopyWith<$Res> {
  _$CreateBomComponentRequestCopyWithImpl(this._self, this._then);

  final CreateBomComponentRequest _self;
  final $Res Function(CreateBomComponentRequest) _then;

  /// Create a copy of CreateBomComponentRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? quantity = null,
    Object? unit = null,
    Object? unitCost = null,
    Object? sequence = freezed,
    Object? notes = freezed,
    Object? specification = freezed,
    Object? isOptional = freezed,
    Object? alternativeItemId = freezed,
    Object? wastagePercentage = freezed,
    Object? leadTime = freezed,
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
      unitCost: null == unitCost
          ? _self.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double,
      sequence: freezed == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _self.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      isOptional: freezed == isOptional
          ? _self.isOptional
          : isOptional // ignore: cast_nullable_to_non_nullable
              as bool?,
      alternativeItemId: freezed == alternativeItemId
          ? _self.alternativeItemId
          : alternativeItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      wastagePercentage: freezed == wastagePercentage
          ? _self.wastagePercentage
          : wastagePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      leadTime: freezed == leadTime
          ? _self.leadTime
          : leadTime // ignore: cast_nullable_to_non_nullable
              as double?,
      attributes: freezed == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateBomComponentRequest].
extension CreateBomComponentRequestPatterns on CreateBomComponentRequest {
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
    TResult Function(_CreateBomComponentRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateBomComponentRequest() when $default != null:
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
    TResult Function(_CreateBomComponentRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateBomComponentRequest():
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
    TResult? Function(_CreateBomComponentRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateBomComponentRequest() when $default != null:
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
            double unitCost,
            int? sequence,
            String? notes,
            String? specification,
            bool? isOptional,
            String? alternativeItemId,
            double? wastagePercentage,
            double? leadTime,
            Map<String, dynamic>? attributes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateBomComponentRequest() when $default != null:
        return $default(
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.unitCost,
            _that.sequence,
            _that.notes,
            _that.specification,
            _that.isOptional,
            _that.alternativeItemId,
            _that.wastagePercentage,
            _that.leadTime,
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
            double unitCost,
            int? sequence,
            String? notes,
            String? specification,
            bool? isOptional,
            String? alternativeItemId,
            double? wastagePercentage,
            double? leadTime,
            Map<String, dynamic>? attributes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateBomComponentRequest():
        return $default(
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.unitCost,
            _that.sequence,
            _that.notes,
            _that.specification,
            _that.isOptional,
            _that.alternativeItemId,
            _that.wastagePercentage,
            _that.leadTime,
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
            double unitCost,
            int? sequence,
            String? notes,
            String? specification,
            bool? isOptional,
            String? alternativeItemId,
            double? wastagePercentage,
            double? leadTime,
            Map<String, dynamic>? attributes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateBomComponentRequest() when $default != null:
        return $default(
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.unitCost,
            _that.sequence,
            _that.notes,
            _that.specification,
            _that.isOptional,
            _that.alternativeItemId,
            _that.wastagePercentage,
            _that.leadTime,
            _that.attributes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateBomComponentRequest implements CreateBomComponentRequest {
  const _CreateBomComponentRequest(
      {required this.itemId,
      required this.quantity,
      required this.unit,
      required this.unitCost,
      this.sequence,
      this.notes,
      this.specification,
      this.isOptional,
      this.alternativeItemId,
      this.wastagePercentage,
      this.leadTime,
      final Map<String, dynamic>? attributes})
      : _attributes = attributes;
  factory _CreateBomComponentRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateBomComponentRequestFromJson(json);

  @override
  final String itemId;
  @override
  final double quantity;
  @override
  final String unit;
  @override
  final double unitCost;
  @override
  final int? sequence;
  @override
  final String? notes;
  @override
  final String? specification;
  @override
  final bool? isOptional;
  @override
  final String? alternativeItemId;
  @override
  final double? wastagePercentage;
  @override
  final double? leadTime;
  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of CreateBomComponentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateBomComponentRequestCopyWith<_CreateBomComponentRequest>
      get copyWith =>
          __$CreateBomComponentRequestCopyWithImpl<_CreateBomComponentRequest>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateBomComponentRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateBomComponentRequest &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.specification, specification) ||
                other.specification == specification) &&
            (identical(other.isOptional, isOptional) ||
                other.isOptional == isOptional) &&
            (identical(other.alternativeItemId, alternativeItemId) ||
                other.alternativeItemId == alternativeItemId) &&
            (identical(other.wastagePercentage, wastagePercentage) ||
                other.wastagePercentage == wastagePercentage) &&
            (identical(other.leadTime, leadTime) ||
                other.leadTime == leadTime) &&
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
      unitCost,
      sequence,
      notes,
      specification,
      isOptional,
      alternativeItemId,
      wastagePercentage,
      leadTime,
      const DeepCollectionEquality().hash(_attributes));

  @override
  String toString() {
    return 'CreateBomComponentRequest(itemId: $itemId, quantity: $quantity, unit: $unit, unitCost: $unitCost, sequence: $sequence, notes: $notes, specification: $specification, isOptional: $isOptional, alternativeItemId: $alternativeItemId, wastagePercentage: $wastagePercentage, leadTime: $leadTime, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class _$CreateBomComponentRequestCopyWith<$Res>
    implements $CreateBomComponentRequestCopyWith<$Res> {
  factory _$CreateBomComponentRequestCopyWith(_CreateBomComponentRequest value,
          $Res Function(_CreateBomComponentRequest) _then) =
      __$CreateBomComponentRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String itemId,
      double quantity,
      String unit,
      double unitCost,
      int? sequence,
      String? notes,
      String? specification,
      bool? isOptional,
      String? alternativeItemId,
      double? wastagePercentage,
      double? leadTime,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class __$CreateBomComponentRequestCopyWithImpl<$Res>
    implements _$CreateBomComponentRequestCopyWith<$Res> {
  __$CreateBomComponentRequestCopyWithImpl(this._self, this._then);

  final _CreateBomComponentRequest _self;
  final $Res Function(_CreateBomComponentRequest) _then;

  /// Create a copy of CreateBomComponentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? itemId = null,
    Object? quantity = null,
    Object? unit = null,
    Object? unitCost = null,
    Object? sequence = freezed,
    Object? notes = freezed,
    Object? specification = freezed,
    Object? isOptional = freezed,
    Object? alternativeItemId = freezed,
    Object? wastagePercentage = freezed,
    Object? leadTime = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_CreateBomComponentRequest(
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
      unitCost: null == unitCost
          ? _self.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double,
      sequence: freezed == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _self.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      isOptional: freezed == isOptional
          ? _self.isOptional
          : isOptional // ignore: cast_nullable_to_non_nullable
              as bool?,
      alternativeItemId: freezed == alternativeItemId
          ? _self.alternativeItemId
          : alternativeItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      wastagePercentage: freezed == wastagePercentage
          ? _self.wastagePercentage
          : wastagePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      leadTime: freezed == leadTime
          ? _self.leadTime
          : leadTime // ignore: cast_nullable_to_non_nullable
              as double?,
      attributes: freezed == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$UpdateBomComponentRequest {
  double? get quantity;
  String? get unit;
  double? get unitCost;
  int? get sequence;
  String? get notes;
  String? get specification;
  bool? get isOptional;
  String? get alternativeItemId;
  double? get wastagePercentage;
  double? get leadTime;
  Map<String, dynamic>? get attributes;

  /// Create a copy of UpdateBomComponentRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateBomComponentRequestCopyWith<UpdateBomComponentRequest> get copyWith =>
      _$UpdateBomComponentRequestCopyWithImpl<UpdateBomComponentRequest>(
          this as UpdateBomComponentRequest, _$identity);

  /// Serializes this UpdateBomComponentRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateBomComponentRequest &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.specification, specification) ||
                other.specification == specification) &&
            (identical(other.isOptional, isOptional) ||
                other.isOptional == isOptional) &&
            (identical(other.alternativeItemId, alternativeItemId) ||
                other.alternativeItemId == alternativeItemId) &&
            (identical(other.wastagePercentage, wastagePercentage) ||
                other.wastagePercentage == wastagePercentage) &&
            (identical(other.leadTime, leadTime) ||
                other.leadTime == leadTime) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      quantity,
      unit,
      unitCost,
      sequence,
      notes,
      specification,
      isOptional,
      alternativeItemId,
      wastagePercentage,
      leadTime,
      const DeepCollectionEquality().hash(attributes));

  @override
  String toString() {
    return 'UpdateBomComponentRequest(quantity: $quantity, unit: $unit, unitCost: $unitCost, sequence: $sequence, notes: $notes, specification: $specification, isOptional: $isOptional, alternativeItemId: $alternativeItemId, wastagePercentage: $wastagePercentage, leadTime: $leadTime, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class $UpdateBomComponentRequestCopyWith<$Res> {
  factory $UpdateBomComponentRequestCopyWith(UpdateBomComponentRequest value,
          $Res Function(UpdateBomComponentRequest) _then) =
      _$UpdateBomComponentRequestCopyWithImpl;
  @useResult
  $Res call(
      {double? quantity,
      String? unit,
      double? unitCost,
      int? sequence,
      String? notes,
      String? specification,
      bool? isOptional,
      String? alternativeItemId,
      double? wastagePercentage,
      double? leadTime,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class _$UpdateBomComponentRequestCopyWithImpl<$Res>
    implements $UpdateBomComponentRequestCopyWith<$Res> {
  _$UpdateBomComponentRequestCopyWithImpl(this._self, this._then);

  final UpdateBomComponentRequest _self;
  final $Res Function(UpdateBomComponentRequest) _then;

  /// Create a copy of UpdateBomComponentRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = freezed,
    Object? unit = freezed,
    Object? unitCost = freezed,
    Object? sequence = freezed,
    Object? notes = freezed,
    Object? specification = freezed,
    Object? isOptional = freezed,
    Object? alternativeItemId = freezed,
    Object? wastagePercentage = freezed,
    Object? leadTime = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_self.copyWith(
      quantity: freezed == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      unit: freezed == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: freezed == unitCost
          ? _self.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _self.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      isOptional: freezed == isOptional
          ? _self.isOptional
          : isOptional // ignore: cast_nullable_to_non_nullable
              as bool?,
      alternativeItemId: freezed == alternativeItemId
          ? _self.alternativeItemId
          : alternativeItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      wastagePercentage: freezed == wastagePercentage
          ? _self.wastagePercentage
          : wastagePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      leadTime: freezed == leadTime
          ? _self.leadTime
          : leadTime // ignore: cast_nullable_to_non_nullable
              as double?,
      attributes: freezed == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateBomComponentRequest].
extension UpdateBomComponentRequestPatterns on UpdateBomComponentRequest {
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
    TResult Function(_UpdateBomComponentRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateBomComponentRequest() when $default != null:
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
    TResult Function(_UpdateBomComponentRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateBomComponentRequest():
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
    TResult? Function(_UpdateBomComponentRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateBomComponentRequest() when $default != null:
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
            String? unit,
            double? unitCost,
            int? sequence,
            String? notes,
            String? specification,
            bool? isOptional,
            String? alternativeItemId,
            double? wastagePercentage,
            double? leadTime,
            Map<String, dynamic>? attributes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateBomComponentRequest() when $default != null:
        return $default(
            _that.quantity,
            _that.unit,
            _that.unitCost,
            _that.sequence,
            _that.notes,
            _that.specification,
            _that.isOptional,
            _that.alternativeItemId,
            _that.wastagePercentage,
            _that.leadTime,
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
            double? quantity,
            String? unit,
            double? unitCost,
            int? sequence,
            String? notes,
            String? specification,
            bool? isOptional,
            String? alternativeItemId,
            double? wastagePercentage,
            double? leadTime,
            Map<String, dynamic>? attributes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateBomComponentRequest():
        return $default(
            _that.quantity,
            _that.unit,
            _that.unitCost,
            _that.sequence,
            _that.notes,
            _that.specification,
            _that.isOptional,
            _that.alternativeItemId,
            _that.wastagePercentage,
            _that.leadTime,
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
            double? quantity,
            String? unit,
            double? unitCost,
            int? sequence,
            String? notes,
            String? specification,
            bool? isOptional,
            String? alternativeItemId,
            double? wastagePercentage,
            double? leadTime,
            Map<String, dynamic>? attributes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateBomComponentRequest() when $default != null:
        return $default(
            _that.quantity,
            _that.unit,
            _that.unitCost,
            _that.sequence,
            _that.notes,
            _that.specification,
            _that.isOptional,
            _that.alternativeItemId,
            _that.wastagePercentage,
            _that.leadTime,
            _that.attributes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateBomComponentRequest implements UpdateBomComponentRequest {
  const _UpdateBomComponentRequest(
      {this.quantity,
      this.unit,
      this.unitCost,
      this.sequence,
      this.notes,
      this.specification,
      this.isOptional,
      this.alternativeItemId,
      this.wastagePercentage,
      this.leadTime,
      final Map<String, dynamic>? attributes})
      : _attributes = attributes;
  factory _UpdateBomComponentRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateBomComponentRequestFromJson(json);

  @override
  final double? quantity;
  @override
  final String? unit;
  @override
  final double? unitCost;
  @override
  final int? sequence;
  @override
  final String? notes;
  @override
  final String? specification;
  @override
  final bool? isOptional;
  @override
  final String? alternativeItemId;
  @override
  final double? wastagePercentage;
  @override
  final double? leadTime;
  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of UpdateBomComponentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateBomComponentRequestCopyWith<_UpdateBomComponentRequest>
      get copyWith =>
          __$UpdateBomComponentRequestCopyWithImpl<_UpdateBomComponentRequest>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateBomComponentRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateBomComponentRequest &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.specification, specification) ||
                other.specification == specification) &&
            (identical(other.isOptional, isOptional) ||
                other.isOptional == isOptional) &&
            (identical(other.alternativeItemId, alternativeItemId) ||
                other.alternativeItemId == alternativeItemId) &&
            (identical(other.wastagePercentage, wastagePercentage) ||
                other.wastagePercentage == wastagePercentage) &&
            (identical(other.leadTime, leadTime) ||
                other.leadTime == leadTime) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      quantity,
      unit,
      unitCost,
      sequence,
      notes,
      specification,
      isOptional,
      alternativeItemId,
      wastagePercentage,
      leadTime,
      const DeepCollectionEquality().hash(_attributes));

  @override
  String toString() {
    return 'UpdateBomComponentRequest(quantity: $quantity, unit: $unit, unitCost: $unitCost, sequence: $sequence, notes: $notes, specification: $specification, isOptional: $isOptional, alternativeItemId: $alternativeItemId, wastagePercentage: $wastagePercentage, leadTime: $leadTime, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class _$UpdateBomComponentRequestCopyWith<$Res>
    implements $UpdateBomComponentRequestCopyWith<$Res> {
  factory _$UpdateBomComponentRequestCopyWith(_UpdateBomComponentRequest value,
          $Res Function(_UpdateBomComponentRequest) _then) =
      __$UpdateBomComponentRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double? quantity,
      String? unit,
      double? unitCost,
      int? sequence,
      String? notes,
      String? specification,
      bool? isOptional,
      String? alternativeItemId,
      double? wastagePercentage,
      double? leadTime,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class __$UpdateBomComponentRequestCopyWithImpl<$Res>
    implements _$UpdateBomComponentRequestCopyWith<$Res> {
  __$UpdateBomComponentRequestCopyWithImpl(this._self, this._then);

  final _UpdateBomComponentRequest _self;
  final $Res Function(_UpdateBomComponentRequest) _then;

  /// Create a copy of UpdateBomComponentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? quantity = freezed,
    Object? unit = freezed,
    Object? unitCost = freezed,
    Object? sequence = freezed,
    Object? notes = freezed,
    Object? specification = freezed,
    Object? isOptional = freezed,
    Object? alternativeItemId = freezed,
    Object? wastagePercentage = freezed,
    Object? leadTime = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_UpdateBomComponentRequest(
      quantity: freezed == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      unit: freezed == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: freezed == unitCost
          ? _self.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _self.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      isOptional: freezed == isOptional
          ? _self.isOptional
          : isOptional // ignore: cast_nullable_to_non_nullable
              as bool?,
      alternativeItemId: freezed == alternativeItemId
          ? _self.alternativeItemId
          : alternativeItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      wastagePercentage: freezed == wastagePercentage
          ? _self.wastagePercentage
          : wastagePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      leadTime: freezed == leadTime
          ? _self.leadTime
          : leadTime // ignore: cast_nullable_to_non_nullable
              as double?,
      attributes: freezed == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$BomExplosionItem {
  String get itemId;
  String get itemName;
  String get itemCode;
  double get quantity;
  String get unit;
  double get unitCost;
  double get totalCost;
  int get level;
  String? get parentItemId;
  String? get bomId;
  String? get componentId;
  bool? get isOptional;
  double? get wastagePercentage;
  double? get leadTime;
  List<BomExplosionItem>? get children;

  /// Create a copy of BomExplosionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BomExplosionItemCopyWith<BomExplosionItem> get copyWith =>
      _$BomExplosionItemCopyWithImpl<BomExplosionItem>(
          this as BomExplosionItem, _$identity);

  /// Serializes this BomExplosionItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BomExplosionItem &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.itemCode, itemCode) ||
                other.itemCode == itemCode) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.parentItemId, parentItemId) ||
                other.parentItemId == parentItemId) &&
            (identical(other.bomId, bomId) || other.bomId == bomId) &&
            (identical(other.componentId, componentId) ||
                other.componentId == componentId) &&
            (identical(other.isOptional, isOptional) ||
                other.isOptional == isOptional) &&
            (identical(other.wastagePercentage, wastagePercentage) ||
                other.wastagePercentage == wastagePercentage) &&
            (identical(other.leadTime, leadTime) ||
                other.leadTime == leadTime) &&
            const DeepCollectionEquality().equals(other.children, children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemId,
      itemName,
      itemCode,
      quantity,
      unit,
      unitCost,
      totalCost,
      level,
      parentItemId,
      bomId,
      componentId,
      isOptional,
      wastagePercentage,
      leadTime,
      const DeepCollectionEquality().hash(children));

  @override
  String toString() {
    return 'BomExplosionItem(itemId: $itemId, itemName: $itemName, itemCode: $itemCode, quantity: $quantity, unit: $unit, unitCost: $unitCost, totalCost: $totalCost, level: $level, parentItemId: $parentItemId, bomId: $bomId, componentId: $componentId, isOptional: $isOptional, wastagePercentage: $wastagePercentage, leadTime: $leadTime, children: $children)';
  }
}

/// @nodoc
abstract mixin class $BomExplosionItemCopyWith<$Res> {
  factory $BomExplosionItemCopyWith(
          BomExplosionItem value, $Res Function(BomExplosionItem) _then) =
      _$BomExplosionItemCopyWithImpl;
  @useResult
  $Res call(
      {String itemId,
      String itemName,
      String itemCode,
      double quantity,
      String unit,
      double unitCost,
      double totalCost,
      int level,
      String? parentItemId,
      String? bomId,
      String? componentId,
      bool? isOptional,
      double? wastagePercentage,
      double? leadTime,
      List<BomExplosionItem>? children});
}

/// @nodoc
class _$BomExplosionItemCopyWithImpl<$Res>
    implements $BomExplosionItemCopyWith<$Res> {
  _$BomExplosionItemCopyWithImpl(this._self, this._then);

  final BomExplosionItem _self;
  final $Res Function(BomExplosionItem) _then;

  /// Create a copy of BomExplosionItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? itemName = null,
    Object? itemCode = null,
    Object? quantity = null,
    Object? unit = null,
    Object? unitCost = null,
    Object? totalCost = null,
    Object? level = null,
    Object? parentItemId = freezed,
    Object? bomId = freezed,
    Object? componentId = freezed,
    Object? isOptional = freezed,
    Object? wastagePercentage = freezed,
    Object? leadTime = freezed,
    Object? children = freezed,
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
      itemCode: null == itemCode
          ? _self.itemCode
          : itemCode // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      unitCost: null == unitCost
          ? _self.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double,
      totalCost: null == totalCost
          ? _self.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      level: null == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      parentItemId: freezed == parentItemId
          ? _self.parentItemId
          : parentItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      bomId: freezed == bomId
          ? _self.bomId
          : bomId // ignore: cast_nullable_to_non_nullable
              as String?,
      componentId: freezed == componentId
          ? _self.componentId
          : componentId // ignore: cast_nullable_to_non_nullable
              as String?,
      isOptional: freezed == isOptional
          ? _self.isOptional
          : isOptional // ignore: cast_nullable_to_non_nullable
              as bool?,
      wastagePercentage: freezed == wastagePercentage
          ? _self.wastagePercentage
          : wastagePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      leadTime: freezed == leadTime
          ? _self.leadTime
          : leadTime // ignore: cast_nullable_to_non_nullable
              as double?,
      children: freezed == children
          ? _self.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<BomExplosionItem>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [BomExplosionItem].
extension BomExplosionItemPatterns on BomExplosionItem {
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
    TResult Function(_BomExplosionItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BomExplosionItem() when $default != null:
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
    TResult Function(_BomExplosionItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BomExplosionItem():
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
    TResult? Function(_BomExplosionItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BomExplosionItem() when $default != null:
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
            String itemCode,
            double quantity,
            String unit,
            double unitCost,
            double totalCost,
            int level,
            String? parentItemId,
            String? bomId,
            String? componentId,
            bool? isOptional,
            double? wastagePercentage,
            double? leadTime,
            List<BomExplosionItem>? children)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BomExplosionItem() when $default != null:
        return $default(
            _that.itemId,
            _that.itemName,
            _that.itemCode,
            _that.quantity,
            _that.unit,
            _that.unitCost,
            _that.totalCost,
            _that.level,
            _that.parentItemId,
            _that.bomId,
            _that.componentId,
            _that.isOptional,
            _that.wastagePercentage,
            _that.leadTime,
            _that.children);
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
            String itemCode,
            double quantity,
            String unit,
            double unitCost,
            double totalCost,
            int level,
            String? parentItemId,
            String? bomId,
            String? componentId,
            bool? isOptional,
            double? wastagePercentage,
            double? leadTime,
            List<BomExplosionItem>? children)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BomExplosionItem():
        return $default(
            _that.itemId,
            _that.itemName,
            _that.itemCode,
            _that.quantity,
            _that.unit,
            _that.unitCost,
            _that.totalCost,
            _that.level,
            _that.parentItemId,
            _that.bomId,
            _that.componentId,
            _that.isOptional,
            _that.wastagePercentage,
            _that.leadTime,
            _that.children);
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
            String itemCode,
            double quantity,
            String unit,
            double unitCost,
            double totalCost,
            int level,
            String? parentItemId,
            String? bomId,
            String? componentId,
            bool? isOptional,
            double? wastagePercentage,
            double? leadTime,
            List<BomExplosionItem>? children)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BomExplosionItem() when $default != null:
        return $default(
            _that.itemId,
            _that.itemName,
            _that.itemCode,
            _that.quantity,
            _that.unit,
            _that.unitCost,
            _that.totalCost,
            _that.level,
            _that.parentItemId,
            _that.bomId,
            _that.componentId,
            _that.isOptional,
            _that.wastagePercentage,
            _that.leadTime,
            _that.children);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BomExplosionItem implements BomExplosionItem {
  const _BomExplosionItem(
      {required this.itemId,
      required this.itemName,
      required this.itemCode,
      required this.quantity,
      required this.unit,
      required this.unitCost,
      required this.totalCost,
      required this.level,
      this.parentItemId,
      this.bomId,
      this.componentId,
      this.isOptional,
      this.wastagePercentage,
      this.leadTime,
      final List<BomExplosionItem>? children})
      : _children = children;
  factory _BomExplosionItem.fromJson(Map<String, dynamic> json) =>
      _$BomExplosionItemFromJson(json);

  @override
  final String itemId;
  @override
  final String itemName;
  @override
  final String itemCode;
  @override
  final double quantity;
  @override
  final String unit;
  @override
  final double unitCost;
  @override
  final double totalCost;
  @override
  final int level;
  @override
  final String? parentItemId;
  @override
  final String? bomId;
  @override
  final String? componentId;
  @override
  final bool? isOptional;
  @override
  final double? wastagePercentage;
  @override
  final double? leadTime;
  final List<BomExplosionItem>? _children;
  @override
  List<BomExplosionItem>? get children {
    final value = _children;
    if (value == null) return null;
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of BomExplosionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BomExplosionItemCopyWith<_BomExplosionItem> get copyWith =>
      __$BomExplosionItemCopyWithImpl<_BomExplosionItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BomExplosionItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BomExplosionItem &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.itemCode, itemCode) ||
                other.itemCode == itemCode) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.parentItemId, parentItemId) ||
                other.parentItemId == parentItemId) &&
            (identical(other.bomId, bomId) || other.bomId == bomId) &&
            (identical(other.componentId, componentId) ||
                other.componentId == componentId) &&
            (identical(other.isOptional, isOptional) ||
                other.isOptional == isOptional) &&
            (identical(other.wastagePercentage, wastagePercentage) ||
                other.wastagePercentage == wastagePercentage) &&
            (identical(other.leadTime, leadTime) ||
                other.leadTime == leadTime) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemId,
      itemName,
      itemCode,
      quantity,
      unit,
      unitCost,
      totalCost,
      level,
      parentItemId,
      bomId,
      componentId,
      isOptional,
      wastagePercentage,
      leadTime,
      const DeepCollectionEquality().hash(_children));

  @override
  String toString() {
    return 'BomExplosionItem(itemId: $itemId, itemName: $itemName, itemCode: $itemCode, quantity: $quantity, unit: $unit, unitCost: $unitCost, totalCost: $totalCost, level: $level, parentItemId: $parentItemId, bomId: $bomId, componentId: $componentId, isOptional: $isOptional, wastagePercentage: $wastagePercentage, leadTime: $leadTime, children: $children)';
  }
}

/// @nodoc
abstract mixin class _$BomExplosionItemCopyWith<$Res>
    implements $BomExplosionItemCopyWith<$Res> {
  factory _$BomExplosionItemCopyWith(
          _BomExplosionItem value, $Res Function(_BomExplosionItem) _then) =
      __$BomExplosionItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String itemId,
      String itemName,
      String itemCode,
      double quantity,
      String unit,
      double unitCost,
      double totalCost,
      int level,
      String? parentItemId,
      String? bomId,
      String? componentId,
      bool? isOptional,
      double? wastagePercentage,
      double? leadTime,
      List<BomExplosionItem>? children});
}

/// @nodoc
class __$BomExplosionItemCopyWithImpl<$Res>
    implements _$BomExplosionItemCopyWith<$Res> {
  __$BomExplosionItemCopyWithImpl(this._self, this._then);

  final _BomExplosionItem _self;
  final $Res Function(_BomExplosionItem) _then;

  /// Create a copy of BomExplosionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? itemId = null,
    Object? itemName = null,
    Object? itemCode = null,
    Object? quantity = null,
    Object? unit = null,
    Object? unitCost = null,
    Object? totalCost = null,
    Object? level = null,
    Object? parentItemId = freezed,
    Object? bomId = freezed,
    Object? componentId = freezed,
    Object? isOptional = freezed,
    Object? wastagePercentage = freezed,
    Object? leadTime = freezed,
    Object? children = freezed,
  }) {
    return _then(_BomExplosionItem(
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _self.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      itemCode: null == itemCode
          ? _self.itemCode
          : itemCode // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      unitCost: null == unitCost
          ? _self.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double,
      totalCost: null == totalCost
          ? _self.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      level: null == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      parentItemId: freezed == parentItemId
          ? _self.parentItemId
          : parentItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      bomId: freezed == bomId
          ? _self.bomId
          : bomId // ignore: cast_nullable_to_non_nullable
              as String?,
      componentId: freezed == componentId
          ? _self.componentId
          : componentId // ignore: cast_nullable_to_non_nullable
              as String?,
      isOptional: freezed == isOptional
          ? _self.isOptional
          : isOptional // ignore: cast_nullable_to_non_nullable
              as bool?,
      wastagePercentage: freezed == wastagePercentage
          ? _self.wastagePercentage
          : wastagePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      leadTime: freezed == leadTime
          ? _self.leadTime
          : leadTime // ignore: cast_nullable_to_non_nullable
              as double?,
      children: freezed == children
          ? _self._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<BomExplosionItem>?,
    ));
  }
}

/// @nodoc
mixin _$BomStats {
  String get bomId;
  int get totalComponents;
  double get totalCost;
  double get totalLeadTime;
  int get maxLevels;
  Map<String, int>? get componentsByCategory;
  Map<String, double>? get costByCategory;

  /// Create a copy of BomStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BomStatsCopyWith<BomStats> get copyWith =>
      _$BomStatsCopyWithImpl<BomStats>(this as BomStats, _$identity);

  /// Serializes this BomStats to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BomStats &&
            (identical(other.bomId, bomId) || other.bomId == bomId) &&
            (identical(other.totalComponents, totalComponents) ||
                other.totalComponents == totalComponents) &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost) &&
            (identical(other.totalLeadTime, totalLeadTime) ||
                other.totalLeadTime == totalLeadTime) &&
            (identical(other.maxLevels, maxLevels) ||
                other.maxLevels == maxLevels) &&
            const DeepCollectionEquality()
                .equals(other.componentsByCategory, componentsByCategory) &&
            const DeepCollectionEquality()
                .equals(other.costByCategory, costByCategory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bomId,
      totalComponents,
      totalCost,
      totalLeadTime,
      maxLevels,
      const DeepCollectionEquality().hash(componentsByCategory),
      const DeepCollectionEquality().hash(costByCategory));

  @override
  String toString() {
    return 'BomStats(bomId: $bomId, totalComponents: $totalComponents, totalCost: $totalCost, totalLeadTime: $totalLeadTime, maxLevels: $maxLevels, componentsByCategory: $componentsByCategory, costByCategory: $costByCategory)';
  }
}

/// @nodoc
abstract mixin class $BomStatsCopyWith<$Res> {
  factory $BomStatsCopyWith(BomStats value, $Res Function(BomStats) _then) =
      _$BomStatsCopyWithImpl;
  @useResult
  $Res call(
      {String bomId,
      int totalComponents,
      double totalCost,
      double totalLeadTime,
      int maxLevels,
      Map<String, int>? componentsByCategory,
      Map<String, double>? costByCategory});
}

/// @nodoc
class _$BomStatsCopyWithImpl<$Res> implements $BomStatsCopyWith<$Res> {
  _$BomStatsCopyWithImpl(this._self, this._then);

  final BomStats _self;
  final $Res Function(BomStats) _then;

  /// Create a copy of BomStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bomId = null,
    Object? totalComponents = null,
    Object? totalCost = null,
    Object? totalLeadTime = null,
    Object? maxLevels = null,
    Object? componentsByCategory = freezed,
    Object? costByCategory = freezed,
  }) {
    return _then(_self.copyWith(
      bomId: null == bomId
          ? _self.bomId
          : bomId // ignore: cast_nullable_to_non_nullable
              as String,
      totalComponents: null == totalComponents
          ? _self.totalComponents
          : totalComponents // ignore: cast_nullable_to_non_nullable
              as int,
      totalCost: null == totalCost
          ? _self.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      totalLeadTime: null == totalLeadTime
          ? _self.totalLeadTime
          : totalLeadTime // ignore: cast_nullable_to_non_nullable
              as double,
      maxLevels: null == maxLevels
          ? _self.maxLevels
          : maxLevels // ignore: cast_nullable_to_non_nullable
              as int,
      componentsByCategory: freezed == componentsByCategory
          ? _self.componentsByCategory
          : componentsByCategory // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      costByCategory: freezed == costByCategory
          ? _self.costByCategory
          : costByCategory // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [BomStats].
extension BomStatsPatterns on BomStats {
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
    TResult Function(_BomStats value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BomStats() when $default != null:
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
    TResult Function(_BomStats value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BomStats():
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
    TResult? Function(_BomStats value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BomStats() when $default != null:
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
            String bomId,
            int totalComponents,
            double totalCost,
            double totalLeadTime,
            int maxLevels,
            Map<String, int>? componentsByCategory,
            Map<String, double>? costByCategory)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BomStats() when $default != null:
        return $default(
            _that.bomId,
            _that.totalComponents,
            _that.totalCost,
            _that.totalLeadTime,
            _that.maxLevels,
            _that.componentsByCategory,
            _that.costByCategory);
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
            String bomId,
            int totalComponents,
            double totalCost,
            double totalLeadTime,
            int maxLevels,
            Map<String, int>? componentsByCategory,
            Map<String, double>? costByCategory)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BomStats():
        return $default(
            _that.bomId,
            _that.totalComponents,
            _that.totalCost,
            _that.totalLeadTime,
            _that.maxLevels,
            _that.componentsByCategory,
            _that.costByCategory);
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
            String bomId,
            int totalComponents,
            double totalCost,
            double totalLeadTime,
            int maxLevels,
            Map<String, int>? componentsByCategory,
            Map<String, double>? costByCategory)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BomStats() when $default != null:
        return $default(
            _that.bomId,
            _that.totalComponents,
            _that.totalCost,
            _that.totalLeadTime,
            _that.maxLevels,
            _that.componentsByCategory,
            _that.costByCategory);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BomStats implements BomStats {
  const _BomStats(
      {required this.bomId,
      required this.totalComponents,
      required this.totalCost,
      required this.totalLeadTime,
      required this.maxLevels,
      final Map<String, int>? componentsByCategory,
      final Map<String, double>? costByCategory})
      : _componentsByCategory = componentsByCategory,
        _costByCategory = costByCategory;
  factory _BomStats.fromJson(Map<String, dynamic> json) =>
      _$BomStatsFromJson(json);

  @override
  final String bomId;
  @override
  final int totalComponents;
  @override
  final double totalCost;
  @override
  final double totalLeadTime;
  @override
  final int maxLevels;
  final Map<String, int>? _componentsByCategory;
  @override
  Map<String, int>? get componentsByCategory {
    final value = _componentsByCategory;
    if (value == null) return null;
    if (_componentsByCategory is EqualUnmodifiableMapView)
      return _componentsByCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, double>? _costByCategory;
  @override
  Map<String, double>? get costByCategory {
    final value = _costByCategory;
    if (value == null) return null;
    if (_costByCategory is EqualUnmodifiableMapView) return _costByCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of BomStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BomStatsCopyWith<_BomStats> get copyWith =>
      __$BomStatsCopyWithImpl<_BomStats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BomStatsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BomStats &&
            (identical(other.bomId, bomId) || other.bomId == bomId) &&
            (identical(other.totalComponents, totalComponents) ||
                other.totalComponents == totalComponents) &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost) &&
            (identical(other.totalLeadTime, totalLeadTime) ||
                other.totalLeadTime == totalLeadTime) &&
            (identical(other.maxLevels, maxLevels) ||
                other.maxLevels == maxLevels) &&
            const DeepCollectionEquality()
                .equals(other._componentsByCategory, _componentsByCategory) &&
            const DeepCollectionEquality()
                .equals(other._costByCategory, _costByCategory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bomId,
      totalComponents,
      totalCost,
      totalLeadTime,
      maxLevels,
      const DeepCollectionEquality().hash(_componentsByCategory),
      const DeepCollectionEquality().hash(_costByCategory));

  @override
  String toString() {
    return 'BomStats(bomId: $bomId, totalComponents: $totalComponents, totalCost: $totalCost, totalLeadTime: $totalLeadTime, maxLevels: $maxLevels, componentsByCategory: $componentsByCategory, costByCategory: $costByCategory)';
  }
}

/// @nodoc
abstract mixin class _$BomStatsCopyWith<$Res>
    implements $BomStatsCopyWith<$Res> {
  factory _$BomStatsCopyWith(_BomStats value, $Res Function(_BomStats) _then) =
      __$BomStatsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String bomId,
      int totalComponents,
      double totalCost,
      double totalLeadTime,
      int maxLevels,
      Map<String, int>? componentsByCategory,
      Map<String, double>? costByCategory});
}

/// @nodoc
class __$BomStatsCopyWithImpl<$Res> implements _$BomStatsCopyWith<$Res> {
  __$BomStatsCopyWithImpl(this._self, this._then);

  final _BomStats _self;
  final $Res Function(_BomStats) _then;

  /// Create a copy of BomStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bomId = null,
    Object? totalComponents = null,
    Object? totalCost = null,
    Object? totalLeadTime = null,
    Object? maxLevels = null,
    Object? componentsByCategory = freezed,
    Object? costByCategory = freezed,
  }) {
    return _then(_BomStats(
      bomId: null == bomId
          ? _self.bomId
          : bomId // ignore: cast_nullable_to_non_nullable
              as String,
      totalComponents: null == totalComponents
          ? _self.totalComponents
          : totalComponents // ignore: cast_nullable_to_non_nullable
              as int,
      totalCost: null == totalCost
          ? _self.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      totalLeadTime: null == totalLeadTime
          ? _self.totalLeadTime
          : totalLeadTime // ignore: cast_nullable_to_non_nullable
              as double,
      maxLevels: null == maxLevels
          ? _self.maxLevels
          : maxLevels // ignore: cast_nullable_to_non_nullable
              as int,
      componentsByCategory: freezed == componentsByCategory
          ? _self._componentsByCategory
          : componentsByCategory // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      costByCategory: freezed == costByCategory
          ? _self._costByCategory
          : costByCategory // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
    ));
  }
}

/// @nodoc
mixin _$BomLeadTimeAnalysis {
  String get bomId;
  double get totalLeadTime;
  double get criticalPath;
  List<BomLeadTimeItem> get items;
  List<String>? get criticalPathItems;

  /// Create a copy of BomLeadTimeAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BomLeadTimeAnalysisCopyWith<BomLeadTimeAnalysis> get copyWith =>
      _$BomLeadTimeAnalysisCopyWithImpl<BomLeadTimeAnalysis>(
          this as BomLeadTimeAnalysis, _$identity);

  /// Serializes this BomLeadTimeAnalysis to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BomLeadTimeAnalysis &&
            (identical(other.bomId, bomId) || other.bomId == bomId) &&
            (identical(other.totalLeadTime, totalLeadTime) ||
                other.totalLeadTime == totalLeadTime) &&
            (identical(other.criticalPath, criticalPath) ||
                other.criticalPath == criticalPath) &&
            const DeepCollectionEquality().equals(other.items, items) &&
            const DeepCollectionEquality()
                .equals(other.criticalPathItems, criticalPathItems));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bomId,
      totalLeadTime,
      criticalPath,
      const DeepCollectionEquality().hash(items),
      const DeepCollectionEquality().hash(criticalPathItems));

  @override
  String toString() {
    return 'BomLeadTimeAnalysis(bomId: $bomId, totalLeadTime: $totalLeadTime, criticalPath: $criticalPath, items: $items, criticalPathItems: $criticalPathItems)';
  }
}

/// @nodoc
abstract mixin class $BomLeadTimeAnalysisCopyWith<$Res> {
  factory $BomLeadTimeAnalysisCopyWith(
          BomLeadTimeAnalysis value, $Res Function(BomLeadTimeAnalysis) _then) =
      _$BomLeadTimeAnalysisCopyWithImpl;
  @useResult
  $Res call(
      {String bomId,
      double totalLeadTime,
      double criticalPath,
      List<BomLeadTimeItem> items,
      List<String>? criticalPathItems});
}

/// @nodoc
class _$BomLeadTimeAnalysisCopyWithImpl<$Res>
    implements $BomLeadTimeAnalysisCopyWith<$Res> {
  _$BomLeadTimeAnalysisCopyWithImpl(this._self, this._then);

  final BomLeadTimeAnalysis _self;
  final $Res Function(BomLeadTimeAnalysis) _then;

  /// Create a copy of BomLeadTimeAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bomId = null,
    Object? totalLeadTime = null,
    Object? criticalPath = null,
    Object? items = null,
    Object? criticalPathItems = freezed,
  }) {
    return _then(_self.copyWith(
      bomId: null == bomId
          ? _self.bomId
          : bomId // ignore: cast_nullable_to_non_nullable
              as String,
      totalLeadTime: null == totalLeadTime
          ? _self.totalLeadTime
          : totalLeadTime // ignore: cast_nullable_to_non_nullable
              as double,
      criticalPath: null == criticalPath
          ? _self.criticalPath
          : criticalPath // ignore: cast_nullable_to_non_nullable
              as double,
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<BomLeadTimeItem>,
      criticalPathItems: freezed == criticalPathItems
          ? _self.criticalPathItems
          : criticalPathItems // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [BomLeadTimeAnalysis].
extension BomLeadTimeAnalysisPatterns on BomLeadTimeAnalysis {
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
    TResult Function(_BomLeadTimeAnalysis value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BomLeadTimeAnalysis() when $default != null:
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
    TResult Function(_BomLeadTimeAnalysis value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BomLeadTimeAnalysis():
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
    TResult? Function(_BomLeadTimeAnalysis value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BomLeadTimeAnalysis() when $default != null:
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
    TResult Function(String bomId, double totalLeadTime, double criticalPath,
            List<BomLeadTimeItem> items, List<String>? criticalPathItems)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BomLeadTimeAnalysis() when $default != null:
        return $default(_that.bomId, _that.totalLeadTime, _that.criticalPath,
            _that.items, _that.criticalPathItems);
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
    TResult Function(String bomId, double totalLeadTime, double criticalPath,
            List<BomLeadTimeItem> items, List<String>? criticalPathItems)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BomLeadTimeAnalysis():
        return $default(_that.bomId, _that.totalLeadTime, _that.criticalPath,
            _that.items, _that.criticalPathItems);
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
    TResult? Function(String bomId, double totalLeadTime, double criticalPath,
            List<BomLeadTimeItem> items, List<String>? criticalPathItems)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BomLeadTimeAnalysis() when $default != null:
        return $default(_that.bomId, _that.totalLeadTime, _that.criticalPath,
            _that.items, _that.criticalPathItems);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BomLeadTimeAnalysis implements BomLeadTimeAnalysis {
  const _BomLeadTimeAnalysis(
      {required this.bomId,
      required this.totalLeadTime,
      required this.criticalPath,
      required final List<BomLeadTimeItem> items,
      final List<String>? criticalPathItems})
      : _items = items,
        _criticalPathItems = criticalPathItems;
  factory _BomLeadTimeAnalysis.fromJson(Map<String, dynamic> json) =>
      _$BomLeadTimeAnalysisFromJson(json);

  @override
  final String bomId;
  @override
  final double totalLeadTime;
  @override
  final double criticalPath;
  final List<BomLeadTimeItem> _items;
  @override
  List<BomLeadTimeItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final List<String>? _criticalPathItems;
  @override
  List<String>? get criticalPathItems {
    final value = _criticalPathItems;
    if (value == null) return null;
    if (_criticalPathItems is EqualUnmodifiableListView)
      return _criticalPathItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of BomLeadTimeAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BomLeadTimeAnalysisCopyWith<_BomLeadTimeAnalysis> get copyWith =>
      __$BomLeadTimeAnalysisCopyWithImpl<_BomLeadTimeAnalysis>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BomLeadTimeAnalysisToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BomLeadTimeAnalysis &&
            (identical(other.bomId, bomId) || other.bomId == bomId) &&
            (identical(other.totalLeadTime, totalLeadTime) ||
                other.totalLeadTime == totalLeadTime) &&
            (identical(other.criticalPath, criticalPath) ||
                other.criticalPath == criticalPath) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other._criticalPathItems, _criticalPathItems));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bomId,
      totalLeadTime,
      criticalPath,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_criticalPathItems));

  @override
  String toString() {
    return 'BomLeadTimeAnalysis(bomId: $bomId, totalLeadTime: $totalLeadTime, criticalPath: $criticalPath, items: $items, criticalPathItems: $criticalPathItems)';
  }
}

/// @nodoc
abstract mixin class _$BomLeadTimeAnalysisCopyWith<$Res>
    implements $BomLeadTimeAnalysisCopyWith<$Res> {
  factory _$BomLeadTimeAnalysisCopyWith(_BomLeadTimeAnalysis value,
          $Res Function(_BomLeadTimeAnalysis) _then) =
      __$BomLeadTimeAnalysisCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String bomId,
      double totalLeadTime,
      double criticalPath,
      List<BomLeadTimeItem> items,
      List<String>? criticalPathItems});
}

/// @nodoc
class __$BomLeadTimeAnalysisCopyWithImpl<$Res>
    implements _$BomLeadTimeAnalysisCopyWith<$Res> {
  __$BomLeadTimeAnalysisCopyWithImpl(this._self, this._then);

  final _BomLeadTimeAnalysis _self;
  final $Res Function(_BomLeadTimeAnalysis) _then;

  /// Create a copy of BomLeadTimeAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bomId = null,
    Object? totalLeadTime = null,
    Object? criticalPath = null,
    Object? items = null,
    Object? criticalPathItems = freezed,
  }) {
    return _then(_BomLeadTimeAnalysis(
      bomId: null == bomId
          ? _self.bomId
          : bomId // ignore: cast_nullable_to_non_nullable
              as String,
      totalLeadTime: null == totalLeadTime
          ? _self.totalLeadTime
          : totalLeadTime // ignore: cast_nullable_to_non_nullable
              as double,
      criticalPath: null == criticalPath
          ? _self.criticalPath
          : criticalPath // ignore: cast_nullable_to_non_nullable
              as double,
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<BomLeadTimeItem>,
      criticalPathItems: freezed == criticalPathItems
          ? _self._criticalPathItems
          : criticalPathItems // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
mixin _$BomLeadTimeItem {
  String get itemId;
  String get itemName;
  double get leadTime;
  bool get isCritical;
  int get level;

  /// Create a copy of BomLeadTimeItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BomLeadTimeItemCopyWith<BomLeadTimeItem> get copyWith =>
      _$BomLeadTimeItemCopyWithImpl<BomLeadTimeItem>(
          this as BomLeadTimeItem, _$identity);

  /// Serializes this BomLeadTimeItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BomLeadTimeItem &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.leadTime, leadTime) ||
                other.leadTime == leadTime) &&
            (identical(other.isCritical, isCritical) ||
                other.isCritical == isCritical) &&
            (identical(other.level, level) || other.level == level));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, itemId, itemName, leadTime, isCritical, level);

  @override
  String toString() {
    return 'BomLeadTimeItem(itemId: $itemId, itemName: $itemName, leadTime: $leadTime, isCritical: $isCritical, level: $level)';
  }
}

/// @nodoc
abstract mixin class $BomLeadTimeItemCopyWith<$Res> {
  factory $BomLeadTimeItemCopyWith(
          BomLeadTimeItem value, $Res Function(BomLeadTimeItem) _then) =
      _$BomLeadTimeItemCopyWithImpl;
  @useResult
  $Res call(
      {String itemId,
      String itemName,
      double leadTime,
      bool isCritical,
      int level});
}

/// @nodoc
class _$BomLeadTimeItemCopyWithImpl<$Res>
    implements $BomLeadTimeItemCopyWith<$Res> {
  _$BomLeadTimeItemCopyWithImpl(this._self, this._then);

  final BomLeadTimeItem _self;
  final $Res Function(BomLeadTimeItem) _then;

  /// Create a copy of BomLeadTimeItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? itemName = null,
    Object? leadTime = null,
    Object? isCritical = null,
    Object? level = null,
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
      leadTime: null == leadTime
          ? _self.leadTime
          : leadTime // ignore: cast_nullable_to_non_nullable
              as double,
      isCritical: null == isCritical
          ? _self.isCritical
          : isCritical // ignore: cast_nullable_to_non_nullable
              as bool,
      level: null == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [BomLeadTimeItem].
extension BomLeadTimeItemPatterns on BomLeadTimeItem {
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
    TResult Function(_BomLeadTimeItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BomLeadTimeItem() when $default != null:
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
    TResult Function(_BomLeadTimeItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BomLeadTimeItem():
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
    TResult? Function(_BomLeadTimeItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BomLeadTimeItem() when $default != null:
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
    TResult Function(String itemId, String itemName, double leadTime,
            bool isCritical, int level)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BomLeadTimeItem() when $default != null:
        return $default(_that.itemId, _that.itemName, _that.leadTime,
            _that.isCritical, _that.level);
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
    TResult Function(String itemId, String itemName, double leadTime,
            bool isCritical, int level)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BomLeadTimeItem():
        return $default(_that.itemId, _that.itemName, _that.leadTime,
            _that.isCritical, _that.level);
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
    TResult? Function(String itemId, String itemName, double leadTime,
            bool isCritical, int level)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BomLeadTimeItem() when $default != null:
        return $default(_that.itemId, _that.itemName, _that.leadTime,
            _that.isCritical, _that.level);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BomLeadTimeItem implements BomLeadTimeItem {
  const _BomLeadTimeItem(
      {required this.itemId,
      required this.itemName,
      required this.leadTime,
      required this.isCritical,
      required this.level});
  factory _BomLeadTimeItem.fromJson(Map<String, dynamic> json) =>
      _$BomLeadTimeItemFromJson(json);

  @override
  final String itemId;
  @override
  final String itemName;
  @override
  final double leadTime;
  @override
  final bool isCritical;
  @override
  final int level;

  /// Create a copy of BomLeadTimeItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BomLeadTimeItemCopyWith<_BomLeadTimeItem> get copyWith =>
      __$BomLeadTimeItemCopyWithImpl<_BomLeadTimeItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BomLeadTimeItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BomLeadTimeItem &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.leadTime, leadTime) ||
                other.leadTime == leadTime) &&
            (identical(other.isCritical, isCritical) ||
                other.isCritical == isCritical) &&
            (identical(other.level, level) || other.level == level));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, itemId, itemName, leadTime, isCritical, level);

  @override
  String toString() {
    return 'BomLeadTimeItem(itemId: $itemId, itemName: $itemName, leadTime: $leadTime, isCritical: $isCritical, level: $level)';
  }
}

/// @nodoc
abstract mixin class _$BomLeadTimeItemCopyWith<$Res>
    implements $BomLeadTimeItemCopyWith<$Res> {
  factory _$BomLeadTimeItemCopyWith(
          _BomLeadTimeItem value, $Res Function(_BomLeadTimeItem) _then) =
      __$BomLeadTimeItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String itemId,
      String itemName,
      double leadTime,
      bool isCritical,
      int level});
}

/// @nodoc
class __$BomLeadTimeItemCopyWithImpl<$Res>
    implements _$BomLeadTimeItemCopyWith<$Res> {
  __$BomLeadTimeItemCopyWithImpl(this._self, this._then);

  final _BomLeadTimeItem _self;
  final $Res Function(_BomLeadTimeItem) _then;

  /// Create a copy of BomLeadTimeItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? itemId = null,
    Object? itemName = null,
    Object? leadTime = null,
    Object? isCritical = null,
    Object? level = null,
  }) {
    return _then(_BomLeadTimeItem(
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _self.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      leadTime: null == leadTime
          ? _self.leadTime
          : leadTime // ignore: cast_nullable_to_non_nullable
              as double,
      isCritical: null == isCritical
          ? _self.isCritical
          : isCritical // ignore: cast_nullable_to_non_nullable
              as bool,
      level: null == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$CloneBomRequest {
  String get name;
  String get version;
  String? get description;
  bool? get includeComponents;
  bool? get updateReferences;

  /// Create a copy of CloneBomRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CloneBomRequestCopyWith<CloneBomRequest> get copyWith =>
      _$CloneBomRequestCopyWithImpl<CloneBomRequest>(
          this as CloneBomRequest, _$identity);

  /// Serializes this CloneBomRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CloneBomRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.includeComponents, includeComponents) ||
                other.includeComponents == includeComponents) &&
            (identical(other.updateReferences, updateReferences) ||
                other.updateReferences == updateReferences));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, version, description,
      includeComponents, updateReferences);

  @override
  String toString() {
    return 'CloneBomRequest(name: $name, version: $version, description: $description, includeComponents: $includeComponents, updateReferences: $updateReferences)';
  }
}

/// @nodoc
abstract mixin class $CloneBomRequestCopyWith<$Res> {
  factory $CloneBomRequestCopyWith(
          CloneBomRequest value, $Res Function(CloneBomRequest) _then) =
      _$CloneBomRequestCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String version,
      String? description,
      bool? includeComponents,
      bool? updateReferences});
}

/// @nodoc
class _$CloneBomRequestCopyWithImpl<$Res>
    implements $CloneBomRequestCopyWith<$Res> {
  _$CloneBomRequestCopyWithImpl(this._self, this._then);

  final CloneBomRequest _self;
  final $Res Function(CloneBomRequest) _then;

  /// Create a copy of CloneBomRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? version = null,
    Object? description = freezed,
    Object? includeComponents = freezed,
    Object? updateReferences = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      includeComponents: freezed == includeComponents
          ? _self.includeComponents
          : includeComponents // ignore: cast_nullable_to_non_nullable
              as bool?,
      updateReferences: freezed == updateReferences
          ? _self.updateReferences
          : updateReferences // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CloneBomRequest].
extension CloneBomRequestPatterns on CloneBomRequest {
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
    TResult Function(_CloneBomRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CloneBomRequest() when $default != null:
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
    TResult Function(_CloneBomRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CloneBomRequest():
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
    TResult? Function(_CloneBomRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CloneBomRequest() when $default != null:
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
    TResult Function(String name, String version, String? description,
            bool? includeComponents, bool? updateReferences)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CloneBomRequest() when $default != null:
        return $default(_that.name, _that.version, _that.description,
            _that.includeComponents, _that.updateReferences);
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
    TResult Function(String name, String version, String? description,
            bool? includeComponents, bool? updateReferences)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CloneBomRequest():
        return $default(_that.name, _that.version, _that.description,
            _that.includeComponents, _that.updateReferences);
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
    TResult? Function(String name, String version, String? description,
            bool? includeComponents, bool? updateReferences)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CloneBomRequest() when $default != null:
        return $default(_that.name, _that.version, _that.description,
            _that.includeComponents, _that.updateReferences);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CloneBomRequest implements CloneBomRequest {
  const _CloneBomRequest(
      {required this.name,
      required this.version,
      this.description,
      this.includeComponents,
      this.updateReferences});
  factory _CloneBomRequest.fromJson(Map<String, dynamic> json) =>
      _$CloneBomRequestFromJson(json);

  @override
  final String name;
  @override
  final String version;
  @override
  final String? description;
  @override
  final bool? includeComponents;
  @override
  final bool? updateReferences;

  /// Create a copy of CloneBomRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CloneBomRequestCopyWith<_CloneBomRequest> get copyWith =>
      __$CloneBomRequestCopyWithImpl<_CloneBomRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CloneBomRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CloneBomRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.includeComponents, includeComponents) ||
                other.includeComponents == includeComponents) &&
            (identical(other.updateReferences, updateReferences) ||
                other.updateReferences == updateReferences));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, version, description,
      includeComponents, updateReferences);

  @override
  String toString() {
    return 'CloneBomRequest(name: $name, version: $version, description: $description, includeComponents: $includeComponents, updateReferences: $updateReferences)';
  }
}

/// @nodoc
abstract mixin class _$CloneBomRequestCopyWith<$Res>
    implements $CloneBomRequestCopyWith<$Res> {
  factory _$CloneBomRequestCopyWith(
          _CloneBomRequest value, $Res Function(_CloneBomRequest) _then) =
      __$CloneBomRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String version,
      String? description,
      bool? includeComponents,
      bool? updateReferences});
}

/// @nodoc
class __$CloneBomRequestCopyWithImpl<$Res>
    implements _$CloneBomRequestCopyWith<$Res> {
  __$CloneBomRequestCopyWithImpl(this._self, this._then);

  final _CloneBomRequest _self;
  final $Res Function(_CloneBomRequest) _then;

  /// Create a copy of CloneBomRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? version = null,
    Object? description = freezed,
    Object? includeComponents = freezed,
    Object? updateReferences = freezed,
  }) {
    return _then(_CloneBomRequest(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      includeComponents: freezed == includeComponents
          ? _self.includeComponents
          : includeComponents // ignore: cast_nullable_to_non_nullable
              as bool?,
      updateReferences: freezed == updateReferences
          ? _self.updateReferences
          : updateReferences // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
mixin _$CreateBomQuickRequest {
  String get itemId;
  String get name;
  String get version;
  List<BomQuickComponent> get components;
  String? get description;

  /// Create a copy of CreateBomQuickRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateBomQuickRequestCopyWith<CreateBomQuickRequest> get copyWith =>
      _$CreateBomQuickRequestCopyWithImpl<CreateBomQuickRequest>(
          this as CreateBomQuickRequest, _$identity);

  /// Serializes this CreateBomQuickRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateBomQuickRequest &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality()
                .equals(other.components, components) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, itemId, name, version,
      const DeepCollectionEquality().hash(components), description);

  @override
  String toString() {
    return 'CreateBomQuickRequest(itemId: $itemId, name: $name, version: $version, components: $components, description: $description)';
  }
}

/// @nodoc
abstract mixin class $CreateBomQuickRequestCopyWith<$Res> {
  factory $CreateBomQuickRequestCopyWith(CreateBomQuickRequest value,
          $Res Function(CreateBomQuickRequest) _then) =
      _$CreateBomQuickRequestCopyWithImpl;
  @useResult
  $Res call(
      {String itemId,
      String name,
      String version,
      List<BomQuickComponent> components,
      String? description});
}

/// @nodoc
class _$CreateBomQuickRequestCopyWithImpl<$Res>
    implements $CreateBomQuickRequestCopyWith<$Res> {
  _$CreateBomQuickRequestCopyWithImpl(this._self, this._then);

  final CreateBomQuickRequest _self;
  final $Res Function(CreateBomQuickRequest) _then;

  /// Create a copy of CreateBomQuickRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? name = null,
    Object? version = null,
    Object? components = null,
    Object? description = freezed,
  }) {
    return _then(_self.copyWith(
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      components: null == components
          ? _self.components
          : components // ignore: cast_nullable_to_non_nullable
              as List<BomQuickComponent>,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateBomQuickRequest].
extension CreateBomQuickRequestPatterns on CreateBomQuickRequest {
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
    TResult Function(_CreateBomQuickRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateBomQuickRequest() when $default != null:
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
    TResult Function(_CreateBomQuickRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateBomQuickRequest():
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
    TResult? Function(_CreateBomQuickRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateBomQuickRequest() when $default != null:
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
    TResult Function(String itemId, String name, String version,
            List<BomQuickComponent> components, String? description)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateBomQuickRequest() when $default != null:
        return $default(_that.itemId, _that.name, _that.version,
            _that.components, _that.description);
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
    TResult Function(String itemId, String name, String version,
            List<BomQuickComponent> components, String? description)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateBomQuickRequest():
        return $default(_that.itemId, _that.name, _that.version,
            _that.components, _that.description);
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
    TResult? Function(String itemId, String name, String version,
            List<BomQuickComponent> components, String? description)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateBomQuickRequest() when $default != null:
        return $default(_that.itemId, _that.name, _that.version,
            _that.components, _that.description);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateBomQuickRequest implements CreateBomQuickRequest {
  const _CreateBomQuickRequest(
      {required this.itemId,
      required this.name,
      required this.version,
      required final List<BomQuickComponent> components,
      this.description})
      : _components = components;
  factory _CreateBomQuickRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateBomQuickRequestFromJson(json);

  @override
  final String itemId;
  @override
  final String name;
  @override
  final String version;
  final List<BomQuickComponent> _components;
  @override
  List<BomQuickComponent> get components {
    if (_components is EqualUnmodifiableListView) return _components;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_components);
  }

  @override
  final String? description;

  /// Create a copy of CreateBomQuickRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateBomQuickRequestCopyWith<_CreateBomQuickRequest> get copyWith =>
      __$CreateBomQuickRequestCopyWithImpl<_CreateBomQuickRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateBomQuickRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateBomQuickRequest &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality()
                .equals(other._components, _components) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, itemId, name, version,
      const DeepCollectionEquality().hash(_components), description);

  @override
  String toString() {
    return 'CreateBomQuickRequest(itemId: $itemId, name: $name, version: $version, components: $components, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$CreateBomQuickRequestCopyWith<$Res>
    implements $CreateBomQuickRequestCopyWith<$Res> {
  factory _$CreateBomQuickRequestCopyWith(_CreateBomQuickRequest value,
          $Res Function(_CreateBomQuickRequest) _then) =
      __$CreateBomQuickRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String itemId,
      String name,
      String version,
      List<BomQuickComponent> components,
      String? description});
}

/// @nodoc
class __$CreateBomQuickRequestCopyWithImpl<$Res>
    implements _$CreateBomQuickRequestCopyWith<$Res> {
  __$CreateBomQuickRequestCopyWithImpl(this._self, this._then);

  final _CreateBomQuickRequest _self;
  final $Res Function(_CreateBomQuickRequest) _then;

  /// Create a copy of CreateBomQuickRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? itemId = null,
    Object? name = null,
    Object? version = null,
    Object? components = null,
    Object? description = freezed,
  }) {
    return _then(_CreateBomQuickRequest(
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      components: null == components
          ? _self._components
          : components // ignore: cast_nullable_to_non_nullable
              as List<BomQuickComponent>,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$BomQuickComponent {
  String get itemId;
  double get quantity;
  String get unit;
  double? get unitCost;
  int? get sequence;

  /// Create a copy of BomQuickComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BomQuickComponentCopyWith<BomQuickComponent> get copyWith =>
      _$BomQuickComponentCopyWithImpl<BomQuickComponent>(
          this as BomQuickComponent, _$identity);

  /// Serializes this BomQuickComponent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BomQuickComponent &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, itemId, quantity, unit, unitCost, sequence);

  @override
  String toString() {
    return 'BomQuickComponent(itemId: $itemId, quantity: $quantity, unit: $unit, unitCost: $unitCost, sequence: $sequence)';
  }
}

/// @nodoc
abstract mixin class $BomQuickComponentCopyWith<$Res> {
  factory $BomQuickComponentCopyWith(
          BomQuickComponent value, $Res Function(BomQuickComponent) _then) =
      _$BomQuickComponentCopyWithImpl;
  @useResult
  $Res call(
      {String itemId,
      double quantity,
      String unit,
      double? unitCost,
      int? sequence});
}

/// @nodoc
class _$BomQuickComponentCopyWithImpl<$Res>
    implements $BomQuickComponentCopyWith<$Res> {
  _$BomQuickComponentCopyWithImpl(this._self, this._then);

  final BomQuickComponent _self;
  final $Res Function(BomQuickComponent) _then;

  /// Create a copy of BomQuickComponent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? quantity = null,
    Object? unit = null,
    Object? unitCost = freezed,
    Object? sequence = freezed,
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
      unitCost: freezed == unitCost
          ? _self.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [BomQuickComponent].
extension BomQuickComponentPatterns on BomQuickComponent {
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
    TResult Function(_BomQuickComponent value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BomQuickComponent() when $default != null:
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
    TResult Function(_BomQuickComponent value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BomQuickComponent():
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
    TResult? Function(_BomQuickComponent value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BomQuickComponent() when $default != null:
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
    TResult Function(String itemId, double quantity, String unit,
            double? unitCost, int? sequence)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BomQuickComponent() when $default != null:
        return $default(_that.itemId, _that.quantity, _that.unit,
            _that.unitCost, _that.sequence);
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
    TResult Function(String itemId, double quantity, String unit,
            double? unitCost, int? sequence)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BomQuickComponent():
        return $default(_that.itemId, _that.quantity, _that.unit,
            _that.unitCost, _that.sequence);
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
    TResult? Function(String itemId, double quantity, String unit,
            double? unitCost, int? sequence)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BomQuickComponent() when $default != null:
        return $default(_that.itemId, _that.quantity, _that.unit,
            _that.unitCost, _that.sequence);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BomQuickComponent implements BomQuickComponent {
  const _BomQuickComponent(
      {required this.itemId,
      required this.quantity,
      required this.unit,
      this.unitCost,
      this.sequence});
  factory _BomQuickComponent.fromJson(Map<String, dynamic> json) =>
      _$BomQuickComponentFromJson(json);

  @override
  final String itemId;
  @override
  final double quantity;
  @override
  final String unit;
  @override
  final double? unitCost;
  @override
  final int? sequence;

  /// Create a copy of BomQuickComponent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BomQuickComponentCopyWith<_BomQuickComponent> get copyWith =>
      __$BomQuickComponentCopyWithImpl<_BomQuickComponent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BomQuickComponentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BomQuickComponent &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, itemId, quantity, unit, unitCost, sequence);

  @override
  String toString() {
    return 'BomQuickComponent(itemId: $itemId, quantity: $quantity, unit: $unit, unitCost: $unitCost, sequence: $sequence)';
  }
}

/// @nodoc
abstract mixin class _$BomQuickComponentCopyWith<$Res>
    implements $BomQuickComponentCopyWith<$Res> {
  factory _$BomQuickComponentCopyWith(
          _BomQuickComponent value, $Res Function(_BomQuickComponent) _then) =
      __$BomQuickComponentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String itemId,
      double quantity,
      String unit,
      double? unitCost,
      int? sequence});
}

/// @nodoc
class __$BomQuickComponentCopyWithImpl<$Res>
    implements _$BomQuickComponentCopyWith<$Res> {
  __$BomQuickComponentCopyWithImpl(this._self, this._then);

  final _BomQuickComponent _self;
  final $Res Function(_BomQuickComponent) _then;

  /// Create a copy of BomQuickComponent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? itemId = null,
    Object? quantity = null,
    Object? unit = null,
    Object? unitCost = freezed,
    Object? sequence = freezed,
  }) {
    return _then(_BomQuickComponent(
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
      unitCost: freezed == unitCost
          ? _self.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
