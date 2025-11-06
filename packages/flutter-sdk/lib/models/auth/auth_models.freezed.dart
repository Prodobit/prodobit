// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginOTPResponse {
  bool get success;
  LoginResponseData? get data;
  String? get message;

  /// Create a copy of LoginOTPResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginOTPResponseCopyWith<LoginOTPResponse> get copyWith =>
      _$LoginOTPResponseCopyWithImpl<LoginOTPResponse>(
          this as LoginOTPResponse, _$identity);

  /// Serializes this LoginOTPResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginOTPResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'LoginOTPResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class $LoginOTPResponseCopyWith<$Res> {
  factory $LoginOTPResponseCopyWith(
          LoginOTPResponse value, $Res Function(LoginOTPResponse) _then) =
      _$LoginOTPResponseCopyWithImpl;
  @useResult
  $Res call({bool success, LoginResponseData? data, String? message});

  $LoginResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$LoginOTPResponseCopyWithImpl<$Res>
    implements $LoginOTPResponseCopyWith<$Res> {
  _$LoginOTPResponseCopyWithImpl(this._self, this._then);

  final LoginOTPResponse _self;
  final $Res Function(LoginOTPResponse) _then;

  /// Create a copy of LoginOTPResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_self.copyWith(
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginResponseData?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of LoginOTPResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginResponseDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $LoginResponseDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [LoginOTPResponse].
extension LoginOTPResponsePatterns on LoginOTPResponse {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginOTPResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoginOTPResponse() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_LoginOTPResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginOTPResponse():
        return $default(_that);
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoginOTPResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginOTPResponse() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool success, LoginResponseData? data, String? message)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoginOTPResponse() when $default != null:
        return $default(_that.success, _that.data, _that.message);
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
  TResult when<TResult extends Object?>(
    TResult Function(bool success, LoginResponseData? data, String? message)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginOTPResponse():
        return $default(_that.success, _that.data, _that.message);
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool success, LoginResponseData? data, String? message)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginOTPResponse() when $default != null:
        return $default(_that.success, _that.data, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LoginOTPResponse implements LoginOTPResponse {
  const _LoginOTPResponse({required this.success, this.data, this.message});
  factory _LoginOTPResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginOTPResponseFromJson(json);

  @override
  final bool success;
  @override
  final LoginResponseData? data;
  @override
  final String? message;

  /// Create a copy of LoginOTPResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginOTPResponseCopyWith<_LoginOTPResponse> get copyWith =>
      __$LoginOTPResponseCopyWithImpl<_LoginOTPResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LoginOTPResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginOTPResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @override
  String toString() {
    return 'LoginOTPResponse(success: $success, data: $data, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$LoginOTPResponseCopyWith<$Res>
    implements $LoginOTPResponseCopyWith<$Res> {
  factory _$LoginOTPResponseCopyWith(
          _LoginOTPResponse value, $Res Function(_LoginOTPResponse) _then) =
      __$LoginOTPResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool success, LoginResponseData? data, String? message});

  @override
  $LoginResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$LoginOTPResponseCopyWithImpl<$Res>
    implements _$LoginOTPResponseCopyWith<$Res> {
  __$LoginOTPResponseCopyWithImpl(this._self, this._then);

  final _LoginOTPResponse _self;
  final $Res Function(_LoginOTPResponse) _then;

  /// Create a copy of LoginOTPResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = null,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_LoginOTPResponse(
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginResponseData?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of LoginOTPResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginResponseDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $LoginResponseDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$LoginResponseData {
  UserData get user;
  SessionData get session;
  AuthMethodData get authMethod;
  bool get isNewUser;
  String? get refreshToken;
  List<TenantMembership>? get tenantMemberships;

  /// Create a copy of LoginResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginResponseDataCopyWith<LoginResponseData> get copyWith =>
      _$LoginResponseDataCopyWithImpl<LoginResponseData>(
          this as LoginResponseData, _$identity);

  /// Serializes this LoginResponseData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginResponseData &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.authMethod, authMethod) ||
                other.authMethod == authMethod) &&
            (identical(other.isNewUser, isNewUser) ||
                other.isNewUser == isNewUser) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            const DeepCollectionEquality()
                .equals(other.tenantMemberships, tenantMemberships));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      session,
      authMethod,
      isNewUser,
      refreshToken,
      const DeepCollectionEquality().hash(tenantMemberships));

  @override
  String toString() {
    return 'LoginResponseData(user: $user, session: $session, authMethod: $authMethod, isNewUser: $isNewUser, refreshToken: $refreshToken, tenantMemberships: $tenantMemberships)';
  }
}

/// @nodoc
abstract mixin class $LoginResponseDataCopyWith<$Res> {
  factory $LoginResponseDataCopyWith(
          LoginResponseData value, $Res Function(LoginResponseData) _then) =
      _$LoginResponseDataCopyWithImpl;
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
class _$LoginResponseDataCopyWithImpl<$Res>
    implements $LoginResponseDataCopyWith<$Res> {
  _$LoginResponseDataCopyWithImpl(this._self, this._then);

  final LoginResponseData _self;
  final $Res Function(LoginResponseData) _then;

  /// Create a copy of LoginResponseData
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData,
      session: null == session
          ? _self.session
          : session // ignore: cast_nullable_to_non_nullable
              as SessionData,
      authMethod: null == authMethod
          ? _self.authMethod
          : authMethod // ignore: cast_nullable_to_non_nullable
              as AuthMethodData,
      isNewUser: null == isNewUser
          ? _self.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool,
      refreshToken: freezed == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantMemberships: freezed == tenantMemberships
          ? _self.tenantMemberships
          : tenantMemberships // ignore: cast_nullable_to_non_nullable
              as List<TenantMembership>?,
    ));
  }

  /// Create a copy of LoginResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res> get user {
    return $UserDataCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of LoginResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionDataCopyWith<$Res> get session {
    return $SessionDataCopyWith<$Res>(_self.session, (value) {
      return _then(_self.copyWith(session: value));
    });
  }

  /// Create a copy of LoginResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthMethodDataCopyWith<$Res> get authMethod {
    return $AuthMethodDataCopyWith<$Res>(_self.authMethod, (value) {
      return _then(_self.copyWith(authMethod: value));
    });
  }
}

/// Adds pattern-matching-related methods to [LoginResponseData].
extension LoginResponseDataPatterns on LoginResponseData {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginResponseData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoginResponseData() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_LoginResponseData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginResponseData():
        return $default(_that);
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoginResponseData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginResponseData() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            UserData user,
            SessionData session,
            AuthMethodData authMethod,
            bool isNewUser,
            String? refreshToken,
            List<TenantMembership>? tenantMemberships)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoginResponseData() when $default != null:
        return $default(_that.user, _that.session, _that.authMethod,
            _that.isNewUser, _that.refreshToken, _that.tenantMemberships);
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
  TResult when<TResult extends Object?>(
    TResult Function(
            UserData user,
            SessionData session,
            AuthMethodData authMethod,
            bool isNewUser,
            String? refreshToken,
            List<TenantMembership>? tenantMemberships)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginResponseData():
        return $default(_that.user, _that.session, _that.authMethod,
            _that.isNewUser, _that.refreshToken, _that.tenantMemberships);
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            UserData user,
            SessionData session,
            AuthMethodData authMethod,
            bool isNewUser,
            String? refreshToken,
            List<TenantMembership>? tenantMemberships)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginResponseData() when $default != null:
        return $default(_that.user, _that.session, _that.authMethod,
            _that.isNewUser, _that.refreshToken, _that.tenantMemberships);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LoginResponseData implements LoginResponseData {
  const _LoginResponseData(
      {required this.user,
      required this.session,
      required this.authMethod,
      required this.isNewUser,
      this.refreshToken,
      final List<TenantMembership>? tenantMemberships})
      : _tenantMemberships = tenantMemberships;
  factory _LoginResponseData.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDataFromJson(json);

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

  /// Create a copy of LoginResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginResponseDataCopyWith<_LoginResponseData> get copyWith =>
      __$LoginResponseDataCopyWithImpl<_LoginResponseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LoginResponseDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginResponseData &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      session,
      authMethod,
      isNewUser,
      refreshToken,
      const DeepCollectionEquality().hash(_tenantMemberships));

  @override
  String toString() {
    return 'LoginResponseData(user: $user, session: $session, authMethod: $authMethod, isNewUser: $isNewUser, refreshToken: $refreshToken, tenantMemberships: $tenantMemberships)';
  }
}

