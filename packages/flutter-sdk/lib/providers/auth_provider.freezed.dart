// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthState _$AuthStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'authenticated':
      return AuthStateAuthenticated.fromJson(json);
    case 'error':
      return AuthStateError.fromJson(json);
    case 'initial':
      return AuthStateInitial.fromJson(json);
    case 'loading':
      return AuthStateLoading.fromJson(json);
    case 'unauthenticated':
      return AuthStateUnauthenticated.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AuthState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserData user, String? tenantId) authenticated,
    required TResult Function(String message) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserData user, String? tenantId)? authenticated,
    TResult? Function(String message)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserData user, String? tenantId)? authenticated,
    TResult Function(String message)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateAuthenticated value) authenticated,
    required TResult Function(AuthStateError value) error,
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateUnauthenticated value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateAuthenticated value)? authenticated,
    TResult? Function(AuthStateError value)? error,
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateUnauthenticated value)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateError value)? error,
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateUnauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthStateAuthenticatedImplCopyWith<$Res> {
  factory _$$AuthStateAuthenticatedImplCopyWith(
          _$AuthStateAuthenticatedImpl value,
          $Res Function(_$AuthStateAuthenticatedImpl) then) =
      __$$AuthStateAuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserData user, String? tenantId});

  $UserDataCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthStateAuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateAuthenticatedImpl>
    implements _$$AuthStateAuthenticatedImplCopyWith<$Res> {
  __$$AuthStateAuthenticatedImplCopyWithImpl(
      _$AuthStateAuthenticatedImpl _value,
      $Res Function(_$AuthStateAuthenticatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? tenantId = freezed,
  }) {
    return _then(_$AuthStateAuthenticatedImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData,
      freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res> get user {
    return $UserDataCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthStateAuthenticatedImpl implements AuthStateAuthenticated {
  const _$AuthStateAuthenticatedImpl(this.user, this.tenantId,
      {final String? $type})
      : $type = $type ?? 'authenticated';

  factory _$AuthStateAuthenticatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthStateAuthenticatedImplFromJson(json);

  @override
  final UserData user;
  @override
  final String? tenantId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user, tenantId: $tenantId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateAuthenticatedImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, tenantId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateAuthenticatedImplCopyWith<_$AuthStateAuthenticatedImpl>
      get copyWith => __$$AuthStateAuthenticatedImplCopyWithImpl<
          _$AuthStateAuthenticatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserData user, String? tenantId) authenticated,
    required TResult Function(String message) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() unauthenticated,
  }) {
    return authenticated(user, tenantId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserData user, String? tenantId)? authenticated,
    TResult? Function(String message)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? unauthenticated,
  }) {
    return authenticated?.call(user, tenantId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserData user, String? tenantId)? authenticated,
    TResult Function(String message)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user, tenantId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateAuthenticated value) authenticated,
    required TResult Function(AuthStateError value) error,
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateUnauthenticated value) unauthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateAuthenticated value)? authenticated,
    TResult? Function(AuthStateError value)? error,
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateUnauthenticated value)? unauthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateError value)? error,
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateUnauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStateAuthenticatedImplToJson(
      this,
    );
  }
}

abstract class AuthStateAuthenticated implements AuthState {
  const factory AuthStateAuthenticated(
          final UserData user, final String? tenantId) =
      _$AuthStateAuthenticatedImpl;

  factory AuthStateAuthenticated.fromJson(Map<String, dynamic> json) =
      _$AuthStateAuthenticatedImpl.fromJson;

  UserData get user;
  String? get tenantId;
  @JsonKey(ignore: true)
  _$$AuthStateAuthenticatedImplCopyWith<_$AuthStateAuthenticatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStateErrorImplCopyWith<$Res> {
  factory _$$AuthStateErrorImplCopyWith(_$AuthStateErrorImpl value,
          $Res Function(_$AuthStateErrorImpl) then) =
      __$$AuthStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AuthStateErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateErrorImpl>
    implements _$$AuthStateErrorImplCopyWith<$Res> {
  __$$AuthStateErrorImplCopyWithImpl(
      _$AuthStateErrorImpl _value, $Res Function(_$AuthStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AuthStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthStateErrorImpl implements AuthStateError {
  const _$AuthStateErrorImpl(this.message, {final String? $type})
      : $type = $type ?? 'error';

  factory _$AuthStateErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthStateErrorImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateErrorImplCopyWith<_$AuthStateErrorImpl> get copyWith =>
      __$$AuthStateErrorImplCopyWithImpl<_$AuthStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserData user, String? tenantId) authenticated,
    required TResult Function(String message) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() unauthenticated,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserData user, String? tenantId)? authenticated,
    TResult? Function(String message)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? unauthenticated,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserData user, String? tenantId)? authenticated,
    TResult Function(String message)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateAuthenticated value) authenticated,
    required TResult Function(AuthStateError value) error,
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateUnauthenticated value) unauthenticated,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateAuthenticated value)? authenticated,
    TResult? Function(AuthStateError value)? error,
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateUnauthenticated value)? unauthenticated,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateError value)? error,
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateUnauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStateErrorImplToJson(
      this,
    );
  }
}

abstract class AuthStateError implements AuthState {
  const factory AuthStateError(final String message) = _$AuthStateErrorImpl;

  factory AuthStateError.fromJson(Map<String, dynamic> json) =
      _$AuthStateErrorImpl.fromJson;

