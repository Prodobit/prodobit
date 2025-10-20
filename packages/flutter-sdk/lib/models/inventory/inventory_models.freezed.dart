// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get type =>
      throw _privateConstructorUsedError; // 'product', 'service', 'raw_material', etc.
  String get unit => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  AuditInfo get auditInfo => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  Money? get basePrice => throw _privateConstructorUsedError;
  Money? get costPrice => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  Map<String, dynamic>? get specifications =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
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
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      auditInfo: null == auditInfo
          ? _value.auditInfo
          : auditInfo // ignore: cast_nullable_to_non_nullable
              as AuditInfo,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      basePrice: freezed == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      costPrice: freezed == costPrice
          ? _value.costPrice
          : costPrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      specifications: freezed == specifications
          ? _value.specifications
          : specifications // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuditInfoCopyWith<$Res> get auditInfo {
    return $AuditInfoCopyWith<$Res>(_value.auditInfo, (value) {
      return _then(_value.copyWith(auditInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get basePrice {
    if (_value.basePrice == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.basePrice!, (value) {
      return _then(_value.copyWith(basePrice: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get costPrice {
    if (_value.costPrice == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.costPrice!, (value) {
      return _then(_value.copyWith(costPrice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
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
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

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
    return _then(_$ItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      auditInfo: null == auditInfo
          ? _value.auditInfo
          : auditInfo // ignore: cast_nullable_to_non_nullable
              as AuditInfo,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      basePrice: freezed == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      costPrice: freezed == costPrice
          ? _value.costPrice
          : costPrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      specifications: freezed == specifications
          ? _value._specifications
          : specifications // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemImpl implements _Item {
  const _$ItemImpl(
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

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

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

  @override
  String toString() {
    return 'Item(id: $id, name: $name, code: $code, type: $type, unit: $unit, isActive: $isActive, auditInfo: $auditInfo, description: $description, category: $category, brand: $brand, basePrice: $basePrice, costPrice: $costPrice, barcode: $barcode, imageUrl: $imageUrl, specifications: $specifications, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemImplToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {required final String id,
      required final String name,
      required final String code,
      required final String type,
      required final String unit,
      required final bool isActive,
      required final AuditInfo auditInfo,
      final String? description,
      final String? category,
      final String? brand,
      final Money? basePrice,
      final Money? costPrice,
      final String? barcode,
      final String? imageUrl,
      final Map<String, dynamic>? specifications,
      final Map<String, dynamic>? metadata}) = _$ItemImpl;

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get code;
  @override
  String get type;
  @override // 'product', 'service', 'raw_material', etc.
  String get unit;
  @override
  bool get isActive;
  @override
  AuditInfo get auditInfo;
  @override
  String? get description;
  @override
  String? get category;
  @override
  String? get brand;
  @override
  Money? get basePrice;
  @override
  Money? get costPrice;
  @override
  String? get barcode;
  @override
  String? get imageUrl;
  @override
  Map<String, dynamic>? get specifications;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemRequest _$ItemRequestFromJson(Map<String, dynamic> json) {
  return _ItemRequest.fromJson(json);
}

/// @nodoc
mixin _$ItemRequest {
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  Money? get basePrice => throw _privateConstructorUsedError;
  Money? get costPrice => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  Map<String, dynamic>? get specifications =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemRequestCopyWith<ItemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemRequestCopyWith<$Res> {
  factory $ItemRequestCopyWith(
          ItemRequest value, $Res Function(ItemRequest) then) =
      _$ItemRequestCopyWithImpl<$Res, ItemRequest>;
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
class _$ItemRequestCopyWithImpl<$Res, $Val extends ItemRequest>
    implements $ItemRequestCopyWith<$Res> {
  _$ItemRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      basePrice: freezed == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      costPrice: freezed == costPrice
          ? _value.costPrice
          : costPrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      specifications: freezed == specifications
          ? _value.specifications
          : specifications // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get basePrice {
    if (_value.basePrice == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.basePrice!, (value) {
      return _then(_value.copyWith(basePrice: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get costPrice {
    if (_value.costPrice == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.costPrice!, (value) {
      return _then(_value.copyWith(costPrice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemRequestImplCopyWith<$Res>
    implements $ItemRequestCopyWith<$Res> {
  factory _$$ItemRequestImplCopyWith(
          _$ItemRequestImpl value, $Res Function(_$ItemRequestImpl) then) =
      __$$ItemRequestImplCopyWithImpl<$Res>;
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
class __$$ItemRequestImplCopyWithImpl<$Res>
    extends _$ItemRequestCopyWithImpl<$Res, _$ItemRequestImpl>
    implements _$$ItemRequestImplCopyWith<$Res> {
  __$$ItemRequestImplCopyWithImpl(
      _$ItemRequestImpl _value, $Res Function(_$ItemRequestImpl) _then)
      : super(_value, _then);

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
    return _then(_$ItemRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      basePrice: freezed == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      costPrice: freezed == costPrice
          ? _value.costPrice
          : costPrice // ignore: cast_nullable_to_non_nullable
              as Money?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      specifications: freezed == specifications
          ? _value._specifications
          : specifications // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemRequestImpl implements _ItemRequest {
  const _$ItemRequestImpl(
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

  factory _$ItemRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemRequestImplFromJson(json);

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

  @override
  String toString() {
    return 'ItemRequest(name: $name, code: $code, type: $type, unit: $unit, description: $description, category: $category, brand: $brand, basePrice: $basePrice, costPrice: $costPrice, barcode: $barcode, imageUrl: $imageUrl, isActive: $isActive, specifications: $specifications, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemRequestImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemRequestImplCopyWith<_$ItemRequestImpl> get copyWith =>
      __$$ItemRequestImplCopyWithImpl<_$ItemRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemRequestImplToJson(
      this,
    );
  }
}

abstract class _ItemRequest implements ItemRequest {
  const factory _ItemRequest(
      {required final String name,
      required final String code,
      required final String type,
      required final String unit,
      final String? description,
      final String? category,
      final String? brand,
      final Money? basePrice,
      final Money? costPrice,
      final String? barcode,
      final String? imageUrl,
      final bool isActive,
      final Map<String, dynamic>? specifications,
      final Map<String, dynamic>? metadata}) = _$ItemRequestImpl;

  factory _ItemRequest.fromJson(Map<String, dynamic> json) =
      _$ItemRequestImpl.fromJson;

  @override
  String get name;
  @override
  String get code;
  @override
  String get type;
  @override
  String get unit;
  @override
  String? get description;
  @override
  String? get category;
  @override
  String? get brand;
  @override
  Money? get basePrice;
  @override
  Money? get costPrice;
  @override
  String? get barcode;
  @override
  String? get imageUrl;
  @override
  bool get isActive;
  @override
  Map<String, dynamic>? get specifications;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$ItemRequestImplCopyWith<_$ItemRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  AuditInfo get auditInfo => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get type =>
      throw _privateConstructorUsedError; // 'warehouse', 'store', 'production', etc.
  String? get parentId => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;
  ContactInfo? get contactInfo => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {String id,
      String name,
      String code,
      bool isActive,
      AuditInfo auditInfo,
      String? description,
      String? type,
      String? parentId,
      Address? address,
      ContactInfo? contactInfo,
      Map<String, dynamic>? metadata});

  $AuditInfoCopyWith<$Res> get auditInfo;
  $AddressCopyWith<$Res>? get address;
  $ContactInfoCopyWith<$Res>? get contactInfo;
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? isActive = null,
    Object? auditInfo = null,
    Object? description = freezed,
    Object? type = freezed,
    Object? parentId = freezed,
    Object? address = freezed,
    Object? contactInfo = freezed,
    Object? metadata = freezed,
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
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      auditInfo: null == auditInfo
          ? _value.auditInfo
          : auditInfo // ignore: cast_nullable_to_non_nullable
              as AuditInfo,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      contactInfo: freezed == contactInfo
          ? _value.contactInfo
          : contactInfo // ignore: cast_nullable_to_non_nullable
              as ContactInfo?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuditInfoCopyWith<$Res> get auditInfo {
    return $AuditInfoCopyWith<$Res>(_value.auditInfo, (value) {
      return _then(_value.copyWith(auditInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactInfoCopyWith<$Res>? get contactInfo {
    if (_value.contactInfo == null) {
      return null;
    }

    return $ContactInfoCopyWith<$Res>(_value.contactInfo!, (value) {
      return _then(_value.copyWith(contactInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String code,
      bool isActive,
      AuditInfo auditInfo,
      String? description,
      String? type,
      String? parentId,
      Address? address,
      ContactInfo? contactInfo,
      Map<String, dynamic>? metadata});

  @override
  $AuditInfoCopyWith<$Res> get auditInfo;
  @override
  $AddressCopyWith<$Res>? get address;
  @override
  $ContactInfoCopyWith<$Res>? get contactInfo;
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? isActive = null,
    Object? auditInfo = null,
    Object? description = freezed,
    Object? type = freezed,
    Object? parentId = freezed,
    Object? address = freezed,
    Object? contactInfo = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$LocationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      auditInfo: null == auditInfo
          ? _value.auditInfo
          : auditInfo // ignore: cast_nullable_to_non_nullable
              as AuditInfo,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      contactInfo: freezed == contactInfo
          ? _value.contactInfo
          : contactInfo // ignore: cast_nullable_to_non_nullable
              as ContactInfo?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  const _$LocationImpl(
      {required this.id,
      required this.name,
      required this.code,
      required this.isActive,
      required this.auditInfo,
      this.description,
      this.type,
      this.parentId,
      this.address,
      this.contactInfo,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String code;
  @override
  final bool isActive;
  @override
  final AuditInfo auditInfo;
  @override
  final String? description;
  @override
  final String? type;
// 'warehouse', 'store', 'production', etc.
  @override
  final String? parentId;
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

  @override
  String toString() {
    return 'Location(id: $id, name: $name, code: $code, isActive: $isActive, auditInfo: $auditInfo, description: $description, type: $type, parentId: $parentId, address: $address, contactInfo: $contactInfo, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.auditInfo, auditInfo) ||
                other.auditInfo == auditInfo) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.contactInfo, contactInfo) ||
                other.contactInfo == contactInfo) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      code,
      isActive,
      auditInfo,
      description,
      type,
      parentId,
      address,
      contactInfo,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {required final String id,
      required final String name,
      required final String code,
      required final bool isActive,
      required final AuditInfo auditInfo,
      final String? description,
      final String? type,
      final String? parentId,
      final Address? address,
      final ContactInfo? contactInfo,
      final Map<String, dynamic>? metadata}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get code;
  @override
  bool get isActive;
  @override
  AuditInfo get auditInfo;
  @override
  String? get description;
  @override
  String? get type;
  @override // 'warehouse', 'store', 'production', etc.
  String? get parentId;
  @override
  Address? get address;
  @override
  ContactInfo? get contactInfo;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StockAdjustmentRequest _$StockAdjustmentRequestFromJson(
    Map<String, dynamic> json) {
  return _StockAdjustmentRequest.fromJson(json);
}

/// @nodoc
mixin _$StockAdjustmentRequest {
  String get itemId => throw _privateConstructorUsedError;
  String get locationId => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  Money? get cost => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockAdjustmentRequestCopyWith<StockAdjustmentRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockAdjustmentRequestCopyWith<$Res> {
  factory $StockAdjustmentRequestCopyWith(StockAdjustmentRequest value,
          $Res Function(StockAdjustmentRequest) then) =
      _$StockAdjustmentRequestCopyWithImpl<$Res, StockAdjustmentRequest>;
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
class _$StockAdjustmentRequestCopyWithImpl<$Res,
        $Val extends StockAdjustmentRequest>
    implements $StockAdjustmentRequestCopyWith<$Res> {
  _$StockAdjustmentRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as Money?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get cost {
    if (_value.cost == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.cost!, (value) {
      return _then(_value.copyWith(cost: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StockAdjustmentRequestImplCopyWith<$Res>
    implements $StockAdjustmentRequestCopyWith<$Res> {
  factory _$$StockAdjustmentRequestImplCopyWith(
          _$StockAdjustmentRequestImpl value,
          $Res Function(_$StockAdjustmentRequestImpl) then) =
      __$$StockAdjustmentRequestImplCopyWithImpl<$Res>;
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
class __$$StockAdjustmentRequestImplCopyWithImpl<$Res>
    extends _$StockAdjustmentRequestCopyWithImpl<$Res,
        _$StockAdjustmentRequestImpl>
    implements _$$StockAdjustmentRequestImplCopyWith<$Res> {
  __$$StockAdjustmentRequestImplCopyWithImpl(
      _$StockAdjustmentRequestImpl _value,
      $Res Function(_$StockAdjustmentRequestImpl) _then)
      : super(_value, _then);

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
    return _then(_$StockAdjustmentRequestImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as Money?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockAdjustmentRequestImpl implements _StockAdjustmentRequest {
  const _$StockAdjustmentRequestImpl(
      {required this.itemId,
      required this.locationId,
      required this.quantity,
      required this.reason,
      this.notes,
      this.cost});

  factory _$StockAdjustmentRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockAdjustmentRequestImplFromJson(json);

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

  @override
  String toString() {
    return 'StockAdjustmentRequest(itemId: $itemId, locationId: $locationId, quantity: $quantity, reason: $reason, notes: $notes, cost: $cost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockAdjustmentRequestImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.cost, cost) || other.cost == cost));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, itemId, locationId, quantity, reason, notes, cost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockAdjustmentRequestImplCopyWith<_$StockAdjustmentRequestImpl>
      get copyWith => __$$StockAdjustmentRequestImplCopyWithImpl<
          _$StockAdjustmentRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockAdjustmentRequestImplToJson(
      this,
    );
  }
}

abstract class _StockAdjustmentRequest implements StockAdjustmentRequest {
  const factory _StockAdjustmentRequest(
      {required final String itemId,
      required final String locationId,
      required final double quantity,
      required final String reason,
      final String? notes,
      final Money? cost}) = _$StockAdjustmentRequestImpl;

  factory _StockAdjustmentRequest.fromJson(Map<String, dynamic> json) =
      _$StockAdjustmentRequestImpl.fromJson;

  @override
  String get itemId;
  @override
  String get locationId;
  @override
  double get quantity;
  @override
  String get reason;
  @override
  String? get notes;
  @override
  Money? get cost;
  @override
  @JsonKey(ignore: true)
  _$$StockAdjustmentRequestImplCopyWith<_$StockAdjustmentRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StockEntry _$StockEntryFromJson(Map<String, dynamic> json) {
  return _StockEntry.fromJson(json);
}

/// @nodoc
mixin _$StockEntry {
  String get id => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  String get locationId => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  double get availableQuantity => throw _privateConstructorUsedError;
  double get reservedQuantity => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  double? get minQuantity => throw _privateConstructorUsedError;
  double? get maxQuantity => throw _privateConstructorUsedError;
  Money? get averageCost => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockEntryCopyWith<StockEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockEntryCopyWith<$Res> {
  factory $StockEntryCopyWith(
          StockEntry value, $Res Function(StockEntry) then) =
      _$StockEntryCopyWithImpl<$Res, StockEntry>;
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
class _$StockEntryCopyWithImpl<$Res, $Val extends StockEntry>
    implements $StockEntryCopyWith<$Res> {
  _$StockEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      availableQuantity: null == availableQuantity
          ? _value.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      reservedQuantity: null == reservedQuantity
          ? _value.reservedQuantity
          : reservedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      minQuantity: freezed == minQuantity
          ? _value.minQuantity
          : minQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      maxQuantity: freezed == maxQuantity
          ? _value.maxQuantity
          : maxQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      averageCost: freezed == averageCost
          ? _value.averageCost
          : averageCost // ignore: cast_nullable_to_non_nullable
              as Money?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get averageCost {
    if (_value.averageCost == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.averageCost!, (value) {
      return _then(_value.copyWith(averageCost: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StockEntryImplCopyWith<$Res>
    implements $StockEntryCopyWith<$Res> {
  factory _$$StockEntryImplCopyWith(
          _$StockEntryImpl value, $Res Function(_$StockEntryImpl) then) =
      __$$StockEntryImplCopyWithImpl<$Res>;
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
class __$$StockEntryImplCopyWithImpl<$Res>
    extends _$StockEntryCopyWithImpl<$Res, _$StockEntryImpl>
    implements _$$StockEntryImplCopyWith<$Res> {
  __$$StockEntryImplCopyWithImpl(
      _$StockEntryImpl _value, $Res Function(_$StockEntryImpl) _then)
      : super(_value, _then);

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
    return _then(_$StockEntryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      availableQuantity: null == availableQuantity
          ? _value.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      reservedQuantity: null == reservedQuantity
          ? _value.reservedQuantity
          : reservedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      minQuantity: freezed == minQuantity
          ? _value.minQuantity
          : minQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      maxQuantity: freezed == maxQuantity
          ? _value.maxQuantity
          : maxQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      averageCost: freezed == averageCost
          ? _value.averageCost
          : averageCost // ignore: cast_nullable_to_non_nullable
              as Money?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockEntryImpl implements _StockEntry {
  const _$StockEntryImpl(
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

  factory _$StockEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockEntryImplFromJson(json);

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

  @override
  String toString() {
    return 'StockEntry(id: $id, itemId: $itemId, locationId: $locationId, quantity: $quantity, availableQuantity: $availableQuantity, reservedQuantity: $reservedQuantity, lastUpdated: $lastUpdated, minQuantity: $minQuantity, maxQuantity: $maxQuantity, averageCost: $averageCost, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockEntryImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockEntryImplCopyWith<_$StockEntryImpl> get copyWith =>
      __$$StockEntryImplCopyWithImpl<_$StockEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockEntryImplToJson(
      this,
    );
  }
}

abstract class _StockEntry implements StockEntry {
  const factory _StockEntry(
      {required final String id,
      required final String itemId,
      required final String locationId,
      required final double quantity,
      required final double availableQuantity,
      required final double reservedQuantity,
      required final DateTime lastUpdated,
      final double? minQuantity,
      final double? maxQuantity,
      final Money? averageCost,
      final Map<String, dynamic>? metadata}) = _$StockEntryImpl;

  factory _StockEntry.fromJson(Map<String, dynamic> json) =
      _$StockEntryImpl.fromJson;

  @override
  String get id;
  @override
  String get itemId;
  @override
  String get locationId;
  @override
  double get quantity;
  @override
  double get availableQuantity;
  @override
  double get reservedQuantity;
  @override
  DateTime get lastUpdated;
  @override
  double? get minQuantity;
  @override
  double? get maxQuantity;
  @override
  Money? get averageCost;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$StockEntryImplCopyWith<_$StockEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StockMovement _$StockMovementFromJson(Map<String, dynamic> json) {
  return _StockMovement.fromJson(json);
}

/// @nodoc
mixin _$StockMovement {
  String get id => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  String get locationId => throw _privateConstructorUsedError;
  String get type =>
      throw _privateConstructorUsedError; // 'in', 'out', 'transfer', 'adjustment'
  double get quantity => throw _privateConstructorUsedError;
  DateTime get movementDate => throw _privateConstructorUsedError;
  AuditInfo get auditInfo => throw _privateConstructorUsedError;
  double? get cost => throw _privateConstructorUsedError;
  String? get referenceType => throw _privateConstructorUsedError;
  String? get referenceId => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockMovementCopyWith<StockMovement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockMovementCopyWith<$Res> {
  factory $StockMovementCopyWith(
          StockMovement value, $Res Function(StockMovement) then) =
      _$StockMovementCopyWithImpl<$Res, StockMovement>;
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
class _$StockMovementCopyWithImpl<$Res, $Val extends StockMovement>
    implements $StockMovementCopyWith<$Res> {
  _$StockMovementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      movementDate: null == movementDate
          ? _value.movementDate
          : movementDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      auditInfo: null == auditInfo
          ? _value.auditInfo
          : auditInfo // ignore: cast_nullable_to_non_nullable
              as AuditInfo,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double?,
      referenceType: freezed == referenceType
          ? _value.referenceType
          : referenceType // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuditInfoCopyWith<$Res> get auditInfo {
    return $AuditInfoCopyWith<$Res>(_value.auditInfo, (value) {
      return _then(_value.copyWith(auditInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StockMovementImplCopyWith<$Res>
    implements $StockMovementCopyWith<$Res> {
  factory _$$StockMovementImplCopyWith(
          _$StockMovementImpl value, $Res Function(_$StockMovementImpl) then) =
      __$$StockMovementImplCopyWithImpl<$Res>;
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
class __$$StockMovementImplCopyWithImpl<$Res>
    extends _$StockMovementCopyWithImpl<$Res, _$StockMovementImpl>
    implements _$$StockMovementImplCopyWith<$Res> {
  __$$StockMovementImplCopyWithImpl(
      _$StockMovementImpl _value, $Res Function(_$StockMovementImpl) _then)
      : super(_value, _then);

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
    return _then(_$StockMovementImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      movementDate: null == movementDate
          ? _value.movementDate
          : movementDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      auditInfo: null == auditInfo
          ? _value.auditInfo
          : auditInfo // ignore: cast_nullable_to_non_nullable
              as AuditInfo,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double?,
      referenceType: freezed == referenceType
          ? _value.referenceType
          : referenceType // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockMovementImpl implements _StockMovement {
  const _$StockMovementImpl(
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

  factory _$StockMovementImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockMovementImplFromJson(json);

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

  @override
  String toString() {
    return 'StockMovement(id: $id, itemId: $itemId, locationId: $locationId, type: $type, quantity: $quantity, movementDate: $movementDate, auditInfo: $auditInfo, cost: $cost, referenceType: $referenceType, referenceId: $referenceId, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockMovementImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockMovementImplCopyWith<_$StockMovementImpl> get copyWith =>
      __$$StockMovementImplCopyWithImpl<_$StockMovementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockMovementImplToJson(
      this,
    );
  }
}

abstract class _StockMovement implements StockMovement {
  const factory _StockMovement(
      {required final String id,
      required final String itemId,
      required final String locationId,
      required final String type,
      required final double quantity,
      required final DateTime movementDate,
      required final AuditInfo auditInfo,
      final double? cost,
      final String? referenceType,
      final String? referenceId,
      final String? notes}) = _$StockMovementImpl;

  factory _StockMovement.fromJson(Map<String, dynamic> json) =
      _$StockMovementImpl.fromJson;

  @override
  String get id;
  @override
  String get itemId;
  @override
  String get locationId;
  @override
  String get type;
  @override // 'in', 'out', 'transfer', 'adjustment'
  double get quantity;
  @override
  DateTime get movementDate;
  @override
  AuditInfo get auditInfo;
  @override
  double? get cost;
  @override
  String? get referenceType;
  @override
  String? get referenceId;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$StockMovementImplCopyWith<_$StockMovementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StockTransferRequest _$StockTransferRequestFromJson(Map<String, dynamic> json) {
  return _StockTransferRequest.fromJson(json);
}

/// @nodoc
mixin _$StockTransferRequest {
  String get itemId => throw _privateConstructorUsedError;
  String get fromLocationId => throw _privateConstructorUsedError;
  String get toLocationId => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockTransferRequestCopyWith<StockTransferRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockTransferRequestCopyWith<$Res> {
  factory $StockTransferRequestCopyWith(StockTransferRequest value,
          $Res Function(StockTransferRequest) then) =
      _$StockTransferRequestCopyWithImpl<$Res, StockTransferRequest>;
  @useResult
  $Res call(
      {String itemId,
      String fromLocationId,
      String toLocationId,
      double quantity,
      String? notes});
}

/// @nodoc
class _$StockTransferRequestCopyWithImpl<$Res,
        $Val extends StockTransferRequest>
    implements $StockTransferRequestCopyWith<$Res> {
  _$StockTransferRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? fromLocationId = null,
    Object? toLocationId = null,
    Object? quantity = null,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      fromLocationId: null == fromLocationId
          ? _value.fromLocationId
          : fromLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      toLocationId: null == toLocationId
          ? _value.toLocationId
          : toLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockTransferRequestImplCopyWith<$Res>
    implements $StockTransferRequestCopyWith<$Res> {
  factory _$$StockTransferRequestImplCopyWith(_$StockTransferRequestImpl value,
          $Res Function(_$StockTransferRequestImpl) then) =
      __$$StockTransferRequestImplCopyWithImpl<$Res>;
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
class __$$StockTransferRequestImplCopyWithImpl<$Res>
    extends _$StockTransferRequestCopyWithImpl<$Res, _$StockTransferRequestImpl>
    implements _$$StockTransferRequestImplCopyWith<$Res> {
  __$$StockTransferRequestImplCopyWithImpl(_$StockTransferRequestImpl _value,
      $Res Function(_$StockTransferRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? fromLocationId = null,
    Object? toLocationId = null,
    Object? quantity = null,
    Object? notes = freezed,
  }) {
    return _then(_$StockTransferRequestImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      fromLocationId: null == fromLocationId
          ? _value.fromLocationId
          : fromLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      toLocationId: null == toLocationId
          ? _value.toLocationId
          : toLocationId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockTransferRequestImpl implements _StockTransferRequest {
  const _$StockTransferRequestImpl(
      {required this.itemId,
      required this.fromLocationId,
      required this.toLocationId,
      required this.quantity,
      this.notes});

  factory _$StockTransferRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockTransferRequestImplFromJson(json);

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

  @override
  String toString() {
    return 'StockTransferRequest(itemId: $itemId, fromLocationId: $fromLocationId, toLocationId: $toLocationId, quantity: $quantity, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockTransferRequestImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.fromLocationId, fromLocationId) ||
                other.fromLocationId == fromLocationId) &&
            (identical(other.toLocationId, toLocationId) ||
                other.toLocationId == toLocationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, itemId, fromLocationId, toLocationId, quantity, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockTransferRequestImplCopyWith<_$StockTransferRequestImpl>
      get copyWith =>
          __$$StockTransferRequestImplCopyWithImpl<_$StockTransferRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockTransferRequestImplToJson(
      this,
    );
  }
}

abstract class _StockTransferRequest implements StockTransferRequest {
  const factory _StockTransferRequest(
      {required final String itemId,
      required final String fromLocationId,
      required final String toLocationId,
      required final double quantity,
      final String? notes}) = _$StockTransferRequestImpl;

  factory _StockTransferRequest.fromJson(Map<String, dynamic> json) =
      _$StockTransferRequestImpl.fromJson;

  @override
  String get itemId;
  @override
  String get fromLocationId;
  @override
  String get toLocationId;
  @override
  double get quantity;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$StockTransferRequestImplCopyWith<_$StockTransferRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
