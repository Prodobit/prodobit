// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Item {
  String get id;
  String get name;
  String get code;
  String get type; // 'product', 'service', 'raw_material', etc.
  String get unit;
  bool get isActive;
  AuditInfo get auditInfo;
  String? get description;
  String? get category;
  String? get brand;
  Money? get basePrice;
  Money? get costPrice;
  String? get barcode;
  String? get imageUrl;
  Map<String, dynamic>? get specifications;
  Map<String, dynamic>? get metadata;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ItemCopyWith<Item> get copyWith =>
      _$ItemCopyWithImpl<Item>(this as Item, _$identity);

  /// Serializes this Item to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Item &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.auditInfo, auditInfo) ||
                other.auditInfo == auditInfo) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.costPrice, costPrice) ||
                other.costPrice == costPrice) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.specifications, specifications) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      code,
      type,
      unit,
      isActive,
      auditInfo,
      description,
      category,
      brand,
      basePrice,
      costPrice,
      barcode,
      imageUrl,
      const DeepCollectionEquality().hash(specifications),
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, code: $code, type: $type, unit: $unit, isActive: $isActive, auditInfo: $auditInfo, description: $description, category: $category, brand: $brand, basePrice: $basePrice, costPrice: $costPrice, barcode: $barcode, imageUrl: $imageUrl, specifications: $specifications, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) _then) =
      _$ItemCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String code,
      String type,
      String unit,
      bool isActive,
      AuditInfo auditInfo,
      String? description,
      String? category,
      String? brand,
      Money? basePrice,
      Money? costPrice,
      String? barcode,
      String? imageUrl,
      Map<String, dynamic>? specifications,
      Map<String, dynamic>? metadata});

  $AuditInfoCopyWith<$Res> get auditInfo;
  $MoneyCopyWith<$Res>? get basePrice;
  $MoneyCopyWith<$Res>? get costPrice;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._self, this._then);

  final Item _self;
  final $Res Function(Item) _then;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? type = null,
    Object? unit = null,
    Object? isActive = null,
    Object? auditInfo = null,
    Object? description = freezed,
    Object? category = freezed,
    Object? brand = freezed,
    Object? basePrice = freezed,
    Object? costPrice = freezed,
    Object? barcode = freezed,
    Object? imageUrl = freezed,
    Object? specifications = freezed,
    Object? metadata = freezed,
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
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      auditInfo: null == auditInfo
          ? _self.auditInfo
          : auditInfo // ignore: cast_nullable_to_non_nullable
              as AuditInfo,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _self.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      basePrice: freezed == basePrice
          ? _self.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      costPrice: freezed == costPrice
          ? _self.costPrice
          : costPrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      barcode: freezed == barcode
          ? _self.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      specifications: freezed == specifications
          ? _self.specifications
          : specifications // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuditInfoCopyWith<$Res> get auditInfo {
    return $AuditInfoCopyWith<$Res>(_self.auditInfo, (value) {
      return _then(_self.copyWith(auditInfo: value));
    });
  }

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get basePrice {
    if (_self.basePrice == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_self.basePrice!, (value) {
      return _then(_self.copyWith(basePrice: value));
    });
  }

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get costPrice {
    if (_self.costPrice == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_self.costPrice!, (value) {
      return _then(_self.copyWith(costPrice: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Item].
extension ItemPatterns on Item {
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
    TResult Function(_Item value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Item() when $default != null:
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
    TResult Function(_Item value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Item():
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
    TResult? Function(_Item value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Item() when $default != null:
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
            String name,
            String code,
            String type,
            String unit,
            bool isActive,
            AuditInfo auditInfo,
            String? description,
            String? category,
            String? brand,
            Money? basePrice,
            Money? costPrice,
            String? barcode,
            String? imageUrl,
            Map<String, dynamic>? specifications,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Item() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.code,
            _that.type,
            _that.unit,
            _that.isActive,
            _that.auditInfo,
            _that.description,
            _that.category,
            _that.brand,
            _that.basePrice,
            _that.costPrice,
            _that.barcode,
            _that.imageUrl,
            _that.specifications,
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
            String name,
            String code,
            String type,
            String unit,
            bool isActive,
            AuditInfo auditInfo,
            String? description,
            String? category,
            String? brand,
            Money? basePrice,
            Money? costPrice,
            String? barcode,
            String? imageUrl,
            Map<String, dynamic>? specifications,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Item():
        return $default(
            _that.id,
            _that.name,
            _that.code,
            _that.type,
            _that.unit,
            _that.isActive,
            _that.auditInfo,
            _that.description,
            _that.category,
            _that.brand,
            _that.basePrice,
            _that.costPrice,
            _that.barcode,
            _that.imageUrl,
            _that.specifications,
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
            String name,
            String code,
            String type,
            String unit,
            bool isActive,
            AuditInfo auditInfo,
            String? description,
            String? category,
            String? brand,
            Money? basePrice,
            Money? costPrice,
            String? barcode,
            String? imageUrl,
            Map<String, dynamic>? specifications,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Item() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.code,
            _that.type,
            _that.unit,
            _that.isActive,
            _that.auditInfo,
            _that.description,
            _that.category,
            _that.brand,
            _that.basePrice,
            _that.costPrice,
            _that.barcode,
            _that.imageUrl,
            _that.specifications,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Item implements Item {
  const _Item(
      {required this.id,
      required this.name,
      required this.code,
      required this.type,
      required this.unit,
      required this.isActive,
      required this.auditInfo,
      this.description,
      this.category,
      this.brand,
      this.basePrice,
      this.costPrice,
      this.barcode,
      this.imageUrl,
      final Map<String, dynamic>? specifications,
      final Map<String, dynamic>? metadata})
      : _specifications = specifications,
        _metadata = metadata;
  factory _Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String code;
  @override
  final String type;
// 'product', 'service', 'raw_material', etc.
  @override
  final String unit;
  @override
  final bool isActive;
  @override
  final AuditInfo auditInfo;
  @override
  final String? description;
  @override
  final String? category;
  @override
  final String? brand;
  @override
  final Money? basePrice;
  @override
  final Money? costPrice;
  @override
  final String? barcode;
  @override
  final String? imageUrl;
  final Map<String, dynamic>? _specifications;
  @override
  Map<String, dynamic>? get specifications {
    final value = _specifications;
    if (value == null) return null;
    if (_specifications is EqualUnmodifiableMapView) return _specifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ItemCopyWith<_Item> get copyWith =>
      __$ItemCopyWithImpl<_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Item &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.auditInfo, auditInfo) ||
                other.auditInfo == auditInfo) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.costPrice, costPrice) ||
                other.costPrice == costPrice) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality()
                .equals(other._specifications, _specifications) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      code,
      type,
      unit,
      isActive,
      auditInfo,
      description,
      category,
      brand,
      basePrice,
      costPrice,
      barcode,
      imageUrl,
      const DeepCollectionEquality().hash(_specifications),
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, code: $code, type: $type, unit: $unit, isActive: $isActive, auditInfo: $auditInfo, description: $description, category: $category, brand: $brand, basePrice: $basePrice, costPrice: $costPrice, barcode: $barcode, imageUrl: $imageUrl, specifications: $specifications, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) _then) =
      __$ItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String code,
      String type,
      String unit,
      bool isActive,
      AuditInfo auditInfo,
      String? description,
      String? category,
      String? brand,
      Money? basePrice,
      Money? costPrice,
      String? barcode,
      String? imageUrl,
      Map<String, dynamic>? specifications,
      Map<String, dynamic>? metadata});

  @override
  $AuditInfoCopyWith<$Res> get auditInfo;
  @override
  $MoneyCopyWith<$Res>? get basePrice;
  @override
  $MoneyCopyWith<$Res>? get costPrice;
}

/// @nodoc
class __$ItemCopyWithImpl<$Res> implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(this._self, this._then);

  final _Item _self;
  final $Res Function(_Item) _then;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? type = null,
    Object? unit = null,
    Object? isActive = null,
    Object? auditInfo = null,
    Object? description = freezed,
    Object? category = freezed,
    Object? brand = freezed,
    Object? basePrice = freezed,
    Object? costPrice = freezed,
    Object? barcode = freezed,
    Object? imageUrl = freezed,
    Object? specifications = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_Item(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      auditInfo: null == auditInfo
          ? _self.auditInfo
          : auditInfo // ignore: cast_nullable_to_non_nullable
              as AuditInfo,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _self.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      basePrice: freezed == basePrice
          ? _self.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      costPrice: freezed == costPrice
          ? _self.costPrice
          : costPrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      barcode: freezed == barcode
          ? _self.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      specifications: freezed == specifications
          ? _self._specifications
          : specifications // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuditInfoCopyWith<$Res> get auditInfo {
    return $AuditInfoCopyWith<$Res>(_self.auditInfo, (value) {
      return _then(_self.copyWith(auditInfo: value));
    });
  }

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get basePrice {
    if (_self.basePrice == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_self.basePrice!, (value) {
      return _then(_self.copyWith(basePrice: value));
    });
  }

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get costPrice {
    if (_self.costPrice == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_self.costPrice!, (value) {
      return _then(_self.copyWith(costPrice: value));
    });
  }
}

/// @nodoc
mixin _$ItemRequest {
  String get name;
  String get code;
  String get type;
  String get unit;
  String? get description;
  String? get category;
  String? get brand;
  Money? get basePrice;
  Money? get costPrice;
  String? get barcode;
  String? get imageUrl;
  bool get isActive;
  Map<String, dynamic>? get specifications;
  Map<String, dynamic>? get metadata;

  /// Create a copy of ItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ItemRequestCopyWith<ItemRequest> get copyWith =>
      _$ItemRequestCopyWithImpl<ItemRequest>(this as ItemRequest, _$identity);

  /// Serializes this ItemRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ItemRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.costPrice, costPrice) ||
                other.costPrice == costPrice) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality()
                .equals(other.specifications, specifications) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      code,
      type,
      unit,
      description,
      category,
      brand,
      basePrice,
      costPrice,
      barcode,
      imageUrl,
      isActive,
      const DeepCollectionEquality().hash(specifications),
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'ItemRequest(name: $name, code: $code, type: $type, unit: $unit, description: $description, category: $category, brand: $brand, basePrice: $basePrice, costPrice: $costPrice, barcode: $barcode, imageUrl: $imageUrl, isActive: $isActive, specifications: $specifications, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $ItemRequestCopyWith<$Res> {
  factory $ItemRequestCopyWith(
          ItemRequest value, $Res Function(ItemRequest) _then) =
      _$ItemRequestCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String code,
      String type,
      String unit,
      String? description,
      String? category,
      String? brand,
      Money? basePrice,
      Money? costPrice,
      String? barcode,
      String? imageUrl,
      bool isActive,
      Map<String, dynamic>? specifications,
      Map<String, dynamic>? metadata});

  $MoneyCopyWith<$Res>? get basePrice;
  $MoneyCopyWith<$Res>? get costPrice;
}