  String get message;
  @JsonKey(ignore: true)
  _$$AuthStateErrorImplCopyWith<_$AuthStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStateInitialImplCopyWith<$Res> {
  factory _$$AuthStateInitialImplCopyWith(_$AuthStateInitialImpl value,
          $Res Function(_$AuthStateInitialImpl) then) =
      __$$AuthStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateInitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateInitialImpl>
    implements _$$AuthStateInitialImplCopyWith<$Res> {
  __$$AuthStateInitialImplCopyWithImpl(_$AuthStateInitialImpl _value,
      $Res Function(_$AuthStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AuthStateInitialImpl implements AuthStateInitial {
  const _$AuthStateInitialImpl({final String? $type})
      : $type = $type ?? 'initial';

  factory _$AuthStateInitialImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthStateInitialImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStateInitialImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserData user, String? tenantId) authenticated,
    required TResult Function(String message) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() unauthenticated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserData user, String? tenantId)? authenticated,
    TResult? Function(String message)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? unauthenticated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserData user, String? tenantId)? authenticated,
    TResult Function(String message)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateAuthenticated value) authenticated,
    required TResult Function(AuthStateError value) error,
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateUnauthenticated value) unauthenticated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateAuthenticated value)? authenticated,
    TResult? Function(AuthStateError value)? error,
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateUnauthenticated value)? unauthenticated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateError value)? error,
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateUnauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStateInitialImplToJson(
      this,
    );
  }
}

abstract class AuthStateInitial implements AuthState {
  const factory AuthStateInitial() = _$AuthStateInitialImpl;

  factory AuthStateInitial.fromJson(Map<String, dynamic> json) =
      _$AuthStateInitialImpl.fromJson;
}

/// @nodoc
abstract class _$$AuthStateLoadingImplCopyWith<$Res> {
  factory _$$AuthStateLoadingImplCopyWith(_$AuthStateLoadingImpl value,
          $Res Function(_$AuthStateLoadingImpl) then) =
      __$$AuthStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateLoadingImpl>
    implements _$$AuthStateLoadingImplCopyWith<$Res> {
  __$$AuthStateLoadingImplCopyWithImpl(_$AuthStateLoadingImpl _value,
      $Res Function(_$AuthStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AuthStateLoadingImpl implements AuthStateLoading {
  const _$AuthStateLoadingImpl({final String? $type})
      : $type = $type ?? 'loading';

  factory _$AuthStateLoadingImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthStateLoadingImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStateLoadingImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserData user, String? tenantId) authenticated,
    required TResult Function(String message) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() unauthenticated,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserData user, String? tenantId)? authenticated,
    TResult? Function(String message)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? unauthenticated,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserData user, String? tenantId)? authenticated,
    TResult Function(String message)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateAuthenticated value) authenticated,
    required TResult Function(AuthStateError value) error,
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateUnauthenticated value) unauthenticated,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateAuthenticated value)? authenticated,
    TResult? Function(AuthStateError value)? error,
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateUnauthenticated value)? unauthenticated,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateError value)? error,
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateUnauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStateLoadingImplToJson(
      this,
    );
  }
}

abstract class AuthStateLoading implements AuthState {
  const factory AuthStateLoading() = _$AuthStateLoadingImpl;

  factory AuthStateLoading.fromJson(Map<String, dynamic> json) =
      _$AuthStateLoadingImpl.fromJson;
}

/// @nodoc
abstract class _$$AuthStateUnauthenticatedImplCopyWith<$Res> {
  factory _$$AuthStateUnauthenticatedImplCopyWith(
          _$AuthStateUnauthenticatedImpl value,
          $Res Function(_$AuthStateUnauthenticatedImpl) then) =
      __$$AuthStateUnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateUnauthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateUnauthenticatedImpl>
    implements _$$AuthStateUnauthenticatedImplCopyWith<$Res> {
  __$$AuthStateUnauthenticatedImplCopyWithImpl(
      _$AuthStateUnauthenticatedImpl _value,
      $Res Function(_$AuthStateUnauthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AuthStateUnauthenticatedImpl implements AuthStateUnauthenticated {
  const _$AuthStateUnauthenticatedImpl({final String? $type})
      : $type = $type ?? 'unauthenticated';

  factory _$AuthStateUnauthenticatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthStateUnauthenticatedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateUnauthenticatedImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserData user, String? tenantId) authenticated,
    required TResult Function(String message) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() unauthenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserData user, String? tenantId)? authenticated,
    TResult? Function(String message)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? unauthenticated,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserData user, String? tenantId)? authenticated,
    TResult Function(String message)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateAuthenticated value) authenticated,
    required TResult Function(AuthStateError value) error,
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateUnauthenticated value) unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateAuthenticated value)? authenticated,
    TResult? Function(AuthStateError value)? error,
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateUnauthenticated value)? unauthenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateError value)? error,
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateUnauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStateUnauthenticatedImplToJson(
      this,
    );
  }
}

abstract class AuthStateUnauthenticated implements AuthState {
  const factory AuthStateUnauthenticated() = _$AuthStateUnauthenticatedImpl;

  factory AuthStateUnauthenticated.fromJson(Map<String, dynamic> json) =
      _$AuthStateUnauthenticatedImpl.fromJson;
}

