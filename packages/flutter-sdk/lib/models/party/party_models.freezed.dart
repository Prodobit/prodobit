// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'party_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatePartyRequest {
  String get name;
  String get type;
  String? get code;
  String? get email;
  String? get phone;
  String? get taxId;
  Address? get address;
  ContactInfo? get contactInfo;
  Map<String, dynamic>? get metadata;

  /// Create a copy of CreatePartyRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreatePartyRequestCopyWith<CreatePartyRequest> get copyWith =>
      _$CreatePartyRequestCopyWithImpl<CreatePartyRequest>(
          this as CreatePartyRequest, _$identity);

  /// Serializes this CreatePartyRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreatePartyRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.taxId, taxId) || other.taxId == taxId) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.contactInfo, contactInfo) ||
                other.contactInfo == contactInfo) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      type,
      code,
      email,
      phone,
      taxId,
      address,
      contactInfo,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'CreatePartyRequest(name: $name, type: $type, code: $code, email: $email, phone: $phone, taxId: $taxId, address: $address, contactInfo: $contactInfo, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $CreatePartyRequestCopyWith<$Res> {
  factory $CreatePartyRequestCopyWith(
          CreatePartyRequest value, $Res Function(CreatePartyRequest) _then) =
      _$CreatePartyRequestCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String type,
      String? code,
      String? email,
      String? phone,
      String? taxId,
      Address? address,
      ContactInfo? contactInfo,
      Map<String, dynamic>? metadata});

  $AddressCopyWith<$Res>? get address;
  $ContactInfoCopyWith<$Res>? get contactInfo;
}