/// @nodoc
class _$ItemRequestCopyWithImpl<$Res> implements $ItemRequestCopyWith<$Res> {
  _$ItemRequestCopyWithImpl(this._self, this._then);

  final ItemRequest _self;
  final $Res Function(ItemRequest) _then;

  /// Create a copy of ItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? code = null,
    Object? type = null,
    Object? unit = null,
    Object? description = freezed,
    Object? category = freezed,
    Object? brand = freezed,
    Object? basePrice = freezed,
    Object? costPrice = freezed,
    Object? barcode = freezed,
    Object? imageUrl = freezed,
    Object? isActive = null,
    Object? specifications = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _self.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      basePrice: freezed == basePrice
          ? _self.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      costPrice: freezed == costPrice
          ? _self.costPrice
          : costPrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      barcode: freezed == barcode
          ? _self.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      specifications: freezed == specifications
          ? _self.specifications
          : specifications // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of ItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get basePrice {
    if (_self.basePrice == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_self.basePrice!, (value) {
      return _then(_self.copyWith(basePrice: value));
    });
  }

  /// Create a copy of ItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get costPrice {
    if (_self.costPrice == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_self.costPrice!, (value) {
      return _then(_self.copyWith(costPrice: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ItemRequest].
extension ItemRequestPatterns on ItemRequest {
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
    TResult Function(_ItemRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ItemRequest() when $default != null:
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
    TResult Function(_ItemRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ItemRequest():
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
    TResult? Function(_ItemRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ItemRequest() when $default != null:
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
            String name,
            String code,
            String type,
            String unit,
            String? description,
            String? category,
            String? brand,
            Money? basePrice,
            Money? costPrice,
            String? barcode,
            String? imageUrl,
            bool isActive,
            Map<String, dynamic>? specifications,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ItemRequest() when $default != null:
        return $default(
            _that.name,
            _that.code,
            _that.type,
            _that.unit,
            _that.description,
            _that.category,
            _that.brand,
            _that.basePrice,
            _that.costPrice,
            _that.barcode,
            _that.imageUrl,
            _that.isActive,
            _that.specifications,
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
            String name,
            String code,
            String type,
            String unit,
            String? description,
            String? category,
            String? brand,
            Money? basePrice,
            Money? costPrice,
            String? barcode,
            String? imageUrl,
            bool isActive,
            Map<String, dynamic>? specifications,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ItemRequest():
        return $default(
            _that.name,
            _that.code,
            _that.type,
            _that.unit,
            _that.description,
            _that.category,
            _that.brand,
            _that.basePrice,
            _that.costPrice,
            _that.barcode,
            _that.imageUrl,
            _that.isActive,
            _that.specifications,
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
            String name,
            String code,
            String type,
            String unit,
            String? description,
            String? category,
            String? brand,
            Money? basePrice,
            Money? costPrice,
            String? barcode,
            String? imageUrl,
            bool isActive,
            Map<String, dynamic>? specifications,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ItemRequest() when $default != null:
        return $default(
            _that.name,
            _that.code,
            _that.type,
            _that.unit,
            _that.description,
            _that.category,
            _that.brand,
            _that.basePrice,
            _that.costPrice,
            _that.barcode,
            _that.imageUrl,
            _that.isActive,
            _that.specifications,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ItemRequest implements ItemRequest {
  const _ItemRequest(
      {required this.name,
      required this.code,
      required this.type,
      required this.unit,
      this.description,
      this.category,
      this.brand,
      this.basePrice,
      this.costPrice,
      this.barcode,
      this.imageUrl,
      this.isActive = true,
      final Map<String, dynamic>? specifications,
      final Map<String, dynamic>? metadata})
      : _specifications = specifications,
        _metadata = metadata;
  factory _ItemRequest.fromJson(Map<String, dynamic> json) =>
      _$ItemRequestFromJson(json);

  @override
  final String name;
  @override
  final String code;
  @override
  final String type;
  @override
  final String unit;
  @override
  final String? description;
  @override
  final String? category;
  @override
  final String? brand;
  @override
  final Money? basePrice;
  @override
  final Money? costPrice;
  @override
  final String? barcode;
  @override
  final String? imageUrl;
  @override
  @JsonKey()
  final bool isActive;
  final Map<String, dynamic>? _specifications;
  @override
  Map<String, dynamic>? get specifications {
    final value = _specifications;
    if (value == null) return null;
    if (_specifications is EqualUnmodifiableMapView) return _specifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of ItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ItemRequestCopyWith<_ItemRequest> get copyWith =>
      __$ItemRequestCopyWithImpl<_ItemRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ItemRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItemRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.costPrice, costPrice) ||
                other.costPrice == costPrice) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality()
                .equals(other._specifications, _specifications) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      code,
      type,
      unit,
      description,
      category,
      brand,
      basePrice,
      costPrice,
      barcode,
      imageUrl,
      isActive,
      const DeepCollectionEquality().hash(_specifications),
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'ItemRequest(name: $name, code: $code, type: $type, unit: $unit, description: $description, category: $category, brand: $brand, basePrice: $basePrice, costPrice: $costPrice, barcode: $barcode, imageUrl: $imageUrl, isActive: $isActive, specifications: $specifications, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$ItemRequestCopyWith<$Res>
    implements $ItemRequestCopyWith<$Res> {
  factory _$ItemRequestCopyWith(
          _ItemRequest value, $Res Function(_ItemRequest) _then) =
      __$ItemRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String code,
      String type,
      String unit,
      String? description,
      String? category,
      String? brand,
      Money? basePrice,
      Money? costPrice,
      String? barcode,
      String? imageUrl,
      bool isActive,
      Map<String, dynamic>? specifications,
      Map<String, dynamic>? metadata});

  @override
  $MoneyCopyWith<$Res>? get basePrice;
  @override
  $MoneyCopyWith<$Res>? get costPrice;
}

/// @nodoc
class __$ItemRequestCopyWithImpl<$Res> implements _$ItemRequestCopyWith<$Res> {
  __$ItemRequestCopyWithImpl(this._self, this._then);

  final _ItemRequest _self;
  final $Res Function(_ItemRequest) _then;

  /// Create a copy of ItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? code = null,
    Object? type = null,
    Object? unit = null,
    Object? description = freezed,
    Object? category = freezed,
    Object? brand = freezed,
    Object? basePrice = freezed,
    Object? costPrice = freezed,
    Object? barcode = freezed,
    Object? imageUrl = freezed,
    Object? isActive = null,
    Object? specifications = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_ItemRequest(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _self.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      basePrice: freezed == basePrice
          ? _self.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      costPrice: freezed == costPrice
          ? _self.costPrice
          : costPrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      barcode: freezed == barcode
          ? _self.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      specifications: freezed == specifications
          ? _self._specifications
          : specifications // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of ItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get basePrice {
    if (_self.basePrice == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_self.basePrice!, (value) {
      return _then(_self.copyWith(basePrice: value));
    });
  }

  /// Create a copy of ItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get costPrice {
    if (_self.costPrice == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_self.costPrice!, (value) {
      return _then(_self.copyWith(costPrice: value));
    });
  }
}

/// @nodoc
mixin _$Location {
  String get id;
  String get name;
  String get code;
  String get status; // 'available', 'occupied', 'maintenance', 'inactive'
  DateTime get insertedAt;
  DateTime get updatedAt;
  String? get tenantId;
  String? get description;
  String? get type; // 'warehouse', 'store', 'production', etc.
  String? get parentId;
  String? get parentLocationId;
  String? get locationTypeId;
  DateTime? get deletedAt;
  Address? get address;
  ContactInfo? get contactInfo;
  Map<String, dynamic>? get metadata;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LocationCopyWith<Location> get copyWith =>
      _$LocationCopyWithImpl<Location>(this as Location, _$identity);

  /// Serializes this Location to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Location &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.insertedAt, insertedAt) ||
                other.insertedAt == insertedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.parentLocationId, parentLocationId) ||
                other.parentLocationId == parentLocationId) &&
            (identical(other.locationTypeId, locationTypeId) ||
                other.locationTypeId == locationTypeId) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.contactInfo, contactInfo) ||
                other.contactInfo == contactInfo) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      code,
      status,
      insertedAt,
      updatedAt,
      tenantId,
      description,
      type,
      parentId,
      parentLocationId,
      locationTypeId,
      deletedAt,
      address,
      contactInfo,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'Location(id: $id, name: $name, code: $code, status: $status, insertedAt: $insertedAt, updatedAt: $updatedAt, tenantId: $tenantId, description: $description, type: $type, parentId: $parentId, parentLocationId: $parentLocationId, locationTypeId: $locationTypeId, deletedAt: $deletedAt, address: $address, contactInfo: $contactInfo, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) _then) =
      _$LocationCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String code,
      String status,
      DateTime insertedAt,
      DateTime updatedAt,
      String? tenantId,
      String? description,
      String? type,
      String? parentId,
      String? parentLocationId,
      String? locationTypeId,
      DateTime? deletedAt,
      Address? address,
      ContactInfo? contactInfo,
      Map<String, dynamic>? metadata});

  $AddressCopyWith<$Res>? get address;
  $ContactInfoCopyWith<$Res>? get contactInfo;
}

/// @nodoc
class _$LocationCopyWithImpl<$Res> implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._self, this._then);

  final Location _self;
  final $Res Function(Location) _then;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? status = null,
    Object? insertedAt = null,
    Object? updatedAt = null,
    Object? tenantId = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? parentId = freezed,
    Object? parentLocationId = freezed,
    Object? locationTypeId = freezed,
    Object? deletedAt = freezed,
    Object? address = freezed,
    Object? contactInfo = freezed,
    Object? metadata = freezed,
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
      tenantId: freezed == tenantId
          ? _self.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _self.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      parentLocationId: freezed == parentLocationId
          ? _self.parentLocationId
          : parentLocationId // ignore: cast_nullable_to_non_nullable
              as String?,
      locationTypeId: freezed == locationTypeId
          ? _self.locationTypeId
          : locationTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _self.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      contactInfo: freezed == contactInfo
          ? _self.contactInfo
          : contactInfo // ignore: cast_nullable_to_non_nullable
              as ContactInfo?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_self.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_self.address!, (value) {
      return _then(_self.copyWith(address: value));
    });
  }

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactInfoCopyWith<$Res>? get contactInfo {
    if (_self.contactInfo == null) {
      return null;
    }

    return $ContactInfoCopyWith<$Res>(_self.contactInfo!, (value) {
      return _then(_self.copyWith(contactInfo: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Location].
extension LocationPatterns on Location {
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
    TResult Function(_Location value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Location() when $default != null:
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
    TResult Function(_Location value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Location():
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
    TResult? Function(_Location value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Location() when $default != null:
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
            String name,
            String code,
            String status,
            DateTime insertedAt,
            DateTime updatedAt,
            String? tenantId,
            String? description,
            String? type,
            String? parentId,
            String? parentLocationId,
            String? locationTypeId,
            DateTime? deletedAt,
            Address? address,
            ContactInfo? contactInfo,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Location() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.code,
            _that.status,
            _that.insertedAt,
            _that.updatedAt,
            _that.tenantId,
            _that.description,
            _that.type,
            _that.parentId,
            _that.parentLocationId,
            _that.locationTypeId,
            _that.deletedAt,
            _that.address,
            _that.contactInfo,
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
            String name,
            String code,
            String status,
            DateTime insertedAt,
            DateTime updatedAt,
            String? tenantId,
            String? description,
            String? type,
            String? parentId,
            String? parentLocationId,
            String? locationTypeId,
            DateTime? deletedAt,
            Address? address,
            ContactInfo? contactInfo,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Location():
        return $default(
            _that.id,
            _that.name,
            _that.code,
            _that.status,
            _that.insertedAt,
            _that.updatedAt,
            _that.tenantId,
            _that.description,
            _that.type,
            _that.parentId,
            _that.parentLocationId,
            _that.locationTypeId,
            _that.deletedAt,
            _that.address,
            _that.contactInfo,
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
            String name,
            String code,
            String status,
            DateTime insertedAt,
            DateTime updatedAt,
            String? tenantId,
            String? description,
            String? type,
            String? parentId,
            String? parentLocationId,
            String? locationTypeId,
            DateTime? deletedAt,
            Address? address,
            ContactInfo? contactInfo,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Location() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.code,
            _that.status,
            _that.insertedAt,
            _that.updatedAt,
            _that.tenantId,
            _that.description,
            _that.type,
            _that.parentId,
            _that.parentLocationId,
            _that.locationTypeId,
            _that.deletedAt,
            _that.address,
            _that.contactInfo,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Location implements Location {
  const _Location(
      {required this.id,
      required this.name,
      required this.code,
      required this.status,
      required this.insertedAt,
      required this.updatedAt,
      this.tenantId,
      this.description,
      this.type,
      this.parentId,
      this.parentLocationId,
      this.locationTypeId,
      this.deletedAt,
      this.address,
      this.contactInfo,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String code;
  @override
  final String status;
// 'available', 'occupied', 'maintenance', 'inactive'
  @override
  final DateTime insertedAt;
  @override
  final DateTime updatedAt;
  @override
  final String? tenantId;
  @override
  final String? description;
  @override
  final String? type;
// 'warehouse', 'store', 'production', etc.
  @override
  final String? parentId;
  @override
  final String? parentLocationId;
  @override
  final String? locationTypeId;
  @override
  final DateTime? deletedAt;
  @override
  final Address? address;
  @override
  final ContactInfo? contactInfo;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LocationCopyWith<_Location> get copyWith =>
      __$LocationCopyWithImpl<_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LocationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Location &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.insertedAt, insertedAt) ||
                other.insertedAt == insertedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.parentLocationId, parentLocationId) ||
                other.parentLocationId == parentLocationId) &&
            (identical(other.locationTypeId, locationTypeId) ||
                other.locationTypeId == locationTypeId) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.contactInfo, contactInfo) ||
                other.contactInfo == contactInfo) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      code,
      status,
      insertedAt,
      updatedAt,
      tenantId,
      description,
      type,
      parentId,
      parentLocationId,
      locationTypeId,
      deletedAt,
      address,
      contactInfo,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'Location(id: $id, name: $name, code: $code, status: $status, insertedAt: $insertedAt, updatedAt: $updatedAt, tenantId: $tenantId, description: $description, type: $type, parentId: $parentId, parentLocationId: $parentLocationId, locationTypeId: $locationTypeId, deletedAt: $deletedAt, address: $address, contactInfo: $contactInfo, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$LocationCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$LocationCopyWith(_Location value, $Res Function(_Location) _then) =
      __$LocationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String code,
      String status,
      DateTime insertedAt,
      DateTime updatedAt,
      String? tenantId,
      String? description,
      String? type,
      String? parentId,
      String? parentLocationId,
      String? locationTypeId,
      DateTime? deletedAt,
      Address? address,
      ContactInfo? contactInfo,
      Map<String, dynamic>? metadata});

  @override
  $AddressCopyWith<$Res>? get address;
  @override
  $ContactInfoCopyWith<$Res>? get contactInfo;
}

/// @nodoc
class __$LocationCopyWithImpl<$Res> implements _$LocationCopyWith<$Res> {
  __$LocationCopyWithImpl(this._self, this._then);

  final _Location _self;
  final $Res Function(_Location) _then;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? status = null,
    Object? insertedAt = null,
    Object? updatedAt = null,
    Object? tenantId = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? parentId = freezed,
    Object? parentLocationId = freezed,
    Object? locationTypeId = freezed,
    Object? deletedAt = freezed,
    Object? address = freezed,
    Object? contactInfo = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_Location(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
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
      tenantId: freezed == tenantId
          ? _self.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _self.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      parentLocationId: freezed == parentLocationId
          ? _self.parentLocationId
          : parentLocationId // ignore: cast_nullable_to_non_nullable
              as String?,
      locationTypeId: freezed == locationTypeId
          ? _self.locationTypeId
          : locationTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _self.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      contactInfo: freezed == contactInfo
          ? _self.contactInfo
          : contactInfo // ignore: cast_nullable_to_non_nullable
              as ContactInfo?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_self.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_self.address!, (value) {
      return _then(_self.copyWith(address: value));
    });
  }

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactInfoCopyWith<$Res>? get contactInfo {
    if (_self.contactInfo == null) {
      return null;
    }

    return $ContactInfoCopyWith<$Res>(_self.contactInfo!, (value) {
      return _then(_self.copyWith(contactInfo: value));
    });
  }
}

/// @nodoc
mixin _$StockAdjustmentRequest {
  String get itemId;
  String get locationId;
  double get quantity;
  String get reason;
  String? get notes;
  Money? get cost;

  /// Create a copy of StockAdjustmentRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StockAdjustmentRequestCopyWith<StockAdjustmentRequest> get copyWith =>
      _$StockAdjustmentRequestCopyWithImpl<StockAdjustmentRequest>(
          this as StockAdjustmentRequest, _$identity);

  /// Serializes this StockAdjustmentRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StockAdjustmentRequest &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.cost, cost) || other.cost == cost));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, itemId, locationId, quantity, reason, notes, cost);

  @override
  String toString() {
    return 'StockAdjustmentRequest(itemId: $itemId, locationId: $locationId, quantity: $quantity, reason: $reason, notes: $notes, cost: $cost)';
  }
}

/// @nodoc
abstract mixin class $StockAdjustmentRequestCopyWith<$Res> {
  factory $StockAdjustmentRequestCopyWith(StockAdjustmentRequest value,
          $Res Function(StockAdjustmentRequest) _then) =
      _$StockAdjustmentRequestCopyWithImpl;
  @useResult
  $Res call(
      {String itemId,
      String locationId,
      double quantity,
      String reason,
      String? notes,
      Money? cost});

  $MoneyCopyWith<$Res>? get cost;
}

/// @nodoc
class _$StockAdjustmentRequestCopyWithImpl<$Res>
    implements $StockAdjustmentRequestCopyWith<$Res> {
  _$StockAdjustmentRequestCopyWithImpl(this._self, this._then);

  final StockAdjustmentRequest _self;
  final $Res Function(StockAdjustmentRequest) _then;

  /// Create a copy of StockAdjustmentRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? locationId = null,
    Object? quantity = null,
    Object? reason = null,
    Object? notes = freezed,
    Object? cost = freezed,
  }) {
    return _then(_self.copyWith(
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      cost: freezed == cost
          ? _self.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as Money?,
    ));
  }

  /// Create a copy of StockAdjustmentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get cost {
    if (_self.cost == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_self.cost!, (value) {
      return _then(_self.copyWith(cost: value));
    });
  }
}

