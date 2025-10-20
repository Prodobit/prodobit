// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manufacturing_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Bom _$BomFromJson(Map<String, dynamic> json) {
  return _Bom.fromJson(json);
}

/// @nodoc
mixin _$Bom {
  String get id => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt =>
      throw _privateConstructorUsedError; // 'draft', 'active', 'inactive', 'obsolete'
  String? get description => throw _privateConstructorUsedError;
  DateTime? get effectiveDate => throw _privateConstructorUsedError;
  DateTime? get expiryDate => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  double? get totalCost => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BomCopyWith<Bom> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BomCopyWith<$Res> {
  factory $BomCopyWith(Bom value, $Res Function(Bom) then) =
      _$BomCopyWithImpl<$Res, Bom>;
  @useResult
  $Res call(
      {String id,
      String itemId,
      String name,
      String version,
      String status,
      DateTime createdAt,
      DateTime updatedAt,
      String? description,
      DateTime? effectiveDate,
      DateTime? expiryDate,
      String? createdBy,
      double? totalCost,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$BomCopyWithImpl<$Res, $Val extends Bom> implements $BomCopyWith<$Res> {
  _$BomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? itemId = null,
    Object? name = null,
    Object? version = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? description = freezed,
    Object? effectiveDate = freezed,
    Object? expiryDate = freezed,
    Object? createdBy = freezed,
    Object? totalCost = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      effectiveDate: freezed == effectiveDate
          ? _value.effectiveDate
          : effectiveDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCost: freezed == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BomImplCopyWith<$Res> implements $BomCopyWith<$Res> {
  factory _$$BomImplCopyWith(_$BomImpl value, $Res Function(_$BomImpl) then) =
      __$$BomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String itemId,
      String name,
      String version,
      String status,
      DateTime createdAt,
      DateTime updatedAt,
      String? description,
      DateTime? effectiveDate,
      DateTime? expiryDate,
      String? createdBy,
      double? totalCost,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$BomImplCopyWithImpl<$Res> extends _$BomCopyWithImpl<$Res, _$BomImpl>
    implements _$$BomImplCopyWith<$Res> {
  __$$BomImplCopyWithImpl(_$BomImpl _value, $Res Function(_$BomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? itemId = null,
    Object? name = null,
    Object? version = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? description = freezed,
    Object? effectiveDate = freezed,
    Object? expiryDate = freezed,
    Object? createdBy = freezed,
    Object? totalCost = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$BomImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      effectiveDate: freezed == effectiveDate
          ? _value.effectiveDate
          : effectiveDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCost: freezed == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BomImpl implements _Bom {
  const _$BomImpl(
      {required this.id,
      required this.itemId,
      required this.name,
      required this.version,
      required this.status,
      required this.createdAt,
      required this.updatedAt,
      this.description,
      this.effectiveDate,
      this.expiryDate,
      this.createdBy,
      this.totalCost,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$BomImpl.fromJson(Map<String, dynamic> json) =>
      _$$BomImplFromJson(json);

  @override
  final String id;
  @override
  final String itemId;
  @override
  final String name;
  @override
  final String version;
  @override
  final String status;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
// 'draft', 'active', 'inactive', 'obsolete'
  @override
  final String? description;
  @override
  final DateTime? effectiveDate;
  @override
  final DateTime? expiryDate;
  @override
  final String? createdBy;
  @override
  final double? totalCost;
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
    return 'Bom(id: $id, itemId: $itemId, name: $name, version: $version, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, description: $description, effectiveDate: $effectiveDate, expiryDate: $expiryDate, createdBy: $createdBy, totalCost: $totalCost, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BomImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.effectiveDate, effectiveDate) ||
                other.effectiveDate == effectiveDate) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      itemId,
      name,
      version,
      status,
      createdAt,
      updatedAt,
      description,
      effectiveDate,
      expiryDate,
      createdBy,
      totalCost,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BomImplCopyWith<_$BomImpl> get copyWith =>
      __$$BomImplCopyWithImpl<_$BomImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BomImplToJson(
      this,
    );
  }
}

abstract class _Bom implements Bom {
  const factory _Bom(
      {required final String id,
      required final String itemId,
      required final String name,
      required final String version,
      required final String status,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final String? description,
      final DateTime? effectiveDate,
      final DateTime? expiryDate,
      final String? createdBy,
      final double? totalCost,
      final Map<String, dynamic>? metadata}) = _$BomImpl;

  factory _Bom.fromJson(Map<String, dynamic> json) = _$BomImpl.fromJson;

  @override
  String get id;
  @override
  String get itemId;
  @override
  String get name;
  @override
  String get version;
  @override
  String get status;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override // 'draft', 'active', 'inactive', 'obsolete'
  String? get description;
  @override
  DateTime? get effectiveDate;
  @override
  DateTime? get expiryDate;
  @override
  String? get createdBy;
  @override
  double? get totalCost;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$BomImplCopyWith<_$BomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateBomRequest _$CreateBomRequestFromJson(Map<String, dynamic> json) {
  return _CreateBomRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateBomRequest {
  String get itemId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get effectiveDate => throw _privateConstructorUsedError;
  DateTime? get expiryDate => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateBomRequestCopyWith<CreateBomRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBomRequestCopyWith<$Res> {
  factory $CreateBomRequestCopyWith(
          CreateBomRequest value, $Res Function(CreateBomRequest) then) =
      _$CreateBomRequestCopyWithImpl<$Res, CreateBomRequest>;
  @useResult
  $Res call(
      {String itemId,
      String name,
      String version,
      String? description,
      DateTime? effectiveDate,
      DateTime? expiryDate,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$CreateBomRequestCopyWithImpl<$Res, $Val extends CreateBomRequest>
    implements $CreateBomRequestCopyWith<$Res> {
  _$CreateBomRequestCopyWithImpl(this._value, this._then);

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
    Object? description = freezed,
    Object? effectiveDate = freezed,
    Object? expiryDate = freezed,
    Object? metadata = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      effectiveDate: freezed == effectiveDate
          ? _value.effectiveDate
          : effectiveDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateBomRequestImplCopyWith<$Res>
    implements $CreateBomRequestCopyWith<$Res> {
  factory _$$CreateBomRequestImplCopyWith(_$CreateBomRequestImpl value,
          $Res Function(_$CreateBomRequestImpl) then) =
      __$$CreateBomRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String itemId,
      String name,
      String version,
      String? description,
      DateTime? effectiveDate,
      DateTime? expiryDate,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$CreateBomRequestImplCopyWithImpl<$Res>
    extends _$CreateBomRequestCopyWithImpl<$Res, _$CreateBomRequestImpl>
    implements _$$CreateBomRequestImplCopyWith<$Res> {
  __$$CreateBomRequestImplCopyWithImpl(_$CreateBomRequestImpl _value,
      $Res Function(_$CreateBomRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? name = null,
    Object? version = null,
    Object? description = freezed,
    Object? effectiveDate = freezed,
    Object? expiryDate = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$CreateBomRequestImpl(
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      effectiveDate: freezed == effectiveDate
          ? _value.effectiveDate
          : effectiveDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateBomRequestImpl implements _CreateBomRequest {
  const _$CreateBomRequestImpl(
      {required this.itemId,
      required this.name,
      required this.version,
      this.description,
      this.effectiveDate,
      this.expiryDate,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$CreateBomRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateBomRequestImplFromJson(json);

  @override
  final String itemId;
  @override
  final String name;
  @override
  final String version;
  @override
  final String? description;
  @override
  final DateTime? effectiveDate;
  @override
  final DateTime? expiryDate;
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
    return 'CreateBomRequest(itemId: $itemId, name: $name, version: $version, description: $description, effectiveDate: $effectiveDate, expiryDate: $expiryDate, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBomRequestImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.effectiveDate, effectiveDate) ||
                other.effectiveDate == effectiveDate) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemId,
      name,
      version,
      description,
      effectiveDate,
      expiryDate,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBomRequestImplCopyWith<_$CreateBomRequestImpl> get copyWith =>
      __$$CreateBomRequestImplCopyWithImpl<_$CreateBomRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateBomRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateBomRequest implements CreateBomRequest {
  const factory _CreateBomRequest(
      {required final String itemId,
      required final String name,
      required final String version,
      final String? description,
      final DateTime? effectiveDate,
      final DateTime? expiryDate,
      final Map<String, dynamic>? metadata}) = _$CreateBomRequestImpl;

  factory _CreateBomRequest.fromJson(Map<String, dynamic> json) =
      _$CreateBomRequestImpl.fromJson;

  @override
  String get itemId;
  @override
  String get name;
  @override
  String get version;
  @override
  String? get description;
  @override
  DateTime? get effectiveDate;
  @override
  DateTime? get expiryDate;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$CreateBomRequestImplCopyWith<_$CreateBomRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateBomRequest _$UpdateBomRequestFromJson(Map<String, dynamic> json) {
  return _UpdateBomRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateBomRequest {
  String? get name => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  DateTime? get effectiveDate => throw _privateConstructorUsedError;
  DateTime? get expiryDate => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateBomRequestCopyWith<UpdateBomRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateBomRequestCopyWith<$Res> {
  factory $UpdateBomRequestCopyWith(
          UpdateBomRequest value, $Res Function(UpdateBomRequest) then) =
      _$UpdateBomRequestCopyWithImpl<$Res, UpdateBomRequest>;
  @useResult
  $Res call(
      {String? name,
      String? version,
      String? description,
      String? status,
      DateTime? effectiveDate,
      DateTime? expiryDate,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$UpdateBomRequestCopyWithImpl<$Res, $Val extends UpdateBomRequest>
    implements $UpdateBomRequestCopyWith<$Res> {
  _$UpdateBomRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? version = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? effectiveDate = freezed,
    Object? expiryDate = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      effectiveDate: freezed == effectiveDate
          ? _value.effectiveDate
          : effectiveDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateBomRequestImplCopyWith<$Res>
    implements $UpdateBomRequestCopyWith<$Res> {
  factory _$$UpdateBomRequestImplCopyWith(_$UpdateBomRequestImpl value,
          $Res Function(_$UpdateBomRequestImpl) then) =
      __$$UpdateBomRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? version,
      String? description,
      String? status,
      DateTime? effectiveDate,
      DateTime? expiryDate,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$UpdateBomRequestImplCopyWithImpl<$Res>
    extends _$UpdateBomRequestCopyWithImpl<$Res, _$UpdateBomRequestImpl>
    implements _$$UpdateBomRequestImplCopyWith<$Res> {
  __$$UpdateBomRequestImplCopyWithImpl(_$UpdateBomRequestImpl _value,
      $Res Function(_$UpdateBomRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? version = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? effectiveDate = freezed,
    Object? expiryDate = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$UpdateBomRequestImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      effectiveDate: freezed == effectiveDate
          ? _value.effectiveDate
          : effectiveDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateBomRequestImpl implements _UpdateBomRequest {
  const _$UpdateBomRequestImpl(
      {this.name,
      this.version,
      this.description,
      this.status,
      this.effectiveDate,
      this.expiryDate,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$UpdateBomRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateBomRequestImplFromJson(json);

  @override
  final String? name;
  @override
  final String? version;
  @override
  final String? description;
  @override
  final String? status;
  @override
  final DateTime? effectiveDate;
  @override
  final DateTime? expiryDate;
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
    return 'UpdateBomRequest(name: $name, version: $version, description: $description, status: $status, effectiveDate: $effectiveDate, expiryDate: $expiryDate, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateBomRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.effectiveDate, effectiveDate) ||
                other.effectiveDate == effectiveDate) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      version,
      description,
      status,
      effectiveDate,
      expiryDate,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateBomRequestImplCopyWith<_$UpdateBomRequestImpl> get copyWith =>
      __$$UpdateBomRequestImplCopyWithImpl<_$UpdateBomRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateBomRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateBomRequest implements UpdateBomRequest {
  const factory _UpdateBomRequest(
      {final String? name,
      final String? version,
      final String? description,
      final String? status,
      final DateTime? effectiveDate,
      final DateTime? expiryDate,
      final Map<String, dynamic>? metadata}) = _$UpdateBomRequestImpl;

  factory _UpdateBomRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateBomRequestImpl.fromJson;

  @override
  String? get name;
  @override
  String? get version;
  @override
  String? get description;
  @override
  String? get status;
  @override
  DateTime? get effectiveDate;
  @override
  DateTime? get expiryDate;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$UpdateBomRequestImplCopyWith<_$UpdateBomRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkOrder _$WorkOrderFromJson(Map<String, dynamic> json) {
  return _WorkOrder.fromJson(json);
}

/// @nodoc
mixin _$WorkOrder {
  String get id => throw _privateConstructorUsedError;
  String get workOrderNumber => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // 'planned', 'released', 'in_progress', 'completed', 'cancelled'
  DateTime? get plannedStartDate => throw _privateConstructorUsedError;
  DateTime? get plannedEndDate => throw _privateConstructorUsedError;
  DateTime? get actualStartDate => throw _privateConstructorUsedError;
  DateTime? get actualEndDate => throw _privateConstructorUsedError;
  String? get bomId => throw _privateConstructorUsedError;
  String? get priority => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkOrderCopyWith<WorkOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkOrderCopyWith<$Res> {
  factory $WorkOrderCopyWith(WorkOrder value, $Res Function(WorkOrder) then) =
      _$WorkOrderCopyWithImpl<$Res, WorkOrder>;
  @useResult
  $Res call(
      {String id,
      String workOrderNumber,
      String itemId,
      double quantity,
      String status,
      DateTime? plannedStartDate,
      DateTime? plannedEndDate,
      DateTime? actualStartDate,
      DateTime? actualEndDate,
      String? bomId,
      String? priority,
      String? notes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$WorkOrderCopyWithImpl<$Res, $Val extends WorkOrder>
    implements $WorkOrderCopyWith<$Res> {
  _$WorkOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? workOrderNumber = null,
    Object? itemId = null,
    Object? quantity = null,
    Object? status = null,
    Object? plannedStartDate = freezed,
    Object? plannedEndDate = freezed,
    Object? actualStartDate = freezed,
    Object? actualEndDate = freezed,
    Object? bomId = freezed,
    Object? priority = freezed,
    Object? notes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      workOrderNumber: null == workOrderNumber
          ? _value.workOrderNumber
          : workOrderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      plannedStartDate: freezed == plannedStartDate
          ? _value.plannedStartDate
          : plannedStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      plannedEndDate: freezed == plannedEndDate
          ? _value.plannedEndDate
          : plannedEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualStartDate: freezed == actualStartDate
          ? _value.actualStartDate
          : actualStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualEndDate: freezed == actualEndDate
          ? _value.actualEndDate
          : actualEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bomId: freezed == bomId
          ? _value.bomId
          : bomId // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
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
abstract class _$$WorkOrderImplCopyWith<$Res>
    implements $WorkOrderCopyWith<$Res> {
  factory _$$WorkOrderImplCopyWith(
          _$WorkOrderImpl value, $Res Function(_$WorkOrderImpl) then) =
      __$$WorkOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String workOrderNumber,
      String itemId,
      double quantity,
      String status,
      DateTime? plannedStartDate,
      DateTime? plannedEndDate,
      DateTime? actualStartDate,
      DateTime? actualEndDate,
      String? bomId,
      String? priority,
      String? notes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$WorkOrderImplCopyWithImpl<$Res>
    extends _$WorkOrderCopyWithImpl<$Res, _$WorkOrderImpl>
    implements _$$WorkOrderImplCopyWith<$Res> {
  __$$WorkOrderImplCopyWithImpl(
      _$WorkOrderImpl _value, $Res Function(_$WorkOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? workOrderNumber = null,
    Object? itemId = null,
    Object? quantity = null,
    Object? status = null,
    Object? plannedStartDate = freezed,
    Object? plannedEndDate = freezed,
    Object? actualStartDate = freezed,
    Object? actualEndDate = freezed,
    Object? bomId = freezed,
    Object? priority = freezed,
    Object? notes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$WorkOrderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      workOrderNumber: null == workOrderNumber
          ? _value.workOrderNumber
          : workOrderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      plannedStartDate: freezed == plannedStartDate
          ? _value.plannedStartDate
          : plannedStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      plannedEndDate: freezed == plannedEndDate
          ? _value.plannedEndDate
          : plannedEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualStartDate: freezed == actualStartDate
          ? _value.actualStartDate
          : actualStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualEndDate: freezed == actualEndDate
          ? _value.actualEndDate
          : actualEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bomId: freezed == bomId
          ? _value.bomId
          : bomId // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
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
class _$WorkOrderImpl implements _WorkOrder {
  const _$WorkOrderImpl(
      {required this.id,
      required this.workOrderNumber,
      required this.itemId,
      required this.quantity,
      required this.status,
      this.plannedStartDate,
      this.plannedEndDate,
      this.actualStartDate,
      this.actualEndDate,
      this.bomId,
      this.priority,
      this.notes,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$WorkOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkOrderImplFromJson(json);

  @override
  final String id;
  @override
  final String workOrderNumber;
  @override
  final String itemId;
  @override
  final double quantity;
  @override
  final String status;
// 'planned', 'released', 'in_progress', 'completed', 'cancelled'
  @override
  final DateTime? plannedStartDate;
  @override
  final DateTime? plannedEndDate;
  @override
  final DateTime? actualStartDate;
  @override
  final DateTime? actualEndDate;
  @override
  final String? bomId;
  @override
  final String? priority;
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
    return 'WorkOrder(id: $id, workOrderNumber: $workOrderNumber, itemId: $itemId, quantity: $quantity, status: $status, plannedStartDate: $plannedStartDate, plannedEndDate: $plannedEndDate, actualStartDate: $actualStartDate, actualEndDate: $actualEndDate, bomId: $bomId, priority: $priority, notes: $notes, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkOrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.workOrderNumber, workOrderNumber) ||
                other.workOrderNumber == workOrderNumber) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.plannedStartDate, plannedStartDate) ||
                other.plannedStartDate == plannedStartDate) &&
            (identical(other.plannedEndDate, plannedEndDate) ||
                other.plannedEndDate == plannedEndDate) &&
            (identical(other.actualStartDate, actualStartDate) ||
                other.actualStartDate == actualStartDate) &&
            (identical(other.actualEndDate, actualEndDate) ||
                other.actualEndDate == actualEndDate) &&
            (identical(other.bomId, bomId) || other.bomId == bomId) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      workOrderNumber,
      itemId,
      quantity,
      status,
      plannedStartDate,
      plannedEndDate,
      actualStartDate,
      actualEndDate,
      bomId,
      priority,
      notes,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkOrderImplCopyWith<_$WorkOrderImpl> get copyWith =>
      __$$WorkOrderImplCopyWithImpl<_$WorkOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkOrderImplToJson(
      this,
    );
  }
}

abstract class _WorkOrder implements WorkOrder {
  const factory _WorkOrder(
      {required final String id,
      required final String workOrderNumber,
      required final String itemId,
      required final double quantity,
      required final String status,
      final DateTime? plannedStartDate,
      final DateTime? plannedEndDate,
      final DateTime? actualStartDate,
      final DateTime? actualEndDate,
      final String? bomId,
      final String? priority,
      final String? notes,
      final Map<String, dynamic>? metadata}) = _$WorkOrderImpl;

  factory _WorkOrder.fromJson(Map<String, dynamic> json) =
      _$WorkOrderImpl.fromJson;

  @override
  String get id;
  @override
  String get workOrderNumber;
  @override
  String get itemId;
  @override
  double get quantity;
  @override
  String get status;
  @override // 'planned', 'released', 'in_progress', 'completed', 'cancelled'
  DateTime? get plannedStartDate;
  @override
  DateTime? get plannedEndDate;
  @override
  DateTime? get actualStartDate;
  @override
  DateTime? get actualEndDate;
  @override
  String? get bomId;
  @override
  String? get priority;
  @override
  String? get notes;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$WorkOrderImplCopyWith<_$WorkOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateProductionOrderMaterialRequest
    _$CreateProductionOrderMaterialRequestFromJson(Map<String, dynamic> json) {
  return _CreateProductionOrderMaterialRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateProductionOrderMaterialRequest {
  String get itemId => throw _privateConstructorUsedError;
  double get requiredQuantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateProductionOrderMaterialRequestCopyWith<
          CreateProductionOrderMaterialRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProductionOrderMaterialRequestCopyWith<$Res> {
  factory $CreateProductionOrderMaterialRequestCopyWith(
          CreateProductionOrderMaterialRequest value,
          $Res Function(CreateProductionOrderMaterialRequest) then) =
      _$CreateProductionOrderMaterialRequestCopyWithImpl<$Res,
          CreateProductionOrderMaterialRequest>;
  @useResult
  $Res call({String itemId, double requiredQuantity});
}

/// @nodoc
class _$CreateProductionOrderMaterialRequestCopyWithImpl<$Res,
        $Val extends CreateProductionOrderMaterialRequest>
    implements $CreateProductionOrderMaterialRequestCopyWith<$Res> {
  _$CreateProductionOrderMaterialRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? requiredQuantity = null,
  }) {
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      requiredQuantity: null == requiredQuantity
          ? _value.requiredQuantity
          : requiredQuantity // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateProductionOrderMaterialRequestImplCopyWith<$Res>
    implements $CreateProductionOrderMaterialRequestCopyWith<$Res> {
  factory _$$CreateProductionOrderMaterialRequestImplCopyWith(
          _$CreateProductionOrderMaterialRequestImpl value,
          $Res Function(_$CreateProductionOrderMaterialRequestImpl) then) =
      __$$CreateProductionOrderMaterialRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String itemId, double requiredQuantity});
}

/// @nodoc
class __$$CreateProductionOrderMaterialRequestImplCopyWithImpl<$Res>
    extends _$CreateProductionOrderMaterialRequestCopyWithImpl<$Res,
        _$CreateProductionOrderMaterialRequestImpl>
    implements _$$CreateProductionOrderMaterialRequestImplCopyWith<$Res> {
  __$$CreateProductionOrderMaterialRequestImplCopyWithImpl(
      _$CreateProductionOrderMaterialRequestImpl _value,
      $Res Function(_$CreateProductionOrderMaterialRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? requiredQuantity = null,
  }) {
    return _then(_$CreateProductionOrderMaterialRequestImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      requiredQuantity: null == requiredQuantity
          ? _value.requiredQuantity
          : requiredQuantity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateProductionOrderMaterialRequestImpl
    implements _CreateProductionOrderMaterialRequest {
  const _$CreateProductionOrderMaterialRequestImpl(
      {required this.itemId, required this.requiredQuantity});

  factory _$CreateProductionOrderMaterialRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateProductionOrderMaterialRequestImplFromJson(json);

  @override
  final String itemId;
  @override
  final double requiredQuantity;

  @override
  String toString() {
    return 'CreateProductionOrderMaterialRequest(itemId: $itemId, requiredQuantity: $requiredQuantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProductionOrderMaterialRequestImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.requiredQuantity, requiredQuantity) ||
                other.requiredQuantity == requiredQuantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, itemId, requiredQuantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProductionOrderMaterialRequestImplCopyWith<
          _$CreateProductionOrderMaterialRequestImpl>
      get copyWith => __$$CreateProductionOrderMaterialRequestImplCopyWithImpl<
          _$CreateProductionOrderMaterialRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateProductionOrderMaterialRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateProductionOrderMaterialRequest
    implements CreateProductionOrderMaterialRequest {
  const factory _CreateProductionOrderMaterialRequest(
          {required final String itemId,
          required final double requiredQuantity}) =
      _$CreateProductionOrderMaterialRequestImpl;

  factory _CreateProductionOrderMaterialRequest.fromJson(
          Map<String, dynamic> json) =
      _$CreateProductionOrderMaterialRequestImpl.fromJson;

  @override
  String get itemId;
  @override
  double get requiredQuantity;
  @override
  @JsonKey(ignore: true)
  _$$CreateProductionOrderMaterialRequestImplCopyWith<
          _$CreateProductionOrderMaterialRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateProductionOrderRequest _$CreateProductionOrderRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateProductionOrderRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateProductionOrderRequest {
  String get itemId => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  List<CreateProductionOrderMaterialRequest> get materials =>
      throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateProductionOrderRequestCopyWith<CreateProductionOrderRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProductionOrderRequestCopyWith<$Res> {
  factory $CreateProductionOrderRequestCopyWith(
          CreateProductionOrderRequest value,
          $Res Function(CreateProductionOrderRequest) then) =
      _$CreateProductionOrderRequestCopyWithImpl<$Res,
          CreateProductionOrderRequest>;
  @useResult
  $Res call(
      {String itemId,
      double quantity,
      DateTime startDate,
      List<CreateProductionOrderMaterialRequest> materials,
      DateTime? endDate,
      String? notes});
}

/// @nodoc
class _$CreateProductionOrderRequestCopyWithImpl<$Res,
        $Val extends CreateProductionOrderRequest>
    implements $CreateProductionOrderRequestCopyWith<$Res> {
  _$CreateProductionOrderRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? quantity = null,
    Object? startDate = null,
    Object? materials = null,
    Object? endDate = freezed,
    Object? notes = freezed,
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
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      materials: null == materials
          ? _value.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<CreateProductionOrderMaterialRequest>,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateProductionOrderRequestImplCopyWith<$Res>
    implements $CreateProductionOrderRequestCopyWith<$Res> {
  factory _$$CreateProductionOrderRequestImplCopyWith(
          _$CreateProductionOrderRequestImpl value,
          $Res Function(_$CreateProductionOrderRequestImpl) then) =
      __$$CreateProductionOrderRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String itemId,
      double quantity,
      DateTime startDate,
      List<CreateProductionOrderMaterialRequest> materials,
      DateTime? endDate,
      String? notes});
}

/// @nodoc
class __$$CreateProductionOrderRequestImplCopyWithImpl<$Res>
    extends _$CreateProductionOrderRequestCopyWithImpl<$Res,
        _$CreateProductionOrderRequestImpl>
    implements _$$CreateProductionOrderRequestImplCopyWith<$Res> {
  __$$CreateProductionOrderRequestImplCopyWithImpl(
      _$CreateProductionOrderRequestImpl _value,
      $Res Function(_$CreateProductionOrderRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? quantity = null,
    Object? startDate = null,
    Object? materials = null,
    Object? endDate = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$CreateProductionOrderRequestImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      materials: null == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<CreateProductionOrderMaterialRequest>,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateProductionOrderRequestImpl
    implements _CreateProductionOrderRequest {
  const _$CreateProductionOrderRequestImpl(
      {required this.itemId,
      required this.quantity,
      required this.startDate,
      required final List<CreateProductionOrderMaterialRequest> materials,
      this.endDate,
      this.notes})
      : _materials = materials;

  factory _$CreateProductionOrderRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateProductionOrderRequestImplFromJson(json);

  @override
  final String itemId;
  @override
  final double quantity;
  @override
  final DateTime startDate;
  final List<CreateProductionOrderMaterialRequest> _materials;
  @override
  List<CreateProductionOrderMaterialRequest> get materials {
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materials);
  }

  @override
  final DateTime? endDate;
  @override
  final String? notes;

  @override
  String toString() {
    return 'CreateProductionOrderRequest(itemId: $itemId, quantity: $quantity, startDate: $startDate, materials: $materials, endDate: $endDate, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProductionOrderRequestImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, itemId, quantity, startDate,
      const DeepCollectionEquality().hash(_materials), endDate, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProductionOrderRequestImplCopyWith<
          _$CreateProductionOrderRequestImpl>
      get copyWith => __$$CreateProductionOrderRequestImplCopyWithImpl<
          _$CreateProductionOrderRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateProductionOrderRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateProductionOrderRequest
    implements CreateProductionOrderRequest {
  const factory _CreateProductionOrderRequest(
      {required final String itemId,
      required final double quantity,
      required final DateTime startDate,
      required final List<CreateProductionOrderMaterialRequest> materials,
      final DateTime? endDate,
      final String? notes}) = _$CreateProductionOrderRequestImpl;

  factory _CreateProductionOrderRequest.fromJson(Map<String, dynamic> json) =
      _$CreateProductionOrderRequestImpl.fromJson;

  @override
  String get itemId;
  @override
  double get quantity;
  @override
  DateTime get startDate;
  @override
  List<CreateProductionOrderMaterialRequest> get materials;
  @override
  DateTime? get endDate;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$CreateProductionOrderRequestImplCopyWith<
          _$CreateProductionOrderRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductionOrder _$ProductionOrderFromJson(Map<String, dynamic> json) {
  return _ProductionOrder.fromJson(json);
}

/// @nodoc
mixin _$ProductionOrder {
  String get id => throw _privateConstructorUsedError;
  String get orderNumber => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  String get itemName => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  List<ProductionOrderMaterial> get materials =>
      throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get organizationId => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductionOrderCopyWith<ProductionOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionOrderCopyWith<$Res> {
  factory $ProductionOrderCopyWith(
          ProductionOrder value, $Res Function(ProductionOrder) then) =
      _$ProductionOrderCopyWithImpl<$Res, ProductionOrder>;
  @useResult
  $Res call(
      {String id,
      String orderNumber,
      String itemId,
      String itemName,
      double quantity,
      String status,
      DateTime startDate,
      List<ProductionOrderMaterial> materials,
      DateTime createdAt,
      DateTime? endDate,
      String? notes,
      String? organizationId,
      DateTime? updatedAt});
}

/// @nodoc
class _$ProductionOrderCopyWithImpl<$Res, $Val extends ProductionOrder>
    implements $ProductionOrderCopyWith<$Res> {
  _$ProductionOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderNumber = null,
    Object? itemId = null,
    Object? itemName = null,
    Object? quantity = null,
    Object? status = null,
    Object? startDate = null,
    Object? materials = null,
    Object? createdAt = null,
    Object? endDate = freezed,
    Object? notes = freezed,
    Object? organizationId = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderNumber: null == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      materials: null == materials
          ? _value.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<ProductionOrderMaterial>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductionOrderImplCopyWith<$Res>
    implements $ProductionOrderCopyWith<$Res> {
  factory _$$ProductionOrderImplCopyWith(_$ProductionOrderImpl value,
          $Res Function(_$ProductionOrderImpl) then) =
      __$$ProductionOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String orderNumber,
      String itemId,
      String itemName,
      double quantity,
      String status,
      DateTime startDate,
      List<ProductionOrderMaterial> materials,
      DateTime createdAt,
      DateTime? endDate,
      String? notes,
      String? organizationId,
      DateTime? updatedAt});
}

/// @nodoc
class __$$ProductionOrderImplCopyWithImpl<$Res>
    extends _$ProductionOrderCopyWithImpl<$Res, _$ProductionOrderImpl>
    implements _$$ProductionOrderImplCopyWith<$Res> {
  __$$ProductionOrderImplCopyWithImpl(
      _$ProductionOrderImpl _value, $Res Function(_$ProductionOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderNumber = null,
    Object? itemId = null,
    Object? itemName = null,
    Object? quantity = null,
    Object? status = null,
    Object? startDate = null,
    Object? materials = null,
    Object? createdAt = null,
    Object? endDate = freezed,
    Object? notes = freezed,
    Object? organizationId = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ProductionOrderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderNumber: null == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      materials: null == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<ProductionOrderMaterial>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductionOrderImpl implements _ProductionOrder {
  const _$ProductionOrderImpl(
      {required this.id,
      required this.orderNumber,
      required this.itemId,
      required this.itemName,
      required this.quantity,
      required this.status,
      required this.startDate,
      required final List<ProductionOrderMaterial> materials,
      required this.createdAt,
      this.endDate,
      this.notes,
      this.organizationId,
      this.updatedAt})
      : _materials = materials;

  factory _$ProductionOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductionOrderImplFromJson(json);

  @override
  final String id;
  @override
  final String orderNumber;
  @override
  final String itemId;
  @override
  final String itemName;
  @override
  final double quantity;
  @override
  final String status;
  @override
  final DateTime startDate;
  final List<ProductionOrderMaterial> _materials;
  @override
  List<ProductionOrderMaterial> get materials {
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materials);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime? endDate;
  @override
  final String? notes;
  @override
  final String? organizationId;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ProductionOrder(id: $id, orderNumber: $orderNumber, itemId: $itemId, itemName: $itemName, quantity: $quantity, status: $status, startDate: $startDate, materials: $materials, createdAt: $createdAt, endDate: $endDate, notes: $notes, organizationId: $organizationId, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductionOrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      orderNumber,
      itemId,
      itemName,
      quantity,
      status,
      startDate,
      const DeepCollectionEquality().hash(_materials),
      createdAt,
      endDate,
      notes,
      organizationId,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductionOrderImplCopyWith<_$ProductionOrderImpl> get copyWith =>
      __$$ProductionOrderImplCopyWithImpl<_$ProductionOrderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductionOrderImplToJson(
      this,
    );
  }
}

abstract class _ProductionOrder implements ProductionOrder {
  const factory _ProductionOrder(
      {required final String id,
      required final String orderNumber,
      required final String itemId,
      required final String itemName,
      required final double quantity,
      required final String status,
      required final DateTime startDate,
      required final List<ProductionOrderMaterial> materials,
      required final DateTime createdAt,
      final DateTime? endDate,
      final String? notes,
      final String? organizationId,
      final DateTime? updatedAt}) = _$ProductionOrderImpl;

  factory _ProductionOrder.fromJson(Map<String, dynamic> json) =
      _$ProductionOrderImpl.fromJson;

  @override
  String get id;
  @override
  String get orderNumber;
  @override
  String get itemId;
  @override
  String get itemName;
  @override
  double get quantity;
  @override
  String get status;
  @override
  DateTime get startDate;
  @override
  List<ProductionOrderMaterial> get materials;
  @override
  DateTime get createdAt;
  @override
  DateTime? get endDate;
  @override
  String? get notes;
  @override
  String? get organizationId;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ProductionOrderImplCopyWith<_$ProductionOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductionOrderMaterial _$ProductionOrderMaterialFromJson(
    Map<String, dynamic> json) {
  return _ProductionOrderMaterial.fromJson(json);
}

/// @nodoc
mixin _$ProductionOrderMaterial {
  String get id => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  String get itemName => throw _privateConstructorUsedError;
  double get requiredQuantity => throw _privateConstructorUsedError;
  double get consumedQuantity => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductionOrderMaterialCopyWith<ProductionOrderMaterial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionOrderMaterialCopyWith<$Res> {
  factory $ProductionOrderMaterialCopyWith(ProductionOrderMaterial value,
          $Res Function(ProductionOrderMaterial) then) =
      _$ProductionOrderMaterialCopyWithImpl<$Res, ProductionOrderMaterial>;
  @useResult
  $Res call(
      {String id,
      String itemId,
      String itemName,
      double requiredQuantity,
      double consumedQuantity,
      String? unit});
}

/// @nodoc
class _$ProductionOrderMaterialCopyWithImpl<$Res,
        $Val extends ProductionOrderMaterial>
    implements $ProductionOrderMaterialCopyWith<$Res> {
  _$ProductionOrderMaterialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? itemId = null,
    Object? itemName = null,
    Object? requiredQuantity = null,
    Object? consumedQuantity = null,
    Object? unit = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      requiredQuantity: null == requiredQuantity
          ? _value.requiredQuantity
          : requiredQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      consumedQuantity: null == consumedQuantity
          ? _value.consumedQuantity
          : consumedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductionOrderMaterialImplCopyWith<$Res>
    implements $ProductionOrderMaterialCopyWith<$Res> {
  factory _$$ProductionOrderMaterialImplCopyWith(
          _$ProductionOrderMaterialImpl value,
          $Res Function(_$ProductionOrderMaterialImpl) then) =
      __$$ProductionOrderMaterialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String itemId,
      String itemName,
      double requiredQuantity,
      double consumedQuantity,
      String? unit});
}

/// @nodoc
class __$$ProductionOrderMaterialImplCopyWithImpl<$Res>
    extends _$ProductionOrderMaterialCopyWithImpl<$Res,
        _$ProductionOrderMaterialImpl>
    implements _$$ProductionOrderMaterialImplCopyWith<$Res> {
  __$$ProductionOrderMaterialImplCopyWithImpl(
      _$ProductionOrderMaterialImpl _value,
      $Res Function(_$ProductionOrderMaterialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? itemId = null,
    Object? itemName = null,
    Object? requiredQuantity = null,
    Object? consumedQuantity = null,
    Object? unit = freezed,
  }) {
    return _then(_$ProductionOrderMaterialImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      requiredQuantity: null == requiredQuantity
          ? _value.requiredQuantity
          : requiredQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      consumedQuantity: null == consumedQuantity
          ? _value.consumedQuantity
          : consumedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductionOrderMaterialImpl implements _ProductionOrderMaterial {
  const _$ProductionOrderMaterialImpl(
      {required this.id,
      required this.itemId,
      required this.itemName,
      required this.requiredQuantity,
      required this.consumedQuantity,
      this.unit});

  factory _$ProductionOrderMaterialImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductionOrderMaterialImplFromJson(json);

  @override
  final String id;
  @override
  final String itemId;
  @override
  final String itemName;
  @override
  final double requiredQuantity;
  @override
  final double consumedQuantity;
  @override
  final String? unit;

  @override
  String toString() {
    return 'ProductionOrderMaterial(id: $id, itemId: $itemId, itemName: $itemName, requiredQuantity: $requiredQuantity, consumedQuantity: $consumedQuantity, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductionOrderMaterialImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.requiredQuantity, requiredQuantity) ||
                other.requiredQuantity == requiredQuantity) &&
            (identical(other.consumedQuantity, consumedQuantity) ||
                other.consumedQuantity == consumedQuantity) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, itemId, itemName,
      requiredQuantity, consumedQuantity, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductionOrderMaterialImplCopyWith<_$ProductionOrderMaterialImpl>
      get copyWith => __$$ProductionOrderMaterialImplCopyWithImpl<
          _$ProductionOrderMaterialImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductionOrderMaterialImplToJson(
      this,
    );
  }
}

abstract class _ProductionOrderMaterial implements ProductionOrderMaterial {
  const factory _ProductionOrderMaterial(
      {required final String id,
      required final String itemId,
      required final String itemName,
      required final double requiredQuantity,
      required final double consumedQuantity,
      final String? unit}) = _$ProductionOrderMaterialImpl;

  factory _ProductionOrderMaterial.fromJson(Map<String, dynamic> json) =
      _$ProductionOrderMaterialImpl.fromJson;

  @override
  String get id;
  @override
  String get itemId;
  @override
  String get itemName;
  @override
  double get requiredQuantity;
  @override
  double get consumedQuantity;
  @override
  String? get unit;
  @override
  @JsonKey(ignore: true)
  _$$ProductionOrderMaterialImplCopyWith<_$ProductionOrderMaterialImpl>
      get copyWith => throw _privateConstructorUsedError;
}