/// @nodoc
class _$CreatePartyRequestCopyWithImpl<$Res>
    implements $CreatePartyRequestCopyWith<$Res> {
  _$CreatePartyRequestCopyWithImpl(this._self, this._then);

  final CreatePartyRequest _self;
  final $Res Function(CreatePartyRequest) _then;

  /// Create a copy of CreatePartyRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? code = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? taxId = freezed,
    Object? address = freezed,
    Object? contactInfo = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      taxId: freezed == taxId
          ? _self.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as String?,
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

  /// Create a copy of CreatePartyRequest
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

  /// Create a copy of CreatePartyRequest
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

/// Adds pattern-matching-related methods to [CreatePartyRequest].
extension CreatePartyRequestPatterns on CreatePartyRequest {
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
    TResult Function(_CreatePartyRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePartyRequest() when $default != null:
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
    TResult Function(_CreatePartyRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePartyRequest():
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
    TResult? Function(_CreatePartyRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePartyRequest() when $default != null:
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
            String type,
            String? code,
            String? email,
            String? phone,
            String? taxId,
            Address? address,
            ContactInfo? contactInfo,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePartyRequest() when $default != null:
        return $default(
            _that.name,
            _that.type,
            _that.code,
            _that.email,
            _that.phone,
            _that.taxId,
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
            String name,
            String type,
            String? code,
            String? email,
            String? phone,
            String? taxId,
            Address? address,
            ContactInfo? contactInfo,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePartyRequest():
        return $default(
            _that.name,
            _that.type,
            _that.code,
            _that.email,
            _that.phone,
            _that.taxId,
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
            String name,
            String type,
            String? code,
            String? email,
            String? phone,
            String? taxId,
            Address? address,
            ContactInfo? contactInfo,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePartyRequest() when $default != null:
        return $default(
            _that.name,
            _that.type,
            _that.code,
            _that.email,
            _that.phone,
            _that.taxId,
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
class _CreatePartyRequest implements CreatePartyRequest {
  const _CreatePartyRequest(
      {required this.name,
      required this.type,
      this.code,
      this.email,
      this.phone,
      this.taxId,
      this.address,
      this.contactInfo,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _CreatePartyRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePartyRequestFromJson(json);

  @override
  final String name;
  @override
  final String type;
  @override
  final String? code;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? taxId;
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

  /// Create a copy of CreatePartyRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreatePartyRequestCopyWith<_CreatePartyRequest> get copyWith =>
      __$CreatePartyRequestCopyWithImpl<_CreatePartyRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreatePartyRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreatePartyRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.taxId, taxId) || other.taxId == taxId) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.contactInfo, contactInfo) ||
                other.contactInfo == contactInfo) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      type,
      code,
      email,
      phone,
      taxId,
      address,
      contactInfo,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'CreatePartyRequest(name: $name, type: $type, code: $code, email: $email, phone: $phone, taxId: $taxId, address: $address, contactInfo: $contactInfo, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$CreatePartyRequestCopyWith<$Res>
    implements $CreatePartyRequestCopyWith<$Res> {
  factory _$CreatePartyRequestCopyWith(
          _CreatePartyRequest value, $Res Function(_CreatePartyRequest) _then) =
      __$CreatePartyRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String type,
      String? code,
      String? email,
      String? phone,
      String? taxId,
      Address? address,
      ContactInfo? contactInfo,
      Map<String, dynamic>? metadata});

  @override
  $AddressCopyWith<$Res>? get address;
  @override
  $ContactInfoCopyWith<$Res>? get contactInfo;
}

/// @nodoc
class __$CreatePartyRequestCopyWithImpl<$Res>
    implements _$CreatePartyRequestCopyWith<$Res> {
  __$CreatePartyRequestCopyWithImpl(this._self, this._then);

  final _CreatePartyRequest _self;
  final $Res Function(_CreatePartyRequest) _then;

  /// Create a copy of CreatePartyRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? code = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? taxId = freezed,
    Object? address = freezed,
    Object? contactInfo = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_CreatePartyRequest(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      taxId: freezed == taxId
          ? _self.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as String?,
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

  /// Create a copy of CreatePartyRequest
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

  /// Create a copy of CreatePartyRequest
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
mixin _$Party {
  String get id;
  String get name;
  String get type;
  DateTime get createdAt;
  String? get code;
  String? get email;
  String? get phone;
  String? get taxId;
  Address? get address;
  ContactInfo? get contactInfo;
  String? get organizationId;
  bool? get isActive;
  DateTime? get updatedAt;
  Map<String, dynamic>? get metadata;

  /// Create a copy of Party
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PartyCopyWith<Party> get copyWith =>
      _$PartyCopyWithImpl<Party>(this as Party, _$identity);

  /// Serializes this Party to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Party &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.taxId, taxId) || other.taxId == taxId) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.contactInfo, contactInfo) ||
                other.contactInfo == contactInfo) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      type,
      createdAt,
      code,
      email,
      phone,
      taxId,
      address,
      contactInfo,
      organizationId,
      isActive,
      updatedAt,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'Party(id: $id, name: $name, type: $type, createdAt: $createdAt, code: $code, email: $email, phone: $phone, taxId: $taxId, address: $address, contactInfo: $contactInfo, organizationId: $organizationId, isActive: $isActive, updatedAt: $updatedAt, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $PartyCopyWith<$Res> {
  factory $PartyCopyWith(Party value, $Res Function(Party) _then) =
      _$PartyCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String type,
      DateTime createdAt,
      String? code,
      String? email,
      String? phone,
      String? taxId,
      Address? address,
      ContactInfo? contactInfo,
      String? organizationId,
      bool? isActive,
      DateTime? updatedAt,
      Map<String, dynamic>? metadata});

  $AddressCopyWith<$Res>? get address;
  $ContactInfoCopyWith<$Res>? get contactInfo;
}

/// @nodoc
class _$PartyCopyWithImpl<$Res> implements $PartyCopyWith<$Res> {
  _$PartyCopyWithImpl(this._self, this._then);

  final Party _self;
  final $Res Function(Party) _then;

  /// Create a copy of Party
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? createdAt = null,
    Object? code = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? taxId = freezed,
    Object? address = freezed,
    Object? contactInfo = freezed,
    Object? organizationId = freezed,
    Object? isActive = freezed,
    Object? updatedAt = freezed,
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
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      code: freezed == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      taxId: freezed == taxId
          ? _self.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      contactInfo: freezed == contactInfo
          ? _self.contactInfo
          : contactInfo // ignore: cast_nullable_to_non_nullable
              as ContactInfo?,
      organizationId: freezed == organizationId
          ? _self.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
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

  /// Create a copy of Party
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

  /// Create a copy of Party
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

/// Adds pattern-matching-related methods to [Party].
extension PartyPatterns on Party {
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
    TResult Function(_Party value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Party() when $default != null:
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
    TResult Function(_Party value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Party():
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
    TResult? Function(_Party value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Party() when $default != null:
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
            String type,
            DateTime createdAt,
            String? code,
            String? email,
            String? phone,
            String? taxId,
            Address? address,
            ContactInfo? contactInfo,
            String? organizationId,
            bool? isActive,
            DateTime? updatedAt,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Party() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.type,
            _that.createdAt,
            _that.code,
            _that.email,
            _that.phone,
            _that.taxId,
            _that.address,
            _that.contactInfo,
            _that.organizationId,
            _that.isActive,
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
            String name,
            String type,
            DateTime createdAt,
            String? code,
            String? email,
            String? phone,
            String? taxId,
            Address? address,
            ContactInfo? contactInfo,
            String? organizationId,
            bool? isActive,
            DateTime? updatedAt,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Party():
        return $default(
            _that.id,
            _that.name,
            _that.type,
            _that.createdAt,
            _that.code,
            _that.email,
            _that.phone,
            _that.taxId,
            _that.address,
            _that.contactInfo,
            _that.organizationId,
            _that.isActive,
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
            String name,
            String type,
            DateTime createdAt,
            String? code,
            String? email,
            String? phone,
            String? taxId,
            Address? address,
            ContactInfo? contactInfo,
            String? organizationId,
            bool? isActive,
            DateTime? updatedAt,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Party() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.type,
            _that.createdAt,
            _that.code,
            _that.email,
            _that.phone,
            _that.taxId,
            _that.address,
            _that.contactInfo,
            _that.organizationId,
            _that.isActive,
            _that.updatedAt,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Party implements Party {
  const _Party(
      {required this.id,
      required this.name,
      required this.type,
      required this.createdAt,
      this.code,
      this.email,
      this.phone,
      this.taxId,
      this.address,
      this.contactInfo,
      this.organizationId,
      this.isActive,
      this.updatedAt,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _Party.fromJson(Map<String, dynamic> json) => _$PartyFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String type;
  @override
  final DateTime createdAt;
  @override
  final String? code;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? taxId;
  @override
  final Address? address;
  @override
  final ContactInfo? contactInfo;
  @override
  final String? organizationId;
  @override
  final bool? isActive;
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

  /// Create a copy of Party
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PartyCopyWith<_Party> get copyWith =>
      __$PartyCopyWithImpl<_Party>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PartyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Party &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.taxId, taxId) || other.taxId == taxId) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.contactInfo, contactInfo) ||
                other.contactInfo == contactInfo) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      type,
      createdAt,
      code,
      email,
      phone,
      taxId,
      address,
      contactInfo,
      organizationId,
      isActive,
      updatedAt,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'Party(id: $id, name: $name, type: $type, createdAt: $createdAt, code: $code, email: $email, phone: $phone, taxId: $taxId, address: $address, contactInfo: $contactInfo, organizationId: $organizationId, isActive: $isActive, updatedAt: $updatedAt, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$PartyCopyWith<$Res> implements $PartyCopyWith<$Res> {
  factory _$PartyCopyWith(_Party value, $Res Function(_Party) _then) =
      __$PartyCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String type,
      DateTime createdAt,
      String? code,
      String? email,
      String? phone,
      String? taxId,
      Address? address,
      ContactInfo? contactInfo,
      String? organizationId,
      bool? isActive,
      DateTime? updatedAt,
      Map<String, dynamic>? metadata});

  @override
  $AddressCopyWith<$Res>? get address;
  @override
  $ContactInfoCopyWith<$Res>? get contactInfo;
}

/// @nodoc
class __$PartyCopyWithImpl<$Res> implements _$PartyCopyWith<$Res> {
  __$PartyCopyWithImpl(this._self, this._then);

  final _Party _self;
  final $Res Function(_Party) _then;

  /// Create a copy of Party
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? createdAt = null,
    Object? code = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? taxId = freezed,
    Object? address = freezed,
    Object? contactInfo = freezed,
    Object? organizationId = freezed,
    Object? isActive = freezed,
    Object? updatedAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_Party(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      code: freezed == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      taxId: freezed == taxId
          ? _self.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      contactInfo: freezed == contactInfo
          ? _self.contactInfo
          : contactInfo // ignore: cast_nullable_to_non_nullable
              as ContactInfo?,
      organizationId: freezed == organizationId
          ? _self.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
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

  /// Create a copy of Party
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

  /// Create a copy of Party
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
mixin _$UpdatePartyRequest {
  String? get name;
  String? get description;
  bool? get isActive;
  Map<String, dynamic>? get attributes;
  Map<String, dynamic>? get metadata;

  /// Create a copy of UpdatePartyRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdatePartyRequestCopyWith<UpdatePartyRequest> get copyWith =>
      _$UpdatePartyRequestCopyWithImpl<UpdatePartyRequest>(
          this as UpdatePartyRequest, _$identity);

  /// Serializes this UpdatePartyRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdatePartyRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      isActive,
      const DeepCollectionEquality().hash(attributes),
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'UpdatePartyRequest(name: $name, description: $description, isActive: $isActive, attributes: $attributes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $UpdatePartyRequestCopyWith<$Res> {
  factory $UpdatePartyRequestCopyWith(
          UpdatePartyRequest value, $Res Function(UpdatePartyRequest) _then) =
      _$UpdatePartyRequestCopyWithImpl;
  @useResult
  $Res call(
      {String? name,
      String? description,
      bool? isActive,
      Map<String, dynamic>? attributes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$UpdatePartyRequestCopyWithImpl<$Res>
    implements $UpdatePartyRequestCopyWith<$Res> {
  _$UpdatePartyRequestCopyWithImpl(this._self, this._then);

  final UpdatePartyRequest _self;
  final $Res Function(UpdatePartyRequest) _then;

  /// Create a copy of UpdatePartyRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? isActive = freezed,
    Object? attributes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      attributes: freezed == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdatePartyRequest].
extension UpdatePartyRequestPatterns on UpdatePartyRequest {
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
    TResult Function(_UpdatePartyRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdatePartyRequest() when $default != null:
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
    TResult Function(_UpdatePartyRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePartyRequest():
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
    TResult? Function(_UpdatePartyRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePartyRequest() when $default != null:
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
    TResult Function(String? name, String? description, bool? isActive,
            Map<String, dynamic>? attributes, Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdatePartyRequest() when $default != null:
        return $default(_that.name, _that.description, _that.isActive,
            _that.attributes, _that.metadata);
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
    TResult Function(String? name, String? description, bool? isActive,
            Map<String, dynamic>? attributes, Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePartyRequest():
        return $default(_that.name, _that.description, _that.isActive,
            _that.attributes, _that.metadata);
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
    TResult? Function(String? name, String? description, bool? isActive,
            Map<String, dynamic>? attributes, Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePartyRequest() when $default != null:
        return $default(_that.name, _that.description, _that.isActive,
            _that.attributes, _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdatePartyRequest implements UpdatePartyRequest {
  const _UpdatePartyRequest(
      {this.name,
      this.description,
      this.isActive,
      final Map<String, dynamic>? attributes,
      final Map<String, dynamic>? metadata})
      : _attributes = attributes,
        _metadata = metadata;
  factory _UpdatePartyRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdatePartyRequestFromJson(json);

  @override
  final String? name;
  @override
  final String? description;
  @override
  final bool? isActive;
  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
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

  /// Create a copy of UpdatePartyRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdatePartyRequestCopyWith<_UpdatePartyRequest> get copyWith =>
      __$UpdatePartyRequestCopyWithImpl<_UpdatePartyRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdatePartyRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdatePartyRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      isActive,
      const DeepCollectionEquality().hash(_attributes),
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'UpdatePartyRequest(name: $name, description: $description, isActive: $isActive, attributes: $attributes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$UpdatePartyRequestCopyWith<$Res>
    implements $UpdatePartyRequestCopyWith<$Res> {
  factory _$UpdatePartyRequestCopyWith(
          _UpdatePartyRequest value, $Res Function(_UpdatePartyRequest) _then) =
      __$UpdatePartyRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? name,
      String? description,
      bool? isActive,
      Map<String, dynamic>? attributes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$UpdatePartyRequestCopyWithImpl<$Res>
    implements _$UpdatePartyRequestCopyWith<$Res> {
  __$UpdatePartyRequestCopyWithImpl(this._self, this._then);

  final _UpdatePartyRequest _self;
  final $Res Function(_UpdatePartyRequest) _then;

  /// Create a copy of UpdatePartyRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? isActive = freezed,
    Object? attributes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_UpdatePartyRequest(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      attributes: freezed == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