/// Adds pattern-matching-related methods to [StockAdjustmentRequest].
extension StockAdjustmentRequestPatterns on StockAdjustmentRequest {
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
    TResult Function(_StockAdjustmentRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StockAdjustmentRequest() when $default != null:
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
    TResult Function(_StockAdjustmentRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockAdjustmentRequest():
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
    TResult? Function(_StockAdjustmentRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockAdjustmentRequest() when $default != null:
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
    TResult Function(String itemId, String locationId, double quantity,
            String reason, String? notes, Money? cost)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StockAdjustmentRequest() when $default != null:
        return $default(_that.itemId, _that.locationId, _that.quantity,
            _that.reason, _that.notes, _that.cost);
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
    TResult Function(String itemId, String locationId, double quantity,
            String reason, String? notes, Money? cost)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockAdjustmentRequest():
        return $default(_that.itemId, _that.locationId, _that.quantity,
            _that.reason, _that.notes, _that.cost);
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
    TResult? Function(String itemId, String locationId, double quantity,
            String reason, String? notes, Money? cost)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockAdjustmentRequest() when $default != null:
        return $default(_that.itemId, _that.locationId, _that.quantity,
            _that.reason, _that.notes, _that.cost);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StockAdjustmentRequest implements StockAdjustmentRequest {
  const _StockAdjustmentRequest(
      {required this.itemId,
      required this.locationId,
      required this.quantity,
      required this.reason,
      this.notes,
      this.cost});
  factory _StockAdjustmentRequest.fromJson(Map<String, dynamic> json) =>
      _$StockAdjustmentRequestFromJson(json);

  @override
  final String itemId;
  @override
  final String locationId;
  @override
  final double quantity;
  @override
  final String reason;
  @override
  final String? notes;
  @override
  final Money? cost;

  /// Create a copy of StockAdjustmentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StockAdjustmentRequestCopyWith<_StockAdjustmentRequest> get copyWith =>
      __$StockAdjustmentRequestCopyWithImpl<_StockAdjustmentRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StockAdjustmentRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StockAdjustmentRequest &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.cost, cost) || other.cost == cost));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, itemId, locationId, quantity, reason, notes, cost);