/// @nodoc
abstract mixin class _$LoginResponseDataCopyWith<$Res>
    implements $LoginResponseDataCopyWith<$Res> {
  factory _$LoginResponseDataCopyWith(
          _LoginResponseData value, $Res Function(_LoginResponseData) _then) =
      __$LoginResponseDataCopyWithImpl;
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
class __$LoginResponseDataCopyWithImpl<$Res>
    implements _$LoginResponseDataCopyWith<$Res> {
  __$LoginResponseDataCopyWithImpl(this._self, this._then);

  final _LoginResponseData _self;
  final $Res Function(_LoginResponseData) _then;

  /// Create a copy of LoginResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
    Object? session = null,
    Object? authMethod = null,
    Object? isNewUser = null,
    Object? refreshToken = freezed,
    Object? tenantMemberships = freezed,
  }) {
    return _then(_LoginResponseData(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData,
      session: null == session
          ? _self.session
          : session // ignore: cast_nullable_to_non_nullable
              as SessionData,
      authMethod: null == authMethod
          ? _self.authMethod
          : authMethod // ignore: cast_nullable_to_non_nullable
              as AuthMethodData,
      isNewUser: null == isNewUser
          ? _self.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool,
      refreshToken: freezed == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantMemberships: freezed == tenantMemberships
          ? _self._tenantMemberships
          : tenantMemberships // ignore: cast_nullable_to_non_nullable
              as List<TenantMembership>?,
    ));
  }

  /// Create a copy of LoginResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res> get user {
    return $UserDataCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of LoginResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionDataCopyWith<$Res> get session {
    return $SessionDataCopyWith<$Res>(_self.session, (value) {
      return _then(_self.copyWith(session: value));
    });
  }

  /// Create a copy of LoginResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthMethodDataCopyWith<$Res> get authMethod {
    return $AuthMethodDataCopyWith<$Res>(_self.authMethod, (value) {
      return _then(_self.copyWith(authMethod: value));
    });
  }
}

