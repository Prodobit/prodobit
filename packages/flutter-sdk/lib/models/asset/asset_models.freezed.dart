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
  String get tenantId => throw _privateConstructorUsedError;
  String get locationId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // 'active', 'inactive', 'maintenance', 'retired'
  DateTime get insertedAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String? get parentAssetId => throw _privateConstructorUsedError;
  String? get assetTypeId => throw _privateConstructorUsedError;
  String? get serialNumber => throw _privateConstructorUsedError;
  String? get qrCode => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

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
      String tenantId,
      String locationId,
      String name,
      String code,
      String status,
      DateTime insertedAt,
      DateTime updatedAt,
      String? parentAssetId,
      String? assetTypeId,
      String? serialNumber,
      String? qrCode,
      String? imageUrl,
      DateTime? deletedAt});
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
    Object? tenantId = null,
    Object? locationId = null,
    Object? name = null,
    Object? code = null,
    Object? status = null,
    Object? insertedAt = null,
    Object? updatedAt = null,
    Object? parentAssetId = freezed,
    Object? assetTypeId = freezed,
    Object? serialNumber = freezed,
    Object? qrCode = freezed,
    Object? imageUrl = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: null == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      insertedAt: null == insertedAt
          ? _value.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      parentAssetId: freezed == parentAssetId
          ? _value.parentAssetId
          : parentAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
      assetTypeId: freezed == assetTypeId
          ? _value.assetTypeId
          : assetTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
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
      String tenantId,
      String locationId,
      String name,
      String code,
      String status,
      DateTime insertedAt,
      DateTime updatedAt,
      String? parentAssetId,
      String? assetTypeId,
      String? serialNumber,
      String? qrCode,
      String? imageUrl,
      DateTime? deletedAt});
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
    Object? tenantId = null,
    Object? locationId = null,
    Object? name = null,
    Object? code = null,
    Object? status = null,
    Object? insertedAt = null,
    Object? updatedAt = null,
    Object? parentAssetId = freezed,
    Object? assetTypeId = freezed,
    Object? serialNumber = freezed,
    Object? qrCode = freezed,
    Object? imageUrl = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$AssetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: null == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      insertedAt: null == insertedAt
          ? _value.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      parentAssetId: freezed == parentAssetId
          ? _value.parentAssetId
          : parentAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
      assetTypeId: freezed == assetTypeId
          ? _value.assetTypeId
          : assetTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssetImpl implements _Asset {
  const _$AssetImpl(
      {required this.id,
      required this.tenantId,
      required this.locationId,
      required this.name,
      required this.code,
      required this.status,
      required this.insertedAt,
      required this.updatedAt,
      this.parentAssetId,
      this.assetTypeId,
      this.serialNumber,
      this.qrCode,
      this.imageUrl,
      this.deletedAt});

  factory _$AssetImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssetImplFromJson(json);

  @override
  final String id;
  @override
  final String tenantId;
  @override
  final String locationId;
  @override
  final String name;
  @override
  final String code;
  @override
  final String status;
// 'active', 'inactive', 'maintenance', 'retired'
  @override
  final DateTime insertedAt;
  @override
  final DateTime updatedAt;
  @override
  final String? parentAssetId;
  @override
  final String? assetTypeId;
  @override
  final String? serialNumber;
  @override
  final String? qrCode;
  @override
  final String? imageUrl;
  @override
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'Asset(id: $id, tenantId: $tenantId, locationId: $locationId, name: $name, code: $code, status: $status, insertedAt: $insertedAt, updatedAt: $updatedAt, parentAssetId: $parentAssetId, assetTypeId: $assetTypeId, serialNumber: $serialNumber, qrCode: $qrCode, imageUrl: $imageUrl, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.insertedAt, insertedAt) ||
                other.insertedAt == insertedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.parentAssetId, parentAssetId) ||
                other.parentAssetId == parentAssetId) &&
            (identical(other.assetTypeId, assetTypeId) ||
                other.assetTypeId == assetTypeId) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      tenantId,
      locationId,
      name,
      code,
      status,
      insertedAt,
      updatedAt,
      parentAssetId,
      assetTypeId,
      serialNumber,
      qrCode,
      imageUrl,
      deletedAt);

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
      required final String tenantId,
      required final String locationId,
      required final String name,
      required final String code,
      required final String status,
      required final DateTime insertedAt,
      required final DateTime updatedAt,
      final String? parentAssetId,
      final String? assetTypeId,
      final String? serialNumber,
      final String? qrCode,
      final String? imageUrl,
      final DateTime? deletedAt}) = _$AssetImpl;

  factory _Asset.fromJson(Map<String, dynamic> json) = _$AssetImpl.fromJson;

  @override
  String get id;
  @override
  String get tenantId;
  @override
  String get locationId;
  @override
  String get name;
  @override
  String get code;
  @override
  String get status;
  @override // 'active', 'inactive', 'maintenance', 'retired'
  DateTime get insertedAt;
  @override
  DateTime get updatedAt;
  @override
  String? get parentAssetId;
  @override
  String? get assetTypeId;
  @override
  String? get serialNumber;
  @override
  String? get qrCode;
  @override
  String? get imageUrl;
  @override
  DateTime? get deletedAt;
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
  String get locationId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String? get parentAssetId => throw _privateConstructorUsedError;
  String? get assetTypeId => throw _privateConstructorUsedError;
  String? get serialNumber => throw _privateConstructorUsedError;
  String? get qrCode => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

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
      {String locationId,
      String name,
      String code,
      String? parentAssetId,
      String? assetTypeId,
      String? serialNumber,
      String? qrCode,
      String? imageUrl});
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
    Object? locationId = null,
    Object? name = null,
    Object? code = null,
    Object? parentAssetId = freezed,
    Object? assetTypeId = freezed,
    Object? serialNumber = freezed,
    Object? qrCode = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      parentAssetId: freezed == parentAssetId
          ? _value.parentAssetId
          : parentAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
      assetTypeId: freezed == assetTypeId
          ? _value.assetTypeId
          : assetTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
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
      {String locationId,
      String name,
      String code,
      String? parentAssetId,
      String? assetTypeId,
      String? serialNumber,
      String? qrCode,
      String? imageUrl});
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
    Object? locationId = null,
    Object? name = null,
    Object? code = null,
    Object? parentAssetId = freezed,
    Object? assetTypeId = freezed,
    Object? serialNumber = freezed,
    Object? qrCode = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$CreateAssetRequestImpl(
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      parentAssetId: freezed == parentAssetId
          ? _value.parentAssetId
          : parentAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
      assetTypeId: freezed == assetTypeId
          ? _value.assetTypeId
          : assetTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateAssetRequestImpl implements _CreateAssetRequest {
  const _$CreateAssetRequestImpl(
      {required this.locationId,
      required this.name,
      required this.code,
      this.parentAssetId,
      this.assetTypeId,
      this.serialNumber,
      this.qrCode,
      this.imageUrl});

  factory _$CreateAssetRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateAssetRequestImplFromJson(json);

  @override
  final String locationId;
  @override
  final String name;
  @override
  final String code;
  @override
  final String? parentAssetId;
  @override
  final String? assetTypeId;
  @override
  final String? serialNumber;
  @override
  final String? qrCode;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'CreateAssetRequest(locationId: $locationId, name: $name, code: $code, parentAssetId: $parentAssetId, assetTypeId: $assetTypeId, serialNumber: $serialNumber, qrCode: $qrCode, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAssetRequestImpl &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.parentAssetId, parentAssetId) ||
                other.parentAssetId == parentAssetId) &&
            (identical(other.assetTypeId, assetTypeId) ||
                other.assetTypeId == assetTypeId) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, locationId, name, code,
      parentAssetId, assetTypeId, serialNumber, qrCode, imageUrl);

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
      {required final String locationId,
      required final String name,
      required final String code,
      final String? parentAssetId,
      final String? assetTypeId,
      final String? serialNumber,
      final String? qrCode,
      final String? imageUrl}) = _$CreateAssetRequestImpl;

  factory _CreateAssetRequest.fromJson(Map<String, dynamic> json) =
      _$CreateAssetRequestImpl.fromJson;

  @override
  String get locationId;
  @override
  String get name;
  @override
  String get code;
  @override
  String? get parentAssetId;
  @override
  String? get assetTypeId;
  @override
  String? get serialNumber;
  @override
  String? get qrCode;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$CreateAssetRequestImplCopyWith<_$CreateAssetRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateAssetRequest _$UpdateAssetRequestFromJson(Map<String, dynamic> json) {
  return _UpdateAssetRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateAssetRequest {
  String? get locationId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get parentAssetId => throw _privateConstructorUsedError;
  String? get assetTypeId => throw _privateConstructorUsedError;
  String? get serialNumber => throw _privateConstructorUsedError;
  String? get qrCode => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateAssetRequestCopyWith<UpdateAssetRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAssetRequestCopyWith<$Res> {
  factory $UpdateAssetRequestCopyWith(
          UpdateAssetRequest value, $Res Function(UpdateAssetRequest) then) =
      _$UpdateAssetRequestCopyWithImpl<$Res, UpdateAssetRequest>;
  @useResult
  $Res call(
      {String? locationId,
      String? name,
      String? code,
      String? status,
      String? parentAssetId,
      String? assetTypeId,
      String? serialNumber,
      String? qrCode,
      String? imageUrl});
}

/// @nodoc
class _$UpdateAssetRequestCopyWithImpl<$Res, $Val extends UpdateAssetRequest>
    implements $UpdateAssetRequestCopyWith<$Res> {
  _$UpdateAssetRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationId = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? status = freezed,
    Object? parentAssetId = freezed,
    Object? assetTypeId = freezed,
    Object? serialNumber = freezed,
    Object? qrCode = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      parentAssetId: freezed == parentAssetId
          ? _value.parentAssetId
          : parentAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
      assetTypeId: freezed == assetTypeId
          ? _value.assetTypeId
          : assetTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateAssetRequestImplCopyWith<$Res>
    implements $UpdateAssetRequestCopyWith<$Res> {
  factory _$$UpdateAssetRequestImplCopyWith(_$UpdateAssetRequestImpl value,
          $Res Function(_$UpdateAssetRequestImpl) then) =
      __$$UpdateAssetRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? locationId,
      String? name,
      String? code,
      String? status,
      String? parentAssetId,
      String? assetTypeId,
      String? serialNumber,
      String? qrCode,
      String? imageUrl});
}

/// @nodoc
class __$$UpdateAssetRequestImplCopyWithImpl<$Res>
    extends _$UpdateAssetRequestCopyWithImpl<$Res, _$UpdateAssetRequestImpl>
    implements _$$UpdateAssetRequestImplCopyWith<$Res> {
  __$$UpdateAssetRequestImplCopyWithImpl(_$UpdateAssetRequestImpl _value,
      $Res Function(_$UpdateAssetRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationId = freezed,
    Object? name = freezed,
    Object? code = freezed,
    Object? status = freezed,
    Object? parentAssetId = freezed,
    Object? assetTypeId = freezed,
    Object? serialNumber = freezed,
    Object? qrCode = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$UpdateAssetRequestImpl(
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      parentAssetId: freezed == parentAssetId
          ? _value.parentAssetId
          : parentAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
      assetTypeId: freezed == assetTypeId
          ? _value.assetTypeId
          : assetTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateAssetRequestImpl implements _UpdateAssetRequest {
  const _$UpdateAssetRequestImpl(
      {this.locationId,
      this.name,
      this.code,
      this.status,
      this.parentAssetId,
      this.assetTypeId,
      this.serialNumber,
      this.qrCode,
      this.imageUrl});

  factory _$UpdateAssetRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateAssetRequestImplFromJson(json);

  @override
  final String? locationId;
  @override
  final String? name;
  @override
  final String? code;
  @override
  final String? status;
  @override
  final String? parentAssetId;
  @override
  final String? assetTypeId;
  @override
  final String? serialNumber;
  @override
  final String? qrCode;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'UpdateAssetRequest(locationId: $locationId, name: $name, code: $code, status: $status, parentAssetId: $parentAssetId, assetTypeId: $assetTypeId, serialNumber: $serialNumber, qrCode: $qrCode, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAssetRequestImpl &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.parentAssetId, parentAssetId) ||
                other.parentAssetId == parentAssetId) &&
            (identical(other.assetTypeId, assetTypeId) ||
                other.assetTypeId == assetTypeId) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, locationId, name, code, status,
      parentAssetId, assetTypeId, serialNumber, qrCode, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAssetRequestImplCopyWith<_$UpdateAssetRequestImpl> get copyWith =>
      __$$UpdateAssetRequestImplCopyWithImpl<_$UpdateAssetRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateAssetRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateAssetRequest implements UpdateAssetRequest {
  const factory _UpdateAssetRequest(
      {final String? locationId,
      final String? name,
      final String? code,
      final String? status,
      final String? parentAssetId,
      final String? assetTypeId,
      final String? serialNumber,
      final String? qrCode,
      final String? imageUrl}) = _$UpdateAssetRequestImpl;

  factory _UpdateAssetRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateAssetRequestImpl.fromJson;

  @override
  String? get locationId;
  @override
  String? get name;
  @override
  String? get code;
  @override
  String? get status;
  @override
  String? get parentAssetId;
  @override
  String? get assetTypeId;
  @override
  String? get serialNumber;
  @override
  String? get qrCode;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$UpdateAssetRequestImplCopyWith<_$UpdateAssetRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