  @override
  String toString() {
    return 'StockAdjustmentRequest(itemId: $itemId, locationId: $locationId, quantity: $quantity, reason: $reason, notes: $notes, cost: $cost)';
  }
}

/// @nodoc
abstract mixin class _$StockAdjustmentRequestCopyWith<$Res>
    implements $StockAdjustmentRequestCopyWith<$Res> {
  factory _$StockAdjustmentRequestCopyWith(_StockAdjustmentRequest value,
          $Res Function(_StockAdjustmentRequest) _then) =
      __$StockAdjustmentRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String itemId,
      String locationId,
      double quantity,
      String reason,
      String? notes,
      Money? cost});

  @override
  $MoneyCopyWith<$Res>? get cost;
}

/// @nodoc
class __$StockAdjustmentRequestCopyWithImpl<$Res>
    implements _$StockAdjustmentRequestCopyWith<$Res> {
  __$StockAdjustmentRequestCopyWithImpl(this._self, this._then);

  final _StockAdjustmentRequest _self;
  final $Res Function(_StockAdjustmentRequest) _then;

  /// Create a copy of StockAdjustmentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? itemId = null,
    Object? locationId = null,
    Object? quantity = null,
    Object? reason = null,
    Object? notes = freezed,
    Object? cost = freezed,
  }) {
    return _then(_StockAdjustmentRequest(
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      cost: freezed == cost
          ? _self.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as Money?,
    ));
  }

  /// Create a copy of StockAdjustmentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get cost {
    if (_self.cost == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_self.cost!, (value) {
      return _then(_self.copyWith(cost: value));
    });
  }
}