OTPState _$OTPStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'error':
      return OTPStateError.fromJson(json);
    case 'initial':
      return OTPStateInitial.fromJson(json);
    case 'requesting':
      return OTPStateRequesting.fromJson(json);
    case 'sent':
      return OTPStateSent.fromJson(json);
    case 'tenantSelection':
      return OTPStateTenantSelection.fromJson(json);
    case 'verified':
      return OTPStateVerified.fromJson(json);
    case 'verifying':
      return OTPStateVerifying.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'OTPState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$OTPState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? attemptsLeft) error,
    required TResult Function() initial,
    required TResult Function() requesting,
    required TResult Function(String email, String expiresAt, String? tenantId,
            String? tenantName)
        sent,
    required TResult Function(
            String email, List<TenantInfo> tenants, bool isNewUser)
        tenantSelection,
    required TResult Function() verified,
    required TResult Function() verifying,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? attemptsLeft)? error,
    TResult? Function()? initial,
    TResult? Function()? requesting,
    TResult? Function(String email, String expiresAt, String? tenantId,
            String? tenantName)?
        sent,
    TResult? Function(String email, List<TenantInfo> tenants, bool isNewUser)?
        tenantSelection,
    TResult? Function()? verified,
    TResult? Function()? verifying,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? attemptsLeft)? error,
    TResult Function()? initial,
    TResult Function()? requesting,
    TResult Function(String email, String expiresAt, String? tenantId,
            String? tenantName)?
        sent,
    TResult Function(String email, List<TenantInfo> tenants, bool isNewUser)?
        tenantSelection,
    TResult Function()? verified,
    TResult Function()? verifying,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OTPStateError value) error,
    required TResult Function(OTPStateInitial value) initial,
    required TResult Function(OTPStateRequesting value) requesting,
    required TResult Function(OTPStateSent value) sent,
    required TResult Function(OTPStateTenantSelection value) tenantSelection,
    required TResult Function(OTPStateVerified value) verified,
    required TResult Function(OTPStateVerifying value) verifying,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OTPStateError value)? error,
    TResult? Function(OTPStateInitial value)? initial,
    TResult? Function(OTPStateRequesting value)? requesting,
    TResult? Function(OTPStateSent value)? sent,
    TResult? Function(OTPStateTenantSelection value)? tenantSelection,
    TResult? Function(OTPStateVerified value)? verified,
    TResult? Function(OTPStateVerifying value)? verifying,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OTPStateError value)? error,
    TResult Function(OTPStateInitial value)? initial,
    TResult Function(OTPStateRequesting value)? requesting,
    TResult Function(OTPStateSent value)? sent,
    TResult Function(OTPStateTenantSelection value)? tenantSelection,
    TResult Function(OTPStateVerified value)? verified,
    TResult Function(OTPStateVerifying value)? verifying,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OTPStateCopyWith<$Res> {
  factory $OTPStateCopyWith(OTPState value, $Res Function(OTPState) then) =
      _$OTPStateCopyWithImpl<$Res, OTPState>;
}

/// @nodoc
class _$OTPStateCopyWithImpl<$Res, $Val extends OTPState>
    implements $OTPStateCopyWith<$Res> {
  _$OTPStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OTPStateErrorImplCopyWith<$Res> {
  factory _$$OTPStateErrorImplCopyWith(
          _$OTPStateErrorImpl value, $Res Function(_$OTPStateErrorImpl) then) =
      __$$OTPStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, int? attemptsLeft});
}

/// @nodoc
class __$$OTPStateErrorImplCopyWithImpl<$Res>
    extends _$OTPStateCopyWithImpl<$Res, _$OTPStateErrorImpl>
    implements _$$OTPStateErrorImplCopyWith<$Res> {
  __$$OTPStateErrorImplCopyWithImpl(
      _$OTPStateErrorImpl _value, $Res Function(_$OTPStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? attemptsLeft = freezed,
  }) {
    return _then(_$OTPStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      attemptsLeft: freezed == attemptsLeft
          ? _value.attemptsLeft
          : attemptsLeft // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OTPStateErrorImpl implements OTPStateError {
  const _$OTPStateErrorImpl(this.message,
      {this.attemptsLeft, final String? $type})
      : $type = $type ?? 'error';

  factory _$OTPStateErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$OTPStateErrorImplFromJson(json);

  @override
  final String message;
  @override
  final int? attemptsLeft;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OTPState.error(message: $message, attemptsLeft: $attemptsLeft)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OTPStateErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.attemptsLeft, attemptsLeft) ||
                other.attemptsLeft == attemptsLeft));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, attemptsLeft);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OTPStateErrorImplCopyWith<_$OTPStateErrorImpl> get copyWith =>
      __$$OTPStateErrorImplCopyWithImpl<_$OTPStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? attemptsLeft) error,
    required TResult Function() initial,
    required TResult Function() requesting,
    required TResult Function(String email, String expiresAt, String? tenantId,
            String? tenantName)
        sent,
    required TResult Function(
            String email, List<TenantInfo> tenants, bool isNewUser)
        tenantSelection,
    required TResult Function() verified,
    required TResult Function() verifying,
  }) {
    return error(message, attemptsLeft);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? attemptsLeft)? error,
    TResult? Function()? initial,
    TResult? Function()? requesting,
    TResult? Function(String email, String expiresAt, String? tenantId,
            String? tenantName)?
        sent,
    TResult? Function(String email, List<TenantInfo> tenants, bool isNewUser)?
        tenantSelection,
    TResult? Function()? verified,
    TResult? Function()? verifying,
  }) {
    return error?.call(message, attemptsLeft);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? attemptsLeft)? error,
    TResult Function()? initial,
    TResult Function()? requesting,
    TResult Function(String email, String expiresAt, String? tenantId,
            String? tenantName)?
        sent,
    TResult Function(String email, List<TenantInfo> tenants, bool isNewUser)?
        tenantSelection,
    TResult Function()? verified,
    TResult Function()? verifying,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, attemptsLeft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OTPStateError value) error,
    required TResult Function(OTPStateInitial value) initial,
    required TResult Function(OTPStateRequesting value) requesting,
    required TResult Function(OTPStateSent value) sent,
    required TResult Function(OTPStateTenantSelection value) tenantSelection,
    required TResult Function(OTPStateVerified value) verified,
    required TResult Function(OTPStateVerifying value) verifying,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OTPStateError value)? error,
    TResult? Function(OTPStateInitial value)? initial,
    TResult? Function(OTPStateRequesting value)? requesting,
    TResult? Function(OTPStateSent value)? sent,
    TResult? Function(OTPStateTenantSelection value)? tenantSelection,
    TResult? Function(OTPStateVerified value)? verified,
    TResult? Function(OTPStateVerifying value)? verifying,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OTPStateError value)? error,
    TResult Function(OTPStateInitial value)? initial,
    TResult Function(OTPStateRequesting value)? requesting,
    TResult Function(OTPStateSent value)? sent,
    TResult Function(OTPStateTenantSelection value)? tenantSelection,
    TResult Function(OTPStateVerified value)? verified,
    TResult Function(OTPStateVerifying value)? verifying,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OTPStateErrorImplToJson(
      this,
    );
  }
}

