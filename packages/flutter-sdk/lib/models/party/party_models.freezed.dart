// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'party_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreatePartyRequest _$CreatePartyRequestFromJson(Map<String, dynamic> json) {
  return _CreatePartyRequest.fromJson(json);
}

/// @nodoc
mixin _$CreatePartyRequest {
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get taxId => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;
  ContactInfo? get contactInfo => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePartyRequestCopyWith<CreatePartyRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePartyRequestCopyWith<$Res> {
  factory $CreatePartyRequestCopyWith(
          CreatePartyRequest value, $Res Function(CreatePartyRequest) then) =
      _$CreatePartyRequestCopyWithImpl<$Res, CreatePartyRequest>;
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
class _$CreatePartyRequestCopyWithImpl<$Res, $Val extends CreatePartyRequest>
    implements $CreatePartyRequestCopyWith<$Res> {
  _$CreatePartyRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      taxId: freezed == taxId
          ? _value.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$CreatePartyRequestImplCopyWith<$Res>
    implements $CreatePartyRequestCopyWith<$Res> {
  factory _$$CreatePartyRequestImplCopyWith(_$CreatePartyRequestImpl value,
          $Res Function(_$CreatePartyRequestImpl) then) =
      __$$CreatePartyRequestImplCopyWithImpl<$Res>;
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
class __$$CreatePartyRequestImplCopyWithImpl<$Res>
    extends _$CreatePartyRequestCopyWithImpl<$Res, _$CreatePartyRequestImpl>
    implements _$$CreatePartyRequestImplCopyWith<$Res> {
  __$$CreatePartyRequestImplCopyWithImpl(_$CreatePartyRequestImpl _value,
      $Res Function(_$CreatePartyRequestImpl) _then)
      : super(_value, _then);

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
    return _then(_$CreatePartyRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      taxId: freezed == taxId
          ? _value.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
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
class _$CreatePartyRequestImpl implements _CreatePartyRequest {
  const _$CreatePartyRequestImpl(
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

  factory _$CreatePartyRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatePartyRequestImplFromJson(json);

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

  @override
  String toString() {
    return 'CreatePartyRequest(name: $name, type: $type, code: $code, email: $email, phone: $phone, taxId: $taxId, address: $address, contactInfo: $contactInfo, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePartyRequestImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePartyRequestImplCopyWith<_$CreatePartyRequestImpl> get copyWith =>
      __$$CreatePartyRequestImplCopyWithImpl<_$CreatePartyRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePartyRequestImplToJson(
      this,
    );
  }
}

abstract class _CreatePartyRequest implements CreatePartyRequest {
  const factory _CreatePartyRequest(
      {required final String name,
      required final String type,
      final String? code,
      final String? email,
      final String? phone,
      final String? taxId,
      final Address? address,
      final ContactInfo? contactInfo,
      final Map<String, dynamic>? metadata}) = _$CreatePartyRequestImpl;

  factory _CreatePartyRequest.fromJson(Map<String, dynamic> json) =
      _$CreatePartyRequestImpl.fromJson;

  @override
  String get name;
  @override
  String get type;
  @override
  String? get code;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get taxId;
  @override
  Address? get address;
  @override
  ContactInfo? get contactInfo;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$CreatePartyRequestImplCopyWith<_$CreatePartyRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Party _$PartyFromJson(Map<String, dynamic> json) {
  return _Party.fromJson(json);
}

/// @nodoc
mixin _$Party {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get taxId => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;
  ContactInfo? get contactInfo => throw _privateConstructorUsedError;
  String? get organizationId => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PartyCopyWith<Party> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartyCopyWith<$Res> {
  factory $PartyCopyWith(Party value, $Res Function(Party) then) =
      _$PartyCopyWithImpl<$Res, Party>;
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
class _$PartyCopyWithImpl<$Res, $Val extends Party>
    implements $PartyCopyWith<$Res> {
  _$PartyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      taxId: freezed == taxId
          ? _value.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      contactInfo: freezed == contactInfo
          ? _value.contactInfo
          : contactInfo // ignore: cast_nullable_to_non_nullable
              as ContactInfo?,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
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
abstract class _$$PartyImplCopyWith<$Res> implements $PartyCopyWith<$Res> {
  factory _$$PartyImplCopyWith(
          _$PartyImpl value, $Res Function(_$PartyImpl) then) =
      __$$PartyImplCopyWithImpl<$Res>;
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
class __$$PartyImplCopyWithImpl<$Res>
    extends _$PartyCopyWithImpl<$Res, _$PartyImpl>
    implements _$$PartyImplCopyWith<$Res> {
  __$$PartyImplCopyWithImpl(
      _$PartyImpl _value, $Res Function(_$PartyImpl) _then)
      : super(_value, _then);

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
    return _then(_$PartyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      taxId: freezed == taxId
          ? _value.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      contactInfo: freezed == contactInfo
          ? _value.contactInfo
          : contactInfo // ignore: cast_nullable_to_non_nullable
              as ContactInfo?,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
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
class _$PartyImpl implements _Party {
  const _$PartyImpl(
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

  factory _$PartyImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartyImplFromJson(json);

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

  @override
  String toString() {
    return 'Party(id: $id, name: $name, type: $type, createdAt: $createdAt, code: $code, email: $email, phone: $phone, taxId: $taxId, address: $address, contactInfo: $contactInfo, organizationId: $organizationId, isActive: $isActive, updatedAt: $updatedAt, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartyImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PartyImplCopyWith<_$PartyImpl> get copyWith =>
      __$$PartyImplCopyWithImpl<_$PartyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartyImplToJson(
      this,
    );
  }
}

abstract class _Party implements Party {
  const factory _Party(
      {required final String id,
      required final String name,
      required final String type,
      required final DateTime createdAt,
      final String? code,
      final String? email,
      final String? phone,
      final String? taxId,
      final Address? address,
      final ContactInfo? contactInfo,
      final String? organizationId,
      final bool? isActive,
      final DateTime? updatedAt,
      final Map<String, dynamic>? metadata}) = _$PartyImpl;

  factory _Party.fromJson(Map<String, dynamic> json) = _$PartyImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get type;
  @override
  DateTime get createdAt;
  @override
  String? get code;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get taxId;
  @override
  Address? get address;
  @override
  ContactInfo? get contactInfo;
  @override
  String? get organizationId;
  @override
  bool? get isActive;
  @override
  DateTime? get updatedAt;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$PartyImplCopyWith<_$PartyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdatePartyRequest _$UpdatePartyRequestFromJson(Map<String, dynamic> json) {
  return _UpdatePartyRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdatePartyRequest {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  Map<String, dynamic>? get attributes => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdatePartyRequestCopyWith<UpdatePartyRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePartyRequestCopyWith<$Res> {
  factory $UpdatePartyRequestCopyWith(
          UpdatePartyRequest value, $Res Function(UpdatePartyRequest) then) =
      _$UpdatePartyRequestCopyWithImpl<$Res, UpdatePartyRequest>;
  @useResult
  $Res call(
      {String? name,
      String? description,
      bool? isActive,
      Map<String, dynamic>? attributes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$UpdatePartyRequestCopyWithImpl<$Res, $Val extends UpdatePartyRequest>
    implements $UpdatePartyRequestCopyWith<$Res> {
  _$UpdatePartyRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? isActive = freezed,
    Object? attributes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdatePartyRequestImplCopyWith<$Res>
    implements $UpdatePartyRequestCopyWith<$Res> {
  factory _$$UpdatePartyRequestImplCopyWith(_$UpdatePartyRequestImpl value,
          $Res Function(_$UpdatePartyRequestImpl) then) =
      __$$UpdatePartyRequestImplCopyWithImpl<$Res>;
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
class __$$UpdatePartyRequestImplCopyWithImpl<$Res>
    extends _$UpdatePartyRequestCopyWithImpl<$Res, _$UpdatePartyRequestImpl>
    implements _$$UpdatePartyRequestImplCopyWith<$Res> {
  __$$UpdatePartyRequestImplCopyWithImpl(_$UpdatePartyRequestImpl _value,
      $Res Function(_$UpdatePartyRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? isActive = freezed,
    Object? attributes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$UpdatePartyRequestImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      attributes: freezed == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
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
class _$UpdatePartyRequestImpl implements _UpdatePartyRequest {
  const _$UpdatePartyRequestImpl(
      {this.name,
      this.description,
      this.isActive,
      final Map<String, dynamic>? attributes,
      final Map<String, dynamic>? metadata})
      : _attributes = attributes,
        _metadata = metadata;

  factory _$UpdatePartyRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdatePartyRequestImplFromJson(json);

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

  @override
  String toString() {
    return 'UpdatePartyRequest(name: $name, description: $description, isActive: $isActive, attributes: $attributes, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePartyRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      isActive,
      const DeepCollectionEquality().hash(_attributes),
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePartyRequestImplCopyWith<_$UpdatePartyRequestImpl> get copyWith =>
      __$$UpdatePartyRequestImplCopyWithImpl<_$UpdatePartyRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePartyRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdatePartyRequest implements UpdatePartyRequest {
  const factory _UpdatePartyRequest(
      {final String? name,
      final String? description,
      final bool? isActive,
      final Map<String, dynamic>? attributes,
      final Map<String, dynamic>? metadata}) = _$UpdatePartyRequestImpl;

  factory _UpdatePartyRequest.fromJson(Map<String, dynamic> json) =
      _$UpdatePartyRequestImpl.fromJson;

  @override
  String? get name;
  @override
  String? get description;
  @override
  bool? get isActive;
  @override
  Map<String, dynamic>? get attributes;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$UpdatePartyRequestImplCopyWith<_$UpdatePartyRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