/// @nodoc
mixin _$StockEntry {
  String get id;
  String get itemId;
  String get locationId;
  double get quantity;
  double get availableQuantity;
  double get reservedQuantity;
  DateTime get lastUpdated;
  double? get minQuantity;
  double? get maxQuantity;
  Money? get averageCost;
  Map<String, dynamic>? get metadata;

  /// Create a copy of StockEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StockEntryCopyWith<StockEntry> get copyWith =>
      _$StockEntryCopyWithImpl<StockEntry>(this as StockEntry, _$identity);

  /// Serializes this StockEntry to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StockEntry &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.availableQuantity, availableQuantity) ||
                other.availableQuantity == availableQuantity) &&
            (identical(other.reservedQuantity, reservedQuantity) ||
                other.reservedQuantity == reservedQuantity) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.minQuantity, minQuantity) ||
                other.minQuantity == minQuantity) &&
            (identical(other.maxQuantity, maxQuantity) ||
                other.maxQuantity == maxQuantity) &&
            (identical(other.averageCost, averageCost) ||
                other.averageCost == averageCost) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      itemId,
      locationId,
      quantity,
      availableQuantity,
      reservedQuantity,
      lastUpdated,
      minQuantity,
      maxQuantity,
      averageCost,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'StockEntry(id: $id, itemId: $itemId, locationId: $locationId, quantity: $quantity, availableQuantity: $availableQuantity, reservedQuantity: $reservedQuantity, lastUpdated: $lastUpdated, minQuantity: $minQuantity, maxQuantity: $maxQuantity, averageCost: $averageCost, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $StockEntryCopyWith<$Res> {
  factory $StockEntryCopyWith(
          StockEntry value, $Res Function(StockEntry) _then) =
      _$StockEntryCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String itemId,
      String locationId,
      double quantity,
      double availableQuantity,
      double reservedQuantity,
      DateTime lastUpdated,
      double? minQuantity,
      double? maxQuantity,
      Money? averageCost,
      Map<String, dynamic>? metadata});

  $MoneyCopyWith<$Res>? get averageCost;
}