abstract class OTPStateError implements OTPState {
  const factory OTPStateError(final String message, {final int? attemptsLeft}) =
      _$OTPStateErrorImpl;

  factory OTPStateError.fromJson(Map<String, dynamic> json) =
      _$OTPStateErrorImpl.fromJson;

  String get message;
  int? get attemptsLeft;
  @JsonKey(ignore: true)
  _$$OTPStateErrorImplCopyWith<_$OTPStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OTPStateInitialImplCopyWith<$Res> {
  factory _$$OTPStateInitialImplCopyWith(_$OTPStateInitialImpl value,
          $Res Function(_$OTPStateInitialImpl) then) =
      __$$OTPStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OTPStateInitialImplCopyWithImpl<$Res>
    extends _$OTPStateCopyWithImpl<$Res, _$OTPStateInitialImpl>
    implements _$$OTPStateInitialImplCopyWith<$Res> {
  __$$OTPStateInitialImplCopyWithImpl(
      _$OTPStateInitialImpl _value, $Res Function(_$OTPStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$OTPStateInitialImpl implements OTPStateInitial {
  const _$OTPStateInitialImpl({final String? $type})
      : $type = $type ?? 'initial';

  factory _$OTPStateInitialImpl.fromJson(Map<String, dynamic> json) =>
      _$$OTPStateInitialImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OTPState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OTPStateInitialImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? attemptsLeft) error,
    required TResult Function() initial,
    required TResult Function() requesting,
    required TResult Function(String email, String expiresAt, String? tenantId,
            String? tenantName)
        sent,
    required TResult Function(
            String email, List<TenantInfo> tenants, bool isNewUser)
        tenantSelection,
    required TResult Function() verified,
    required TResult Function() verifying,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? attemptsLeft)? error,
    TResult? Function()? initial,
    TResult? Function()? requesting,
    TResult? Function(String email, String expiresAt, String? tenantId,
            String? tenantName)?
        sent,
    TResult? Function(String email, List<TenantInfo> tenants, bool isNewUser)?
        tenantSelection,
    TResult? Function()? verified,
    TResult? Function()? verifying,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? attemptsLeft)? error,
    TResult Function()? initial,
    TResult Function()? requesting,
    TResult Function(String email, String expiresAt, String? tenantId,
            String? tenantName)?
        sent,
    TResult Function(String email, List<TenantInfo> tenants, bool isNewUser)?
        tenantSelection,
    TResult Function()? verified,
    TResult Function()? verifying,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OTPStateError value) error,
    required TResult Function(OTPStateInitial value) initial,
    required TResult Function(OTPStateRequesting value) requesting,
    required TResult Function(OTPStateSent value) sent,
    required TResult Function(OTPStateTenantSelection value) tenantSelection,
    required TResult Function(OTPStateVerified value) verified,
    required TResult Function(OTPStateVerifying value) verifying,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OTPStateError value)? error,
    TResult? Function(OTPStateInitial value)? initial,
    TResult? Function(OTPStateRequesting value)? requesting,
    TResult? Function(OTPStateSent value)? sent,
    TResult? Function(OTPStateTenantSelection value)? tenantSelection,
    TResult? Function(OTPStateVerified value)? verified,
    TResult? Function(OTPStateVerifying value)? verifying,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OTPStateError value)? error,
    TResult Function(OTPStateInitial value)? initial,
    TResult Function(OTPStateRequesting value)? requesting,
    TResult Function(OTPStateSent value)? sent,
    TResult Function(OTPStateTenantSelection value)? tenantSelection,
    TResult Function(OTPStateVerified value)? verified,
    TResult Function(OTPStateVerifying value)? verifying,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OTPStateInitialImplToJson(
      this,
    );
  }
}

abstract class OTPStateInitial implements OTPState {
  const factory OTPStateInitial() = _$OTPStateInitialImpl;

  factory OTPStateInitial.fromJson(Map<String, dynamic> json) =
      _$OTPStateInitialImpl.fromJson;
}

