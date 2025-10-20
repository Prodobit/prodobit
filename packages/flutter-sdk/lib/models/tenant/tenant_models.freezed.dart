// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tenant_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Tenant _$TenantFromJson(Map<String, dynamic> json) {
  return _Tenant.fromJson(json);
}

/// @nodoc
mixin _$Tenant {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // 'active', 'suspended', 'inactive'
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get domain => throw _privateConstructorUsedError;
  String? get logoUrl => throw _privateConstructorUsedError;
  String? get contactEmail => throw _privateConstructorUsedError;
  String? get contactPhone => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  Map<String, dynamic>? get settings => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TenantCopyWith<Tenant> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenantCopyWith<$Res> {
  factory $TenantCopyWith(Tenant value, $Res Function(Tenant) then) =
      _$TenantCopyWithImpl<$Res, Tenant>;
  @useResult
  $Res call(
      {String id,
      String name,
      String slug,
      String status,
      DateTime createdAt,
      DateTime updatedAt,
      String? description,
      String? domain,
      String? logoUrl,
      String? contactEmail,
      String? contactPhone,
      String? address,
      String? timezone,
      String? currency,
      String? language,
      Map<String, dynamic>? settings,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$TenantCopyWithImpl<$Res, $Val extends Tenant>
    implements $TenantCopyWith<$Res> {
  _$TenantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? description = freezed,
    Object? domain = freezed,
    Object? logoUrl = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? address = freezed,
    Object? timezone = freezed,
    Object? currency = freezed,
    Object? language = freezed,
    Object? settings = freezed,
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
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: freezed == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TenantImplCopyWith<$Res> implements $TenantCopyWith<$Res> {
  factory _$$TenantImplCopyWith(
          _$TenantImpl value, $Res Function(_$TenantImpl) then) =
      __$$TenantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String slug,
      String status,
      DateTime createdAt,
      DateTime updatedAt,
      String? description,
      String? domain,
      String? logoUrl,
      String? contactEmail,
      String? contactPhone,
      String? address,
      String? timezone,
      String? currency,
      String? language,
      Map<String, dynamic>? settings,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$TenantImplCopyWithImpl<$Res>
    extends _$TenantCopyWithImpl<$Res, _$TenantImpl>
    implements _$$TenantImplCopyWith<$Res> {
  __$$TenantImplCopyWithImpl(
      _$TenantImpl _value, $Res Function(_$TenantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? description = freezed,
    Object? domain = freezed,
    Object? logoUrl = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? address = freezed,
    Object? timezone = freezed,
    Object? currency = freezed,
    Object? language = freezed,
    Object? settings = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$TenantImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: freezed == settings
          ? _value._settings
          : settings // ignore: cast_nullable_to_non_nullable
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
class _$TenantImpl implements _Tenant {
  const _$TenantImpl(
      {required this.id,
      required this.name,
      required this.slug,
      required this.status,
      required this.createdAt,
      required this.updatedAt,
      this.description,
      this.domain,
      this.logoUrl,
      this.contactEmail,
      this.contactPhone,
      this.address,
      this.timezone,
      this.currency,
      this.language,
      final Map<String, dynamic>? settings,
      final Map<String, dynamic>? metadata})
      : _settings = settings,
        _metadata = metadata;

  factory _$TenantImpl.fromJson(Map<String, dynamic> json) =>
      _$$TenantImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final String status;
// 'active', 'suspended', 'inactive'
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String? description;
  @override
  final String? domain;
  @override
  final String? logoUrl;
  @override
  final String? contactEmail;
  @override
  final String? contactPhone;
  @override
  final String? address;
  @override
  final String? timezone;
  @override
  final String? currency;
  @override
  final String? language;
  final Map<String, dynamic>? _settings;
  @override
  Map<String, dynamic>? get settings {
    final value = _settings;
    if (value == null) return null;
    if (_settings is EqualUnmodifiableMapView) return _settings;
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
    return 'Tenant(id: $id, name: $name, slug: $slug, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, description: $description, domain: $domain, logoUrl: $logoUrl, contactEmail: $contactEmail, contactPhone: $contactPhone, address: $address, timezone: $timezone, currency: $currency, language: $language, settings: $settings, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TenantImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.contactEmail, contactEmail) ||
                other.contactEmail == contactEmail) &&
            (identical(other.contactPhone, contactPhone) ||
                other.contactPhone == contactPhone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.language, language) ||
                other.language == language) &&
            const DeepCollectionEquality().equals(other._settings, _settings) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      slug,
      status,
      createdAt,
      updatedAt,
      description,
      domain,
      logoUrl,
      contactEmail,
      contactPhone,
      address,
      timezone,
      currency,
      language,
      const DeepCollectionEquality().hash(_settings),
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TenantImplCopyWith<_$TenantImpl> get copyWith =>
      __$$TenantImplCopyWithImpl<_$TenantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TenantImplToJson(
      this,
    );
  }
}

abstract class _Tenant implements Tenant {
  const factory _Tenant(
      {required final String id,
      required final String name,
      required final String slug,
      required final String status,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final String? description,
      final String? domain,
      final String? logoUrl,
      final String? contactEmail,
      final String? contactPhone,
      final String? address,
      final String? timezone,
      final String? currency,
      final String? language,
      final Map<String, dynamic>? settings,
      final Map<String, dynamic>? metadata}) = _$TenantImpl;

  factory _Tenant.fromJson(Map<String, dynamic> json) = _$TenantImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  String get status;
  @override // 'active', 'suspended', 'inactive'
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String? get description;
  @override
  String? get domain;
  @override
  String? get logoUrl;
  @override
  String? get contactEmail;
  @override
  String? get contactPhone;
  @override
  String? get address;
  @override
  String? get timezone;
  @override
  String? get currency;
  @override
  String? get language;
  @override
  Map<String, dynamic>? get settings;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$TenantImplCopyWith<_$TenantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TenantMember _$TenantMemberFromJson(Map<String, dynamic> json) {
  return _TenantMember.fromJson(json);
}

/// @nodoc
mixin _$TenantMember {
  String get id => throw _privateConstructorUsedError;
  String get tenantId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get role =>
      throw _privateConstructorUsedError; // 'owner', 'admin', 'manager', 'user', 'viewer'
  String get status =>
      throw _privateConstructorUsedError; // 'active', 'invited', 'suspended'
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime? get invitedAt => throw _privateConstructorUsedError;
  DateTime? get joinedAt => throw _privateConstructorUsedError;
  DateTime? get suspendedAt => throw _privateConstructorUsedError;
  String? get invitedBy => throw _privateConstructorUsedError;
  String? get invitationToken => throw _privateConstructorUsedError;
  DateTime? get invitationExpiresAt => throw _privateConstructorUsedError;
  List<String>? get permissions => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TenantMemberCopyWith<TenantMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenantMemberCopyWith<$Res> {
  factory $TenantMemberCopyWith(
          TenantMember value, $Res Function(TenantMember) then) =
      _$TenantMemberCopyWithImpl<$Res, TenantMember>;
  @useResult
  $Res call(
      {String id,
      String tenantId,
      String userId,
      String role,
      String status,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? invitedAt,
      DateTime? joinedAt,
      DateTime? suspendedAt,
      String? invitedBy,
      String? invitationToken,
      DateTime? invitationExpiresAt,
      List<String>? permissions,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$TenantMemberCopyWithImpl<$Res, $Val extends TenantMember>
    implements $TenantMemberCopyWith<$Res> {
  _$TenantMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tenantId = null,
    Object? userId = null,
    Object? role = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? invitedAt = freezed,
    Object? joinedAt = freezed,
    Object? suspendedAt = freezed,
    Object? invitedBy = freezed,
    Object? invitationToken = freezed,
    Object? invitationExpiresAt = freezed,
    Object? permissions = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: null == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      invitedAt: freezed == invitedAt
          ? _value.invitedAt
          : invitedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      joinedAt: freezed == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      suspendedAt: freezed == suspendedAt
          ? _value.suspendedAt
          : suspendedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      invitedBy: freezed == invitedBy
          ? _value.invitedBy
          : invitedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      invitationToken: freezed == invitationToken
          ? _value.invitationToken
          : invitationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      invitationExpiresAt: freezed == invitationExpiresAt
          ? _value.invitationExpiresAt
          : invitationExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      permissions: freezed == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TenantMemberImplCopyWith<$Res>
    implements $TenantMemberCopyWith<$Res> {
  factory _$$TenantMemberImplCopyWith(
          _$TenantMemberImpl value, $Res Function(_$TenantMemberImpl) then) =
      __$$TenantMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String tenantId,
      String userId,
      String role,
      String status,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? invitedAt,
      DateTime? joinedAt,
      DateTime? suspendedAt,
      String? invitedBy,
      String? invitationToken,
      DateTime? invitationExpiresAt,
      List<String>? permissions,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$TenantMemberImplCopyWithImpl<$Res>
    extends _$TenantMemberCopyWithImpl<$Res, _$TenantMemberImpl>
    implements _$$TenantMemberImplCopyWith<$Res> {
  __$$TenantMemberImplCopyWithImpl(
      _$TenantMemberImpl _value, $Res Function(_$TenantMemberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tenantId = null,
    Object? userId = null,
    Object? role = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? invitedAt = freezed,
    Object? joinedAt = freezed,
    Object? suspendedAt = freezed,
    Object? invitedBy = freezed,
    Object? invitationToken = freezed,
    Object? invitationExpiresAt = freezed,
    Object? permissions = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$TenantMemberImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: null == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      invitedAt: freezed == invitedAt
          ? _value.invitedAt
          : invitedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      joinedAt: freezed == joinedAt
          ? _value.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      suspendedAt: freezed == suspendedAt
          ? _value.suspendedAt
          : suspendedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      invitedBy: freezed == invitedBy
          ? _value.invitedBy
          : invitedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      invitationToken: freezed == invitationToken
          ? _value.invitationToken
          : invitationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      invitationExpiresAt: freezed == invitationExpiresAt
          ? _value.invitationExpiresAt
          : invitationExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      permissions: freezed == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TenantMemberImpl implements _TenantMember {
  const _$TenantMemberImpl(
      {required this.id,
      required this.tenantId,
      required this.userId,
      required this.role,
      required this.status,
      required this.createdAt,
      required this.updatedAt,
      this.invitedAt,
      this.joinedAt,
      this.suspendedAt,
      this.invitedBy,
      this.invitationToken,
      this.invitationExpiresAt,
      final List<String>? permissions,
      final Map<String, dynamic>? metadata})
      : _permissions = permissions,
        _metadata = metadata;

  factory _$TenantMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$TenantMemberImplFromJson(json);

  @override
  final String id;
  @override
  final String tenantId;
  @override
  final String userId;
  @override
  final String role;
// 'owner', 'admin', 'manager', 'user', 'viewer'
  @override
  final String status;
// 'active', 'invited', 'suspended'
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime? invitedAt;
  @override
  final DateTime? joinedAt;
  @override
  final DateTime? suspendedAt;
  @override
  final String? invitedBy;
  @override
  final String? invitationToken;
  @override
  final DateTime? invitationExpiresAt;
  final List<String>? _permissions;
  @override
  List<String>? get permissions {
    final value = _permissions;
    if (value == null) return null;
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
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
    return 'TenantMember(id: $id, tenantId: $tenantId, userId: $userId, role: $role, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, invitedAt: $invitedAt, joinedAt: $joinedAt, suspendedAt: $suspendedAt, invitedBy: $invitedBy, invitationToken: $invitationToken, invitationExpiresAt: $invitationExpiresAt, permissions: $permissions, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TenantMemberImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.invitedAt, invitedAt) ||
                other.invitedAt == invitedAt) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt) &&
            (identical(other.suspendedAt, suspendedAt) ||
                other.suspendedAt == suspendedAt) &&
            (identical(other.invitedBy, invitedBy) ||
                other.invitedBy == invitedBy) &&
            (identical(other.invitationToken, invitationToken) ||
                other.invitationToken == invitationToken) &&
            (identical(other.invitationExpiresAt, invitationExpiresAt) ||
                other.invitationExpiresAt == invitationExpiresAt) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      tenantId,
      userId,
      role,
      status,
      createdAt,
      updatedAt,
      invitedAt,
      joinedAt,
      suspendedAt,
      invitedBy,
      invitationToken,
      invitationExpiresAt,
      const DeepCollectionEquality().hash(_permissions),
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TenantMemberImplCopyWith<_$TenantMemberImpl> get copyWith =>
      __$$TenantMemberImplCopyWithImpl<_$TenantMemberImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TenantMemberImplToJson(
      this,
    );
  }
}

abstract class _TenantMember implements TenantMember {
  const factory _TenantMember(
      {required final String id,
      required final String tenantId,
      required final String userId,
      required final String role,
      required final String status,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final DateTime? invitedAt,
      final DateTime? joinedAt,
      final DateTime? suspendedAt,
      final String? invitedBy,
      final String? invitationToken,
      final DateTime? invitationExpiresAt,
      final List<String>? permissions,
      final Map<String, dynamic>? metadata}) = _$TenantMemberImpl;

  factory _TenantMember.fromJson(Map<String, dynamic> json) =
      _$TenantMemberImpl.fromJson;

  @override
  String get id;
  @override
  String get tenantId;
  @override
  String get userId;
  @override
  String get role;
  @override // 'owner', 'admin', 'manager', 'user', 'viewer'
  String get status;
  @override // 'active', 'invited', 'suspended'
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  DateTime? get invitedAt;
  @override
  DateTime? get joinedAt;
  @override
  DateTime? get suspendedAt;
  @override
  String? get invitedBy;
  @override
  String? get invitationToken;
  @override
  DateTime? get invitationExpiresAt;
  @override
  List<String>? get permissions;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$TenantMemberImplCopyWith<_$TenantMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TenantRole _$TenantRoleFromJson(Map<String, dynamic> json) {
  return _TenantRole.fromJson(json);
}

/// @nodoc
mixin _$TenantRole {
  String get id => throw _privateConstructorUsedError;
  String get tenantId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get permissions => throw _privateConstructorUsedError;
  bool get isDefault => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TenantRoleCopyWith<TenantRole> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenantRoleCopyWith<$Res> {
  factory $TenantRoleCopyWith(
          TenantRole value, $Res Function(TenantRole) then) =
      _$TenantRoleCopyWithImpl<$Res, TenantRole>;
  @useResult
  $Res call(
      {String id,
      String tenantId,
      String name,
      String displayName,
      String description,
      List<String> permissions,
      bool isDefault,
      DateTime createdAt,
      DateTime updatedAt,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$TenantRoleCopyWithImpl<$Res, $Val extends TenantRole>
    implements $TenantRoleCopyWith<$Res> {
  _$TenantRoleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tenantId = null,
    Object? name = null,
    Object? displayName = null,
    Object? description = null,
    Object? permissions = null,
    Object? isDefault = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: null == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TenantRoleImplCopyWith<$Res>
    implements $TenantRoleCopyWith<$Res> {
  factory _$$TenantRoleImplCopyWith(
          _$TenantRoleImpl value, $Res Function(_$TenantRoleImpl) then) =
      __$$TenantRoleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String tenantId,
      String name,
      String displayName,
      String description,
      List<String> permissions,
      bool isDefault,
      DateTime createdAt,
      DateTime updatedAt,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$TenantRoleImplCopyWithImpl<$Res>
    extends _$TenantRoleCopyWithImpl<$Res, _$TenantRoleImpl>
    implements _$$TenantRoleImplCopyWith<$Res> {
  __$$TenantRoleImplCopyWithImpl(
      _$TenantRoleImpl _value, $Res Function(_$TenantRoleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tenantId = null,
    Object? name = null,
    Object? displayName = null,
    Object? description = null,
    Object? permissions = null,
    Object? isDefault = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? metadata = freezed,
  }) {
    return _then(_$TenantRoleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: null == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      permissions: null == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TenantRoleImpl implements _TenantRole {
  const _$TenantRoleImpl(
      {required this.id,
      required this.tenantId,
      required this.name,
      required this.displayName,
      required this.description,
      required final List<String> permissions,
      required this.isDefault,
      required this.createdAt,
      required this.updatedAt,
      final Map<String, dynamic>? metadata})
      : _permissions = permissions,
        _metadata = metadata;

  factory _$TenantRoleImpl.fromJson(Map<String, dynamic> json) =>
      _$$TenantRoleImplFromJson(json);

  @override
  final String id;
  @override
  final String tenantId;
  @override
  final String name;
  @override
  final String displayName;
  @override
  final String description;
  final List<String> _permissions;
  @override
  List<String> get permissions {
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_permissions);
  }

  @override
  final bool isDefault;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
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
    return 'TenantRole(id: $id, tenantId: $tenantId, name: $name, displayName: $displayName, description: $description, permissions: $permissions, isDefault: $isDefault, createdAt: $createdAt, updatedAt: $updatedAt, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TenantRoleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      tenantId,
      name,
      displayName,
      description,
      const DeepCollectionEquality().hash(_permissions),
      isDefault,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TenantRoleImplCopyWith<_$TenantRoleImpl> get copyWith =>
      __$$TenantRoleImplCopyWithImpl<_$TenantRoleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TenantRoleImplToJson(
      this,
    );
  }
}

abstract class _TenantRole implements TenantRole {
  const factory _TenantRole(
      {required final String id,
      required final String tenantId,
      required final String name,
      required final String displayName,
      required final String description,
      required final List<String> permissions,
      required final bool isDefault,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final Map<String, dynamic>? metadata}) = _$TenantRoleImpl;

  factory _TenantRole.fromJson(Map<String, dynamic> json) =
      _$TenantRoleImpl.fromJson;

  @override
  String get id;
  @override
  String get tenantId;
  @override
  String get name;
  @override
  String get displayName;
  @override
  String get description;
  @override
  List<String> get permissions;
  @override
  bool get isDefault;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$TenantRoleImplCopyWith<_$TenantRoleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TenantInvitation _$TenantInvitationFromJson(Map<String, dynamic> json) {
  return _TenantInvitation.fromJson(json);
}

/// @nodoc
mixin _$TenantInvitation {
  String get id => throw _privateConstructorUsedError;
  String get tenantId => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // 'pending', 'accepted', 'rejected', 'expired'
  String get token => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String? get invitedBy => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  DateTime? get acceptedAt => throw _privateConstructorUsedError;
  DateTime? get rejectedAt => throw _privateConstructorUsedError;
  String? get rejectionReason => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TenantInvitationCopyWith<TenantInvitation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenantInvitationCopyWith<$Res> {
  factory $TenantInvitationCopyWith(
          TenantInvitation value, $Res Function(TenantInvitation) then) =
      _$TenantInvitationCopyWithImpl<$Res, TenantInvitation>;
  @useResult
  $Res call(
      {String id,
      String tenantId,
      String email,
      String role,
      String status,
      String token,
      DateTime expiresAt,
      DateTime createdAt,
      DateTime updatedAt,
      String? invitedBy,
      String? firstName,
      String? lastName,
      DateTime? acceptedAt,
      DateTime? rejectedAt,
      String? rejectionReason,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$TenantInvitationCopyWithImpl<$Res, $Val extends TenantInvitation>
    implements $TenantInvitationCopyWith<$Res> {
  _$TenantInvitationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tenantId = null,
    Object? email = null,
    Object? role = null,
    Object? status = null,
    Object? token = null,
    Object? expiresAt = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? invitedBy = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? acceptedAt = freezed,
    Object? rejectedAt = freezed,
    Object? rejectionReason = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: null == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      invitedBy: freezed == invitedBy
          ? _value.invitedBy
          : invitedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptedAt: freezed == acceptedAt
          ? _value.acceptedAt
          : acceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _value.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TenantInvitationImplCopyWith<$Res>
    implements $TenantInvitationCopyWith<$Res> {
  factory _$$TenantInvitationImplCopyWith(_$TenantInvitationImpl value,
          $Res Function(_$TenantInvitationImpl) then) =
      __$$TenantInvitationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String tenantId,
      String email,
      String role,
      String status,
      String token,
      DateTime expiresAt,
      DateTime createdAt,
      DateTime updatedAt,
      String? invitedBy,
      String? firstName,
      String? lastName,
      DateTime? acceptedAt,
      DateTime? rejectedAt,
      String? rejectionReason,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$TenantInvitationImplCopyWithImpl<$Res>
    extends _$TenantInvitationCopyWithImpl<$Res, _$TenantInvitationImpl>
    implements _$$TenantInvitationImplCopyWith<$Res> {
  __$$TenantInvitationImplCopyWithImpl(_$TenantInvitationImpl _value,
      $Res Function(_$TenantInvitationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tenantId = null,
    Object? email = null,
    Object? role = null,
    Object? status = null,
    Object? token = null,
    Object? expiresAt = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? invitedBy = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? acceptedAt = freezed,
    Object? rejectedAt = freezed,
    Object? rejectionReason = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$TenantInvitationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: null == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      invitedBy: freezed == invitedBy
          ? _value.invitedBy
          : invitedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptedAt: freezed == acceptedAt
          ? _value.acceptedAt
          : acceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _value.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TenantInvitationImpl implements _TenantInvitation {
  const _$TenantInvitationImpl(
      {required this.id,
      required this.tenantId,
      required this.email,
      required this.role,
      required this.status,
      required this.token,
      required this.expiresAt,
      required this.createdAt,
      required this.updatedAt,
      this.invitedBy,
      this.firstName,
      this.lastName,
      this.acceptedAt,
      this.rejectedAt,
      this.rejectionReason,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$TenantInvitationImpl.fromJson(Map<String, dynamic> json) =>
      _$$TenantInvitationImplFromJson(json);

  @override
  final String id;
  @override
  final String tenantId;
  @override
  final String email;
  @override
  final String role;
  @override
  final String status;
// 'pending', 'accepted', 'rejected', 'expired'
  @override
  final String token;
  @override
  final DateTime expiresAt;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String? invitedBy;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final DateTime? acceptedAt;
  @override
  final DateTime? rejectedAt;
  @override
  final String? rejectionReason;
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
    return 'TenantInvitation(id: $id, tenantId: $tenantId, email: $email, role: $role, status: $status, token: $token, expiresAt: $expiresAt, createdAt: $createdAt, updatedAt: $updatedAt, invitedBy: $invitedBy, firstName: $firstName, lastName: $lastName, acceptedAt: $acceptedAt, rejectedAt: $rejectedAt, rejectionReason: $rejectionReason, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TenantInvitationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.invitedBy, invitedBy) ||
                other.invitedBy == invitedBy) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.acceptedAt, acceptedAt) ||
                other.acceptedAt == acceptedAt) &&
            (identical(other.rejectedAt, rejectedAt) ||
                other.rejectedAt == rejectedAt) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      tenantId,
      email,
      role,
      status,
      token,
      expiresAt,
      createdAt,
      updatedAt,
      invitedBy,
      firstName,
      lastName,
      acceptedAt,
      rejectedAt,
      rejectionReason,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TenantInvitationImplCopyWith<_$TenantInvitationImpl> get copyWith =>
      __$$TenantInvitationImplCopyWithImpl<_$TenantInvitationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TenantInvitationImplToJson(
      this,
    );
  }
}

abstract class _TenantInvitation implements TenantInvitation {
  const factory _TenantInvitation(
      {required final String id,
      required final String tenantId,
      required final String email,
      required final String role,
      required final String status,
      required final String token,
      required final DateTime expiresAt,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final String? invitedBy,
      final String? firstName,
      final String? lastName,
      final DateTime? acceptedAt,
      final DateTime? rejectedAt,
      final String? rejectionReason,
      final Map<String, dynamic>? metadata}) = _$TenantInvitationImpl;

  factory _TenantInvitation.fromJson(Map<String, dynamic> json) =
      _$TenantInvitationImpl.fromJson;

  @override
  String get id;
  @override
  String get tenantId;
  @override
  String get email;
  @override
  String get role;
  @override
  String get status;
  @override // 'pending', 'accepted', 'rejected', 'expired'
  String get token;
  @override
  DateTime get expiresAt;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String? get invitedBy;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  DateTime? get acceptedAt;
  @override
  DateTime? get rejectedAt;
  @override
  String? get rejectionReason;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$TenantInvitationImplCopyWith<_$TenantInvitationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateTenantRequest _$CreateTenantRequestFromJson(Map<String, dynamic> json) {
  return _CreateTenantRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateTenantRequest {
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get domain => throw _privateConstructorUsedError;
  String? get contactEmail => throw _privateConstructorUsedError;
  String? get contactPhone => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  Map<String, dynamic>? get settings => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateTenantRequestCopyWith<CreateTenantRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTenantRequestCopyWith<$Res> {
  factory $CreateTenantRequestCopyWith(
          CreateTenantRequest value, $Res Function(CreateTenantRequest) then) =
      _$CreateTenantRequestCopyWithImpl<$Res, CreateTenantRequest>;
  @useResult
  $Res call(
      {String name,
      String slug,
      String? description,
      String? domain,
      String? contactEmail,
      String? contactPhone,
      String? address,
      String? timezone,
      String? currency,
      String? language,
      Map<String, dynamic>? settings,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$CreateTenantRequestCopyWithImpl<$Res, $Val extends CreateTenantRequest>
    implements $CreateTenantRequestCopyWith<$Res> {
  _$CreateTenantRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? slug = null,
    Object? description = freezed,
    Object? domain = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? address = freezed,
    Object? timezone = freezed,
    Object? currency = freezed,
    Object? language = freezed,
    Object? settings = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: freezed == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateTenantRequestImplCopyWith<$Res>
    implements $CreateTenantRequestCopyWith<$Res> {
  factory _$$CreateTenantRequestImplCopyWith(_$CreateTenantRequestImpl value,
          $Res Function(_$CreateTenantRequestImpl) then) =
      __$$CreateTenantRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String slug,
      String? description,
      String? domain,
      String? contactEmail,
      String? contactPhone,
      String? address,
      String? timezone,
      String? currency,
      String? language,
      Map<String, dynamic>? settings,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$CreateTenantRequestImplCopyWithImpl<$Res>
    extends _$CreateTenantRequestCopyWithImpl<$Res, _$CreateTenantRequestImpl>
    implements _$$CreateTenantRequestImplCopyWith<$Res> {
  __$$CreateTenantRequestImplCopyWithImpl(_$CreateTenantRequestImpl _value,
      $Res Function(_$CreateTenantRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? slug = null,
    Object? description = freezed,
    Object? domain = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? address = freezed,
    Object? timezone = freezed,
    Object? currency = freezed,
    Object? language = freezed,
    Object? settings = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$CreateTenantRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: freezed == settings
          ? _value._settings
          : settings // ignore: cast_nullable_to_non_nullable
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
class _$CreateTenantRequestImpl implements _CreateTenantRequest {
  const _$CreateTenantRequestImpl(
      {required this.name,
      required this.slug,
      this.description,
      this.domain,
      this.contactEmail,
      this.contactPhone,
      this.address,
      this.timezone,
      this.currency,
      this.language,
      final Map<String, dynamic>? settings,
      final Map<String, dynamic>? metadata})
      : _settings = settings,
        _metadata = metadata;

  factory _$CreateTenantRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateTenantRequestImplFromJson(json);

  @override
  final String name;
  @override
  final String slug;
  @override
  final String? description;
  @override
  final String? domain;
  @override
  final String? contactEmail;
  @override
  final String? contactPhone;
  @override
  final String? address;
  @override
  final String? timezone;
  @override
  final String? currency;
  @override
  final String? language;
  final Map<String, dynamic>? _settings;
  @override
  Map<String, dynamic>? get settings {
    final value = _settings;
    if (value == null) return null;
    if (_settings is EqualUnmodifiableMapView) return _settings;
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
    return 'CreateTenantRequest(name: $name, slug: $slug, description: $description, domain: $domain, contactEmail: $contactEmail, contactPhone: $contactPhone, address: $address, timezone: $timezone, currency: $currency, language: $language, settings: $settings, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTenantRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.contactEmail, contactEmail) ||
                other.contactEmail == contactEmail) &&
            (identical(other.contactPhone, contactPhone) ||
                other.contactPhone == contactPhone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.language, language) ||
                other.language == language) &&
            const DeepCollectionEquality().equals(other._settings, _settings) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      slug,
      description,
      domain,
      contactEmail,
      contactPhone,
      address,
      timezone,
      currency,
      language,
      const DeepCollectionEquality().hash(_settings),
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTenantRequestImplCopyWith<_$CreateTenantRequestImpl> get copyWith =>
      __$$CreateTenantRequestImplCopyWithImpl<_$CreateTenantRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTenantRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateTenantRequest implements CreateTenantRequest {
  const factory _CreateTenantRequest(
      {required final String name,
      required final String slug,
      final String? description,
      final String? domain,
      final String? contactEmail,
      final String? contactPhone,
      final String? address,
      final String? timezone,
      final String? currency,
      final String? language,
      final Map<String, dynamic>? settings,
      final Map<String, dynamic>? metadata}) = _$CreateTenantRequestImpl;

  factory _CreateTenantRequest.fromJson(Map<String, dynamic> json) =
      _$CreateTenantRequestImpl.fromJson;

  @override
  String get name;
  @override
  String get slug;
  @override
  String? get description;
  @override
  String? get domain;
  @override
  String? get contactEmail;
  @override
  String? get contactPhone;
  @override
  String? get address;
  @override
  String? get timezone;
  @override
  String? get currency;
  @override
  String? get language;
  @override
  Map<String, dynamic>? get settings;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$CreateTenantRequestImplCopyWith<_$CreateTenantRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateTenantRequest _$UpdateTenantRequestFromJson(Map<String, dynamic> json) {
  return _UpdateTenantRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateTenantRequest {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get domain => throw _privateConstructorUsedError;
  String? get contactEmail => throw _privateConstructorUsedError;
  String? get contactPhone => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  Map<String, dynamic>? get settings => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateTenantRequestCopyWith<UpdateTenantRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTenantRequestCopyWith<$Res> {
  factory $UpdateTenantRequestCopyWith(
          UpdateTenantRequest value, $Res Function(UpdateTenantRequest) then) =
      _$UpdateTenantRequestCopyWithImpl<$Res, UpdateTenantRequest>;
  @useResult
  $Res call(
      {String? name,
      String? description,
      String? domain,
      String? contactEmail,
      String? contactPhone,
      String? address,
      String? timezone,
      String? currency,
      String? language,
      String? status,
      Map<String, dynamic>? settings,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$UpdateTenantRequestCopyWithImpl<$Res, $Val extends UpdateTenantRequest>
    implements $UpdateTenantRequestCopyWith<$Res> {
  _$UpdateTenantRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? domain = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? address = freezed,
    Object? timezone = freezed,
    Object? currency = freezed,
    Object? language = freezed,
    Object? status = freezed,
    Object? settings = freezed,
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
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: freezed == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateTenantRequestImplCopyWith<$Res>
    implements $UpdateTenantRequestCopyWith<$Res> {
  factory _$$UpdateTenantRequestImplCopyWith(_$UpdateTenantRequestImpl value,
          $Res Function(_$UpdateTenantRequestImpl) then) =
      __$$UpdateTenantRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? description,
      String? domain,
      String? contactEmail,
      String? contactPhone,
      String? address,
      String? timezone,
      String? currency,
      String? language,
      String? status,
      Map<String, dynamic>? settings,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$UpdateTenantRequestImplCopyWithImpl<$Res>
    extends _$UpdateTenantRequestCopyWithImpl<$Res, _$UpdateTenantRequestImpl>
    implements _$$UpdateTenantRequestImplCopyWith<$Res> {
  __$$UpdateTenantRequestImplCopyWithImpl(_$UpdateTenantRequestImpl _value,
      $Res Function(_$UpdateTenantRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? domain = freezed,
    Object? contactEmail = freezed,
    Object? contactPhone = freezed,
    Object? address = freezed,
    Object? timezone = freezed,
    Object? currency = freezed,
    Object? language = freezed,
    Object? status = freezed,
    Object? settings = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$UpdateTenantRequestImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: freezed == settings
          ? _value._settings
          : settings // ignore: cast_nullable_to_non_nullable
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
class _$UpdateTenantRequestImpl implements _UpdateTenantRequest {
  const _$UpdateTenantRequestImpl(
      {this.name,
      this.description,
      this.domain,
      this.contactEmail,
      this.contactPhone,
      this.address,
      this.timezone,
      this.currency,
      this.language,
      this.status,
      final Map<String, dynamic>? settings,
      final Map<String, dynamic>? metadata})
      : _settings = settings,
        _metadata = metadata;

  factory _$UpdateTenantRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTenantRequestImplFromJson(json);

  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? domain;
  @override
  final String? contactEmail;
  @override
  final String? contactPhone;
  @override
  final String? address;
  @override
  final String? timezone;
  @override
  final String? currency;
  @override
  final String? language;
  @override
  final String? status;
  final Map<String, dynamic>? _settings;
  @override
  Map<String, dynamic>? get settings {
    final value = _settings;
    if (value == null) return null;
    if (_settings is EqualUnmodifiableMapView) return _settings;
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
    return 'UpdateTenantRequest(name: $name, description: $description, domain: $domain, contactEmail: $contactEmail, contactPhone: $contactPhone, address: $address, timezone: $timezone, currency: $currency, language: $language, status: $status, settings: $settings, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTenantRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.contactEmail, contactEmail) ||
                other.contactEmail == contactEmail) &&
            (identical(other.contactPhone, contactPhone) ||
                other.contactPhone == contactPhone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._settings, _settings) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      domain,
      contactEmail,
      contactPhone,
      address,
      timezone,
      currency,
      language,
      status,
      const DeepCollectionEquality().hash(_settings),
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTenantRequestImplCopyWith<_$UpdateTenantRequestImpl> get copyWith =>
      __$$UpdateTenantRequestImplCopyWithImpl<_$UpdateTenantRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTenantRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateTenantRequest implements UpdateTenantRequest {
  const factory _UpdateTenantRequest(
      {final String? name,
      final String? description,
      final String? domain,
      final String? contactEmail,
      final String? contactPhone,
      final String? address,
      final String? timezone,
      final String? currency,
      final String? language,
      final String? status,
      final Map<String, dynamic>? settings,
      final Map<String, dynamic>? metadata}) = _$UpdateTenantRequestImpl;

  factory _UpdateTenantRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateTenantRequestImpl.fromJson;

  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get domain;
  @override
  String? get contactEmail;
  @override
  String? get contactPhone;
  @override
  String? get address;
  @override
  String? get timezone;
  @override
  String? get currency;
  @override
  String? get language;
  @override
  String? get status;
  @override
  Map<String, dynamic>? get settings;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$UpdateTenantRequestImplCopyWith<_$UpdateTenantRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateInvitationRequest _$CreateInvitationRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateInvitationRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateInvitationRequest {
  String get email => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateInvitationRequestCopyWith<CreateInvitationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateInvitationRequestCopyWith<$Res> {
  factory $CreateInvitationRequestCopyWith(CreateInvitationRequest value,
          $Res Function(CreateInvitationRequest) then) =
      _$CreateInvitationRequestCopyWithImpl<$Res, CreateInvitationRequest>;
  @useResult
  $Res call(
      {String email,
      String role,
      String? firstName,
      String? lastName,
      DateTime? expiresAt,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$CreateInvitationRequestCopyWithImpl<$Res,
        $Val extends CreateInvitationRequest>
    implements $CreateInvitationRequestCopyWith<$Res> {
  _$CreateInvitationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? role = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? expiresAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateInvitationRequestImplCopyWith<$Res>
    implements $CreateInvitationRequestCopyWith<$Res> {
  factory _$$CreateInvitationRequestImplCopyWith(
          _$CreateInvitationRequestImpl value,
          $Res Function(_$CreateInvitationRequestImpl) then) =
      __$$CreateInvitationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String role,
      String? firstName,
      String? lastName,
      DateTime? expiresAt,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$CreateInvitationRequestImplCopyWithImpl<$Res>
    extends _$CreateInvitationRequestCopyWithImpl<$Res,
        _$CreateInvitationRequestImpl>
    implements _$$CreateInvitationRequestImplCopyWith<$Res> {
  __$$CreateInvitationRequestImplCopyWithImpl(
      _$CreateInvitationRequestImpl _value,
      $Res Function(_$CreateInvitationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? role = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? expiresAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$CreateInvitationRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
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
class _$CreateInvitationRequestImpl implements _CreateInvitationRequest {
  const _$CreateInvitationRequestImpl(
      {required this.email,
      required this.role,
      this.firstName,
      this.lastName,
      this.expiresAt,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$CreateInvitationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateInvitationRequestImplFromJson(json);

  @override
  final String email;
  @override
  final String role;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final DateTime? expiresAt;
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
    return 'CreateInvitationRequest(email: $email, role: $role, firstName: $firstName, lastName: $lastName, expiresAt: $expiresAt, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateInvitationRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, role, firstName, lastName,
      expiresAt, const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateInvitationRequestImplCopyWith<_$CreateInvitationRequestImpl>
      get copyWith => __$$CreateInvitationRequestImplCopyWithImpl<
          _$CreateInvitationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateInvitationRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateInvitationRequest implements CreateInvitationRequest {
  const factory _CreateInvitationRequest(
      {required final String email,
      required final String role,
      final String? firstName,
      final String? lastName,
      final DateTime? expiresAt,
      final Map<String, dynamic>? metadata}) = _$CreateInvitationRequestImpl;

  factory _CreateInvitationRequest.fromJson(Map<String, dynamic> json) =
      _$CreateInvitationRequestImpl.fromJson;

  @override
  String get email;
  @override
  String get role;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  DateTime? get expiresAt;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$CreateInvitationRequestImplCopyWith<_$CreateInvitationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateMembershipRequest _$UpdateMembershipRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateMembershipRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateMembershipRequest {
  String? get role => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  List<String>? get permissions => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateMembershipRequestCopyWith<UpdateMembershipRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateMembershipRequestCopyWith<$Res> {
  factory $UpdateMembershipRequestCopyWith(UpdateMembershipRequest value,
          $Res Function(UpdateMembershipRequest) then) =
      _$UpdateMembershipRequestCopyWithImpl<$Res, UpdateMembershipRequest>;
  @useResult
  $Res call(
      {String? role,
      String? status,
      List<String>? permissions,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$UpdateMembershipRequestCopyWithImpl<$Res,
        $Val extends UpdateMembershipRequest>
    implements $UpdateMembershipRequestCopyWith<$Res> {
  _$UpdateMembershipRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? status = freezed,
    Object? permissions = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      permissions: freezed == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateMembershipRequestImplCopyWith<$Res>
    implements $UpdateMembershipRequestCopyWith<$Res> {
  factory _$$UpdateMembershipRequestImplCopyWith(
          _$UpdateMembershipRequestImpl value,
          $Res Function(_$UpdateMembershipRequestImpl) then) =
      __$$UpdateMembershipRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? role,
      String? status,
      List<String>? permissions,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$UpdateMembershipRequestImplCopyWithImpl<$Res>
    extends _$UpdateMembershipRequestCopyWithImpl<$Res,
        _$UpdateMembershipRequestImpl>
    implements _$$UpdateMembershipRequestImplCopyWith<$Res> {
  __$$UpdateMembershipRequestImplCopyWithImpl(
      _$UpdateMembershipRequestImpl _value,
      $Res Function(_$UpdateMembershipRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? status = freezed,
    Object? permissions = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$UpdateMembershipRequestImpl(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      permissions: freezed == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateMembershipRequestImpl implements _UpdateMembershipRequest {
  const _$UpdateMembershipRequestImpl(
      {this.role,
      this.status,
      final List<String>? permissions,
      final Map<String, dynamic>? metadata})
      : _permissions = permissions,
        _metadata = metadata;

  factory _$UpdateMembershipRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateMembershipRequestImplFromJson(json);

  @override
  final String? role;
  @override
  final String? status;
  final List<String>? _permissions;
  @override
  List<String>? get permissions {
    final value = _permissions;
    if (value == null) return null;
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
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
    return 'UpdateMembershipRequest(role: $role, status: $status, permissions: $permissions, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMembershipRequestImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      role,
      status,
      const DeepCollectionEquality().hash(_permissions),
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMembershipRequestImplCopyWith<_$UpdateMembershipRequestImpl>
      get copyWith => __$$UpdateMembershipRequestImplCopyWithImpl<
          _$UpdateMembershipRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateMembershipRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateMembershipRequest implements UpdateMembershipRequest {
  const factory _UpdateMembershipRequest(
      {final String? role,
      final String? status,
      final List<String>? permissions,
      final Map<String, dynamic>? metadata}) = _$UpdateMembershipRequestImpl;

  factory _UpdateMembershipRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateMembershipRequestImpl.fromJson;

  @override
  String? get role;
  @override
  String? get status;
  @override
  List<String>? get permissions;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$UpdateMembershipRequestImplCopyWith<_$UpdateMembershipRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TenantFilters _$TenantFiltersFromJson(Map<String, dynamic> json) {
  return _TenantFilters.fromJson(json);
}

/// @nodoc
mixin _$TenantFilters {
  String? get status => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get domain => throw _privateConstructorUsedError;
  DateTime? get createdAfter => throw _privateConstructorUsedError;
  DateTime? get createdBefore => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String? get sortBy => throw _privateConstructorUsedError;
  String? get sortOrder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TenantFiltersCopyWith<TenantFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenantFiltersCopyWith<$Res> {
  factory $TenantFiltersCopyWith(
          TenantFilters value, $Res Function(TenantFilters) then) =
      _$TenantFiltersCopyWithImpl<$Res, TenantFilters>;
  @useResult
  $Res call(
      {String? status,
      String? name,
      String? domain,
      DateTime? createdAfter,
      DateTime? createdBefore,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class _$TenantFiltersCopyWithImpl<$Res, $Val extends TenantFilters>
    implements $TenantFiltersCopyWith<$Res> {
  _$TenantFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? name = freezed,
    Object? domain = freezed,
    Object? createdAfter = freezed,
    Object? createdBefore = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAfter: freezed == createdAfter
          ? _value.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _value.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TenantFiltersImplCopyWith<$Res>
    implements $TenantFiltersCopyWith<$Res> {
  factory _$$TenantFiltersImplCopyWith(
          _$TenantFiltersImpl value, $Res Function(_$TenantFiltersImpl) then) =
      __$$TenantFiltersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      String? name,
      String? domain,
      DateTime? createdAfter,
      DateTime? createdBefore,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class __$$TenantFiltersImplCopyWithImpl<$Res>
    extends _$TenantFiltersCopyWithImpl<$Res, _$TenantFiltersImpl>
    implements _$$TenantFiltersImplCopyWith<$Res> {
  __$$TenantFiltersImplCopyWithImpl(
      _$TenantFiltersImpl _value, $Res Function(_$TenantFiltersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? name = freezed,
    Object? domain = freezed,
    Object? createdAfter = freezed,
    Object? createdBefore = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_$TenantFiltersImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAfter: freezed == createdAfter
          ? _value.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _value.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TenantFiltersImpl extends _TenantFilters {
  const _$TenantFiltersImpl(
      {this.status,
      this.name,
      this.domain,
      this.createdAfter,
      this.createdBefore,
      this.page,
      this.limit,
      this.sortBy,
      this.sortOrder})
      : super._();

  factory _$TenantFiltersImpl.fromJson(Map<String, dynamic> json) =>
      _$$TenantFiltersImplFromJson(json);

  @override
  final String? status;
  @override
  final String? name;
  @override
  final String? domain;
  @override
  final DateTime? createdAfter;
  @override
  final DateTime? createdBefore;
  @override
  final int? page;
  @override
  final int? limit;
  @override
  final String? sortBy;
  @override
  final String? sortOrder;

  @override
  String toString() {
    return 'TenantFilters(status: $status, name: $name, domain: $domain, createdAfter: $createdAfter, createdBefore: $createdBefore, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TenantFiltersImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.createdAfter, createdAfter) ||
                other.createdAfter == createdAfter) &&
            (identical(other.createdBefore, createdBefore) ||
                other.createdBefore == createdBefore) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, name, domain,
      createdAfter, createdBefore, page, limit, sortBy, sortOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TenantFiltersImplCopyWith<_$TenantFiltersImpl> get copyWith =>
      __$$TenantFiltersImplCopyWithImpl<_$TenantFiltersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TenantFiltersImplToJson(
      this,
    );
  }
}

abstract class _TenantFilters extends TenantFilters {
  const factory _TenantFilters(
      {final String? status,
      final String? name,
      final String? domain,
      final DateTime? createdAfter,
      final DateTime? createdBefore,
      final int? page,
      final int? limit,
      final String? sortBy,
      final String? sortOrder}) = _$TenantFiltersImpl;
  const _TenantFilters._() : super._();

  factory _TenantFilters.fromJson(Map<String, dynamic> json) =
      _$TenantFiltersImpl.fromJson;

  @override
  String? get status;
  @override
  String? get name;
  @override
  String? get domain;
  @override
  DateTime? get createdAfter;
  @override
  DateTime? get createdBefore;
  @override
  int? get page;
  @override
  int? get limit;
  @override
  String? get sortBy;
  @override
  String? get sortOrder;
  @override
  @JsonKey(ignore: true)
  _$$TenantFiltersImplCopyWith<_$TenantFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TenantMemberFilters _$TenantMemberFiltersFromJson(Map<String, dynamic> json) {
  return _TenantMemberFilters.fromJson(json);
}

/// @nodoc
mixin _$TenantMemberFilters {
  String? get role => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  DateTime? get joinedAfter => throw _privateConstructorUsedError;
  DateTime? get joinedBefore => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String? get sortBy => throw _privateConstructorUsedError;
  String? get sortOrder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TenantMemberFiltersCopyWith<TenantMemberFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenantMemberFiltersCopyWith<$Res> {
  factory $TenantMemberFiltersCopyWith(
          TenantMemberFilters value, $Res Function(TenantMemberFilters) then) =
      _$TenantMemberFiltersCopyWithImpl<$Res, TenantMemberFilters>;
  @useResult
  $Res call(
      {String? role,
      String? status,
      String? userId,
      DateTime? joinedAfter,
      DateTime? joinedBefore,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class _$TenantMemberFiltersCopyWithImpl<$Res, $Val extends TenantMemberFilters>
    implements $TenantMemberFiltersCopyWith<$Res> {
  _$TenantMemberFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? status = freezed,
    Object? userId = freezed,
    Object? joinedAfter = freezed,
    Object? joinedBefore = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_value.copyWith(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      joinedAfter: freezed == joinedAfter
          ? _value.joinedAfter
          : joinedAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      joinedBefore: freezed == joinedBefore
          ? _value.joinedBefore
          : joinedBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TenantMemberFiltersImplCopyWith<$Res>
    implements $TenantMemberFiltersCopyWith<$Res> {
  factory _$$TenantMemberFiltersImplCopyWith(_$TenantMemberFiltersImpl value,
          $Res Function(_$TenantMemberFiltersImpl) then) =
      __$$TenantMemberFiltersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? role,
      String? status,
      String? userId,
      DateTime? joinedAfter,
      DateTime? joinedBefore,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class __$$TenantMemberFiltersImplCopyWithImpl<$Res>
    extends _$TenantMemberFiltersCopyWithImpl<$Res, _$TenantMemberFiltersImpl>
    implements _$$TenantMemberFiltersImplCopyWith<$Res> {
  __$$TenantMemberFiltersImplCopyWithImpl(_$TenantMemberFiltersImpl _value,
      $Res Function(_$TenantMemberFiltersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? status = freezed,
    Object? userId = freezed,
    Object? joinedAfter = freezed,
    Object? joinedBefore = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_$TenantMemberFiltersImpl(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      joinedAfter: freezed == joinedAfter
          ? _value.joinedAfter
          : joinedAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      joinedBefore: freezed == joinedBefore
          ? _value.joinedBefore
          : joinedBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TenantMemberFiltersImpl extends _TenantMemberFilters {
  const _$TenantMemberFiltersImpl(
      {this.role,
      this.status,
      this.userId,
      this.joinedAfter,
      this.joinedBefore,
      this.page,
      this.limit,
      this.sortBy,
      this.sortOrder})
      : super._();

  factory _$TenantMemberFiltersImpl.fromJson(Map<String, dynamic> json) =>
      _$$TenantMemberFiltersImplFromJson(json);

  @override
  final String? role;
  @override
  final String? status;
  @override
  final String? userId;
  @override
  final DateTime? joinedAfter;
  @override
  final DateTime? joinedBefore;
  @override
  final int? page;
  @override
  final int? limit;
  @override
  final String? sortBy;
  @override
  final String? sortOrder;

  @override
  String toString() {
    return 'TenantMemberFilters(role: $role, status: $status, userId: $userId, joinedAfter: $joinedAfter, joinedBefore: $joinedBefore, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TenantMemberFiltersImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.joinedAfter, joinedAfter) ||
                other.joinedAfter == joinedAfter) &&
            (identical(other.joinedBefore, joinedBefore) ||
                other.joinedBefore == joinedBefore) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, role, status, userId,
      joinedAfter, joinedBefore, page, limit, sortBy, sortOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TenantMemberFiltersImplCopyWith<_$TenantMemberFiltersImpl> get copyWith =>
      __$$TenantMemberFiltersImplCopyWithImpl<_$TenantMemberFiltersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TenantMemberFiltersImplToJson(
      this,
    );
  }
}

abstract class _TenantMemberFilters extends TenantMemberFilters {
  const factory _TenantMemberFilters(
      {final String? role,
      final String? status,
      final String? userId,
      final DateTime? joinedAfter,
      final DateTime? joinedBefore,
      final int? page,
      final int? limit,
      final String? sortBy,
      final String? sortOrder}) = _$TenantMemberFiltersImpl;
  const _TenantMemberFilters._() : super._();

  factory _TenantMemberFilters.fromJson(Map<String, dynamic> json) =
      _$TenantMemberFiltersImpl.fromJson;

  @override
  String? get role;
  @override
  String? get status;
  @override
  String? get userId;
  @override
  DateTime? get joinedAfter;
  @override
  DateTime? get joinedBefore;
  @override
  int? get page;
  @override
  int? get limit;
  @override
  String? get sortBy;
  @override
  String? get sortOrder;
  @override
  @JsonKey(ignore: true)
  _$$TenantMemberFiltersImplCopyWith<_$TenantMemberFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TenantInvitationFilters _$TenantInvitationFiltersFromJson(
    Map<String, dynamic> json) {
  return _TenantInvitationFilters.fromJson(json);
}

/// @nodoc
mixin _$TenantInvitationFilters {
  String? get status => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get invitedBy => throw _privateConstructorUsedError;
  DateTime? get createdAfter => throw _privateConstructorUsedError;
  DateTime? get createdBefore => throw _privateConstructorUsedError;
  DateTime? get expiresAfter => throw _privateConstructorUsedError;
  DateTime? get expiresBefore => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String? get sortBy => throw _privateConstructorUsedError;
  String? get sortOrder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TenantInvitationFiltersCopyWith<TenantInvitationFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenantInvitationFiltersCopyWith<$Res> {
  factory $TenantInvitationFiltersCopyWith(TenantInvitationFilters value,
          $Res Function(TenantInvitationFilters) then) =
      _$TenantInvitationFiltersCopyWithImpl<$Res, TenantInvitationFilters>;
  @useResult
  $Res call(
      {String? status,
      String? role,
      String? email,
      String? invitedBy,
      DateTime? createdAfter,
      DateTime? createdBefore,
      DateTime? expiresAfter,
      DateTime? expiresBefore,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class _$TenantInvitationFiltersCopyWithImpl<$Res,
        $Val extends TenantInvitationFilters>
    implements $TenantInvitationFiltersCopyWith<$Res> {
  _$TenantInvitationFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? role = freezed,
    Object? email = freezed,
    Object? invitedBy = freezed,
    Object? createdAfter = freezed,
    Object? createdBefore = freezed,
    Object? expiresAfter = freezed,
    Object? expiresBefore = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      invitedBy: freezed == invitedBy
          ? _value.invitedBy
          : invitedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAfter: freezed == createdAfter
          ? _value.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _value.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresAfter: freezed == expiresAfter
          ? _value.expiresAfter
          : expiresAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresBefore: freezed == expiresBefore
          ? _value.expiresBefore
          : expiresBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TenantInvitationFiltersImplCopyWith<$Res>
    implements $TenantInvitationFiltersCopyWith<$Res> {
  factory _$$TenantInvitationFiltersImplCopyWith(
          _$TenantInvitationFiltersImpl value,
          $Res Function(_$TenantInvitationFiltersImpl) then) =
      __$$TenantInvitationFiltersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      String? role,
      String? email,
      String? invitedBy,
      DateTime? createdAfter,
      DateTime? createdBefore,
      DateTime? expiresAfter,
      DateTime? expiresBefore,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class __$$TenantInvitationFiltersImplCopyWithImpl<$Res>
    extends _$TenantInvitationFiltersCopyWithImpl<$Res,
        _$TenantInvitationFiltersImpl>
    implements _$$TenantInvitationFiltersImplCopyWith<$Res> {
  __$$TenantInvitationFiltersImplCopyWithImpl(
      _$TenantInvitationFiltersImpl _value,
      $Res Function(_$TenantInvitationFiltersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? role = freezed,
    Object? email = freezed,
    Object? invitedBy = freezed,
    Object? createdAfter = freezed,
    Object? createdBefore = freezed,
    Object? expiresAfter = freezed,
    Object? expiresBefore = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_$TenantInvitationFiltersImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      invitedBy: freezed == invitedBy
          ? _value.invitedBy
          : invitedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAfter: freezed == createdAfter
          ? _value.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _value.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresAfter: freezed == expiresAfter
          ? _value.expiresAfter
          : expiresAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresBefore: freezed == expiresBefore
          ? _value.expiresBefore
          : expiresBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TenantInvitationFiltersImpl extends _TenantInvitationFilters {
  const _$TenantInvitationFiltersImpl(
      {this.status,
      this.role,
      this.email,
      this.invitedBy,
      this.createdAfter,
      this.createdBefore,
      this.expiresAfter,
      this.expiresBefore,
      this.page,
      this.limit,
      this.sortBy,
      this.sortOrder})
      : super._();

  factory _$TenantInvitationFiltersImpl.fromJson(Map<String, dynamic> json) =>
      _$$TenantInvitationFiltersImplFromJson(json);

  @override
  final String? status;
  @override
  final String? role;
  @override
  final String? email;
  @override
  final String? invitedBy;
  @override
  final DateTime? createdAfter;
  @override
  final DateTime? createdBefore;
  @override
  final DateTime? expiresAfter;
  @override
  final DateTime? expiresBefore;
  @override
  final int? page;
  @override
  final int? limit;
  @override
  final String? sortBy;
  @override
  final String? sortOrder;

  @override
  String toString() {
    return 'TenantInvitationFilters(status: $status, role: $role, email: $email, invitedBy: $invitedBy, createdAfter: $createdAfter, createdBefore: $createdBefore, expiresAfter: $expiresAfter, expiresBefore: $expiresBefore, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TenantInvitationFiltersImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.invitedBy, invitedBy) ||
                other.invitedBy == invitedBy) &&
            (identical(other.createdAfter, createdAfter) ||
                other.createdAfter == createdAfter) &&
            (identical(other.createdBefore, createdBefore) ||
                other.createdBefore == createdBefore) &&
            (identical(other.expiresAfter, expiresAfter) ||
                other.expiresAfter == expiresAfter) &&
            (identical(other.expiresBefore, expiresBefore) ||
                other.expiresBefore == expiresBefore) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      role,
      email,
      invitedBy,
      createdAfter,
      createdBefore,
      expiresAfter,
      expiresBefore,
      page,
      limit,
      sortBy,
      sortOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TenantInvitationFiltersImplCopyWith<_$TenantInvitationFiltersImpl>
      get copyWith => __$$TenantInvitationFiltersImplCopyWithImpl<
          _$TenantInvitationFiltersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TenantInvitationFiltersImplToJson(
      this,
    );
  }
}

abstract class _TenantInvitationFilters extends TenantInvitationFilters {
  const factory _TenantInvitationFilters(
      {final String? status,
      final String? role,
      final String? email,
      final String? invitedBy,
      final DateTime? createdAfter,
      final DateTime? createdBefore,
      final DateTime? expiresAfter,
      final DateTime? expiresBefore,
      final int? page,
      final int? limit,
      final String? sortBy,
      final String? sortOrder}) = _$TenantInvitationFiltersImpl;
  const _TenantInvitationFilters._() : super._();

  factory _TenantInvitationFilters.fromJson(Map<String, dynamic> json) =
      _$TenantInvitationFiltersImpl.fromJson;

  @override
  String? get status;
  @override
  String? get role;
  @override
  String? get email;
  @override
  String? get invitedBy;
  @override
  DateTime? get createdAfter;
  @override
  DateTime? get createdBefore;
  @override
  DateTime? get expiresAfter;
  @override
  DateTime? get expiresBefore;
  @override
  int? get page;
  @override
  int? get limit;
  @override
  String? get sortBy;
  @override
  String? get sortOrder;
  @override
  @JsonKey(ignore: true)
  _$$TenantInvitationFiltersImplCopyWith<_$TenantInvitationFiltersImpl>
      get copyWith => throw _privateConstructorUsedError;
}
