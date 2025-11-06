// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContactMechanism {
  String get id;
  String get partyId;
  String get type; // 'email', 'phone', 'mobile', 'fax', 'website', 'social'
  String get value;
  bool get isPrimary;
  bool get isActive;
  String? get label;
  String? get extension;
  String? get countryCode;
  String? get notes;
  DateTime? get validFrom;
  DateTime? get validTo;
  Map<String, dynamic>? get metadata;

  /// Create a copy of ContactMechanism
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ContactMechanismCopyWith<ContactMechanism> get copyWith =>
      _$ContactMechanismCopyWithImpl<ContactMechanism>(
          this as ContactMechanism, _$identity);

  /// Serializes this ContactMechanism to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ContactMechanism &&
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
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'ContactMechanism(id: $id, partyId: $partyId, type: $type, value: $value, isPrimary: $isPrimary, isActive: $isActive, label: $label, extension: $extension, countryCode: $countryCode, notes: $notes, validFrom: $validFrom, validTo: $validTo, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $ContactMechanismCopyWith<$Res> {
  factory $ContactMechanismCopyWith(
          ContactMechanism value, $Res Function(ContactMechanism) _then) =
      _$ContactMechanismCopyWithImpl;
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
class _$ContactMechanismCopyWithImpl<$Res>
    implements $ContactMechanismCopyWith<$Res> {
  _$ContactMechanismCopyWithImpl(this._self, this._then);

  final ContactMechanism _self;
  final $Res Function(ContactMechanism) _then;

  /// Create a copy of ContactMechanism
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      partyId: null == partyId
          ? _self.partyId
          : partyId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      isPrimary: null == isPrimary
          ? _self.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      label: freezed == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      extension: freezed == extension
          ? _self.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _self.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      validFrom: freezed == validFrom
          ? _self.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _self.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ContactMechanism].
