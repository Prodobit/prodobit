// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
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
  /// Serializes this AuthState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthState);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState()';
  }
}

/// @nodoc
class $AuthStateCopyWith<$Res> {
  $AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}

/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateAuthenticated value)? authenticated,
    TResult Function(AuthStateError value)? error,
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateUnauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AuthStateAuthenticated() when authenticated != null:
        return authenticated(_that);
      case AuthStateError() when error != null:
        return error(_that);
      case AuthStateInitial() when initial != null:
        return initial(_that);
      case AuthStateLoading() when loading != null:
        return loading(_that);
      case AuthStateUnauthenticated() when unauthenticated != null:
        return unauthenticated(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateAuthenticated value) authenticated,
    required TResult Function(AuthStateError value) error,
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateUnauthenticated value) unauthenticated,
  }) {
    final _that = this;
    switch (_that) {
      case AuthStateAuthenticated():
        return authenticated(_that);
      case AuthStateError():
        return error(_that);
      case AuthStateInitial():
        return initial(_that);
      case AuthStateLoading():
        return loading(_that);
      case AuthStateUnauthenticated():
        return unauthenticated(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateAuthenticated value)? authenticated,
    TResult? Function(AuthStateError value)? error,
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateUnauthenticated value)? unauthenticated,
  }) {
    final _that = this;
    switch (_that) {
      case AuthStateAuthenticated() when authenticated != null:
        return authenticated(_that);
      case AuthStateError() when error != null:
        return error(_that);
      case AuthStateInitial() when initial != null:
        return initial(_that);
      case AuthStateLoading() when loading != null:
        return loading(_that);
      case AuthStateUnauthenticated() when unauthenticated != null:
        return unauthenticated(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserData user, String? tenantId)? authenticated,
    TResult Function(String message)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AuthStateAuthenticated() when authenticated != null:
        return authenticated(_that.user, _that.tenantId);
      case AuthStateError() when error != null:
        return error(_that.message);
      case AuthStateInitial() when initial != null:
        return initial();
      case AuthStateLoading() when loading != null:
        return loading();
      case AuthStateUnauthenticated() when unauthenticated != null:
        return unauthenticated();
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
  TResult when<TResult extends Object?>({
    required TResult Function(UserData user, String? tenantId) authenticated,
    required TResult Function(String message) error,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() unauthenticated,
  }) {
    final _that = this;
    switch (_that) {
      case AuthStateAuthenticated():
        return authenticated(_that.user, _that.tenantId);
      case AuthStateError():
        return error(_that.message);
      case AuthStateInitial():
        return initial();
      case AuthStateLoading():
        return loading();
      case AuthStateUnauthenticated():
        return unauthenticated();
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserData user, String? tenantId)? authenticated,
    TResult? Function(String message)? error,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? unauthenticated,
  }) {
    final _that = this;
    switch (_that) {
      case AuthStateAuthenticated() when authenticated != null:
        return authenticated(_that.user, _that.tenantId);
      case AuthStateError() when error != null:
        return error(_that.message);
      case AuthStateInitial() when initial != null:
        return initial();
      case AuthStateLoading() when loading != null:
        return loading();
      case AuthStateUnauthenticated() when unauthenticated != null:
        return unauthenticated();
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class AuthStateAuthenticated implements AuthState {
  const AuthStateAuthenticated(this.user, this.tenantId, {final String? $type})
      : $type = $type ?? 'authenticated';
  factory AuthStateAuthenticated.fromJson(Map<String, dynamic> json) =>
      _$AuthStateAuthenticatedFromJson(json);

  final UserData user;
  final String? tenantId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthStateAuthenticatedCopyWith<AuthStateAuthenticated> get copyWith =>
      _$AuthStateAuthenticatedCopyWithImpl<AuthStateAuthenticated>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AuthStateAuthenticatedToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthStateAuthenticated &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, tenantId);

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user, tenantId: $tenantId)';
  }
}