/// @nodoc
class _$StockEntryCopyWithImpl<$Res> implements $StockEntryCopyWith<$Res> {
  _$StockEntryCopyWithImpl(this._self, this._then);

  final StockEntry _self;
  final $Res Function(StockEntry) _then;

  /// Create a copy of StockEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? itemId = null,
    Object? locationId = null,
    Object? quantity = null,
    Object? availableQuantity = null,
    Object? reservedQuantity = null,
    Object? lastUpdated = null,
    Object? minQuantity = freezed,
    Object? maxQuantity = freezed,
    Object? averageCost = freezed,
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
      locationId: null == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      availableQuantity: null == availableQuantity
          ? _self.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      reservedQuantity: null == reservedQuantity
          ? _self.reservedQuantity
          : reservedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      lastUpdated: null == lastUpdated
          ? _self.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      minQuantity: freezed == minQuantity
          ? _self.minQuantity
          : minQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      maxQuantity: freezed == maxQuantity
          ? _self.maxQuantity
          : maxQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      averageCost: freezed == averageCost
          ? _self.averageCost
          : averageCost // ignore: cast_nullable_to_non_nullable
              as Money?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of StockEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get averageCost {
    if (_self.averageCost == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_self.averageCost!, (value) {
      return _then(_self.copyWith(averageCost: value));
    });
  }
}

/// Adds pattern-matching-related methods to [StockEntry].
extension StockEntryPatterns on StockEntry {
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
    TResult Function(_StockEntry value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StockEntry() when $default != null:
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
    TResult Function(_StockEntry value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockEntry():
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
    TResult? Function(_StockEntry value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockEntry() when $default != null:
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
            String locationId,
            double quantity,
            double availableQuantity,
            double reservedQuantity,
            DateTime lastUpdated,
            double? minQuantity,
            double? maxQuantity,
            Money? averageCost,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StockEntry() when $default != null:
        return $default(
            _that.id,
            _that.itemId,
            _that.locationId,
            _that.quantity,
            _that.availableQuantity,
            _that.reservedQuantity,
            _that.lastUpdated,
            _that.minQuantity,
            _that.maxQuantity,
            _that.averageCost,
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
            String locationId,
            double quantity,
            double availableQuantity,
            double reservedQuantity,
            DateTime lastUpdated,
            double? minQuantity,
            double? maxQuantity,
            Money? averageCost,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockEntry():
        return $default(
            _that.id,
            _that.itemId,
            _that.locationId,
            _that.quantity,
            _that.availableQuantity,
            _that.reservedQuantity,
            _that.lastUpdated,
            _that.minQuantity,
            _that.maxQuantity,
            _that.averageCost,
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
            String locationId,
            double quantity,
            double availableQuantity,
            double reservedQuantity,
            DateTime lastUpdated,
            double? minQuantity,
            double? maxQuantity,
            Money? averageCost,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockEntry() when $default != null:
        return $default(
            _that.id,
            _that.itemId,
            _that.locationId,
            _that.quantity,
            _that.availableQuantity,
            _that.reservedQuantity,
            _that.lastUpdated,
            _that.minQuantity,
            _that.maxQuantity,
            _that.averageCost,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StockEntry implements StockEntry {
  const _StockEntry(
      {required this.id,
      required this.itemId,
      required this.locationId,
      required this.quantity,
      required this.availableQuantity,
      required this.reservedQuantity,
      required this.lastUpdated,
      this.minQuantity,
      this.maxQuantity,
      this.averageCost,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _StockEntry.fromJson(Map<String, dynamic> json) =>
      _$StockEntryFromJson(json);

  @override
  final String id;
  @override
  final String itemId;
  @override
  final String locationId;
  @override
  final double quantity;
  @override
  final double availableQuantity;
  @override
  final double reservedQuantity;
  @override
  final DateTime lastUpdated;
  @override
  final double? minQuantity;
  @override
  final double? maxQuantity;
  @override
  final Money? averageCost;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of StockEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StockEntryCopyWith<_StockEntry> get copyWith =>
      __$StockEntryCopyWithImpl<_StockEntry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StockEntryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StockEntry &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.availableQuantity, availableQuantity) ||
                other.availableQuantity == availableQuantity) &&
            (identical(other.reservedQuantity, reservedQuantity) ||
                other.reservedQuantity == reservedQuantity) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.minQuantity, minQuantity) ||
                other.minQuantity == minQuantity) &&
            (identical(other.maxQuantity, maxQuantity) ||
                other.maxQuantity == maxQuantity) &&
            (identical(other.averageCost, averageCost) ||
                other.averageCost == averageCost) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      itemId,
      locationId,
      quantity,
      availableQuantity,
      reservedQuantity,
      lastUpdated,
      minQuantity,
      maxQuantity,
      averageCost,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'StockEntry(id: $id, itemId: $itemId, locationId: $locationId, quantity: $quantity, availableQuantity: $availableQuantity, reservedQuantity: $reservedQuantity, lastUpdated: $lastUpdated, minQuantity: $minQuantity, maxQuantity: $maxQuantity, averageCost: $averageCost, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$StockEntryCopyWith<$Res>
    implements $StockEntryCopyWith<$Res> {
  factory _$StockEntryCopyWith(
          _StockEntry value, $Res Function(_StockEntry) _then) =
      __$StockEntryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String itemId,
      String locationId,
      double quantity,
      double availableQuantity,
      double reservedQuantity,
      DateTime lastUpdated,
      double? minQuantity,
      double? maxQuantity,
      Money? averageCost,
      Map<String, dynamic>? metadata});

  @override
  $MoneyCopyWith<$Res>? get averageCost;
}

/// @nodoc
class __$StockEntryCopyWithImpl<$Res> implements _$StockEntryCopyWith<$Res> {
  __$StockEntryCopyWithImpl(this._self, this._then);

  final _StockEntry _self;
  final $Res Function(_StockEntry) _then;

  /// Create a copy of StockEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? itemId = null,
    Object? locationId = null,
    Object? quantity = null,
    Object? availableQuantity = null,
    Object? reservedQuantity = null,
    Object? lastUpdated = null,
    Object? minQuantity = freezed,
    Object? maxQuantity = freezed,
    Object? averageCost = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_StockEntry(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      availableQuantity: null == availableQuantity
          ? _self.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      reservedQuantity: null == reservedQuantity
          ? _self.reservedQuantity
          : reservedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      lastUpdated: null == lastUpdated
          ? _self.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      minQuantity: freezed == minQuantity
          ? _self.minQuantity
          : minQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      maxQuantity: freezed == maxQuantity
          ? _self.maxQuantity
          : maxQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      averageCost: freezed == averageCost
          ? _self.averageCost
          : averageCost // ignore: cast_nullable_to_non_nullable
              as Money?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of StockEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get averageCost {
    if (_self.averageCost == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_self.averageCost!, (value) {
      return _then(_self.copyWith(averageCost: value));
    });
  }
}

/// @nodoc
mixin _$StockMovement {
  String get id;
  String get itemId;
  String get locationId;
  String get type; // 'in', 'out', 'transfer', 'adjustment'
  double get quantity;
  DateTime get movementDate;
  AuditInfo get auditInfo;
  double? get cost;
  String? get referenceType;
  String? get referenceId;
  String? get notes;

  /// Create a copy of StockMovement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StockMovementCopyWith<StockMovement> get copyWith =>
      _$StockMovementCopyWithImpl<StockMovement>(
          this as StockMovement, _$identity);

  /// Serializes this StockMovement to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StockMovement &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.movementDate, movementDate) ||
                other.movementDate == movementDate) &&
            (identical(other.auditInfo, auditInfo) ||
                other.auditInfo == auditInfo) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.referenceType, referenceType) ||
                other.referenceType == referenceType) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      itemId,
      locationId,
      type,
      quantity,
      movementDate,
      auditInfo,
      cost,
      referenceType,
      referenceId,
      notes);

  @override
  String toString() {
    return 'StockMovement(id: $id, itemId: $itemId, locationId: $locationId, type: $type, quantity: $quantity, movementDate: $movementDate, auditInfo: $auditInfo, cost: $cost, referenceType: $referenceType, referenceId: $referenceId, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $StockMovementCopyWith<$Res> {
  factory $StockMovementCopyWith(
          StockMovement value, $Res Function(StockMovement) _then) =
      _$StockMovementCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String itemId,
      String locationId,
      String type,
      double quantity,
      DateTime movementDate,
      AuditInfo auditInfo,
      double? cost,
      String? referenceType,
      String? referenceId,
      String? notes});

