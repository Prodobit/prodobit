// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'physical_inventory_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PhysicalInventory _$PhysicalInventoryFromJson(Map<String, dynamic> json) {
  return _PhysicalInventory.fromJson(json);
}

/// @nodoc
mixin _$PhysicalInventory {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get locationId => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // 'draft', 'in_progress', 'completed', 'cancelled'
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime? get startedAt => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;
  DateTime? get cancelledAt => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  String? get startedBy => throw _privateConstructorUsedError;
  String? get completedBy => throw _privateConstructorUsedError;
  String? get cancelledBy => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhysicalInventoryCopyWith<PhysicalInventory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhysicalInventoryCopyWith<$Res> {
  factory $PhysicalInventoryCopyWith(
          PhysicalInventory value, $Res Function(PhysicalInventory) then) =
      _$PhysicalInventoryCopyWithImpl<$Res, PhysicalInventory>;
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
class _$PhysicalInventoryCopyWithImpl<$Res, $Val extends PhysicalInventory>
    implements $PhysicalInventoryCopyWith<$Res> {
  _$PhysicalInventoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledAt: freezed == cancelledAt
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      startedBy: freezed == startedBy
          ? _value.startedBy
          : startedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      completedBy: freezed == completedBy
          ? _value.completedBy
          : completedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelledBy: freezed == cancelledBy
          ? _value.cancelledBy
          : cancelledBy // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhysicalInventoryImplCopyWith<$Res>
    implements $PhysicalInventoryCopyWith<$Res> {
  factory _$$PhysicalInventoryImplCopyWith(_$PhysicalInventoryImpl value,
          $Res Function(_$PhysicalInventoryImpl) then) =
      __$$PhysicalInventoryImplCopyWithImpl<$Res>;
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
class __$$PhysicalInventoryImplCopyWithImpl<$Res>
    extends _$PhysicalInventoryCopyWithImpl<$Res, _$PhysicalInventoryImpl>
    implements _$$PhysicalInventoryImplCopyWith<$Res> {
  __$$PhysicalInventoryImplCopyWithImpl(_$PhysicalInventoryImpl _value,
      $Res Function(_$PhysicalInventoryImpl) _then)
      : super(_value, _then);

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
    return _then(_$PhysicalInventoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledAt: freezed == cancelledAt
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      startedBy: freezed == startedBy
          ? _value.startedBy
          : startedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      completedBy: freezed == completedBy
          ? _value.completedBy
          : completedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelledBy: freezed == cancelledBy
          ? _value.cancelledBy
          : cancelledBy // ignore: cast_nullable_to_non_nullable
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
class _$PhysicalInventoryImpl implements _PhysicalInventory {
  const _$PhysicalInventoryImpl(
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

  factory _$PhysicalInventoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhysicalInventoryImplFromJson(json);

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

  @override
  String toString() {
    return 'PhysicalInventory(id: $id, name: $name, description: $description, locationId: $locationId, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, startedAt: $startedAt, completedAt: $completedAt, cancelledAt: $cancelledAt, createdBy: $createdBy, startedBy: $startedBy, completedBy: $completedBy, cancelledBy: $cancelledBy, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhysicalInventoryImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhysicalInventoryImplCopyWith<_$PhysicalInventoryImpl> get copyWith =>
      __$$PhysicalInventoryImplCopyWithImpl<_$PhysicalInventoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhysicalInventoryImplToJson(
      this,
    );
  }
}

abstract class _PhysicalInventory implements PhysicalInventory {
  const factory _PhysicalInventory(
      {required final String id,
      required final String name,
      required final String description,
      required final String locationId,
      required final String status,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final DateTime? startedAt,
      final DateTime? completedAt,
      final DateTime? cancelledAt,
      final String? createdBy,
      final String? startedBy,
      final String? completedBy,
      final String? cancelledBy,
      final Map<String, dynamic>? metadata}) = _$PhysicalInventoryImpl;

  factory _PhysicalInventory.fromJson(Map<String, dynamic> json) =
      _$PhysicalInventoryImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get locationId;
  @override
  String get status;
  @override // 'draft', 'in_progress', 'completed', 'cancelled'
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  DateTime? get startedAt;
  @override
  DateTime? get completedAt;
  @override
  DateTime? get cancelledAt;
  @override
  String? get createdBy;
  @override
  String? get startedBy;
  @override
  String? get completedBy;
  @override
  String? get cancelledBy;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$PhysicalInventoryImplCopyWith<_$PhysicalInventoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PhysicalInventoryItem _$PhysicalInventoryItemFromJson(
    Map<String, dynamic> json) {
  return _PhysicalInventoryItem.fromJson(json);
}

/// @nodoc
mixin _$PhysicalInventoryItem {
  String get id => throw _privateConstructorUsedError;
  String get physicalInventoryId => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  String get locationId => throw _privateConstructorUsedError;
  double get systemQuantity => throw _privateConstructorUsedError;
  double get countedQuantity => throw _privateConstructorUsedError;
  double get varianceQuantity => throw _privateConstructorUsedError;
  double get varianceValue => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // 'pending', 'counted', 'adjusted'
  DateTime? get countedAt => throw _privateConstructorUsedError;
  String? get countedBy => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get lotNumber => throw _privateConstructorUsedError;
  String? get serialNumber => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhysicalInventoryItemCopyWith<PhysicalInventoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhysicalInventoryItemCopyWith<$Res> {
  factory $PhysicalInventoryItemCopyWith(PhysicalInventoryItem value,
          $Res Function(PhysicalInventoryItem) then) =
      _$PhysicalInventoryItemCopyWithImpl<$Res, PhysicalInventoryItem>;
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
class _$PhysicalInventoryItemCopyWithImpl<$Res,
        $Val extends PhysicalInventoryItem>
    implements $PhysicalInventoryItemCopyWith<$Res> {
  _$PhysicalInventoryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      physicalInventoryId: null == physicalInventoryId
          ? _value.physicalInventoryId
          : physicalInventoryId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      systemQuantity: null == systemQuantity
          ? _value.systemQuantity
          : systemQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      countedQuantity: null == countedQuantity
          ? _value.countedQuantity
          : countedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      varianceQuantity: null == varianceQuantity
          ? _value.varianceQuantity
          : varianceQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      varianceValue: null == varianceValue
          ? _value.varianceValue
          : varianceValue // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      countedAt: freezed == countedAt
          ? _value.countedAt
          : countedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      countedBy: freezed == countedBy
          ? _value.countedBy
          : countedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhysicalInventoryItemImplCopyWith<$Res>
    implements $PhysicalInventoryItemCopyWith<$Res> {
  factory _$$PhysicalInventoryItemImplCopyWith(
          _$PhysicalInventoryItemImpl value,
          $Res Function(_$PhysicalInventoryItemImpl) then) =
      __$$PhysicalInventoryItemImplCopyWithImpl<$Res>;
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
class __$$PhysicalInventoryItemImplCopyWithImpl<$Res>
    extends _$PhysicalInventoryItemCopyWithImpl<$Res,
        _$PhysicalInventoryItemImpl>
    implements _$$PhysicalInventoryItemImplCopyWith<$Res> {
  __$$PhysicalInventoryItemImplCopyWithImpl(_$PhysicalInventoryItemImpl _value,
      $Res Function(_$PhysicalInventoryItemImpl) _then)
      : super(_value, _then);

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
    return _then(_$PhysicalInventoryItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      physicalInventoryId: null == physicalInventoryId
          ? _value.physicalInventoryId
          : physicalInventoryId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      systemQuantity: null == systemQuantity
          ? _value.systemQuantity
          : systemQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      countedQuantity: null == countedQuantity
          ? _value.countedQuantity
          : countedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      varianceQuantity: null == varianceQuantity
          ? _value.varianceQuantity
          : varianceQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      varianceValue: null == varianceValue
          ? _value.varianceValue
          : varianceValue // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      countedAt: freezed == countedAt
          ? _value.countedAt
          : countedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      countedBy: freezed == countedBy
          ? _value.countedBy
          : countedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
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
class _$PhysicalInventoryItemImpl implements _PhysicalInventoryItem {
  const _$PhysicalInventoryItemImpl(
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

  factory _$PhysicalInventoryItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhysicalInventoryItemImplFromJson(json);

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

  @override
  String toString() {
    return 'PhysicalInventoryItem(id: $id, physicalInventoryId: $physicalInventoryId, itemId: $itemId, locationId: $locationId, systemQuantity: $systemQuantity, countedQuantity: $countedQuantity, varianceQuantity: $varianceQuantity, varianceValue: $varianceValue, status: $status, countedAt: $countedAt, countedBy: $countedBy, notes: $notes, lotNumber: $lotNumber, serialNumber: $serialNumber, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhysicalInventoryItemImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhysicalInventoryItemImplCopyWith<_$PhysicalInventoryItemImpl>
      get copyWith => __$$PhysicalInventoryItemImplCopyWithImpl<
          _$PhysicalInventoryItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhysicalInventoryItemImplToJson(
      this,
    );
  }
}

abstract class _PhysicalInventoryItem implements PhysicalInventoryItem {
  const factory _PhysicalInventoryItem(
      {required final String id,
      required final String physicalInventoryId,
      required final String itemId,
      required final String locationId,
      required final double systemQuantity,
      required final double countedQuantity,
      required final double varianceQuantity,
      required final double varianceValue,
      required final String status,
      final DateTime? countedAt,
      final String? countedBy,
      final String? notes,
      final String? lotNumber,
      final String? serialNumber,
      final Map<String, dynamic>? metadata}) = _$PhysicalInventoryItemImpl;

  factory _PhysicalInventoryItem.fromJson(Map<String, dynamic> json) =
      _$PhysicalInventoryItemImpl.fromJson;

  @override
  String get id;
  @override
  String get physicalInventoryId;
  @override
  String get itemId;
  @override
  String get locationId;
  @override
  double get systemQuantity;
  @override
  double get countedQuantity;
  @override
  double get varianceQuantity;
  @override
  double get varianceValue;
  @override
  String get status;
  @override // 'pending', 'counted', 'adjusted'
  DateTime? get countedAt;
  @override
  String? get countedBy;
  @override
  String? get notes;
  @override
  String? get lotNumber;
  @override
  String? get serialNumber;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$PhysicalInventoryItemImplCopyWith<_$PhysicalInventoryItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreatePhysicalInventoryRequest _$CreatePhysicalInventoryRequestFromJson(
    Map<String, dynamic> json) {
  return _CreatePhysicalInventoryRequest.fromJson(json);
}

/// @nodoc
mixin _$CreatePhysicalInventoryRequest {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get locationId => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePhysicalInventoryRequestCopyWith<CreatePhysicalInventoryRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePhysicalInventoryRequestCopyWith<$Res> {
  factory $CreatePhysicalInventoryRequestCopyWith(
          CreatePhysicalInventoryRequest value,
          $Res Function(CreatePhysicalInventoryRequest) then) =
      _$CreatePhysicalInventoryRequestCopyWithImpl<$Res,
          CreatePhysicalInventoryRequest>;
  @useResult
  $Res call(
      {String name,
      String description,
      String locationId,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$CreatePhysicalInventoryRequestCopyWithImpl<$Res,
        $Val extends CreatePhysicalInventoryRequest>
    implements $CreatePhysicalInventoryRequestCopyWith<$Res> {
  _$CreatePhysicalInventoryRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? locationId = null,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatePhysicalInventoryRequestImplCopyWith<$Res>
    implements $CreatePhysicalInventoryRequestCopyWith<$Res> {
  factory _$$CreatePhysicalInventoryRequestImplCopyWith(
          _$CreatePhysicalInventoryRequestImpl value,
          $Res Function(_$CreatePhysicalInventoryRequestImpl) then) =
      __$$CreatePhysicalInventoryRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String locationId,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$CreatePhysicalInventoryRequestImplCopyWithImpl<$Res>
    extends _$CreatePhysicalInventoryRequestCopyWithImpl<$Res,
        _$CreatePhysicalInventoryRequestImpl>
    implements _$$CreatePhysicalInventoryRequestImplCopyWith<$Res> {
  __$$CreatePhysicalInventoryRequestImplCopyWithImpl(
      _$CreatePhysicalInventoryRequestImpl _value,
      $Res Function(_$CreatePhysicalInventoryRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? locationId = null,
    Object? metadata = freezed,
  }) {
    return _then(_$CreatePhysicalInventoryRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatePhysicalInventoryRequestImpl
    implements _CreatePhysicalInventoryRequest {
  const _$CreatePhysicalInventoryRequestImpl(
      {required this.name,
      required this.description,
      required this.locationId,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$CreatePhysicalInventoryRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreatePhysicalInventoryRequestImplFromJson(json);

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

  @override
  String toString() {
    return 'CreatePhysicalInventoryRequest(name: $name, description: $description, locationId: $locationId, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePhysicalInventoryRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, locationId,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePhysicalInventoryRequestImplCopyWith<
          _$CreatePhysicalInventoryRequestImpl>
      get copyWith => __$$CreatePhysicalInventoryRequestImplCopyWithImpl<
          _$CreatePhysicalInventoryRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePhysicalInventoryRequestImplToJson(
      this,
    );
  }
}

abstract class _CreatePhysicalInventoryRequest
    implements CreatePhysicalInventoryRequest {
  const factory _CreatePhysicalInventoryRequest(
          {required final String name,
          required final String description,
          required final String locationId,
          final Map<String, dynamic>? metadata}) =
      _$CreatePhysicalInventoryRequestImpl;

  factory _CreatePhysicalInventoryRequest.fromJson(Map<String, dynamic> json) =
      _$CreatePhysicalInventoryRequestImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get locationId;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$CreatePhysicalInventoryRequestImplCopyWith<
          _$CreatePhysicalInventoryRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdatePhysicalInventoryRequest _$UpdatePhysicalInventoryRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdatePhysicalInventoryRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdatePhysicalInventoryRequest {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdatePhysicalInventoryRequestCopyWith<UpdatePhysicalInventoryRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePhysicalInventoryRequestCopyWith<$Res> {
  factory $UpdatePhysicalInventoryRequestCopyWith(
          UpdatePhysicalInventoryRequest value,
          $Res Function(UpdatePhysicalInventoryRequest) then) =
      _$UpdatePhysicalInventoryRequestCopyWithImpl<$Res,
          UpdatePhysicalInventoryRequest>;
  @useResult
  $Res call(
      {String? name, String? description, Map<String, dynamic>? metadata});
}

/// @nodoc
class _$UpdatePhysicalInventoryRequestCopyWithImpl<$Res,
        $Val extends UpdatePhysicalInventoryRequest>
    implements $UpdatePhysicalInventoryRequestCopyWith<$Res> {
  _$UpdatePhysicalInventoryRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdatePhysicalInventoryRequestImplCopyWith<$Res>
    implements $UpdatePhysicalInventoryRequestCopyWith<$Res> {
  factory _$$UpdatePhysicalInventoryRequestImplCopyWith(
          _$UpdatePhysicalInventoryRequestImpl value,
          $Res Function(_$UpdatePhysicalInventoryRequestImpl) then) =
      __$$UpdatePhysicalInventoryRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name, String? description, Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$UpdatePhysicalInventoryRequestImplCopyWithImpl<$Res>
    extends _$UpdatePhysicalInventoryRequestCopyWithImpl<$Res,
        _$UpdatePhysicalInventoryRequestImpl>
    implements _$$UpdatePhysicalInventoryRequestImplCopyWith<$Res> {
  __$$UpdatePhysicalInventoryRequestImplCopyWithImpl(
      _$UpdatePhysicalInventoryRequestImpl _value,
      $Res Function(_$UpdatePhysicalInventoryRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$UpdatePhysicalInventoryRequestImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
class _$UpdatePhysicalInventoryRequestImpl
    implements _UpdatePhysicalInventoryRequest {
  const _$UpdatePhysicalInventoryRequestImpl(
      {this.name, this.description, final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$UpdatePhysicalInventoryRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdatePhysicalInventoryRequestImplFromJson(json);

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

  @override
  String toString() {
    return 'UpdatePhysicalInventoryRequest(name: $name, description: $description, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePhysicalInventoryRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePhysicalInventoryRequestImplCopyWith<
          _$UpdatePhysicalInventoryRequestImpl>
      get copyWith => __$$UpdatePhysicalInventoryRequestImplCopyWithImpl<
          _$UpdatePhysicalInventoryRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePhysicalInventoryRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdatePhysicalInventoryRequest
    implements UpdatePhysicalInventoryRequest {
  const factory _UpdatePhysicalInventoryRequest(
          {final String? name,
          final String? description,
          final Map<String, dynamic>? metadata}) =
      _$UpdatePhysicalInventoryRequestImpl;

  factory _UpdatePhysicalInventoryRequest.fromJson(Map<String, dynamic> json) =
      _$UpdatePhysicalInventoryRequestImpl.fromJson;

  @override
  String? get name;
  @override
  String? get description;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$UpdatePhysicalInventoryRequestImplCopyWith<
          _$UpdatePhysicalInventoryRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PhysicalInventoryFilters _$PhysicalInventoryFiltersFromJson(
    Map<String, dynamic> json) {
  return _PhysicalInventoryFilters.fromJson(json);
}

/// @nodoc
mixin _$PhysicalInventoryFilters {
  String? get locationId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  DateTime? get createdAfter => throw _privateConstructorUsedError;
  DateTime? get createdBefore => throw _privateConstructorUsedError;
  DateTime? get startedAfter => throw _privateConstructorUsedError;
  DateTime? get startedBefore => throw _privateConstructorUsedError;
  DateTime? get completedAfter => throw _privateConstructorUsedError;
  DateTime? get completedBefore => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String? get sortBy => throw _privateConstructorUsedError;
  String? get sortOrder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhysicalInventoryFiltersCopyWith<PhysicalInventoryFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhysicalInventoryFiltersCopyWith<$Res> {
  factory $PhysicalInventoryFiltersCopyWith(PhysicalInventoryFilters value,
          $Res Function(PhysicalInventoryFilters) then) =
      _$PhysicalInventoryFiltersCopyWithImpl<$Res, PhysicalInventoryFilters>;
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
class _$PhysicalInventoryFiltersCopyWithImpl<$Res,
        $Val extends PhysicalInventoryFilters>
    implements $PhysicalInventoryFiltersCopyWith<$Res> {
  _$PhysicalInventoryFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAfter: freezed == createdAfter
          ? _value.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _value.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedAfter: freezed == startedAfter
          ? _value.startedAfter
          : startedAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedBefore: freezed == startedBefore
          ? _value.startedBefore
          : startedBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedAfter: freezed == completedAfter
          ? _value.completedAfter
          : completedAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedBefore: freezed == completedBefore
          ? _value.completedBefore
          : completedBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
abstract class _$$PhysicalInventoryFiltersImplCopyWith<$Res>
    implements $PhysicalInventoryFiltersCopyWith<$Res> {
  factory _$$PhysicalInventoryFiltersImplCopyWith(
          _$PhysicalInventoryFiltersImpl value,
          $Res Function(_$PhysicalInventoryFiltersImpl) then) =
      __$$PhysicalInventoryFiltersImplCopyWithImpl<$Res>;
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
class __$$PhysicalInventoryFiltersImplCopyWithImpl<$Res>
    extends _$PhysicalInventoryFiltersCopyWithImpl<$Res,
        _$PhysicalInventoryFiltersImpl>
    implements _$$PhysicalInventoryFiltersImplCopyWith<$Res> {
  __$$PhysicalInventoryFiltersImplCopyWithImpl(
      _$PhysicalInventoryFiltersImpl _value,
      $Res Function(_$PhysicalInventoryFiltersImpl) _then)
      : super(_value, _then);

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
    return _then(_$PhysicalInventoryFiltersImpl(
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAfter: freezed == createdAfter
          ? _value.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _value.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedAfter: freezed == startedAfter
          ? _value.startedAfter
          : startedAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedBefore: freezed == startedBefore
          ? _value.startedBefore
          : startedBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedAfter: freezed == completedAfter
          ? _value.completedAfter
          : completedAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedBefore: freezed == completedBefore
          ? _value.completedBefore
          : completedBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
class _$PhysicalInventoryFiltersImpl extends _PhysicalInventoryFilters {
  const _$PhysicalInventoryFiltersImpl(
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

  factory _$PhysicalInventoryFiltersImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhysicalInventoryFiltersImplFromJson(json);

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

  @override
  String toString() {
    return 'PhysicalInventoryFilters(locationId: $locationId, status: $status, createdBy: $createdBy, createdAfter: $createdAfter, createdBefore: $createdBefore, startedAfter: $startedAfter, startedBefore: $startedBefore, completedAfter: $completedAfter, completedBefore: $completedBefore, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhysicalInventoryFiltersImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhysicalInventoryFiltersImplCopyWith<_$PhysicalInventoryFiltersImpl>
      get copyWith => __$$PhysicalInventoryFiltersImplCopyWithImpl<
          _$PhysicalInventoryFiltersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhysicalInventoryFiltersImplToJson(
      this,
    );
  }
}

abstract class _PhysicalInventoryFilters extends PhysicalInventoryFilters {
  const factory _PhysicalInventoryFilters(
      {final String? locationId,
      final String? status,
      final String? createdBy,
      final DateTime? createdAfter,
      final DateTime? createdBefore,
      final DateTime? startedAfter,
      final DateTime? startedBefore,
      final DateTime? completedAfter,
      final DateTime? completedBefore,
      final int? page,
      final int? limit,
      final String? sortBy,
      final String? sortOrder}) = _$PhysicalInventoryFiltersImpl;
  const _PhysicalInventoryFilters._() : super._();

  factory _PhysicalInventoryFilters.fromJson(Map<String, dynamic> json) =
      _$PhysicalInventoryFiltersImpl.fromJson;

  @override
  String? get locationId;
  @override
  String? get status;
  @override
  String? get createdBy;
  @override
  DateTime? get createdAfter;
  @override
  DateTime? get createdBefore;
  @override
  DateTime? get startedAfter;
  @override
  DateTime? get startedBefore;
  @override
  DateTime? get completedAfter;
  @override
  DateTime? get completedBefore;
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
  _$$PhysicalInventoryFiltersImplCopyWith<_$PhysicalInventoryFiltersImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdatePhysicalInventoryItemRequest _$UpdatePhysicalInventoryItemRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdatePhysicalInventoryItemRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdatePhysicalInventoryItemRequest {
  double get countedQuantity => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get lotNumber => throw _privateConstructorUsedError;
  String? get serialNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdatePhysicalInventoryItemRequestCopyWith<
          UpdatePhysicalInventoryItemRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePhysicalInventoryItemRequestCopyWith<$Res> {
  factory $UpdatePhysicalInventoryItemRequestCopyWith(
          UpdatePhysicalInventoryItemRequest value,
          $Res Function(UpdatePhysicalInventoryItemRequest) then) =
      _$UpdatePhysicalInventoryItemRequestCopyWithImpl<$Res,
          UpdatePhysicalInventoryItemRequest>;
  @useResult
  $Res call(
      {double countedQuantity,
      String? notes,
      String? lotNumber,
      String? serialNumber});
}

/// @nodoc
class _$UpdatePhysicalInventoryItemRequestCopyWithImpl<$Res,
        $Val extends UpdatePhysicalInventoryItemRequest>
    implements $UpdatePhysicalInventoryItemRequestCopyWith<$Res> {
  _$UpdatePhysicalInventoryItemRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countedQuantity = null,
    Object? notes = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
  }) {
    return _then(_value.copyWith(
      countedQuantity: null == countedQuantity
          ? _value.countedQuantity
          : countedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdatePhysicalInventoryItemRequestImplCopyWith<$Res>
    implements $UpdatePhysicalInventoryItemRequestCopyWith<$Res> {
  factory _$$UpdatePhysicalInventoryItemRequestImplCopyWith(
          _$UpdatePhysicalInventoryItemRequestImpl value,
          $Res Function(_$UpdatePhysicalInventoryItemRequestImpl) then) =
      __$$UpdatePhysicalInventoryItemRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double countedQuantity,
      String? notes,
      String? lotNumber,
      String? serialNumber});
}

/// @nodoc
class __$$UpdatePhysicalInventoryItemRequestImplCopyWithImpl<$Res>
    extends _$UpdatePhysicalInventoryItemRequestCopyWithImpl<$Res,
        _$UpdatePhysicalInventoryItemRequestImpl>
    implements _$$UpdatePhysicalInventoryItemRequestImplCopyWith<$Res> {
  __$$UpdatePhysicalInventoryItemRequestImplCopyWithImpl(
      _$UpdatePhysicalInventoryItemRequestImpl _value,
      $Res Function(_$UpdatePhysicalInventoryItemRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countedQuantity = null,
    Object? notes = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
  }) {
    return _then(_$UpdatePhysicalInventoryItemRequestImpl(
      countedQuantity: null == countedQuantity
          ? _value.countedQuantity
          : countedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdatePhysicalInventoryItemRequestImpl
    implements _UpdatePhysicalInventoryItemRequest {
  const _$UpdatePhysicalInventoryItemRequestImpl(
      {required this.countedQuantity,
      this.notes,
      this.lotNumber,
      this.serialNumber});

  factory _$UpdatePhysicalInventoryItemRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdatePhysicalInventoryItemRequestImplFromJson(json);

  @override
  final double countedQuantity;
  @override
  final String? notes;
  @override
  final String? lotNumber;
  @override
  final String? serialNumber;

  @override
  String toString() {
    return 'UpdatePhysicalInventoryItemRequest(countedQuantity: $countedQuantity, notes: $notes, lotNumber: $lotNumber, serialNumber: $serialNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePhysicalInventoryItemRequestImpl &&
            (identical(other.countedQuantity, countedQuantity) ||
                other.countedQuantity == countedQuantity) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, countedQuantity, notes, lotNumber, serialNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePhysicalInventoryItemRequestImplCopyWith<
          _$UpdatePhysicalInventoryItemRequestImpl>
      get copyWith => __$$UpdatePhysicalInventoryItemRequestImplCopyWithImpl<
          _$UpdatePhysicalInventoryItemRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePhysicalInventoryItemRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdatePhysicalInventoryItemRequest
    implements UpdatePhysicalInventoryItemRequest {
  const factory _UpdatePhysicalInventoryItemRequest(
      {required final double countedQuantity,
      final String? notes,
      final String? lotNumber,
      final String? serialNumber}) = _$UpdatePhysicalInventoryItemRequestImpl;

  factory _UpdatePhysicalInventoryItemRequest.fromJson(
          Map<String, dynamic> json) =
      _$UpdatePhysicalInventoryItemRequestImpl.fromJson;

  @override
  double get countedQuantity;
  @override
  String? get notes;
  @override
  String? get lotNumber;
  @override
  String? get serialNumber;
  @override
  @JsonKey(ignore: true)
  _$$UpdatePhysicalInventoryItemRequestImplCopyWith<
          _$UpdatePhysicalInventoryItemRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PhysicalInventoryAdjustment _$PhysicalInventoryAdjustmentFromJson(
    Map<String, dynamic> json) {
  return _PhysicalInventoryAdjustment.fromJson(json);
}

/// @nodoc
mixin _$PhysicalInventoryAdjustment {
  String get id => throw _privateConstructorUsedError;
  String get physicalInventoryId => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  String get locationId => throw _privateConstructorUsedError;
  double get adjustmentQuantity => throw _privateConstructorUsedError;
  double get adjustmentValue => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  String? get lotNumber => throw _privateConstructorUsedError;
  String? get serialNumber => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhysicalInventoryAdjustmentCopyWith<PhysicalInventoryAdjustment>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhysicalInventoryAdjustmentCopyWith<$Res> {
  factory $PhysicalInventoryAdjustmentCopyWith(
          PhysicalInventoryAdjustment value,
          $Res Function(PhysicalInventoryAdjustment) then) =
      _$PhysicalInventoryAdjustmentCopyWithImpl<$Res,
          PhysicalInventoryAdjustment>;
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
class _$PhysicalInventoryAdjustmentCopyWithImpl<$Res,
        $Val extends PhysicalInventoryAdjustment>
    implements $PhysicalInventoryAdjustmentCopyWith<$Res> {
  _$PhysicalInventoryAdjustmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      physicalInventoryId: null == physicalInventoryId
          ? _value.physicalInventoryId
          : physicalInventoryId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      adjustmentQuantity: null == adjustmentQuantity
          ? _value.adjustmentQuantity
          : adjustmentQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      adjustmentValue: null == adjustmentValue
          ? _value.adjustmentValue
          : adjustmentValue // ignore: cast_nullable_to_non_nullable
              as double,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhysicalInventoryAdjustmentImplCopyWith<$Res>
    implements $PhysicalInventoryAdjustmentCopyWith<$Res> {
  factory _$$PhysicalInventoryAdjustmentImplCopyWith(
          _$PhysicalInventoryAdjustmentImpl value,
          $Res Function(_$PhysicalInventoryAdjustmentImpl) then) =
      __$$PhysicalInventoryAdjustmentImplCopyWithImpl<$Res>;
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
class __$$PhysicalInventoryAdjustmentImplCopyWithImpl<$Res>
    extends _$PhysicalInventoryAdjustmentCopyWithImpl<$Res,
        _$PhysicalInventoryAdjustmentImpl>
    implements _$$PhysicalInventoryAdjustmentImplCopyWith<$Res> {
  __$$PhysicalInventoryAdjustmentImplCopyWithImpl(
      _$PhysicalInventoryAdjustmentImpl _value,
      $Res Function(_$PhysicalInventoryAdjustmentImpl) _then)
      : super(_value, _then);

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
    return _then(_$PhysicalInventoryAdjustmentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      physicalInventoryId: null == physicalInventoryId
          ? _value.physicalInventoryId
          : physicalInventoryId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      adjustmentQuantity: null == adjustmentQuantity
          ? _value.adjustmentQuantity
          : adjustmentQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      adjustmentValue: null == adjustmentValue
          ? _value.adjustmentValue
          : adjustmentValue // ignore: cast_nullable_to_non_nullable
              as double,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
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
class _$PhysicalInventoryAdjustmentImpl
    implements _PhysicalInventoryAdjustment {
  const _$PhysicalInventoryAdjustmentImpl(
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

  factory _$PhysicalInventoryAdjustmentImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PhysicalInventoryAdjustmentImplFromJson(json);

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

  @override
  String toString() {
    return 'PhysicalInventoryAdjustment(id: $id, physicalInventoryId: $physicalInventoryId, itemId: $itemId, locationId: $locationId, adjustmentQuantity: $adjustmentQuantity, adjustmentValue: $adjustmentValue, reason: $reason, createdAt: $createdAt, createdBy: $createdBy, lotNumber: $lotNumber, serialNumber: $serialNumber, notes: $notes, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhysicalInventoryAdjustmentImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhysicalInventoryAdjustmentImplCopyWith<_$PhysicalInventoryAdjustmentImpl>
      get copyWith => __$$PhysicalInventoryAdjustmentImplCopyWithImpl<
          _$PhysicalInventoryAdjustmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhysicalInventoryAdjustmentImplToJson(
      this,
    );
  }
}

abstract class _PhysicalInventoryAdjustment
    implements PhysicalInventoryAdjustment {
  const factory _PhysicalInventoryAdjustment(
          {required final String id,
          required final String physicalInventoryId,
          required final String itemId,
          required final String locationId,
          required final double adjustmentQuantity,
          required final double adjustmentValue,
          required final String reason,
          required final DateTime createdAt,
          final String? createdBy,
          final String? lotNumber,
          final String? serialNumber,
          final String? notes,
          final Map<String, dynamic>? metadata}) =
      _$PhysicalInventoryAdjustmentImpl;

  factory _PhysicalInventoryAdjustment.fromJson(Map<String, dynamic> json) =
      _$PhysicalInventoryAdjustmentImpl.fromJson;

  @override
  String get id;
  @override
  String get physicalInventoryId;
  @override
  String get itemId;
  @override
  String get locationId;
  @override
  double get adjustmentQuantity;
  @override
  double get adjustmentValue;
  @override
  String get reason;
  @override
  DateTime get createdAt;
  @override
  String? get createdBy;
  @override
  String? get lotNumber;
  @override
  String? get serialNumber;
  @override
  String? get notes;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$PhysicalInventoryAdjustmentImplCopyWith<_$PhysicalInventoryAdjustmentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