/// @nodoc
abstract mixin class $AuthStateAuthenticatedCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory $AuthStateAuthenticatedCopyWith(AuthStateAuthenticated value,
          $Res Function(AuthStateAuthenticated) _then) =
      _$AuthStateAuthenticatedCopyWithImpl;
  @useResult
  $Res call({UserData user, String? tenantId});

  $UserDataCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthStateAuthenticatedCopyWithImpl<$Res>
    implements $AuthStateAuthenticatedCopyWith<$Res> {
  _$AuthStateAuthenticatedCopyWithImpl(this._self, this._then);

  final AuthStateAuthenticated _self;
  final $Res Function(AuthStateAuthenticated) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
    Object? tenantId = freezed,
  }) {
    return _then(AuthStateAuthenticated(
      null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData,
      freezed == tenantId
          ? _self.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res> get user {
    return $UserDataCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class AuthStateError implements AuthState {
  const AuthStateError(this.message, {final String? $type})
      : $type = $type ?? 'error';
  factory AuthStateError.fromJson(Map<String, dynamic> json) =>
      _$AuthStateErrorFromJson(json);

  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthStateErrorCopyWith<AuthStateError> get copyWith =>
      _$AuthStateErrorCopyWithImpl<AuthStateError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AuthStateErrorToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'AuthState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $AuthStateErrorCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory $AuthStateErrorCopyWith(
          AuthStateError value, $Res Function(AuthStateError) _then) =
      _$AuthStateErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$AuthStateErrorCopyWithImpl<$Res>
    implements $AuthStateErrorCopyWith<$Res> {
  _$AuthStateErrorCopyWithImpl(this._self, this._then);

  final AuthStateError _self;
  final $Res Function(AuthStateError) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(AuthStateError(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class AuthStateInitial implements AuthState {
  const AuthStateInitial({final String? $type}) : $type = $type ?? 'initial';
  factory AuthStateInitial.fromJson(Map<String, dynamic> json) =>
      _$AuthStateInitialFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$AuthStateInitialToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthStateInitial);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState.initial()';
  }
}

/// @nodoc
@JsonSerializable()
class AuthStateLoading implements AuthState {
  const AuthStateLoading({final String? $type}) : $type = $type ?? 'loading';
  factory AuthStateLoading.fromJson(Map<String, dynamic> json) =>
      _$AuthStateLoadingFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$AuthStateLoadingToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthStateLoading);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState.loading()';
  }
}

/// @nodoc
@JsonSerializable()
class AuthStateUnauthenticated implements AuthState {
  const AuthStateUnauthenticated({final String? $type})
      : $type = $type ?? 'unauthenticated';
  factory AuthStateUnauthenticated.fromJson(Map<String, dynamic> json) =>
      _$AuthStateUnauthenticatedFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$AuthStateUnauthenticatedToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthStateUnauthenticated);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }
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
  /// Serializes this OTPState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OTPState);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OTPState()';
  }
}

/// @nodoc
class $OTPStateCopyWith<$Res> {
  $OTPStateCopyWith(OTPState _, $Res Function(OTPState) __);
}

