// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) {
  return _AuthResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthResponse {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  String get tokenType => throw _privateConstructorUsedError;
  int get expiresIn => throw _privateConstructorUsedError;
  String? get organizationId => throw _privateConstructorUsedError;
  String? get organizationName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthResponseCopyWith<AuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseCopyWith<$Res> {
  factory $AuthResponseCopyWith(
          AuthResponse value, $Res Function(AuthResponse) then) =
      _$AuthResponseCopyWithImpl<$Res, AuthResponse>;
  @useResult
  $Res call(
      {String accessToken,
      String refreshToken,
      String tokenType,
      int expiresIn,
      String? organizationId,
      String? organizationName});
}

/// @nodoc
class _$AuthResponseCopyWithImpl<$Res, $Val extends AuthResponse>
    implements $AuthResponseCopyWith<$Res> {
  _$AuthResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? tokenType = null,
    Object? expiresIn = null,
    Object? organizationId = freezed,
    Object? organizationName = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationName: freezed == organizationName
          ? _value.organizationName
          : organizationName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthResponseImplCopyWith<$Res>
    implements $AuthResponseCopyWith<$Res> {
  factory _$$AuthResponseImplCopyWith(
          _$AuthResponseImpl value, $Res Function(_$AuthResponseImpl) then) =
      __$$AuthResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accessToken,
      String refreshToken,
      String tokenType,
      int expiresIn,
      String? organizationId,
      String? organizationName});
}

