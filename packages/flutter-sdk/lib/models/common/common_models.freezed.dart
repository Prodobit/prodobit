// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  String? get street => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get zipCode => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {String? street,
      String? city,
      String? state,
      String? country,
      String? zipCode,
      double? latitude,
      double? longitude});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? zipCode = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
          _$AddressImpl value, $Res Function(_$AddressImpl) then) =
      __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? street,
      String? city,
      String? state,
      String? country,
      String? zipCode,
      double? latitude,
      double? longitude});
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? zipCode = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$AddressImpl(
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressImpl implements _Address {
  const _$AddressImpl(
      {this.street,
      this.city,
      this.state,
      this.country,
      this.zipCode,
      this.latitude,
      this.longitude});

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  @override
  final String? street;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? country;
  @override
  final String? zipCode;
  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'Address(street: $street, city: $city, state: $state, country: $country, zipCode: $zipCode, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, street, city, state, country, zipCode, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressImplToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  const factory _Address(
      {final String? street,
      final String? city,
      final String? state,
      final String? country,
      final String? zipCode,
      final double? latitude,
      final double? longitude}) = _$AddressImpl;

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  String? get street;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get country;
  @override
  String? get zipCode;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiResponse<T> _$ApiResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _ApiResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ApiResponse<T> {
  bool get success => throw _privateConstructorUsedError;
  T? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseCopyWith<T, ApiResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseCopyWith(
          ApiResponse<T> value, $Res Function(ApiResponse<T>) then) =
      _$ApiResponseCopyWithImpl<T, $Res, ApiResponse<T>>;
  @useResult
  $Res call(
      {bool success,
      T? data,
      String? message,
      String? error,
      Map<String, dynamic>? metadata,
      String? errorCode});
}

/// @nodoc
class _$ApiResponseCopyWithImpl<T, $Res, $Val extends ApiResponse<T>>
    implements $ApiResponseCopyWith<T, $Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? metadata = freezed,
    Object? errorCode = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiResponseImplCopyWith<T, $Res>
    implements $ApiResponseCopyWith<T, $Res> {
  factory _$$ApiResponseImplCopyWith(_$ApiResponseImpl<T> value,
          $Res Function(_$ApiResponseImpl<T>) then) =
      __$$ApiResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {bool success,
      T? data,
      String? message,
      String? error,
      Map<String, dynamic>? metadata,
      String? errorCode});
}