/// @nodoc
mixin _$AuthMethodData {
  String get id;
  String get provider;
  String get providerId;
  bool get verified;
  Map<String, dynamic>? get metadata;

  /// Create a copy of AuthMethodData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthMethodDataCopyWith<AuthMethodData> get copyWith =>
      _$AuthMethodDataCopyWithImpl<AuthMethodData>(
          this as AuthMethodData, _$identity);

  /// Serializes this AuthMethodData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthMethodData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, provider, providerId,
      verified, const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'AuthMethodData(id: $id, provider: $provider, providerId: $providerId, verified: $verified, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $AuthMethodDataCopyWith<$Res> {
  factory $AuthMethodDataCopyWith(
          AuthMethodData value, $Res Function(AuthMethodData) _then) =
      _$AuthMethodDataCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String provider,
      String providerId,
      bool verified,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$AuthMethodDataCopyWithImpl<$Res>
    implements $AuthMethodDataCopyWith<$Res> {
  _$AuthMethodDataCopyWithImpl(this._self, this._then);

  final AuthMethodData _self;
  final $Res Function(AuthMethodData) _then;

  /// Create a copy of AuthMethodData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? provider = null,
    Object? providerId = null,
    Object? verified = null,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _self.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      providerId: null == providerId
          ? _self.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String,
      verified: null == verified
          ? _self.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AuthMethodData].
extension AuthMethodDataPatterns on AuthMethodData {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthMethodData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthMethodData() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_AuthMethodData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthMethodData():
        return $default(_that);
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthMethodData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthMethodData() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String provider, String providerId,
            bool verified, Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthMethodData() when $default != null:
        return $default(_that.id, _that.provider, _that.providerId,
            _that.verified, _that.metadata);
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
  TResult when<TResult extends Object?>(
    TResult Function(String id, String provider, String providerId,
            bool verified, Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthMethodData():
        return $default(_that.id, _that.provider, _that.providerId,
            _that.verified, _that.metadata);
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String provider, String providerId,
            bool verified, Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthMethodData() when $default != null:
        return $default(_that.id, _that.provider, _that.providerId,
            _that.verified, _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AuthMethodData implements AuthMethodData {
  const _AuthMethodData(
      {required this.id,
      required this.provider,
      required this.providerId,
      required this.verified,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _AuthMethodData.fromJson(Map<String, dynamic> json) =>
      _$AuthMethodDataFromJson(json);

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

  /// Create a copy of AuthMethodData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthMethodDataCopyWith<_AuthMethodData> get copyWith =>
      __$AuthMethodDataCopyWithImpl<_AuthMethodData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AuthMethodDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthMethodData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, provider, providerId,
      verified, const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'AuthMethodData(id: $id, provider: $provider, providerId: $providerId, verified: $verified, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$AuthMethodDataCopyWith<$Res>
    implements $AuthMethodDataCopyWith<$Res> {
  factory _$AuthMethodDataCopyWith(
          _AuthMethodData value, $Res Function(_AuthMethodData) _then) =
      __$AuthMethodDataCopyWithImpl;
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
class __$AuthMethodDataCopyWithImpl<$Res>
    implements _$AuthMethodDataCopyWith<$Res> {
  __$AuthMethodDataCopyWithImpl(this._self, this._then);

  final _AuthMethodData _self;
  final $Res Function(_AuthMethodData) _then;

  /// Create a copy of AuthMethodData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? provider = null,
    Object? providerId = null,
    Object? verified = null,
    Object? metadata = freezed,
  }) {
    return _then(_AuthMethodData(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _self.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      providerId: null == providerId
          ? _self.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String,
      verified: null == verified
          ? _self.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$OrganizationInfo {
  String get id;
  String get name;
  String get plan;
  bool get isActive;
  String? get logo;
  String? get domain;
  Map<String, dynamic>? get settings;

  /// Create a copy of OrganizationInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrganizationInfoCopyWith<OrganizationInfo> get copyWith =>
      _$OrganizationInfoCopyWithImpl<OrganizationInfo>(
          this as OrganizationInfo, _$identity);

  /// Serializes this OrganizationInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrganizationInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.plan, plan) || other.plan == plan) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            const DeepCollectionEquality().equals(other.settings, settings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, plan, isActive, logo,
      domain, const DeepCollectionEquality().hash(settings));

  @override
  String toString() {
    return 'OrganizationInfo(id: $id, name: $name, plan: $plan, isActive: $isActive, logo: $logo, domain: $domain, settings: $settings)';
  }
}

/// @nodoc
abstract mixin class $OrganizationInfoCopyWith<$Res> {
  factory $OrganizationInfoCopyWith(
          OrganizationInfo value, $Res Function(OrganizationInfo) _then) =
      _$OrganizationInfoCopyWithImpl;
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
class _$OrganizationInfoCopyWithImpl<$Res>
    implements $OrganizationInfoCopyWith<$Res> {
  _$OrganizationInfoCopyWithImpl(this._self, this._then);

  final OrganizationInfo _self;
  final $Res Function(OrganizationInfo) _then;

  /// Create a copy of OrganizationInfo
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      plan: null == plan
          ? _self.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      logo: freezed == logo
          ? _self.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      domain: freezed == domain
          ? _self.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: freezed == settings
          ? _self.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [OrganizationInfo].
extension OrganizationInfoPatterns on OrganizationInfo {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OrganizationInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrganizationInfo() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_OrganizationInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrganizationInfo():
        return $default(_that);
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_OrganizationInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrganizationInfo() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String name, String plan, bool isActive,
            String? logo, String? domain, Map<String, dynamic>? settings)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrganizationInfo() when $default != null:
        return $default(_that.id, _that.name, _that.plan, _that.isActive,
            _that.logo, _that.domain, _that.settings);
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
  TResult when<TResult extends Object?>(
    TResult Function(String id, String name, String plan, bool isActive,
            String? logo, String? domain, Map<String, dynamic>? settings)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrganizationInfo():
        return $default(_that.id, _that.name, _that.plan, _that.isActive,
            _that.logo, _that.domain, _that.settings);
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String name, String plan, bool isActive,
            String? logo, String? domain, Map<String, dynamic>? settings)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrganizationInfo() when $default != null:
        return $default(_that.id, _that.name, _that.plan, _that.isActive,
            _that.logo, _that.domain, _that.settings);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
@Deprecated('Use TenantInfo instead')
class _OrganizationInfo implements OrganizationInfo {
  const _OrganizationInfo(
      {required this.id,
      required this.name,
      required this.plan,
      required this.isActive,
      this.logo,
      this.domain,
      final Map<String, dynamic>? settings})
      : _settings = settings;
  factory _OrganizationInfo.fromJson(Map<String, dynamic> json) =>
      _$OrganizationInfoFromJson(json);

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

  /// Create a copy of OrganizationInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrganizationInfoCopyWith<_OrganizationInfo> get copyWith =>
      __$OrganizationInfoCopyWithImpl<_OrganizationInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrganizationInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrganizationInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.plan, plan) || other.plan == plan) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            const DeepCollectionEquality().equals(other._settings, _settings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, plan, isActive, logo,
      domain, const DeepCollectionEquality().hash(_settings));

  @override
  String toString() {
    return 'OrganizationInfo(id: $id, name: $name, plan: $plan, isActive: $isActive, logo: $logo, domain: $domain, settings: $settings)';
  }
}

/// @nodoc
abstract mixin class _$OrganizationInfoCopyWith<$Res>
    implements $OrganizationInfoCopyWith<$Res> {
  factory _$OrganizationInfoCopyWith(
          _OrganizationInfo value, $Res Function(_OrganizationInfo) _then) =
      __$OrganizationInfoCopyWithImpl;
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
class __$OrganizationInfoCopyWithImpl<$Res>
    implements _$OrganizationInfoCopyWith<$Res> {
  __$OrganizationInfoCopyWithImpl(this._self, this._then);

  final _OrganizationInfo _self;
  final $Res Function(_OrganizationInfo) _then;

  /// Create a copy of OrganizationInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? plan = null,
    Object? isActive = null,
    Object? logo = freezed,
    Object? domain = freezed,
    Object? settings = freezed,
  }) {
    return _then(_OrganizationInfo(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      plan: null == plan
          ? _self.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      logo: freezed == logo
          ? _self.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      domain: freezed == domain
          ? _self.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: freezed == settings
          ? _self._settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$OTPRequest {
  String get email;
  String? get tenantId;

  /// Create a copy of OTPRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OTPRequestCopyWith<OTPRequest> get copyWith =>
      _$OTPRequestCopyWithImpl<OTPRequest>(this as OTPRequest, _$identity);

  /// Serializes this OTPRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OTPRequest &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, tenantId);

  @override
  String toString() {
    return 'OTPRequest(email: $email, tenantId: $tenantId)';
  }
}

/// @nodoc
abstract mixin class $OTPRequestCopyWith<$Res> {
  factory $OTPRequestCopyWith(
          OTPRequest value, $Res Function(OTPRequest) _then) =
      _$OTPRequestCopyWithImpl;
  @useResult
  $Res call({String email, String? tenantId});
}

/// @nodoc
class _$OTPRequestCopyWithImpl<$Res> implements $OTPRequestCopyWith<$Res> {
  _$OTPRequestCopyWithImpl(this._self, this._then);

  final OTPRequest _self;
  final $Res Function(OTPRequest) _then;

  /// Create a copy of OTPRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? tenantId = freezed,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: freezed == tenantId
          ? _self.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [OTPRequest].
extension OTPRequestPatterns on OTPRequest {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OTPRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OTPRequest() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_OTPRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OTPRequest():
        return $default(_that);
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_OTPRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OTPRequest() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String? tenantId)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OTPRequest() when $default != null:
        return $default(_that.email, _that.tenantId);
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
  TResult when<TResult extends Object?>(
    TResult Function(String email, String? tenantId) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OTPRequest():
        return $default(_that.email, _that.tenantId);
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String? tenantId)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OTPRequest() when $default != null:
        return $default(_that.email, _that.tenantId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OTPRequest implements OTPRequest {
  const _OTPRequest({required this.email, this.tenantId});
  factory _OTPRequest.fromJson(Map<String, dynamic> json) =>
      _$OTPRequestFromJson(json);

  @override
  final String email;
  @override
  final String? tenantId;

  /// Create a copy of OTPRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OTPRequestCopyWith<_OTPRequest> get copyWith =>
      __$OTPRequestCopyWithImpl<_OTPRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OTPRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OTPRequest &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, tenantId);

  @override
  String toString() {
    return 'OTPRequest(email: $email, tenantId: $tenantId)';
  }
}

/// @nodoc
abstract mixin class _$OTPRequestCopyWith<$Res>
    implements $OTPRequestCopyWith<$Res> {
  factory _$OTPRequestCopyWith(
          _OTPRequest value, $Res Function(_OTPRequest) _then) =
      __$OTPRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String email, String? tenantId});
}

/// @nodoc
class __$OTPRequestCopyWithImpl<$Res> implements _$OTPRequestCopyWith<$Res> {
  __$OTPRequestCopyWithImpl(this._self, this._then);

  final _OTPRequest _self;
  final $Res Function(_OTPRequest) _then;

  /// Create a copy of OTPRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? tenantId = freezed,
  }) {
    return _then(_OTPRequest(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: freezed == tenantId
          ? _self.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$OTPResponse {
  bool get success;
  String get message;
  String? get expiresAt;
  bool? get requiresTenantSelection;
  bool? get isNewUser; // Single tenant response
  String? get defaultTenantId;
  String? get defaultTenantName; // Selected tenant response
  String? get selectedTenantId;
  String? get selectedTenantName; // Multiple tenant response
  List<TenantInfo>? get tenants;

  /// Create a copy of OTPResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OTPResponseCopyWith<OTPResponse> get copyWith =>
      _$OTPResponseCopyWithImpl<OTPResponse>(this as OTPResponse, _$identity);

  /// Serializes this OTPResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OTPResponse &&
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
            const DeepCollectionEquality().equals(other.tenants, tenants));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(tenants));

  @override
  String toString() {
    return 'OTPResponse(success: $success, message: $message, expiresAt: $expiresAt, requiresTenantSelection: $requiresTenantSelection, isNewUser: $isNewUser, defaultTenantId: $defaultTenantId, defaultTenantName: $defaultTenantName, selectedTenantId: $selectedTenantId, selectedTenantName: $selectedTenantName, tenants: $tenants)';
  }
}

/// @nodoc
abstract mixin class $OTPResponseCopyWith<$Res> {
  factory $OTPResponseCopyWith(
          OTPResponse value, $Res Function(OTPResponse) _then) =
      _$OTPResponseCopyWithImpl;
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
class _$OTPResponseCopyWithImpl<$Res> implements $OTPResponseCopyWith<$Res> {
  _$OTPResponseCopyWithImpl(this._self, this._then);

  final OTPResponse _self;
  final $Res Function(OTPResponse) _then;

  /// Create a copy of OTPResponse
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
      requiresTenantSelection: freezed == requiresTenantSelection
          ? _self.requiresTenantSelection
          : requiresTenantSelection // ignore: cast_nullable_to_non_nullable
              as bool?,
      isNewUser: freezed == isNewUser
          ? _self.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      defaultTenantId: freezed == defaultTenantId
          ? _self.defaultTenantId
          : defaultTenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultTenantName: freezed == defaultTenantName
          ? _self.defaultTenantName
          : defaultTenantName // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedTenantId: freezed == selectedTenantId
          ? _self.selectedTenantId
          : selectedTenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedTenantName: freezed == selectedTenantName
          ? _self.selectedTenantName
          : selectedTenantName // ignore: cast_nullable_to_non_nullable
              as String?,
      tenants: freezed == tenants
          ? _self.tenants
          : tenants // ignore: cast_nullable_to_non_nullable
              as List<TenantInfo>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [OTPResponse].
extension OTPResponsePatterns on OTPResponse {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OTPResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OTPResponse() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_OTPResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OTPResponse():
        return $default(_that);
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_OTPResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OTPResponse() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool success,
            String message,
            String? expiresAt,
            bool? requiresTenantSelection,
            bool? isNewUser,
            String? defaultTenantId,
            String? defaultTenantName,
            String? selectedTenantId,
            String? selectedTenantName,
            List<TenantInfo>? tenants)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OTPResponse() when $default != null:
        return $default(
            _that.success,
            _that.message,
            _that.expiresAt,
            _that.requiresTenantSelection,
            _that.isNewUser,
            _that.defaultTenantId,
            _that.defaultTenantName,
            _that.selectedTenantId,
            _that.selectedTenantName,
            _that.tenants);
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
  TResult when<TResult extends Object?>(
    TResult Function(
            bool success,
            String message,
            String? expiresAt,
            bool? requiresTenantSelection,
            bool? isNewUser,
            String? defaultTenantId,
            String? defaultTenantName,
            String? selectedTenantId,
            String? selectedTenantName,
            List<TenantInfo>? tenants)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OTPResponse():
        return $default(
            _that.success,
            _that.message,
            _that.expiresAt,
            _that.requiresTenantSelection,
            _that.isNewUser,
            _that.defaultTenantId,
            _that.defaultTenantName,
            _that.selectedTenantId,
            _that.selectedTenantName,
            _that.tenants);
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            bool success,
            String message,
            String? expiresAt,
            bool? requiresTenantSelection,
            bool? isNewUser,
            String? defaultTenantId,
            String? defaultTenantName,
            String? selectedTenantId,
            String? selectedTenantName,
            List<TenantInfo>? tenants)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OTPResponse() when $default != null:
        return $default(
            _that.success,
            _that.message,
            _that.expiresAt,
            _that.requiresTenantSelection,
            _that.isNewUser,
            _that.defaultTenantId,
            _that.defaultTenantName,
            _that.selectedTenantId,
            _that.selectedTenantName,
            _that.tenants);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OTPResponse implements OTPResponse {
  const _OTPResponse(
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
  factory _OTPResponse.fromJson(Map<String, dynamic> json) =>
      _$OTPResponseFromJson(json);

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

  /// Create a copy of OTPResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OTPResponseCopyWith<_OTPResponse> get copyWith =>
      __$OTPResponseCopyWithImpl<_OTPResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OTPResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OTPResponse &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'OTPResponse(success: $success, message: $message, expiresAt: $expiresAt, requiresTenantSelection: $requiresTenantSelection, isNewUser: $isNewUser, defaultTenantId: $defaultTenantId, defaultTenantName: $defaultTenantName, selectedTenantId: $selectedTenantId, selectedTenantName: $selectedTenantName, tenants: $tenants)';
  }
}

/// @nodoc
abstract mixin class _$OTPResponseCopyWith<$Res>
    implements $OTPResponseCopyWith<$Res> {
  factory _$OTPResponseCopyWith(
          _OTPResponse value, $Res Function(_OTPResponse) _then) =
      __$OTPResponseCopyWithImpl;
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
class __$OTPResponseCopyWithImpl<$Res> implements _$OTPResponseCopyWith<$Res> {
  __$OTPResponseCopyWithImpl(this._self, this._then);

  final _OTPResponse _self;
  final $Res Function(_OTPResponse) _then;

  /// Create a copy of OTPResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_OTPResponse(
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
      requiresTenantSelection: freezed == requiresTenantSelection
          ? _self.requiresTenantSelection
          : requiresTenantSelection // ignore: cast_nullable_to_non_nullable
              as bool?,
      isNewUser: freezed == isNewUser
          ? _self.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      defaultTenantId: freezed == defaultTenantId
          ? _self.defaultTenantId
          : defaultTenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultTenantName: freezed == defaultTenantName
          ? _self.defaultTenantName
          : defaultTenantName // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedTenantId: freezed == selectedTenantId
          ? _self.selectedTenantId
          : selectedTenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedTenantName: freezed == selectedTenantName
          ? _self.selectedTenantName
          : selectedTenantName // ignore: cast_nullable_to_non_nullable
              as String?,
      tenants: freezed == tenants
          ? _self._tenants
          : tenants // ignore: cast_nullable_to_non_nullable
              as List<TenantInfo>?,
    ));
  }
}

/// @nodoc
mixin _$RefreshTokenRequest {
  String get refreshToken;

  /// Create a copy of RefreshTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RefreshTokenRequestCopyWith<RefreshTokenRequest> get copyWith =>
      _$RefreshTokenRequestCopyWithImpl<RefreshTokenRequest>(
          this as RefreshTokenRequest, _$identity);

  /// Serializes this RefreshTokenRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RefreshTokenRequest &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken);

  @override
  String toString() {
    return 'RefreshTokenRequest(refreshToken: $refreshToken)';
  }
}

/// @nodoc
abstract mixin class $RefreshTokenRequestCopyWith<$Res> {
  factory $RefreshTokenRequestCopyWith(
          RefreshTokenRequest value, $Res Function(RefreshTokenRequest) _then) =
      _$RefreshTokenRequestCopyWithImpl;
  @useResult
  $Res call({String refreshToken});
}

/// @nodoc
class _$RefreshTokenRequestCopyWithImpl<$Res>
    implements $RefreshTokenRequestCopyWith<$Res> {
  _$RefreshTokenRequestCopyWithImpl(this._self, this._then);

  final RefreshTokenRequest _self;
  final $Res Function(RefreshTokenRequest) _then;

  /// Create a copy of RefreshTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
  }) {
    return _then(_self.copyWith(
      refreshToken: null == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [RefreshTokenRequest].
extension RefreshTokenRequestPatterns on RefreshTokenRequest {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RefreshTokenRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RefreshTokenRequest() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_RefreshTokenRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RefreshTokenRequest():
        return $default(_that);
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_RefreshTokenRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RefreshTokenRequest() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String refreshToken)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RefreshTokenRequest() when $default != null:
        return $default(_that.refreshToken);
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
  TResult when<TResult extends Object?>(
    TResult Function(String refreshToken) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RefreshTokenRequest():
        return $default(_that.refreshToken);
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String refreshToken)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RefreshTokenRequest() when $default != null:
        return $default(_that.refreshToken);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RefreshTokenRequest implements RefreshTokenRequest {
  const _RefreshTokenRequest({required this.refreshToken});
  factory _RefreshTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenRequestFromJson(json);

  @override
  final String refreshToken;

  /// Create a copy of RefreshTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RefreshTokenRequestCopyWith<_RefreshTokenRequest> get copyWith =>
      __$RefreshTokenRequestCopyWithImpl<_RefreshTokenRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RefreshTokenRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RefreshTokenRequest &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken);

  @override
  String toString() {
    return 'RefreshTokenRequest(refreshToken: $refreshToken)';
  }
}

/// @nodoc
abstract mixin class _$RefreshTokenRequestCopyWith<$Res>
    implements $RefreshTokenRequestCopyWith<$Res> {
  factory _$RefreshTokenRequestCopyWith(_RefreshTokenRequest value,
          $Res Function(_RefreshTokenRequest) _then) =
      __$RefreshTokenRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String refreshToken});
}

/// @nodoc
class __$RefreshTokenRequestCopyWithImpl<$Res>
    implements _$RefreshTokenRequestCopyWith<$Res> {
  __$RefreshTokenRequestCopyWithImpl(this._self, this._then);

  final _RefreshTokenRequest _self;
  final $Res Function(_RefreshTokenRequest) _then;

  /// Create a copy of RefreshTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? refreshToken = null,
  }) {
    return _then(_RefreshTokenRequest(
      refreshToken: null == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$SessionData {
  String get accessToken;
  String get expiresAt;
  String get csrfToken;

  /// Create a copy of SessionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SessionDataCopyWith<SessionData> get copyWith =>
      _$SessionDataCopyWithImpl<SessionData>(this as SessionData, _$identity);

  /// Serializes this SessionData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SessionData &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.csrfToken, csrfToken) ||
                other.csrfToken == csrfToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, expiresAt, csrfToken);

  @override
  String toString() {
    return 'SessionData(accessToken: $accessToken, expiresAt: $expiresAt, csrfToken: $csrfToken)';
  }
}

/// @nodoc
abstract mixin class $SessionDataCopyWith<$Res> {
  factory $SessionDataCopyWith(
          SessionData value, $Res Function(SessionData) _then) =
      _$SessionDataCopyWithImpl;
  @useResult
  $Res call({String accessToken, String expiresAt, String csrfToken});
}

/// @nodoc
class _$SessionDataCopyWithImpl<$Res> implements $SessionDataCopyWith<$Res> {
  _$SessionDataCopyWithImpl(this._self, this._then);

  final SessionData _self;
  final $Res Function(SessionData) _then;

  /// Create a copy of SessionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? expiresAt = null,
    Object? csrfToken = null,
  }) {
    return _then(_self.copyWith(
      accessToken: null == accessToken
          ? _self.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String,
      csrfToken: null == csrfToken
          ? _self.csrfToken
          : csrfToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SessionData].
extension SessionDataPatterns on SessionData {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SessionData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SessionData() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_SessionData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SessionData():
        return $default(_that);
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SessionData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SessionData() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String accessToken, String expiresAt, String csrfToken)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SessionData() when $default != null:
        return $default(_that.accessToken, _that.expiresAt, _that.csrfToken);
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
  TResult when<TResult extends Object?>(
    TResult Function(String accessToken, String expiresAt, String csrfToken)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SessionData():
        return $default(_that.accessToken, _that.expiresAt, _that.csrfToken);
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String accessToken, String expiresAt, String csrfToken)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SessionData() when $default != null:
        return $default(_that.accessToken, _that.expiresAt, _that.csrfToken);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SessionData implements SessionData {
  const _SessionData(
      {required this.accessToken,
      required this.expiresAt,
      required this.csrfToken});
  factory _SessionData.fromJson(Map<String, dynamic> json) =>
      _$SessionDataFromJson(json);

  @override
  final String accessToken;
  @override
  final String expiresAt;
  @override
  final String csrfToken;

  /// Create a copy of SessionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SessionDataCopyWith<_SessionData> get copyWith =>
      __$SessionDataCopyWithImpl<_SessionData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SessionDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SessionData &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.csrfToken, csrfToken) ||
                other.csrfToken == csrfToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, expiresAt, csrfToken);

  @override
  String toString() {
    return 'SessionData(accessToken: $accessToken, expiresAt: $expiresAt, csrfToken: $csrfToken)';
  }
}

/// @nodoc
abstract mixin class _$SessionDataCopyWith<$Res>
    implements $SessionDataCopyWith<$Res> {
  factory _$SessionDataCopyWith(
          _SessionData value, $Res Function(_SessionData) _then) =
      __$SessionDataCopyWithImpl;
  @override
  @useResult
  $Res call({String accessToken, String expiresAt, String csrfToken});
}

/// @nodoc
class __$SessionDataCopyWithImpl<$Res> implements _$SessionDataCopyWith<$Res> {
  __$SessionDataCopyWithImpl(this._self, this._then);

  final _SessionData _self;
  final $Res Function(_SessionData) _then;

  /// Create a copy of SessionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? accessToken = null,
    Object? expiresAt = null,
    Object? csrfToken = null,
  }) {
    return _then(_SessionData(
      accessToken: null == accessToken
          ? _self.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String,
      csrfToken: null == csrfToken
          ? _self.csrfToken
          : csrfToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$TenantInfo {
  String get id;
  String get name;
  String get role;

  /// Create a copy of TenantInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TenantInfoCopyWith<TenantInfo> get copyWith =>
      _$TenantInfoCopyWithImpl<TenantInfo>(this as TenantInfo, _$identity);

  /// Serializes this TenantInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TenantInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, role);

  @override
  String toString() {
    return 'TenantInfo(id: $id, name: $name, role: $role)';
  }
}

/// @nodoc
abstract mixin class $TenantInfoCopyWith<$Res> {
  factory $TenantInfoCopyWith(
          TenantInfo value, $Res Function(TenantInfo) _then) =
      _$TenantInfoCopyWithImpl;
  @useResult
  $Res call({String id, String name, String role});
}

/// @nodoc
class _$TenantInfoCopyWithImpl<$Res> implements $TenantInfoCopyWith<$Res> {
  _$TenantInfoCopyWithImpl(this._self, this._then);

  final TenantInfo _self;
  final $Res Function(TenantInfo) _then;

  /// Create a copy of TenantInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? role = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [TenantInfo].
extension TenantInfoPatterns on TenantInfo {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TenantInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TenantInfo() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_TenantInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantInfo():
        return $default(_that);
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TenantInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantInfo() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String name, String role)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TenantInfo() when $default != null:
        return $default(_that.id, _that.name, _that.role);
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
  TResult when<TResult extends Object?>(
    TResult Function(String id, String name, String role) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantInfo():
        return $default(_that.id, _that.name, _that.role);
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String name, String role)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantInfo() when $default != null:
        return $default(_that.id, _that.name, _that.role);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TenantInfo implements TenantInfo {
  const _TenantInfo({required this.id, required this.name, required this.role});
  factory _TenantInfo.fromJson(Map<String, dynamic> json) =>
      _$TenantInfoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String role;

  /// Create a copy of TenantInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TenantInfoCopyWith<_TenantInfo> get copyWith =>
      __$TenantInfoCopyWithImpl<_TenantInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TenantInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TenantInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, role);

  @override
  String toString() {
    return 'TenantInfo(id: $id, name: $name, role: $role)';
  }
}

/// @nodoc
abstract mixin class _$TenantInfoCopyWith<$Res>
    implements $TenantInfoCopyWith<$Res> {
  factory _$TenantInfoCopyWith(
          _TenantInfo value, $Res Function(_TenantInfo) _then) =
      __$TenantInfoCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String name, String role});
}

/// @nodoc
class __$TenantInfoCopyWithImpl<$Res> implements _$TenantInfoCopyWith<$Res> {
  __$TenantInfoCopyWithImpl(this._self, this._then);

  final _TenantInfo _self;
  final $Res Function(_TenantInfo) _then;

  /// Create a copy of TenantInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? role = null,
  }) {
    return _then(_TenantInfo(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$TenantMembership {
  String get id;
  String get userId;
  String get tenantId;
  String get roleId;
  String get roleName;
  String get status;
  Map<String, dynamic> get permissions;
  String get accessLevel;
  Map<String, dynamic> get resourceRestrictions;
  String get insertedAt;
  String get updatedAt;
  String? get roleDescription;
  String? get roleColor;
  Map<String, dynamic>? get ipRestrictions;
  Map<String, dynamic>? get timeRestrictions;
  String? get expiresAt;
  String? get invitedBy;
  String? get invitedAt;
  String? get joinedAt;
  String? get lastLoginAt;
  String? get deletedAt;

  /// Create a copy of TenantMembership
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TenantMembershipCopyWith<TenantMembership> get copyWith =>
      _$TenantMembershipCopyWithImpl<TenantMembership>(
          this as TenantMembership, _$identity);

  /// Serializes this TenantMembership to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TenantMembership &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.roleName, roleName) ||
                other.roleName == roleName) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.permissions, permissions) &&
            (identical(other.accessLevel, accessLevel) ||
                other.accessLevel == accessLevel) &&
            const DeepCollectionEquality()
                .equals(other.resourceRestrictions, resourceRestrictions) &&
            (identical(other.insertedAt, insertedAt) ||
                other.insertedAt == insertedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.roleDescription, roleDescription) ||
                other.roleDescription == roleDescription) &&
            (identical(other.roleColor, roleColor) ||
                other.roleColor == roleColor) &&
            const DeepCollectionEquality()
                .equals(other.ipRestrictions, ipRestrictions) &&
            const DeepCollectionEquality()
                .equals(other.timeRestrictions, timeRestrictions) &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        tenantId,
        roleId,
        roleName,
        status,
        const DeepCollectionEquality().hash(permissions),
        accessLevel,
        const DeepCollectionEquality().hash(resourceRestrictions),
        insertedAt,
        updatedAt,
        roleDescription,
        roleColor,
        const DeepCollectionEquality().hash(ipRestrictions),
        const DeepCollectionEquality().hash(timeRestrictions),
        expiresAt,
        invitedBy,
        invitedAt,
        joinedAt,
        lastLoginAt,
        deletedAt
      ]);

  @override
  String toString() {
    return 'TenantMembership(id: $id, userId: $userId, tenantId: $tenantId, roleId: $roleId, roleName: $roleName, status: $status, permissions: $permissions, accessLevel: $accessLevel, resourceRestrictions: $resourceRestrictions, insertedAt: $insertedAt, updatedAt: $updatedAt, roleDescription: $roleDescription, roleColor: $roleColor, ipRestrictions: $ipRestrictions, timeRestrictions: $timeRestrictions, expiresAt: $expiresAt, invitedBy: $invitedBy, invitedAt: $invitedAt, joinedAt: $joinedAt, lastLoginAt: $lastLoginAt, deletedAt: $deletedAt)';
  }
}

/// @nodoc
abstract mixin class $TenantMembershipCopyWith<$Res> {
  factory $TenantMembershipCopyWith(
          TenantMembership value, $Res Function(TenantMembership) _then) =
      _$TenantMembershipCopyWithImpl;
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
class _$TenantMembershipCopyWithImpl<$Res>
    implements $TenantMembershipCopyWith<$Res> {
  _$TenantMembershipCopyWithImpl(this._self, this._then);

  final TenantMembership _self;
  final $Res Function(TenantMembership) _then;

  /// Create a copy of TenantMembership
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: null == tenantId
          ? _self.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String,
      roleId: null == roleId
          ? _self.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String,
      roleName: null == roleName
          ? _self.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      permissions: null == permissions
          ? _self.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      accessLevel: null == accessLevel
          ? _self.accessLevel
          : accessLevel // ignore: cast_nullable_to_non_nullable
              as String,
      resourceRestrictions: null == resourceRestrictions
          ? _self.resourceRestrictions
          : resourceRestrictions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      insertedAt: null == insertedAt
          ? _self.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      roleDescription: freezed == roleDescription
          ? _self.roleDescription
          : roleDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      roleColor: freezed == roleColor
          ? _self.roleColor
          : roleColor // ignore: cast_nullable_to_non_nullable
              as String?,
      ipRestrictions: freezed == ipRestrictions
          ? _self.ipRestrictions
          : ipRestrictions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      timeRestrictions: freezed == timeRestrictions
          ? _self.timeRestrictions
          : timeRestrictions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
      invitedBy: freezed == invitedBy
          ? _self.invitedBy
          : invitedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      invitedAt: freezed == invitedAt
          ? _self.invitedAt
          : invitedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      joinedAt: freezed == joinedAt
          ? _self.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      lastLoginAt: freezed == lastLoginAt
          ? _self.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _self.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [TenantMembership].
extension TenantMembershipPatterns on TenantMembership {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TenantMembership value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TenantMembership() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_TenantMembership value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantMembership():
        return $default(_that);
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TenantMembership value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantMembership() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
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
            String? deletedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TenantMembership() when $default != null:
        return $default(
            _that.id,
            _that.userId,
            _that.tenantId,
            _that.roleId,
            _that.roleName,
            _that.status,
            _that.permissions,
            _that.accessLevel,
            _that.resourceRestrictions,
            _that.insertedAt,
            _that.updatedAt,
            _that.roleDescription,
            _that.roleColor,
            _that.ipRestrictions,
            _that.timeRestrictions,
            _that.expiresAt,
            _that.invitedBy,
            _that.invitedAt,
            _that.joinedAt,
            _that.lastLoginAt,
            _that.deletedAt);
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
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
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
            String? deletedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantMembership():
        return $default(
            _that.id,
            _that.userId,
            _that.tenantId,
            _that.roleId,
            _that.roleName,
            _that.status,
            _that.permissions,
            _that.accessLevel,
            _that.resourceRestrictions,
            _that.insertedAt,
            _that.updatedAt,
            _that.roleDescription,
            _that.roleColor,
            _that.ipRestrictions,
            _that.timeRestrictions,
            _that.expiresAt,
            _that.invitedBy,
            _that.invitedAt,
            _that.joinedAt,
            _that.lastLoginAt,
            _that.deletedAt);
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
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
            String? deletedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantMembership() when $default != null:
        return $default(
            _that.id,
            _that.userId,
            _that.tenantId,
            _that.roleId,
            _that.roleName,
            _that.status,
            _that.permissions,
            _that.accessLevel,
            _that.resourceRestrictions,
            _that.insertedAt,
            _that.updatedAt,
            _that.roleDescription,
            _that.roleColor,
            _that.ipRestrictions,
            _that.timeRestrictions,
            _that.expiresAt,
            _that.invitedBy,
            _that.invitedAt,
            _that.joinedAt,
            _that.lastLoginAt,
            _that.deletedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TenantMembership implements TenantMembership {
  const _TenantMembership(
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
  factory _TenantMembership.fromJson(Map<String, dynamic> json) =>
      _$TenantMembershipFromJson(json);

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

  /// Create a copy of TenantMembership
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TenantMembershipCopyWith<_TenantMembership> get copyWith =>
      __$TenantMembershipCopyWithImpl<_TenantMembership>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TenantMembershipToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TenantMembership &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'TenantMembership(id: $id, userId: $userId, tenantId: $tenantId, roleId: $roleId, roleName: $roleName, status: $status, permissions: $permissions, accessLevel: $accessLevel, resourceRestrictions: $resourceRestrictions, insertedAt: $insertedAt, updatedAt: $updatedAt, roleDescription: $roleDescription, roleColor: $roleColor, ipRestrictions: $ipRestrictions, timeRestrictions: $timeRestrictions, expiresAt: $expiresAt, invitedBy: $invitedBy, invitedAt: $invitedAt, joinedAt: $joinedAt, lastLoginAt: $lastLoginAt, deletedAt: $deletedAt)';
  }
}

/// @nodoc
abstract mixin class _$TenantMembershipCopyWith<$Res>
    implements $TenantMembershipCopyWith<$Res> {
  factory _$TenantMembershipCopyWith(
          _TenantMembership value, $Res Function(_TenantMembership) _then) =
      __$TenantMembershipCopyWithImpl;
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
class __$TenantMembershipCopyWithImpl<$Res>
    implements _$TenantMembershipCopyWith<$Res> {
  __$TenantMembershipCopyWithImpl(this._self, this._then);

  final _TenantMembership _self;
  final $Res Function(_TenantMembership) _then;

  /// Create a copy of TenantMembership
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_TenantMembership(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: null == tenantId
          ? _self.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String,
      roleId: null == roleId
          ? _self.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String,
      roleName: null == roleName
          ? _self.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      permissions: null == permissions
          ? _self._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      accessLevel: null == accessLevel
          ? _self.accessLevel
          : accessLevel // ignore: cast_nullable_to_non_nullable
              as String,
      resourceRestrictions: null == resourceRestrictions
          ? _self._resourceRestrictions
          : resourceRestrictions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      insertedAt: null == insertedAt
          ? _self.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      roleDescription: freezed == roleDescription
          ? _self.roleDescription
          : roleDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      roleColor: freezed == roleColor
          ? _self.roleColor
          : roleColor // ignore: cast_nullable_to_non_nullable
              as String?,
      ipRestrictions: freezed == ipRestrictions
          ? _self._ipRestrictions
          : ipRestrictions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      timeRestrictions: freezed == timeRestrictions
          ? _self._timeRestrictions
          : timeRestrictions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
      invitedBy: freezed == invitedBy
          ? _self.invitedBy
          : invitedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      invitedAt: freezed == invitedAt
          ? _self.invitedAt
          : invitedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      joinedAt: freezed == joinedAt
          ? _self.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      lastLoginAt: freezed == lastLoginAt
          ? _self.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _self.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$UserData {
  String get id;
  bool get twoFactorEnabled;
  String get status;
  String get insertedAt;
  String get updatedAt;
  String? get displayName;
  String? get twoFactorSecret;
  String? get deletedAt;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<UserData> get copyWith =>
      _$UserDataCopyWithImpl<UserData>(this as UserData, _$identity);

  /// Serializes this UserData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserData &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, twoFactorEnabled, status,
      insertedAt, updatedAt, displayName, twoFactorSecret, deletedAt);

  @override
  String toString() {
    return 'UserData(id: $id, twoFactorEnabled: $twoFactorEnabled, status: $status, insertedAt: $insertedAt, updatedAt: $updatedAt, displayName: $displayName, twoFactorSecret: $twoFactorSecret, deletedAt: $deletedAt)';
  }
}

/// @nodoc
abstract mixin class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) _then) =
      _$UserDataCopyWithImpl;
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
class _$UserDataCopyWithImpl<$Res> implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._self, this._then);

  final UserData _self;
  final $Res Function(UserData) _then;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      twoFactorEnabled: null == twoFactorEnabled
          ? _self.twoFactorEnabled
          : twoFactorEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      insertedAt: null == insertedAt
          ? _self.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: freezed == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      twoFactorSecret: freezed == twoFactorSecret
          ? _self.twoFactorSecret
          : twoFactorSecret // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _self.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UserData].
extension UserDataPatterns on UserData {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserData() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_UserData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserData():
        return $default(_that);
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserData() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            bool twoFactorEnabled,
            String status,
            String insertedAt,
            String updatedAt,
            String? displayName,
            String? twoFactorSecret,
            String? deletedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserData() when $default != null:
        return $default(
            _that.id,
            _that.twoFactorEnabled,
            _that.status,
            _that.insertedAt,
            _that.updatedAt,
            _that.displayName,
            _that.twoFactorSecret,
            _that.deletedAt);
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
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            bool twoFactorEnabled,
            String status,
            String insertedAt,
            String updatedAt,
            String? displayName,
            String? twoFactorSecret,
            String? deletedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserData():
        return $default(
            _that.id,
            _that.twoFactorEnabled,
            _that.status,
            _that.insertedAt,
            _that.updatedAt,
            _that.displayName,
            _that.twoFactorSecret,
            _that.deletedAt);
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            bool twoFactorEnabled,
            String status,
            String insertedAt,
            String updatedAt,
            String? displayName,
            String? twoFactorSecret,
            String? deletedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserData() when $default != null:
        return $default(
            _that.id,
            _that.twoFactorEnabled,
            _that.status,
            _that.insertedAt,
            _that.updatedAt,
            _that.displayName,
            _that.twoFactorSecret,
            _that.deletedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UserData implements UserData {
  const _UserData(
      {required this.id,
      required this.twoFactorEnabled,
      required this.status,
      required this.insertedAt,
      required this.updatedAt,
      this.displayName,
      this.twoFactorSecret,
      this.deletedAt});
  factory _UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

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

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserDataCopyWith<_UserData> get copyWith =>
      __$UserDataCopyWithImpl<_UserData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserData &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, twoFactorEnabled, status,
      insertedAt, updatedAt, displayName, twoFactorSecret, deletedAt);

  @override
  String toString() {
    return 'UserData(id: $id, twoFactorEnabled: $twoFactorEnabled, status: $status, insertedAt: $insertedAt, updatedAt: $updatedAt, displayName: $displayName, twoFactorSecret: $twoFactorSecret, deletedAt: $deletedAt)';
  }
}

/// @nodoc
abstract mixin class _$UserDataCopyWith<$Res>
    implements $UserDataCopyWith<$Res> {
  factory _$UserDataCopyWith(_UserData value, $Res Function(_UserData) _then) =
      __$UserDataCopyWithImpl;
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
class __$UserDataCopyWithImpl<$Res> implements _$UserDataCopyWith<$Res> {
  __$UserDataCopyWithImpl(this._self, this._then);

  final _UserData _self;
  final $Res Function(_UserData) _then;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_UserData(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      twoFactorEnabled: null == twoFactorEnabled
          ? _self.twoFactorEnabled
          : twoFactorEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      insertedAt: null == insertedAt
          ? _self.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: freezed == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      twoFactorSecret: freezed == twoFactorSecret
          ? _self.twoFactorSecret
          : twoFactorSecret // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _self.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$UserProfile {
  String get id;
  String get email;
  String get firstName;
  String get lastName;
  List<String> get roles;
  bool get isActive;
  DateTime get createdAt;
  String? get avatar;
  DateTime? get updatedAt;
  Map<String, dynamic>? get metadata;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserProfileCopyWith<UserProfile> get copyWith =>
      _$UserProfileCopyWithImpl<UserProfile>(this as UserProfile, _$identity);

  /// Serializes this UserProfile to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserProfile &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            const DeepCollectionEquality().equals(other.roles, roles) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      firstName,
      lastName,
      const DeepCollectionEquality().hash(roles),
      isActive,
      createdAt,
      avatar,
      updatedAt,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'UserProfile(id: $id, email: $email, firstName: $firstName, lastName: $lastName, roles: $roles, isActive: $isActive, createdAt: $createdAt, avatar: $avatar, updatedAt: $updatedAt, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) _then) =
      _$UserProfileCopyWithImpl;
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
class _$UserProfileCopyWithImpl<$Res> implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._self, this._then);

  final UserProfile _self;
  final $Res Function(UserProfile) _then;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _self.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UserProfile].
extension UserProfilePatterns on UserProfile {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserProfile value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserProfile() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_UserProfile value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserProfile():
        return $default(_that);
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserProfile value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserProfile() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String email,
            String firstName,
            String lastName,
            List<String> roles,
            bool isActive,
            DateTime createdAt,
            String? avatar,
            DateTime? updatedAt,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserProfile() when $default != null:
        return $default(
            _that.id,
            _that.email,
            _that.firstName,
            _that.lastName,
            _that.roles,
            _that.isActive,
            _that.createdAt,
            _that.avatar,
            _that.updatedAt,
            _that.metadata);
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
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String email,
            String firstName,
            String lastName,
            List<String> roles,
            bool isActive,
            DateTime createdAt,
            String? avatar,
            DateTime? updatedAt,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserProfile():
        return $default(
            _that.id,
            _that.email,
            _that.firstName,
            _that.lastName,
            _that.roles,
            _that.isActive,
            _that.createdAt,
            _that.avatar,
            _that.updatedAt,
            _that.metadata);
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String email,
            String firstName,
            String lastName,
            List<String> roles,
            bool isActive,
            DateTime createdAt,
            String? avatar,
            DateTime? updatedAt,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserProfile() when $default != null:
        return $default(
            _that.id,
            _that.email,
            _that.firstName,
            _that.lastName,
            _that.roles,
            _that.isActive,
            _that.createdAt,
            _that.avatar,
            _that.updatedAt,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
@Deprecated('Use UserData instead')
class _UserProfile implements UserProfile {
  const _UserProfile(
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
  factory _UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);

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

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserProfileCopyWith<_UserProfile> get copyWith =>
      __$UserProfileCopyWithImpl<_UserProfile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserProfileToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserProfile &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'UserProfile(id: $id, email: $email, firstName: $firstName, lastName: $lastName, roles: $roles, isActive: $isActive, createdAt: $createdAt, avatar: $avatar, updatedAt: $updatedAt, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$UserProfileCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$UserProfileCopyWith(
          _UserProfile value, $Res Function(_UserProfile) _then) =
      __$UserProfileCopyWithImpl;
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
class __$UserProfileCopyWithImpl<$Res> implements _$UserProfileCopyWith<$Res> {
  __$UserProfileCopyWithImpl(this._self, this._then);

  final _UserProfile _self;
  final $Res Function(_UserProfile) _then;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_UserProfile(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _self._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$VerifyOTPRequest {
  String get email;
  String get code;
  String? get tenantId;

  /// Create a copy of VerifyOTPRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VerifyOTPRequestCopyWith<VerifyOTPRequest> get copyWith =>
      _$VerifyOTPRequestCopyWithImpl<VerifyOTPRequest>(
          this as VerifyOTPRequest, _$identity);

  /// Serializes this VerifyOTPRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerifyOTPRequest &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, code, tenantId);

  @override
  String toString() {
    return 'VerifyOTPRequest(email: $email, code: $code, tenantId: $tenantId)';
  }
}

/// @nodoc
abstract mixin class $VerifyOTPRequestCopyWith<$Res> {
  factory $VerifyOTPRequestCopyWith(
          VerifyOTPRequest value, $Res Function(VerifyOTPRequest) _then) =
      _$VerifyOTPRequestCopyWithImpl;
  @useResult
  $Res call({String email, String code, String? tenantId});
}

/// @nodoc
class _$VerifyOTPRequestCopyWithImpl<$Res>
    implements $VerifyOTPRequestCopyWith<$Res> {
  _$VerifyOTPRequestCopyWithImpl(this._self, this._then);

  final VerifyOTPRequest _self;
  final $Res Function(VerifyOTPRequest) _then;

  /// Create a copy of VerifyOTPRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
    Object? tenantId = freezed,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: freezed == tenantId
          ? _self.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [VerifyOTPRequest].
extension VerifyOTPRequestPatterns on VerifyOTPRequest {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VerifyOTPRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerifyOTPRequest() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_VerifyOTPRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyOTPRequest():
        return $default(_that);
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VerifyOTPRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyOTPRequest() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String code, String? tenantId)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerifyOTPRequest() when $default != null:
        return $default(_that.email, _that.code, _that.tenantId);
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
  TResult when<TResult extends Object?>(
    TResult Function(String email, String code, String? tenantId) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyOTPRequest():
        return $default(_that.email, _that.code, _that.tenantId);
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String code, String? tenantId)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyOTPRequest() when $default != null:
        return $default(_that.email, _that.code, _that.tenantId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VerifyOTPRequest implements VerifyOTPRequest {
  const _VerifyOTPRequest(
      {required this.email, required this.code, this.tenantId});
  factory _VerifyOTPRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyOTPRequestFromJson(json);

  @override
  final String email;
  @override
  final String code;
  @override
  final String? tenantId;

  /// Create a copy of VerifyOTPRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VerifyOTPRequestCopyWith<_VerifyOTPRequest> get copyWith =>
      __$VerifyOTPRequestCopyWithImpl<_VerifyOTPRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VerifyOTPRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerifyOTPRequest &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, code, tenantId);

  @override
  String toString() {
    return 'VerifyOTPRequest(email: $email, code: $code, tenantId: $tenantId)';
  }
}

/// @nodoc
abstract mixin class _$VerifyOTPRequestCopyWith<$Res>
    implements $VerifyOTPRequestCopyWith<$Res> {
  factory _$VerifyOTPRequestCopyWith(
          _VerifyOTPRequest value, $Res Function(_VerifyOTPRequest) _then) =
      __$VerifyOTPRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String email, String code, String? tenantId});
}

/// @nodoc
class __$VerifyOTPRequestCopyWithImpl<$Res>
    implements _$VerifyOTPRequestCopyWith<$Res> {
  __$VerifyOTPRequestCopyWithImpl(this._self, this._then);

  final _VerifyOTPRequest _self;
  final $Res Function(_VerifyOTPRequest) _then;

  /// Create a copy of VerifyOTPRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? code = null,
    Object? tenantId = freezed,
  }) {
    return _then(_VerifyOTPRequest(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: freezed == tenantId
          ? _self.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