/// @nodoc
class __$$AuthResponseImplCopyWithImpl<$Res>
    extends _$AuthResponseCopyWithImpl<$Res, _$AuthResponseImpl>
    implements _$$AuthResponseImplCopyWith<$Res> {
  __$$AuthResponseImplCopyWithImpl(
      _$AuthResponseImpl _value, $Res Function(_$AuthResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? tokenType = null,
    Object? expiresIn = null,
    Object? organizationId = freezed,
    Object? organizationName = freezed,
  }) {
    return _then(_$AuthResponseImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationName: freezed == organizationName
          ? _value.organizationName
          : organizationName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Deprecated('Use LoginOTPResponse from auth_models.dart instead')
class _$AuthResponseImpl implements _AuthResponse {
  const _$AuthResponseImpl(
      {required this.accessToken,
      required this.refreshToken,
      required this.tokenType,
      required this.expiresIn,
      this.organizationId,
      this.organizationName});

  factory _$AuthResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthResponseImplFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  final String tokenType;
  @override
  final int expiresIn;
  @override
  final String? organizationId;
  @override
  final String? organizationName;

  @override
  String toString() {
    return 'AuthResponse(accessToken: $accessToken, refreshToken: $refreshToken, tokenType: $tokenType, expiresIn: $expiresIn, organizationId: $organizationId, organizationName: $organizationName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthResponseImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.organizationName, organizationName) ||
                other.organizationName == organizationName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken,
      tokenType, expiresIn, organizationId, organizationName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthResponseImplCopyWith<_$AuthResponseImpl> get copyWith =>
      __$$AuthResponseImplCopyWithImpl<_$AuthResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthResponseImplToJson(
      this,
    );
  }
}

abstract class _AuthResponse implements AuthResponse {
  const factory _AuthResponse(
      {required final String accessToken,
      required final String refreshToken,
      required final String tokenType,
      required final int expiresIn,
      final String? organizationId,
      final String? organizationName}) = _$AuthResponseImpl;

  factory _AuthResponse.fromJson(Map<String, dynamic> json) =
      _$AuthResponseImpl.fromJson;

  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  String get tokenType;
  @override
  int get expiresIn;
  @override
  String? get organizationId;
  @override
  String? get organizationName;
  @override
  @JsonKey(ignore: true)
  _$$AuthResponseImplCopyWith<_$AuthResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PasswordResetResponse _$PasswordResetResponseFromJson(
    Map<String, dynamic> json) {
  return _PasswordResetResponse.fromJson(json);
}

/// @nodoc
mixin _$PasswordResetResponse {
  String get message => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordResetResponseCopyWith<PasswordResetResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordResetResponseCopyWith<$Res> {
  factory $PasswordResetResponseCopyWith(PasswordResetResponse value,
          $Res Function(PasswordResetResponse) then) =
      _$PasswordResetResponseCopyWithImpl<$Res, PasswordResetResponse>;
  @useResult
  $Res call({String message, bool success});
}

/// @nodoc
class _$PasswordResetResponseCopyWithImpl<$Res,
        $Val extends PasswordResetResponse>
    implements $PasswordResetResponseCopyWith<$Res> {
  _$PasswordResetResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PasswordResetResponseImplCopyWith<$Res>
    implements $PasswordResetResponseCopyWith<$Res> {
  factory _$$PasswordResetResponseImplCopyWith(
          _$PasswordResetResponseImpl value,
          $Res Function(_$PasswordResetResponseImpl) then) =
      __$$PasswordResetResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, bool success});
}

/// @nodoc
class __$$PasswordResetResponseImplCopyWithImpl<$Res>
    extends _$PasswordResetResponseCopyWithImpl<$Res,
        _$PasswordResetResponseImpl>
    implements _$$PasswordResetResponseImplCopyWith<$Res> {
  __$$PasswordResetResponseImplCopyWithImpl(_$PasswordResetResponseImpl _value,
      $Res Function(_$PasswordResetResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? success = null,
  }) {
    return _then(_$PasswordResetResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasswordResetResponseImpl implements _PasswordResetResponse {
  const _$PasswordResetResponseImpl(
      {required this.message, required this.success});

  factory _$PasswordResetResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasswordResetResponseImplFromJson(json);

  @override
  final String message;
  @override
  final bool success;

  @override
  String toString() {
    return 'PasswordResetResponse(message: $message, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordResetResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordResetResponseImplCopyWith<_$PasswordResetResponseImpl>
      get copyWith => __$$PasswordResetResponseImplCopyWithImpl<
          _$PasswordResetResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordResetResponseImplToJson(
      this,
    );
  }
}

abstract class _PasswordResetResponse implements PasswordResetResponse {
  const factory _PasswordResetResponse(
      {required final String message,
      required final bool success}) = _$PasswordResetResponseImpl;

  factory _PasswordResetResponse.fromJson(Map<String, dynamic> json) =
      _$PasswordResetResponseImpl.fromJson;

  @override
  String get message;
  @override
  bool get success;
  @override
  @JsonKey(ignore: true)
  _$$PasswordResetResponseImplCopyWith<_$PasswordResetResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SuccessResponse _$SuccessResponseFromJson(Map<String, dynamic> json) {
  return _SuccessResponse.fromJson(json);
}

/// @nodoc
mixin _$SuccessResponse {
  String get message => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessResponseCopyWith<SuccessResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessResponseCopyWith<$Res> {
  factory $SuccessResponseCopyWith(
          SuccessResponse value, $Res Function(SuccessResponse) then) =
      _$SuccessResponseCopyWithImpl<$Res, SuccessResponse>;
  @useResult
  $Res call({String message, bool success, Map<String, dynamic>? data});
}

/// @nodoc
class _$SuccessResponseCopyWithImpl<$Res, $Val extends SuccessResponse>
    implements $SuccessResponseCopyWith<$Res> {
  _$SuccessResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? success = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuccessResponseImplCopyWith<$Res>
    implements $SuccessResponseCopyWith<$Res> {
  factory _$$SuccessResponseImplCopyWith(_$SuccessResponseImpl value,
          $Res Function(_$SuccessResponseImpl) then) =
      __$$SuccessResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, bool success, Map<String, dynamic>? data});
}

/// @nodoc
class __$$SuccessResponseImplCopyWithImpl<$Res>
    extends _$SuccessResponseCopyWithImpl<$Res, _$SuccessResponseImpl>
    implements _$$SuccessResponseImplCopyWith<$Res> {
  __$$SuccessResponseImplCopyWithImpl(
      _$SuccessResponseImpl _value, $Res Function(_$SuccessResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? success = null,
    Object? data = freezed,
  }) {
    return _then(_$SuccessResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuccessResponseImpl implements _SuccessResponse {
  const _$SuccessResponseImpl(
      {required this.message,
      required this.success,
      final Map<String, dynamic>? data})
      : _data = data;

  factory _$SuccessResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuccessResponseImplFromJson(json);

  @override
  final String message;
  @override
  final bool success;
  final Map<String, dynamic>? _data;
  @override
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SuccessResponse(message: $message, success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, success,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessResponseImplCopyWith<_$SuccessResponseImpl> get copyWith =>
      __$$SuccessResponseImplCopyWithImpl<_$SuccessResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuccessResponseImplToJson(
      this,
    );
  }
}

abstract class _SuccessResponse implements SuccessResponse {
  const factory _SuccessResponse(
      {required final String message,
      required final bool success,
      final Map<String, dynamic>? data}) = _$SuccessResponseImpl;

  factory _SuccessResponse.fromJson(Map<String, dynamic> json) =
      _$SuccessResponseImpl.fromJson;

  @override
  String get message;
  @override
  bool get success;
  @override
  Map<String, dynamic>? get data;
  @override
  @JsonKey(ignore: true)
  _$$SuccessResponseImplCopyWith<_$SuccessResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
