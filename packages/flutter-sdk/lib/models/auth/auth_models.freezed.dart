// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginOTPResponse _$LoginOTPResponseFromJson(Map<String, dynamic> json) {
  return _LoginOTPResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginOTPResponse {
  bool get success => throw _privateConstructorUsedError;
  LoginResponseData? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginOTPResponseCopyWith<LoginOTPResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginOTPResponseCopyWith<$Res> {
  factory $LoginOTPResponseCopyWith(
          LoginOTPResponse value, $Res Function(LoginOTPResponse) then) =
      _$LoginOTPResponseCopyWithImpl<$Res, LoginOTPResponse>;
  @useResult
  $Res call({bool success, LoginResponseData? data, String? message});

  $LoginResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$LoginOTPResponseCopyWithImpl<$Res, $Val extends LoginOTPResponse>
    implements $LoginOTPResponseCopyWith<$Res> {
  _$LoginOTPResponseCopyWithImpl(this._value, this._then);

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
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginResponseData?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginResponseDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $LoginResponseDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginOTPResponseImplCopyWith<$Res>
    implements $LoginOTPResponseCopyWith<$Res> {
  factory _$$LoginOTPResponseImplCopyWith(_$LoginOTPResponseImpl value,
          $Res Function(_$LoginOTPResponseImpl) then) =
      __$$LoginOTPResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, LoginResponseData? data, String? message});

  @override
  $LoginResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$LoginOTPResponseImplCopyWithImpl<$Res>
    extends _$LoginOTPResponseCopyWithImpl<$Res, _$LoginOTPResponseImpl>
    implements _$$LoginOTPResponseImplCopyWith<$Res> {
  __$$LoginOTPResponseImplCopyWithImpl(_$LoginOTPResponseImpl _value,
      $Res Function(_$LoginOTPResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$LoginOTPResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginResponseData?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginOTPResponseImpl implements _LoginOTPResponse {
  const _$LoginOTPResponseImpl(
      {required this.success, this.data, this.message});

  factory _$LoginOTPResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginOTPResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final LoginResponseData? data;
  @override
  final String? message;

  @override
  String toString() {
    return 'LoginOTPResponse(success: $success, data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginOTPResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginOTPResponseImplCopyWith<_$LoginOTPResponseImpl> get copyWith =>
      __$$LoginOTPResponseImplCopyWithImpl<_$LoginOTPResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginOTPResponseImplToJson(
      this,
    );
  }
}

abstract class _LoginOTPResponse implements LoginOTPResponse {
  const factory _LoginOTPResponse(
      {required final bool success,
      final LoginResponseData? data,
      final String? message}) = _$LoginOTPResponseImpl;

  factory _LoginOTPResponse.fromJson(Map<String, dynamic> json) =
      _$LoginOTPResponseImpl.fromJson;

  @override
  bool get success;
  @override
  LoginResponseData? get data;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$LoginOTPResponseImplCopyWith<_$LoginOTPResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginResponseData _$LoginResponseDataFromJson(Map<String, dynamic> json) {
  return _LoginResponseData.fromJson(json);
}

/// @nodoc
mixin _$LoginResponseData {
  UserData get user => throw _privateConstructorUsedError;
  SessionData get session => throw _privateConstructorUsedError;
  AuthMethodData get authMethod => throw _privateConstructorUsedError;
  bool get isNewUser => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;
  List<TenantMembership>? get tenantMemberships =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseDataCopyWith<LoginResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseDataCopyWith<$Res> {
  factory $LoginResponseDataCopyWith(
          LoginResponseData value, $Res Function(LoginResponseData) then) =
      _$LoginResponseDataCopyWithImpl<$Res, LoginResponseData>;
  @useResult
  $Res call(
      {UserData user,
      SessionData session,
      AuthMethodData authMethod,
      bool isNewUser,
      String? refreshToken,
      List<TenantMembership>? tenantMemberships});

  $UserDataCopyWith<$Res> get user;
  $SessionDataCopyWith<$Res> get session;
  $AuthMethodDataCopyWith<$Res> get authMethod;
}

/// @nodoc
class _$LoginResponseDataCopyWithImpl<$Res, $Val extends LoginResponseData>
    implements $LoginResponseDataCopyWith<$Res> {
  _$LoginResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? session = null,
    Object? authMethod = null,
    Object? isNewUser = null,
    Object? refreshToken = freezed,
    Object? tenantMemberships = freezed,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData,
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as SessionData,
      authMethod: null == authMethod
          ? _value.authMethod
          : authMethod // ignore: cast_nullable_to_non_nullable
              as AuthMethodData,
      isNewUser: null == isNewUser
          ? _value.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantMemberships: freezed == tenantMemberships
          ? _value.tenantMemberships
          : tenantMemberships // ignore: cast_nullable_to_non_nullable
              as List<TenantMembership>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res> get user {
    return $UserDataCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SessionDataCopyWith<$Res> get session {
    return $SessionDataCopyWith<$Res>(_value.session, (value) {
      return _then(_value.copyWith(session: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthMethodDataCopyWith<$Res> get authMethod {
    return $AuthMethodDataCopyWith<$Res>(_value.authMethod, (value) {
      return _then(_value.copyWith(authMethod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginResponseDataImplCopyWith<$Res>
    implements $LoginResponseDataCopyWith<$Res> {
  factory _$$LoginResponseDataImplCopyWith(_$LoginResponseDataImpl value,
          $Res Function(_$LoginResponseDataImpl) then) =
      __$$LoginResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserData user,
      SessionData session,
      AuthMethodData authMethod,
      bool isNewUser,
      String? refreshToken,
      List<TenantMembership>? tenantMemberships});

  @override
  $UserDataCopyWith<$Res> get user;
  @override
  $SessionDataCopyWith<$Res> get session;
  @override
  $AuthMethodDataCopyWith<$Res> get authMethod;
}

/// @nodoc
class __$$LoginResponseDataImplCopyWithImpl<$Res>
    extends _$LoginResponseDataCopyWithImpl<$Res, _$LoginResponseDataImpl>
    implements _$$LoginResponseDataImplCopyWith<$Res> {
  __$$LoginResponseDataImplCopyWithImpl(_$LoginResponseDataImpl _value,
      $Res Function(_$LoginResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? session = null,
    Object? authMethod = null,
    Object? isNewUser = null,
    Object? refreshToken = freezed,
    Object? tenantMemberships = freezed,
  }) {
    return _then(_$LoginResponseDataImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData,
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as SessionData,
      authMethod: null == authMethod
          ? _value.authMethod
          : authMethod // ignore: cast_nullable_to_non_nullable
              as AuthMethodData,
      isNewUser: null == isNewUser
          ? _value.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantMemberships: freezed == tenantMemberships
          ? _value._tenantMemberships
          : tenantMemberships // ignore: cast_nullable_to_non_nullable
              as List<TenantMembership>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResponseDataImpl implements _LoginResponseData {
  const _$LoginResponseDataImpl(
      {required this.user,
      required this.session,
      required this.authMethod,
      required this.isNewUser,
      this.refreshToken,
      final List<TenantMembership>? tenantMemberships})
      : _tenantMemberships = tenantMemberships;

  factory _$LoginResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseDataImplFromJson(json);

  @override
  final UserData user;
  @override
  final SessionData session;
  @override
  final AuthMethodData authMethod;
  @override
  final bool isNewUser;
  @override
  final String? refreshToken;
  final List<TenantMembership>? _tenantMemberships;
  @override
  List<TenantMembership>? get tenantMemberships {
    final value = _tenantMemberships;
    if (value == null) return null;
    if (_tenantMemberships is EqualUnmodifiableListView)
      return _tenantMemberships;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LoginResponseData(user: $user, session: $session, authMethod: $authMethod, isNewUser: $isNewUser, refreshToken: $refreshToken, tenantMemberships: $tenantMemberships)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseDataImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.authMethod, authMethod) ||
                other.authMethod == authMethod) &&
            (identical(other.isNewUser, isNewUser) ||
                other.isNewUser == isNewUser) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            const DeepCollectionEquality()
                .equals(other._tenantMemberships, _tenantMemberships));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      session,
      authMethod,
      isNewUser,
      refreshToken,
      const DeepCollectionEquality().hash(_tenantMemberships));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseDataImplCopyWith<_$LoginResponseDataImpl> get copyWith =>
      __$$LoginResponseDataImplCopyWithImpl<_$LoginResponseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseDataImplToJson(
      this,
    );
  }
}

abstract class _LoginResponseData implements LoginResponseData {
  const factory _LoginResponseData(
          {required final UserData user,
          required final SessionData session,
          required final AuthMethodData authMethod,
          required final bool isNewUser,
          final String? refreshToken,
          final List<TenantMembership>? tenantMemberships}) =
      _$LoginResponseDataImpl;

  factory _LoginResponseData.fromJson(Map<String, dynamic> json) =
      _$LoginResponseDataImpl.fromJson;

  @override
  UserData get user;
  @override
  SessionData get session;
  @override
  AuthMethodData get authMethod;
  @override
  bool get isNewUser;
  @override
  String? get refreshToken;
  @override
  List<TenantMembership>? get tenantMemberships;
  @override
  @JsonKey(ignore: true)
  _$$LoginResponseDataImplCopyWith<_$LoginResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthMethodData _$AuthMethodDataFromJson(Map<String, dynamic> json) {
  return _AuthMethodData.fromJson(json);
}

/// @nodoc
mixin _$AuthMethodData {
  String get id => throw _privateConstructorUsedError;
  String get provider => throw _privateConstructorUsedError;
  String get providerId => throw _privateConstructorUsedError;
  bool get verified => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthMethodDataCopyWith<AuthMethodData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthMethodDataCopyWith<$Res> {
  factory $AuthMethodDataCopyWith(
          AuthMethodData value, $Res Function(AuthMethodData) then) =
      _$AuthMethodDataCopyWithImpl<$Res, AuthMethodData>;
  @useResult
  $Res call(
      {String id,
      String provider,
      String providerId,
      bool verified,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$AuthMethodDataCopyWithImpl<$Res, $Val extends AuthMethodData>
    implements $AuthMethodDataCopyWith<$Res> {
  _$AuthMethodDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? provider = null,
    Object? providerId = null,
    Object? verified = null,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      providerId: null == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthMethodDataImplCopyWith<$Res>
    implements $AuthMethodDataCopyWith<$Res> {
  factory _$$AuthMethodDataImplCopyWith(_$AuthMethodDataImpl value,
          $Res Function(_$AuthMethodDataImpl) then) =
      __$$AuthMethodDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String provider,
      String providerId,
      bool verified,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$AuthMethodDataImplCopyWithImpl<$Res>
    extends _$AuthMethodDataCopyWithImpl<$Res, _$AuthMethodDataImpl>
    implements _$$AuthMethodDataImplCopyWith<$Res> {
  __$$AuthMethodDataImplCopyWithImpl(
      _$AuthMethodDataImpl _value, $Res Function(_$AuthMethodDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? provider = null,
    Object? providerId = null,
    Object? verified = null,
    Object? metadata = freezed,
  }) {
    return _then(_$AuthMethodDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      providerId: null == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthMethodDataImpl implements _AuthMethodData {
  const _$AuthMethodDataImpl(
      {required this.id,
      required this.provider,
      required this.providerId,
      required this.verified,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$AuthMethodDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthMethodDataImplFromJson(json);

  @override
  final String id;
  @override
  final String provider;
  @override
  final String providerId;
  @override
  final bool verified;
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
    return 'AuthMethodData(id: $id, provider: $provider, providerId: $providerId, verified: $verified, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthMethodDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, provider, providerId,
      verified, const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthMethodDataImplCopyWith<_$AuthMethodDataImpl> get copyWith =>
      __$$AuthMethodDataImplCopyWithImpl<_$AuthMethodDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthMethodDataImplToJson(
      this,
    );
  }
}

abstract class _AuthMethodData implements AuthMethodData {
  const factory _AuthMethodData(
      {required final String id,
      required final String provider,
      required final String providerId,
      required final bool verified,
      final Map<String, dynamic>? metadata}) = _$AuthMethodDataImpl;

  factory _AuthMethodData.fromJson(Map<String, dynamic> json) =
      _$AuthMethodDataImpl.fromJson;

  @override
  String get id;
  @override
  String get provider;
  @override
  String get providerId;
  @override
  bool get verified;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$AuthMethodDataImplCopyWith<_$AuthMethodDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrganizationInfo _$OrganizationInfoFromJson(Map<String, dynamic> json) {
  return _OrganizationInfo.fromJson(json);
}

/// @nodoc
mixin _$OrganizationInfo {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get plan => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  String? get domain => throw _privateConstructorUsedError;
  Map<String, dynamic>? get settings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrganizationInfoCopyWith<OrganizationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationInfoCopyWith<$Res> {
  factory $OrganizationInfoCopyWith(
          OrganizationInfo value, $Res Function(OrganizationInfo) then) =
      _$OrganizationInfoCopyWithImpl<$Res, OrganizationInfo>;
  @useResult
  $Res call(
      {String id,
      String name,
      String plan,
      bool isActive,
      String? logo,
      String? domain,
      Map<String, dynamic>? settings});
}

/// @nodoc
class _$OrganizationInfoCopyWithImpl<$Res, $Val extends OrganizationInfo>
    implements $OrganizationInfoCopyWith<$Res> {
  _$OrganizationInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? plan = null,
    Object? isActive = null,
    Object? logo = freezed,
    Object? domain = freezed,
    Object? settings = freezed,
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
      plan: null == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: freezed == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrganizationInfoImplCopyWith<$Res>
    implements $OrganizationInfoCopyWith<$Res> {
  factory _$$OrganizationInfoImplCopyWith(_$OrganizationInfoImpl value,
          $Res Function(_$OrganizationInfoImpl) then) =
      __$$OrganizationInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String plan,
      bool isActive,
      String? logo,
      String? domain,
      Map<String, dynamic>? settings});
}

/// @nodoc
class __$$OrganizationInfoImplCopyWithImpl<$Res>
    extends _$OrganizationInfoCopyWithImpl<$Res, _$OrganizationInfoImpl>
    implements _$$OrganizationInfoImplCopyWith<$Res> {
  __$$OrganizationInfoImplCopyWithImpl(_$OrganizationInfoImpl _value,
      $Res Function(_$OrganizationInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? plan = null,
    Object? isActive = null,
    Object? logo = freezed,
    Object? domain = freezed,
    Object? settings = freezed,
  }) {
    return _then(_$OrganizationInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      plan: null == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: freezed == settings
          ? _value._settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Deprecated('Use TenantInfo instead')
class _$OrganizationInfoImpl implements _OrganizationInfo {
  const _$OrganizationInfoImpl(
      {required this.id,
      required this.name,
      required this.plan,
      required this.isActive,
      this.logo,
      this.domain,
      final Map<String, dynamic>? settings})
      : _settings = settings;

  factory _$OrganizationInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrganizationInfoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String plan;
  @override
  final bool isActive;
  @override
  final String? logo;
  @override
  final String? domain;
  final Map<String, dynamic>? _settings;
  @override
  Map<String, dynamic>? get settings {
    final value = _settings;
    if (value == null) return null;
    if (_settings is EqualUnmodifiableMapView) return _settings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'OrganizationInfo(id: $id, name: $name, plan: $plan, isActive: $isActive, logo: $logo, domain: $domain, settings: $settings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.plan, plan) || other.plan == plan) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            const DeepCollectionEquality().equals(other._settings, _settings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, plan, isActive, logo,
      domain, const DeepCollectionEquality().hash(_settings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationInfoImplCopyWith<_$OrganizationInfoImpl> get copyWith =>
      __$$OrganizationInfoImplCopyWithImpl<_$OrganizationInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizationInfoImplToJson(
      this,
    );
  }
}

abstract class _OrganizationInfo implements OrganizationInfo {
  const factory _OrganizationInfo(
      {required final String id,
      required final String name,
      required final String plan,
      required final bool isActive,
      final String? logo,
      final String? domain,
      final Map<String, dynamic>? settings}) = _$OrganizationInfoImpl;

  factory _OrganizationInfo.fromJson(Map<String, dynamic> json) =
      _$OrganizationInfoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get plan;
  @override
  bool get isActive;
  @override
  String? get logo;
  @override
  String? get domain;
  @override
  Map<String, dynamic>? get settings;
  @override
  @JsonKey(ignore: true)
  _$$OrganizationInfoImplCopyWith<_$OrganizationInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OTPRequest _$OTPRequestFromJson(Map<String, dynamic> json) {
  return _OTPRequest.fromJson(json);
}

/// @nodoc
mixin _$OTPRequest {
  String get email => throw _privateConstructorUsedError;
  String? get tenantId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OTPRequestCopyWith<OTPRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OTPRequestCopyWith<$Res> {
  factory $OTPRequestCopyWith(
          OTPRequest value, $Res Function(OTPRequest) then) =
      _$OTPRequestCopyWithImpl<$Res, OTPRequest>;
  @useResult
  $Res call({String email, String? tenantId});
}

/// @nodoc
class _$OTPRequestCopyWithImpl<$Res, $Val extends OTPRequest>
    implements $OTPRequestCopyWith<$Res> {
  _$OTPRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? tenantId = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OTPRequestImplCopyWith<$Res>
    implements $OTPRequestCopyWith<$Res> {
  factory _$$OTPRequestImplCopyWith(
          _$OTPRequestImpl value, $Res Function(_$OTPRequestImpl) then) =
      __$$OTPRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String? tenantId});
}

/// @nodoc
class __$$OTPRequestImplCopyWithImpl<$Res>
    extends _$OTPRequestCopyWithImpl<$Res, _$OTPRequestImpl>
    implements _$$OTPRequestImplCopyWith<$Res> {
  __$$OTPRequestImplCopyWithImpl(
      _$OTPRequestImpl _value, $Res Function(_$OTPRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? tenantId = freezed,
  }) {
    return _then(_$OTPRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OTPRequestImpl implements _OTPRequest {
  const _$OTPRequestImpl({required this.email, this.tenantId});

  factory _$OTPRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$OTPRequestImplFromJson(json);

  @override
  final String email;
  @override
  final String? tenantId;

  @override
  String toString() {
    return 'OTPRequest(email: $email, tenantId: $tenantId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OTPRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, tenantId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OTPRequestImplCopyWith<_$OTPRequestImpl> get copyWith =>
      __$$OTPRequestImplCopyWithImpl<_$OTPRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OTPRequestImplToJson(
      this,
    );
  }
}

abstract class _OTPRequest implements OTPRequest {
  const factory _OTPRequest(
      {required final String email, final String? tenantId}) = _$OTPRequestImpl;

  factory _OTPRequest.fromJson(Map<String, dynamic> json) =
      _$OTPRequestImpl.fromJson;

  @override
  String get email;
  @override
  String? get tenantId;
  @override
  @JsonKey(ignore: true)
  _$$OTPRequestImplCopyWith<_$OTPRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OTPResponse _$OTPResponseFromJson(Map<String, dynamic> json) {
  return _OTPResponse.fromJson(json);
}

/// @nodoc
mixin _$OTPResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String? get expiresAt => throw _privateConstructorUsedError;
  bool? get requiresTenantSelection => throw _privateConstructorUsedError;
  bool? get isNewUser =>
      throw _privateConstructorUsedError; // Single tenant response
  String? get defaultTenantId => throw _privateConstructorUsedError;
  String? get defaultTenantName =>
      throw _privateConstructorUsedError; // Selected tenant response
  String? get selectedTenantId => throw _privateConstructorUsedError;
  String? get selectedTenantName =>
      throw _privateConstructorUsedError; // Multiple tenant response
  List<TenantInfo>? get tenants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OTPResponseCopyWith<OTPResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OTPResponseCopyWith<$Res> {
  factory $OTPResponseCopyWith(
          OTPResponse value, $Res Function(OTPResponse) then) =
      _$OTPResponseCopyWithImpl<$Res, OTPResponse>;
  @useResult
  $Res call(
      {bool success,
      String message,
      String? expiresAt,
      bool? requiresTenantSelection,
      bool? isNewUser,
      String? defaultTenantId,
      String? defaultTenantName,
      String? selectedTenantId,
      String? selectedTenantName,
      List<TenantInfo>? tenants});
}

/// @nodoc
class _$OTPResponseCopyWithImpl<$Res, $Val extends OTPResponse>
    implements $OTPResponseCopyWith<$Res> {
  _$OTPResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? expiresAt = freezed,
    Object? requiresTenantSelection = freezed,
    Object? isNewUser = freezed,
    Object? defaultTenantId = freezed,
    Object? defaultTenantName = freezed,
    Object? selectedTenantId = freezed,
    Object? selectedTenantName = freezed,
    Object? tenants = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
      requiresTenantSelection: freezed == requiresTenantSelection
          ? _value.requiresTenantSelection
          : requiresTenantSelection // ignore: cast_nullable_to_non_nullable
              as bool?,
      isNewUser: freezed == isNewUser
          ? _value.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      defaultTenantId: freezed == defaultTenantId
          ? _value.defaultTenantId
          : defaultTenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultTenantName: freezed == defaultTenantName
          ? _value.defaultTenantName
          : defaultTenantName // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedTenantId: freezed == selectedTenantId
          ? _value.selectedTenantId
          : selectedTenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedTenantName: freezed == selectedTenantName
          ? _value.selectedTenantName
          : selectedTenantName // ignore: cast_nullable_to_non_nullable
              as String?,
      tenants: freezed == tenants
          ? _value.tenants
          : tenants // ignore: cast_nullable_to_non_nullable
              as List<TenantInfo>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OTPResponseImplCopyWith<$Res>
    implements $OTPResponseCopyWith<$Res> {
  factory _$$OTPResponseImplCopyWith(
          _$OTPResponseImpl value, $Res Function(_$OTPResponseImpl) then) =
      __$$OTPResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool success,
      String message,
      String? expiresAt,
      bool? requiresTenantSelection,
      bool? isNewUser,
      String? defaultTenantId,
      String? defaultTenantName,
      String? selectedTenantId,
      String? selectedTenantName,
      List<TenantInfo>? tenants});
}

/// @nodoc
class __$$OTPResponseImplCopyWithImpl<$Res>
    extends _$OTPResponseCopyWithImpl<$Res, _$OTPResponseImpl>
    implements _$$OTPResponseImplCopyWith<$Res> {
  __$$OTPResponseImplCopyWithImpl(
      _$OTPResponseImpl _value, $Res Function(_$OTPResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? expiresAt = freezed,
    Object? requiresTenantSelection = freezed,
    Object? isNewUser = freezed,
    Object? defaultTenantId = freezed,
    Object? defaultTenantName = freezed,
    Object? selectedTenantId = freezed,
    Object? selectedTenantName = freezed,
    Object? tenants = freezed,
  }) {
    return _then(_$OTPResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
      requiresTenantSelection: freezed == requiresTenantSelection
          ? _value.requiresTenantSelection
          : requiresTenantSelection // ignore: cast_nullable_to_non_nullable
              as bool?,
      isNewUser: freezed == isNewUser
          ? _value.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      defaultTenantId: freezed == defaultTenantId
          ? _value.defaultTenantId
          : defaultTenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultTenantName: freezed == defaultTenantName
          ? _value.defaultTenantName
          : defaultTenantName // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedTenantId: freezed == selectedTenantId
          ? _value.selectedTenantId
          : selectedTenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedTenantName: freezed == selectedTenantName
          ? _value.selectedTenantName
          : selectedTenantName // ignore: cast_nullable_to_non_nullable
              as String?,
      tenants: freezed == tenants
          ? _value._tenants
          : tenants // ignore: cast_nullable_to_non_nullable
              as List<TenantInfo>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OTPResponseImpl implements _OTPResponse {
  const _$OTPResponseImpl(
      {required this.success,
      required this.message,
      this.expiresAt,
      this.requiresTenantSelection,
      this.isNewUser,
      this.defaultTenantId,
      this.defaultTenantName,
      this.selectedTenantId,
      this.selectedTenantName,
      final List<TenantInfo>? tenants})
      : _tenants = tenants;

  factory _$OTPResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OTPResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final String? expiresAt;
  @override
  final bool? requiresTenantSelection;
  @override
  final bool? isNewUser;
// Single tenant response
  @override
  final String? defaultTenantId;
  @override
  final String? defaultTenantName;
// Selected tenant response
  @override
  final String? selectedTenantId;
  @override
  final String? selectedTenantName;
// Multiple tenant response
  final List<TenantInfo>? _tenants;
// Multiple tenant response
  @override
  List<TenantInfo>? get tenants {
    final value = _tenants;
    if (value == null) return null;
    if (_tenants is EqualUnmodifiableListView) return _tenants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OTPResponse(success: $success, message: $message, expiresAt: $expiresAt, requiresTenantSelection: $requiresTenantSelection, isNewUser: $isNewUser, defaultTenantId: $defaultTenantId, defaultTenantName: $defaultTenantName, selectedTenantId: $selectedTenantId, selectedTenantName: $selectedTenantName, tenants: $tenants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OTPResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(
                    other.requiresTenantSelection, requiresTenantSelection) ||
                other.requiresTenantSelection == requiresTenantSelection) &&
            (identical(other.isNewUser, isNewUser) ||
                other.isNewUser == isNewUser) &&
            (identical(other.defaultTenantId, defaultTenantId) ||
                other.defaultTenantId == defaultTenantId) &&
            (identical(other.defaultTenantName, defaultTenantName) ||
                other.defaultTenantName == defaultTenantName) &&
            (identical(other.selectedTenantId, selectedTenantId) ||
                other.selectedTenantId == selectedTenantId) &&
            (identical(other.selectedTenantName, selectedTenantName) ||
                other.selectedTenantName == selectedTenantName) &&
            const DeepCollectionEquality().equals(other._tenants, _tenants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      success,
      message,
      expiresAt,
      requiresTenantSelection,
      isNewUser,
      defaultTenantId,
      defaultTenantName,
      selectedTenantId,
      selectedTenantName,
      const DeepCollectionEquality().hash(_tenants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OTPResponseImplCopyWith<_$OTPResponseImpl> get copyWith =>
      __$$OTPResponseImplCopyWithImpl<_$OTPResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OTPResponseImplToJson(
      this,
    );
  }
}

abstract class _OTPResponse implements OTPResponse {
  const factory _OTPResponse(
      {required final bool success,
      required final String message,
      final String? expiresAt,
      final bool? requiresTenantSelection,
      final bool? isNewUser,
      final String? defaultTenantId,
      final String? defaultTenantName,
      final String? selectedTenantId,
      final String? selectedTenantName,
      final List<TenantInfo>? tenants}) = _$OTPResponseImpl;

  factory _OTPResponse.fromJson(Map<String, dynamic> json) =
      _$OTPResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  String? get expiresAt;
  @override
  bool? get requiresTenantSelection;
  @override
  bool? get isNewUser;
  @override // Single tenant response
  String? get defaultTenantId;
  @override
  String? get defaultTenantName;
  @override // Selected tenant response
  String? get selectedTenantId;
  @override
  String? get selectedTenantName;
  @override // Multiple tenant response
  List<TenantInfo>? get tenants;
  @override
  @JsonKey(ignore: true)
  _$$OTPResponseImplCopyWith<_$OTPResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RefreshTokenRequest _$RefreshTokenRequestFromJson(Map<String, dynamic> json) {
  return _RefreshTokenRequest.fromJson(json);
}

/// @nodoc
mixin _$RefreshTokenRequest {
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefreshTokenRequestCopyWith<RefreshTokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshTokenRequestCopyWith<$Res> {
  factory $RefreshTokenRequestCopyWith(
          RefreshTokenRequest value, $Res Function(RefreshTokenRequest) then) =
      _$RefreshTokenRequestCopyWithImpl<$Res, RefreshTokenRequest>;
  @useResult
  $Res call({String refreshToken});
}

/// @nodoc
class _$RefreshTokenRequestCopyWithImpl<$Res, $Val extends RefreshTokenRequest>
    implements $RefreshTokenRequestCopyWith<$Res> {
  _$RefreshTokenRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefreshTokenRequestImplCopyWith<$Res>
    implements $RefreshTokenRequestCopyWith<$Res> {
  factory _$$RefreshTokenRequestImplCopyWith(_$RefreshTokenRequestImpl value,
          $Res Function(_$RefreshTokenRequestImpl) then) =
      __$$RefreshTokenRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String refreshToken});
}

/// @nodoc
class __$$RefreshTokenRequestImplCopyWithImpl<$Res>
    extends _$RefreshTokenRequestCopyWithImpl<$Res, _$RefreshTokenRequestImpl>
    implements _$$RefreshTokenRequestImplCopyWith<$Res> {
  __$$RefreshTokenRequestImplCopyWithImpl(_$RefreshTokenRequestImpl _value,
      $Res Function(_$RefreshTokenRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
  }) {
    return _then(_$RefreshTokenRequestImpl(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefreshTokenRequestImpl implements _RefreshTokenRequest {
  const _$RefreshTokenRequestImpl({required this.refreshToken});

  factory _$RefreshTokenRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefreshTokenRequestImplFromJson(json);

  @override
  final String refreshToken;

  @override
  String toString() {
    return 'RefreshTokenRequest(refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshTokenRequestImpl &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshTokenRequestImplCopyWith<_$RefreshTokenRequestImpl> get copyWith =>
      __$$RefreshTokenRequestImplCopyWithImpl<_$RefreshTokenRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefreshTokenRequestImplToJson(
      this,
    );
  }
}

abstract class _RefreshTokenRequest implements RefreshTokenRequest {
  const factory _RefreshTokenRequest({required final String refreshToken}) =
      _$RefreshTokenRequestImpl;

  factory _RefreshTokenRequest.fromJson(Map<String, dynamic> json) =
      _$RefreshTokenRequestImpl.fromJson;

  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$RefreshTokenRequestImplCopyWith<_$RefreshTokenRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SessionData _$SessionDataFromJson(Map<String, dynamic> json) {
  return _SessionData.fromJson(json);
}

/// @nodoc
mixin _$SessionData {
  String get accessToken => throw _privateConstructorUsedError;
  String get expiresAt => throw _privateConstructorUsedError;
  String get csrfToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionDataCopyWith<SessionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionDataCopyWith<$Res> {
  factory $SessionDataCopyWith(
          SessionData value, $Res Function(SessionData) then) =
      _$SessionDataCopyWithImpl<$Res, SessionData>;
  @useResult
  $Res call({String accessToken, String expiresAt, String csrfToken});
}

/// @nodoc
class _$SessionDataCopyWithImpl<$Res, $Val extends SessionData>
    implements $SessionDataCopyWith<$Res> {
  _$SessionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? expiresAt = null,
    Object? csrfToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String,
      csrfToken: null == csrfToken
          ? _value.csrfToken
          : csrfToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionDataImplCopyWith<$Res>
    implements $SessionDataCopyWith<$Res> {
  factory _$$SessionDataImplCopyWith(
          _$SessionDataImpl value, $Res Function(_$SessionDataImpl) then) =
      __$$SessionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, String expiresAt, String csrfToken});
}

/// @nodoc
class __$$SessionDataImplCopyWithImpl<$Res>
    extends _$SessionDataCopyWithImpl<$Res, _$SessionDataImpl>
    implements _$$SessionDataImplCopyWith<$Res> {
  __$$SessionDataImplCopyWithImpl(
      _$SessionDataImpl _value, $Res Function(_$SessionDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? expiresAt = null,
    Object? csrfToken = null,
  }) {
    return _then(_$SessionDataImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String,
      csrfToken: null == csrfToken
          ? _value.csrfToken
          : csrfToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionDataImpl implements _SessionData {
  const _$SessionDataImpl(
      {required this.accessToken,
      required this.expiresAt,
      required this.csrfToken});

  factory _$SessionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionDataImplFromJson(json);

  @override
  final String accessToken;
  @override
  final String expiresAt;
  @override
  final String csrfToken;

  @override
  String toString() {
    return 'SessionData(accessToken: $accessToken, expiresAt: $expiresAt, csrfToken: $csrfToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionDataImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.csrfToken, csrfToken) ||
                other.csrfToken == csrfToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, expiresAt, csrfToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionDataImplCopyWith<_$SessionDataImpl> get copyWith =>
      __$$SessionDataImplCopyWithImpl<_$SessionDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionDataImplToJson(
      this,
    );
  }
}

abstract class _SessionData implements SessionData {
  const factory _SessionData(
      {required final String accessToken,
      required final String expiresAt,
      required final String csrfToken}) = _$SessionDataImpl;

  factory _SessionData.fromJson(Map<String, dynamic> json) =
      _$SessionDataImpl.fromJson;

  @override
  String get accessToken;
  @override
  String get expiresAt;
  @override
  String get csrfToken;
  @override
  @JsonKey(ignore: true)
  _$$SessionDataImplCopyWith<_$SessionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TenantInfo _$TenantInfoFromJson(Map<String, dynamic> json) {
  return _TenantInfo.fromJson(json);
}

/// @nodoc
mixin _$TenantInfo {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TenantInfoCopyWith<TenantInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenantInfoCopyWith<$Res> {
  factory $TenantInfoCopyWith(
          TenantInfo value, $Res Function(TenantInfo) then) =
      _$TenantInfoCopyWithImpl<$Res, TenantInfo>;
  @useResult
  $Res call({String id, String name, String role});
}

/// @nodoc
class _$TenantInfoCopyWithImpl<$Res, $Val extends TenantInfo>
    implements $TenantInfoCopyWith<$Res> {
  _$TenantInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? role = null,
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
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TenantInfoImplCopyWith<$Res>
    implements $TenantInfoCopyWith<$Res> {
  factory _$$TenantInfoImplCopyWith(
          _$TenantInfoImpl value, $Res Function(_$TenantInfoImpl) then) =
      __$$TenantInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String role});
}

/// @nodoc
class __$$TenantInfoImplCopyWithImpl<$Res>
    extends _$TenantInfoCopyWithImpl<$Res, _$TenantInfoImpl>
    implements _$$TenantInfoImplCopyWith<$Res> {
  __$$TenantInfoImplCopyWithImpl(
      _$TenantInfoImpl _value, $Res Function(_$TenantInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? role = null,
  }) {
    return _then(_$TenantInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TenantInfoImpl implements _TenantInfo {
  const _$TenantInfoImpl(
      {required this.id, required this.name, required this.role});

  factory _$TenantInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TenantInfoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String role;

  @override
  String toString() {
    return 'TenantInfo(id: $id, name: $name, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TenantInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TenantInfoImplCopyWith<_$TenantInfoImpl> get copyWith =>
      __$$TenantInfoImplCopyWithImpl<_$TenantInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TenantInfoImplToJson(
      this,
    );
  }
}

abstract class _TenantInfo implements TenantInfo {
  const factory _TenantInfo(
      {required final String id,
      required final String name,
      required final String role}) = _$TenantInfoImpl;

  factory _TenantInfo.fromJson(Map<String, dynamic> json) =
      _$TenantInfoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get role;
  @override
  @JsonKey(ignore: true)
  _$$TenantInfoImplCopyWith<_$TenantInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TenantMembership _$TenantMembershipFromJson(Map<String, dynamic> json) {
  return _TenantMembership.fromJson(json);
}

/// @nodoc
mixin _$TenantMembership {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get tenantId => throw _privateConstructorUsedError;
  String get roleId => throw _privateConstructorUsedError;
  String get roleName => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  Map<String, dynamic> get permissions => throw _privateConstructorUsedError;
  String get accessLevel => throw _privateConstructorUsedError;
  Map<String, dynamic> get resourceRestrictions =>
      throw _privateConstructorUsedError;
  String get insertedAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String? get roleDescription => throw _privateConstructorUsedError;
  String? get roleColor => throw _privateConstructorUsedError;
  Map<String, dynamic>? get ipRestrictions =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get timeRestrictions =>
      throw _privateConstructorUsedError;
  String? get expiresAt => throw _privateConstructorUsedError;
  String? get invitedBy => throw _privateConstructorUsedError;
  String? get invitedAt => throw _privateConstructorUsedError;
  String? get joinedAt => throw _privateConstructorUsedError;
  String? get lastLoginAt => throw _privateConstructorUsedError;
  String? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TenantMembershipCopyWith<TenantMembership> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenantMembershipCopyWith<$Res> {
  factory $TenantMembershipCopyWith(
          TenantMembership value, $Res Function(TenantMembership) then) =
      _$TenantMembershipCopyWithImpl<$Res, TenantMembership>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String tenantId,
      String roleId,
      String roleName,
      String status,
      Map<String, dynamic> permissions,
      String accessLevel,
      Map<String, dynamic> resourceRestrictions,
      String insertedAt,
      String updatedAt,
      String? roleDescription,
      String? roleColor,
      Map<String, dynamic>? ipRestrictions,
      Map<String, dynamic>? timeRestrictions,
      String? expiresAt,
      String? invitedBy,
      String? invitedAt,
      String? joinedAt,
      String? lastLoginAt,
      String? deletedAt});
}

/// @nodoc
class _$TenantMembershipCopyWithImpl<$Res, $Val extends TenantMembership>
    implements $TenantMembershipCopyWith<$Res> {
  _$TenantMembershipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? tenantId = null,
    Object? roleId = null,
    Object? roleName = null,
    Object? status = null,
    Object? permissions = null,
    Object? accessLevel = null,
    Object? resourceRestrictions = null,
    Object? insertedAt = null,
    Object? updatedAt = null,
    Object? roleDescription = freezed,
    Object? roleColor = freezed,
    Object? ipRestrictions = freezed,
    Object? timeRestrictions = freezed,
    Object? expiresAt = freezed,
    Object? invitedBy = freezed,
    Object? invitedAt = freezed,
    Object? joinedAt = freezed,
    Object? lastLoginAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: null == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String,
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String,
      roleName: null == roleName
          ? _value.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      accessLevel: null == accessLevel
          ? _value.accessLevel
          : accessLevel // ignore: cast_nullable_to_non_nullable
              as String,
      resourceRestrictions: null == resourceRestrictions
          ? _value.resourceRestrictions
          : resourceRestrictions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      insertedAt: null == insertedAt
          ? _value.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      roleDescription: freezed == roleDescription
          ? _value.roleDescription
          : roleDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      roleColor: freezed == roleColor
          ? _value.roleColor
          : roleColor // ignore: cast_nullable_to_non_nullable
              as String?,
      ipRestrictions: freezed == ipRestrictions
          ? _value.ipRestrictions
          : ipRestrictions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      timeRestrictions: freezed == timeRestrictions
          ? _value.timeRestrictions
          : timeRestrictions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
      invitedBy: freezed == invitedBy
          ? _value.invitedBy
          : invitedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      invitedAt: freezed == invitedAt
          ? _value.invitedAt
          : invitedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      joinedAt: freezed == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      lastLoginAt: freezed == lastLoginAt
          ? _value.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TenantMembershipImplCopyWith<$Res>
    implements $TenantMembershipCopyWith<$Res> {
  factory _$$TenantMembershipImplCopyWith(_$TenantMembershipImpl value,
          $Res Function(_$TenantMembershipImpl) then) =
      __$$TenantMembershipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String tenantId,
      String roleId,
      String roleName,
      String status,
      Map<String, dynamic> permissions,
      String accessLevel,
      Map<String, dynamic> resourceRestrictions,
      String insertedAt,
      String updatedAt,
      String? roleDescription,
      String? roleColor,
      Map<String, dynamic>? ipRestrictions,
      Map<String, dynamic>? timeRestrictions,
      String? expiresAt,
      String? invitedBy,
      String? invitedAt,
      String? joinedAt,
      String? lastLoginAt,
      String? deletedAt});
}

/// @nodoc
class __$$TenantMembershipImplCopyWithImpl<$Res>
    extends _$TenantMembershipCopyWithImpl<$Res, _$TenantMembershipImpl>
    implements _$$TenantMembershipImplCopyWith<$Res> {
  __$$TenantMembershipImplCopyWithImpl(_$TenantMembershipImpl _value,
      $Res Function(_$TenantMembershipImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? tenantId = null,
    Object? roleId = null,
    Object? roleName = null,
    Object? status = null,
    Object? permissions = null,
    Object? accessLevel = null,
    Object? resourceRestrictions = null,
    Object? insertedAt = null,
    Object? updatedAt = null,
    Object? roleDescription = freezed,
    Object? roleColor = freezed,
    Object? ipRestrictions = freezed,
    Object? timeRestrictions = freezed,
    Object? expiresAt = freezed,
    Object? invitedBy = freezed,
    Object? invitedAt = freezed,
    Object? joinedAt = freezed,
    Object? lastLoginAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$TenantMembershipImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: null == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String,
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String,
      roleName: null == roleName
          ? _value.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      permissions: null == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      accessLevel: null == accessLevel
          ? _value.accessLevel
          : accessLevel // ignore: cast_nullable_to_non_nullable
              as String,
      resourceRestrictions: null == resourceRestrictions
          ? _value._resourceRestrictions
          : resourceRestrictions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      insertedAt: null == insertedAt
          ? _value.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      roleDescription: freezed == roleDescription
          ? _value.roleDescription
          : roleDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      roleColor: freezed == roleColor
          ? _value.roleColor
          : roleColor // ignore: cast_nullable_to_non_nullable
              as String?,
      ipRestrictions: freezed == ipRestrictions
          ? _value._ipRestrictions
          : ipRestrictions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      timeRestrictions: freezed == timeRestrictions
          ? _value._timeRestrictions
          : timeRestrictions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
      invitedBy: freezed == invitedBy
          ? _value.invitedBy
          : invitedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      invitedAt: freezed == invitedAt
          ? _value.invitedAt
          : invitedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      joinedAt: freezed == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      lastLoginAt: freezed == lastLoginAt
          ? _value.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TenantMembershipImpl implements _TenantMembership {
  const _$TenantMembershipImpl(
      {required this.id,
      required this.userId,
      required this.tenantId,
      required this.roleId,
      required this.roleName,
      required this.status,
      required final Map<String, dynamic> permissions,
      required this.accessLevel,
      required final Map<String, dynamic> resourceRestrictions,
      required this.insertedAt,
      required this.updatedAt,
      this.roleDescription,
      this.roleColor,
      final Map<String, dynamic>? ipRestrictions,
      final Map<String, dynamic>? timeRestrictions,
      this.expiresAt,
      this.invitedBy,
      this.invitedAt,
      this.joinedAt,
      this.lastLoginAt,
      this.deletedAt})
      : _permissions = permissions,
        _resourceRestrictions = resourceRestrictions,
        _ipRestrictions = ipRestrictions,
        _timeRestrictions = timeRestrictions;

  factory _$TenantMembershipImpl.fromJson(Map<String, dynamic> json) =>
      _$$TenantMembershipImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String tenantId;
  @override
  final String roleId;
  @override
  final String roleName;
  @override
  final String status;
  final Map<String, dynamic> _permissions;
  @override
  Map<String, dynamic> get permissions {
    if (_permissions is EqualUnmodifiableMapView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_permissions);
  }

  @override
  final String accessLevel;
  final Map<String, dynamic> _resourceRestrictions;
  @override
  Map<String, dynamic> get resourceRestrictions {
    if (_resourceRestrictions is EqualUnmodifiableMapView)
      return _resourceRestrictions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_resourceRestrictions);
  }

  @override
  final String insertedAt;
  @override
  final String updatedAt;
  @override
  final String? roleDescription;
  @override
  final String? roleColor;
  final Map<String, dynamic>? _ipRestrictions;
  @override
  Map<String, dynamic>? get ipRestrictions {
    final value = _ipRestrictions;
    if (value == null) return null;
    if (_ipRestrictions is EqualUnmodifiableMapView) return _ipRestrictions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _timeRestrictions;
  @override
  Map<String, dynamic>? get timeRestrictions {
    final value = _timeRestrictions;
    if (value == null) return null;
    if (_timeRestrictions is EqualUnmodifiableMapView) return _timeRestrictions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? expiresAt;
  @override
  final String? invitedBy;
  @override
  final String? invitedAt;
  @override
  final String? joinedAt;
  @override
  final String? lastLoginAt;
  @override
  final String? deletedAt;

  @override
  String toString() {
    return 'TenantMembership(id: $id, userId: $userId, tenantId: $tenantId, roleId: $roleId, roleName: $roleName, status: $status, permissions: $permissions, accessLevel: $accessLevel, resourceRestrictions: $resourceRestrictions, insertedAt: $insertedAt, updatedAt: $updatedAt, roleDescription: $roleDescription, roleColor: $roleColor, ipRestrictions: $ipRestrictions, timeRestrictions: $timeRestrictions, expiresAt: $expiresAt, invitedBy: $invitedBy, invitedAt: $invitedAt, joinedAt: $joinedAt, lastLoginAt: $lastLoginAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TenantMembershipImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.roleName, roleName) ||
                other.roleName == roleName) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions) &&
            (identical(other.accessLevel, accessLevel) ||
                other.accessLevel == accessLevel) &&
            const DeepCollectionEquality()
                .equals(other._resourceRestrictions, _resourceRestrictions) &&
            (identical(other.insertedAt, insertedAt) ||
                other.insertedAt == insertedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.roleDescription, roleDescription) ||
                other.roleDescription == roleDescription) &&
            (identical(other.roleColor, roleColor) ||
                other.roleColor == roleColor) &&
            const DeepCollectionEquality()
                .equals(other._ipRestrictions, _ipRestrictions) &&
            const DeepCollectionEquality()
                .equals(other._timeRestrictions, _timeRestrictions) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.invitedBy, invitedBy) ||
                other.invitedBy == invitedBy) &&
            (identical(other.invitedAt, invitedAt) ||
                other.invitedAt == invitedAt) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt) &&
            (identical(other.lastLoginAt, lastLoginAt) ||
                other.lastLoginAt == lastLoginAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        tenantId,
        roleId,
        roleName,
        status,
        const DeepCollectionEquality().hash(_permissions),
        accessLevel,
        const DeepCollectionEquality().hash(_resourceRestrictions),
        insertedAt,
        updatedAt,
        roleDescription,
        roleColor,
        const DeepCollectionEquality().hash(_ipRestrictions),
        const DeepCollectionEquality().hash(_timeRestrictions),
        expiresAt,
        invitedBy,
        invitedAt,
        joinedAt,
        lastLoginAt,
        deletedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TenantMembershipImplCopyWith<_$TenantMembershipImpl> get copyWith =>
      __$$TenantMembershipImplCopyWithImpl<_$TenantMembershipImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TenantMembershipImplToJson(
      this,
    );
  }
}

abstract class _TenantMembership implements TenantMembership {
  const factory _TenantMembership(
      {required final String id,
      required final String userId,
      required final String tenantId,
      required final String roleId,
      required final String roleName,
      required final String status,
      required final Map<String, dynamic> permissions,
      required final String accessLevel,
      required final Map<String, dynamic> resourceRestrictions,
      required final String insertedAt,
      required final String updatedAt,
      final String? roleDescription,
      final String? roleColor,
      final Map<String, dynamic>? ipRestrictions,
      final Map<String, dynamic>? timeRestrictions,
      final String? expiresAt,
      final String? invitedBy,
      final String? invitedAt,
      final String? joinedAt,
      final String? lastLoginAt,
      final String? deletedAt}) = _$TenantMembershipImpl;

  factory _TenantMembership.fromJson(Map<String, dynamic> json) =
      _$TenantMembershipImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get tenantId;
  @override
  String get roleId;
  @override
  String get roleName;
  @override
  String get status;
  @override
  Map<String, dynamic> get permissions;
  @override
  String get accessLevel;
  @override
  Map<String, dynamic> get resourceRestrictions;
  @override
  String get insertedAt;
  @override
  String get updatedAt;
  @override
  String? get roleDescription;
  @override
  String? get roleColor;
  @override
  Map<String, dynamic>? get ipRestrictions;
  @override
  Map<String, dynamic>? get timeRestrictions;
  @override
  String? get expiresAt;
  @override
  String? get invitedBy;
  @override
  String? get invitedAt;
  @override
  String? get joinedAt;
  @override
  String? get lastLoginAt;
  @override
  String? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$TenantMembershipImplCopyWith<_$TenantMembershipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  String get id => throw _privateConstructorUsedError;
  bool get twoFactorEnabled => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get insertedAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get twoFactorSecret => throw _privateConstructorUsedError;
  String? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call(
      {String id,
      bool twoFactorEnabled,
      String status,
      String insertedAt,
      String updatedAt,
      String? displayName,
      String? twoFactorSecret,
      String? deletedAt});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? twoFactorEnabled = null,
    Object? status = null,
    Object? insertedAt = null,
    Object? updatedAt = null,
    Object? displayName = freezed,
    Object? twoFactorSecret = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      twoFactorEnabled: null == twoFactorEnabled
          ? _value.twoFactorEnabled
          : twoFactorEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      insertedAt: null == insertedAt
          ? _value.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      twoFactorSecret: freezed == twoFactorSecret
          ? _value.twoFactorSecret
          : twoFactorSecret // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDataImplCopyWith<$Res>
    implements $UserDataCopyWith<$Res> {
  factory _$$UserDataImplCopyWith(
          _$UserDataImpl value, $Res Function(_$UserDataImpl) then) =
      __$$UserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      bool twoFactorEnabled,
      String status,
      String insertedAt,
      String updatedAt,
      String? displayName,
      String? twoFactorSecret,
      String? deletedAt});
}

/// @nodoc
class __$$UserDataImplCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$UserDataImpl>
    implements _$$UserDataImplCopyWith<$Res> {
  __$$UserDataImplCopyWithImpl(
      _$UserDataImpl _value, $Res Function(_$UserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? twoFactorEnabled = null,
    Object? status = null,
    Object? insertedAt = null,
    Object? updatedAt = null,
    Object? displayName = freezed,
    Object? twoFactorSecret = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$UserDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      twoFactorEnabled: null == twoFactorEnabled
          ? _value.twoFactorEnabled
          : twoFactorEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      insertedAt: null == insertedAt
          ? _value.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      twoFactorSecret: freezed == twoFactorSecret
          ? _value.twoFactorSecret
          : twoFactorSecret // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataImpl implements _UserData {
  const _$UserDataImpl(
      {required this.id,
      required this.twoFactorEnabled,
      required this.status,
      required this.insertedAt,
      required this.updatedAt,
      this.displayName,
      this.twoFactorSecret,
      this.deletedAt});

  factory _$UserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataImplFromJson(json);

  @override
  final String id;
  @override
  final bool twoFactorEnabled;
  @override
  final String status;
  @override
  final String insertedAt;
  @override
  final String updatedAt;
  @override
  final String? displayName;
  @override
  final String? twoFactorSecret;
  @override
  final String? deletedAt;

  @override
  String toString() {
    return 'UserData(id: $id, twoFactorEnabled: $twoFactorEnabled, status: $status, insertedAt: $insertedAt, updatedAt: $updatedAt, displayName: $displayName, twoFactorSecret: $twoFactorSecret, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.twoFactorEnabled, twoFactorEnabled) ||
                other.twoFactorEnabled == twoFactorEnabled) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.insertedAt, insertedAt) ||
                other.insertedAt == insertedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.twoFactorSecret, twoFactorSecret) ||
                other.twoFactorSecret == twoFactorSecret) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, twoFactorEnabled, status,
      insertedAt, updatedAt, displayName, twoFactorSecret, deletedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      __$$UserDataImplCopyWithImpl<_$UserDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataImplToJson(
      this,
    );
  }
}

abstract class _UserData implements UserData {
  const factory _UserData(
      {required final String id,
      required final bool twoFactorEnabled,
      required final String status,
      required final String insertedAt,
      required final String updatedAt,
      final String? displayName,
      final String? twoFactorSecret,
      final String? deletedAt}) = _$UserDataImpl;

  factory _UserData.fromJson(Map<String, dynamic> json) =
      _$UserDataImpl.fromJson;

  @override
  String get id;
  @override
  bool get twoFactorEnabled;
  @override
  String get status;
  @override
  String get insertedAt;
  @override
  String get updatedAt;
  @override
  String? get displayName;
  @override
  String? get twoFactorSecret;
  @override
  String? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  return _UserProfile.fromJson(json);
}

/// @nodoc
mixin _$UserProfile {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  List<String> get roles => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res, UserProfile>;
  @useResult
  $Res call(
      {String id,
      String email,
      String firstName,
      String lastName,
      List<String> roles,
      bool isActive,
      DateTime createdAt,
      String? avatar,
      DateTime? updatedAt,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res, $Val extends UserProfile>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? roles = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? avatar = freezed,
    Object? updatedAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
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
}

/// @nodoc
abstract class _$$UserProfileImplCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$$UserProfileImplCopyWith(
          _$UserProfileImpl value, $Res Function(_$UserProfileImpl) then) =
      __$$UserProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      String firstName,
      String lastName,
      List<String> roles,
      bool isActive,
      DateTime createdAt,
      String? avatar,
      DateTime? updatedAt,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$UserProfileImplCopyWithImpl<$Res>
    extends _$UserProfileCopyWithImpl<$Res, _$UserProfileImpl>
    implements _$$UserProfileImplCopyWith<$Res> {
  __$$UserProfileImplCopyWithImpl(
      _$UserProfileImpl _value, $Res Function(_$UserProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? roles = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? avatar = freezed,
    Object? updatedAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$UserProfileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
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
@Deprecated('Use UserData instead')
class _$UserProfileImpl implements _UserProfile {
  const _$UserProfileImpl(
      {required this.id,
      required this.email,
      required this.firstName,
      required this.lastName,
      required final List<String> roles,
      required this.isActive,
      required this.createdAt,
      this.avatar,
      this.updatedAt,
      final Map<String, dynamic>? metadata})
      : _roles = roles,
        _metadata = metadata;

  factory _$UserProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  final List<String> _roles;
  @override
  List<String> get roles {
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  @override
  final bool isActive;
  @override
  final DateTime createdAt;
  @override
  final String? avatar;
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
    return 'UserProfile(id: $id, email: $email, firstName: $firstName, lastName: $lastName, roles: $roles, isActive: $isActive, createdAt: $createdAt, avatar: $avatar, updatedAt: $updatedAt, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      firstName,
      lastName,
      const DeepCollectionEquality().hash(_roles),
      isActive,
      createdAt,
      avatar,
      updatedAt,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      __$$UserProfileImplCopyWithImpl<_$UserProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileImplToJson(
      this,
    );
  }
}

abstract class _UserProfile implements UserProfile {
  const factory _UserProfile(
      {required final String id,
      required final String email,
      required final String firstName,
      required final String lastName,
      required final List<String> roles,
      required final bool isActive,
      required final DateTime createdAt,
      final String? avatar,
      final DateTime? updatedAt,
      final Map<String, dynamic>? metadata}) = _$UserProfileImpl;

  factory _UserProfile.fromJson(Map<String, dynamic> json) =
      _$UserProfileImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  List<String> get roles;
  @override
  bool get isActive;
  @override
  DateTime get createdAt;
  @override
  String? get avatar;
  @override
  DateTime? get updatedAt;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VerifyOTPRequest _$VerifyOTPRequestFromJson(Map<String, dynamic> json) {
  return _VerifyOTPRequest.fromJson(json);
}

/// @nodoc
mixin _$VerifyOTPRequest {
  String get email => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String? get tenantId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyOTPRequestCopyWith<VerifyOTPRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOTPRequestCopyWith<$Res> {
  factory $VerifyOTPRequestCopyWith(
          VerifyOTPRequest value, $Res Function(VerifyOTPRequest) then) =
      _$VerifyOTPRequestCopyWithImpl<$Res, VerifyOTPRequest>;
  @useResult
  $Res call({String email, String code, String? tenantId});
}

/// @nodoc
class _$VerifyOTPRequestCopyWithImpl<$Res, $Val extends VerifyOTPRequest>
    implements $VerifyOTPRequestCopyWith<$Res> {
  _$VerifyOTPRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
    Object? tenantId = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyOTPRequestImplCopyWith<$Res>
    implements $VerifyOTPRequestCopyWith<$Res> {
  factory _$$VerifyOTPRequestImplCopyWith(_$VerifyOTPRequestImpl value,
          $Res Function(_$VerifyOTPRequestImpl) then) =
      __$$VerifyOTPRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String code, String? tenantId});
}

/// @nodoc
class __$$VerifyOTPRequestImplCopyWithImpl<$Res>
    extends _$VerifyOTPRequestCopyWithImpl<$Res, _$VerifyOTPRequestImpl>
    implements _$$VerifyOTPRequestImplCopyWith<$Res> {
  __$$VerifyOTPRequestImplCopyWithImpl(_$VerifyOTPRequestImpl _value,
      $Res Function(_$VerifyOTPRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
    Object? tenantId = freezed,
  }) {
    return _then(_$VerifyOTPRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyOTPRequestImpl implements _VerifyOTPRequest {
  const _$VerifyOTPRequestImpl(
      {required this.email, required this.code, this.tenantId});

  factory _$VerifyOTPRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyOTPRequestImplFromJson(json);

  @override
  final String email;
  @override
  final String code;
  @override
  final String? tenantId;

  @override
  String toString() {
    return 'VerifyOTPRequest(email: $email, code: $code, tenantId: $tenantId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOTPRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, code, tenantId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOTPRequestImplCopyWith<_$VerifyOTPRequestImpl> get copyWith =>
      __$$VerifyOTPRequestImplCopyWithImpl<_$VerifyOTPRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyOTPRequestImplToJson(
      this,
    );
  }
}

abstract class _VerifyOTPRequest implements VerifyOTPRequest {
  const factory _VerifyOTPRequest(
      {required final String email,
      required final String code,
      final String? tenantId}) = _$VerifyOTPRequestImpl;

  factory _VerifyOTPRequest.fromJson(Map<String, dynamic> json) =
      _$VerifyOTPRequestImpl.fromJson;

  @override
  String get email;
  @override
  String get code;
  @override
  String? get tenantId;
  @override
  @JsonKey(ignore: true)
  _$$VerifyOTPRequestImplCopyWith<_$VerifyOTPRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