  $AuditInfoCopyWith<$Res> get auditInfo;
}

/// @nodoc
class _$StockMovementCopyWithImpl<$Res>
    implements $StockMovementCopyWith<$Res> {
  _$StockMovementCopyWithImpl(this._self, this._then);

  final StockMovement _self;
  final $Res Function(StockMovement) _then;

  /// Create a copy of StockMovement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? itemId = null,
    Object? locationId = null,
    Object? type = null,
    Object? quantity = null,
    Object? movementDate = null,
    Object? auditInfo = null,
    Object? cost = freezed,
    Object? referenceType = freezed,
    Object? referenceId = freezed,
    Object? notes = freezed,
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
      locationId: null == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      movementDate: null == movementDate
          ? _self.movementDate
          : movementDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      auditInfo: null == auditInfo
          ? _self.auditInfo
          : auditInfo // ignore: cast_nullable_to_non_nullable
              as AuditInfo,
      cost: freezed == cost
          ? _self.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double?,
      referenceType: freezed == referenceType
          ? _self.referenceType
          : referenceType // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _self.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of StockMovement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuditInfoCopyWith<$Res> get auditInfo {
    return $AuditInfoCopyWith<$Res>(_self.auditInfo, (value) {
      return _then(_self.copyWith(auditInfo: value));
    });
  }
}

/// Adds pattern-matching-related methods to [StockMovement].
extension StockMovementPatterns on StockMovement {
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
    TResult Function(_StockMovement value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StockMovement() when $default != null:
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
    TResult Function(_StockMovement value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockMovement():
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
    TResult? Function(_StockMovement value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockMovement() when $default != null:
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
            String locationId,
            String type,
            double quantity,
            DateTime movementDate,
            AuditInfo auditInfo,
            double? cost,
            String? referenceType,
            String? referenceId,
            String? notes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StockMovement() when $default != null:
        return $default(
            _that.id,
            _that.itemId,
            _that.locationId,
            _that.type,
            _that.quantity,
            _that.movementDate,
            _that.auditInfo,
            _that.cost,
            _that.referenceType,
            _that.referenceId,
            _that.notes);
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
            String locationId,
            String type,
            double quantity,
            DateTime movementDate,
            AuditInfo auditInfo,
            double? cost,
            String? referenceType,
            String? referenceId,
            String? notes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockMovement():
        return $default(
            _that.id,
            _that.itemId,
            _that.locationId,
            _that.type,
            _that.quantity,
            _that.movementDate,
            _that.auditInfo,
            _that.cost,
            _that.referenceType,
            _that.referenceId,
            _that.notes);
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
            String locationId,
            String type,
            double quantity,
            DateTime movementDate,
            AuditInfo auditInfo,
            double? cost,
            String? referenceType,
            String? referenceId,
            String? notes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockMovement() when $default != null:
        return $default(
            _that.id,
            _that.itemId,
            _that.locationId,
            _that.type,
            _that.quantity,
            _that.movementDate,
            _that.auditInfo,
            _that.cost,
            _that.referenceType,
            _that.referenceId,
            _that.notes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StockMovement implements StockMovement {
  const _StockMovement(
      {required this.id,
      required this.itemId,
      required this.locationId,
      required this.type,
      required this.quantity,
      required this.movementDate,
      required this.auditInfo,
      this.cost,
      this.referenceType,
      this.referenceId,
      this.notes});
  factory _StockMovement.fromJson(Map<String, dynamic> json) =>
      _$StockMovementFromJson(json);

  @override
  final String id;
  @override
  final String itemId;
  @override
  final String locationId;
  @override
  final String type;
// 'in', 'out', 'transfer', 'adjustment'
  @override
  final double quantity;
  @override
  final DateTime movementDate;
  @override
  final AuditInfo auditInfo;
  @override
  final double? cost;
  @override
  final String? referenceType;
  @override
  final String? referenceId;
  @override
  final String? notes;

  /// Create a copy of StockMovement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StockMovementCopyWith<_StockMovement> get copyWith =>
      __$StockMovementCopyWithImpl<_StockMovement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StockMovementToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StockMovement &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.movementDate, movementDate) ||
                other.movementDate == movementDate) &&
            (identical(other.auditInfo, auditInfo) ||
                other.auditInfo == auditInfo) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.referenceType, referenceType) ||
                other.referenceType == referenceType) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      itemId,
      locationId,
      type,
      quantity,
      movementDate,
      auditInfo,
      cost,
      referenceType,
      referenceId,
      notes);

