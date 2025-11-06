// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manufacturing_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Bom {
  String get id;
  String get itemId;
  String get name;
  String get version;
  String get status;
  DateTime get createdAt;
  DateTime get updatedAt; // 'draft', 'active', 'inactive', 'obsolete'
  String? get description;
  DateTime? get effectiveDate;
  DateTime? get expiryDate;
  String? get createdBy;
  double? get totalCost;
  Map<String, dynamic>? get metadata;

  /// Create a copy of Bom
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BomCopyWith<Bom> get copyWith =>
      _$BomCopyWithImpl<Bom>(this as Bom, _$identity);

  /// Serializes this Bom to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Bom &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.effectiveDate, effectiveDate) ||
                other.effectiveDate == effectiveDate) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      itemId,
      name,
      version,
      status,
      createdAt,
      updatedAt,
      description,
      effectiveDate,
      expiryDate,
      createdBy,
      totalCost,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'Bom(id: $id, itemId: $itemId, name: $name, version: $version, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, description: $description, effectiveDate: $effectiveDate, expiryDate: $expiryDate, createdBy: $createdBy, totalCost: $totalCost, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $BomCopyWith<$Res> {
  factory $BomCopyWith(Bom value, $Res Function(Bom) _then) = _$BomCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String itemId,
      String name,
      String version,
      String status,
      DateTime createdAt,
      DateTime updatedAt,
      String? description,
      DateTime? effectiveDate,
      DateTime? expiryDate,
      String? createdBy,
      double? totalCost,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$BomCopyWithImpl<$Res> implements $BomCopyWith<$Res> {
  _$BomCopyWithImpl(this._self, this._then);

  final Bom _self;
  final $Res Function(Bom) _then;

  /// Create a copy of Bom
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? itemId = null,
    Object? name = null,
    Object? version = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? description = freezed,
    Object? effectiveDate = freezed,
    Object? expiryDate = freezed,
    Object? createdBy = freezed,
    Object? totalCost = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      effectiveDate: freezed == effectiveDate
          ? _self.effectiveDate
          : effectiveDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiryDate: freezed == expiryDate
          ? _self.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCost: freezed == totalCost
          ? _self.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Bom].