/// @nodoc
abstract class _$$OTPStateRequestingImplCopyWith<$Res> {
  factory _$$OTPStateRequestingImplCopyWith(_$OTPStateRequestingImpl value,
          $Res Function(_$OTPStateRequestingImpl) then) =
      __$$OTPStateRequestingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OTPStateRequestingImplCopyWithImpl<$Res>
    extends _$OTPStateCopyWithImpl<$Res, _$OTPStateRequestingImpl>
    implements _$$OTPStateRequestingImplCopyWith<$Res> {
  __$$OTPStateRequestingImplCopyWithImpl(_$OTPStateRequestingImpl _value,
      $Res Function(_$OTPStateRequestingImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$OTPStateRequestingImpl implements OTPStateRequesting {
  const _$OTPStateRequestingImpl({final String? $type})
      : $type = $type ?? 'requesting';

  factory _$OTPStateRequestingImpl.fromJson(Map<String, dynamic> json) =>
      _$$OTPStateRequestingImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OTPState.requesting()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OTPStateRequestingImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? attemptsLeft) error,
    required TResult Function() initial,
    required TResult Function() requesting,
    required TResult Function(String email, String expiresAt, String? tenantId,
            String? tenantName)
        sent,
    required TResult Function(
            String email, List<TenantInfo> tenants, bool isNewUser)
        tenantSelection,
    required TResult Function() verified,
    required TResult Function() verifying,
  }) {
    return requesting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? attemptsLeft)? error,
    TResult? Function()? initial,
    TResult? Function()? requesting,
    TResult? Function(String email, String expiresAt, String? tenantId,
            String? tenantName)?
        sent,
    TResult? Function(String email, List<TenantInfo> tenants, bool isNewUser)?
        tenantSelection,
    TResult? Function()? verified,
    TResult? Function()? verifying,
  }) {
    return requesting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? attemptsLeft)? error,
    TResult Function()? initial,
    TResult Function()? requesting,
    TResult Function(String email, String expiresAt, String? tenantId,
            String? tenantName)?
        sent,
    TResult Function(String email, List<TenantInfo> tenants, bool isNewUser)?
        tenantSelection,
    TResult Function()? verified,
    TResult Function()? verifying,
    required TResult orElse(),
  }) {
    if (requesting != null) {
      return requesting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OTPStateError value) error,
    required TResult Function(OTPStateInitial value) initial,
    required TResult Function(OTPStateRequesting value) requesting,
    required TResult Function(OTPStateSent value) sent,
    required TResult Function(OTPStateTenantSelection value) tenantSelection,
    required TResult Function(OTPStateVerified value) verified,
    required TResult Function(OTPStateVerifying value) verifying,
  }) {
    return requesting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OTPStateError value)? error,
    TResult? Function(OTPStateInitial value)? initial,
    TResult? Function(OTPStateRequesting value)? requesting,
    TResult? Function(OTPStateSent value)? sent,
    TResult? Function(OTPStateTenantSelection value)? tenantSelection,
    TResult? Function(OTPStateVerified value)? verified,
    TResult? Function(OTPStateVerifying value)? verifying,
  }) {
    return requesting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OTPStateError value)? error,
    TResult Function(OTPStateInitial value)? initial,
    TResult Function(OTPStateRequesting value)? requesting,
    TResult Function(OTPStateSent value)? sent,
    TResult Function(OTPStateTenantSelection value)? tenantSelection,
    TResult Function(OTPStateVerified value)? verified,
    TResult Function(OTPStateVerifying value)? verifying,
    required TResult orElse(),
  }) {
    if (requesting != null) {
      return requesting(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OTPStateRequestingImplToJson(
      this,
    );
  }
}

abstract class OTPStateRequesting implements OTPState {
  const factory OTPStateRequesting() = _$OTPStateRequestingImpl;

  factory OTPStateRequesting.fromJson(Map<String, dynamic> json) =
      _$OTPStateRequestingImpl.fromJson;
}

/// @nodoc
abstract class _$$OTPStateSentImplCopyWith<$Res> {
  factory _$$OTPStateSentImplCopyWith(
          _$OTPStateSentImpl value, $Res Function(_$OTPStateSentImpl) then) =
      __$$OTPStateSentImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String email, String expiresAt, String? tenantId, String? tenantName});
}

