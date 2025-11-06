// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asset_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Asset {
  String get id;
  String get tenantId;
  String get locationId;
  String get name;
  String get code;
  String get status; // 'active', 'inactive', 'maintenance', 'retired'
  DateTime get insertedAt;
  DateTime get updatedAt;
  String? get parentAssetId;
  String? get assetTypeId;
  String? get serialNumber;
  String? get qrCode;
  String? get imageUrl;
  DateTime? get deletedAt;

  /// Create a copy of Asset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AssetCopyWith<Asset> get copyWith =>
      _$AssetCopyWithImpl<Asset>(this as Asset, _$identity);

  /// Serializes this Asset to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Asset &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'Asset(id: $id, tenantId: $tenantId, locationId: $locationId, name: $name, code: $code, status: $status, insertedAt: $insertedAt, updatedAt: $updatedAt, parentAssetId: $parentAssetId, assetTypeId: $assetTypeId, serialNumber: $serialNumber, qrCode: $qrCode, imageUrl: $imageUrl, deletedAt: $deletedAt)';
  }
}

/// @nodoc
abstract mixin class $AssetCopyWith<$Res> {
  factory $AssetCopyWith(Asset value, $Res Function(Asset) _then) =
      _$AssetCopyWithImpl;
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
class _$AssetCopyWithImpl<$Res> implements $AssetCopyWith<$Res> {
  _$AssetCopyWithImpl(this._self, this._then);

  final Asset _self;
  final $Res Function(Asset) _then;

  /// Create a copy of Asset
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: null == tenantId
          ? _self.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      insertedAt: null == insertedAt
          ? _self.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      parentAssetId: freezed == parentAssetId
          ? _self.parentAssetId
          : parentAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
      assetTypeId: freezed == assetTypeId
          ? _self.assetTypeId
          : assetTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _self.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _self.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Asset].
extension AssetPatterns on Asset {
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
    TResult Function(_Asset value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Asset() when $default != null:
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
    TResult Function(_Asset value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Asset():
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
    TResult? Function(_Asset value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Asset() when $default != null:
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
            DateTime? deletedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Asset() when $default != null:
        return $default(
            _that.id,
            _that.tenantId,
            _that.locationId,
            _that.name,
            _that.code,
            _that.status,
            _that.insertedAt,
            _that.updatedAt,
            _that.parentAssetId,
            _that.assetTypeId,
            _that.serialNumber,
            _that.qrCode,
            _that.imageUrl,
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
            DateTime? deletedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Asset():
        return $default(
            _that.id,
            _that.tenantId,
            _that.locationId,
            _that.name,
            _that.code,
            _that.status,
            _that.insertedAt,
            _that.updatedAt,
            _that.parentAssetId,
            _that.assetTypeId,
            _that.serialNumber,
            _that.qrCode,
            _that.imageUrl,
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
            DateTime? deletedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Asset() when $default != null:
        return $default(
            _that.id,
            _that.tenantId,
            _that.locationId,
            _that.name,
            _that.code,
            _that.status,
            _that.insertedAt,
            _that.updatedAt,
            _that.parentAssetId,
            _that.assetTypeId,
            _that.serialNumber,
            _that.qrCode,
            _that.imageUrl,
            _that.deletedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Asset implements Asset {
  const _Asset(
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
  factory _Asset.fromJson(Map<String, dynamic> json) => _$AssetFromJson(json);

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

  /// Create a copy of Asset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AssetCopyWith<_Asset> get copyWith =>
      __$AssetCopyWithImpl<_Asset>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AssetToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Asset &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'Asset(id: $id, tenantId: $tenantId, locationId: $locationId, name: $name, code: $code, status: $status, insertedAt: $insertedAt, updatedAt: $updatedAt, parentAssetId: $parentAssetId, assetTypeId: $assetTypeId, serialNumber: $serialNumber, qrCode: $qrCode, imageUrl: $imageUrl, deletedAt: $deletedAt)';
  }
}

/// @nodoc
abstract mixin class _$AssetCopyWith<$Res> implements $AssetCopyWith<$Res> {
  factory _$AssetCopyWith(_Asset value, $Res Function(_Asset) _then) =
      __$AssetCopyWithImpl;
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
class __$AssetCopyWithImpl<$Res> implements _$AssetCopyWith<$Res> {
  __$AssetCopyWithImpl(this._self, this._then);

  final _Asset _self;
  final $Res Function(_Asset) _then;

  /// Create a copy of Asset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_Asset(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: null == tenantId
          ? _self.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      insertedAt: null == insertedAt
          ? _self.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      parentAssetId: freezed == parentAssetId
          ? _self.parentAssetId
          : parentAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
      assetTypeId: freezed == assetTypeId
          ? _self.assetTypeId
          : assetTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _self.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _self.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
mixin _$CreateAssetRequest {
  String get locationId;
  String get name;
  String get code;
  String? get parentAssetId;
  String? get assetTypeId;
  String? get serialNumber;
  String? get qrCode;
  String? get imageUrl;

  /// Create a copy of CreateAssetRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateAssetRequestCopyWith<CreateAssetRequest> get copyWith =>
      _$CreateAssetRequestCopyWithImpl<CreateAssetRequest>(
          this as CreateAssetRequest, _$identity);

  /// Serializes this CreateAssetRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateAssetRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, locationId, name, code,
      parentAssetId, assetTypeId, serialNumber, qrCode, imageUrl);

  @override
  String toString() {
    return 'CreateAssetRequest(locationId: $locationId, name: $name, code: $code, parentAssetId: $parentAssetId, assetTypeId: $assetTypeId, serialNumber: $serialNumber, qrCode: $qrCode, imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class $CreateAssetRequestCopyWith<$Res> {
  factory $CreateAssetRequestCopyWith(
          CreateAssetRequest value, $Res Function(CreateAssetRequest) _then) =
      _$CreateAssetRequestCopyWithImpl;
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
class _$CreateAssetRequestCopyWithImpl<$Res>
    implements $CreateAssetRequestCopyWith<$Res> {
  _$CreateAssetRequestCopyWithImpl(this._self, this._then);

  final CreateAssetRequest _self;
  final $Res Function(CreateAssetRequest) _then;

  /// Create a copy of CreateAssetRequest
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      locationId: null == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      parentAssetId: freezed == parentAssetId
          ? _self.parentAssetId
          : parentAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
      assetTypeId: freezed == assetTypeId
          ? _self.assetTypeId
          : assetTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _self.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateAssetRequest].
extension CreateAssetRequestPatterns on CreateAssetRequest {
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
    TResult Function(_CreateAssetRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateAssetRequest() when $default != null:
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
    TResult Function(_CreateAssetRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateAssetRequest():
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
    TResult? Function(_CreateAssetRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateAssetRequest() when $default != null:
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
            String locationId,
            String name,
            String code,
            String? parentAssetId,
            String? assetTypeId,
            String? serialNumber,
            String? qrCode,
            String? imageUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateAssetRequest() when $default != null:
        return $default(
            _that.locationId,
            _that.name,
            _that.code,
            _that.parentAssetId,
            _that.assetTypeId,
            _that.serialNumber,
            _that.qrCode,
            _that.imageUrl);
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
            String locationId,
            String name,
            String code,
            String? parentAssetId,
            String? assetTypeId,
            String? serialNumber,
            String? qrCode,
            String? imageUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateAssetRequest():
        return $default(
            _that.locationId,
            _that.name,
            _that.code,
            _that.parentAssetId,
            _that.assetTypeId,
            _that.serialNumber,
            _that.qrCode,
            _that.imageUrl);
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
            String locationId,
            String name,
            String code,
            String? parentAssetId,
            String? assetTypeId,
            String? serialNumber,
            String? qrCode,
            String? imageUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateAssetRequest() when $default != null:
        return $default(
            _that.locationId,
            _that.name,
            _that.code,
            _that.parentAssetId,
            _that.assetTypeId,
            _that.serialNumber,
            _that.qrCode,
            _that.imageUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateAssetRequest implements CreateAssetRequest {
  const _CreateAssetRequest(
      {required this.locationId,
      required this.name,
      required this.code,
      this.parentAssetId,
      this.assetTypeId,
      this.serialNumber,
      this.qrCode,
      this.imageUrl});
  factory _CreateAssetRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateAssetRequestFromJson(json);

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

  /// Create a copy of CreateAssetRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateAssetRequestCopyWith<_CreateAssetRequest> get copyWith =>
      __$CreateAssetRequestCopyWithImpl<_CreateAssetRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateAssetRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateAssetRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, locationId, name, code,
      parentAssetId, assetTypeId, serialNumber, qrCode, imageUrl);

  @override
  String toString() {
    return 'CreateAssetRequest(locationId: $locationId, name: $name, code: $code, parentAssetId: $parentAssetId, assetTypeId: $assetTypeId, serialNumber: $serialNumber, qrCode: $qrCode, imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class _$CreateAssetRequestCopyWith<$Res>
    implements $CreateAssetRequestCopyWith<$Res> {
  factory _$CreateAssetRequestCopyWith(
          _CreateAssetRequest value, $Res Function(_CreateAssetRequest) _then) =
      __$CreateAssetRequestCopyWithImpl;
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
class __$CreateAssetRequestCopyWithImpl<$Res>
    implements _$CreateAssetRequestCopyWith<$Res> {
  __$CreateAssetRequestCopyWithImpl(this._self, this._then);

  final _CreateAssetRequest _self;
  final $Res Function(_CreateAssetRequest) _then;

  /// Create a copy of CreateAssetRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_CreateAssetRequest(
      locationId: null == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      parentAssetId: freezed == parentAssetId
          ? _self.parentAssetId
          : parentAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
      assetTypeId: freezed == assetTypeId
          ? _self.assetTypeId
          : assetTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _self.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$UpdateAssetRequest {
  String? get locationId;
  String? get name;
  String? get code;
  String? get status;
  String? get parentAssetId;
  String? get assetTypeId;
  String? get serialNumber;
  String? get qrCode;
  String? get imageUrl;

  /// Create a copy of UpdateAssetRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateAssetRequestCopyWith<UpdateAssetRequest> get copyWith =>
      _$UpdateAssetRequestCopyWithImpl<UpdateAssetRequest>(
          this as UpdateAssetRequest, _$identity);

  /// Serializes this UpdateAssetRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateAssetRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, locationId, name, code, status,
      parentAssetId, assetTypeId, serialNumber, qrCode, imageUrl);

  @override
  String toString() {
    return 'UpdateAssetRequest(locationId: $locationId, name: $name, code: $code, status: $status, parentAssetId: $parentAssetId, assetTypeId: $assetTypeId, serialNumber: $serialNumber, qrCode: $qrCode, imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class $UpdateAssetRequestCopyWith<$Res> {
  factory $UpdateAssetRequestCopyWith(
          UpdateAssetRequest value, $Res Function(UpdateAssetRequest) _then) =
      _$UpdateAssetRequestCopyWithImpl;
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
class _$UpdateAssetRequestCopyWithImpl<$Res>
    implements $UpdateAssetRequestCopyWith<$Res> {
  _$UpdateAssetRequestCopyWithImpl(this._self, this._then);

  final UpdateAssetRequest _self;
  final $Res Function(UpdateAssetRequest) _then;

  /// Create a copy of UpdateAssetRequest
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      locationId: freezed == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      parentAssetId: freezed == parentAssetId
          ? _self.parentAssetId
          : parentAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
      assetTypeId: freezed == assetTypeId
          ? _self.assetTypeId
          : assetTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _self.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateAssetRequest].
extension UpdateAssetRequestPatterns on UpdateAssetRequest {
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
    TResult Function(_UpdateAssetRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateAssetRequest() when $default != null:
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
    TResult Function(_UpdateAssetRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateAssetRequest():
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
    TResult? Function(_UpdateAssetRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateAssetRequest() when $default != null:
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
            String? locationId,
            String? name,
            String? code,
            String? status,
            String? parentAssetId,
            String? assetTypeId,
            String? serialNumber,
            String? qrCode,
            String? imageUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateAssetRequest() when $default != null:
        return $default(
            _that.locationId,
            _that.name,
            _that.code,
            _that.status,
            _that.parentAssetId,
            _that.assetTypeId,
            _that.serialNumber,
            _that.qrCode,
            _that.imageUrl);
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
            String? locationId,
            String? name,
            String? code,
            String? status,
            String? parentAssetId,
            String? assetTypeId,
            String? serialNumber,
            String? qrCode,
            String? imageUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateAssetRequest():
        return $default(
            _that.locationId,
            _that.name,
            _that.code,
            _that.status,
            _that.parentAssetId,
            _that.assetTypeId,
            _that.serialNumber,
            _that.qrCode,
            _that.imageUrl);
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
            String? locationId,
            String? name,
            String? code,
            String? status,
            String? parentAssetId,
            String? assetTypeId,
            String? serialNumber,
            String? qrCode,
            String? imageUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateAssetRequest() when $default != null:
        return $default(
            _that.locationId,
            _that.name,
            _that.code,
            _that.status,
            _that.parentAssetId,
            _that.assetTypeId,
            _that.serialNumber,
            _that.qrCode,
            _that.imageUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateAssetRequest implements UpdateAssetRequest {
  const _UpdateAssetRequest(
      {this.locationId,
      this.name,
      this.code,
      this.status,
      this.parentAssetId,
      this.assetTypeId,
      this.serialNumber,
      this.qrCode,
      this.imageUrl});
  factory _UpdateAssetRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateAssetRequestFromJson(json);

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

  /// Create a copy of UpdateAssetRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateAssetRequestCopyWith<_UpdateAssetRequest> get copyWith =>
      __$UpdateAssetRequestCopyWithImpl<_UpdateAssetRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateAssetRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateAssetRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, locationId, name, code, status,
      parentAssetId, assetTypeId, serialNumber, qrCode, imageUrl);

  @override
  String toString() {
    return 'UpdateAssetRequest(locationId: $locationId, name: $name, code: $code, status: $status, parentAssetId: $parentAssetId, assetTypeId: $assetTypeId, serialNumber: $serialNumber, qrCode: $qrCode, imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class _$UpdateAssetRequestCopyWith<$Res>
    implements $UpdateAssetRequestCopyWith<$Res> {
  factory _$UpdateAssetRequestCopyWith(
          _UpdateAssetRequest value, $Res Function(_UpdateAssetRequest) _then) =
      __$UpdateAssetRequestCopyWithImpl;
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
class __$UpdateAssetRequestCopyWithImpl<$Res>
    implements _$UpdateAssetRequestCopyWith<$Res> {
  __$UpdateAssetRequestCopyWithImpl(this._self, this._then);

  final _UpdateAssetRequest _self;
  final $Res Function(_UpdateAssetRequest) _then;

  /// Create a copy of UpdateAssetRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_UpdateAssetRequest(
      locationId: freezed == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      parentAssetId: freezed == parentAssetId
          ? _self.parentAssetId
          : parentAssetId // ignore: cast_nullable_to_non_nullable
              as String?,
      assetTypeId: freezed == assetTypeId
          ? _self.assetTypeId
          : assetTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _self.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
