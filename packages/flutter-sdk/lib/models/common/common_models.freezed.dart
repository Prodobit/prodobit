// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Address {
  String? get street;
  String? get city;
  String? get state;
  String? get country;
  String? get zipCode;
  double? get latitude;
  double? get longitude;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddressCopyWith<Address> get copyWith =>
      _$AddressCopyWithImpl<Address>(this as Address, _$identity);

  /// Serializes this Address to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Address &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, street, city, state, country, zipCode, latitude, longitude);

  @override
  String toString() {
    return 'Address(street: $street, city: $city, state: $state, country: $country, zipCode: $zipCode, latitude: $latitude, longitude: $longitude)';
  }
}

/// @nodoc
abstract mixin class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) _then) =
      _$AddressCopyWithImpl;
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
class _$AddressCopyWithImpl<$Res> implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._self, this._then);

  final Address _self;
  final $Res Function(Address) _then;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      street: freezed == street
          ? _self.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _self.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Address].
extension AddressPatterns on Address {
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
    TResult Function(_Address value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Address() when $default != null:
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
    TResult Function(_Address value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Address():
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
    TResult? Function(_Address value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Address() when $default != null:
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
            String? street,
            String? city,
            String? state,
            String? country,
            String? zipCode,
            double? latitude,
            double? longitude)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Address() when $default != null:
        return $default(_that.street, _that.city, _that.state, _that.country,
            _that.zipCode, _that.latitude, _that.longitude);
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
            String? street,
            String? city,
            String? state,
            String? country,
            String? zipCode,
            double? latitude,
            double? longitude)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Address():
        return $default(_that.street, _that.city, _that.state, _that.country,
            _that.zipCode, _that.latitude, _that.longitude);
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
            String? street,
            String? city,
            String? state,
            String? country,
            String? zipCode,
            double? latitude,
            double? longitude)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Address() when $default != null:
        return $default(_that.street, _that.city, _that.state, _that.country,
            _that.zipCode, _that.latitude, _that.longitude);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Address implements Address {
  const _Address(
      {this.street,
      this.city,
      this.state,
      this.country,
      this.zipCode,
      this.latitude,
      this.longitude});
  factory _Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

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

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddressCopyWith<_Address> get copyWith =>
      __$AddressCopyWithImpl<_Address>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AddressToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Address &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, street, city, state, country, zipCode, latitude, longitude);

  @override
  String toString() {
    return 'Address(street: $street, city: $city, state: $state, country: $country, zipCode: $zipCode, latitude: $latitude, longitude: $longitude)';
  }
}

/// @nodoc
abstract mixin class _$AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$AddressCopyWith(_Address value, $Res Function(_Address) _then) =
      __$AddressCopyWithImpl;
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
class __$AddressCopyWithImpl<$Res> implements _$AddressCopyWith<$Res> {
  __$AddressCopyWithImpl(this._self, this._then);