/// @nodoc
class __$$OTPStateSentImplCopyWithImpl<$Res>
    extends _$OTPStateCopyWithImpl<$Res, _$OTPStateSentImpl>
    implements _$$OTPStateSentImplCopyWith<$Res> {
  __$$OTPStateSentImplCopyWithImpl(
      _$OTPStateSentImpl _value, $Res Function(_$OTPStateSentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? expiresAt = null,
    Object? tenantId = freezed,
    Object? tenantName = freezed,
  }) {
    return _then(_$OTPStateSentImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == tenantName
          ? _value.tenantName
          : tenantName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OTPStateSentImpl implements OTPStateSent {
  const _$OTPStateSentImpl(
      this.email, this.expiresAt, this.tenantId, this.tenantName,
      {final String? $type})
      : $type = $type ?? 'sent';

  factory _$OTPStateSentImpl.fromJson(Map<String, dynamic> json) =>
      _$$OTPStateSentImplFromJson(json);

  @override
  final String email;
  @override
  final String expiresAt;
  @override
  final String? tenantId;
  @override
  final String? tenantName;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OTPState.sent(email: $email, expiresAt: $expiresAt, tenantId: $tenantId, tenantName: $tenantName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OTPStateSentImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.tenantName, tenantName) ||
                other.tenantName == tenantName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, expiresAt, tenantId, tenantName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OTPStateSentImplCopyWith<_$OTPStateSentImpl> get copyWith =>
      __$$OTPStateSentImplCopyWithImpl<_$OTPStateSentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? attemptsLeft) error,
    required TResult Function() initial,
    required TResult Function() requesting,
    required TResult Function(String email, String expiresAt, String? tenantId,
            String? tenantName)
        sent,
    required TResult Function(
            String email, List<TenantInfo> tenants, bool isNewUser)
        tenantSelection,
    required TResult Function() verified,
    required TResult Function() verifying,
  }) {
    return sent(email, expiresAt, tenantId, tenantName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? attemptsLeft)? error,
    TResult? Function()? initial,
    TResult? Function()? requesting,
    TResult? Function(String email, String expiresAt, String? tenantId,
            String? tenantName)?
        sent,
    TResult? Function(String email, List<TenantInfo> tenants, bool isNewUser)?
        tenantSelection,
    TResult? Function()? verified,
    TResult? Function()? verifying,
  }) {
    return sent?.call(email, expiresAt, tenantId, tenantName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? attemptsLeft)? error,
    TResult Function()? initial,
    TResult Function()? requesting,
    TResult Function(String email, String expiresAt, String? tenantId,
            String? tenantName)?
        sent,
    TResult Function(String email, List<TenantInfo> tenants, bool isNewUser)?
        tenantSelection,
    TResult Function()? verified,
    TResult Function()? verifying,
    required TResult orElse(),
  }) {
    if (sent != null) {
      return sent(email, expiresAt, tenantId, tenantName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OTPStateError value) error,
    required TResult Function(OTPStateInitial value) initial,
    required TResult Function(OTPStateRequesting value) requesting,
    required TResult Function(OTPStateSent value) sent,
    required TResult Function(OTPStateTenantSelection value) tenantSelection,
    required TResult Function(OTPStateVerified value) verified,
    required TResult Function(OTPStateVerifying value) verifying,
  }) {
    return sent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OTPStateError value)? error,
    TResult? Function(OTPStateInitial value)? initial,
    TResult? Function(OTPStateRequesting value)? requesting,
    TResult? Function(OTPStateSent value)? sent,
    TResult? Function(OTPStateTenantSelection value)? tenantSelection,
    TResult? Function(OTPStateVerified value)? verified,
    TResult? Function(OTPStateVerifying value)? verifying,
  }) {
    return sent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OTPStateError value)? error,
    TResult Function(OTPStateInitial value)? initial,
    TResult Function(OTPStateRequesting value)? requesting,
    TResult Function(OTPStateSent value)? sent,
    TResult Function(OTPStateTenantSelection value)? tenantSelection,
    TResult Function(OTPStateVerified value)? verified,
    TResult Function(OTPStateVerifying value)? verifying,
    required TResult orElse(),
  }) {
    if (sent != null) {
      return sent(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OTPStateSentImplToJson(
      this,
    );
  }
}

abstract class OTPStateSent implements OTPState {
  const factory OTPStateSent(final String email, final String expiresAt,
      final String? tenantId, final String? tenantName) = _$OTPStateSentImpl;

  factory OTPStateSent.fromJson(Map<String, dynamic> json) =
      _$OTPStateSentImpl.fromJson;

  String get email;
  String get expiresAt;
  String? get tenantId;
  String? get tenantName;
  @JsonKey(ignore: true)
  _$$OTPStateSentImplCopyWith<_$OTPStateSentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OTPStateTenantSelectionImplCopyWith<$Res> {
  factory _$$OTPStateTenantSelectionImplCopyWith(
          _$OTPStateTenantSelectionImpl value,
          $Res Function(_$OTPStateTenantSelectionImpl) then) =
      __$$OTPStateTenantSelectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, List<TenantInfo> tenants, bool isNewUser});
}