/// @nodoc
class __$$ApiResponseImplCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$ApiResponseImpl<T>>
    implements _$$ApiResponseImplCopyWith<T, $Res> {
  __$$ApiResponseImplCopyWithImpl(
      _$ApiResponseImpl<T> _value, $Res Function(_$ApiResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? metadata = freezed,
    Object? errorCode = freezed,
  }) {
    return _then(_$ApiResponseImpl<T>(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ApiResponseImpl<T> implements _ApiResponse<T> {
  const _$ApiResponseImpl(
      {required this.success,
      this.data,
      this.message,
      this.error,
      final Map<String, dynamic>? metadata,
      this.errorCode})
      : _metadata = metadata;

  factory _$ApiResponseImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ApiResponseImplFromJson(json, fromJsonT);

  @override
  final bool success;
  @override
  final T? data;
  @override
  final String? message;
  @override
  final String? error;
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
  final String? errorCode;

  @override
  String toString() {
    return 'ApiResponse<$T>(success: $success, data: $data, message: $message, error: $error, metadata: $metadata, errorCode: $errorCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseImpl<T> &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      success,
      const DeepCollectionEquality().hash(data),
      message,
      error,
      const DeepCollectionEquality().hash(_metadata),
      errorCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseImplCopyWith<T, _$ApiResponseImpl<T>> get copyWith =>
      __$$ApiResponseImplCopyWithImpl<T, _$ApiResponseImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ApiResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _ApiResponse<T> implements ApiResponse<T> {
  const factory _ApiResponse(
      {required final bool success,
      final T? data,
      final String? message,
      final String? error,
      final Map<String, dynamic>? metadata,
      final String? errorCode}) = _$ApiResponseImpl<T>;

  factory _ApiResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ApiResponseImpl<T>.fromJson;

  @override
  bool get success;
  @override
  T? get data;
  @override
  String? get message;
  @override
  String? get error;
  @override
  Map<String, dynamic>? get metadata;
  @override
  String? get errorCode;
  @override
  @JsonKey(ignore: true)
  _$$ApiResponseImplCopyWith<T, _$ApiResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

AuditInfo _$AuditInfoFromJson(Map<String, dynamic> json) {
  return _AuditInfo.fromJson(json);
}

/// @nodoc
mixin _$AuditInfo {
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get updatedBy => throw _privateConstructorUsedError;
  int? get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuditInfoCopyWith<AuditInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuditInfoCopyWith<$Res> {
  factory $AuditInfoCopyWith(AuditInfo value, $Res Function(AuditInfo) then) =
      _$AuditInfoCopyWithImpl<$Res, AuditInfo>;
  @useResult
  $Res call(
      {DateTime createdAt,
      String createdBy,
      DateTime? updatedAt,
      String? updatedBy,
      int? version});
}

/// @nodoc
class _$AuditInfoCopyWithImpl<$Res, $Val extends AuditInfo>
    implements $AuditInfoCopyWith<$Res> {
  _$AuditInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuditInfoImplCopyWith<$Res>
    implements $AuditInfoCopyWith<$Res> {
  factory _$$AuditInfoImplCopyWith(
          _$AuditInfoImpl value, $Res Function(_$AuditInfoImpl) then) =
      __$$AuditInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime createdAt,
      String createdBy,
      DateTime? updatedAt,
      String? updatedBy,
      int? version});
}

/// @nodoc
class __$$AuditInfoImplCopyWithImpl<$Res>
    extends _$AuditInfoCopyWithImpl<$Res, _$AuditInfoImpl>
    implements _$$AuditInfoImplCopyWith<$Res> {
  __$$AuditInfoImplCopyWithImpl(
      _$AuditInfoImpl _value, $Res Function(_$AuditInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = freezed,
    Object? version = freezed,
  }) {
    return _then(_$AuditInfoImpl(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuditInfoImpl implements _AuditInfo {
  const _$AuditInfoImpl(
      {required this.createdAt,
      required this.createdBy,
      this.updatedAt,
      this.updatedBy,
      this.version});

  factory _$AuditInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuditInfoImplFromJson(json);

  @override
  final DateTime createdAt;
  @override
  final String createdBy;
  @override
  final DateTime? updatedAt;
  @override
  final String? updatedBy;
  @override
  final int? version;

  @override
  String toString() {
    return 'AuditInfo(createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, updatedBy: $updatedBy, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuditInfoImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, createdAt, createdBy, updatedAt, updatedBy, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuditInfoImplCopyWith<_$AuditInfoImpl> get copyWith =>
      __$$AuditInfoImplCopyWithImpl<_$AuditInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuditInfoImplToJson(
      this,
    );
  }
}

abstract class _AuditInfo implements AuditInfo {
  const factory _AuditInfo(
      {required final DateTime createdAt,
      required final String createdBy,
      final DateTime? updatedAt,
      final String? updatedBy,
      final int? version}) = _$AuditInfoImpl;

  factory _AuditInfo.fromJson(Map<String, dynamic> json) =
      _$AuditInfoImpl.fromJson;

  @override
  DateTime get createdAt;
  @override
  String get createdBy;
  @override
  DateTime? get updatedAt;
  @override
  String? get updatedBy;
  @override
  int? get version;
  @override
  @JsonKey(ignore: true)
  _$$AuditInfoImplCopyWith<_$AuditInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContactInfo _$ContactInfoFromJson(Map<String, dynamic> json) {
  return _ContactInfo.fromJson(json);
}

/// @nodoc
mixin _$ContactInfo {
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;
  String? get fax => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactInfoCopyWith<ContactInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactInfoCopyWith<$Res> {
  factory $ContactInfoCopyWith(
          ContactInfo value, $Res Function(ContactInfo) then) =
      _$ContactInfoCopyWithImpl<$Res, ContactInfo>;
  @useResult
  $Res call(
      {String? email,
      String? phone,
      String? mobile,
      String? fax,
      String? website});
}

/// @nodoc
class _$ContactInfoCopyWithImpl<$Res, $Val extends ContactInfo>
    implements $ContactInfoCopyWith<$Res> {
  _$ContactInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? phone = freezed,
    Object? mobile = freezed,
    Object? fax = freezed,
    Object? website = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      fax: freezed == fax
          ? _value.fax
          : fax // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactInfoImplCopyWith<$Res>
    implements $ContactInfoCopyWith<$Res> {
  factory _$$ContactInfoImplCopyWith(
          _$ContactInfoImpl value, $Res Function(_$ContactInfoImpl) then) =
      __$$ContactInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? email,
      String? phone,
      String? mobile,
      String? fax,
      String? website});
}

/// @nodoc
class __$$ContactInfoImplCopyWithImpl<$Res>
    extends _$ContactInfoCopyWithImpl<$Res, _$ContactInfoImpl>
    implements _$$ContactInfoImplCopyWith<$Res> {
  __$$ContactInfoImplCopyWithImpl(
      _$ContactInfoImpl _value, $Res Function(_$ContactInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? phone = freezed,
    Object? mobile = freezed,
    Object? fax = freezed,
    Object? website = freezed,
  }) {
    return _then(_$ContactInfoImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      fax: freezed == fax
          ? _value.fax
          : fax // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactInfoImpl implements _ContactInfo {
  const _$ContactInfoImpl(
      {this.email, this.phone, this.mobile, this.fax, this.website});

  factory _$ContactInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactInfoImplFromJson(json);

  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? mobile;
  @override
  final String? fax;
  @override
  final String? website;

  @override
  String toString() {
    return 'ContactInfo(email: $email, phone: $phone, mobile: $mobile, fax: $fax, website: $website)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactInfoImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.fax, fax) || other.fax == fax) &&
            (identical(other.website, website) || other.website == website));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, phone, mobile, fax, website);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactInfoImplCopyWith<_$ContactInfoImpl> get copyWith =>
      __$$ContactInfoImplCopyWithImpl<_$ContactInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactInfoImplToJson(
      this,
    );
  }
}

abstract class _ContactInfo implements ContactInfo {
  const factory _ContactInfo(
      {final String? email,
      final String? phone,
      final String? mobile,
      final String? fax,
      final String? website}) = _$ContactInfoImpl;

  factory _ContactInfo.fromJson(Map<String, dynamic> json) =
      _$ContactInfoImpl.fromJson;

  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get mobile;
  @override
  String? get fax;
  @override
  String? get website;
  @override
  @JsonKey(ignore: true)
  _$$ContactInfoImplCopyWith<_$ContactInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FileUploadResponse _$FileUploadResponseFromJson(Map<String, dynamic> json) {
  return _FileUploadResponse.fromJson(json);
}

/// @nodoc
mixin _$FileUploadResponse {
  String get id => throw _privateConstructorUsedError;
  String get filename => throw _privateConstructorUsedError;
  String get originalName => throw _privateConstructorUsedError;
  String get mimeType => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileUploadResponseCopyWith<FileUploadResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileUploadResponseCopyWith<$Res> {
  factory $FileUploadResponseCopyWith(
          FileUploadResponse value, $Res Function(FileUploadResponse) then) =
      _$FileUploadResponseCopyWithImpl<$Res, FileUploadResponse>;
  @useResult
  $Res call(
      {String id,
      String filename,
      String originalName,
      String mimeType,
      int size,
      String url,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$FileUploadResponseCopyWithImpl<$Res, $Val extends FileUploadResponse>
    implements $FileUploadResponseCopyWith<$Res> {
  _$FileUploadResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? filename = null,
    Object? originalName = null,
    Object? mimeType = null,
    Object? size = null,
    Object? url = null,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: null == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      mimeType: null == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileUploadResponseImplCopyWith<$Res>
    implements $FileUploadResponseCopyWith<$Res> {
  factory _$$FileUploadResponseImplCopyWith(_$FileUploadResponseImpl value,
          $Res Function(_$FileUploadResponseImpl) then) =
      __$$FileUploadResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String filename,
      String originalName,
      String mimeType,
      int size,
      String url,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$FileUploadResponseImplCopyWithImpl<$Res>
    extends _$FileUploadResponseCopyWithImpl<$Res, _$FileUploadResponseImpl>
    implements _$$FileUploadResponseImplCopyWith<$Res> {
  __$$FileUploadResponseImplCopyWithImpl(_$FileUploadResponseImpl _value,
      $Res Function(_$FileUploadResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? filename = null,
    Object? originalName = null,
    Object? mimeType = null,
    Object? size = null,
    Object? url = null,
    Object? metadata = freezed,
  }) {
    return _then(_$FileUploadResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: null == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      mimeType: null == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
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
class _$FileUploadResponseImpl implements _FileUploadResponse {
  const _$FileUploadResponseImpl(
      {required this.id,
      required this.filename,
      required this.originalName,
      required this.mimeType,
      required this.size,
      required this.url,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$FileUploadResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileUploadResponseImplFromJson(json);

  @override
  final String id;
  @override
  final String filename;
  @override
  final String originalName;
  @override
  final String mimeType;
  @override
  final int size;
  @override
  final String url;
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
    return 'FileUploadResponse(id: $id, filename: $filename, originalName: $originalName, mimeType: $mimeType, size: $size, url: $url, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileUploadResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, filename, originalName,
      mimeType, size, url, const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileUploadResponseImplCopyWith<_$FileUploadResponseImpl> get copyWith =>
      __$$FileUploadResponseImplCopyWithImpl<_$FileUploadResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileUploadResponseImplToJson(
      this,
    );
  }
}

abstract class _FileUploadResponse implements FileUploadResponse {
  const factory _FileUploadResponse(
      {required final String id,
      required final String filename,
      required final String originalName,
      required final String mimeType,
      required final int size,
      required final String url,
      final Map<String, dynamic>? metadata}) = _$FileUploadResponseImpl;

  factory _FileUploadResponse.fromJson(Map<String, dynamic> json) =
      _$FileUploadResponseImpl.fromJson;

  @override
  String get id;
  @override
  String get filename;
  @override
  String get originalName;
  @override
  String get mimeType;
  @override
  int get size;
  @override
  String get url;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$FileUploadResponseImplCopyWith<_$FileUploadResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Money _$MoneyFromJson(Map<String, dynamic> json) {
  return _Money.fromJson(json);
}

/// @nodoc
mixin _$Money {
  double get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoneyCopyWith<Money> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoneyCopyWith<$Res> {
  factory $MoneyCopyWith(Money value, $Res Function(Money) then) =
      _$MoneyCopyWithImpl<$Res, Money>;
  @useResult
  $Res call({double amount, String currency});
}

/// @nodoc
class _$MoneyCopyWithImpl<$Res, $Val extends Money>
    implements $MoneyCopyWith<$Res> {
  _$MoneyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoneyImplCopyWith<$Res> implements $MoneyCopyWith<$Res> {
  factory _$$MoneyImplCopyWith(
          _$MoneyImpl value, $Res Function(_$MoneyImpl) then) =
      __$$MoneyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double amount, String currency});
}

/// @nodoc
class __$$MoneyImplCopyWithImpl<$Res>
    extends _$MoneyCopyWithImpl<$Res, _$MoneyImpl>
    implements _$$MoneyImplCopyWith<$Res> {
  __$$MoneyImplCopyWithImpl(
      _$MoneyImpl _value, $Res Function(_$MoneyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currency = null,
  }) {
    return _then(_$MoneyImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoneyImpl implements _Money {
  const _$MoneyImpl({required this.amount, this.currency = 'USD'});

  factory _$MoneyImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoneyImplFromJson(json);

  @override
  final double amount;
  @override
  @JsonKey()
  final String currency;

  @override
  String toString() {
    return 'Money(amount: $amount, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoneyImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoneyImplCopyWith<_$MoneyImpl> get copyWith =>
      __$$MoneyImplCopyWithImpl<_$MoneyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoneyImplToJson(
      this,
    );
  }
}

abstract class _Money implements Money {
  const factory _Money({required final double amount, final String currency}) =
      _$MoneyImpl;

  factory _Money.fromJson(Map<String, dynamic> json) = _$MoneyImpl.fromJson;

  @override
  double get amount;
  @override
  String get currency;
  @override
  @JsonKey(ignore: true)
  _$$MoneyImplCopyWith<_$MoneyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaginatedResponse<T> _$PaginatedResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _PaginatedResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$PaginatedResponse<T> {
  List<T> get data => throw _privateConstructorUsedError;
  PaginationMeta get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedResponseCopyWith<T, PaginatedResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedResponseCopyWith<T, $Res> {
  factory $PaginatedResponseCopyWith(PaginatedResponse<T> value,
          $Res Function(PaginatedResponse<T>) then) =
      _$PaginatedResponseCopyWithImpl<T, $Res, PaginatedResponse<T>>;
  @useResult
  $Res call({List<T> data, PaginationMeta pagination});

  $PaginationMetaCopyWith<$Res> get pagination;
}

/// @nodoc
class _$PaginatedResponseCopyWithImpl<T, $Res,
        $Val extends PaginatedResponse<T>>
    implements $PaginatedResponseCopyWith<T, $Res> {
  _$PaginatedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationMeta,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationMetaCopyWith<$Res> get pagination {
    return $PaginationMetaCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaginatedResponseImplCopyWith<T, $Res>
    implements $PaginatedResponseCopyWith<T, $Res> {
  factory _$$PaginatedResponseImplCopyWith(_$PaginatedResponseImpl<T> value,
          $Res Function(_$PaginatedResponseImpl<T>) then) =
      __$$PaginatedResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> data, PaginationMeta pagination});

  @override
  $PaginationMetaCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$PaginatedResponseImplCopyWithImpl<T, $Res>
    extends _$PaginatedResponseCopyWithImpl<T, $Res, _$PaginatedResponseImpl<T>>
    implements _$$PaginatedResponseImplCopyWith<T, $Res> {
  __$$PaginatedResponseImplCopyWithImpl(_$PaginatedResponseImpl<T> _value,
      $Res Function(_$PaginatedResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = null,
  }) {
    return _then(_$PaginatedResponseImpl<T>(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationMeta,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$PaginatedResponseImpl<T> implements _PaginatedResponse<T> {
  const _$PaginatedResponseImpl(
      {required final List<T> data, required this.pagination})
      : _data = data;

  factory _$PaginatedResponseImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$PaginatedResponseImplFromJson(json, fromJsonT);

  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final PaginationMeta pagination;

  @override
  String toString() {
    return 'PaginatedResponse<$T>(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedResponseImpl<T> &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedResponseImplCopyWith<T, _$PaginatedResponseImpl<T>>
      get copyWith =>
          __$$PaginatedResponseImplCopyWithImpl<T, _$PaginatedResponseImpl<T>>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$PaginatedResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _PaginatedResponse<T> implements PaginatedResponse<T> {
  const factory _PaginatedResponse(
      {required final List<T> data,
      required final PaginationMeta pagination}) = _$PaginatedResponseImpl<T>;

  factory _PaginatedResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$PaginatedResponseImpl<T>.fromJson;

  @override
  List<T> get data;
  @override
  PaginationMeta get pagination;
  @override
  @JsonKey(ignore: true)
  _$$PaginatedResponseImplCopyWith<T, _$PaginatedResponseImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

PaginationMeta _$PaginationMetaFromJson(Map<String, dynamic> json) {
  return _PaginationMeta.fromJson(json);
}

/// @nodoc
mixin _$PaginationMeta {
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  bool get hasNext => throw _privateConstructorUsedError;
  bool get hasPrev => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationMetaCopyWith<PaginationMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationMetaCopyWith<$Res> {
  factory $PaginationMetaCopyWith(
          PaginationMeta value, $Res Function(PaginationMeta) then) =
      _$PaginationMetaCopyWithImpl<$Res, PaginationMeta>;
  @useResult
  $Res call(
      {int total,
      int page,
      int perPage,
      int totalPages,
      bool hasNext,
      bool hasPrev});
}

/// @nodoc
class _$PaginationMetaCopyWithImpl<$Res, $Val extends PaginationMeta>
    implements $PaginationMetaCopyWith<$Res> {
  _$PaginationMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? perPage = null,
    Object? totalPages = null,
    Object? hasNext = null,
    Object? hasPrev = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      hasNext: null == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPrev: null == hasPrev
          ? _value.hasPrev
          : hasPrev // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationMetaImplCopyWith<$Res>
    implements $PaginationMetaCopyWith<$Res> {
  factory _$$PaginationMetaImplCopyWith(_$PaginationMetaImpl value,
          $Res Function(_$PaginationMetaImpl) then) =
      __$$PaginationMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int total,
      int page,
      int perPage,
      int totalPages,
      bool hasNext,
      bool hasPrev});
}

/// @nodoc
class __$$PaginationMetaImplCopyWithImpl<$Res>
    extends _$PaginationMetaCopyWithImpl<$Res, _$PaginationMetaImpl>
    implements _$$PaginationMetaImplCopyWith<$Res> {
  __$$PaginationMetaImplCopyWithImpl(
      _$PaginationMetaImpl _value, $Res Function(_$PaginationMetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? perPage = null,
    Object? totalPages = null,
    Object? hasNext = null,
    Object? hasPrev = null,
  }) {
    return _then(_$PaginationMetaImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      hasNext: null == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPrev: null == hasPrev
          ? _value.hasPrev
          : hasPrev // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationMetaImpl implements _PaginationMeta {
  const _$PaginationMetaImpl(
      {required this.total,
      required this.page,
      required this.perPage,
      required this.totalPages,
      required this.hasNext,
      required this.hasPrev});

  factory _$PaginationMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationMetaImplFromJson(json);

  @override
  final int total;
  @override
  final int page;
  @override
  final int perPage;
  @override
  final int totalPages;
  @override
  final bool hasNext;
  @override
  final bool hasPrev;

  @override
  String toString() {
    return 'PaginationMeta(total: $total, page: $page, perPage: $perPage, totalPages: $totalPages, hasNext: $hasNext, hasPrev: $hasPrev)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationMetaImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.hasPrev, hasPrev) || other.hasPrev == hasPrev));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, total, page, perPage, totalPages, hasNext, hasPrev);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationMetaImplCopyWith<_$PaginationMetaImpl> get copyWith =>
      __$$PaginationMetaImplCopyWithImpl<_$PaginationMetaImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationMetaImplToJson(
      this,
    );
  }
}

abstract class _PaginationMeta implements PaginationMeta {
  const factory _PaginationMeta(
      {required final int total,
      required final int page,
      required final int perPage,
      required final int totalPages,
      required final bool hasNext,
      required final bool hasPrev}) = _$PaginationMetaImpl;

  factory _PaginationMeta.fromJson(Map<String, dynamic> json) =
      _$PaginationMetaImpl.fromJson;

  @override
  int get total;
  @override
  int get page;
  @override
  int get perPage;
  @override
  int get totalPages;
  @override
  bool get hasNext;
  @override
  bool get hasPrev;
  @override
  @JsonKey(ignore: true)
  _$$PaginationMetaImplCopyWith<_$PaginationMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QueryParams _$QueryParamsFromJson(Map<String, dynamic> json) {
  return _QueryParams.fromJson(json);
}

/// @nodoc
mixin _$QueryParams {
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  String? get search => throw _privateConstructorUsedError;
  String? get sortBy => throw _privateConstructorUsedError;
  String get sortOrder => throw _privateConstructorUsedError;
  Map<String, String>? get filters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueryParamsCopyWith<QueryParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryParamsCopyWith<$Res> {
  factory $QueryParamsCopyWith(
          QueryParams value, $Res Function(QueryParams) then) =
      _$QueryParamsCopyWithImpl<$Res, QueryParams>;
  @useResult
  $Res call(
      {int page,
      int limit,
      String? search,
      String? sortBy,
      String sortOrder,
      Map<String, String>? filters});
}

/// @nodoc
class _$QueryParamsCopyWithImpl<$Res, $Val extends QueryParams>
    implements $QueryParamsCopyWith<$Res> {
  _$QueryParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? limit = null,
    Object? search = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = null,
    Object? filters = freezed,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String,
      filters: freezed == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QueryParamsImplCopyWith<$Res>
    implements $QueryParamsCopyWith<$Res> {
  factory _$$QueryParamsImplCopyWith(
          _$QueryParamsImpl value, $Res Function(_$QueryParamsImpl) then) =
      __$$QueryParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      int limit,
      String? search,
      String? sortBy,
      String sortOrder,
      Map<String, String>? filters});
}

/// @nodoc
class __$$QueryParamsImplCopyWithImpl<$Res>
    extends _$QueryParamsCopyWithImpl<$Res, _$QueryParamsImpl>
    implements _$$QueryParamsImplCopyWith<$Res> {
  __$$QueryParamsImplCopyWithImpl(
      _$QueryParamsImpl _value, $Res Function(_$QueryParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? limit = null,
    Object? search = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = null,
    Object? filters = freezed,
  }) {
    return _then(_$QueryParamsImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String,
      filters: freezed == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QueryParamsImpl extends _QueryParams {
  const _$QueryParamsImpl(
      {this.page = 1,
      this.limit = 20,
      this.search,
      this.sortBy,
      this.sortOrder = 'asc',
      final Map<String, String>? filters})
      : _filters = filters,
        super._();

  factory _$QueryParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$QueryParamsImplFromJson(json);

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int limit;
  @override
  final String? search;
  @override
  final String? sortBy;
  @override
  @JsonKey()
  final String sortOrder;
  final Map<String, String>? _filters;
  @override
  Map<String, String>? get filters {
    final value = _filters;
    if (value == null) return null;
    if (_filters is EqualUnmodifiableMapView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'QueryParams(page: $page, limit: $limit, search: $search, sortBy: $sortBy, sortOrder: $sortOrder, filters: $filters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryParamsImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            const DeepCollectionEquality().equals(other._filters, _filters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, limit, search, sortBy,
      sortOrder, const DeepCollectionEquality().hash(_filters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryParamsImplCopyWith<_$QueryParamsImpl> get copyWith =>
      __$$QueryParamsImplCopyWithImpl<_$QueryParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QueryParamsImplToJson(
      this,
    );
  }
}

abstract class _QueryParams extends QueryParams {
  const factory _QueryParams(
      {final int page,
      final int limit,
      final String? search,
      final String? sortBy,
      final String sortOrder,
      final Map<String, String>? filters}) = _$QueryParamsImpl;
  const _QueryParams._() : super._();

  factory _QueryParams.fromJson(Map<String, dynamic> json) =
      _$QueryParamsImpl.fromJson;

  @override
  int get page;
  @override
  int get limit;
  @override
  String? get search;
  @override
  String? get sortBy;
  @override
  String get sortOrder;
  @override
  Map<String, String>? get filters;
  @override
  @JsonKey(ignore: true)
  _$$QueryParamsImplCopyWith<_$QueryParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
