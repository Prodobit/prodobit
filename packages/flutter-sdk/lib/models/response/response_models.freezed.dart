// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthResponse {
  String get accessToken;
  String get refreshToken;
  String get tokenType;
  int get expiresIn;
  String? get organizationId;
  String? get organizationName;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthResponseCopyWith<AuthResponse> get copyWith =>
      _$AuthResponseCopyWithImpl<AuthResponse>(
          this as AuthResponse, _$identity);

  /// Serializes this AuthResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthResponse &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken,
      tokenType, expiresIn, organizationId, organizationName);

  @override
  String toString() {
    return 'AuthResponse(accessToken: $accessToken, refreshToken: $refreshToken, tokenType: $tokenType, expiresIn: $expiresIn, organizationId: $organizationId, organizationName: $organizationName)';
  }
}

/// @nodoc
abstract mixin class $AuthResponseCopyWith<$Res> {
  factory $AuthResponseCopyWith(
          AuthResponse value, $Res Function(AuthResponse) _then) =
      _$AuthResponseCopyWithImpl;
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
class _$AuthResponseCopyWithImpl<$Res> implements $AuthResponseCopyWith<$Res> {
  _$AuthResponseCopyWithImpl(this._self, this._then);

  final AuthResponse _self;
  final $Res Function(AuthResponse) _then;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      accessToken: null == accessToken
          ? _self.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _self.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _self.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      organizationId: freezed == organizationId
          ? _self.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationName: freezed == organizationName
          ? _self.organizationName
          : organizationName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AuthResponse].
extension AuthResponsePatterns on AuthResponse {
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
    TResult Function(_AuthResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthResponse() when $default != null:
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
    TResult Function(_AuthResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthResponse():
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
    TResult? Function(_AuthResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthResponse() when $default != null:
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
    TResult Function(String accessToken, String refreshToken, String tokenType,
            int expiresIn, String? organizationId, String? organizationName)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthResponse() when $default != null:
        return $default(_that.accessToken, _that.refreshToken, _that.tokenType,
            _that.expiresIn, _that.organizationId, _that.organizationName);
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
    TResult Function(String accessToken, String refreshToken, String tokenType,
            int expiresIn, String? organizationId, String? organizationName)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthResponse():
        return $default(_that.accessToken, _that.refreshToken, _that.tokenType,
            _that.expiresIn, _that.organizationId, _that.organizationName);
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
    TResult? Function(String accessToken, String refreshToken, String tokenType,
            int expiresIn, String? organizationId, String? organizationName)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthResponse() when $default != null:
        return $default(_that.accessToken, _that.refreshToken, _that.tokenType,
            _that.expiresIn, _that.organizationId, _that.organizationName);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
@Deprecated('Use LoginOTPResponse from auth_models.dart instead')
class _AuthResponse implements AuthResponse {
  const _AuthResponse(
      {required this.accessToken,
      required this.refreshToken,
      required this.tokenType,
      required this.expiresIn,
      this.organizationId,
      this.organizationName});
  factory _AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);

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

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthResponseCopyWith<_AuthResponse> get copyWith =>
      __$AuthResponseCopyWithImpl<_AuthResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AuthResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthResponse &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken,
      tokenType, expiresIn, organizationId, organizationName);

  @override
  String toString() {
    return 'AuthResponse(accessToken: $accessToken, refreshToken: $refreshToken, tokenType: $tokenType, expiresIn: $expiresIn, organizationId: $organizationId, organizationName: $organizationName)';
  }
}

/// @nodoc
abstract mixin class _$AuthResponseCopyWith<$Res>
    implements $AuthResponseCopyWith<$Res> {
  factory _$AuthResponseCopyWith(
          _AuthResponse value, $Res Function(_AuthResponse) _then) =
      __$AuthResponseCopyWithImpl;
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
class __$AuthResponseCopyWithImpl<$Res>
    implements _$AuthResponseCopyWith<$Res> {
  __$AuthResponseCopyWithImpl(this._self, this._then);

  final _AuthResponse _self;
  final $Res Function(_AuthResponse) _then;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? tokenType = null,
    Object? expiresIn = null,
    Object? organizationId = freezed,
    Object? organizationName = freezed,
  }) {
    return _then(_AuthResponse(
      accessToken: null == accessToken
          ? _self.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _self.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _self.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      organizationId: freezed == organizationId
          ? _self.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationName: freezed == organizationName
          ? _self.organizationName
          : organizationName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$PasswordResetResponse {
  String get message;
  bool get success;

  /// Create a copy of PasswordResetResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PasswordResetResponseCopyWith<PasswordResetResponse> get copyWith =>
      _$PasswordResetResponseCopyWithImpl<PasswordResetResponse>(
          this as PasswordResetResponse, _$identity);

  /// Serializes this PasswordResetResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PasswordResetResponse &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, success);

  @override
  String toString() {
    return 'PasswordResetResponse(message: $message, success: $success)';
  }
}

/// @nodoc
abstract mixin class $PasswordResetResponseCopyWith<$Res> {
  factory $PasswordResetResponseCopyWith(PasswordResetResponse value,
          $Res Function(PasswordResetResponse) _then) =
      _$PasswordResetResponseCopyWithImpl;
  @useResult
  $Res call({String message, bool success});
}

/// @nodoc
class _$PasswordResetResponseCopyWithImpl<$Res>
    implements $PasswordResetResponseCopyWith<$Res> {
  _$PasswordResetResponseCopyWithImpl(this._self, this._then);

  final PasswordResetResponse _self;
  final $Res Function(PasswordResetResponse) _then;

  /// Create a copy of PasswordResetResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? success = null,
  }) {
    return _then(_self.copyWith(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [PasswordResetResponse].
extension PasswordResetResponsePatterns on PasswordResetResponse {
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
    TResult Function(_PasswordResetResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PasswordResetResponse() when $default != null:
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
    TResult Function(_PasswordResetResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PasswordResetResponse():
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
    TResult? Function(_PasswordResetResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PasswordResetResponse() when $default != null:
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
    TResult Function(String message, bool success)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PasswordResetResponse() when $default != null:
        return $default(_that.message, _that.success);
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
    TResult Function(String message, bool success) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PasswordResetResponse():
        return $default(_that.message, _that.success);
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
    TResult? Function(String message, bool success)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PasswordResetResponse() when $default != null:
        return $default(_that.message, _that.success);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PasswordResetResponse implements PasswordResetResponse {
  const _PasswordResetResponse({required this.message, required this.success});
  factory _PasswordResetResponse.fromJson(Map<String, dynamic> json) =>
      _$PasswordResetResponseFromJson(json);

  @override
  final String message;
  @override
  final bool success;

  /// Create a copy of PasswordResetResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PasswordResetResponseCopyWith<_PasswordResetResponse> get copyWith =>
      __$PasswordResetResponseCopyWithImpl<_PasswordResetResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PasswordResetResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordResetResponse &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, success);

  @override
  String toString() {
    return 'PasswordResetResponse(message: $message, success: $success)';
  }
}

/// @nodoc
abstract mixin class _$PasswordResetResponseCopyWith<$Res>
    implements $PasswordResetResponseCopyWith<$Res> {
  factory _$PasswordResetResponseCopyWith(_PasswordResetResponse value,
          $Res Function(_PasswordResetResponse) _then) =
      __$PasswordResetResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String message, bool success});
}

/// @nodoc
class __$PasswordResetResponseCopyWithImpl<$Res>
    implements _$PasswordResetResponseCopyWith<$Res> {
  __$PasswordResetResponseCopyWithImpl(this._self, this._then);

  final _PasswordResetResponse _self;
  final $Res Function(_PasswordResetResponse) _then;

  /// Create a copy of PasswordResetResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? success = null,
  }) {
    return _then(_PasswordResetResponse(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$SuccessResponse {
  String get message;
  bool get success;
  Map<String, dynamic>? get data;

  /// Create a copy of SuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SuccessResponseCopyWith<SuccessResponse> get copyWith =>
      _$SuccessResponseCopyWithImpl<SuccessResponse>(
          this as SuccessResponse, _$identity);

  /// Serializes this SuccessResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SuccessResponse &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, success, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'SuccessResponse(message: $message, success: $success, data: $data)';
  }
}

/// @nodoc
abstract mixin class $SuccessResponseCopyWith<$Res> {
  factory $SuccessResponseCopyWith(
          SuccessResponse value, $Res Function(SuccessResponse) _then) =
      _$SuccessResponseCopyWithImpl;
  @useResult
  $Res call({String message, bool success, Map<String, dynamic>? data});
}

/// @nodoc
class _$SuccessResponseCopyWithImpl<$Res>
    implements $SuccessResponseCopyWith<$Res> {
  _$SuccessResponseCopyWithImpl(this._self, this._then);

  final SuccessResponse _self;
  final $Res Function(SuccessResponse) _then;

  /// Create a copy of SuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? success = null,
    Object? data = freezed,
  }) {
    return _then(_self.copyWith(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SuccessResponse].
extension SuccessResponsePatterns on SuccessResponse {
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
    TResult Function(_SuccessResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SuccessResponse() when $default != null:
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
    TResult Function(_SuccessResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SuccessResponse():
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
    TResult? Function(_SuccessResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SuccessResponse() when $default != null:
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
    TResult Function(String message, bool success, Map<String, dynamic>? data)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SuccessResponse() when $default != null:
        return $default(_that.message, _that.success, _that.data);
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
    TResult Function(String message, bool success, Map<String, dynamic>? data)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SuccessResponse():
        return $default(_that.message, _that.success, _that.data);
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
    TResult? Function(String message, bool success, Map<String, dynamic>? data)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SuccessResponse() when $default != null:
        return $default(_that.message, _that.success, _that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SuccessResponse implements SuccessResponse {
  const _SuccessResponse(
      {required this.message,
      required this.success,
      final Map<String, dynamic>? data})
      : _data = data;
  factory _SuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$SuccessResponseFromJson(json);

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

  /// Create a copy of SuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SuccessResponseCopyWith<_SuccessResponse> get copyWith =>
      __$SuccessResponseCopyWithImpl<_SuccessResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SuccessResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SuccessResponse &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, success,
      const DeepCollectionEquality().hash(_data));

  @override
  String toString() {
    return 'SuccessResponse(message: $message, success: $success, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$SuccessResponseCopyWith<$Res>
    implements $SuccessResponseCopyWith<$Res> {
  factory _$SuccessResponseCopyWith(
          _SuccessResponse value, $Res Function(_SuccessResponse) _then) =
      __$SuccessResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String message, bool success, Map<String, dynamic>? data});
}

/// @nodoc
class __$SuccessResponseCopyWithImpl<$Res>
    implements _$SuccessResponseCopyWith<$Res> {
  __$SuccessResponseCopyWithImpl(this._self, this._then);

  final _SuccessResponse _self;
  final $Res Function(_SuccessResponse) _then;

  /// Create a copy of SuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? success = null,
    Object? data = freezed,
  }) {
    return _then(_SuccessResponse(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