/// @nodoc
class __$$OTPStateTenantSelectionImplCopyWithImpl<$Res>
    extends _$OTPStateCopyWithImpl<$Res, _$OTPStateTenantSelectionImpl>
    implements _$$OTPStateTenantSelectionImplCopyWith<$Res> {
  __$$OTPStateTenantSelectionImplCopyWithImpl(
      _$OTPStateTenantSelectionImpl _value,
      $Res Function(_$OTPStateTenantSelectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? tenants = null,
    Object? isNewUser = null,
  }) {
    return _then(_$OTPStateTenantSelectionImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == tenants
          ? _value._tenants
          : tenants // ignore: cast_nullable_to_non_nullable
              as List<TenantInfo>,
      isNewUser: null == isNewUser
          ? _value.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OTPStateTenantSelectionImpl implements OTPStateTenantSelection {
  const _$OTPStateTenantSelectionImpl(
      this.email, final List<TenantInfo> tenants,
      {required this.isNewUser, final String? $type})
      : _tenants = tenants,
        $type = $type ?? 'tenantSelection';

  factory _$OTPStateTenantSelectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$OTPStateTenantSelectionImplFromJson(json);

  @override
  final String email;
  final List<TenantInfo> _tenants;
  @override
  List<TenantInfo> get tenants {
    if (_tenants is EqualUnmodifiableListView) return _tenants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tenants);
  }

  @override
  final bool isNewUser;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OTPState.tenantSelection(email: $email, tenants: $tenants, isNewUser: $isNewUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OTPStateTenantSelectionImpl &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other._tenants, _tenants) &&
            (identical(other.isNewUser, isNewUser) ||
                other.isNewUser == isNewUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email,
      const DeepCollectionEquality().hash(_tenants), isNewUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OTPStateTenantSelectionImplCopyWith<_$OTPStateTenantSelectionImpl>
      get copyWith => __$$OTPStateTenantSelectionImplCopyWithImpl<
          _$OTPStateTenantSelectionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? attemptsLeft) error,
    required TResult Function() initial,
    required TResult Function() requesting,
    required TResult Function(String email, String expiresAt, String? tenantId,
            String? tenantName)
        sent,
    required TResult Function(
            String email, List<TenantInfo> tenants, bool isNewUser)
        tenantSelection,
    required TResult Function() verified,
    required TResult Function() verifying,
  }) {
    return tenantSelection(email, tenants, isNewUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? attemptsLeft)? error,
    TResult? Function()? initial,
    TResult? Function()? requesting,
    TResult? Function(String email, String expiresAt, String? tenantId,
            String? tenantName)?
        sent,
    TResult? Function(String email, List<TenantInfo> tenants, bool isNewUser)?
        tenantSelection,
    TResult? Function()? verified,
    TResult? Function()? verifying,
  }) {
    return tenantSelection?.call(email, tenants, isNewUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? attemptsLeft)? error,
    TResult Function()? initial,
    TResult Function()? requesting,
    TResult Function(String email, String expiresAt, String? tenantId,
            String? tenantName)?
        sent,
    TResult Function(String email, List<TenantInfo> tenants, bool isNewUser)?
        tenantSelection,
    TResult Function()? verified,
    TResult Function()? verifying,
    required TResult orElse(),
  }) {
    if (tenantSelection != null) {
      return tenantSelection(email, tenants, isNewUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OTPStateError value) error,
    required TResult Function(OTPStateInitial value) initial,
    required TResult Function(OTPStateRequesting value) requesting,
    required TResult Function(OTPStateSent value) sent,
    required TResult Function(OTPStateTenantSelection value) tenantSelection,
    required TResult Function(OTPStateVerified value) verified,
    required TResult Function(OTPStateVerifying value) verifying,
  }) {
    return tenantSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OTPStateError value)? error,
    TResult? Function(OTPStateInitial value)? initial,
    TResult? Function(OTPStateRequesting value)? requesting,
    TResult? Function(OTPStateSent value)? sent,
    TResult? Function(OTPStateTenantSelection value)? tenantSelection,
    TResult? Function(OTPStateVerified value)? verified,
    TResult? Function(OTPStateVerifying value)? verifying,
  }) {
    return tenantSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OTPStateError value)? error,
    TResult Function(OTPStateInitial value)? initial,
    TResult Function(OTPStateRequesting value)? requesting,
    TResult Function(OTPStateSent value)? sent,
    TResult Function(OTPStateTenantSelection value)? tenantSelection,
    TResult Function(OTPStateVerified value)? verified,
    TResult Function(OTPStateVerifying value)? verifying,
    required TResult orElse(),
  }) {
    if (tenantSelection != null) {
      return tenantSelection(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OTPStateTenantSelectionImplToJson(
      this,
    );
  }
}

abstract class OTPStateTenantSelection implements OTPState {
  const factory OTPStateTenantSelection(
      final String email, final List<TenantInfo> tenants,
      {required final bool isNewUser}) = _$OTPStateTenantSelectionImpl;

  factory OTPStateTenantSelection.fromJson(Map<String, dynamic> json) =
      _$OTPStateTenantSelectionImpl.fromJson;

  String get email;
  List<TenantInfo> get tenants;
  bool get isNewUser;
  @JsonKey(ignore: true)
  _$$OTPStateTenantSelectionImplCopyWith<_$OTPStateTenantSelectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OTPStateVerifiedImplCopyWith<$Res> {
  factory _$$OTPStateVerifiedImplCopyWith(_$OTPStateVerifiedImpl value,
          $Res Function(_$OTPStateVerifiedImpl) then) =
      __$$OTPStateVerifiedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OTPStateVerifiedImplCopyWithImpl<$Res>
    extends _$OTPStateCopyWithImpl<$Res, _$OTPStateVerifiedImpl>
    implements _$$OTPStateVerifiedImplCopyWith<$Res> {
  __$$OTPStateVerifiedImplCopyWithImpl(_$OTPStateVerifiedImpl _value,
      $Res Function(_$OTPStateVerifiedImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$OTPStateVerifiedImpl implements OTPStateVerified {
  const _$OTPStateVerifiedImpl({final String? $type})
      : $type = $type ?? 'verified';

  factory _$OTPStateVerifiedImpl.fromJson(Map<String, dynamic> json) =>
      _$$OTPStateVerifiedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OTPState.verified()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OTPStateVerifiedImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? attemptsLeft) error,
    required TResult Function() initial,
    required TResult Function() requesting,
    required TResult Function(String email, String expiresAt, String? tenantId,
            String? tenantName)
        sent,
    required TResult Function(
            String email, List<TenantInfo> tenants, bool isNewUser)
        tenantSelection,
    required TResult Function() verified,
    required TResult Function() verifying,
  }) {
    return verified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? attemptsLeft)? error,
    TResult? Function()? initial,
    TResult? Function()? requesting,
    TResult? Function(String email, String expiresAt, String? tenantId,
            String? tenantName)?
        sent,
    TResult? Function(String email, List<TenantInfo> tenants, bool isNewUser)?
        tenantSelection,
    TResult? Function()? verified,
    TResult? Function()? verifying,
  }) {
    return verified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? attemptsLeft)? error,
    TResult Function()? initial,
    TResult Function()? requesting,
    TResult Function(String email, String expiresAt, String? tenantId,
            String? tenantName)?
        sent,
    TResult Function(String email, List<TenantInfo> tenants, bool isNewUser)?
        tenantSelection,
    TResult Function()? verified,
    TResult Function()? verifying,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OTPStateError value) error,
    required TResult Function(OTPStateInitial value) initial,
    required TResult Function(OTPStateRequesting value) requesting,
    required TResult Function(OTPStateSent value) sent,
    required TResult Function(OTPStateTenantSelection value) tenantSelection,
    required TResult Function(OTPStateVerified value) verified,
    required TResult Function(OTPStateVerifying value) verifying,
  }) {
    return verified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OTPStateError value)? error,
    TResult? Function(OTPStateInitial value)? initial,
    TResult? Function(OTPStateRequesting value)? requesting,
    TResult? Function(OTPStateSent value)? sent,
    TResult? Function(OTPStateTenantSelection value)? tenantSelection,
    TResult? Function(OTPStateVerified value)? verified,
    TResult? Function(OTPStateVerifying value)? verifying,
  }) {
    return verified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OTPStateError value)? error,
    TResult Function(OTPStateInitial value)? initial,
    TResult Function(OTPStateRequesting value)? requesting,
    TResult Function(OTPStateSent value)? sent,
    TResult Function(OTPStateTenantSelection value)? tenantSelection,
    TResult Function(OTPStateVerified value)? verified,
    TResult Function(OTPStateVerifying value)? verifying,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OTPStateVerifiedImplToJson(
      this,
    );
  }
}