extension ContactMechanismPatterns on ContactMechanism {
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
    TResult Function(_ContactMechanism value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ContactMechanism() when $default != null:
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
    TResult Function(_ContactMechanism value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactMechanism():
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
    TResult? Function(_ContactMechanism value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactMechanism() when $default != null:
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
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ContactMechanism() when $default != null:
        return $default(
            _that.id,
            _that.partyId,
            _that.type,
            _that.value,
            _that.isPrimary,
            _that.isActive,
            _that.label,
            _that.extension,
            _that.countryCode,
            _that.notes,
            _that.validFrom,
            _that.validTo,
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
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactMechanism():
        return $default(
            _that.id,
            _that.partyId,
            _that.type,
            _that.value,
            _that.isPrimary,
            _that.isActive,
            _that.label,
            _that.extension,
            _that.countryCode,
            _that.notes,
            _that.validFrom,
            _that.validTo,
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
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactMechanism() when $default != null:
        return $default(
            _that.id,
            _that.partyId,
            _that.type,
            _that.value,
            _that.isPrimary,
            _that.isActive,
            _that.label,
            _that.extension,
            _that.countryCode,
            _that.notes,
            _that.validFrom,
            _that.validTo,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ContactMechanism implements ContactMechanism {
  const _ContactMechanism(
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
  factory _ContactMechanism.fromJson(Map<String, dynamic> json) =>
      _$ContactMechanismFromJson(json);

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

  /// Create a copy of ContactMechanism
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ContactMechanismCopyWith<_ContactMechanism> get copyWith =>
      __$ContactMechanismCopyWithImpl<_ContactMechanism>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ContactMechanismToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContactMechanism &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'ContactMechanism(id: $id, partyId: $partyId, type: $type, value: $value, isPrimary: $isPrimary, isActive: $isActive, label: $label, extension: $extension, countryCode: $countryCode, notes: $notes, validFrom: $validFrom, validTo: $validTo, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$ContactMechanismCopyWith<$Res>
    implements $ContactMechanismCopyWith<$Res> {
  factory _$ContactMechanismCopyWith(
          _ContactMechanism value, $Res Function(_ContactMechanism) _then) =
      __$ContactMechanismCopyWithImpl;
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
class __$ContactMechanismCopyWithImpl<$Res>
    implements _$ContactMechanismCopyWith<$Res> {
  __$ContactMechanismCopyWithImpl(this._self, this._then);

  final _ContactMechanism _self;
  final $Res Function(_ContactMechanism) _then;

  /// Create a copy of ContactMechanism
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_ContactMechanism(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      partyId: null == partyId
          ? _self.partyId
          : partyId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      isPrimary: null == isPrimary
          ? _self.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      label: freezed == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      extension: freezed == extension
          ? _self.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _self.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      validFrom: freezed == validFrom
          ? _self.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _self.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$PartyAddress {
  String get id;
  String get partyId;
  String
      get type; // 'billing', 'shipping', 'home', 'work', 'warehouse', 'office'
  String get addressLine1;
  bool get isPrimary;
  bool get isActive;
  String? get addressLine2;
  String? get addressLine3;
  String? get city;
  String? get state;
  String? get postalCode;
  String? get country;
  String? get region;
  String? get label;
  String? get notes;
  double? get latitude;
  double? get longitude;
  DateTime? get validFrom;
  DateTime? get validTo;
  Map<String, dynamic>? get metadata;

  /// Create a copy of PartyAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PartyAddressCopyWith<PartyAddress> get copyWith =>
      _$PartyAddressCopyWithImpl<PartyAddress>(
          this as PartyAddress, _$identity);

  /// Serializes this PartyAddress to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PartyAddress &&
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
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
        const DeepCollectionEquality().hash(metadata)
      ]);

  @override
  String toString() {
    return 'PartyAddress(id: $id, partyId: $partyId, type: $type, addressLine1: $addressLine1, isPrimary: $isPrimary, isActive: $isActive, addressLine2: $addressLine2, addressLine3: $addressLine3, city: $city, state: $state, postalCode: $postalCode, country: $country, region: $region, label: $label, notes: $notes, latitude: $latitude, longitude: $longitude, validFrom: $validFrom, validTo: $validTo, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $PartyAddressCopyWith<$Res> {
  factory $PartyAddressCopyWith(
          PartyAddress value, $Res Function(PartyAddress) _then) =
      _$PartyAddressCopyWithImpl;
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
class _$PartyAddressCopyWithImpl<$Res> implements $PartyAddressCopyWith<$Res> {
  _$PartyAddressCopyWithImpl(this._self, this._then);

  final PartyAddress _self;
  final $Res Function(PartyAddress) _then;

  /// Create a copy of PartyAddress
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      partyId: null == partyId
          ? _self.partyId
          : partyId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine1: null == addressLine1
          ? _self.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String,
      isPrimary: null == isPrimary
          ? _self.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      addressLine2: freezed == addressLine2
          ? _self.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine3: freezed == addressLine3
          ? _self.addressLine3
          : addressLine3 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _self.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _self.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      validFrom: freezed == validFrom
          ? _self.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _self.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PartyAddress].
extension PartyAddressPatterns on PartyAddress {
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
    TResult Function(_PartyAddress value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PartyAddress() when $default != null:
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
    TResult Function(_PartyAddress value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PartyAddress():
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
    TResult? Function(_PartyAddress value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PartyAddress() when $default != null:
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
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PartyAddress() when $default != null:
        return $default(
            _that.id,
            _that.partyId,
            _that.type,
            _that.addressLine1,
            _that.isPrimary,
            _that.isActive,
            _that.addressLine2,
            _that.addressLine3,
            _that.city,
            _that.state,
            _that.postalCode,
            _that.country,
            _that.region,
            _that.label,
            _that.notes,
            _that.latitude,
            _that.longitude,
            _that.validFrom,
            _that.validTo,
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
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PartyAddress():
        return $default(
            _that.id,
            _that.partyId,
            _that.type,
            _that.addressLine1,
            _that.isPrimary,
            _that.isActive,
            _that.addressLine2,
            _that.addressLine3,
            _that.city,
            _that.state,
            _that.postalCode,
            _that.country,
            _that.region,
            _that.label,
            _that.notes,
            _that.latitude,
            _that.longitude,
            _that.validFrom,
            _that.validTo,
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
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PartyAddress() when $default != null:
        return $default(
            _that.id,
            _that.partyId,
            _that.type,
            _that.addressLine1,
            _that.isPrimary,
            _that.isActive,
            _that.addressLine2,
            _that.addressLine3,
            _that.city,
            _that.state,
            _that.postalCode,
            _that.country,
            _that.region,
            _that.label,
            _that.notes,
            _that.latitude,
            _that.longitude,
            _that.validFrom,
            _that.validTo,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PartyAddress implements PartyAddress {
  const _PartyAddress(
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
  factory _PartyAddress.fromJson(Map<String, dynamic> json) =>
      _$PartyAddressFromJson(json);

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

  /// Create a copy of PartyAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PartyAddressCopyWith<_PartyAddress> get copyWith =>
      __$PartyAddressCopyWithImpl<_PartyAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PartyAddressToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PartyAddress &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'PartyAddress(id: $id, partyId: $partyId, type: $type, addressLine1: $addressLine1, isPrimary: $isPrimary, isActive: $isActive, addressLine2: $addressLine2, addressLine3: $addressLine3, city: $city, state: $state, postalCode: $postalCode, country: $country, region: $region, label: $label, notes: $notes, latitude: $latitude, longitude: $longitude, validFrom: $validFrom, validTo: $validTo, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$PartyAddressCopyWith<$Res>
    implements $PartyAddressCopyWith<$Res> {
  factory _$PartyAddressCopyWith(
          _PartyAddress value, $Res Function(_PartyAddress) _then) =
      __$PartyAddressCopyWithImpl;
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
class __$PartyAddressCopyWithImpl<$Res>
    implements _$PartyAddressCopyWith<$Res> {
  __$PartyAddressCopyWithImpl(this._self, this._then);

  final _PartyAddress _self;
  final $Res Function(_PartyAddress) _then;

  /// Create a copy of PartyAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_PartyAddress(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      partyId: null == partyId
          ? _self.partyId
          : partyId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine1: null == addressLine1
          ? _self.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String,
      isPrimary: null == isPrimary
          ? _self.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      addressLine2: freezed == addressLine2
          ? _self.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine3: freezed == addressLine3
          ? _self.addressLine3
          : addressLine3 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _self.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _self.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      validFrom: freezed == validFrom
          ? _self.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _self.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$CreateContactMechanismRequest {
  String get type;
  String get value;
  bool? get isPrimary;
  String? get label;
  String? get extension;
  String? get countryCode;
  String? get notes;
  DateTime? get validFrom;
  DateTime? get validTo;

  /// Create a copy of CreateContactMechanismRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateContactMechanismRequestCopyWith<CreateContactMechanismRequest>
      get copyWith => _$CreateContactMechanismRequestCopyWithImpl<
              CreateContactMechanismRequest>(
          this as CreateContactMechanismRequest, _$identity);

  /// Serializes this CreateContactMechanismRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateContactMechanismRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, value, isPrimary, label,
      extension, countryCode, notes, validFrom, validTo);

  @override
  String toString() {
    return 'CreateContactMechanismRequest(type: $type, value: $value, isPrimary: $isPrimary, label: $label, extension: $extension, countryCode: $countryCode, notes: $notes, validFrom: $validFrom, validTo: $validTo)';
  }
}

/// @nodoc
abstract mixin class $CreateContactMechanismRequestCopyWith<$Res> {
  factory $CreateContactMechanismRequestCopyWith(
          CreateContactMechanismRequest value,
          $Res Function(CreateContactMechanismRequest) _then) =
      _$CreateContactMechanismRequestCopyWithImpl;
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
class _$CreateContactMechanismRequestCopyWithImpl<$Res>
    implements $CreateContactMechanismRequestCopyWith<$Res> {
  _$CreateContactMechanismRequestCopyWithImpl(this._self, this._then);

  final CreateContactMechanismRequest _self;
  final $Res Function(CreateContactMechanismRequest) _then;

  /// Create a copy of CreateContactMechanismRequest
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      isPrimary: freezed == isPrimary
          ? _self.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      label: freezed == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      extension: freezed == extension
          ? _self.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _self.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      validFrom: freezed == validFrom
          ? _self.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _self.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateContactMechanismRequest].
extension CreateContactMechanismRequestPatterns
    on CreateContactMechanismRequest {
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
    TResult Function(_CreateContactMechanismRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateContactMechanismRequest() when $default != null:
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
    TResult Function(_CreateContactMechanismRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateContactMechanismRequest():
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
    TResult? Function(_CreateContactMechanismRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateContactMechanismRequest() when $default != null:
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
            String type,
            String value,
            bool? isPrimary,
            String? label,
            String? extension,
            String? countryCode,
            String? notes,
            DateTime? validFrom,
            DateTime? validTo)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateContactMechanismRequest() when $default != null:
        return $default(
            _that.type,
            _that.value,
            _that.isPrimary,
            _that.label,
            _that.extension,
            _that.countryCode,
            _that.notes,
            _that.validFrom,
            _that.validTo);
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
            String type,
            String value,
            bool? isPrimary,
            String? label,
            String? extension,
            String? countryCode,
            String? notes,
            DateTime? validFrom,
            DateTime? validTo)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateContactMechanismRequest():
        return $default(
            _that.type,
            _that.value,
            _that.isPrimary,
            _that.label,
            _that.extension,
            _that.countryCode,
            _that.notes,
            _that.validFrom,
            _that.validTo);
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
            String type,
            String value,
            bool? isPrimary,
            String? label,
            String? extension,
            String? countryCode,
            String? notes,
            DateTime? validFrom,
            DateTime? validTo)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateContactMechanismRequest() when $default != null:
        return $default(
            _that.type,
            _that.value,
            _that.isPrimary,
            _that.label,
            _that.extension,
            _that.countryCode,
            _that.notes,
            _that.validFrom,
            _that.validTo);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateContactMechanismRequest implements CreateContactMechanismRequest {
  const _CreateContactMechanismRequest(
      {required this.type,
      required this.value,
      this.isPrimary,
      this.label,
      this.extension,
      this.countryCode,
      this.notes,
      this.validFrom,
      this.validTo});
  factory _CreateContactMechanismRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateContactMechanismRequestFromJson(json);

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

  /// Create a copy of CreateContactMechanismRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateContactMechanismRequestCopyWith<_CreateContactMechanismRequest>
      get copyWith => __$CreateContactMechanismRequestCopyWithImpl<
          _CreateContactMechanismRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateContactMechanismRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateContactMechanismRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, value, isPrimary, label,
      extension, countryCode, notes, validFrom, validTo);

  @override
  String toString() {
    return 'CreateContactMechanismRequest(type: $type, value: $value, isPrimary: $isPrimary, label: $label, extension: $extension, countryCode: $countryCode, notes: $notes, validFrom: $validFrom, validTo: $validTo)';
  }
}

/// @nodoc
abstract mixin class _$CreateContactMechanismRequestCopyWith<$Res>
    implements $CreateContactMechanismRequestCopyWith<$Res> {
  factory _$CreateContactMechanismRequestCopyWith(
          _CreateContactMechanismRequest value,
          $Res Function(_CreateContactMechanismRequest) _then) =
      __$CreateContactMechanismRequestCopyWithImpl;
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
class __$CreateContactMechanismRequestCopyWithImpl<$Res>
    implements _$CreateContactMechanismRequestCopyWith<$Res> {
  __$CreateContactMechanismRequestCopyWithImpl(this._self, this._then);

  final _CreateContactMechanismRequest _self;
  final $Res Function(_CreateContactMechanismRequest) _then;

  /// Create a copy of CreateContactMechanismRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_CreateContactMechanismRequest(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      isPrimary: freezed == isPrimary
          ? _self.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      label: freezed == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      extension: freezed == extension
          ? _self.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _self.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      validFrom: freezed == validFrom
          ? _self.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _self.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
mixin _$UpdateContactMechanismRequest {
  String? get value;
  bool? get isPrimary;
  bool? get isActive;
  String? get label;
  String? get extension;
  String? get countryCode;
  String? get notes;
  DateTime? get validFrom;
  DateTime? get validTo;

  /// Create a copy of UpdateContactMechanismRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateContactMechanismRequestCopyWith<UpdateContactMechanismRequest>
      get copyWith => _$UpdateContactMechanismRequestCopyWithImpl<
              UpdateContactMechanismRequest>(
          this as UpdateContactMechanismRequest, _$identity);

  /// Serializes this UpdateContactMechanismRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateContactMechanismRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, isPrimary, isActive,
      label, extension, countryCode, notes, validFrom, validTo);

  @override
  String toString() {
    return 'UpdateContactMechanismRequest(value: $value, isPrimary: $isPrimary, isActive: $isActive, label: $label, extension: $extension, countryCode: $countryCode, notes: $notes, validFrom: $validFrom, validTo: $validTo)';
  }
}

/// @nodoc
abstract mixin class $UpdateContactMechanismRequestCopyWith<$Res> {
  factory $UpdateContactMechanismRequestCopyWith(
          UpdateContactMechanismRequest value,
          $Res Function(UpdateContactMechanismRequest) _then) =
      _$UpdateContactMechanismRequestCopyWithImpl;
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
class _$UpdateContactMechanismRequestCopyWithImpl<$Res>
    implements $UpdateContactMechanismRequestCopyWith<$Res> {
  _$UpdateContactMechanismRequestCopyWithImpl(this._self, this._then);

  final UpdateContactMechanismRequest _self;
  final $Res Function(UpdateContactMechanismRequest) _then;

  /// Create a copy of UpdateContactMechanismRequest
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: freezed == isPrimary
          ? _self.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      label: freezed == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      extension: freezed == extension
          ? _self.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _self.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      validFrom: freezed == validFrom
          ? _self.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _self.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateContactMechanismRequest].
extension UpdateContactMechanismRequestPatterns
    on UpdateContactMechanismRequest {
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
    TResult Function(_UpdateContactMechanismRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateContactMechanismRequest() when $default != null:
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
    TResult Function(_UpdateContactMechanismRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateContactMechanismRequest():
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
    TResult? Function(_UpdateContactMechanismRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateContactMechanismRequest() when $default != null:
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
            String? value,
            bool? isPrimary,
            bool? isActive,
            String? label,
            String? extension,
            String? countryCode,
            String? notes,
            DateTime? validFrom,
            DateTime? validTo)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateContactMechanismRequest() when $default != null:
        return $default(
            _that.value,
            _that.isPrimary,
            _that.isActive,
            _that.label,
            _that.extension,
            _that.countryCode,
            _that.notes,
            _that.validFrom,
            _that.validTo);
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
            String? value,
            bool? isPrimary,
            bool? isActive,
            String? label,
            String? extension,
            String? countryCode,
            String? notes,
            DateTime? validFrom,
            DateTime? validTo)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateContactMechanismRequest():
        return $default(
            _that.value,
            _that.isPrimary,
            _that.isActive,
            _that.label,
            _that.extension,
            _that.countryCode,
            _that.notes,
            _that.validFrom,
            _that.validTo);
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
            String? value,
            bool? isPrimary,
            bool? isActive,
            String? label,
            String? extension,
            String? countryCode,
            String? notes,
            DateTime? validFrom,
            DateTime? validTo)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateContactMechanismRequest() when $default != null:
        return $default(
            _that.value,
            _that.isPrimary,
            _that.isActive,
            _that.label,
            _that.extension,
            _that.countryCode,
            _that.notes,
            _that.validFrom,
            _that.validTo);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateContactMechanismRequest implements UpdateContactMechanismRequest {
  const _UpdateContactMechanismRequest(
      {this.value,
      this.isPrimary,
      this.isActive,
      this.label,
      this.extension,
      this.countryCode,
      this.notes,
      this.validFrom,
      this.validTo});
  factory _UpdateContactMechanismRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateContactMechanismRequestFromJson(json);

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

  /// Create a copy of UpdateContactMechanismRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateContactMechanismRequestCopyWith<_UpdateContactMechanismRequest>
      get copyWith => __$UpdateContactMechanismRequestCopyWithImpl<
          _UpdateContactMechanismRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateContactMechanismRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateContactMechanismRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, isPrimary, isActive,
      label, extension, countryCode, notes, validFrom, validTo);

  @override
  String toString() {
    return 'UpdateContactMechanismRequest(value: $value, isPrimary: $isPrimary, isActive: $isActive, label: $label, extension: $extension, countryCode: $countryCode, notes: $notes, validFrom: $validFrom, validTo: $validTo)';
  }
}

/// @nodoc
abstract mixin class _$UpdateContactMechanismRequestCopyWith<$Res>
    implements $UpdateContactMechanismRequestCopyWith<$Res> {
  factory _$UpdateContactMechanismRequestCopyWith(
          _UpdateContactMechanismRequest value,
          $Res Function(_UpdateContactMechanismRequest) _then) =
      __$UpdateContactMechanismRequestCopyWithImpl;
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
class __$UpdateContactMechanismRequestCopyWithImpl<$Res>
    implements _$UpdateContactMechanismRequestCopyWith<$Res> {
  __$UpdateContactMechanismRequestCopyWithImpl(this._self, this._then);

  final _UpdateContactMechanismRequest _self;
  final $Res Function(_UpdateContactMechanismRequest) _then;

  /// Create a copy of UpdateContactMechanismRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_UpdateContactMechanismRequest(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: freezed == isPrimary
          ? _self.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      label: freezed == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      extension: freezed == extension
          ? _self.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _self.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      validFrom: freezed == validFrom
          ? _self.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _self.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
mixin _$CreateAddressRequest {
  String get type;
  String get addressLine1;
  String? get addressLine2;
  String? get addressLine3;
  String? get city;
  String? get state;
  String? get postalCode;
  String? get country;
  String? get region;
  bool? get isPrimary;
  String? get label;
  String? get notes;
  double? get latitude;
  double? get longitude;
  DateTime? get validFrom;
  DateTime? get validTo;

  /// Create a copy of CreateAddressRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateAddressRequestCopyWith<CreateAddressRequest> get copyWith =>
      _$CreateAddressRequestCopyWithImpl<CreateAddressRequest>(
          this as CreateAddressRequest, _$identity);

  /// Serializes this CreateAddressRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateAddressRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'CreateAddressRequest(type: $type, addressLine1: $addressLine1, addressLine2: $addressLine2, addressLine3: $addressLine3, city: $city, state: $state, postalCode: $postalCode, country: $country, region: $region, isPrimary: $isPrimary, label: $label, notes: $notes, latitude: $latitude, longitude: $longitude, validFrom: $validFrom, validTo: $validTo)';
  }
}

/// @nodoc
abstract mixin class $CreateAddressRequestCopyWith<$Res> {
  factory $CreateAddressRequestCopyWith(CreateAddressRequest value,
          $Res Function(CreateAddressRequest) _then) =
      _$CreateAddressRequestCopyWithImpl;
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
class _$CreateAddressRequestCopyWithImpl<$Res>
    implements $CreateAddressRequestCopyWith<$Res> {
  _$CreateAddressRequestCopyWithImpl(this._self, this._then);

  final CreateAddressRequest _self;
  final $Res Function(CreateAddressRequest) _then;

  /// Create a copy of CreateAddressRequest
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine1: null == addressLine1
          ? _self.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine2: freezed == addressLine2
          ? _self.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine3: freezed == addressLine3
          ? _self.addressLine3
          : addressLine3 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _self.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _self.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: freezed == isPrimary
          ? _self.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      label: freezed == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      validFrom: freezed == validFrom
          ? _self.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _self.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateAddressRequest].
extension CreateAddressRequestPatterns on CreateAddressRequest {
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
    TResult Function(_CreateAddressRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateAddressRequest() when $default != null:
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
    TResult Function(_CreateAddressRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateAddressRequest():
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
    TResult? Function(_CreateAddressRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateAddressRequest() when $default != null:
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
            String type,
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
            DateTime? validTo)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateAddressRequest() when $default != null:
        return $default(
            _that.type,
            _that.addressLine1,
            _that.addressLine2,
            _that.addressLine3,
            _that.city,
            _that.state,
            _that.postalCode,
            _that.country,
            _that.region,
            _that.isPrimary,
            _that.label,
            _that.notes,
            _that.latitude,
            _that.longitude,
            _that.validFrom,
            _that.validTo);
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
            String type,
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
            DateTime? validTo)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateAddressRequest():
        return $default(
            _that.type,
            _that.addressLine1,
            _that.addressLine2,
            _that.addressLine3,
            _that.city,
            _that.state,
            _that.postalCode,
            _that.country,
            _that.region,
            _that.isPrimary,
            _that.label,
            _that.notes,
            _that.latitude,
            _that.longitude,
            _that.validFrom,
            _that.validTo);
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
            String type,
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
            DateTime? validTo)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateAddressRequest() when $default != null:
        return $default(
            _that.type,
            _that.addressLine1,
            _that.addressLine2,
            _that.addressLine3,
            _that.city,
            _that.state,
            _that.postalCode,
            _that.country,
            _that.region,
            _that.isPrimary,
            _that.label,
            _that.notes,
            _that.latitude,
            _that.longitude,
            _that.validFrom,
            _that.validTo);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateAddressRequest implements CreateAddressRequest {
  const _CreateAddressRequest(
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
  factory _CreateAddressRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateAddressRequestFromJson(json);

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

  /// Create a copy of CreateAddressRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateAddressRequestCopyWith<_CreateAddressRequest> get copyWith =>
      __$CreateAddressRequestCopyWithImpl<_CreateAddressRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateAddressRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateAddressRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'CreateAddressRequest(type: $type, addressLine1: $addressLine1, addressLine2: $addressLine2, addressLine3: $addressLine3, city: $city, state: $state, postalCode: $postalCode, country: $country, region: $region, isPrimary: $isPrimary, label: $label, notes: $notes, latitude: $latitude, longitude: $longitude, validFrom: $validFrom, validTo: $validTo)';
  }
}

/// @nodoc
abstract mixin class _$CreateAddressRequestCopyWith<$Res>
    implements $CreateAddressRequestCopyWith<$Res> {
  factory _$CreateAddressRequestCopyWith(_CreateAddressRequest value,
          $Res Function(_CreateAddressRequest) _then) =
      __$CreateAddressRequestCopyWithImpl;
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
class __$CreateAddressRequestCopyWithImpl<$Res>
    implements _$CreateAddressRequestCopyWith<$Res> {
  __$CreateAddressRequestCopyWithImpl(this._self, this._then);

  final _CreateAddressRequest _self;
  final $Res Function(_CreateAddressRequest) _then;

  /// Create a copy of CreateAddressRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_CreateAddressRequest(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine1: null == addressLine1
          ? _self.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine2: freezed == addressLine2
          ? _self.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine3: freezed == addressLine3
          ? _self.addressLine3
          : addressLine3 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _self.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _self.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: freezed == isPrimary
          ? _self.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      label: freezed == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      validFrom: freezed == validFrom
          ? _self.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _self.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
mixin _$UpdateAddressRequest {
  String? get addressLine1;
  String? get addressLine2;
  String? get addressLine3;
  String? get city;
  String? get state;
  String? get postalCode;
  String? get country;
  String? get region;
  bool? get isPrimary;
  bool? get isActive;
  String? get label;
  String? get notes;
  double? get latitude;
  double? get longitude;
  DateTime? get validFrom;
  DateTime? get validTo;

  /// Create a copy of UpdateAddressRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateAddressRequestCopyWith<UpdateAddressRequest> get copyWith =>
      _$UpdateAddressRequestCopyWithImpl<UpdateAddressRequest>(
          this as UpdateAddressRequest, _$identity);

  /// Serializes this UpdateAddressRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateAddressRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'UpdateAddressRequest(addressLine1: $addressLine1, addressLine2: $addressLine2, addressLine3: $addressLine3, city: $city, state: $state, postalCode: $postalCode, country: $country, region: $region, isPrimary: $isPrimary, isActive: $isActive, label: $label, notes: $notes, latitude: $latitude, longitude: $longitude, validFrom: $validFrom, validTo: $validTo)';
  }
}

/// @nodoc
abstract mixin class $UpdateAddressRequestCopyWith<$Res> {
  factory $UpdateAddressRequestCopyWith(UpdateAddressRequest value,
          $Res Function(UpdateAddressRequest) _then) =
      _$UpdateAddressRequestCopyWithImpl;
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
class _$UpdateAddressRequestCopyWithImpl<$Res>
    implements $UpdateAddressRequestCopyWith<$Res> {
  _$UpdateAddressRequestCopyWithImpl(this._self, this._then);

  final UpdateAddressRequest _self;
  final $Res Function(UpdateAddressRequest) _then;

  /// Create a copy of UpdateAddressRequest
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      addressLine1: freezed == addressLine1
          ? _self.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine2: freezed == addressLine2
          ? _self.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine3: freezed == addressLine3
          ? _self.addressLine3
          : addressLine3 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _self.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _self.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: freezed == isPrimary
          ? _self.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      label: freezed == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      validFrom: freezed == validFrom
          ? _self.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _self.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateAddressRequest].
extension UpdateAddressRequestPatterns on UpdateAddressRequest {
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
    TResult Function(_UpdateAddressRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateAddressRequest() when $default != null:
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
    TResult Function(_UpdateAddressRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateAddressRequest():
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
    TResult? Function(_UpdateAddressRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateAddressRequest() when $default != null:
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
            String? addressLine1,
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
            DateTime? validTo)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateAddressRequest() when $default != null:
        return $default(
            _that.addressLine1,
            _that.addressLine2,
            _that.addressLine3,
            _that.city,
            _that.state,
            _that.postalCode,
            _that.country,
            _that.region,
            _that.isPrimary,
            _that.isActive,
            _that.label,
            _that.notes,
            _that.latitude,
            _that.longitude,
            _that.validFrom,
            _that.validTo);
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
            String? addressLine1,
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
            DateTime? validTo)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateAddressRequest():
        return $default(
            _that.addressLine1,
            _that.addressLine2,
            _that.addressLine3,
            _that.city,
            _that.state,
            _that.postalCode,
            _that.country,
            _that.region,
            _that.isPrimary,
            _that.isActive,
            _that.label,
            _that.notes,
            _that.latitude,
            _that.longitude,
            _that.validFrom,
            _that.validTo);
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
            String? addressLine1,
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
            DateTime? validTo)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateAddressRequest() when $default != null:
        return $default(
            _that.addressLine1,
            _that.addressLine2,
            _that.addressLine3,
            _that.city,
            _that.state,
            _that.postalCode,
            _that.country,
            _that.region,
            _that.isPrimary,
            _that.isActive,
            _that.label,
            _that.notes,
            _that.latitude,
            _that.longitude,
            _that.validFrom,
            _that.validTo);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateAddressRequest implements UpdateAddressRequest {
  const _UpdateAddressRequest(
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
  factory _UpdateAddressRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateAddressRequestFromJson(json);

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

  /// Create a copy of UpdateAddressRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateAddressRequestCopyWith<_UpdateAddressRequest> get copyWith =>
      __$UpdateAddressRequestCopyWithImpl<_UpdateAddressRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateAddressRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateAddressRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'UpdateAddressRequest(addressLine1: $addressLine1, addressLine2: $addressLine2, addressLine3: $addressLine3, city: $city, state: $state, postalCode: $postalCode, country: $country, region: $region, isPrimary: $isPrimary, isActive: $isActive, label: $label, notes: $notes, latitude: $latitude, longitude: $longitude, validFrom: $validFrom, validTo: $validTo)';
  }
}

/// @nodoc
abstract mixin class _$UpdateAddressRequestCopyWith<$Res>
    implements $UpdateAddressRequestCopyWith<$Res> {
  factory _$UpdateAddressRequestCopyWith(_UpdateAddressRequest value,
          $Res Function(_UpdateAddressRequest) _then) =
      __$UpdateAddressRequestCopyWithImpl;
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
class __$UpdateAddressRequestCopyWithImpl<$Res>
    implements _$UpdateAddressRequestCopyWith<$Res> {
  __$UpdateAddressRequestCopyWithImpl(this._self, this._then);

  final _UpdateAddressRequest _self;
  final $Res Function(_UpdateAddressRequest) _then;

  /// Create a copy of UpdateAddressRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_UpdateAddressRequest(
      addressLine1: freezed == addressLine1
          ? _self.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine2: freezed == addressLine2
          ? _self.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine3: freezed == addressLine3
          ? _self.addressLine3
          : addressLine3 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _self.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _self.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: freezed == isPrimary
          ? _self.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      label: freezed == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      validFrom: freezed == validFrom
          ? _self.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _self.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