extension BomPatterns on Bom {
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
    TResult Function(_Bom value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Bom() when $default != null:
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
    TResult Function(_Bom value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Bom():
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
    TResult? Function(_Bom value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Bom() when $default != null:
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
            String itemId,
            String name,
            String version,
            String status,
            DateTime createdAt,
            DateTime updatedAt,
            String? description,
            DateTime? effectiveDate,
            DateTime? expiryDate,
            String? createdBy,
            double? totalCost,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Bom() when $default != null:
        return $default(
            _that.id,
            _that.itemId,
            _that.name,
            _that.version,
            _that.status,
            _that.createdAt,
            _that.updatedAt,
            _that.description,
            _that.effectiveDate,
            _that.expiryDate,
            _that.createdBy,
            _that.totalCost,
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
            String itemId,
            String name,
            String version,
            String status,
            DateTime createdAt,
            DateTime updatedAt,
            String? description,
            DateTime? effectiveDate,
            DateTime? expiryDate,
            String? createdBy,
            double? totalCost,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Bom():
        return $default(
            _that.id,
            _that.itemId,
            _that.name,
            _that.version,
            _that.status,
            _that.createdAt,
            _that.updatedAt,
            _that.description,
            _that.effectiveDate,
            _that.expiryDate,
            _that.createdBy,
            _that.totalCost,
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
            String itemId,
            String name,
            String version,
            String status,
            DateTime createdAt,
            DateTime updatedAt,
            String? description,
            DateTime? effectiveDate,
            DateTime? expiryDate,
            String? createdBy,
            double? totalCost,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Bom() when $default != null:
        return $default(
            _that.id,
            _that.itemId,
            _that.name,
            _that.version,
            _that.status,
            _that.createdAt,
            _that.updatedAt,
            _that.description,
            _that.effectiveDate,
            _that.expiryDate,
            _that.createdBy,
            _that.totalCost,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Bom implements Bom {
  const _Bom(
      {required this.id,
      required this.itemId,
      required this.name,
      required this.version,
      required this.status,
      required this.createdAt,
      required this.updatedAt,
      this.description,
      this.effectiveDate,
      this.expiryDate,
      this.createdBy,
      this.totalCost,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _Bom.fromJson(Map<String, dynamic> json) => _$BomFromJson(json);

  @override
  final String id;
  @override
  final String itemId;
  @override
  final String name;
  @override
  final String version;
  @override
  final String status;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
// 'draft', 'active', 'inactive', 'obsolete'
  @override
  final String? description;
  @override
  final DateTime? effectiveDate;
  @override
  final DateTime? expiryDate;
  @override
  final String? createdBy;
  @override
  final double? totalCost;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of Bom
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BomCopyWith<_Bom> get copyWith =>
      __$BomCopyWithImpl<_Bom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BomToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Bom &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.effectiveDate, effectiveDate) ||
                other.effectiveDate == effectiveDate) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      itemId,
      name,
      version,
      status,
      createdAt,
      updatedAt,
      description,
      effectiveDate,
      expiryDate,
      createdBy,
      totalCost,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'Bom(id: $id, itemId: $itemId, name: $name, version: $version, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, description: $description, effectiveDate: $effectiveDate, expiryDate: $expiryDate, createdBy: $createdBy, totalCost: $totalCost, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$BomCopyWith<$Res> implements $BomCopyWith<$Res> {
  factory _$BomCopyWith(_Bom value, $Res Function(_Bom) _then) =
      __$BomCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String itemId,
      String name,
      String version,
      String status,
      DateTime createdAt,
      DateTime updatedAt,
      String? description,
      DateTime? effectiveDate,
      DateTime? expiryDate,
      String? createdBy,
      double? totalCost,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$BomCopyWithImpl<$Res> implements _$BomCopyWith<$Res> {
  __$BomCopyWithImpl(this._self, this._then);

  final _Bom _self;
  final $Res Function(_Bom) _then;

  /// Create a copy of Bom
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? itemId = null,
    Object? name = null,
    Object? version = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? description = freezed,
    Object? effectiveDate = freezed,
    Object? expiryDate = freezed,
    Object? createdBy = freezed,
    Object? totalCost = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_Bom(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      effectiveDate: freezed == effectiveDate
          ? _self.effectiveDate
          : effectiveDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiryDate: freezed == expiryDate
          ? _self.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCost: freezed == totalCost
          ? _self.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$CreateBomRequest {
  String get itemId;
  String get name;
  String get version;
  String? get description;
  DateTime? get effectiveDate;
  DateTime? get expiryDate;
  Map<String, dynamic>? get metadata;

  /// Create a copy of CreateBomRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateBomRequestCopyWith<CreateBomRequest> get copyWith =>
      _$CreateBomRequestCopyWithImpl<CreateBomRequest>(
          this as CreateBomRequest, _$identity);

  /// Serializes this CreateBomRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateBomRequest &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.effectiveDate, effectiveDate) ||
                other.effectiveDate == effectiveDate) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemId,
      name,
      version,
      description,
      effectiveDate,
      expiryDate,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'CreateBomRequest(itemId: $itemId, name: $name, version: $version, description: $description, effectiveDate: $effectiveDate, expiryDate: $expiryDate, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $CreateBomRequestCopyWith<$Res> {
  factory $CreateBomRequestCopyWith(
          CreateBomRequest value, $Res Function(CreateBomRequest) _then) =
      _$CreateBomRequestCopyWithImpl;
  @useResult
  $Res call(
      {String itemId,
      String name,
      String version,
      String? description,
      DateTime? effectiveDate,
      DateTime? expiryDate,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$CreateBomRequestCopyWithImpl<$Res>
    implements $CreateBomRequestCopyWith<$Res> {
  _$CreateBomRequestCopyWithImpl(this._self, this._then);

  final CreateBomRequest _self;
  final $Res Function(CreateBomRequest) _then;

  /// Create a copy of CreateBomRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? name = null,
    Object? version = null,
    Object? description = freezed,
    Object? effectiveDate = freezed,
    Object? expiryDate = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      effectiveDate: freezed == effectiveDate
          ? _self.effectiveDate
          : effectiveDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiryDate: freezed == expiryDate
          ? _self.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateBomRequest].
extension CreateBomRequestPatterns on CreateBomRequest {
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
    TResult Function(_CreateBomRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateBomRequest() when $default != null:
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
    TResult Function(_CreateBomRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateBomRequest():
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
    TResult? Function(_CreateBomRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateBomRequest() when $default != null:
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
            String itemId,
            String name,
            String version,
            String? description,
            DateTime? effectiveDate,
            DateTime? expiryDate,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateBomRequest() when $default != null:
        return $default(
            _that.itemId,
            _that.name,
            _that.version,
            _that.description,
            _that.effectiveDate,
            _that.expiryDate,
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
            String itemId,
            String name,
            String version,
            String? description,
            DateTime? effectiveDate,
            DateTime? expiryDate,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateBomRequest():
        return $default(
            _that.itemId,
            _that.name,
            _that.version,
            _that.description,
            _that.effectiveDate,
            _that.expiryDate,
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
            String itemId,
            String name,
            String version,
            String? description,
            DateTime? effectiveDate,
            DateTime? expiryDate,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateBomRequest() when $default != null:
        return $default(
            _that.itemId,
            _that.name,
            _that.version,
            _that.description,
            _that.effectiveDate,
            _that.expiryDate,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateBomRequest implements CreateBomRequest {
  const _CreateBomRequest(
      {required this.itemId,
      required this.name,
      required this.version,
      this.description,
      this.effectiveDate,
      this.expiryDate,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _CreateBomRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateBomRequestFromJson(json);

  @override
  final String itemId;
  @override
  final String name;
  @override
  final String version;
  @override
  final String? description;
  @override
  final DateTime? effectiveDate;
  @override
  final DateTime? expiryDate;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of CreateBomRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateBomRequestCopyWith<_CreateBomRequest> get copyWith =>
      __$CreateBomRequestCopyWithImpl<_CreateBomRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateBomRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateBomRequest &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.effectiveDate, effectiveDate) ||
                other.effectiveDate == effectiveDate) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemId,
      name,
      version,
      description,
      effectiveDate,
      expiryDate,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'CreateBomRequest(itemId: $itemId, name: $name, version: $version, description: $description, effectiveDate: $effectiveDate, expiryDate: $expiryDate, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$CreateBomRequestCopyWith<$Res>
    implements $CreateBomRequestCopyWith<$Res> {
  factory _$CreateBomRequestCopyWith(
          _CreateBomRequest value, $Res Function(_CreateBomRequest) _then) =
      __$CreateBomRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String itemId,
      String name,
      String version,
      String? description,
      DateTime? effectiveDate,
      DateTime? expiryDate,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$CreateBomRequestCopyWithImpl<$Res>
    implements _$CreateBomRequestCopyWith<$Res> {
  __$CreateBomRequestCopyWithImpl(this._self, this._then);

  final _CreateBomRequest _self;
  final $Res Function(_CreateBomRequest) _then;

  /// Create a copy of CreateBomRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? itemId = null,
    Object? name = null,
    Object? version = null,
    Object? description = freezed,
    Object? effectiveDate = freezed,
    Object? expiryDate = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_CreateBomRequest(
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      effectiveDate: freezed == effectiveDate
          ? _self.effectiveDate
          : effectiveDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiryDate: freezed == expiryDate
          ? _self.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$UpdateBomRequest {
  String? get name;
  String? get version;
  String? get description;
  String? get status;
  DateTime? get effectiveDate;
  DateTime? get expiryDate;
  Map<String, dynamic>? get metadata;

  /// Create a copy of UpdateBomRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateBomRequestCopyWith<UpdateBomRequest> get copyWith =>
      _$UpdateBomRequestCopyWithImpl<UpdateBomRequest>(
          this as UpdateBomRequest, _$identity);

  /// Serializes this UpdateBomRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateBomRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.effectiveDate, effectiveDate) ||
                other.effectiveDate == effectiveDate) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      version,
      description,
      status,
      effectiveDate,
      expiryDate,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'UpdateBomRequest(name: $name, version: $version, description: $description, status: $status, effectiveDate: $effectiveDate, expiryDate: $expiryDate, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $UpdateBomRequestCopyWith<$Res> {
  factory $UpdateBomRequestCopyWith(
          UpdateBomRequest value, $Res Function(UpdateBomRequest) _then) =
      _$UpdateBomRequestCopyWithImpl;
  @useResult
  $Res call(
      {String? name,
      String? version,
      String? description,
      String? status,
      DateTime? effectiveDate,
      DateTime? expiryDate,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$UpdateBomRequestCopyWithImpl<$Res>
    implements $UpdateBomRequestCopyWith<$Res> {
  _$UpdateBomRequestCopyWithImpl(this._self, this._then);

  final UpdateBomRequest _self;
  final $Res Function(UpdateBomRequest) _then;

  /// Create a copy of UpdateBomRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? version = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? effectiveDate = freezed,
    Object? expiryDate = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      effectiveDate: freezed == effectiveDate
          ? _self.effectiveDate
          : effectiveDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiryDate: freezed == expiryDate
          ? _self.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateBomRequest].
extension UpdateBomRequestPatterns on UpdateBomRequest {
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
    TResult Function(_UpdateBomRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateBomRequest() when $default != null:
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
    TResult Function(_UpdateBomRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateBomRequest():
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
    TResult? Function(_UpdateBomRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateBomRequest() when $default != null:
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
            String? name,
            String? version,
            String? description,
            String? status,
            DateTime? effectiveDate,
            DateTime? expiryDate,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateBomRequest() when $default != null:
        return $default(
            _that.name,
            _that.version,
            _that.description,
            _that.status,
            _that.effectiveDate,
            _that.expiryDate,
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
            String? name,
            String? version,
            String? description,
            String? status,
            DateTime? effectiveDate,
            DateTime? expiryDate,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateBomRequest():
        return $default(
            _that.name,
            _that.version,
            _that.description,
            _that.status,
            _that.effectiveDate,
            _that.expiryDate,
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
            String? name,
            String? version,
            String? description,
            String? status,
            DateTime? effectiveDate,
            DateTime? expiryDate,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateBomRequest() when $default != null:
        return $default(
            _that.name,
            _that.version,
            _that.description,
            _that.status,
            _that.effectiveDate,
            _that.expiryDate,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateBomRequest implements UpdateBomRequest {
  const _UpdateBomRequest(
      {this.name,
      this.version,
      this.description,
      this.status,
      this.effectiveDate,
      this.expiryDate,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _UpdateBomRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateBomRequestFromJson(json);

  @override
  final String? name;
  @override
  final String? version;
  @override
  final String? description;
  @override
  final String? status;
  @override
  final DateTime? effectiveDate;
  @override
  final DateTime? expiryDate;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of UpdateBomRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateBomRequestCopyWith<_UpdateBomRequest> get copyWith =>
      __$UpdateBomRequestCopyWithImpl<_UpdateBomRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateBomRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateBomRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.effectiveDate, effectiveDate) ||
                other.effectiveDate == effectiveDate) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      version,
      description,
      status,
      effectiveDate,
      expiryDate,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'UpdateBomRequest(name: $name, version: $version, description: $description, status: $status, effectiveDate: $effectiveDate, expiryDate: $expiryDate, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$UpdateBomRequestCopyWith<$Res>
    implements $UpdateBomRequestCopyWith<$Res> {
  factory _$UpdateBomRequestCopyWith(
          _UpdateBomRequest value, $Res Function(_UpdateBomRequest) _then) =
      __$UpdateBomRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? name,
      String? version,
      String? description,
      String? status,
      DateTime? effectiveDate,
      DateTime? expiryDate,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$UpdateBomRequestCopyWithImpl<$Res>
    implements _$UpdateBomRequestCopyWith<$Res> {
  __$UpdateBomRequestCopyWithImpl(this._self, this._then);

  final _UpdateBomRequest _self;
  final $Res Function(_UpdateBomRequest) _then;

  /// Create a copy of UpdateBomRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? version = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? effectiveDate = freezed,
    Object? expiryDate = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_UpdateBomRequest(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      effectiveDate: freezed == effectiveDate
          ? _self.effectiveDate
          : effectiveDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiryDate: freezed == expiryDate
          ? _self.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$WorkOrder {
  String get id;
  String get workOrderNumber;
  String get itemId;
  double get quantity;
  String
      get status; // 'planned', 'released', 'in_progress', 'completed', 'cancelled'
  DateTime? get plannedStartDate;
  DateTime? get plannedEndDate;
  DateTime? get actualStartDate;
  DateTime? get actualEndDate;
  String? get bomId;
  String? get priority;
  String? get notes;
  Map<String, dynamic>? get metadata;

  /// Create a copy of WorkOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WorkOrderCopyWith<WorkOrder> get copyWith =>
      _$WorkOrderCopyWithImpl<WorkOrder>(this as WorkOrder, _$identity);

  /// Serializes this WorkOrder to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WorkOrder &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.workOrderNumber, workOrderNumber) ||
                other.workOrderNumber == workOrderNumber) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.plannedStartDate, plannedStartDate) ||
                other.plannedStartDate == plannedStartDate) &&
            (identical(other.plannedEndDate, plannedEndDate) ||
                other.plannedEndDate == plannedEndDate) &&
            (identical(other.actualStartDate, actualStartDate) ||
                other.actualStartDate == actualStartDate) &&
            (identical(other.actualEndDate, actualEndDate) ||
                other.actualEndDate == actualEndDate) &&
            (identical(other.bomId, bomId) || other.bomId == bomId) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      workOrderNumber,
      itemId,
      quantity,
      status,
      plannedStartDate,
      plannedEndDate,
      actualStartDate,
      actualEndDate,
      bomId,
      priority,
      notes,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'WorkOrder(id: $id, workOrderNumber: $workOrderNumber, itemId: $itemId, quantity: $quantity, status: $status, plannedStartDate: $plannedStartDate, plannedEndDate: $plannedEndDate, actualStartDate: $actualStartDate, actualEndDate: $actualEndDate, bomId: $bomId, priority: $priority, notes: $notes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $WorkOrderCopyWith<$Res> {
  factory $WorkOrderCopyWith(WorkOrder value, $Res Function(WorkOrder) _then) =
      _$WorkOrderCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String workOrderNumber,
      String itemId,
      double quantity,
      String status,
      DateTime? plannedStartDate,
      DateTime? plannedEndDate,
      DateTime? actualStartDate,
      DateTime? actualEndDate,
      String? bomId,
      String? priority,
      String? notes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$WorkOrderCopyWithImpl<$Res> implements $WorkOrderCopyWith<$Res> {
  _$WorkOrderCopyWithImpl(this._self, this._then);

  final WorkOrder _self;
  final $Res Function(WorkOrder) _then;

  /// Create a copy of WorkOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? workOrderNumber = null,
    Object? itemId = null,
    Object? quantity = null,
    Object? status = null,
    Object? plannedStartDate = freezed,
    Object? plannedEndDate = freezed,
    Object? actualStartDate = freezed,
    Object? actualEndDate = freezed,
    Object? bomId = freezed,
    Object? priority = freezed,
    Object? notes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      workOrderNumber: null == workOrderNumber
          ? _self.workOrderNumber
          : workOrderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      plannedStartDate: freezed == plannedStartDate
          ? _self.plannedStartDate
          : plannedStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      plannedEndDate: freezed == plannedEndDate
          ? _self.plannedEndDate
          : plannedEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualStartDate: freezed == actualStartDate
          ? _self.actualStartDate
          : actualStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualEndDate: freezed == actualEndDate
          ? _self.actualEndDate
          : actualEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bomId: freezed == bomId
          ? _self.bomId
          : bomId // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [WorkOrder].
extension WorkOrderPatterns on WorkOrder {
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
    TResult Function(_WorkOrder value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WorkOrder() when $default != null:
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
    TResult Function(_WorkOrder value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkOrder():
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
    TResult? Function(_WorkOrder value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkOrder() when $default != null:
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
            String workOrderNumber,
            String itemId,
            double quantity,
            String status,
            DateTime? plannedStartDate,
            DateTime? plannedEndDate,
            DateTime? actualStartDate,
            DateTime? actualEndDate,
            String? bomId,
            String? priority,
            String? notes,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WorkOrder() when $default != null:
        return $default(
            _that.id,
            _that.workOrderNumber,
            _that.itemId,
            _that.quantity,
            _that.status,
            _that.plannedStartDate,
            _that.plannedEndDate,
            _that.actualStartDate,
            _that.actualEndDate,
            _that.bomId,
            _that.priority,
            _that.notes,
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
            String workOrderNumber,
            String itemId,
            double quantity,
            String status,
            DateTime? plannedStartDate,
            DateTime? plannedEndDate,
            DateTime? actualStartDate,
            DateTime? actualEndDate,
            String? bomId,
            String? priority,
            String? notes,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkOrder():
        return $default(
            _that.id,
            _that.workOrderNumber,
            _that.itemId,
            _that.quantity,
            _that.status,
            _that.plannedStartDate,
            _that.plannedEndDate,
            _that.actualStartDate,
            _that.actualEndDate,
            _that.bomId,
            _that.priority,
            _that.notes,
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
            String workOrderNumber,
            String itemId,
            double quantity,
            String status,
            DateTime? plannedStartDate,
            DateTime? plannedEndDate,
            DateTime? actualStartDate,
            DateTime? actualEndDate,
            String? bomId,
            String? priority,
            String? notes,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkOrder() when $default != null:
        return $default(
            _that.id,
            _that.workOrderNumber,
            _that.itemId,
            _that.quantity,
            _that.status,
            _that.plannedStartDate,
            _that.plannedEndDate,
            _that.actualStartDate,
            _that.actualEndDate,
            _that.bomId,
            _that.priority,
            _that.notes,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _WorkOrder implements WorkOrder {
  const _WorkOrder(
      {required this.id,
      required this.workOrderNumber,
      required this.itemId,
      required this.quantity,
      required this.status,
      this.plannedStartDate,
      this.plannedEndDate,
      this.actualStartDate,
      this.actualEndDate,
      this.bomId,
      this.priority,
      this.notes,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _WorkOrder.fromJson(Map<String, dynamic> json) =>
      _$WorkOrderFromJson(json);

  @override
  final String id;
  @override
  final String workOrderNumber;
  @override
  final String itemId;
  @override
  final double quantity;
  @override
  final String status;
// 'planned', 'released', 'in_progress', 'completed', 'cancelled'
  @override
  final DateTime? plannedStartDate;
  @override
  final DateTime? plannedEndDate;
  @override
  final DateTime? actualStartDate;
  @override
  final DateTime? actualEndDate;
  @override
  final String? bomId;
  @override
  final String? priority;
  @override
  final String? notes;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of WorkOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WorkOrderCopyWith<_WorkOrder> get copyWith =>
      __$WorkOrderCopyWithImpl<_WorkOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WorkOrderToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkOrder &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.workOrderNumber, workOrderNumber) ||
                other.workOrderNumber == workOrderNumber) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.plannedStartDate, plannedStartDate) ||
                other.plannedStartDate == plannedStartDate) &&
            (identical(other.plannedEndDate, plannedEndDate) ||
                other.plannedEndDate == plannedEndDate) &&
            (identical(other.actualStartDate, actualStartDate) ||
                other.actualStartDate == actualStartDate) &&
            (identical(other.actualEndDate, actualEndDate) ||
                other.actualEndDate == actualEndDate) &&
            (identical(other.bomId, bomId) || other.bomId == bomId) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      workOrderNumber,
      itemId,
      quantity,
      status,
      plannedStartDate,
      plannedEndDate,
      actualStartDate,
      actualEndDate,
      bomId,
      priority,
      notes,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'WorkOrder(id: $id, workOrderNumber: $workOrderNumber, itemId: $itemId, quantity: $quantity, status: $status, plannedStartDate: $plannedStartDate, plannedEndDate: $plannedEndDate, actualStartDate: $actualStartDate, actualEndDate: $actualEndDate, bomId: $bomId, priority: $priority, notes: $notes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$WorkOrderCopyWith<$Res>
    implements $WorkOrderCopyWith<$Res> {
  factory _$WorkOrderCopyWith(
          _WorkOrder value, $Res Function(_WorkOrder) _then) =
      __$WorkOrderCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String workOrderNumber,
      String itemId,
      double quantity,
      String status,
      DateTime? plannedStartDate,
      DateTime? plannedEndDate,
      DateTime? actualStartDate,
      DateTime? actualEndDate,
      String? bomId,
      String? priority,
      String? notes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$WorkOrderCopyWithImpl<$Res> implements _$WorkOrderCopyWith<$Res> {
  __$WorkOrderCopyWithImpl(this._self, this._then);

  final _WorkOrder _self;
  final $Res Function(_WorkOrder) _then;

  /// Create a copy of WorkOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? workOrderNumber = null,
    Object? itemId = null,
    Object? quantity = null,
    Object? status = null,
    Object? plannedStartDate = freezed,
    Object? plannedEndDate = freezed,
    Object? actualStartDate = freezed,
    Object? actualEndDate = freezed,
    Object? bomId = freezed,
    Object? priority = freezed,
    Object? notes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_WorkOrder(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      workOrderNumber: null == workOrderNumber
          ? _self.workOrderNumber
          : workOrderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      plannedStartDate: freezed == plannedStartDate
          ? _self.plannedStartDate
          : plannedStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      plannedEndDate: freezed == plannedEndDate
          ? _self.plannedEndDate
          : plannedEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualStartDate: freezed == actualStartDate
          ? _self.actualStartDate
          : actualStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualEndDate: freezed == actualEndDate
          ? _self.actualEndDate
          : actualEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bomId: freezed == bomId
          ? _self.bomId
          : bomId // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$CreateProductionOrderMaterialRequest {
  String get itemId;
  double get requiredQuantity;

  /// Create a copy of CreateProductionOrderMaterialRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateProductionOrderMaterialRequestCopyWith<
          CreateProductionOrderMaterialRequest>
      get copyWith => _$CreateProductionOrderMaterialRequestCopyWithImpl<
              CreateProductionOrderMaterialRequest>(
          this as CreateProductionOrderMaterialRequest, _$identity);

  /// Serializes this CreateProductionOrderMaterialRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateProductionOrderMaterialRequest &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.requiredQuantity, requiredQuantity) ||
                other.requiredQuantity == requiredQuantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, itemId, requiredQuantity);

  @override
  String toString() {
    return 'CreateProductionOrderMaterialRequest(itemId: $itemId, requiredQuantity: $requiredQuantity)';
  }
}

/// @nodoc
abstract mixin class $CreateProductionOrderMaterialRequestCopyWith<$Res> {
  factory $CreateProductionOrderMaterialRequestCopyWith(
          CreateProductionOrderMaterialRequest value,
          $Res Function(CreateProductionOrderMaterialRequest) _then) =
      _$CreateProductionOrderMaterialRequestCopyWithImpl;
  @useResult
  $Res call({String itemId, double requiredQuantity});
}

/// @nodoc
class _$CreateProductionOrderMaterialRequestCopyWithImpl<$Res>
    implements $CreateProductionOrderMaterialRequestCopyWith<$Res> {
  _$CreateProductionOrderMaterialRequestCopyWithImpl(this._self, this._then);

  final CreateProductionOrderMaterialRequest _self;
  final $Res Function(CreateProductionOrderMaterialRequest) _then;

  /// Create a copy of CreateProductionOrderMaterialRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? requiredQuantity = null,
  }) {
    return _then(_self.copyWith(
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      requiredQuantity: null == requiredQuantity
          ? _self.requiredQuantity
          : requiredQuantity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateProductionOrderMaterialRequest].
extension CreateProductionOrderMaterialRequestPatterns
    on CreateProductionOrderMaterialRequest {
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
    TResult Function(_CreateProductionOrderMaterialRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateProductionOrderMaterialRequest() when $default != null:
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
    TResult Function(_CreateProductionOrderMaterialRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProductionOrderMaterialRequest():
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
    TResult? Function(_CreateProductionOrderMaterialRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProductionOrderMaterialRequest() when $default != null:
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
    TResult Function(String itemId, double requiredQuantity)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateProductionOrderMaterialRequest() when $default != null:
        return $default(_that.itemId, _that.requiredQuantity);
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
    TResult Function(String itemId, double requiredQuantity) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProductionOrderMaterialRequest():
        return $default(_that.itemId, _that.requiredQuantity);
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
    TResult? Function(String itemId, double requiredQuantity)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProductionOrderMaterialRequest() when $default != null:
        return $default(_that.itemId, _that.requiredQuantity);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateProductionOrderMaterialRequest
    implements CreateProductionOrderMaterialRequest {
  const _CreateProductionOrderMaterialRequest(
      {required this.itemId, required this.requiredQuantity});
  factory _CreateProductionOrderMaterialRequest.fromJson(
          Map<String, dynamic> json) =>
      _$CreateProductionOrderMaterialRequestFromJson(json);

  @override
  final String itemId;
  @override
  final double requiredQuantity;

  /// Create a copy of CreateProductionOrderMaterialRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateProductionOrderMaterialRequestCopyWith<
          _CreateProductionOrderMaterialRequest>
      get copyWith => __$CreateProductionOrderMaterialRequestCopyWithImpl<
          _CreateProductionOrderMaterialRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateProductionOrderMaterialRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateProductionOrderMaterialRequest &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.requiredQuantity, requiredQuantity) ||
                other.requiredQuantity == requiredQuantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, itemId, requiredQuantity);

  @override
  String toString() {
    return 'CreateProductionOrderMaterialRequest(itemId: $itemId, requiredQuantity: $requiredQuantity)';
  }
}

/// @nodoc
abstract mixin class _$CreateProductionOrderMaterialRequestCopyWith<$Res>
    implements $CreateProductionOrderMaterialRequestCopyWith<$Res> {
  factory _$CreateProductionOrderMaterialRequestCopyWith(
          _CreateProductionOrderMaterialRequest value,
          $Res Function(_CreateProductionOrderMaterialRequest) _then) =
      __$CreateProductionOrderMaterialRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String itemId, double requiredQuantity});
}

/// @nodoc
class __$CreateProductionOrderMaterialRequestCopyWithImpl<$Res>
    implements _$CreateProductionOrderMaterialRequestCopyWith<$Res> {
  __$CreateProductionOrderMaterialRequestCopyWithImpl(this._self, this._then);

  final _CreateProductionOrderMaterialRequest _self;
  final $Res Function(_CreateProductionOrderMaterialRequest) _then;

  /// Create a copy of CreateProductionOrderMaterialRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? itemId = null,
    Object? requiredQuantity = null,
  }) {
    return _then(_CreateProductionOrderMaterialRequest(
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      requiredQuantity: null == requiredQuantity
          ? _self.requiredQuantity
          : requiredQuantity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
mixin _$CreateProductionOrderRequest {
  String get itemId;
  double get quantity;
  DateTime get startDate;
  List<CreateProductionOrderMaterialRequest> get materials;
  DateTime? get endDate;
  String? get notes;

  /// Create a copy of CreateProductionOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateProductionOrderRequestCopyWith<CreateProductionOrderRequest>
      get copyWith => _$CreateProductionOrderRequestCopyWithImpl<
              CreateProductionOrderRequest>(
          this as CreateProductionOrderRequest, _$identity);

  /// Serializes this CreateProductionOrderRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateProductionOrderRequest &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            const DeepCollectionEquality().equals(other.materials, materials) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, itemId, quantity, startDate,
      const DeepCollectionEquality().hash(materials), endDate, notes);

  @override
  String toString() {
    return 'CreateProductionOrderRequest(itemId: $itemId, quantity: $quantity, startDate: $startDate, materials: $materials, endDate: $endDate, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $CreateProductionOrderRequestCopyWith<$Res> {
  factory $CreateProductionOrderRequestCopyWith(
          CreateProductionOrderRequest value,
          $Res Function(CreateProductionOrderRequest) _then) =
      _$CreateProductionOrderRequestCopyWithImpl;
  @useResult
  $Res call(
      {String itemId,
      double quantity,
      DateTime startDate,
      List<CreateProductionOrderMaterialRequest> materials,
      DateTime? endDate,
      String? notes});
}

/// @nodoc
class _$CreateProductionOrderRequestCopyWithImpl<$Res>
    implements $CreateProductionOrderRequestCopyWith<$Res> {
  _$CreateProductionOrderRequestCopyWithImpl(this._self, this._then);

  final CreateProductionOrderRequest _self;
  final $Res Function(CreateProductionOrderRequest) _then;

  /// Create a copy of CreateProductionOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? quantity = null,
    Object? startDate = null,
    Object? materials = null,
    Object? endDate = freezed,
    Object? notes = freezed,
  }) {
    return _then(_self.copyWith(
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      materials: null == materials
          ? _self.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<CreateProductionOrderMaterialRequest>,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateProductionOrderRequest].
extension CreateProductionOrderRequestPatterns on CreateProductionOrderRequest {
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
    TResult Function(_CreateProductionOrderRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateProductionOrderRequest() when $default != null:
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
    TResult Function(_CreateProductionOrderRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProductionOrderRequest():
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
    TResult? Function(_CreateProductionOrderRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProductionOrderRequest() when $default != null:
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
            String itemId,
            double quantity,
            DateTime startDate,
            List<CreateProductionOrderMaterialRequest> materials,
            DateTime? endDate,
            String? notes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateProductionOrderRequest() when $default != null:
        return $default(_that.itemId, _that.quantity, _that.startDate,
            _that.materials, _that.endDate, _that.notes);
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
            String itemId,
            double quantity,
            DateTime startDate,
            List<CreateProductionOrderMaterialRequest> materials,
            DateTime? endDate,
            String? notes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProductionOrderRequest():
        return $default(_that.itemId, _that.quantity, _that.startDate,
            _that.materials, _that.endDate, _that.notes);
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
            String itemId,
            double quantity,
            DateTime startDate,
            List<CreateProductionOrderMaterialRequest> materials,
            DateTime? endDate,
            String? notes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProductionOrderRequest() when $default != null:
        return $default(_that.itemId, _that.quantity, _that.startDate,
            _that.materials, _that.endDate, _that.notes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateProductionOrderRequest implements CreateProductionOrderRequest {
  const _CreateProductionOrderRequest(
      {required this.itemId,
      required this.quantity,
      required this.startDate,
      required final List<CreateProductionOrderMaterialRequest> materials,
      this.endDate,
      this.notes})
      : _materials = materials;
  factory _CreateProductionOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateProductionOrderRequestFromJson(json);

  @override
  final String itemId;
  @override
  final double quantity;
  @override
  final DateTime startDate;
  final List<CreateProductionOrderMaterialRequest> _materials;
  @override
  List<CreateProductionOrderMaterialRequest> get materials {
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materials);
  }

  @override
  final DateTime? endDate;
  @override
  final String? notes;

  /// Create a copy of CreateProductionOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateProductionOrderRequestCopyWith<_CreateProductionOrderRequest>
      get copyWith => __$CreateProductionOrderRequestCopyWithImpl<
          _CreateProductionOrderRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateProductionOrderRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateProductionOrderRequest &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, itemId, quantity, startDate,
      const DeepCollectionEquality().hash(_materials), endDate, notes);

  @override
  String toString() {
    return 'CreateProductionOrderRequest(itemId: $itemId, quantity: $quantity, startDate: $startDate, materials: $materials, endDate: $endDate, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$CreateProductionOrderRequestCopyWith<$Res>
    implements $CreateProductionOrderRequestCopyWith<$Res> {
  factory _$CreateProductionOrderRequestCopyWith(
          _CreateProductionOrderRequest value,
          $Res Function(_CreateProductionOrderRequest) _then) =
      __$CreateProductionOrderRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String itemId,
      double quantity,
      DateTime startDate,
      List<CreateProductionOrderMaterialRequest> materials,
      DateTime? endDate,
      String? notes});
}

/// @nodoc
class __$CreateProductionOrderRequestCopyWithImpl<$Res>
    implements _$CreateProductionOrderRequestCopyWith<$Res> {
  __$CreateProductionOrderRequestCopyWithImpl(this._self, this._then);

  final _CreateProductionOrderRequest _self;
  final $Res Function(_CreateProductionOrderRequest) _then;

  /// Create a copy of CreateProductionOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? itemId = null,
    Object? quantity = null,
    Object? startDate = null,
    Object? materials = null,
    Object? endDate = freezed,
    Object? notes = freezed,
  }) {
    return _then(_CreateProductionOrderRequest(
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      materials: null == materials
          ? _self._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<CreateProductionOrderMaterialRequest>,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$ProductionOrder {
  String get id;
  String get orderNumber;
  String get itemId;
  String get itemName;
  double get quantity;
  String get status;
  DateTime get startDate;
  List<ProductionOrderMaterial> get materials;
  DateTime get createdAt;
  DateTime? get endDate;
  String? get notes;
  String? get organizationId;
  DateTime? get updatedAt;

  /// Create a copy of ProductionOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductionOrderCopyWith<ProductionOrder> get copyWith =>
      _$ProductionOrderCopyWithImpl<ProductionOrder>(
          this as ProductionOrder, _$identity);

  /// Serializes this ProductionOrder to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductionOrder &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            const DeepCollectionEquality().equals(other.materials, materials) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      orderNumber,
      itemId,
      itemName,
      quantity,
      status,
      startDate,
      const DeepCollectionEquality().hash(materials),
      createdAt,
      endDate,
      notes,
      organizationId,
      updatedAt);

  @override
  String toString() {
    return 'ProductionOrder(id: $id, orderNumber: $orderNumber, itemId: $itemId, itemName: $itemName, quantity: $quantity, status: $status, startDate: $startDate, materials: $materials, createdAt: $createdAt, endDate: $endDate, notes: $notes, organizationId: $organizationId, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $ProductionOrderCopyWith<$Res> {
  factory $ProductionOrderCopyWith(
          ProductionOrder value, $Res Function(ProductionOrder) _then) =
      _$ProductionOrderCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String orderNumber,
      String itemId,
      String itemName,
      double quantity,
      String status,
      DateTime startDate,
      List<ProductionOrderMaterial> materials,
      DateTime createdAt,
      DateTime? endDate,
      String? notes,
      String? organizationId,
      DateTime? updatedAt});
}

/// @nodoc
class _$ProductionOrderCopyWithImpl<$Res>
    implements $ProductionOrderCopyWith<$Res> {
  _$ProductionOrderCopyWithImpl(this._self, this._then);

  final ProductionOrder _self;
  final $Res Function(ProductionOrder) _then;

  /// Create a copy of ProductionOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderNumber = null,
    Object? itemId = null,
    Object? itemName = null,
    Object? quantity = null,
    Object? status = null,
    Object? startDate = null,
    Object? materials = null,
    Object? createdAt = null,
    Object? endDate = freezed,
    Object? notes = freezed,
    Object? organizationId = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderNumber: null == orderNumber
          ? _self.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _self.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      materials: null == materials
          ? _self.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<ProductionOrderMaterial>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationId: freezed == organizationId
          ? _self.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProductionOrder].
extension ProductionOrderPatterns on ProductionOrder {
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
    TResult Function(_ProductionOrder value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductionOrder() when $default != null:
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
    TResult Function(_ProductionOrder value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductionOrder():
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
    TResult? Function(_ProductionOrder value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductionOrder() when $default != null:
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
            String orderNumber,
            String itemId,
            String itemName,
            double quantity,
            String status,
            DateTime startDate,
            List<ProductionOrderMaterial> materials,
            DateTime createdAt,
            DateTime? endDate,
            String? notes,
            String? organizationId,
            DateTime? updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductionOrder() when $default != null:
        return $default(
            _that.id,
            _that.orderNumber,
            _that.itemId,
            _that.itemName,
            _that.quantity,
            _that.status,
            _that.startDate,
            _that.materials,
            _that.createdAt,
            _that.endDate,
            _that.notes,
            _that.organizationId,
            _that.updatedAt);
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
            String orderNumber,
            String itemId,
            String itemName,
            double quantity,
            String status,
            DateTime startDate,
            List<ProductionOrderMaterial> materials,
            DateTime createdAt,
            DateTime? endDate,
            String? notes,
            String? organizationId,
            DateTime? updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductionOrder():
        return $default(
            _that.id,
            _that.orderNumber,
            _that.itemId,
            _that.itemName,
            _that.quantity,
            _that.status,
            _that.startDate,
            _that.materials,
            _that.createdAt,
            _that.endDate,
            _that.notes,
            _that.organizationId,
            _that.updatedAt);
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
            String orderNumber,
            String itemId,
            String itemName,
            double quantity,
            String status,
            DateTime startDate,
            List<ProductionOrderMaterial> materials,
            DateTime createdAt,
            DateTime? endDate,
            String? notes,
            String? organizationId,
            DateTime? updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductionOrder() when $default != null:
        return $default(
            _that.id,
            _that.orderNumber,
            _that.itemId,
            _that.itemName,
            _that.quantity,
            _that.status,
            _that.startDate,
            _that.materials,
            _that.createdAt,
            _that.endDate,
            _that.notes,
            _that.organizationId,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ProductionOrder implements ProductionOrder {
  const _ProductionOrder(
      {required this.id,
      required this.orderNumber,
      required this.itemId,
      required this.itemName,
      required this.quantity,
      required this.status,
      required this.startDate,
      required final List<ProductionOrderMaterial> materials,
      required this.createdAt,
      this.endDate,
      this.notes,
      this.organizationId,
      this.updatedAt})
      : _materials = materials;
  factory _ProductionOrder.fromJson(Map<String, dynamic> json) =>
      _$ProductionOrderFromJson(json);

  @override
  final String id;
  @override
  final String orderNumber;
  @override
  final String itemId;
  @override
  final String itemName;
  @override
  final double quantity;
  @override
  final String status;
  @override
  final DateTime startDate;
  final List<ProductionOrderMaterial> _materials;
  @override
  List<ProductionOrderMaterial> get materials {
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materials);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime? endDate;
  @override
  final String? notes;
  @override
  final String? organizationId;
  @override
  final DateTime? updatedAt;

  /// Create a copy of ProductionOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductionOrderCopyWith<_ProductionOrder> get copyWith =>
      __$ProductionOrderCopyWithImpl<_ProductionOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProductionOrderToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductionOrder &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      orderNumber,
      itemId,
      itemName,
      quantity,
      status,
      startDate,
      const DeepCollectionEquality().hash(_materials),
      createdAt,
      endDate,
      notes,
      organizationId,
      updatedAt);

  @override
  String toString() {
    return 'ProductionOrder(id: $id, orderNumber: $orderNumber, itemId: $itemId, itemName: $itemName, quantity: $quantity, status: $status, startDate: $startDate, materials: $materials, createdAt: $createdAt, endDate: $endDate, notes: $notes, organizationId: $organizationId, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$ProductionOrderCopyWith<$Res>
    implements $ProductionOrderCopyWith<$Res> {
  factory _$ProductionOrderCopyWith(
          _ProductionOrder value, $Res Function(_ProductionOrder) _then) =
      __$ProductionOrderCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String orderNumber,
      String itemId,
      String itemName,
      double quantity,
      String status,
      DateTime startDate,
      List<ProductionOrderMaterial> materials,
      DateTime createdAt,
      DateTime? endDate,
      String? notes,
      String? organizationId,
      DateTime? updatedAt});
}

/// @nodoc
class __$ProductionOrderCopyWithImpl<$Res>
    implements _$ProductionOrderCopyWith<$Res> {
  __$ProductionOrderCopyWithImpl(this._self, this._then);

  final _ProductionOrder _self;
  final $Res Function(_ProductionOrder) _then;

  /// Create a copy of ProductionOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? orderNumber = null,
    Object? itemId = null,
    Object? itemName = null,
    Object? quantity = null,
    Object? status = null,
    Object? startDate = null,
    Object? materials = null,
    Object? createdAt = null,
    Object? endDate = freezed,
    Object? notes = freezed,
    Object? organizationId = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_ProductionOrder(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderNumber: null == orderNumber
          ? _self.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _self.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      materials: null == materials
          ? _self._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<ProductionOrderMaterial>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationId: freezed == organizationId
          ? _self.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
mixin _$ProductionOrderMaterial {
  String get id;
  String get itemId;
  String get itemName;
  double get requiredQuantity;
  double get consumedQuantity;
  String? get unit;

  /// Create a copy of ProductionOrderMaterial
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductionOrderMaterialCopyWith<ProductionOrderMaterial> get copyWith =>
      _$ProductionOrderMaterialCopyWithImpl<ProductionOrderMaterial>(
          this as ProductionOrderMaterial, _$identity);

  /// Serializes this ProductionOrderMaterial to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductionOrderMaterial &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.requiredQuantity, requiredQuantity) ||
                other.requiredQuantity == requiredQuantity) &&
            (identical(other.consumedQuantity, consumedQuantity) ||
                other.consumedQuantity == consumedQuantity) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, itemId, itemName,
      requiredQuantity, consumedQuantity, unit);

  @override
  String toString() {
    return 'ProductionOrderMaterial(id: $id, itemId: $itemId, itemName: $itemName, requiredQuantity: $requiredQuantity, consumedQuantity: $consumedQuantity, unit: $unit)';
  }
}

/// @nodoc
abstract mixin class $ProductionOrderMaterialCopyWith<$Res> {
  factory $ProductionOrderMaterialCopyWith(ProductionOrderMaterial value,
          $Res Function(ProductionOrderMaterial) _then) =
      _$ProductionOrderMaterialCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String itemId,
      String itemName,
      double requiredQuantity,
      double consumedQuantity,
      String? unit});
}

/// @nodoc
class _$ProductionOrderMaterialCopyWithImpl<$Res>
    implements $ProductionOrderMaterialCopyWith<$Res> {
  _$ProductionOrderMaterialCopyWithImpl(this._self, this._then);

  final ProductionOrderMaterial _self;
  final $Res Function(ProductionOrderMaterial) _then;

  /// Create a copy of ProductionOrderMaterial
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? itemId = null,
    Object? itemName = null,
    Object? requiredQuantity = null,
    Object? consumedQuantity = null,
    Object? unit = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _self.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      requiredQuantity: null == requiredQuantity
          ? _self.requiredQuantity
          : requiredQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      consumedQuantity: null == consumedQuantity
          ? _self.consumedQuantity
          : consumedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: freezed == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProductionOrderMaterial].
extension ProductionOrderMaterialPatterns on ProductionOrderMaterial {
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
    TResult Function(_ProductionOrderMaterial value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductionOrderMaterial() when $default != null:
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
    TResult Function(_ProductionOrderMaterial value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductionOrderMaterial():
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
    TResult? Function(_ProductionOrderMaterial value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductionOrderMaterial() when $default != null:
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
    TResult Function(String id, String itemId, String itemName,
            double requiredQuantity, double consumedQuantity, String? unit)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductionOrderMaterial() when $default != null:
        return $default(_that.id, _that.itemId, _that.itemName,
            _that.requiredQuantity, _that.consumedQuantity, _that.unit);
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
    TResult Function(String id, String itemId, String itemName,
            double requiredQuantity, double consumedQuantity, String? unit)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductionOrderMaterial():
        return $default(_that.id, _that.itemId, _that.itemName,
            _that.requiredQuantity, _that.consumedQuantity, _that.unit);
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
    TResult? Function(String id, String itemId, String itemName,
            double requiredQuantity, double consumedQuantity, String? unit)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductionOrderMaterial() when $default != null:
        return $default(_that.id, _that.itemId, _that.itemName,
            _that.requiredQuantity, _that.consumedQuantity, _that.unit);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ProductionOrderMaterial implements ProductionOrderMaterial {
  const _ProductionOrderMaterial(
      {required this.id,
      required this.itemId,
      required this.itemName,
      required this.requiredQuantity,
      required this.consumedQuantity,
      this.unit});
  factory _ProductionOrderMaterial.fromJson(Map<String, dynamic> json) =>
      _$ProductionOrderMaterialFromJson(json);

  @override
  final String id;
  @override
  final String itemId;
  @override
  final String itemName;
  @override
  final double requiredQuantity;
  @override
  final double consumedQuantity;
  @override
  final String? unit;

  /// Create a copy of ProductionOrderMaterial
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductionOrderMaterialCopyWith<_ProductionOrderMaterial> get copyWith =>
      __$ProductionOrderMaterialCopyWithImpl<_ProductionOrderMaterial>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProductionOrderMaterialToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductionOrderMaterial &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.requiredQuantity, requiredQuantity) ||
                other.requiredQuantity == requiredQuantity) &&
            (identical(other.consumedQuantity, consumedQuantity) ||
                other.consumedQuantity == consumedQuantity) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, itemId, itemName,
      requiredQuantity, consumedQuantity, unit);

  @override
  String toString() {
    return 'ProductionOrderMaterial(id: $id, itemId: $itemId, itemName: $itemName, requiredQuantity: $requiredQuantity, consumedQuantity: $consumedQuantity, unit: $unit)';
  }
}

/// @nodoc
abstract mixin class _$ProductionOrderMaterialCopyWith<$Res>
    implements $ProductionOrderMaterialCopyWith<$Res> {
  factory _$ProductionOrderMaterialCopyWith(_ProductionOrderMaterial value,
          $Res Function(_ProductionOrderMaterial) _then) =
      __$ProductionOrderMaterialCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String itemId,
      String itemName,
      double requiredQuantity,
      double consumedQuantity,
      String? unit});
}

/// @nodoc
class __$ProductionOrderMaterialCopyWithImpl<$Res>
    implements _$ProductionOrderMaterialCopyWith<$Res> {
  __$ProductionOrderMaterialCopyWithImpl(this._self, this._then);

  final _ProductionOrderMaterial _self;
  final $Res Function(_ProductionOrderMaterial) _then;

  /// Create a copy of ProductionOrderMaterial
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? itemId = null,
    Object? itemName = null,
    Object? requiredQuantity = null,
    Object? consumedQuantity = null,
    Object? unit = freezed,
  }) {
    return _then(_ProductionOrderMaterial(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _self.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      requiredQuantity: null == requiredQuantity
          ? _self.requiredQuantity
          : requiredQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      consumedQuantity: null == consumedQuantity
          ? _self.consumedQuantity
          : consumedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: freezed == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