abstract class OTPStateVerified implements OTPState {
  const factory OTPStateVerified() = _$OTPStateVerifiedImpl;

  factory OTPStateVerified.fromJson(Map<String, dynamic> json) =
      _$OTPStateVerifiedImpl.fromJson;
}

/// @nodoc
abstract class _$$OTPStateVerifyingImplCopyWith<$Res> {
  factory _$$OTPStateVerifyingImplCopyWith(_$OTPStateVerifyingImpl value,
          $Res Function(_$OTPStateVerifyingImpl) then) =
      __$$OTPStateVerifyingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OTPStateVerifyingImplCopyWithImpl<$Res>
    extends _$OTPStateCopyWithImpl<$Res, _$OTPStateVerifyingImpl>
    implements _$$OTPStateVerifyingImplCopyWith<$Res> {
  __$$OTPStateVerifyingImplCopyWithImpl(_$OTPStateVerifyingImpl _value,
      $Res Function(_$OTPStateVerifyingImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$OTPStateVerifyingImpl implements OTPStateVerifying {
  const _$OTPStateVerifyingImpl({final String? $type})
      : $type = $type ?? 'verifying';

  factory _$OTPStateVerifyingImpl.fromJson(Map<String, dynamic> json) =>
      _$$OTPStateVerifyingImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OTPState.verifying()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OTPStateVerifyingImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int? attemptsLeft) error,
    required TResult Function() initial,
    required TResult Function() requesting,
    required TResult Function(String email, String expiresAt, String? tenantId,
            String? tenantName)
        sent,
    required TResult Function(
            String email, List<TenantInfo> tenants, bool isNewUser)
        tenantSelection,
    required TResult Function() verified,
    required TResult Function() verifying,
  }) {
    return verifying();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int? attemptsLeft)? error,
    TResult? Function()? initial,
    TResult? Function()? requesting,
    TResult? Function(String email, String expiresAt, String? tenantId,
            String? tenantName)?
        sent,
    TResult? Function(String email, List<TenantInfo> tenants, bool isNewUser)?
        tenantSelection,
    TResult? Function()? verified,
    TResult? Function()? verifying,
  }) {
    return verifying?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int? attemptsLeft)? error,
    TResult Function()? initial,
    TResult Function()? requesting,
    TResult Function(String email, String expiresAt, String? tenantId,
            String? tenantName)?
        sent,
    TResult Function(String email, List<TenantInfo> tenants, bool isNewUser)?
        tenantSelection,
    TResult Function()? verified,
    TResult Function()? verifying,
    required TResult orElse(),
  }) {
    if (verifying != null) {
      return verifying();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OTPStateError value) error,
    required TResult Function(OTPStateInitial value) initial,
    required TResult Function(OTPStateRequesting value) requesting,
    required TResult Function(OTPStateSent value) sent,
    required TResult Function(OTPStateTenantSelection value) tenantSelection,
    required TResult Function(OTPStateVerified value) verified,
    required TResult Function(OTPStateVerifying value) verifying,
  }) {
    return verifying(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OTPStateError value)? error,
    TResult? Function(OTPStateInitial value)? initial,
    TResult? Function(OTPStateRequesting value)? requesting,
    TResult? Function(OTPStateSent value)? sent,
    TResult? Function(OTPStateTenantSelection value)? tenantSelection,
    TResult? Function(OTPStateVerified value)? verified,
    TResult? Function(OTPStateVerifying value)? verifying,
  }) {
    return verifying?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OTPStateError value)? error,
    TResult Function(OTPStateInitial value)? initial,
    TResult Function(OTPStateRequesting value)? requesting,
    TResult Function(OTPStateSent value)? sent,
    TResult Function(OTPStateTenantSelection value)? tenantSelection,
    TResult Function(OTPStateVerified value)? verified,
    TResult Function(OTPStateVerifying value)? verifying,
    required TResult orElse(),
  }) {
    if (verifying != null) {
      return verifying(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OTPStateVerifyingImplToJson(
      this,
    );
  }
}

abstract class OTPStateVerifying implements OTPState {
  const factory OTPStateVerifying() = _$OTPStateVerifyingImpl;

  factory OTPStateVerifying.fromJson(Map<String, dynamic> json) =
      _$OTPStateVerifyingImpl.fromJson;
}
