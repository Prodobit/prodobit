// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asset_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Asset _$AssetFromJson(Map<String, dynamic> json) {
  return _Asset.fromJson(json);
}

/// @nodoc
mixin _$Asset {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get serialNumber => throw _privateConstructorUsedError;
  Money? get purchasePrice => throw _privateConstructorUsedError;
  DateTime? get purchaseDate => throw _privateConstructorUsedError;
  DateTime? get warrantyExpiry => throw _privateConstructorUsedError;
  String? get supplierId => throw _privateConstructorUsedError;
  String? get supplierName => throw _privateConstructorUsedError;
  String? get organizationId => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssetCopyWith<Asset> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetCopyWith<$Res> {
  factory $AssetCopyWith(Asset value, $Res Function(Asset) then) =
      _$AssetCopyWithImpl<$Res, Asset>;
  @useResult
  $Res call(
      {String id,
      String name,
      String code,
      String category,
      String status,
      DateTime createdAt,
      String? description,
      String? location,
      String? serialNumber,
      Money? purchasePrice,
      DateTime? purchaseDate,
      DateTime? warrantyExpiry,
      String? supplierId,
      String? supplierName,
      String? organizationId,
      bool? isActive,
      DateTime? updatedAt,
      Map<String, dynamic>? metadata});

  $MoneyCopyWith<$Res>? get purchasePrice;
}

/// @nodoc
class _$AssetCopyWithImpl<$Res, $Val extends Asset>
    implements $AssetCopyWith<$Res> {
  _$AssetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? category = null,
    Object? status = null,
    Object? createdAt = null,
    Object? description = freezed,
    Object? location = freezed,
    Object? serialNumber = freezed,
    Object? purchasePrice = freezed,
    Object? purchaseDate = freezed,
    Object? warrantyExpiry = freezed,
    Object? supplierId = freezed,
    Object? supplierName = freezed,
    Object? organizationId = freezed,
    Object? isActive = freezed,
    Object? updatedAt = freezed,
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
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      purchasePrice: freezed == purchasePrice
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      purchaseDate: freezed == purchaseDate
          ? _value.purchaseDate
          : purchaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      warrantyExpiry: freezed == warrantyExpiry
          ? _value.warrantyExpiry
          : warrantyExpiry // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      supplierId: freezed == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierName: freezed == supplierName
          ? _value.supplierName
          : supplierName // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get purchasePrice {
    if (_value.purchasePrice == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.purchasePrice!, (value) {
      return _then(_value.copyWith(purchasePrice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AssetImplCopyWith<$Res> implements $AssetCopyWith<$Res> {
  factory _$$AssetImplCopyWith(
          _$AssetImpl value, $Res Function(_$AssetImpl) then) =
      __$$AssetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String code,
      String category,
      String status,
      DateTime createdAt,
      String? description,
      String? location,
      String? serialNumber,
      Money? purchasePrice,
      DateTime? purchaseDate,
      DateTime? warrantyExpiry,
      String? supplierId,
      String? supplierName,
      String? organizationId,
      bool? isActive,
      DateTime? updatedAt,
      Map<String, dynamic>? metadata});

  @override
  $MoneyCopyWith<$Res>? get purchasePrice;
}

/// @nodoc
class __$$AssetImplCopyWithImpl<$Res>
    extends _$AssetCopyWithImpl<$Res, _$AssetImpl>
    implements _$$AssetImplCopyWith<$Res> {
  __$$AssetImplCopyWithImpl(
      _$AssetImpl _value, $Res Function(_$AssetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? category = null,
    Object? status = null,
    Object? createdAt = null,
    Object? description = freezed,
    Object? location = freezed,
    Object? serialNumber = freezed,
    Object? purchasePrice = freezed,
    Object? purchaseDate = freezed,
    Object? warrantyExpiry = freezed,
    Object? supplierId = freezed,
    Object? supplierName = freezed,
    Object? organizationId = freezed,
    Object? isActive = freezed,
    Object? updatedAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$AssetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      purchasePrice: freezed == purchasePrice
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      purchaseDate: freezed == purchaseDate
          ? _value.purchaseDate
          : purchaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      warrantyExpiry: freezed == warrantyExpiry
          ? _value.warrantyExpiry
          : warrantyExpiry // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      supplierId: freezed == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String?,
      supplierName: freezed == supplierName
          ? _value.supplierName
          : supplierName // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
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
class _$AssetImpl implements _Asset {
  const _$AssetImpl(
      {required this.id,
      required this.name,
      required this.code,
      required this.category,
      required this.status,
      required this.createdAt,
      this.description,
      this.location,
      this.serialNumber,
      this.purchasePrice,
      this.purchaseDate,
      this.warrantyExpiry,
      this.supplierId,
      this.supplierName,
      this.organizationId,
      this.isActive,
      this.updatedAt,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$AssetImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssetImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String code;
  @override
  final String category;
  @override
  final String status;
  @override
  final DateTime createdAt;
  @override
  final String? description;
  @override
  final String? location;
  @override
  final String? serialNumber;
  @override
  final Money? purchasePrice;
  @override
  final DateTime? purchaseDate;
  @override
  final DateTime? warrantyExpiry;
  @override
  final String? supplierId;
  @override
  final String? supplierName;
  @override
  final String? organizationId;
  @override
  final bool? isActive;
  @override
  final DateTime? updatedAt;
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
    return 'Asset(id: $id, name: $name, code: $code, category: $category, status: $status, createdAt: $createdAt, description: $description, location: $location, serialNumber: $serialNumber, purchasePrice: $purchasePrice, purchaseDate: $purchaseDate, warrantyExpiry: $warrantyExpiry, supplierId: $supplierId, supplierName: $supplierName, organizationId: $organizationId, isActive: $isActive, updatedAt: $updatedAt, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.purchasePrice, purchasePrice) ||
                other.purchasePrice == purchasePrice) &&
            (identical(other.purchaseDate, purchaseDate) ||
                other.purchaseDate == purchaseDate) &&
            (identical(other.warrantyExpiry, warrantyExpiry) ||
                other.warrantyExpiry == warrantyExpiry) &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.supplierName, supplierName) ||
                other.supplierName == supplierName) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      code,
      category,
      status,
      createdAt,
      description,
      location,
      serialNumber,
      purchasePrice,
      purchaseDate,
      warrantyExpiry,
      supplierId,
      supplierName,
      organizationId,
      isActive,
      updatedAt,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssetImplCopyWith<_$AssetImpl> get copyWith =>
      __$$AssetImplCopyWithImpl<_$AssetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssetImplToJson(
      this,
    );
  }
}

abstract class _Asset implements Asset {
  const factory _Asset(
      {required final String id,
      required final String name,
      required final String code,
      required final String category,
      required final String status,
      required final DateTime createdAt,
      final String? description,
      final String? location,
      final String? serialNumber,
      final Money? purchasePrice,
      final DateTime? purchaseDate,
      final DateTime? warrantyExpiry,
      final String? supplierId,
      final String? supplierName,
      final String? organizationId,
      final bool? isActive,
      final DateTime? updatedAt,
      final Map<String, dynamic>? metadata}) = _$AssetImpl;

  factory _Asset.fromJson(Map<String, dynamic> json) = _$AssetImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get code;
  @override
  String get category;
  @override
  String get status;
  @override
  DateTime get createdAt;
  @override
  String? get description;
  @override
  String? get location;
  @override
  String? get serialNumber;
  @override
  Money? get purchasePrice;
  @override
  DateTime? get purchaseDate;
  @override
  DateTime? get warrantyExpiry;
  @override
  String? get supplierId;
  @override
  String? get supplierName;
  @override
  String? get organizationId;
  @override
  bool? get isActive;
  @override
  DateTime? get updatedAt;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$AssetImplCopyWith<_$AssetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateAssetRequest _$CreateAssetRequestFromJson(Map<String, dynamic> json) {
  return _CreateAssetRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateAssetRequest {
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get serialNumber => throw _privateConstructorUsedError;
  Money? get purchasePrice => throw _privateConstructorUsedError;
  DateTime? get purchaseDate => throw _privateConstructorUsedError;
  DateTime? get warrantyExpiry => throw _privateConstructorUsedError;
  String? get supplierId => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateAssetRequestCopyWith<CreateAssetRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAssetRequestCopyWith<$Res> {
  factory $CreateAssetRequestCopyWith(
          CreateAssetRequest value, $Res Function(CreateAssetRequest) then) =
      _$CreateAssetRequestCopyWithImpl<$Res, CreateAssetRequest>;
  @useResult
  $Res call(
      {String name,
      String code,
      String category,
      String? description,
      String? location,
      String? serialNumber,
      Money? purchasePrice,
      DateTime? purchaseDate,
      DateTime? warrantyExpiry,
      String? supplierId,
      Map<String, dynamic>? metadata});

  $MoneyCopyWith<$Res>? get purchasePrice;
}

/// @nodoc
class _$CreateAssetRequestCopyWithImpl<$Res, $Val extends CreateAssetRequest>
    implements $CreateAssetRequestCopyWith<$Res> {
  _$CreateAssetRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? code = null,
    Object? category = null,
    Object? description = freezed,
    Object? location = freezed,
    Object? serialNumber = freezed,
    Object? purchasePrice = freezed,
    Object? purchaseDate = freezed,
    Object? warrantyExpiry = freezed,
    Object? supplierId = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      purchasePrice: freezed == purchasePrice
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      purchaseDate: freezed == purchaseDate
          ? _value.purchaseDate
          : purchaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      warrantyExpiry: freezed == warrantyExpiry
          ? _value.warrantyExpiry
          : warrantyExpiry // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      supplierId: freezed == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get purchasePrice {
    if (_value.purchasePrice == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.purchasePrice!, (value) {
      return _then(_value.copyWith(purchasePrice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateAssetRequestImplCopyWith<$Res>
    implements $CreateAssetRequestCopyWith<$Res> {
  factory _$$CreateAssetRequestImplCopyWith(_$CreateAssetRequestImpl value,
          $Res Function(_$CreateAssetRequestImpl) then) =
      __$$CreateAssetRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String code,
      String category,
      String? description,
      String? location,
      String? serialNumber,
      Money? purchasePrice,
      DateTime? purchaseDate,
      DateTime? warrantyExpiry,
      String? supplierId,
      Map<String, dynamic>? metadata});

  @override
  $MoneyCopyWith<$Res>? get purchasePrice;
}

/// @nodoc
class __$$CreateAssetRequestImplCopyWithImpl<$Res>
    extends _$CreateAssetRequestCopyWithImpl<$Res, _$CreateAssetRequestImpl>
    implements _$$CreateAssetRequestImplCopyWith<$Res> {
  __$$CreateAssetRequestImplCopyWithImpl(_$CreateAssetRequestImpl _value,
      $Res Function(_$CreateAssetRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? code = null,
    Object? category = null,
    Object? description = freezed,
    Object? location = freezed,
    Object? serialNumber = freezed,
    Object? purchasePrice = freezed,
    Object? purchaseDate = freezed,
    Object? warrantyExpiry = freezed,
    Object? supplierId = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$CreateAssetRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      purchasePrice: freezed == purchasePrice
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      purchaseDate: freezed == purchaseDate
          ? _value.purchaseDate
          : purchaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      warrantyExpiry: freezed == warrantyExpiry
          ? _value.warrantyExpiry
          : warrantyExpiry // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      supplierId: freezed == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
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
class _$CreateAssetRequestImpl implements _CreateAssetRequest {
  const _$CreateAssetRequestImpl(
      {required this.name,
      required this.code,
      required this.category,
      this.description,
      this.location,
      this.serialNumber,
      this.purchasePrice,
      this.purchaseDate,
      this.warrantyExpiry,
      this.supplierId,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$CreateAssetRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateAssetRequestImplFromJson(json);

  @override
  final String name;
  @override
  final String code;
  @override
  final String category;
  @override
  final String? description;
  @override
  final String? location;
  @override
  final String? serialNumber;
  @override
  final Money? purchasePrice;
  @override
  final DateTime? purchaseDate;
  @override
  final DateTime? warrantyExpiry;
  @override
  final String? supplierId;
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
    return 'CreateAssetRequest(name: $name, code: $code, category: $category, description: $description, location: $location, serialNumber: $serialNumber, purchasePrice: $purchasePrice, purchaseDate: $purchaseDate, warrantyExpiry: $warrantyExpiry, supplierId: $supplierId, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAssetRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.purchasePrice, purchasePrice) ||
                other.purchasePrice == purchasePrice) &&
            (identical(other.purchaseDate, purchaseDate) ||
                other.purchaseDate == purchaseDate) &&
            (identical(other.warrantyExpiry, warrantyExpiry) ||
                other.warrantyExpiry == warrantyExpiry) &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      code,
      category,
      description,
      location,
      serialNumber,
      purchasePrice,
      purchaseDate,
      warrantyExpiry,
      supplierId,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAssetRequestImplCopyWith<_$CreateAssetRequestImpl> get copyWith =>
      __$$CreateAssetRequestImplCopyWithImpl<_$CreateAssetRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateAssetRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateAssetRequest implements CreateAssetRequest {
  const factory _CreateAssetRequest(
      {required final String name,
      required final String code,
      required final String category,
      final String? description,
      final String? location,
      final String? serialNumber,
      final Money? purchasePrice,
      final DateTime? purchaseDate,
      final DateTime? warrantyExpiry,
      final String? supplierId,
      final Map<String, dynamic>? metadata}) = _$CreateAssetRequestImpl;

  factory _CreateAssetRequest.fromJson(Map<String, dynamic> json) =
      _$CreateAssetRequestImpl.fromJson;

  @override
  String get name;
  @override
  String get code;
  @override
  String get category;
  @override
  String? get description;
  @override
  String? get location;
  @override
  String? get serialNumber;
  @override
  Money? get purchasePrice;
  @override
  DateTime? get purchaseDate;
  @override
  DateTime? get warrantyExpiry;
  @override
  String? get supplierId;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$CreateAssetRequestImplCopyWith<_$CreateAssetRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