  @override
  String toString() {
    return 'StockMovement(id: $id, itemId: $itemId, locationId: $locationId, type: $type, quantity: $quantity, movementDate: $movementDate, auditInfo: $auditInfo, cost: $cost, referenceType: $referenceType, referenceId: $referenceId, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$StockMovementCopyWith<$Res>
    implements $StockMovementCopyWith<$Res> {
  factory _$StockMovementCopyWith(
          _StockMovement value, $Res Function(_StockMovement) _then) =
      __$StockMovementCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String itemId,
      String locationId,
      String type,
      double quantity,
      DateTime movementDate,
      AuditInfo auditInfo,
      double? cost,
      String? referenceType,
      String? referenceId,
      String? notes});

  @override
  $AuditInfoCopyWith<$Res> get auditInfo;
}

/// @nodoc
class __$StockMovementCopyWithImpl<$Res>
    implements _$StockMovementCopyWith<$Res> {
  __$StockMovementCopyWithImpl(this._self, this._then);

  final _StockMovement _self;
  final $Res Function(_StockMovement) _then;

  /// Create a copy of StockMovement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? itemId = null,
    Object? locationId = null,
    Object? type = null,
    Object? quantity = null,
    Object? movementDate = null,
    Object? auditInfo = null,
    Object? cost = freezed,
    Object? referenceType = freezed,
    Object? referenceId = freezed,
    Object? notes = freezed,
  }) {
    return _then(_StockMovement(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _self.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      movementDate: null == movementDate
          ? _self.movementDate
          : movementDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      auditInfo: null == auditInfo
          ? _self.auditInfo
          : auditInfo // ignore: cast_nullable_to_non_nullable
              as AuditInfo,
      cost: freezed == cost
          ? _self.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double?,
      referenceType: freezed == referenceType
          ? _self.referenceType
          : referenceType // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _self.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of StockMovement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuditInfoCopyWith<$Res> get auditInfo {
    return $AuditInfoCopyWith<$Res>(_self.auditInfo, (value) {
      return _then(_self.copyWith(auditInfo: value));
    });
  }
}

/// @nodoc
mixin _$StockTransferRequest {
  String get itemId;
  String get fromLocationId;
  String get toLocationId;
  double get quantity;
  String? get notes;

  /// Create a copy of StockTransferRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StockTransferRequestCopyWith<StockTransferRequest> get copyWith =>
      _$StockTransferRequestCopyWithImpl<StockTransferRequest>(
          this as StockTransferRequest, _$identity);

  /// Serializes this StockTransferRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StockTransferRequest &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.fromLocationId, fromLocationId) ||
                other.fromLocationId == fromLocationId) &&
            (identical(other.toLocationId, toLocationId) ||
                other.toLocationId == toLocationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, itemId, fromLocationId, toLocationId, quantity, notes);

  @override
  String toString() {
    return 'StockTransferRequest(itemId: $itemId, fromLocationId: $fromLocationId, toLocationId: $toLocationId, quantity: $quantity, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $StockTransferRequestCopyWith<$Res> {
  factory $StockTransferRequestCopyWith(StockTransferRequest value,
          $Res Function(StockTransferRequest) _then) =
      _$StockTransferRequestCopyWithImpl;
  @useResult
  $Res call(
      {String itemId,
      String fromLocationId,
      String toLocationId,
      double quantity,
      String? notes});
}

/// @nodoc
class _$StockTransferRequestCopyWithImpl<$Res>
    implements $StockTransferRequestCopyWith<$Res> {
  _$StockTransferRequestCopyWithImpl(this._self, this._then);

  final StockTransferRequest _self;
  final $Res Function(StockTransferRequest) _then;

  /// Create a copy of StockTransferRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? fromLocationId = null,
    Object? toLocationId = null,
    Object? quantity = null,
    Object? notes = freezed,
  }) {
    return _then(_self.copyWith(
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      fromLocationId: null == fromLocationId
          ? _self.fromLocationId
          : fromLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      toLocationId: null == toLocationId
          ? _self.toLocationId
          : toLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [StockTransferRequest].
extension StockTransferRequestPatterns on StockTransferRequest {
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
    TResult Function(_StockTransferRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StockTransferRequest() when $default != null:
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
    TResult Function(_StockTransferRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockTransferRequest():
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
    TResult? Function(_StockTransferRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockTransferRequest() when $default != null:
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
    TResult Function(String itemId, String fromLocationId, String toLocationId,
            double quantity, String? notes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StockTransferRequest() when $default != null:
        return $default(_that.itemId, _that.fromLocationId, _that.toLocationId,
            _that.quantity, _that.notes);
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
    TResult Function(String itemId, String fromLocationId, String toLocationId,
            double quantity, String? notes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockTransferRequest():
        return $default(_that.itemId, _that.fromLocationId, _that.toLocationId,
            _that.quantity, _that.notes);
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
    TResult? Function(String itemId, String fromLocationId, String toLocationId,
            double quantity, String? notes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockTransferRequest() when $default != null:
        return $default(_that.itemId, _that.fromLocationId, _that.toLocationId,
            _that.quantity, _that.notes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StockTransferRequest implements StockTransferRequest {
  const _StockTransferRequest(
      {required this.itemId,
      required this.fromLocationId,
      required this.toLocationId,
      required this.quantity,
      this.notes});
  factory _StockTransferRequest.fromJson(Map<String, dynamic> json) =>
      _$StockTransferRequestFromJson(json);

  @override
  final String itemId;
  @override
  final String fromLocationId;
  @override
  final String toLocationId;
  @override
  final double quantity;
  @override
  final String? notes;

  /// Create a copy of StockTransferRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StockTransferRequestCopyWith<_StockTransferRequest> get copyWith =>
      __$StockTransferRequestCopyWithImpl<_StockTransferRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StockTransferRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StockTransferRequest &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.fromLocationId, fromLocationId) ||
                other.fromLocationId == fromLocationId) &&
            (identical(other.toLocationId, toLocationId) ||
                other.toLocationId == toLocationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, itemId, fromLocationId, toLocationId, quantity, notes);

  @override
  String toString() {
    return 'StockTransferRequest(itemId: $itemId, fromLocationId: $fromLocationId, toLocationId: $toLocationId, quantity: $quantity, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$StockTransferRequestCopyWith<$Res>
    implements $StockTransferRequestCopyWith<$Res> {
  factory _$StockTransferRequestCopyWith(_StockTransferRequest value,
          $Res Function(_StockTransferRequest) _then) =
      __$StockTransferRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String itemId,
      String fromLocationId,
      String toLocationId,
      double quantity,
      String? notes});
}

/// @nodoc
class __$StockTransferRequestCopyWithImpl<$Res>
    implements _$StockTransferRequestCopyWith<$Res> {
  __$StockTransferRequestCopyWithImpl(this._self, this._then);

  final _StockTransferRequest _self;
  final $Res Function(_StockTransferRequest) _then;

  /// Create a copy of StockTransferRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? itemId = null,
    Object? fromLocationId = null,
    Object? toLocationId = null,
    Object? quantity = null,
    Object? notes = freezed,
  }) {
    return _then(_StockTransferRequest(
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      fromLocationId: null == fromLocationId
          ? _self.fromLocationId
          : fromLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      toLocationId: null == toLocationId
          ? _self.toLocationId
          : toLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