/// Adds pattern-matching-related methods to [OTPState].
extension OTPStatePatterns on OTPState {
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
    final _that = this;
    switch (_that) {
      case OTPStateError() when error != null:
        return error(_that);
      case OTPStateInitial() when initial != null:
        return initial(_that);
      case OTPStateRequesting() when requesting != null:
        return requesting(_that);
      case OTPStateSent() when sent != null:
        return sent(_that);
      case OTPStateTenantSelection() when tenantSelection != null:
        return tenantSelection(_that);
      case OTPStateVerified() when verified != null:
        return verified(_that);
      case OTPStateVerifying() when verifying != null:
        return verifying(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(OTPStateError value) error,
    required TResult Function(OTPStateInitial value) initial,
    required TResult Function(OTPStateRequesting value) requesting,
    required TResult Function(OTPStateSent value) sent,
    required TResult Function(OTPStateTenantSelection value) tenantSelection,
    required TResult Function(OTPStateVerified value) verified,
    required TResult Function(OTPStateVerifying value) verifying,
  }) {
    final _that = this;
    switch (_that) {
      case OTPStateError():
        return error(_that);
      case OTPStateInitial():
        return initial(_that);
      case OTPStateRequesting():
        return requesting(_that);
      case OTPStateSent():
        return sent(_that);
      case OTPStateTenantSelection():
        return tenantSelection(_that);
      case OTPStateVerified():
        return verified(_that);
      case OTPStateVerifying():
        return verifying(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OTPStateError value)? error,
    TResult? Function(OTPStateInitial value)? initial,
    TResult? Function(OTPStateRequesting value)? requesting,
    TResult? Function(OTPStateSent value)? sent,
    TResult? Function(OTPStateTenantSelection value)? tenantSelection,
    TResult? Function(OTPStateVerified value)? verified,
    TResult? Function(OTPStateVerifying value)? verifying,
  }) {
    final _that = this;
    switch (_that) {
      case OTPStateError() when error != null:
        return error(_that);
      case OTPStateInitial() when initial != null:
        return initial(_that);
      case OTPStateRequesting() when requesting != null:
        return requesting(_that);
      case OTPStateSent() when sent != null:
        return sent(_that);
      case OTPStateTenantSelection() when tenantSelection != null:
        return tenantSelection(_that);
      case OTPStateVerified() when verified != null:
        return verified(_that);
      case OTPStateVerifying() when verifying != null:
        return verifying(_that);
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
    final _that = this;
    switch (_that) {
      case OTPStateError() when error != null:
        return error(_that.message, _that.attemptsLeft);
      case OTPStateInitial() when initial != null:
        return initial();
      case OTPStateRequesting() when requesting != null:
        return requesting();
      case OTPStateSent() when sent != null:
        return sent(
            _that.email, _that.expiresAt, _that.tenantId, _that.tenantName);
      case OTPStateTenantSelection() when tenantSelection != null:
        return tenantSelection(_that.email, _that.tenants, _that.isNewUser);
      case OTPStateVerified() when verified != null:
        return verified();
      case OTPStateVerifying() when verifying != null:
        return verifying();
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
    final _that = this;
    switch (_that) {
      case OTPStateError():
        return error(_that.message, _that.attemptsLeft);
      case OTPStateInitial():
        return initial();
      case OTPStateRequesting():
        return requesting();
      case OTPStateSent():
        return sent(
            _that.email, _that.expiresAt, _that.tenantId, _that.tenantName);
      case OTPStateTenantSelection():
        return tenantSelection(_that.email, _that.tenants, _that.isNewUser);
      case OTPStateVerified():
        return verified();
      case OTPStateVerifying():
        return verifying();
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
    final _that = this;
    switch (_that) {
      case OTPStateError() when error != null:
        return error(_that.message, _that.attemptsLeft);
      case OTPStateInitial() when initial != null:
        return initial();
      case OTPStateRequesting() when requesting != null:
        return requesting();
      case OTPStateSent() when sent != null:
        return sent(
            _that.email, _that.expiresAt, _that.tenantId, _that.tenantName);
      case OTPStateTenantSelection() when tenantSelection != null:
        return tenantSelection(_that.email, _that.tenants, _that.isNewUser);
      case OTPStateVerified() when verified != null:
        return verified();
      case OTPStateVerifying() when verifying != null:
        return verifying();
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class OTPStateError implements OTPState {
  const OTPStateError(this.message, {this.attemptsLeft, final String? $type})
      : $type = $type ?? 'error';
  factory OTPStateError.fromJson(Map<String, dynamic> json) =>
      _$OTPStateErrorFromJson(json);

  final String message;
  final int? attemptsLeft;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of OTPState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OTPStateErrorCopyWith<OTPStateError> get copyWith =>
      _$OTPStateErrorCopyWithImpl<OTPStateError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OTPStateErrorToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OTPStateError &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.attemptsLeft, attemptsLeft) ||
                other.attemptsLeft == attemptsLeft));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, attemptsLeft);

  @override
  String toString() {
    return 'OTPState.error(message: $message, attemptsLeft: $attemptsLeft)';
  }
}

/// @nodoc
abstract mixin class $OTPStateErrorCopyWith<$Res>
    implements $OTPStateCopyWith<$Res> {
  factory $OTPStateErrorCopyWith(
          OTPStateError value, $Res Function(OTPStateError) _then) =
      _$OTPStateErrorCopyWithImpl;
  @useResult
  $Res call({String message, int? attemptsLeft});
}

/// @nodoc
class _$OTPStateErrorCopyWithImpl<$Res>
    implements $OTPStateErrorCopyWith<$Res> {
  _$OTPStateErrorCopyWithImpl(this._self, this._then);

  final OTPStateError _self;
  final $Res Function(OTPStateError) _then;

  /// Create a copy of OTPState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? attemptsLeft = freezed,
  }) {
    return _then(OTPStateError(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      attemptsLeft: freezed == attemptsLeft
          ? _self.attemptsLeft
          : attemptsLeft // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class OTPStateInitial implements OTPState {
  const OTPStateInitial({final String? $type}) : $type = $type ?? 'initial';
  factory OTPStateInitial.fromJson(Map<String, dynamic> json) =>
      _$OTPStateInitialFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$OTPStateInitialToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OTPStateInitial);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OTPState.initial()';
  }
}

/// @nodoc
@JsonSerializable()
class OTPStateRequesting implements OTPState {
  const OTPStateRequesting({final String? $type})
      : $type = $type ?? 'requesting';
  factory OTPStateRequesting.fromJson(Map<String, dynamic> json) =>
      _$OTPStateRequestingFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$OTPStateRequestingToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OTPStateRequesting);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OTPState.requesting()';
  }
}

/// @nodoc
@JsonSerializable()
class OTPStateSent implements OTPState {
  const OTPStateSent(this.email, this.expiresAt, this.tenantId, this.tenantName,
      {final String? $type})
      : $type = $type ?? 'sent';
  factory OTPStateSent.fromJson(Map<String, dynamic> json) =>
      _$OTPStateSentFromJson(json);