  final _Address _self;
  final $Res Function(_Address) _then;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? street = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? zipCode = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_Address(
      street: freezed == street
          ? _self.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _self.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
mixin _$ApiResponse<T> {
  bool get success;
  T? get data;
  String? get message;
  String? get error;
  Map<String, dynamic>? get metadata;
  String? get errorCode;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<T, ApiResponse<T>> get copyWith =>
      _$ApiResponseCopyWithImpl<T, ApiResponse<T>>(
          this as ApiResponse<T>, _$identity);

  /// Serializes this ApiResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiResponse<T> &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other.metadata, metadata) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      success,
      const DeepCollectionEquality().hash(data),
      message,
      error,
      const DeepCollectionEquality().hash(metadata),
      errorCode);

  @override
  String toString() {
    return 'ApiResponse<$T>(success: $success, data: $data, message: $message, error: $error, metadata: $metadata, errorCode: $errorCode)';
  }
}

/// @nodoc
abstract mixin class $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseCopyWith(
          ApiResponse<T> value, $Res Function(ApiResponse<T>) _then) =
      _$ApiResponseCopyWithImpl;
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
class _$ApiResponseCopyWithImpl<T, $Res>
    implements $ApiResponseCopyWith<T, $Res> {
  _$ApiResponseCopyWithImpl(this._self, this._then);

  final ApiResponse<T> _self;
  final $Res Function(ApiResponse<T>) _then;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      errorCode: freezed == errorCode
          ? _self.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ApiResponse].
extension ApiResponsePatterns<T> on ApiResponse<T> {
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
    TResult Function(_ApiResponse<T> value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ApiResponse() when $default != null:
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
    TResult Function(_ApiResponse<T> value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiResponse():
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
    TResult? Function(_ApiResponse<T> value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiResponse() when $default != null:
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
    TResult Function(bool success, T? data, String? message, String? error,
            Map<String, dynamic>? metadata, String? errorCode)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ApiResponse() when $default != null:
        return $default(_that.success, _that.data, _that.message, _that.error,
            _that.metadata, _that.errorCode);
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
    TResult Function(bool success, T? data, String? message, String? error,
            Map<String, dynamic>? metadata, String? errorCode)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiResponse():
        return $default(_that.success, _that.data, _that.message, _that.error,
            _that.metadata, _that.errorCode);
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
    TResult? Function(bool success, T? data, String? message, String? error,
            Map<String, dynamic>? metadata, String? errorCode)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiResponse() when $default != null:
        return $default(_that.success, _that.data, _that.message, _that.error,
            _that.metadata, _that.errorCode);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _ApiResponse<T> implements ApiResponse<T> {
  const _ApiResponse(
      {required this.success,
      this.data,
      this.message,
      this.error,
      final Map<String, dynamic>? metadata,
      this.errorCode})
      : _metadata = metadata;
  factory _ApiResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$ApiResponseFromJson(json, fromJsonT);

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

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ApiResponseCopyWith<T, _ApiResponse<T>> get copyWith =>
      __$ApiResponseCopyWithImpl<T, _ApiResponse<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$ApiResponseToJson<T>(this, toJsonT);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiResponse<T> &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      success,
      const DeepCollectionEquality().hash(data),
      message,
      error,
      const DeepCollectionEquality().hash(_metadata),
      errorCode);

  @override
  String toString() {
    return 'ApiResponse<$T>(success: $success, data: $data, message: $message, error: $error, metadata: $metadata, errorCode: $errorCode)';
  }
}

/// @nodoc
abstract mixin class _$ApiResponseCopyWith<T, $Res>
    implements $ApiResponseCopyWith<T, $Res> {
  factory _$ApiResponseCopyWith(
          _ApiResponse<T> value, $Res Function(_ApiResponse<T>) _then) =
      __$ApiResponseCopyWithImpl;
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
class __$ApiResponseCopyWithImpl<T, $Res>
    implements _$ApiResponseCopyWith<T, $Res> {
  __$ApiResponseCopyWithImpl(this._self, this._then);

  final _ApiResponse<T> _self;
  final $Res Function(_ApiResponse<T>) _then;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = null,
    Object? data = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? metadata = freezed,
    Object? errorCode = freezed,
  }) {
    return _then(_ApiResponse<T>(
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      errorCode: freezed == errorCode
          ? _self.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$AuditInfo {
  DateTime get createdAt;
  String get createdBy;
  DateTime? get updatedAt;
  String? get updatedBy;
  int? get version;

  /// Create a copy of AuditInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuditInfoCopyWith<AuditInfo> get copyWith =>
      _$AuditInfoCopyWithImpl<AuditInfo>(this as AuditInfo, _$identity);

  /// Serializes this AuditInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuditInfo &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, createdAt, createdBy, updatedAt, updatedBy, version);

  @override
  String toString() {
    return 'AuditInfo(createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, updatedBy: $updatedBy, version: $version)';
  }
}

/// @nodoc
abstract mixin class $AuditInfoCopyWith<$Res> {
  factory $AuditInfoCopyWith(AuditInfo value, $Res Function(AuditInfo) _then) =
      _$AuditInfoCopyWithImpl;
  @useResult
  $Res call(
      {DateTime createdAt,
      String createdBy,
      DateTime? updatedAt,
      String? updatedBy,
      int? version});
}

/// @nodoc
class _$AuditInfoCopyWithImpl<$Res> implements $AuditInfoCopyWith<$Res> {
  _$AuditInfoCopyWithImpl(this._self, this._then);

  final AuditInfo _self;
  final $Res Function(AuditInfo) _then;

  /// Create a copy of AuditInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = freezed,
    Object? version = freezed,
  }) {
    return _then(_self.copyWith(
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedBy: freezed == updatedBy
          ? _self.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AuditInfo].
extension AuditInfoPatterns on AuditInfo {
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
    TResult Function(_AuditInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuditInfo() when $default != null:
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
    TResult Function(_AuditInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuditInfo():
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
    TResult? Function(_AuditInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuditInfo() when $default != null:
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
    TResult Function(DateTime createdAt, String createdBy, DateTime? updatedAt,
            String? updatedBy, int? version)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuditInfo() when $default != null:
        return $default(_that.createdAt, _that.createdBy, _that.updatedAt,
            _that.updatedBy, _that.version);
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
    TResult Function(DateTime createdAt, String createdBy, DateTime? updatedAt,
            String? updatedBy, int? version)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuditInfo():
        return $default(_that.createdAt, _that.createdBy, _that.updatedAt,
            _that.updatedBy, _that.version);
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
    TResult? Function(DateTime createdAt, String createdBy, DateTime? updatedAt,
            String? updatedBy, int? version)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuditInfo() when $default != null:
        return $default(_that.createdAt, _that.createdBy, _that.updatedAt,
            _that.updatedBy, _that.version);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AuditInfo implements AuditInfo {
  const _AuditInfo(
      {required this.createdAt,
      required this.createdBy,
      this.updatedAt,
      this.updatedBy,
      this.version});
  factory _AuditInfo.fromJson(Map<String, dynamic> json) =>
      _$AuditInfoFromJson(json);

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

  /// Create a copy of AuditInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuditInfoCopyWith<_AuditInfo> get copyWith =>
      __$AuditInfoCopyWithImpl<_AuditInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AuditInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuditInfo &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, createdAt, createdBy, updatedAt, updatedBy, version);

  @override
  String toString() {
    return 'AuditInfo(createdAt: $createdAt, createdBy: $createdBy, updatedAt: $updatedAt, updatedBy: $updatedBy, version: $version)';
  }
}

/// @nodoc
abstract mixin class _$AuditInfoCopyWith<$Res>
    implements $AuditInfoCopyWith<$Res> {
  factory _$AuditInfoCopyWith(
          _AuditInfo value, $Res Function(_AuditInfo) _then) =
      __$AuditInfoCopyWithImpl;
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
class __$AuditInfoCopyWithImpl<$Res> implements _$AuditInfoCopyWith<$Res> {
  __$AuditInfoCopyWithImpl(this._self, this._then);

  final _AuditInfo _self;
  final $Res Function(_AuditInfo) _then;

  /// Create a copy of AuditInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? createdAt = null,
    Object? createdBy = null,
    Object? updatedAt = freezed,
    Object? updatedBy = freezed,
    Object? version = freezed,
  }) {
    return _then(_AuditInfo(
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedBy: freezed == updatedBy
          ? _self.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$ContactInfo {
  String? get email;
  String? get phone;
  String? get mobile;
  String? get fax;
  String? get website;

  /// Create a copy of ContactInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ContactInfoCopyWith<ContactInfo> get copyWith =>
      _$ContactInfoCopyWithImpl<ContactInfo>(this as ContactInfo, _$identity);

  /// Serializes this ContactInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ContactInfo &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.fax, fax) || other.fax == fax) &&
            (identical(other.website, website) || other.website == website));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, phone, mobile, fax, website);

  @override
  String toString() {
    return 'ContactInfo(email: $email, phone: $phone, mobile: $mobile, fax: $fax, website: $website)';
  }
}

/// @nodoc
abstract mixin class $ContactInfoCopyWith<$Res> {
  factory $ContactInfoCopyWith(
          ContactInfo value, $Res Function(ContactInfo) _then) =
      _$ContactInfoCopyWithImpl;
  @useResult
  $Res call(
      {String? email,
      String? phone,
      String? mobile,
      String? fax,
      String? website});
}

/// @nodoc
class _$ContactInfoCopyWithImpl<$Res> implements $ContactInfoCopyWith<$Res> {
  _$ContactInfoCopyWithImpl(this._self, this._then);

  final ContactInfo _self;
  final $Res Function(ContactInfo) _then;

  /// Create a copy of ContactInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? phone = freezed,
    Object? mobile = freezed,
    Object? fax = freezed,
    Object? website = freezed,
  }) {
    return _then(_self.copyWith(
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _self.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      fax: freezed == fax
          ? _self.fax
          : fax // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _self.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ContactInfo].
extension ContactInfoPatterns on ContactInfo {
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
    TResult Function(_ContactInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ContactInfo() when $default != null:
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
    TResult Function(_ContactInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactInfo():
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
    TResult? Function(_ContactInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactInfo() when $default != null:
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
    TResult Function(String? email, String? phone, String? mobile, String? fax,
            String? website)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ContactInfo() when $default != null:
        return $default(
            _that.email, _that.phone, _that.mobile, _that.fax, _that.website);
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
    TResult Function(String? email, String? phone, String? mobile, String? fax,
            String? website)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactInfo():
        return $default(
            _that.email, _that.phone, _that.mobile, _that.fax, _that.website);
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
    TResult? Function(String? email, String? phone, String? mobile, String? fax,
            String? website)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactInfo() when $default != null:
        return $default(
            _that.email, _that.phone, _that.mobile, _that.fax, _that.website);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ContactInfo implements ContactInfo {
  const _ContactInfo(
      {this.email, this.phone, this.mobile, this.fax, this.website});
  factory _ContactInfo.fromJson(Map<String, dynamic> json) =>
      _$ContactInfoFromJson(json);

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

  /// Create a copy of ContactInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ContactInfoCopyWith<_ContactInfo> get copyWith =>
      __$ContactInfoCopyWithImpl<_ContactInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ContactInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContactInfo &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.fax, fax) || other.fax == fax) &&
            (identical(other.website, website) || other.website == website));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, phone, mobile, fax, website);

  @override
  String toString() {
    return 'ContactInfo(email: $email, phone: $phone, mobile: $mobile, fax: $fax, website: $website)';
  }
}

/// @nodoc
abstract mixin class _$ContactInfoCopyWith<$Res>
    implements $ContactInfoCopyWith<$Res> {
  factory _$ContactInfoCopyWith(
          _ContactInfo value, $Res Function(_ContactInfo) _then) =
      __$ContactInfoCopyWithImpl;
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
class __$ContactInfoCopyWithImpl<$Res> implements _$ContactInfoCopyWith<$Res> {
  __$ContactInfoCopyWithImpl(this._self, this._then);

  final _ContactInfo _self;
  final $Res Function(_ContactInfo) _then;

  /// Create a copy of ContactInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = freezed,
    Object? phone = freezed,
    Object? mobile = freezed,
    Object? fax = freezed,
    Object? website = freezed,
  }) {
    return _then(_ContactInfo(
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _self.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      fax: freezed == fax
          ? _self.fax
          : fax // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _self.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$FileUploadResponse {
  String get id;
  String get filename;
  String get originalName;
  String get mimeType;
  int get size;
  String get url;
  Map<String, dynamic>? get metadata;

  /// Create a copy of FileUploadResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FileUploadResponseCopyWith<FileUploadResponse> get copyWith =>
      _$FileUploadResponseCopyWithImpl<FileUploadResponse>(
          this as FileUploadResponse, _$identity);

  /// Serializes this FileUploadResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileUploadResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, filename, originalName,
      mimeType, size, url, const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'FileUploadResponse(id: $id, filename: $filename, originalName: $originalName, mimeType: $mimeType, size: $size, url: $url, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $FileUploadResponseCopyWith<$Res> {
  factory $FileUploadResponseCopyWith(
          FileUploadResponse value, $Res Function(FileUploadResponse) _then) =
      _$FileUploadResponseCopyWithImpl;
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
class _$FileUploadResponseCopyWithImpl<$Res>
    implements $FileUploadResponseCopyWith<$Res> {
  _$FileUploadResponseCopyWithImpl(this._self, this._then);

  final FileUploadResponse _self;
  final $Res Function(FileUploadResponse) _then;

  /// Create a copy of FileUploadResponse
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      filename: null == filename
          ? _self.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: null == originalName
          ? _self.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      mimeType: null == mimeType
          ? _self.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [FileUploadResponse].
extension FileUploadResponsePatterns on FileUploadResponse {
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
    TResult Function(_FileUploadResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FileUploadResponse() when $default != null:
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
    TResult Function(_FileUploadResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FileUploadResponse():
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
    TResult? Function(_FileUploadResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FileUploadResponse() when $default != null:
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
            String filename,
            String originalName,
            String mimeType,
            int size,
            String url,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FileUploadResponse() when $default != null:
        return $default(_that.id, _that.filename, _that.originalName,
            _that.mimeType, _that.size, _that.url, _that.metadata);
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
            String filename,
            String originalName,
            String mimeType,
            int size,
            String url,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FileUploadResponse():
        return $default(_that.id, _that.filename, _that.originalName,
            _that.mimeType, _that.size, _that.url, _that.metadata);
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
            String filename,
            String originalName,
            String mimeType,
            int size,
            String url,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FileUploadResponse() when $default != null:
        return $default(_that.id, _that.filename, _that.originalName,
            _that.mimeType, _that.size, _that.url, _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FileUploadResponse implements FileUploadResponse {
  const _FileUploadResponse(
      {required this.id,
      required this.filename,
      required this.originalName,
      required this.mimeType,
      required this.size,
      required this.url,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _FileUploadResponse.fromJson(Map<String, dynamic> json) =>
      _$FileUploadResponseFromJson(json);

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

  /// Create a copy of FileUploadResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FileUploadResponseCopyWith<_FileUploadResponse> get copyWith =>
      __$FileUploadResponseCopyWithImpl<_FileUploadResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FileUploadResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FileUploadResponse &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, filename, originalName,
      mimeType, size, url, const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'FileUploadResponse(id: $id, filename: $filename, originalName: $originalName, mimeType: $mimeType, size: $size, url: $url, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$FileUploadResponseCopyWith<$Res>
    implements $FileUploadResponseCopyWith<$Res> {
  factory _$FileUploadResponseCopyWith(
          _FileUploadResponse value, $Res Function(_FileUploadResponse) _then) =
      __$FileUploadResponseCopyWithImpl;
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
class __$FileUploadResponseCopyWithImpl<$Res>
    implements _$FileUploadResponseCopyWith<$Res> {
  __$FileUploadResponseCopyWithImpl(this._self, this._then);

  final _FileUploadResponse _self;
  final $Res Function(_FileUploadResponse) _then;

  /// Create a copy of FileUploadResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? filename = null,
    Object? originalName = null,
    Object? mimeType = null,
    Object? size = null,
    Object? url = null,
    Object? metadata = freezed,
  }) {
    return _then(_FileUploadResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      filename: null == filename
          ? _self.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: null == originalName
          ? _self.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      mimeType: null == mimeType
          ? _self.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$Money {
  double get amount;
  String get currency;

  /// Create a copy of Money
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<Money> get copyWith =>
      _$MoneyCopyWithImpl<Money>(this as Money, _$identity);

  /// Serializes this Money to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Money &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, currency);

  @override
  String toString() {
    return 'Money(amount: $amount, currency: $currency)';
  }
}

/// @nodoc
abstract mixin class $MoneyCopyWith<$Res> {
  factory $MoneyCopyWith(Money value, $Res Function(Money) _then) =
      _$MoneyCopyWithImpl;
  @useResult
  $Res call({double amount, String currency});
}

/// @nodoc
class _$MoneyCopyWithImpl<$Res> implements $MoneyCopyWith<$Res> {
  _$MoneyCopyWithImpl(this._self, this._then);

  final Money _self;
  final $Res Function(Money) _then;

  /// Create a copy of Money
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currency = null,
  }) {
    return _then(_self.copyWith(
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Money].
extension MoneyPatterns on Money {
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
    TResult Function(_Money value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Money() when $default != null:
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
    TResult Function(_Money value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Money():
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
    TResult? Function(_Money value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Money() when $default != null:
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
    TResult Function(double amount, String currency)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Money() when $default != null:
        return $default(_that.amount, _that.currency);
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
    TResult Function(double amount, String currency) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Money():
        return $default(_that.amount, _that.currency);
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
    TResult? Function(double amount, String currency)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Money() when $default != null:
        return $default(_that.amount, _that.currency);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Money implements Money {
  const _Money({required this.amount, this.currency = 'USD'});
  factory _Money.fromJson(Map<String, dynamic> json) => _$MoneyFromJson(json);

  @override
  final double amount;
  @override
  @JsonKey()
  final String currency;

  /// Create a copy of Money
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MoneyCopyWith<_Money> get copyWith =>
      __$MoneyCopyWithImpl<_Money>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MoneyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Money &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, currency);

  @override
  String toString() {
    return 'Money(amount: $amount, currency: $currency)';
  }
}

/// @nodoc
abstract mixin class _$MoneyCopyWith<$Res> implements $MoneyCopyWith<$Res> {
  factory _$MoneyCopyWith(_Money value, $Res Function(_Money) _then) =
      __$MoneyCopyWithImpl;
  @override
  @useResult
  $Res call({double amount, String currency});
}

/// @nodoc
class __$MoneyCopyWithImpl<$Res> implements _$MoneyCopyWith<$Res> {
  __$MoneyCopyWithImpl(this._self, this._then);

  final _Money _self;
  final $Res Function(_Money) _then;

  /// Create a copy of Money
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? amount = null,
    Object? currency = null,
  }) {
    return _then(_Money(
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$PaginatedResponse<T> {
  List<T> get data;
  PaginationMeta get pagination;

  /// Create a copy of PaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaginatedResponseCopyWith<T, PaginatedResponse<T>> get copyWith =>
      _$PaginatedResponseCopyWithImpl<T, PaginatedResponse<T>>(
          this as PaginatedResponse<T>, _$identity);

  /// Serializes this PaginatedResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaginatedResponse<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), pagination);

  @override
  String toString() {
    return 'PaginatedResponse<$T>(data: $data, pagination: $pagination)';
  }
}

/// @nodoc
abstract mixin class $PaginatedResponseCopyWith<T, $Res> {
  factory $PaginatedResponseCopyWith(PaginatedResponse<T> value,
          $Res Function(PaginatedResponse<T>) _then) =
      _$PaginatedResponseCopyWithImpl;
  @useResult
  $Res call({List<T> data, PaginationMeta pagination});

  $PaginationMetaCopyWith<$Res> get pagination;
}

/// @nodoc
class _$PaginatedResponseCopyWithImpl<T, $Res>
    implements $PaginatedResponseCopyWith<T, $Res> {
  _$PaginatedResponseCopyWithImpl(this._self, this._then);

  final PaginatedResponse<T> _self;
  final $Res Function(PaginatedResponse<T>) _then;

  /// Create a copy of PaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = null,
  }) {
    return _then(_self.copyWith(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      pagination: null == pagination
          ? _self.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationMeta,
    ));
  }

  /// Create a copy of PaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationMetaCopyWith<$Res> get pagination {
    return $PaginationMetaCopyWith<$Res>(_self.pagination, (value) {
      return _then(_self.copyWith(pagination: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PaginatedResponse].
extension PaginatedResponsePatterns<T> on PaginatedResponse<T> {
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
    TResult Function(_PaginatedResponse<T> value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaginatedResponse() when $default != null:
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
    TResult Function(_PaginatedResponse<T> value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginatedResponse():
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
    TResult? Function(_PaginatedResponse<T> value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginatedResponse() when $default != null:
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
    TResult Function(List<T> data, PaginationMeta pagination)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaginatedResponse() when $default != null:
        return $default(_that.data, _that.pagination);
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
    TResult Function(List<T> data, PaginationMeta pagination) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginatedResponse():
        return $default(_that.data, _that.pagination);
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
    TResult? Function(List<T> data, PaginationMeta pagination)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginatedResponse() when $default != null:
        return $default(_that.data, _that.pagination);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _PaginatedResponse<T> implements PaginatedResponse<T> {
  const _PaginatedResponse(
      {required final List<T> data, required this.pagination})
      : _data = data;
  factory _PaginatedResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$PaginatedResponseFromJson(json, fromJsonT);

  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final PaginationMeta pagination;

  /// Create a copy of PaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaginatedResponseCopyWith<T, _PaginatedResponse<T>> get copyWith =>
      __$PaginatedResponseCopyWithImpl<T, _PaginatedResponse<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$PaginatedResponseToJson<T>(this, toJsonT);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaginatedResponse<T> &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), pagination);

  @override
  String toString() {
    return 'PaginatedResponse<$T>(data: $data, pagination: $pagination)';
  }
}

/// @nodoc
abstract mixin class _$PaginatedResponseCopyWith<T, $Res>
    implements $PaginatedResponseCopyWith<T, $Res> {
  factory _$PaginatedResponseCopyWith(_PaginatedResponse<T> value,
          $Res Function(_PaginatedResponse<T>) _then) =
      __$PaginatedResponseCopyWithImpl;
  @override
  @useResult
  $Res call({List<T> data, PaginationMeta pagination});

  @override
  $PaginationMetaCopyWith<$Res> get pagination;
}

/// @nodoc
class __$PaginatedResponseCopyWithImpl<T, $Res>
    implements _$PaginatedResponseCopyWith<T, $Res> {
  __$PaginatedResponseCopyWithImpl(this._self, this._then);

  final _PaginatedResponse<T> _self;
  final $Res Function(_PaginatedResponse<T>) _then;

  /// Create a copy of PaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
    Object? pagination = null,
  }) {
    return _then(_PaginatedResponse<T>(
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      pagination: null == pagination
          ? _self.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationMeta,
    ));
  }

  /// Create a copy of PaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationMetaCopyWith<$Res> get pagination {
    return $PaginationMetaCopyWith<$Res>(_self.pagination, (value) {
      return _then(_self.copyWith(pagination: value));
    });
  }
}

/// @nodoc
mixin _$PaginationMeta {
  int get total;
  int get page;
  int get perPage;
  int get totalPages;
  bool get hasNext;
  bool get hasPrev;

  /// Create a copy of PaginationMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaginationMetaCopyWith<PaginationMeta> get copyWith =>
      _$PaginationMetaCopyWithImpl<PaginationMeta>(
          this as PaginationMeta, _$identity);

  /// Serializes this PaginationMeta to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaginationMeta &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.hasPrev, hasPrev) || other.hasPrev == hasPrev));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, total, page, perPage, totalPages, hasNext, hasPrev);

  @override
  String toString() {
    return 'PaginationMeta(total: $total, page: $page, perPage: $perPage, totalPages: $totalPages, hasNext: $hasNext, hasPrev: $hasPrev)';
  }
}

/// @nodoc
abstract mixin class $PaginationMetaCopyWith<$Res> {
  factory $PaginationMetaCopyWith(
          PaginationMeta value, $Res Function(PaginationMeta) _then) =
      _$PaginationMetaCopyWithImpl;
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
class _$PaginationMetaCopyWithImpl<$Res>
    implements $PaginationMetaCopyWith<$Res> {
  _$PaginationMetaCopyWithImpl(this._self, this._then);

  final PaginationMeta _self;
  final $Res Function(PaginationMeta) _then;

  /// Create a copy of PaginationMeta
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      hasNext: null == hasNext
          ? _self.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPrev: null == hasPrev
          ? _self.hasPrev
          : hasPrev // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [PaginationMeta].
extension PaginationMetaPatterns on PaginationMeta {
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
    TResult Function(_PaginationMeta value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaginationMeta() when $default != null:
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
    TResult Function(_PaginationMeta value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginationMeta():
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
    TResult? Function(_PaginationMeta value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginationMeta() when $default != null:
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
    TResult Function(int total, int page, int perPage, int totalPages,
            bool hasNext, bool hasPrev)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaginationMeta() when $default != null:
        return $default(_that.total, _that.page, _that.perPage,
            _that.totalPages, _that.hasNext, _that.hasPrev);
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
    TResult Function(int total, int page, int perPage, int totalPages,
            bool hasNext, bool hasPrev)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginationMeta():
        return $default(_that.total, _that.page, _that.perPage,
            _that.totalPages, _that.hasNext, _that.hasPrev);
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
    TResult? Function(int total, int page, int perPage, int totalPages,
            bool hasNext, bool hasPrev)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginationMeta() when $default != null:
        return $default(_that.total, _that.page, _that.perPage,
            _that.totalPages, _that.hasNext, _that.hasPrev);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PaginationMeta implements PaginationMeta {
  const _PaginationMeta(
      {required this.total,
      required this.page,
      required this.perPage,
      required this.totalPages,
      required this.hasNext,
      required this.hasPrev});
  factory _PaginationMeta.fromJson(Map<String, dynamic> json) =>
      _$PaginationMetaFromJson(json);

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

  /// Create a copy of PaginationMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaginationMetaCopyWith<_PaginationMeta> get copyWith =>
      __$PaginationMetaCopyWithImpl<_PaginationMeta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaginationMetaToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaginationMeta &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.hasPrev, hasPrev) || other.hasPrev == hasPrev));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, total, page, perPage, totalPages, hasNext, hasPrev);

  @override
  String toString() {
    return 'PaginationMeta(total: $total, page: $page, perPage: $perPage, totalPages: $totalPages, hasNext: $hasNext, hasPrev: $hasPrev)';
  }
}

/// @nodoc
abstract mixin class _$PaginationMetaCopyWith<$Res>
    implements $PaginationMetaCopyWith<$Res> {
  factory _$PaginationMetaCopyWith(
          _PaginationMeta value, $Res Function(_PaginationMeta) _then) =
      __$PaginationMetaCopyWithImpl;
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
class __$PaginationMetaCopyWithImpl<$Res>
    implements _$PaginationMetaCopyWith<$Res> {
  __$PaginationMetaCopyWithImpl(this._self, this._then);

  final _PaginationMeta _self;
  final $Res Function(_PaginationMeta) _then;

  /// Create a copy of PaginationMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? perPage = null,
    Object? totalPages = null,
    Object? hasNext = null,
    Object? hasPrev = null,
  }) {
    return _then(_PaginationMeta(
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      hasNext: null == hasNext
          ? _self.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPrev: null == hasPrev
          ? _self.hasPrev
          : hasPrev // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$QueryParams {
  int get page;
  int get limit;
  String? get search;
  String? get sortBy;
  String get sortOrder;
  Map<String, String>? get filters;

  /// Create a copy of QueryParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QueryParamsCopyWith<QueryParams> get copyWith =>
      _$QueryParamsCopyWithImpl<QueryParams>(this as QueryParams, _$identity);

  /// Serializes this QueryParams to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QueryParams &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            const DeepCollectionEquality().equals(other.filters, filters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, limit, search, sortBy,
      sortOrder, const DeepCollectionEquality().hash(filters));

  @override
  String toString() {
    return 'QueryParams(page: $page, limit: $limit, search: $search, sortBy: $sortBy, sortOrder: $sortOrder, filters: $filters)';
  }
}

/// @nodoc
abstract mixin class $QueryParamsCopyWith<$Res> {
  factory $QueryParamsCopyWith(
          QueryParams value, $Res Function(QueryParams) _then) =
      _$QueryParamsCopyWithImpl;
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
class _$QueryParamsCopyWithImpl<$Res> implements $QueryParamsCopyWith<$Res> {
  _$QueryParamsCopyWithImpl(this._self, this._then);

  final QueryParams _self;
  final $Res Function(QueryParams) _then;

  /// Create a copy of QueryParams
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      search: freezed == search
          ? _self.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      sortBy: freezed == sortBy
          ? _self.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: null == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String,
      filters: freezed == filters
          ? _self.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [QueryParams].
extension QueryParamsPatterns on QueryParams {
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
    TResult Function(_QueryParams value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _QueryParams() when $default != null:
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
    TResult Function(_QueryParams value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QueryParams():
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
    TResult? Function(_QueryParams value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QueryParams() when $default != null:
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
    TResult Function(int page, int limit, String? search, String? sortBy,
            String sortOrder, Map<String, String>? filters)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _QueryParams() when $default != null:
        return $default(_that.page, _that.limit, _that.search, _that.sortBy,
            _that.sortOrder, _that.filters);
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
    TResult Function(int page, int limit, String? search, String? sortBy,
            String sortOrder, Map<String, String>? filters)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QueryParams():
        return $default(_that.page, _that.limit, _that.search, _that.sortBy,
            _that.sortOrder, _that.filters);
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
    TResult? Function(int page, int limit, String? search, String? sortBy,
            String sortOrder, Map<String, String>? filters)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _QueryParams() when $default != null:
        return $default(_that.page, _that.limit, _that.search, _that.sortBy,
            _that.sortOrder, _that.filters);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _QueryParams extends QueryParams {
  const _QueryParams(
      {this.page = 1,
      this.limit = 20,
      this.search,
      this.sortBy,
      this.sortOrder = 'asc',
      final Map<String, String>? filters})
      : _filters = filters,
        super._();
  factory _QueryParams.fromJson(Map<String, dynamic> json) =>
      _$QueryParamsFromJson(json);

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

  /// Create a copy of QueryParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$QueryParamsCopyWith<_QueryParams> get copyWith =>
      __$QueryParamsCopyWithImpl<_QueryParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$QueryParamsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QueryParams &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            const DeepCollectionEquality().equals(other._filters, _filters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, limit, search, sortBy,
      sortOrder, const DeepCollectionEquality().hash(_filters));

  @override
  String toString() {
    return 'QueryParams(page: $page, limit: $limit, search: $search, sortBy: $sortBy, sortOrder: $sortOrder, filters: $filters)';
  }
}

/// @nodoc
abstract mixin class _$QueryParamsCopyWith<$Res>
    implements $QueryParamsCopyWith<$Res> {
  factory _$QueryParamsCopyWith(
          _QueryParams value, $Res Function(_QueryParams) _then) =
      __$QueryParamsCopyWithImpl;
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
class __$QueryParamsCopyWithImpl<$Res> implements _$QueryParamsCopyWith<$Res> {
  __$QueryParamsCopyWithImpl(this._self, this._then);

  final _QueryParams _self;
  final $Res Function(_QueryParams) _then;

  /// Create a copy of QueryParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? page = null,
    Object? limit = null,
    Object? search = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = null,
    Object? filters = freezed,
  }) {
    return _then(_QueryParams(
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      search: freezed == search
          ? _self.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      sortBy: freezed == sortBy
          ? _self.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: null == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String,
      filters: freezed == filters
          ? _self._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

// dart format on
