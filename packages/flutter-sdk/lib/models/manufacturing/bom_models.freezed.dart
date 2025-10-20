// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bom_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BomComponent _$BomComponentFromJson(Map<String, dynamic> json) {
  return _BomComponent.fromJson(json);
}

/// @nodoc
mixin _$BomComponent {
  String get id => throw _privateConstructorUsedError;
  String get bomId => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  double get unitCost => throw _privateConstructorUsedError;
  double get totalCost => throw _privateConstructorUsedError;
  int get sequence => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get specification => throw _privateConstructorUsedError;
  bool? get isOptional => throw _privateConstructorUsedError;
  String? get alternativeItemId => throw _privateConstructorUsedError;
  double? get wastagePercentage => throw _privateConstructorUsedError;
  double? get leadTime => throw _privateConstructorUsedError;
  Map<String, dynamic>? get attributes => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BomComponentCopyWith<BomComponent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BomComponentCopyWith<$Res> {
  factory $BomComponentCopyWith(
          BomComponent value, $Res Function(BomComponent) then) =
      _$BomComponentCopyWithImpl<$Res, BomComponent>;
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
class _$BomComponentCopyWithImpl<$Res, $Val extends BomComponent>
    implements $BomComponentCopyWith<$Res> {
  _$BomComponentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      bomId: null == bomId
          ? _value.bomId
          : bomId // ignore: cast_nullable_to_non_nullable
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
      unitCost: null == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double,
      totalCost: null == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      sequence: null == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      isOptional: freezed == isOptional
          ? _value.isOptional
          : isOptional // ignore: cast_nullable_to_non_nullable
              as bool?,
      alternativeItemId: freezed == alternativeItemId
          ? _value.alternativeItemId
          : alternativeItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      wastagePercentage: freezed == wastagePercentage
          ? _value.wastagePercentage
          : wastagePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      leadTime: freezed == leadTime
          ? _value.leadTime
          : leadTime // ignore: cast_nullable_to_non_nullable
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
abstract class _$$BomComponentImplCopyWith<$Res>
    implements $BomComponentCopyWith<$Res> {
  factory _$$BomComponentImplCopyWith(
          _$BomComponentImpl value, $Res Function(_$BomComponentImpl) then) =
      __$$BomComponentImplCopyWithImpl<$Res>;
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
class __$$BomComponentImplCopyWithImpl<$Res>
    extends _$BomComponentCopyWithImpl<$Res, _$BomComponentImpl>
    implements _$$BomComponentImplCopyWith<$Res> {
  __$$BomComponentImplCopyWithImpl(
      _$BomComponentImpl _value, $Res Function(_$BomComponentImpl) _then)
      : super(_value, _then);

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
    return _then(_$BomComponentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      bomId: null == bomId
          ? _value.bomId
          : bomId // ignore: cast_nullable_to_non_nullable
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
      unitCost: null == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double,
      totalCost: null == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      sequence: null == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      isOptional: freezed == isOptional
          ? _value.isOptional
          : isOptional // ignore: cast_nullable_to_non_nullable
              as bool?,
      alternativeItemId: freezed == alternativeItemId
          ? _value.alternativeItemId
          : alternativeItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      wastagePercentage: freezed == wastagePercentage
          ? _value.wastagePercentage
          : wastagePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      leadTime: freezed == leadTime
          ? _value.leadTime
          : leadTime // ignore: cast_nullable_to_non_nullable
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
class _$BomComponentImpl implements _BomComponent {
  const _$BomComponentImpl(
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

  factory _$BomComponentImpl.fromJson(Map<String, dynamic> json) =>
      _$$BomComponentImplFromJson(json);

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

  @override
  String toString() {
    return 'BomComponent(id: $id, bomId: $bomId, itemId: $itemId, quantity: $quantity, unit: $unit, unitCost: $unitCost, totalCost: $totalCost, sequence: $sequence, notes: $notes, specification: $specification, isOptional: $isOptional, alternativeItemId: $alternativeItemId, wastagePercentage: $wastagePercentage, leadTime: $leadTime, attributes: $attributes, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BomComponentImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BomComponentImplCopyWith<_$BomComponentImpl> get copyWith =>
      __$$BomComponentImplCopyWithImpl<_$BomComponentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BomComponentImplToJson(
      this,
    );
  }
}

abstract class _BomComponent implements BomComponent {
  const factory _BomComponent(
      {required final String id,
      required final String bomId,
      required final String itemId,
      required final double quantity,
      required final String unit,
      required final double unitCost,
      required final double totalCost,
      required final int sequence,
      final String? notes,
      final String? specification,
      final bool? isOptional,
      final String? alternativeItemId,
      final double? wastagePercentage,
      final double? leadTime,
      final Map<String, dynamic>? attributes,
      final Map<String, dynamic>? metadata}) = _$BomComponentImpl;

  factory _BomComponent.fromJson(Map<String, dynamic> json) =
      _$BomComponentImpl.fromJson;

  @override
  String get id;
  @override
  String get bomId;
  @override
  String get itemId;
  @override
  double get quantity;
  @override
  String get unit;
  @override
  double get unitCost;
  @override
  double get totalCost;
  @override
  int get sequence;
  @override
  String? get notes;
  @override
  String? get specification;
  @override
  bool? get isOptional;
  @override
  String? get alternativeItemId;
  @override
  double? get wastagePercentage;
  @override
  double? get leadTime;
  @override
  Map<String, dynamic>? get attributes;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$BomComponentImplCopyWith<_$BomComponentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateBomComponentRequest _$CreateBomComponentRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateBomComponentRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateBomComponentRequest {
  String get itemId => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  double get unitCost => throw _privateConstructorUsedError;
  int? get sequence => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get specification => throw _privateConstructorUsedError;
  bool? get isOptional => throw _privateConstructorUsedError;
  String? get alternativeItemId => throw _privateConstructorUsedError;
  double? get wastagePercentage => throw _privateConstructorUsedError;
  double? get leadTime => throw _privateConstructorUsedError;
  Map<String, dynamic>? get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateBomComponentRequestCopyWith<CreateBomComponentRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBomComponentRequestCopyWith<$Res> {
  factory $CreateBomComponentRequestCopyWith(CreateBomComponentRequest value,
          $Res Function(CreateBomComponentRequest) then) =
      _$CreateBomComponentRequestCopyWithImpl<$Res, CreateBomComponentRequest>;
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
class _$CreateBomComponentRequestCopyWithImpl<$Res,
        $Val extends CreateBomComponentRequest>
    implements $CreateBomComponentRequestCopyWith<$Res> {
  _$CreateBomComponentRequestCopyWithImpl(this._value, this._then);

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
      unitCost: null == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      isOptional: freezed == isOptional
          ? _value.isOptional
          : isOptional // ignore: cast_nullable_to_non_nullable
              as bool?,
      alternativeItemId: freezed == alternativeItemId
          ? _value.alternativeItemId
          : alternativeItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      wastagePercentage: freezed == wastagePercentage
          ? _value.wastagePercentage
          : wastagePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      leadTime: freezed == leadTime
          ? _value.leadTime
          : leadTime // ignore: cast_nullable_to_non_nullable
              as double?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateBomComponentRequestImplCopyWith<$Res>
    implements $CreateBomComponentRequestCopyWith<$Res> {
  factory _$$CreateBomComponentRequestImplCopyWith(
          _$CreateBomComponentRequestImpl value,
          $Res Function(_$CreateBomComponentRequestImpl) then) =
      __$$CreateBomComponentRequestImplCopyWithImpl<$Res>;
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
class __$$CreateBomComponentRequestImplCopyWithImpl<$Res>
    extends _$CreateBomComponentRequestCopyWithImpl<$Res,
        _$CreateBomComponentRequestImpl>
    implements _$$CreateBomComponentRequestImplCopyWith<$Res> {
  __$$CreateBomComponentRequestImplCopyWithImpl(
      _$CreateBomComponentRequestImpl _value,
      $Res Function(_$CreateBomComponentRequestImpl) _then)
      : super(_value, _then);

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
    return _then(_$CreateBomComponentRequestImpl(
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
      unitCost: null == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      isOptional: freezed == isOptional
          ? _value.isOptional
          : isOptional // ignore: cast_nullable_to_non_nullable
              as bool?,
      alternativeItemId: freezed == alternativeItemId
          ? _value.alternativeItemId
          : alternativeItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      wastagePercentage: freezed == wastagePercentage
          ? _value.wastagePercentage
          : wastagePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      leadTime: freezed == leadTime
          ? _value.leadTime
          : leadTime // ignore: cast_nullable_to_non_nullable
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
class _$CreateBomComponentRequestImpl implements _CreateBomComponentRequest {
  const _$CreateBomComponentRequestImpl(
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

  factory _$CreateBomComponentRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateBomComponentRequestImplFromJson(json);

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

  @override
  String toString() {
    return 'CreateBomComponentRequest(itemId: $itemId, quantity: $quantity, unit: $unit, unitCost: $unitCost, sequence: $sequence, notes: $notes, specification: $specification, isOptional: $isOptional, alternativeItemId: $alternativeItemId, wastagePercentage: $wastagePercentage, leadTime: $leadTime, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBomComponentRequestImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBomComponentRequestImplCopyWith<_$CreateBomComponentRequestImpl>
      get copyWith => __$$CreateBomComponentRequestImplCopyWithImpl<
          _$CreateBomComponentRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateBomComponentRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateBomComponentRequest implements CreateBomComponentRequest {
  const factory _CreateBomComponentRequest(
          {required final String itemId,
          required final double quantity,
          required final String unit,
          required final double unitCost,
          final int? sequence,
          final String? notes,
          final String? specification,
          final bool? isOptional,
          final String? alternativeItemId,
          final double? wastagePercentage,
          final double? leadTime,
          final Map<String, dynamic>? attributes}) =
      _$CreateBomComponentRequestImpl;

  factory _CreateBomComponentRequest.fromJson(Map<String, dynamic> json) =
      _$CreateBomComponentRequestImpl.fromJson;

  @override
  String get itemId;
  @override
  double get quantity;
  @override
  String get unit;
  @override
  double get unitCost;
  @override
  int? get sequence;
  @override
  String? get notes;
  @override
  String? get specification;
  @override
  bool? get isOptional;
  @override
  String? get alternativeItemId;
  @override
  double? get wastagePercentage;
  @override
  double? get leadTime;
  @override
  Map<String, dynamic>? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$CreateBomComponentRequestImplCopyWith<_$CreateBomComponentRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateBomComponentRequest _$UpdateBomComponentRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateBomComponentRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateBomComponentRequest {
  double? get quantity => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;
  double? get unitCost => throw _privateConstructorUsedError;
  int? get sequence => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get specification => throw _privateConstructorUsedError;
  bool? get isOptional => throw _privateConstructorUsedError;
  String? get alternativeItemId => throw _privateConstructorUsedError;
  double? get wastagePercentage => throw _privateConstructorUsedError;
  double? get leadTime => throw _privateConstructorUsedError;
  Map<String, dynamic>? get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateBomComponentRequestCopyWith<UpdateBomComponentRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateBomComponentRequestCopyWith<$Res> {
  factory $UpdateBomComponentRequestCopyWith(UpdateBomComponentRequest value,
          $Res Function(UpdateBomComponentRequest) then) =
      _$UpdateBomComponentRequestCopyWithImpl<$Res, UpdateBomComponentRequest>;
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
class _$UpdateBomComponentRequestCopyWithImpl<$Res,
        $Val extends UpdateBomComponentRequest>
    implements $UpdateBomComponentRequestCopyWith<$Res> {
  _$UpdateBomComponentRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      isOptional: freezed == isOptional
          ? _value.isOptional
          : isOptional // ignore: cast_nullable_to_non_nullable
              as bool?,
      alternativeItemId: freezed == alternativeItemId
          ? _value.alternativeItemId
          : alternativeItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      wastagePercentage: freezed == wastagePercentage
          ? _value.wastagePercentage
          : wastagePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      leadTime: freezed == leadTime
          ? _value.leadTime
          : leadTime // ignore: cast_nullable_to_non_nullable
              as double?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateBomComponentRequestImplCopyWith<$Res>
    implements $UpdateBomComponentRequestCopyWith<$Res> {
  factory _$$UpdateBomComponentRequestImplCopyWith(
          _$UpdateBomComponentRequestImpl value,
          $Res Function(_$UpdateBomComponentRequestImpl) then) =
      __$$UpdateBomComponentRequestImplCopyWithImpl<$Res>;
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
class __$$UpdateBomComponentRequestImplCopyWithImpl<$Res>
    extends _$UpdateBomComponentRequestCopyWithImpl<$Res,
        _$UpdateBomComponentRequestImpl>
    implements _$$UpdateBomComponentRequestImplCopyWith<$Res> {
  __$$UpdateBomComponentRequestImplCopyWithImpl(
      _$UpdateBomComponentRequestImpl _value,
      $Res Function(_$UpdateBomComponentRequestImpl) _then)
      : super(_value, _then);

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
    return _then(_$UpdateBomComponentRequestImpl(
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      isOptional: freezed == isOptional
          ? _value.isOptional
          : isOptional // ignore: cast_nullable_to_non_nullable
              as bool?,
      alternativeItemId: freezed == alternativeItemId
          ? _value.alternativeItemId
          : alternativeItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      wastagePercentage: freezed == wastagePercentage
          ? _value.wastagePercentage
          : wastagePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      leadTime: freezed == leadTime
          ? _value.leadTime
          : leadTime // ignore: cast_nullable_to_non_nullable
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
class _$UpdateBomComponentRequestImpl implements _UpdateBomComponentRequest {
  const _$UpdateBomComponentRequestImpl(
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

  factory _$UpdateBomComponentRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateBomComponentRequestImplFromJson(json);

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

  @override
  String toString() {
    return 'UpdateBomComponentRequest(quantity: $quantity, unit: $unit, unitCost: $unitCost, sequence: $sequence, notes: $notes, specification: $specification, isOptional: $isOptional, alternativeItemId: $alternativeItemId, wastagePercentage: $wastagePercentage, leadTime: $leadTime, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateBomComponentRequestImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateBomComponentRequestImplCopyWith<_$UpdateBomComponentRequestImpl>
      get copyWith => __$$UpdateBomComponentRequestImplCopyWithImpl<
          _$UpdateBomComponentRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateBomComponentRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateBomComponentRequest implements UpdateBomComponentRequest {
  const factory _UpdateBomComponentRequest(
          {final double? quantity,
          final String? unit,
          final double? unitCost,
          final int? sequence,
          final String? notes,
          final String? specification,
          final bool? isOptional,
          final String? alternativeItemId,
          final double? wastagePercentage,
          final double? leadTime,
          final Map<String, dynamic>? attributes}) =
      _$UpdateBomComponentRequestImpl;

  factory _UpdateBomComponentRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateBomComponentRequestImpl.fromJson;

  @override
  double? get quantity;
  @override
  String? get unit;
  @override
  double? get unitCost;
  @override
  int? get sequence;
  @override
  String? get notes;
  @override
  String? get specification;
  @override
  bool? get isOptional;
  @override
  String? get alternativeItemId;
  @override
  double? get wastagePercentage;
  @override
  double? get leadTime;
  @override
  Map<String, dynamic>? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$UpdateBomComponentRequestImplCopyWith<_$UpdateBomComponentRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BomExplosionItem _$BomExplosionItemFromJson(Map<String, dynamic> json) {
  return _BomExplosionItem.fromJson(json);
}

/// @nodoc
mixin _$BomExplosionItem {
  String get itemId => throw _privateConstructorUsedError;
  String get itemName => throw _privateConstructorUsedError;
  String get itemCode => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  double get unitCost => throw _privateConstructorUsedError;
  double get totalCost => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  String? get parentItemId => throw _privateConstructorUsedError;
  String? get bomId => throw _privateConstructorUsedError;
  String? get componentId => throw _privateConstructorUsedError;
  bool? get isOptional => throw _privateConstructorUsedError;
  double? get wastagePercentage => throw _privateConstructorUsedError;
  double? get leadTime => throw _privateConstructorUsedError;
  List<BomExplosionItem>? get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BomExplosionItemCopyWith<BomExplosionItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BomExplosionItemCopyWith<$Res> {
  factory $BomExplosionItemCopyWith(
          BomExplosionItem value, $Res Function(BomExplosionItem) then) =
      _$BomExplosionItemCopyWithImpl<$Res, BomExplosionItem>;
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
class _$BomExplosionItemCopyWithImpl<$Res, $Val extends BomExplosionItem>
    implements $BomExplosionItemCopyWith<$Res> {
  _$BomExplosionItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      itemCode: null == itemCode
          ? _value.itemCode
          : itemCode // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      unitCost: null == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double,
      totalCost: null == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      parentItemId: freezed == parentItemId
          ? _value.parentItemId
          : parentItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      bomId: freezed == bomId
          ? _value.bomId
          : bomId // ignore: cast_nullable_to_non_nullable
              as String?,
      componentId: freezed == componentId
          ? _value.componentId
          : componentId // ignore: cast_nullable_to_non_nullable
              as String?,
      isOptional: freezed == isOptional
          ? _value.isOptional
          : isOptional // ignore: cast_nullable_to_non_nullable
              as bool?,
      wastagePercentage: freezed == wastagePercentage
          ? _value.wastagePercentage
          : wastagePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      leadTime: freezed == leadTime
          ? _value.leadTime
          : leadTime // ignore: cast_nullable_to_non_nullable
              as double?,
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<BomExplosionItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BomExplosionItemImplCopyWith<$Res>
    implements $BomExplosionItemCopyWith<$Res> {
  factory _$$BomExplosionItemImplCopyWith(_$BomExplosionItemImpl value,
          $Res Function(_$BomExplosionItemImpl) then) =
      __$$BomExplosionItemImplCopyWithImpl<$Res>;
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
class __$$BomExplosionItemImplCopyWithImpl<$Res>
    extends _$BomExplosionItemCopyWithImpl<$Res, _$BomExplosionItemImpl>
    implements _$$BomExplosionItemImplCopyWith<$Res> {
  __$$BomExplosionItemImplCopyWithImpl(_$BomExplosionItemImpl _value,
      $Res Function(_$BomExplosionItemImpl) _then)
      : super(_value, _then);

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
    return _then(_$BomExplosionItemImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      itemCode: null == itemCode
          ? _value.itemCode
          : itemCode // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      unitCost: null == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double,
      totalCost: null == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      parentItemId: freezed == parentItemId
          ? _value.parentItemId
          : parentItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      bomId: freezed == bomId
          ? _value.bomId
          : bomId // ignore: cast_nullable_to_non_nullable
              as String?,
      componentId: freezed == componentId
          ? _value.componentId
          : componentId // ignore: cast_nullable_to_non_nullable
              as String?,
      isOptional: freezed == isOptional
          ? _value.isOptional
          : isOptional // ignore: cast_nullable_to_non_nullable
              as bool?,
      wastagePercentage: freezed == wastagePercentage
          ? _value.wastagePercentage
          : wastagePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      leadTime: freezed == leadTime
          ? _value.leadTime
          : leadTime // ignore: cast_nullable_to_non_nullable
              as double?,
      children: freezed == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<BomExplosionItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BomExplosionItemImpl implements _BomExplosionItem {
  const _$BomExplosionItemImpl(
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

  factory _$BomExplosionItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$BomExplosionItemImplFromJson(json);

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

  @override
  String toString() {
    return 'BomExplosionItem(itemId: $itemId, itemName: $itemName, itemCode: $itemCode, quantity: $quantity, unit: $unit, unitCost: $unitCost, totalCost: $totalCost, level: $level, parentItemId: $parentItemId, bomId: $bomId, componentId: $componentId, isOptional: $isOptional, wastagePercentage: $wastagePercentage, leadTime: $leadTime, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BomExplosionItemImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BomExplosionItemImplCopyWith<_$BomExplosionItemImpl> get copyWith =>
      __$$BomExplosionItemImplCopyWithImpl<_$BomExplosionItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BomExplosionItemImplToJson(
      this,
    );
  }
}

abstract class _BomExplosionItem implements BomExplosionItem {
  const factory _BomExplosionItem(
      {required final String itemId,
      required final String itemName,
      required final String itemCode,
      required final double quantity,
      required final String unit,
      required final double unitCost,
      required final double totalCost,
      required final int level,
      final String? parentItemId,
      final String? bomId,
      final String? componentId,
      final bool? isOptional,
      final double? wastagePercentage,
      final double? leadTime,
      final List<BomExplosionItem>? children}) = _$BomExplosionItemImpl;

  factory _BomExplosionItem.fromJson(Map<String, dynamic> json) =
      _$BomExplosionItemImpl.fromJson;

  @override
  String get itemId;
  @override
  String get itemName;
  @override
  String get itemCode;
  @override
  double get quantity;
  @override
  String get unit;
  @override
  double get unitCost;
  @override
  double get totalCost;
  @override
  int get level;
  @override
  String? get parentItemId;
  @override
  String? get bomId;
  @override
  String? get componentId;
  @override
  bool? get isOptional;
  @override
  double? get wastagePercentage;
  @override
  double? get leadTime;
  @override
  List<BomExplosionItem>? get children;
  @override
  @JsonKey(ignore: true)
  _$$BomExplosionItemImplCopyWith<_$BomExplosionItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BomStats _$BomStatsFromJson(Map<String, dynamic> json) {
  return _BomStats.fromJson(json);
}

/// @nodoc
mixin _$BomStats {
  String get bomId => throw _privateConstructorUsedError;
  int get totalComponents => throw _privateConstructorUsedError;
  double get totalCost => throw _privateConstructorUsedError;
  double get totalLeadTime => throw _privateConstructorUsedError;
  int get maxLevels => throw _privateConstructorUsedError;
  Map<String, int>? get componentsByCategory =>
      throw _privateConstructorUsedError;
  Map<String, double>? get costByCategory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BomStatsCopyWith<BomStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BomStatsCopyWith<$Res> {
  factory $BomStatsCopyWith(BomStats value, $Res Function(BomStats) then) =
      _$BomStatsCopyWithImpl<$Res, BomStats>;
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
class _$BomStatsCopyWithImpl<$Res, $Val extends BomStats>
    implements $BomStatsCopyWith<$Res> {
  _$BomStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      bomId: null == bomId
          ? _value.bomId
          : bomId // ignore: cast_nullable_to_non_nullable
              as String,
      totalComponents: null == totalComponents
          ? _value.totalComponents
          : totalComponents // ignore: cast_nullable_to_non_nullable
              as int,
      totalCost: null == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      totalLeadTime: null == totalLeadTime
          ? _value.totalLeadTime
          : totalLeadTime // ignore: cast_nullable_to_non_nullable
              as double,
      maxLevels: null == maxLevels
          ? _value.maxLevels
          : maxLevels // ignore: cast_nullable_to_non_nullable
              as int,
      componentsByCategory: freezed == componentsByCategory
          ? _value.componentsByCategory
          : componentsByCategory // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      costByCategory: freezed == costByCategory
          ? _value.costByCategory
          : costByCategory // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BomStatsImplCopyWith<$Res>
    implements $BomStatsCopyWith<$Res> {
  factory _$$BomStatsImplCopyWith(
          _$BomStatsImpl value, $Res Function(_$BomStatsImpl) then) =
      __$$BomStatsImplCopyWithImpl<$Res>;
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
class __$$BomStatsImplCopyWithImpl<$Res>
    extends _$BomStatsCopyWithImpl<$Res, _$BomStatsImpl>
    implements _$$BomStatsImplCopyWith<$Res> {
  __$$BomStatsImplCopyWithImpl(
      _$BomStatsImpl _value, $Res Function(_$BomStatsImpl) _then)
      : super(_value, _then);

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
    return _then(_$BomStatsImpl(
      bomId: null == bomId
          ? _value.bomId
          : bomId // ignore: cast_nullable_to_non_nullable
              as String,
      totalComponents: null == totalComponents
          ? _value.totalComponents
          : totalComponents // ignore: cast_nullable_to_non_nullable
              as int,
      totalCost: null == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      totalLeadTime: null == totalLeadTime
          ? _value.totalLeadTime
          : totalLeadTime // ignore: cast_nullable_to_non_nullable
              as double,
      maxLevels: null == maxLevels
          ? _value.maxLevels
          : maxLevels // ignore: cast_nullable_to_non_nullable
              as int,
      componentsByCategory: freezed == componentsByCategory
          ? _value._componentsByCategory
          : componentsByCategory // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      costByCategory: freezed == costByCategory
          ? _value._costByCategory
          : costByCategory // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BomStatsImpl implements _BomStats {
  const _$BomStatsImpl(
      {required this.bomId,
      required this.totalComponents,
      required this.totalCost,
      required this.totalLeadTime,
      required this.maxLevels,
      final Map<String, int>? componentsByCategory,
      final Map<String, double>? costByCategory})
      : _componentsByCategory = componentsByCategory,
        _costByCategory = costByCategory;

  factory _$BomStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BomStatsImplFromJson(json);

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

  @override
  String toString() {
    return 'BomStats(bomId: $bomId, totalComponents: $totalComponents, totalCost: $totalCost, totalLeadTime: $totalLeadTime, maxLevels: $maxLevels, componentsByCategory: $componentsByCategory, costByCategory: $costByCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BomStatsImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BomStatsImplCopyWith<_$BomStatsImpl> get copyWith =>
      __$$BomStatsImplCopyWithImpl<_$BomStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BomStatsImplToJson(
      this,
    );
  }
}

abstract class _BomStats implements BomStats {
  const factory _BomStats(
      {required final String bomId,
      required final int totalComponents,
      required final double totalCost,
      required final double totalLeadTime,
      required final int maxLevels,
      final Map<String, int>? componentsByCategory,
      final Map<String, double>? costByCategory}) = _$BomStatsImpl;

  factory _BomStats.fromJson(Map<String, dynamic> json) =
      _$BomStatsImpl.fromJson;

  @override
  String get bomId;
  @override
  int get totalComponents;
  @override
  double get totalCost;
  @override
  double get totalLeadTime;
  @override
  int get maxLevels;
  @override
  Map<String, int>? get componentsByCategory;
  @override
  Map<String, double>? get costByCategory;
  @override
  @JsonKey(ignore: true)
  _$$BomStatsImplCopyWith<_$BomStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BomLeadTimeAnalysis _$BomLeadTimeAnalysisFromJson(Map<String, dynamic> json) {
  return _BomLeadTimeAnalysis.fromJson(json);
}

/// @nodoc
mixin _$BomLeadTimeAnalysis {
  String get bomId => throw _privateConstructorUsedError;
  double get totalLeadTime => throw _privateConstructorUsedError;
  double get criticalPath => throw _privateConstructorUsedError;
  List<BomLeadTimeItem> get items => throw _privateConstructorUsedError;
  List<String>? get criticalPathItems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BomLeadTimeAnalysisCopyWith<BomLeadTimeAnalysis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BomLeadTimeAnalysisCopyWith<$Res> {
  factory $BomLeadTimeAnalysisCopyWith(
          BomLeadTimeAnalysis value, $Res Function(BomLeadTimeAnalysis) then) =
      _$BomLeadTimeAnalysisCopyWithImpl<$Res, BomLeadTimeAnalysis>;
  @useResult
  $Res call(
      {String bomId,
      double totalLeadTime,
      double criticalPath,
      List<BomLeadTimeItem> items,
      List<String>? criticalPathItems});
}

/// @nodoc
class _$BomLeadTimeAnalysisCopyWithImpl<$Res, $Val extends BomLeadTimeAnalysis>
    implements $BomLeadTimeAnalysisCopyWith<$Res> {
  _$BomLeadTimeAnalysisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bomId = null,
    Object? totalLeadTime = null,
    Object? criticalPath = null,
    Object? items = null,
    Object? criticalPathItems = freezed,
  }) {
    return _then(_value.copyWith(
      bomId: null == bomId
          ? _value.bomId
          : bomId // ignore: cast_nullable_to_non_nullable
              as String,
      totalLeadTime: null == totalLeadTime
          ? _value.totalLeadTime
          : totalLeadTime // ignore: cast_nullable_to_non_nullable
              as double,
      criticalPath: null == criticalPath
          ? _value.criticalPath
          : criticalPath // ignore: cast_nullable_to_non_nullable
              as double,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<BomLeadTimeItem>,
      criticalPathItems: freezed == criticalPathItems
          ? _value.criticalPathItems
          : criticalPathItems // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BomLeadTimeAnalysisImplCopyWith<$Res>
    implements $BomLeadTimeAnalysisCopyWith<$Res> {
  factory _$$BomLeadTimeAnalysisImplCopyWith(_$BomLeadTimeAnalysisImpl value,
          $Res Function(_$BomLeadTimeAnalysisImpl) then) =
      __$$BomLeadTimeAnalysisImplCopyWithImpl<$Res>;
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
class __$$BomLeadTimeAnalysisImplCopyWithImpl<$Res>
    extends _$BomLeadTimeAnalysisCopyWithImpl<$Res, _$BomLeadTimeAnalysisImpl>
    implements _$$BomLeadTimeAnalysisImplCopyWith<$Res> {
  __$$BomLeadTimeAnalysisImplCopyWithImpl(_$BomLeadTimeAnalysisImpl _value,
      $Res Function(_$BomLeadTimeAnalysisImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bomId = null,
    Object? totalLeadTime = null,
    Object? criticalPath = null,
    Object? items = null,
    Object? criticalPathItems = freezed,
  }) {
    return _then(_$BomLeadTimeAnalysisImpl(
      bomId: null == bomId
          ? _value.bomId
          : bomId // ignore: cast_nullable_to_non_nullable
              as String,
      totalLeadTime: null == totalLeadTime
          ? _value.totalLeadTime
          : totalLeadTime // ignore: cast_nullable_to_non_nullable
              as double,
      criticalPath: null == criticalPath
          ? _value.criticalPath
          : criticalPath // ignore: cast_nullable_to_non_nullable
              as double,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<BomLeadTimeItem>,
      criticalPathItems: freezed == criticalPathItems
          ? _value._criticalPathItems
          : criticalPathItems // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BomLeadTimeAnalysisImpl implements _BomLeadTimeAnalysis {
  const _$BomLeadTimeAnalysisImpl(
      {required this.bomId,
      required this.totalLeadTime,
      required this.criticalPath,
      required final List<BomLeadTimeItem> items,
      final List<String>? criticalPathItems})
      : _items = items,
        _criticalPathItems = criticalPathItems;

  factory _$BomLeadTimeAnalysisImpl.fromJson(Map<String, dynamic> json) =>
      _$$BomLeadTimeAnalysisImplFromJson(json);

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

  @override
  String toString() {
    return 'BomLeadTimeAnalysis(bomId: $bomId, totalLeadTime: $totalLeadTime, criticalPath: $criticalPath, items: $items, criticalPathItems: $criticalPathItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BomLeadTimeAnalysisImpl &&
            (identical(other.bomId, bomId) || other.bomId == bomId) &&
            (identical(other.totalLeadTime, totalLeadTime) ||
                other.totalLeadTime == totalLeadTime) &&
            (identical(other.criticalPath, criticalPath) ||
                other.criticalPath == criticalPath) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other._criticalPathItems, _criticalPathItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bomId,
      totalLeadTime,
      criticalPath,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_criticalPathItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BomLeadTimeAnalysisImplCopyWith<_$BomLeadTimeAnalysisImpl> get copyWith =>
      __$$BomLeadTimeAnalysisImplCopyWithImpl<_$BomLeadTimeAnalysisImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BomLeadTimeAnalysisImplToJson(
      this,
    );
  }
}

abstract class _BomLeadTimeAnalysis implements BomLeadTimeAnalysis {
  const factory _BomLeadTimeAnalysis(
      {required final String bomId,
      required final double totalLeadTime,
      required final double criticalPath,
      required final List<BomLeadTimeItem> items,
      final List<String>? criticalPathItems}) = _$BomLeadTimeAnalysisImpl;

  factory _BomLeadTimeAnalysis.fromJson(Map<String, dynamic> json) =
      _$BomLeadTimeAnalysisImpl.fromJson;

  @override
  String get bomId;
  @override
  double get totalLeadTime;
  @override
  double get criticalPath;
  @override
  List<BomLeadTimeItem> get items;
  @override
  List<String>? get criticalPathItems;
  @override
  @JsonKey(ignore: true)
  _$$BomLeadTimeAnalysisImplCopyWith<_$BomLeadTimeAnalysisImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BomLeadTimeItem _$BomLeadTimeItemFromJson(Map<String, dynamic> json) {
  return _BomLeadTimeItem.fromJson(json);
}

/// @nodoc
mixin _$BomLeadTimeItem {
  String get itemId => throw _privateConstructorUsedError;
  String get itemName => throw _privateConstructorUsedError;
  double get leadTime => throw _privateConstructorUsedError;
  bool get isCritical => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BomLeadTimeItemCopyWith<BomLeadTimeItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BomLeadTimeItemCopyWith<$Res> {
  factory $BomLeadTimeItemCopyWith(
          BomLeadTimeItem value, $Res Function(BomLeadTimeItem) then) =
      _$BomLeadTimeItemCopyWithImpl<$Res, BomLeadTimeItem>;
  @useResult
  $Res call(
      {String itemId,
      String itemName,
      double leadTime,
      bool isCritical,
      int level});
}

/// @nodoc
class _$BomLeadTimeItemCopyWithImpl<$Res, $Val extends BomLeadTimeItem>
    implements $BomLeadTimeItemCopyWith<$Res> {
  _$BomLeadTimeItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? itemName = null,
    Object? leadTime = null,
    Object? isCritical = null,
    Object? level = null,
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
      leadTime: null == leadTime
          ? _value.leadTime
          : leadTime // ignore: cast_nullable_to_non_nullable
              as double,
      isCritical: null == isCritical
          ? _value.isCritical
          : isCritical // ignore: cast_nullable_to_non_nullable
              as bool,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BomLeadTimeItemImplCopyWith<$Res>
    implements $BomLeadTimeItemCopyWith<$Res> {
  factory _$$BomLeadTimeItemImplCopyWith(_$BomLeadTimeItemImpl value,
          $Res Function(_$BomLeadTimeItemImpl) then) =
      __$$BomLeadTimeItemImplCopyWithImpl<$Res>;
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
class __$$BomLeadTimeItemImplCopyWithImpl<$Res>
    extends _$BomLeadTimeItemCopyWithImpl<$Res, _$BomLeadTimeItemImpl>
    implements _$$BomLeadTimeItemImplCopyWith<$Res> {
  __$$BomLeadTimeItemImplCopyWithImpl(
      _$BomLeadTimeItemImpl _value, $Res Function(_$BomLeadTimeItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? itemName = null,
    Object? leadTime = null,
    Object? isCritical = null,
    Object? level = null,
  }) {
    return _then(_$BomLeadTimeItemImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      leadTime: null == leadTime
          ? _value.leadTime
          : leadTime // ignore: cast_nullable_to_non_nullable
              as double,
      isCritical: null == isCritical
          ? _value.isCritical
          : isCritical // ignore: cast_nullable_to_non_nullable
              as bool,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BomLeadTimeItemImpl implements _BomLeadTimeItem {
  const _$BomLeadTimeItemImpl(
      {required this.itemId,
      required this.itemName,
      required this.leadTime,
      required this.isCritical,
      required this.level});

  factory _$BomLeadTimeItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$BomLeadTimeItemImplFromJson(json);

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

  @override
  String toString() {
    return 'BomLeadTimeItem(itemId: $itemId, itemName: $itemName, leadTime: $leadTime, isCritical: $isCritical, level: $level)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BomLeadTimeItemImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.leadTime, leadTime) ||
                other.leadTime == leadTime) &&
            (identical(other.isCritical, isCritical) ||
                other.isCritical == isCritical) &&
            (identical(other.level, level) || other.level == level));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, itemId, itemName, leadTime, isCritical, level);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BomLeadTimeItemImplCopyWith<_$BomLeadTimeItemImpl> get copyWith =>
      __$$BomLeadTimeItemImplCopyWithImpl<_$BomLeadTimeItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BomLeadTimeItemImplToJson(
      this,
    );
  }
}

abstract class _BomLeadTimeItem implements BomLeadTimeItem {
  const factory _BomLeadTimeItem(
      {required final String itemId,
      required final String itemName,
      required final double leadTime,
      required final bool isCritical,
      required final int level}) = _$BomLeadTimeItemImpl;

  factory _BomLeadTimeItem.fromJson(Map<String, dynamic> json) =
      _$BomLeadTimeItemImpl.fromJson;

  @override
  String get itemId;
  @override
  String get itemName;
  @override
  double get leadTime;
  @override
  bool get isCritical;
  @override
  int get level;
  @override
  @JsonKey(ignore: true)
  _$$BomLeadTimeItemImplCopyWith<_$BomLeadTimeItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CloneBomRequest _$CloneBomRequestFromJson(Map<String, dynamic> json) {
  return _CloneBomRequest.fromJson(json);
}

/// @nodoc
mixin _$CloneBomRequest {
  String get name => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get includeComponents => throw _privateConstructorUsedError;
  bool? get updateReferences => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CloneBomRequestCopyWith<CloneBomRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CloneBomRequestCopyWith<$Res> {
  factory $CloneBomRequestCopyWith(
          CloneBomRequest value, $Res Function(CloneBomRequest) then) =
      _$CloneBomRequestCopyWithImpl<$Res, CloneBomRequest>;
  @useResult
  $Res call(
      {String name,
      String version,
      String? description,
      bool? includeComponents,
      bool? updateReferences});
}

/// @nodoc
class _$CloneBomRequestCopyWithImpl<$Res, $Val extends CloneBomRequest>
    implements $CloneBomRequestCopyWith<$Res> {
  _$CloneBomRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? version = null,
    Object? description = freezed,
    Object? includeComponents = freezed,
    Object? updateReferences = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      includeComponents: freezed == includeComponents
          ? _value.includeComponents
          : includeComponents // ignore: cast_nullable_to_non_nullable
              as bool?,
      updateReferences: freezed == updateReferences
          ? _value.updateReferences
          : updateReferences // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CloneBomRequestImplCopyWith<$Res>
    implements $CloneBomRequestCopyWith<$Res> {
  factory _$$CloneBomRequestImplCopyWith(_$CloneBomRequestImpl value,
          $Res Function(_$CloneBomRequestImpl) then) =
      __$$CloneBomRequestImplCopyWithImpl<$Res>;
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
class __$$CloneBomRequestImplCopyWithImpl<$Res>
    extends _$CloneBomRequestCopyWithImpl<$Res, _$CloneBomRequestImpl>
    implements _$$CloneBomRequestImplCopyWith<$Res> {
  __$$CloneBomRequestImplCopyWithImpl(
      _$CloneBomRequestImpl _value, $Res Function(_$CloneBomRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? version = null,
    Object? description = freezed,
    Object? includeComponents = freezed,
    Object? updateReferences = freezed,
  }) {
    return _then(_$CloneBomRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      includeComponents: freezed == includeComponents
          ? _value.includeComponents
          : includeComponents // ignore: cast_nullable_to_non_nullable
              as bool?,
      updateReferences: freezed == updateReferences
          ? _value.updateReferences
          : updateReferences // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CloneBomRequestImpl implements _CloneBomRequest {
  const _$CloneBomRequestImpl(
      {required this.name,
      required this.version,
      this.description,
      this.includeComponents,
      this.updateReferences});

  factory _$CloneBomRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CloneBomRequestImplFromJson(json);

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

  @override
  String toString() {
    return 'CloneBomRequest(name: $name, version: $version, description: $description, includeComponents: $includeComponents, updateReferences: $updateReferences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CloneBomRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.includeComponents, includeComponents) ||
                other.includeComponents == includeComponents) &&
            (identical(other.updateReferences, updateReferences) ||
                other.updateReferences == updateReferences));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, version, description,
      includeComponents, updateReferences);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CloneBomRequestImplCopyWith<_$CloneBomRequestImpl> get copyWith =>
      __$$CloneBomRequestImplCopyWithImpl<_$CloneBomRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CloneBomRequestImplToJson(
      this,
    );
  }
}

abstract class _CloneBomRequest implements CloneBomRequest {
  const factory _CloneBomRequest(
      {required final String name,
      required final String version,
      final String? description,
      final bool? includeComponents,
      final bool? updateReferences}) = _$CloneBomRequestImpl;

  factory _CloneBomRequest.fromJson(Map<String, dynamic> json) =
      _$CloneBomRequestImpl.fromJson;

  @override
  String get name;
  @override
  String get version;
  @override
  String? get description;
  @override
  bool? get includeComponents;
  @override
  bool? get updateReferences;
  @override
  @JsonKey(ignore: true)
  _$$CloneBomRequestImplCopyWith<_$CloneBomRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateBomQuickRequest _$CreateBomQuickRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateBomQuickRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateBomQuickRequest {
  String get itemId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  List<BomQuickComponent> get components => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateBomQuickRequestCopyWith<CreateBomQuickRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBomQuickRequestCopyWith<$Res> {
  factory $CreateBomQuickRequestCopyWith(CreateBomQuickRequest value,
          $Res Function(CreateBomQuickRequest) then) =
      _$CreateBomQuickRequestCopyWithImpl<$Res, CreateBomQuickRequest>;
  @useResult
  $Res call(
      {String itemId,
      String name,
      String version,
      List<BomQuickComponent> components,
      String? description});
}

/// @nodoc
class _$CreateBomQuickRequestCopyWithImpl<$Res,
        $Val extends CreateBomQuickRequest>
    implements $CreateBomQuickRequestCopyWith<$Res> {
  _$CreateBomQuickRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? name = null,
    Object? version = null,
    Object? components = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      components: null == components
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as List<BomQuickComponent>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateBomQuickRequestImplCopyWith<$Res>
    implements $CreateBomQuickRequestCopyWith<$Res> {
  factory _$$CreateBomQuickRequestImplCopyWith(
          _$CreateBomQuickRequestImpl value,
          $Res Function(_$CreateBomQuickRequestImpl) then) =
      __$$CreateBomQuickRequestImplCopyWithImpl<$Res>;
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
class __$$CreateBomQuickRequestImplCopyWithImpl<$Res>
    extends _$CreateBomQuickRequestCopyWithImpl<$Res,
        _$CreateBomQuickRequestImpl>
    implements _$$CreateBomQuickRequestImplCopyWith<$Res> {
  __$$CreateBomQuickRequestImplCopyWithImpl(_$CreateBomQuickRequestImpl _value,
      $Res Function(_$CreateBomQuickRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? name = null,
    Object? version = null,
    Object? components = null,
    Object? description = freezed,
  }) {
    return _then(_$CreateBomQuickRequestImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      components: null == components
          ? _value._components
          : components // ignore: cast_nullable_to_non_nullable
              as List<BomQuickComponent>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateBomQuickRequestImpl implements _CreateBomQuickRequest {
  const _$CreateBomQuickRequestImpl(
      {required this.itemId,
      required this.name,
      required this.version,
      required final List<BomQuickComponent> components,
      this.description})
      : _components = components;

  factory _$CreateBomQuickRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateBomQuickRequestImplFromJson(json);

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

  @override
  String toString() {
    return 'CreateBomQuickRequest(itemId: $itemId, name: $name, version: $version, components: $components, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBomQuickRequestImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality()
                .equals(other._components, _components) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, itemId, name, version,
      const DeepCollectionEquality().hash(_components), description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBomQuickRequestImplCopyWith<_$CreateBomQuickRequestImpl>
      get copyWith => __$$CreateBomQuickRequestImplCopyWithImpl<
          _$CreateBomQuickRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateBomQuickRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateBomQuickRequest implements CreateBomQuickRequest {
  const factory _CreateBomQuickRequest(
      {required final String itemId,
      required final String name,
      required final String version,
      required final List<BomQuickComponent> components,
      final String? description}) = _$CreateBomQuickRequestImpl;

  factory _CreateBomQuickRequest.fromJson(Map<String, dynamic> json) =
      _$CreateBomQuickRequestImpl.fromJson;

  @override
  String get itemId;
  @override
  String get name;
  @override
  String get version;
  @override
  List<BomQuickComponent> get components;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$CreateBomQuickRequestImplCopyWith<_$CreateBomQuickRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BomQuickComponent _$BomQuickComponentFromJson(Map<String, dynamic> json) {
  return _BomQuickComponent.fromJson(json);
}

/// @nodoc
mixin _$BomQuickComponent {
  String get itemId => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  double? get unitCost => throw _privateConstructorUsedError;
  int? get sequence => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BomQuickComponentCopyWith<BomQuickComponent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BomQuickComponentCopyWith<$Res> {
  factory $BomQuickComponentCopyWith(
          BomQuickComponent value, $Res Function(BomQuickComponent) then) =
      _$BomQuickComponentCopyWithImpl<$Res, BomQuickComponent>;
  @useResult
  $Res call(
      {String itemId,
      double quantity,
      String unit,
      double? unitCost,
      int? sequence});
}

/// @nodoc
class _$BomQuickComponentCopyWithImpl<$Res, $Val extends BomQuickComponent>
    implements $BomQuickComponentCopyWith<$Res> {
  _$BomQuickComponentCopyWithImpl(this._value, this._then);

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
    Object? unitCost = freezed,
    Object? sequence = freezed,
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
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BomQuickComponentImplCopyWith<$Res>
    implements $BomQuickComponentCopyWith<$Res> {
  factory _$$BomQuickComponentImplCopyWith(_$BomQuickComponentImpl value,
          $Res Function(_$BomQuickComponentImpl) then) =
      __$$BomQuickComponentImplCopyWithImpl<$Res>;
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
class __$$BomQuickComponentImplCopyWithImpl<$Res>
    extends _$BomQuickComponentCopyWithImpl<$Res, _$BomQuickComponentImpl>
    implements _$$BomQuickComponentImplCopyWith<$Res> {
  __$$BomQuickComponentImplCopyWithImpl(_$BomQuickComponentImpl _value,
      $Res Function(_$BomQuickComponentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? quantity = null,
    Object? unit = null,
    Object? unitCost = freezed,
    Object? sequence = freezed,
  }) {
    return _then(_$BomQuickComponentImpl(
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
      unitCost: freezed == unitCost
          ? _value.unitCost
          : unitCost // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BomQuickComponentImpl implements _BomQuickComponent {
  const _$BomQuickComponentImpl(
      {required this.itemId,
      required this.quantity,
      required this.unit,
      this.unitCost,
      this.sequence});

  factory _$BomQuickComponentImpl.fromJson(Map<String, dynamic> json) =>
      _$$BomQuickComponentImplFromJson(json);

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

  @override
  String toString() {
    return 'BomQuickComponent(itemId: $itemId, quantity: $quantity, unit: $unit, unitCost: $unitCost, sequence: $sequence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BomQuickComponentImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitCost, unitCost) ||
                other.unitCost == unitCost) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, itemId, quantity, unit, unitCost, sequence);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BomQuickComponentImplCopyWith<_$BomQuickComponentImpl> get copyWith =>
      __$$BomQuickComponentImplCopyWithImpl<_$BomQuickComponentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BomQuickComponentImplToJson(
      this,
    );
  }
}

abstract class _BomQuickComponent implements BomQuickComponent {
  const factory _BomQuickComponent(
      {required final String itemId,
      required final double quantity,
      required final String unit,
      final double? unitCost,
      final int? sequence}) = _$BomQuickComponentImpl;

  factory _BomQuickComponent.fromJson(Map<String, dynamic> json) =
      _$BomQuickComponentImpl.fromJson;

  @override
  String get itemId;
  @override
  double get quantity;
  @override
  String get unit;
  @override
  double? get unitCost;
  @override
  int? get sequence;
  @override
  @JsonKey(ignore: true)
  _$$BomQuickComponentImplCopyWith<_$BomQuickComponentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