  final String email;
  final String expiresAt;
  final String? tenantId;
  final String? tenantName;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of OTPState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OTPStateSentCopyWith<OTPStateSent> get copyWith =>
      _$OTPStateSentCopyWithImpl<OTPStateSent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OTPStateSentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OTPStateSent &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.tenantName, tenantName) ||
                other.tenantName == tenantName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, expiresAt, tenantId, tenantName);

  @override
  String toString() {
    return 'OTPState.sent(email: $email, expiresAt: $expiresAt, tenantId: $tenantId, tenantName: $tenantName)';
  }
}

/// @nodoc
abstract mixin class $OTPStateSentCopyWith<$Res>
    implements $OTPStateCopyWith<$Res> {
  factory $OTPStateSentCopyWith(
          OTPStateSent value, $Res Function(OTPStateSent) _then) =
      _$OTPStateSentCopyWithImpl;
  @useResult
  $Res call(
      {String email, String expiresAt, String? tenantId, String? tenantName});
}

/// @nodoc
class _$OTPStateSentCopyWithImpl<$Res> implements $OTPStateSentCopyWith<$Res> {
  _$OTPStateSentCopyWithImpl(this._self, this._then);

  final OTPStateSent _self;
  final $Res Function(OTPStateSent) _then;

  /// Create a copy of OTPState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? expiresAt = null,
    Object? tenantId = freezed,
    Object? tenantName = freezed,
  }) {
    return _then(OTPStateSent(
      null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == tenantId
          ? _self.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == tenantName
          ? _self.tenantName
          : tenantName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class OTPStateTenantSelection implements OTPState {
  const OTPStateTenantSelection(this.email, final List<TenantInfo> tenants,
      {required this.isNewUser, final String? $type})
      : _tenants = tenants,
        $type = $type ?? 'tenantSelection';
  factory OTPStateTenantSelection.fromJson(Map<String, dynamic> json) =>
      _$OTPStateTenantSelectionFromJson(json);

  final String email;
  final List<TenantInfo> _tenants;
  List<TenantInfo> get tenants {
    if (_tenants is EqualUnmodifiableListView) return _tenants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tenants);
  }

  final bool isNewUser;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of OTPState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OTPStateTenantSelectionCopyWith<OTPStateTenantSelection> get copyWith =>
      _$OTPStateTenantSelectionCopyWithImpl<OTPStateTenantSelection>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OTPStateTenantSelectionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OTPStateTenantSelection &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other._tenants, _tenants) &&
            (identical(other.isNewUser, isNewUser) ||
                other.isNewUser == isNewUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email,
      const DeepCollectionEquality().hash(_tenants), isNewUser);

  @override
  String toString() {
    return 'OTPState.tenantSelection(email: $email, tenants: $tenants, isNewUser: $isNewUser)';
  }
}

/// @nodoc
abstract mixin class $OTPStateTenantSelectionCopyWith<$Res>
    implements $OTPStateCopyWith<$Res> {
  factory $OTPStateTenantSelectionCopyWith(OTPStateTenantSelection value,
          $Res Function(OTPStateTenantSelection) _then) =
      _$OTPStateTenantSelectionCopyWithImpl;
  @useResult
  $Res call({String email, List<TenantInfo> tenants, bool isNewUser});
}

/// @nodoc
class _$OTPStateTenantSelectionCopyWithImpl<$Res>
    implements $OTPStateTenantSelectionCopyWith<$Res> {
  _$OTPStateTenantSelectionCopyWithImpl(this._self, this._then);

  final OTPStateTenantSelection _self;
  final $Res Function(OTPStateTenantSelection) _then;

  /// Create a copy of OTPState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? tenants = null,
    Object? isNewUser = null,
  }) {
    return _then(OTPStateTenantSelection(
      null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == tenants
          ? _self._tenants
          : tenants // ignore: cast_nullable_to_non_nullable
              as List<TenantInfo>,
      isNewUser: null == isNewUser
          ? _self.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class OTPStateVerified implements OTPState {
  const OTPStateVerified({final String? $type}) : $type = $type ?? 'verified';
  factory OTPStateVerified.fromJson(Map<String, dynamic> json) =>
      _$OTPStateVerifiedFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$OTPStateVerifiedToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OTPStateVerified);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OTPState.verified()';
  }
}

/// @nodoc
@JsonSerializable()
class OTPStateVerifying implements OTPState {
  const OTPStateVerifying({final String? $type}) : $type = $type ?? 'verifying';
  factory OTPStateVerifying.fromJson(Map<String, dynamic> json) =>
      _$OTPStateVerifyingFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$OTPStateVerifyingToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OTPStateVerifying);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OTPState.verifying()';
  }
}

// dart format on
