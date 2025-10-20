// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContactMechanism _$ContactMechanismFromJson(Map<String, dynamic> json) {
  return _ContactMechanism.fromJson(json);
}

/// @nodoc
mixin _$ContactMechanism {
  String get id => throw _privateConstructorUsedError;
  String get partyId => throw _privateConstructorUsedError;
  String get type =>
      throw _privateConstructorUsedError; // 'email', 'phone', 'mobile', 'fax', 'website', 'social'
  String get value => throw _privateConstructorUsedError;
  bool get isPrimary => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  String? get extension => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  DateTime? get validFrom => throw _privateConstructorUsedError;
  DateTime? get validTo => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactMechanismCopyWith<ContactMechanism> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactMechanismCopyWith<$Res> {
  factory $ContactMechanismCopyWith(
          ContactMechanism value, $Res Function(ContactMechanism) then) =
      _$ContactMechanismCopyWithImpl<$Res, ContactMechanism>;
  @useResult
  $Res call(
      {String id,
      String partyId,
      String type,
      String value,
      bool isPrimary,
      bool isActive,
      String? label,
      String? extension,
      String? countryCode,
      String? notes,
      DateTime? validFrom,
      DateTime? validTo,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$ContactMechanismCopyWithImpl<$Res, $Val extends ContactMechanism>
    implements $ContactMechanismCopyWith<$Res> {
  _$ContactMechanismCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? partyId = null,
    Object? type = null,
    Object? value = null,
    Object? isPrimary = null,
    Object? isActive = null,
    Object? label = freezed,
    Object? extension = freezed,
    Object? countryCode = freezed,
    Object? notes = freezed,
    Object? validFrom = freezed,
    Object? validTo = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      partyId: null == partyId
          ? _value.partyId
          : partyId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      isPrimary: null == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      extension: freezed == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      validFrom: freezed == validFrom
          ? _value.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _value.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactMechanismImplCopyWith<$Res>
    implements $ContactMechanismCopyWith<$Res> {
  factory _$$ContactMechanismImplCopyWith(_$ContactMechanismImpl value,
          $Res Function(_$ContactMechanismImpl) then) =
      __$$ContactMechanismImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String partyId,
      String type,
      String value,
      bool isPrimary,
      bool isActive,
      String? label,
      String? extension,
      String? countryCode,
      String? notes,
      DateTime? validFrom,
      DateTime? validTo,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$ContactMechanismImplCopyWithImpl<$Res>
    extends _$ContactMechanismCopyWithImpl<$Res, _$ContactMechanismImpl>
    implements _$$ContactMechanismImplCopyWith<$Res> {
  __$$ContactMechanismImplCopyWithImpl(_$ContactMechanismImpl _value,
      $Res Function(_$ContactMechanismImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? partyId = null,
    Object? type = null,
    Object? value = null,
    Object? isPrimary = null,
    Object? isActive = null,
    Object? label = freezed,
    Object? extension = freezed,
    Object? countryCode = freezed,
    Object? notes = freezed,
    Object? validFrom = freezed,
    Object? validTo = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$ContactMechanismImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      partyId: null == partyId
          ? _value.partyId
          : partyId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      isPrimary: null == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      extension: freezed == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      validFrom: freezed == validFrom
          ? _value.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _value.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactMechanismImpl implements _ContactMechanism {
  const _$ContactMechanismImpl(
      {required this.id,
      required this.partyId,
      required this.type,
      required this.value,
      required this.isPrimary,
      required this.isActive,
      this.label,
      this.extension,
      this.countryCode,
      this.notes,
      this.validFrom,
      this.validTo,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$ContactMechanismImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactMechanismImplFromJson(json);

  @override
  final String id;
  @override
  final String partyId;
  @override
  final String type;
// 'email', 'phone', 'mobile', 'fax', 'website', 'social'
  @override
  final String value;
  @override
  final bool isPrimary;
  @override
  final bool isActive;
  @override
  final String? label;
  @override
  final String? extension;
  @override
  final String? countryCode;
  @override
  final String? notes;
  @override
  final DateTime? validFrom;
  @override
  final DateTime? validTo;
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
    return 'ContactMechanism(id: $id, partyId: $partyId, type: $type, value: $value, isPrimary: $isPrimary, isActive: $isActive, label: $label, extension: $extension, countryCode: $countryCode, notes: $notes, validFrom: $validFrom, validTo: $validTo, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactMechanismImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.partyId, partyId) || other.partyId == partyId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.isPrimary, isPrimary) ||
                other.isPrimary == isPrimary) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.extension, extension) ||
                other.extension == extension) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.validFrom, validFrom) ||
                other.validFrom == validFrom) &&
            (identical(other.validTo, validTo) || other.validTo == validTo) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      partyId,
      type,
      value,
      isPrimary,
      isActive,
      label,
      extension,
      countryCode,
      notes,
      validFrom,
      validTo,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactMechanismImplCopyWith<_$ContactMechanismImpl> get copyWith =>
      __$$ContactMechanismImplCopyWithImpl<_$ContactMechanismImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactMechanismImplToJson(
      this,
    );
  }
}

abstract class _ContactMechanism implements ContactMechanism {
  const factory _ContactMechanism(
      {required final String id,
      required final String partyId,
      required final String type,
      required final String value,
      required final bool isPrimary,
      required final bool isActive,
      final String? label,
      final String? extension,
      final String? countryCode,
      final String? notes,
      final DateTime? validFrom,
      final DateTime? validTo,
      final Map<String, dynamic>? metadata}) = _$ContactMechanismImpl;

  factory _ContactMechanism.fromJson(Map<String, dynamic> json) =
      _$ContactMechanismImpl.fromJson;

  @override
  String get id;
  @override
  String get partyId;
  @override
  String get type;
  @override // 'email', 'phone', 'mobile', 'fax', 'website', 'social'
  String get value;
  @override
  bool get isPrimary;
  @override
  bool get isActive;
  @override
  String? get label;
  @override
  String? get extension;
  @override
  String? get countryCode;
  @override
  String? get notes;
  @override
  DateTime? get validFrom;
  @override
  DateTime? get validTo;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$ContactMechanismImplCopyWith<_$ContactMechanismImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PartyAddress _$PartyAddressFromJson(Map<String, dynamic> json) {
  return _PartyAddress.fromJson(json);
}

/// @nodoc
mixin _$PartyAddress {
  String get id => throw _privateConstructorUsedError;
  String get partyId => throw _privateConstructorUsedError;
  String get type =>
      throw _privateConstructorUsedError; // 'billing', 'shipping', 'home', 'work', 'warehouse', 'office'
  String get addressLine1 => throw _privateConstructorUsedError;
  bool get isPrimary => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String? get addressLine2 => throw _privateConstructorUsedError;
  String? get addressLine3 => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get postalCode => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  DateTime? get validFrom => throw _privateConstructorUsedError;
  DateTime? get validTo => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PartyAddressCopyWith<PartyAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartyAddressCopyWith<$Res> {
  factory $PartyAddressCopyWith(
          PartyAddress value, $Res Function(PartyAddress) then) =
      _$PartyAddressCopyWithImpl<$Res, PartyAddress>;
  @useResult
  $Res call(
      {String id,
      String partyId,
      String type,
      String addressLine1,
      bool isPrimary,
      bool isActive,
      String? addressLine2,
      String? addressLine3,
      String? city,
      String? state,
      String? postalCode,
      String? country,
      String? region,
      String? label,
      String? notes,
      double? latitude,
      double? longitude,
      DateTime? validFrom,
      DateTime? validTo,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$PartyAddressCopyWithImpl<$Res, $Val extends PartyAddress>
    implements $PartyAddressCopyWith<$Res> {
  _$PartyAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? partyId = null,
    Object? type = null,
    Object? addressLine1 = null,
    Object? isPrimary = null,
    Object? isActive = null,
    Object? addressLine2 = freezed,
    Object? addressLine3 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postalCode = freezed,
    Object? country = freezed,
    Object? region = freezed,
    Object? label = freezed,
    Object? notes = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? validFrom = freezed,
    Object? validTo = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      partyId: null == partyId
          ? _value.partyId
          : partyId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine1: null == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String,
      isPrimary: null == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      addressLine2: freezed == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine3: freezed == addressLine3
          ? _value.addressLine3
          : addressLine3 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      validFrom: freezed == validFrom
          ? _value.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _value.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PartyAddressImplCopyWith<$Res>
    implements $PartyAddressCopyWith<$Res> {
  factory _$$PartyAddressImplCopyWith(
          _$PartyAddressImpl value, $Res Function(_$PartyAddressImpl) then) =
      __$$PartyAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String partyId,
      String type,
      String addressLine1,
      bool isPrimary,
      bool isActive,
      String? addressLine2,
      String? addressLine3,
      String? city,
      String? state,
      String? postalCode,
      String? country,
      String? region,
      String? label,
      String? notes,
      double? latitude,
      double? longitude,
      DateTime? validFrom,
      DateTime? validTo,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$PartyAddressImplCopyWithImpl<$Res>
    extends _$PartyAddressCopyWithImpl<$Res, _$PartyAddressImpl>
    implements _$$PartyAddressImplCopyWith<$Res> {
  __$$PartyAddressImplCopyWithImpl(
      _$PartyAddressImpl _value, $Res Function(_$PartyAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? partyId = null,
    Object? type = null,
    Object? addressLine1 = null,
    Object? isPrimary = null,
    Object? isActive = null,
    Object? addressLine2 = freezed,
    Object? addressLine3 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postalCode = freezed,
    Object? country = freezed,
    Object? region = freezed,
    Object? label = freezed,
    Object? notes = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? validFrom = freezed,
    Object? validTo = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$PartyAddressImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      partyId: null == partyId
          ? _value.partyId
          : partyId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine1: null == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String,
      isPrimary: null == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      addressLine2: freezed == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine3: freezed == addressLine3
          ? _value.addressLine3
          : addressLine3 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      validFrom: freezed == validFrom
          ? _value.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _value.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartyAddressImpl implements _PartyAddress {
  const _$PartyAddressImpl(
      {required this.id,
      required this.partyId,
      required this.type,
      required this.addressLine1,
      required this.isPrimary,
      required this.isActive,
      this.addressLine2,
      this.addressLine3,
      this.city,
      this.state,
      this.postalCode,
      this.country,
      this.region,
      this.label,
      this.notes,
      this.latitude,
      this.longitude,
      this.validFrom,
      this.validTo,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$PartyAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartyAddressImplFromJson(json);

  @override
  final String id;
  @override
  final String partyId;
  @override
  final String type;
// 'billing', 'shipping', 'home', 'work', 'warehouse', 'office'
  @override
  final String addressLine1;
  @override
  final bool isPrimary;
  @override
  final bool isActive;
  @override
  final String? addressLine2;
  @override
  final String? addressLine3;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? postalCode;
  @override
  final String? country;
  @override
  final String? region;
  @override
  final String? label;
  @override
  final String? notes;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final DateTime? validFrom;
  @override
  final DateTime? validTo;
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
    return 'PartyAddress(id: $id, partyId: $partyId, type: $type, addressLine1: $addressLine1, isPrimary: $isPrimary, isActive: $isActive, addressLine2: $addressLine2, addressLine3: $addressLine3, city: $city, state: $state, postalCode: $postalCode, country: $country, region: $region, label: $label, notes: $notes, latitude: $latitude, longitude: $longitude, validFrom: $validFrom, validTo: $validTo, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartyAddressImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.partyId, partyId) || other.partyId == partyId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.addressLine1, addressLine1) ||
                other.addressLine1 == addressLine1) &&
            (identical(other.isPrimary, isPrimary) ||
                other.isPrimary == isPrimary) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.addressLine2, addressLine2) ||
                other.addressLine2 == addressLine2) &&
            (identical(other.addressLine3, addressLine3) ||
                other.addressLine3 == addressLine3) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.validFrom, validFrom) ||
                other.validFrom == validFrom) &&
            (identical(other.validTo, validTo) || other.validTo == validTo) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        partyId,
        type,
        addressLine1,
        isPrimary,
        isActive,
        addressLine2,
        addressLine3,
        city,
        state,
        postalCode,
        country,
        region,
        label,
        notes,
        latitude,
        longitude,
        validFrom,
        validTo,
        const DeepCollectionEquality().hash(_metadata)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PartyAddressImplCopyWith<_$PartyAddressImpl> get copyWith =>
      __$$PartyAddressImplCopyWithImpl<_$PartyAddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartyAddressImplToJson(
      this,
    );
  }
}

abstract class _PartyAddress implements PartyAddress {
  const factory _PartyAddress(
      {required final String id,
      required final String partyId,
      required final String type,
      required final String addressLine1,
      required final bool isPrimary,
      required final bool isActive,
      final String? addressLine2,
      final String? addressLine3,
      final String? city,
      final String? state,
      final String? postalCode,
      final String? country,
      final String? region,
      final String? label,
      final String? notes,
      final double? latitude,
      final double? longitude,
      final DateTime? validFrom,
      final DateTime? validTo,
      final Map<String, dynamic>? metadata}) = _$PartyAddressImpl;

  factory _PartyAddress.fromJson(Map<String, dynamic> json) =
      _$PartyAddressImpl.fromJson;

  @override
  String get id;
  @override
  String get partyId;
  @override
  String get type;
  @override // 'billing', 'shipping', 'home', 'work', 'warehouse', 'office'
  String get addressLine1;
  @override
  bool get isPrimary;
  @override
  bool get isActive;
  @override
  String? get addressLine2;
  @override
  String? get addressLine3;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get postalCode;
  @override
  String? get country;
  @override
  String? get region;
  @override
  String? get label;
  @override
  String? get notes;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  DateTime? get validFrom;
  @override
  DateTime? get validTo;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$PartyAddressImplCopyWith<_$PartyAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateContactMechanismRequest _$CreateContactMechanismRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateContactMechanismRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateContactMechanismRequest {
  String get type => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  bool? get isPrimary => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  String? get extension => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  DateTime? get validFrom => throw _privateConstructorUsedError;
  DateTime? get validTo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateContactMechanismRequestCopyWith<CreateContactMechanismRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateContactMechanismRequestCopyWith<$Res> {
  factory $CreateContactMechanismRequestCopyWith(
          CreateContactMechanismRequest value,
          $Res Function(CreateContactMechanismRequest) then) =
      _$CreateContactMechanismRequestCopyWithImpl<$Res,
          CreateContactMechanismRequest>;
  @useResult
  $Res call(
      {String type,
      String value,
      bool? isPrimary,
      String? label,
      String? extension,
      String? countryCode,
      String? notes,
      DateTime? validFrom,
      DateTime? validTo});
}

/// @nodoc
class _$CreateContactMechanismRequestCopyWithImpl<$Res,
        $Val extends CreateContactMechanismRequest>
    implements $CreateContactMechanismRequestCopyWith<$Res> {
  _$CreateContactMechanismRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
    Object? isPrimary = freezed,
    Object? label = freezed,
    Object? extension = freezed,
    Object? countryCode = freezed,
    Object? notes = freezed,
    Object? validFrom = freezed,
    Object? validTo = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      isPrimary: freezed == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      extension: freezed == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      validFrom: freezed == validFrom
          ? _value.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _value.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateContactMechanismRequestImplCopyWith<$Res>
    implements $CreateContactMechanismRequestCopyWith<$Res> {
  factory _$$CreateContactMechanismRequestImplCopyWith(
          _$CreateContactMechanismRequestImpl value,
          $Res Function(_$CreateContactMechanismRequestImpl) then) =
      __$$CreateContactMechanismRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String value,
      bool? isPrimary,
      String? label,
      String? extension,
      String? countryCode,
      String? notes,
      DateTime? validFrom,
      DateTime? validTo});
}

/// @nodoc
class __$$CreateContactMechanismRequestImplCopyWithImpl<$Res>
    extends _$CreateContactMechanismRequestCopyWithImpl<$Res,
        _$CreateContactMechanismRequestImpl>
    implements _$$CreateContactMechanismRequestImplCopyWith<$Res> {
  __$$CreateContactMechanismRequestImplCopyWithImpl(
      _$CreateContactMechanismRequestImpl _value,
      $Res Function(_$CreateContactMechanismRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
    Object? isPrimary = freezed,
    Object? label = freezed,
    Object? extension = freezed,
    Object? countryCode = freezed,
    Object? notes = freezed,
    Object? validFrom = freezed,
    Object? validTo = freezed,
  }) {
    return _then(_$CreateContactMechanismRequestImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      isPrimary: freezed == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      extension: freezed == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      validFrom: freezed == validFrom
          ? _value.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _value.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateContactMechanismRequestImpl
    implements _CreateContactMechanismRequest {
  const _$CreateContactMechanismRequestImpl(
      {required this.type,
      required this.value,
      this.isPrimary,
      this.label,
      this.extension,
      this.countryCode,
      this.notes,
      this.validFrom,
      this.validTo});

  factory _$CreateContactMechanismRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateContactMechanismRequestImplFromJson(json);

  @override
  final String type;
  @override
  final String value;
  @override
  final bool? isPrimary;
  @override
  final String? label;
  @override
  final String? extension;
  @override
  final String? countryCode;
  @override
  final String? notes;
  @override
  final DateTime? validFrom;
  @override
  final DateTime? validTo;

  @override
  String toString() {
    return 'CreateContactMechanismRequest(type: $type, value: $value, isPrimary: $isPrimary, label: $label, extension: $extension, countryCode: $countryCode, notes: $notes, validFrom: $validFrom, validTo: $validTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateContactMechanismRequestImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.isPrimary, isPrimary) ||
                other.isPrimary == isPrimary) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.extension, extension) ||
                other.extension == extension) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.validFrom, validFrom) ||
                other.validFrom == validFrom) &&
            (identical(other.validTo, validTo) || other.validTo == validTo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, value, isPrimary, label,
      extension, countryCode, notes, validFrom, validTo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateContactMechanismRequestImplCopyWith<
          _$CreateContactMechanismRequestImpl>
      get copyWith => __$$CreateContactMechanismRequestImplCopyWithImpl<
          _$CreateContactMechanismRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateContactMechanismRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateContactMechanismRequest
    implements CreateContactMechanismRequest {
  const factory _CreateContactMechanismRequest(
      {required final String type,
      required final String value,
      final bool? isPrimary,
      final String? label,
      final String? extension,
      final String? countryCode,
      final String? notes,
      final DateTime? validFrom,
      final DateTime? validTo}) = _$CreateContactMechanismRequestImpl;

  factory _CreateContactMechanismRequest.fromJson(Map<String, dynamic> json) =
      _$CreateContactMechanismRequestImpl.fromJson;

  @override
  String get type;
  @override
  String get value;
  @override
  bool? get isPrimary;
  @override
  String? get label;
  @override
  String? get extension;
  @override
  String? get countryCode;
  @override
  String? get notes;
  @override
  DateTime? get validFrom;
  @override
  DateTime? get validTo;
  @override
  @JsonKey(ignore: true)
  _$$CreateContactMechanismRequestImplCopyWith<
          _$CreateContactMechanismRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateContactMechanismRequest _$UpdateContactMechanismRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateContactMechanismRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateContactMechanismRequest {
  String? get value => throw _privateConstructorUsedError;
  bool? get isPrimary => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  String? get extension => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  DateTime? get validFrom => throw _privateConstructorUsedError;
  DateTime? get validTo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateContactMechanismRequestCopyWith<UpdateContactMechanismRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateContactMechanismRequestCopyWith<$Res> {
  factory $UpdateContactMechanismRequestCopyWith(
          UpdateContactMechanismRequest value,
          $Res Function(UpdateContactMechanismRequest) then) =
      _$UpdateContactMechanismRequestCopyWithImpl<$Res,
          UpdateContactMechanismRequest>;
  @useResult
  $Res call(
      {String? value,
      bool? isPrimary,
      bool? isActive,
      String? label,
      String? extension,
      String? countryCode,
      String? notes,
      DateTime? validFrom,
      DateTime? validTo});
}

/// @nodoc
class _$UpdateContactMechanismRequestCopyWithImpl<$Res,
        $Val extends UpdateContactMechanismRequest>
    implements $UpdateContactMechanismRequestCopyWith<$Res> {
  _$UpdateContactMechanismRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? isPrimary = freezed,
    Object? isActive = freezed,
    Object? label = freezed,
    Object? extension = freezed,
    Object? countryCode = freezed,
    Object? notes = freezed,
    Object? validFrom = freezed,
    Object? validTo = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: freezed == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      extension: freezed == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      validFrom: freezed == validFrom
          ? _value.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _value.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateContactMechanismRequestImplCopyWith<$Res>
    implements $UpdateContactMechanismRequestCopyWith<$Res> {
  factory _$$UpdateContactMechanismRequestImplCopyWith(
          _$UpdateContactMechanismRequestImpl value,
          $Res Function(_$UpdateContactMechanismRequestImpl) then) =
      __$$UpdateContactMechanismRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? value,
      bool? isPrimary,
      bool? isActive,
      String? label,
      String? extension,
      String? countryCode,
      String? notes,
      DateTime? validFrom,
      DateTime? validTo});
}

/// @nodoc
class __$$UpdateContactMechanismRequestImplCopyWithImpl<$Res>
    extends _$UpdateContactMechanismRequestCopyWithImpl<$Res,
        _$UpdateContactMechanismRequestImpl>
    implements _$$UpdateContactMechanismRequestImplCopyWith<$Res> {
  __$$UpdateContactMechanismRequestImplCopyWithImpl(
      _$UpdateContactMechanismRequestImpl _value,
      $Res Function(_$UpdateContactMechanismRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? isPrimary = freezed,
    Object? isActive = freezed,
    Object? label = freezed,
    Object? extension = freezed,
    Object? countryCode = freezed,
    Object? notes = freezed,
    Object? validFrom = freezed,
    Object? validTo = freezed,
  }) {
    return _then(_$UpdateContactMechanismRequestImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: freezed == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      extension: freezed == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      validFrom: freezed == validFrom
          ? _value.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _value.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateContactMechanismRequestImpl
    implements _UpdateContactMechanismRequest {
  const _$UpdateContactMechanismRequestImpl(
      {this.value,
      this.isPrimary,
      this.isActive,
      this.label,
      this.extension,
      this.countryCode,
      this.notes,
      this.validFrom,
      this.validTo});

  factory _$UpdateContactMechanismRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateContactMechanismRequestImplFromJson(json);

  @override
  final String? value;
  @override
  final bool? isPrimary;
  @override
  final bool? isActive;
  @override
  final String? label;
  @override
  final String? extension;
  @override
  final String? countryCode;
  @override
  final String? notes;
  @override
  final DateTime? validFrom;
  @override
  final DateTime? validTo;

  @override
  String toString() {
    return 'UpdateContactMechanismRequest(value: $value, isPrimary: $isPrimary, isActive: $isActive, label: $label, extension: $extension, countryCode: $countryCode, notes: $notes, validFrom: $validFrom, validTo: $validTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateContactMechanismRequestImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.isPrimary, isPrimary) ||
                other.isPrimary == isPrimary) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.extension, extension) ||
                other.extension == extension) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.validFrom, validFrom) ||
                other.validFrom == validFrom) &&
            (identical(other.validTo, validTo) || other.validTo == validTo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, isPrimary, isActive,
      label, extension, countryCode, notes, validFrom, validTo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateContactMechanismRequestImplCopyWith<
          _$UpdateContactMechanismRequestImpl>
      get copyWith => __$$UpdateContactMechanismRequestImplCopyWithImpl<
          _$UpdateContactMechanismRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateContactMechanismRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateContactMechanismRequest
    implements UpdateContactMechanismRequest {
  const factory _UpdateContactMechanismRequest(
      {final String? value,
      final bool? isPrimary,
      final bool? isActive,
      final String? label,
      final String? extension,
      final String? countryCode,
      final String? notes,
      final DateTime? validFrom,
      final DateTime? validTo}) = _$UpdateContactMechanismRequestImpl;

  factory _UpdateContactMechanismRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateContactMechanismRequestImpl.fromJson;

  @override
  String? get value;
  @override
  bool? get isPrimary;
  @override
  bool? get isActive;
  @override
  String? get label;
  @override
  String? get extension;
  @override
  String? get countryCode;
  @override
  String? get notes;
  @override
  DateTime? get validFrom;
  @override
  DateTime? get validTo;
  @override
  @JsonKey(ignore: true)
  _$$UpdateContactMechanismRequestImplCopyWith<
          _$UpdateContactMechanismRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateAddressRequest _$CreateAddressRequestFromJson(Map<String, dynamic> json) {
  return _CreateAddressRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateAddressRequest {
  String get type => throw _privateConstructorUsedError;
  String get addressLine1 => throw _privateConstructorUsedError;
  String? get addressLine2 => throw _privateConstructorUsedError;
  String? get addressLine3 => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get postalCode => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  bool? get isPrimary => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  DateTime? get validFrom => throw _privateConstructorUsedError;
  DateTime? get validTo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateAddressRequestCopyWith<CreateAddressRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAddressRequestCopyWith<$Res> {
  factory $CreateAddressRequestCopyWith(CreateAddressRequest value,
          $Res Function(CreateAddressRequest) then) =
      _$CreateAddressRequestCopyWithImpl<$Res, CreateAddressRequest>;
  @useResult
  $Res call(
      {String type,
      String addressLine1,
      String? addressLine2,
      String? addressLine3,
      String? city,
      String? state,
      String? postalCode,
      String? country,
      String? region,
      bool? isPrimary,
      String? label,
      String? notes,
      double? latitude,
      double? longitude,
      DateTime? validFrom,
      DateTime? validTo});
}

/// @nodoc
class _$CreateAddressRequestCopyWithImpl<$Res,
        $Val extends CreateAddressRequest>
    implements $CreateAddressRequestCopyWith<$Res> {
  _$CreateAddressRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? addressLine1 = null,
    Object? addressLine2 = freezed,
    Object? addressLine3 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postalCode = freezed,
    Object? country = freezed,
    Object? region = freezed,
    Object? isPrimary = freezed,
    Object? label = freezed,
    Object? notes = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? validFrom = freezed,
    Object? validTo = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine1: null == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine2: freezed == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine3: freezed == addressLine3
          ? _value.addressLine3
          : addressLine3 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: freezed == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      validFrom: freezed == validFrom
          ? _value.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _value.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateAddressRequestImplCopyWith<$Res>
    implements $CreateAddressRequestCopyWith<$Res> {
  factory _$$CreateAddressRequestImplCopyWith(_$CreateAddressRequestImpl value,
          $Res Function(_$CreateAddressRequestImpl) then) =
      __$$CreateAddressRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String addressLine1,
      String? addressLine2,
      String? addressLine3,
      String? city,
      String? state,
      String? postalCode,
      String? country,
      String? region,
      bool? isPrimary,
      String? label,
      String? notes,
      double? latitude,
      double? longitude,
      DateTime? validFrom,
      DateTime? validTo});
}

/// @nodoc
class __$$CreateAddressRequestImplCopyWithImpl<$Res>
    extends _$CreateAddressRequestCopyWithImpl<$Res, _$CreateAddressRequestImpl>
    implements _$$CreateAddressRequestImplCopyWith<$Res> {
  __$$CreateAddressRequestImplCopyWithImpl(_$CreateAddressRequestImpl _value,
      $Res Function(_$CreateAddressRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? addressLine1 = null,
    Object? addressLine2 = freezed,
    Object? addressLine3 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postalCode = freezed,
    Object? country = freezed,
    Object? region = freezed,
    Object? isPrimary = freezed,
    Object? label = freezed,
    Object? notes = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? validFrom = freezed,
    Object? validTo = freezed,
  }) {
    return _then(_$CreateAddressRequestImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine1: null == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine2: freezed == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine3: freezed == addressLine3
          ? _value.addressLine3
          : addressLine3 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: freezed == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      validFrom: freezed == validFrom
          ? _value.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _value.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateAddressRequestImpl implements _CreateAddressRequest {
  const _$CreateAddressRequestImpl(
      {required this.type,
      required this.addressLine1,
      this.addressLine2,
      this.addressLine3,
      this.city,
      this.state,
      this.postalCode,
      this.country,
      this.region,
      this.isPrimary,
      this.label,
      this.notes,
      this.latitude,
      this.longitude,
      this.validFrom,
      this.validTo});

  factory _$CreateAddressRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateAddressRequestImplFromJson(json);

  @override
  final String type;
  @override
  final String addressLine1;
  @override
  final String? addressLine2;
  @override
  final String? addressLine3;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? postalCode;
  @override
  final String? country;
  @override
  final String? region;
  @override
  final bool? isPrimary;
  @override
  final String? label;
  @override
  final String? notes;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final DateTime? validFrom;
  @override
  final DateTime? validTo;

  @override
  String toString() {
    return 'CreateAddressRequest(type: $type, addressLine1: $addressLine1, addressLine2: $addressLine2, addressLine3: $addressLine3, city: $city, state: $state, postalCode: $postalCode, country: $country, region: $region, isPrimary: $isPrimary, label: $label, notes: $notes, latitude: $latitude, longitude: $longitude, validFrom: $validFrom, validTo: $validTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAddressRequestImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.addressLine1, addressLine1) ||
                other.addressLine1 == addressLine1) &&
            (identical(other.addressLine2, addressLine2) ||
                other.addressLine2 == addressLine2) &&
            (identical(other.addressLine3, addressLine3) ||
                other.addressLine3 == addressLine3) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.isPrimary, isPrimary) ||
                other.isPrimary == isPrimary) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.validFrom, validFrom) ||
                other.validFrom == validFrom) &&
            (identical(other.validTo, validTo) || other.validTo == validTo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      addressLine1,
      addressLine2,
      addressLine3,
      city,
      state,
      postalCode,
      country,
      region,
      isPrimary,
      label,
      notes,
      latitude,
      longitude,
      validFrom,
      validTo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAddressRequestImplCopyWith<_$CreateAddressRequestImpl>
      get copyWith =>
          __$$CreateAddressRequestImplCopyWithImpl<_$CreateAddressRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateAddressRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateAddressRequest implements CreateAddressRequest {
  const factory _CreateAddressRequest(
      {required final String type,
      required final String addressLine1,
      final String? addressLine2,
      final String? addressLine3,
      final String? city,
      final String? state,
      final String? postalCode,
      final String? country,
      final String? region,
      final bool? isPrimary,
      final String? label,
      final String? notes,
      final double? latitude,
      final double? longitude,
      final DateTime? validFrom,
      final DateTime? validTo}) = _$CreateAddressRequestImpl;

  factory _CreateAddressRequest.fromJson(Map<String, dynamic> json) =
      _$CreateAddressRequestImpl.fromJson;

  @override
  String get type;
  @override
  String get addressLine1;
  @override
  String? get addressLine2;
  @override
  String? get addressLine3;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get postalCode;
  @override
  String? get country;
  @override
  String? get region;
  @override
  bool? get isPrimary;
  @override
  String? get label;
  @override
  String? get notes;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  DateTime? get validFrom;
  @override
  DateTime? get validTo;
  @override
  @JsonKey(ignore: true)
  _$$CreateAddressRequestImplCopyWith<_$CreateAddressRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateAddressRequest _$UpdateAddressRequestFromJson(Map<String, dynamic> json) {
  return _UpdateAddressRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateAddressRequest {
  String? get addressLine1 => throw _privateConstructorUsedError;
  String? get addressLine2 => throw _privateConstructorUsedError;
  String? get addressLine3 => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get postalCode => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  bool? get isPrimary => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  DateTime? get validFrom => throw _privateConstructorUsedError;
  DateTime? get validTo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateAddressRequestCopyWith<UpdateAddressRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAddressRequestCopyWith<$Res> {
  factory $UpdateAddressRequestCopyWith(UpdateAddressRequest value,
          $Res Function(UpdateAddressRequest) then) =
      _$UpdateAddressRequestCopyWithImpl<$Res, UpdateAddressRequest>;
  @useResult
  $Res call(
      {String? addressLine1,
      String? addressLine2,
      String? addressLine3,
      String? city,
      String? state,
      String? postalCode,
      String? country,
      String? region,
      bool? isPrimary,
      bool? isActive,
      String? label,
      String? notes,
      double? latitude,
      double? longitude,
      DateTime? validFrom,
      DateTime? validTo});
}

/// @nodoc
class _$UpdateAddressRequestCopyWithImpl<$Res,
        $Val extends UpdateAddressRequest>
    implements $UpdateAddressRequestCopyWith<$Res> {
  _$UpdateAddressRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressLine1 = freezed,
    Object? addressLine2 = freezed,
    Object? addressLine3 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postalCode = freezed,
    Object? country = freezed,
    Object? region = freezed,
    Object? isPrimary = freezed,
    Object? isActive = freezed,
    Object? label = freezed,
    Object? notes = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? validFrom = freezed,
    Object? validTo = freezed,
  }) {
    return _then(_value.copyWith(
      addressLine1: freezed == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine2: freezed == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine3: freezed == addressLine3
          ? _value.addressLine3
          : addressLine3 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: freezed == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      validFrom: freezed == validFrom
          ? _value.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _value.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateAddressRequestImplCopyWith<$Res>
    implements $UpdateAddressRequestCopyWith<$Res> {
  factory _$$UpdateAddressRequestImplCopyWith(_$UpdateAddressRequestImpl value,
          $Res Function(_$UpdateAddressRequestImpl) then) =
      __$$UpdateAddressRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? addressLine1,
      String? addressLine2,
      String? addressLine3,
      String? city,
      String? state,
      String? postalCode,
      String? country,
      String? region,
      bool? isPrimary,
      bool? isActive,
      String? label,
      String? notes,
      double? latitude,
      double? longitude,
      DateTime? validFrom,
      DateTime? validTo});
}

/// @nodoc
class __$$UpdateAddressRequestImplCopyWithImpl<$Res>
    extends _$UpdateAddressRequestCopyWithImpl<$Res, _$UpdateAddressRequestImpl>
    implements _$$UpdateAddressRequestImplCopyWith<$Res> {
  __$$UpdateAddressRequestImplCopyWithImpl(_$UpdateAddressRequestImpl _value,
      $Res Function(_$UpdateAddressRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressLine1 = freezed,
    Object? addressLine2 = freezed,
    Object? addressLine3 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postalCode = freezed,
    Object? country = freezed,
    Object? region = freezed,
    Object? isPrimary = freezed,
    Object? isActive = freezed,
    Object? label = freezed,
    Object? notes = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? validFrom = freezed,
    Object? validTo = freezed,
  }) {
    return _then(_$UpdateAddressRequestImpl(
      addressLine1: freezed == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine2: freezed == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine3: freezed == addressLine3
          ? _value.addressLine3
          : addressLine3 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: freezed == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      validFrom: freezed == validFrom
          ? _value.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _value.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateAddressRequestImpl implements _UpdateAddressRequest {
  const _$UpdateAddressRequestImpl(
      {this.addressLine1,
      this.addressLine2,
      this.addressLine3,
      this.city,
      this.state,
      this.postalCode,
      this.country,
      this.region,
      this.isPrimary,
      this.isActive,
      this.label,
      this.notes,
      this.latitude,
      this.longitude,
      this.validFrom,
      this.validTo});

  factory _$UpdateAddressRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateAddressRequestImplFromJson(json);

  @override
  final String? addressLine1;
  @override
  final String? addressLine2;
  @override
  final String? addressLine3;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? postalCode;
  @override
  final String? country;
  @override
  final String? region;
  @override
  final bool? isPrimary;
  @override
  final bool? isActive;
  @override
  final String? label;
  @override
  final String? notes;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final DateTime? validFrom;
  @override
  final DateTime? validTo;

  @override
  String toString() {
    return 'UpdateAddressRequest(addressLine1: $addressLine1, addressLine2: $addressLine2, addressLine3: $addressLine3, city: $city, state: $state, postalCode: $postalCode, country: $country, region: $region, isPrimary: $isPrimary, isActive: $isActive, label: $label, notes: $notes, latitude: $latitude, longitude: $longitude, validFrom: $validFrom, validTo: $validTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAddressRequestImpl &&
            (identical(other.addressLine1, addressLine1) ||
                other.addressLine1 == addressLine1) &&
            (identical(other.addressLine2, addressLine2) ||
                other.addressLine2 == addressLine2) &&
            (identical(other.addressLine3, addressLine3) ||
                other.addressLine3 == addressLine3) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.isPrimary, isPrimary) ||
                other.isPrimary == isPrimary) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.validFrom, validFrom) ||
                other.validFrom == validFrom) &&
            (identical(other.validTo, validTo) || other.validTo == validTo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      addressLine1,
      addressLine2,
      addressLine3,
      city,
      state,
      postalCode,
      country,
      region,
      isPrimary,
      isActive,
      label,
      notes,
      latitude,
      longitude,
      validFrom,
      validTo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAddressRequestImplCopyWith<_$UpdateAddressRequestImpl>
      get copyWith =>
          __$$UpdateAddressRequestImplCopyWithImpl<_$UpdateAddressRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateAddressRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateAddressRequest implements UpdateAddressRequest {
  const factory _UpdateAddressRequest(
      {final String? addressLine1,
      final String? addressLine2,
      final String? addressLine3,
      final String? city,
      final String? state,
      final String? postalCode,
      final String? country,
      final String? region,
      final bool? isPrimary,
      final bool? isActive,
      final String? label,
      final String? notes,
      final double? latitude,
      final double? longitude,
      final DateTime? validFrom,
      final DateTime? validTo}) = _$UpdateAddressRequestImpl;

  factory _UpdateAddressRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateAddressRequestImpl.fromJson;

  @override
  String? get addressLine1;
  @override
  String? get addressLine2;
  @override
  String? get addressLine3;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get postalCode;
  @override
  String? get country;
  @override
  String? get region;
  @override
  bool? get isPrimary;
  @override
  bool? get isActive;
  @override
  String? get label;
  @override
  String? get notes;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  DateTime? get validFrom;
  @override
  DateTime? get validTo;
  @override
  @JsonKey(ignore: true)
  _$$UpdateAddressRequestImplCopyWith<_$UpdateAddressRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
