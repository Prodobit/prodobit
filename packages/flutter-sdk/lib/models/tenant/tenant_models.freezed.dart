// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tenant_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Tenant {
  String get id;
  String get name;
  String get slug;
  String get status; // 'active', 'suspended', 'inactive'
  DateTime get createdAt;
  DateTime get updatedAt;
  String? get description;
  String? get domain;
  String? get logoUrl;
  String? get contactEmail;
  String? get contactPhone;
  String? get address;
  String? get timezone;
  String? get currency;
  String? get language;
  Map<String, dynamic>? get settings;
  Map<String, dynamic>? get metadata;

  /// Create a copy of Tenant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TenantCopyWith<Tenant> get copyWith =>
      _$TenantCopyWithImpl<Tenant>(this as Tenant, _$identity);

  /// Serializes this Tenant to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Tenant &&
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
            const DeepCollectionEquality().equals(other.settings, settings) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(settings),
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'Tenant(id: $id, name: $name, slug: $slug, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, description: $description, domain: $domain, logoUrl: $logoUrl, contactEmail: $contactEmail, contactPhone: $contactPhone, address: $address, timezone: $timezone, currency: $currency, language: $language, settings: $settings, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $TenantCopyWith<$Res> {
  factory $TenantCopyWith(Tenant value, $Res Function(Tenant) _then) =
      _$TenantCopyWithImpl;
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
class _$TenantCopyWithImpl<$Res> implements $TenantCopyWith<$Res> {
  _$TenantCopyWithImpl(this._self, this._then);

  final Tenant _self;
  final $Res Function(Tenant) _then;

  /// Create a copy of Tenant
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _self.slug
          : slug // ignore: cast_nullable_to_non_nullable
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
      domain: freezed == domain
          ? _self.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _self.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _self.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _self.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _self.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: freezed == settings
          ? _self.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Tenant].
extension TenantPatterns on Tenant {
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
    TResult Function(_Tenant value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Tenant() when $default != null:
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
    TResult Function(_Tenant value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Tenant():
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
    TResult? Function(_Tenant value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Tenant() when $default != null:
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
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Tenant() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.slug,
            _that.status,
            _that.createdAt,
            _that.updatedAt,
            _that.description,
            _that.domain,
            _that.logoUrl,
            _that.contactEmail,
            _that.contactPhone,
            _that.address,
            _that.timezone,
            _that.currency,
            _that.language,
            _that.settings,
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
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Tenant():
        return $default(
            _that.id,
            _that.name,
            _that.slug,
            _that.status,
            _that.createdAt,
            _that.updatedAt,
            _that.description,
            _that.domain,
            _that.logoUrl,
            _that.contactEmail,
            _that.contactPhone,
            _that.address,
            _that.timezone,
            _that.currency,
            _that.language,
            _that.settings,
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
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Tenant() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.slug,
            _that.status,
            _that.createdAt,
            _that.updatedAt,
            _that.description,
            _that.domain,
            _that.logoUrl,
            _that.contactEmail,
            _that.contactPhone,
            _that.address,
            _that.timezone,
            _that.currency,
            _that.language,
            _that.settings,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Tenant implements Tenant {
  const _Tenant(
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
  factory _Tenant.fromJson(Map<String, dynamic> json) => _$TenantFromJson(json);

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

  /// Create a copy of Tenant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TenantCopyWith<_Tenant> get copyWith =>
      __$TenantCopyWithImpl<_Tenant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TenantToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Tenant &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'Tenant(id: $id, name: $name, slug: $slug, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, description: $description, domain: $domain, logoUrl: $logoUrl, contactEmail: $contactEmail, contactPhone: $contactPhone, address: $address, timezone: $timezone, currency: $currency, language: $language, settings: $settings, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$TenantCopyWith<$Res> implements $TenantCopyWith<$Res> {
  factory _$TenantCopyWith(_Tenant value, $Res Function(_Tenant) _then) =
      __$TenantCopyWithImpl;
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
class __$TenantCopyWithImpl<$Res> implements _$TenantCopyWith<$Res> {
  __$TenantCopyWithImpl(this._self, this._then);

  final _Tenant _self;
  final $Res Function(_Tenant) _then;

  /// Create a copy of Tenant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_Tenant(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _self.slug
          : slug // ignore: cast_nullable_to_non_nullable
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
      domain: freezed == domain
          ? _self.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _self.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _self.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _self.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _self.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: freezed == settings
          ? _self._settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$TenantMember {
  String get id;
  String get tenantId;
  String get userId;
  String get role; // 'owner', 'admin', 'manager', 'user', 'viewer'
  String get status; // 'active', 'invited', 'suspended'
  DateTime get createdAt;
  DateTime get updatedAt;
  DateTime? get invitedAt;
  DateTime? get joinedAt;
  DateTime? get suspendedAt;
  String? get invitedBy;
  String? get invitationToken;
  DateTime? get invitationExpiresAt;
  List<String>? get permissions;
  Map<String, dynamic>? get metadata;

  /// Create a copy of TenantMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TenantMemberCopyWith<TenantMember> get copyWith =>
      _$TenantMemberCopyWithImpl<TenantMember>(
          this as TenantMember, _$identity);

  /// Serializes this TenantMember to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TenantMember &&
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
                .equals(other.permissions, permissions) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(permissions),
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'TenantMember(id: $id, tenantId: $tenantId, userId: $userId, role: $role, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, invitedAt: $invitedAt, joinedAt: $joinedAt, suspendedAt: $suspendedAt, invitedBy: $invitedBy, invitationToken: $invitationToken, invitationExpiresAt: $invitationExpiresAt, permissions: $permissions, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $TenantMemberCopyWith<$Res> {
  factory $TenantMemberCopyWith(
          TenantMember value, $Res Function(TenantMember) _then) =
      _$TenantMemberCopyWithImpl;
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
class _$TenantMemberCopyWithImpl<$Res> implements $TenantMemberCopyWith<$Res> {
  _$TenantMemberCopyWithImpl(this._self, this._then);

  final TenantMember _self;
  final $Res Function(TenantMember) _then;

  /// Create a copy of TenantMember
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: null == tenantId
          ? _self.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
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
      invitedAt: freezed == invitedAt
          ? _self.invitedAt
          : invitedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      joinedAt: freezed == joinedAt
          ? _self.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      suspendedAt: freezed == suspendedAt
          ? _self.suspendedAt
          : suspendedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      invitedBy: freezed == invitedBy
          ? _self.invitedBy
          : invitedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      invitationToken: freezed == invitationToken
          ? _self.invitationToken
          : invitationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      invitationExpiresAt: freezed == invitationExpiresAt
          ? _self.invitationExpiresAt
          : invitationExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      permissions: freezed == permissions
          ? _self.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [TenantMember].
extension TenantMemberPatterns on TenantMember {
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
    TResult Function(_TenantMember value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TenantMember() when $default != null:
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
    TResult Function(_TenantMember value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantMember():
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
    TResult? Function(_TenantMember value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantMember() when $default != null:
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
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TenantMember() when $default != null:
        return $default(
            _that.id,
            _that.tenantId,
            _that.userId,
            _that.role,
            _that.status,
            _that.createdAt,
            _that.updatedAt,
            _that.invitedAt,
            _that.joinedAt,
            _that.suspendedAt,
            _that.invitedBy,
            _that.invitationToken,
            _that.invitationExpiresAt,
            _that.permissions,
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
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantMember():
        return $default(
            _that.id,
            _that.tenantId,
            _that.userId,
            _that.role,
            _that.status,
            _that.createdAt,
            _that.updatedAt,
            _that.invitedAt,
            _that.joinedAt,
            _that.suspendedAt,
            _that.invitedBy,
            _that.invitationToken,
            _that.invitationExpiresAt,
            _that.permissions,
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
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantMember() when $default != null:
        return $default(
            _that.id,
            _that.tenantId,
            _that.userId,
            _that.role,
            _that.status,
            _that.createdAt,
            _that.updatedAt,
            _that.invitedAt,
            _that.joinedAt,
            _that.suspendedAt,
            _that.invitedBy,
            _that.invitationToken,
            _that.invitationExpiresAt,
            _that.permissions,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TenantMember implements TenantMember {
  const _TenantMember(
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
  factory _TenantMember.fromJson(Map<String, dynamic> json) =>
      _$TenantMemberFromJson(json);

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

  /// Create a copy of TenantMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TenantMemberCopyWith<_TenantMember> get copyWith =>
      __$TenantMemberCopyWithImpl<_TenantMember>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TenantMemberToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TenantMember &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'TenantMember(id: $id, tenantId: $tenantId, userId: $userId, role: $role, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, invitedAt: $invitedAt, joinedAt: $joinedAt, suspendedAt: $suspendedAt, invitedBy: $invitedBy, invitationToken: $invitationToken, invitationExpiresAt: $invitationExpiresAt, permissions: $permissions, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$TenantMemberCopyWith<$Res>
    implements $TenantMemberCopyWith<$Res> {
  factory _$TenantMemberCopyWith(
          _TenantMember value, $Res Function(_TenantMember) _then) =
      __$TenantMemberCopyWithImpl;
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
class __$TenantMemberCopyWithImpl<$Res>
    implements _$TenantMemberCopyWith<$Res> {
  __$TenantMemberCopyWithImpl(this._self, this._then);

  final _TenantMember _self;
  final $Res Function(_TenantMember) _then;

  /// Create a copy of TenantMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_TenantMember(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: null == tenantId
          ? _self.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
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
      invitedAt: freezed == invitedAt
          ? _self.invitedAt
          : invitedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      joinedAt: freezed == joinedAt
          ? _self.joinedAt
          : joinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      suspendedAt: freezed == suspendedAt
          ? _self.suspendedAt
          : suspendedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      invitedBy: freezed == invitedBy
          ? _self.invitedBy
          : invitedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      invitationToken: freezed == invitationToken
          ? _self.invitationToken
          : invitationToken // ignore: cast_nullable_to_non_nullable
              as String?,
      invitationExpiresAt: freezed == invitationExpiresAt
          ? _self.invitationExpiresAt
          : invitationExpiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      permissions: freezed == permissions
          ? _self._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$TenantRole {
  String get id;
  String get tenantId;
  String get name;
  String get displayName;
  String get description;
  List<String> get permissions;
  bool get isDefault;
  DateTime get createdAt;
  DateTime get updatedAt;
  Map<String, dynamic>? get metadata;

  /// Create a copy of TenantRole
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TenantRoleCopyWith<TenantRole> get copyWith =>
      _$TenantRoleCopyWithImpl<TenantRole>(this as TenantRole, _$identity);

  /// Serializes this TenantRole to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TenantRole &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other.permissions, permissions) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      tenantId,
      name,
      displayName,
      description,
      const DeepCollectionEquality().hash(permissions),
      isDefault,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'TenantRole(id: $id, tenantId: $tenantId, name: $name, displayName: $displayName, description: $description, permissions: $permissions, isDefault: $isDefault, createdAt: $createdAt, updatedAt: $updatedAt, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $TenantRoleCopyWith<$Res> {
  factory $TenantRoleCopyWith(
          TenantRole value, $Res Function(TenantRole) _then) =
      _$TenantRoleCopyWithImpl;
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
class _$TenantRoleCopyWithImpl<$Res> implements $TenantRoleCopyWith<$Res> {
  _$TenantRoleCopyWithImpl(this._self, this._then);

  final TenantRole _self;
  final $Res Function(TenantRole) _then;

  /// Create a copy of TenantRole
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: null == tenantId
          ? _self.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      permissions: null == permissions
          ? _self.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isDefault: null == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [TenantRole].
extension TenantRolePatterns on TenantRole {
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
    TResult Function(_TenantRole value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TenantRole() when $default != null:
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
    TResult Function(_TenantRole value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantRole():
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
    TResult? Function(_TenantRole value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantRole() when $default != null:
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
            String name,
            String displayName,
            String description,
            List<String> permissions,
            bool isDefault,
            DateTime createdAt,
            DateTime updatedAt,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TenantRole() when $default != null:
        return $default(
            _that.id,
            _that.tenantId,
            _that.name,
            _that.displayName,
            _that.description,
            _that.permissions,
            _that.isDefault,
            _that.createdAt,
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
            String tenantId,
            String name,
            String displayName,
            String description,
            List<String> permissions,
            bool isDefault,
            DateTime createdAt,
            DateTime updatedAt,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantRole():
        return $default(
            _that.id,
            _that.tenantId,
            _that.name,
            _that.displayName,
            _that.description,
            _that.permissions,
            _that.isDefault,
            _that.createdAt,
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
            String tenantId,
            String name,
            String displayName,
            String description,
            List<String> permissions,
            bool isDefault,
            DateTime createdAt,
            DateTime updatedAt,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantRole() when $default != null:
        return $default(
            _that.id,
            _that.tenantId,
            _that.name,
            _that.displayName,
            _that.description,
            _that.permissions,
            _that.isDefault,
            _that.createdAt,
            _that.updatedAt,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TenantRole implements TenantRole {
  const _TenantRole(
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
  factory _TenantRole.fromJson(Map<String, dynamic> json) =>
      _$TenantRoleFromJson(json);

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

  /// Create a copy of TenantRole
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TenantRoleCopyWith<_TenantRole> get copyWith =>
      __$TenantRoleCopyWithImpl<_TenantRole>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TenantRoleToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TenantRole &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'TenantRole(id: $id, tenantId: $tenantId, name: $name, displayName: $displayName, description: $description, permissions: $permissions, isDefault: $isDefault, createdAt: $createdAt, updatedAt: $updatedAt, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$TenantRoleCopyWith<$Res>
    implements $TenantRoleCopyWith<$Res> {
  factory _$TenantRoleCopyWith(
          _TenantRole value, $Res Function(_TenantRole) _then) =
      __$TenantRoleCopyWithImpl;
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
class __$TenantRoleCopyWithImpl<$Res> implements _$TenantRoleCopyWith<$Res> {
  __$TenantRoleCopyWithImpl(this._self, this._then);

  final _TenantRole _self;
  final $Res Function(_TenantRole) _then;

  /// Create a copy of TenantRole
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_TenantRole(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: null == tenantId
          ? _self.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      permissions: null == permissions
          ? _self._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isDefault: null == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$TenantInvitation {
  String get id;
  String get tenantId;
  String get email;
  String get role;
  String get status; // 'pending', 'accepted', 'rejected', 'expired'
  String get token;
  DateTime get expiresAt;
  DateTime get createdAt;
  DateTime get updatedAt;
  String? get invitedBy;
  String? get firstName;
  String? get lastName;
  DateTime? get acceptedAt;
  DateTime? get rejectedAt;
  String? get rejectionReason;
  Map<String, dynamic>? get metadata;

  /// Create a copy of TenantInvitation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TenantInvitationCopyWith<TenantInvitation> get copyWith =>
      _$TenantInvitationCopyWithImpl<TenantInvitation>(
          this as TenantInvitation, _$identity);

  /// Serializes this TenantInvitation to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TenantInvitation &&
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
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'TenantInvitation(id: $id, tenantId: $tenantId, email: $email, role: $role, status: $status, token: $token, expiresAt: $expiresAt, createdAt: $createdAt, updatedAt: $updatedAt, invitedBy: $invitedBy, firstName: $firstName, lastName: $lastName, acceptedAt: $acceptedAt, rejectedAt: $rejectedAt, rejectionReason: $rejectionReason, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $TenantInvitationCopyWith<$Res> {
  factory $TenantInvitationCopyWith(
          TenantInvitation value, $Res Function(TenantInvitation) _then) =
      _$TenantInvitationCopyWithImpl;
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
class _$TenantInvitationCopyWithImpl<$Res>
    implements $TenantInvitationCopyWith<$Res> {
  _$TenantInvitationCopyWithImpl(this._self, this._then);

  final TenantInvitation _self;
  final $Res Function(TenantInvitation) _then;

  /// Create a copy of TenantInvitation
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: null == tenantId
          ? _self.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      invitedBy: freezed == invitedBy
          ? _self.invitedBy
          : invitedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptedAt: freezed == acceptedAt
          ? _self.acceptedAt
          : acceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _self.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectionReason: freezed == rejectionReason
          ? _self.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [TenantInvitation].
extension TenantInvitationPatterns on TenantInvitation {
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
    TResult Function(_TenantInvitation value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TenantInvitation() when $default != null:
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
    TResult Function(_TenantInvitation value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantInvitation():
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
    TResult? Function(_TenantInvitation value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantInvitation() when $default != null:
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
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TenantInvitation() when $default != null:
        return $default(
            _that.id,
            _that.tenantId,
            _that.email,
            _that.role,
            _that.status,
            _that.token,
            _that.expiresAt,
            _that.createdAt,
            _that.updatedAt,
            _that.invitedBy,
            _that.firstName,
            _that.lastName,
            _that.acceptedAt,
            _that.rejectedAt,
            _that.rejectionReason,
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
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantInvitation():
        return $default(
            _that.id,
            _that.tenantId,
            _that.email,
            _that.role,
            _that.status,
            _that.token,
            _that.expiresAt,
            _that.createdAt,
            _that.updatedAt,
            _that.invitedBy,
            _that.firstName,
            _that.lastName,
            _that.acceptedAt,
            _that.rejectedAt,
            _that.rejectionReason,
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
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantInvitation() when $default != null:
        return $default(
            _that.id,
            _that.tenantId,
            _that.email,
            _that.role,
            _that.status,
            _that.token,
            _that.expiresAt,
            _that.createdAt,
            _that.updatedAt,
            _that.invitedBy,
            _that.firstName,
            _that.lastName,
            _that.acceptedAt,
            _that.rejectedAt,
            _that.rejectionReason,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TenantInvitation implements TenantInvitation {
  const _TenantInvitation(
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
  factory _TenantInvitation.fromJson(Map<String, dynamic> json) =>
      _$TenantInvitationFromJson(json);

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

  /// Create a copy of TenantInvitation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TenantInvitationCopyWith<_TenantInvitation> get copyWith =>
      __$TenantInvitationCopyWithImpl<_TenantInvitation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TenantInvitationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TenantInvitation &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'TenantInvitation(id: $id, tenantId: $tenantId, email: $email, role: $role, status: $status, token: $token, expiresAt: $expiresAt, createdAt: $createdAt, updatedAt: $updatedAt, invitedBy: $invitedBy, firstName: $firstName, lastName: $lastName, acceptedAt: $acceptedAt, rejectedAt: $rejectedAt, rejectionReason: $rejectionReason, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$TenantInvitationCopyWith<$Res>
    implements $TenantInvitationCopyWith<$Res> {
  factory _$TenantInvitationCopyWith(
          _TenantInvitation value, $Res Function(_TenantInvitation) _then) =
      __$TenantInvitationCopyWithImpl;
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
class __$TenantInvitationCopyWithImpl<$Res>
    implements _$TenantInvitationCopyWith<$Res> {
  __$TenantInvitationCopyWithImpl(this._self, this._then);

  final _TenantInvitation _self;
  final $Res Function(_TenantInvitation) _then;

  /// Create a copy of TenantInvitation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_TenantInvitation(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: null == tenantId
          ? _self.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      invitedBy: freezed == invitedBy
          ? _self.invitedBy
          : invitedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptedAt: freezed == acceptedAt
          ? _self.acceptedAt
          : acceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedAt: freezed == rejectedAt
          ? _self.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectionReason: freezed == rejectionReason
          ? _self.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$CreateTenantRequest {
  String get name;
  String get slug;
  String? get description;
  String? get domain;
  String? get contactEmail;
  String? get contactPhone;
  String? get address;
  String? get timezone;
  String? get currency;
  String? get language;
  Map<String, dynamic>? get settings;
  Map<String, dynamic>? get metadata;

  /// Create a copy of CreateTenantRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateTenantRequestCopyWith<CreateTenantRequest> get copyWith =>
      _$CreateTenantRequestCopyWithImpl<CreateTenantRequest>(
          this as CreateTenantRequest, _$identity);

  /// Serializes this CreateTenantRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateTenantRequest &&
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
            const DeepCollectionEquality().equals(other.settings, settings) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(settings),
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'CreateTenantRequest(name: $name, slug: $slug, description: $description, domain: $domain, contactEmail: $contactEmail, contactPhone: $contactPhone, address: $address, timezone: $timezone, currency: $currency, language: $language, settings: $settings, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $CreateTenantRequestCopyWith<$Res> {
  factory $CreateTenantRequestCopyWith(
          CreateTenantRequest value, $Res Function(CreateTenantRequest) _then) =
      _$CreateTenantRequestCopyWithImpl;
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
class _$CreateTenantRequestCopyWithImpl<$Res>
    implements $CreateTenantRequestCopyWith<$Res> {
  _$CreateTenantRequestCopyWithImpl(this._self, this._then);

  final CreateTenantRequest _self;
  final $Res Function(CreateTenantRequest) _then;

  /// Create a copy of CreateTenantRequest
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _self.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      domain: freezed == domain
          ? _self.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _self.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _self.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _self.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: freezed == settings
          ? _self.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateTenantRequest].
extension CreateTenantRequestPatterns on CreateTenantRequest {
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
    TResult Function(_CreateTenantRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateTenantRequest() when $default != null:
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
    TResult Function(_CreateTenantRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateTenantRequest():
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
    TResult? Function(_CreateTenantRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateTenantRequest() when $default != null:
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
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateTenantRequest() when $default != null:
        return $default(
            _that.name,
            _that.slug,
            _that.description,
            _that.domain,
            _that.contactEmail,
            _that.contactPhone,
            _that.address,
            _that.timezone,
            _that.currency,
            _that.language,
            _that.settings,
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
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateTenantRequest():
        return $default(
            _that.name,
            _that.slug,
            _that.description,
            _that.domain,
            _that.contactEmail,
            _that.contactPhone,
            _that.address,
            _that.timezone,
            _that.currency,
            _that.language,
            _that.settings,
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
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateTenantRequest() when $default != null:
        return $default(
            _that.name,
            _that.slug,
            _that.description,
            _that.domain,
            _that.contactEmail,
            _that.contactPhone,
            _that.address,
            _that.timezone,
            _that.currency,
            _that.language,
            _that.settings,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateTenantRequest implements CreateTenantRequest {
  const _CreateTenantRequest(
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
  factory _CreateTenantRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateTenantRequestFromJson(json);

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

  /// Create a copy of CreateTenantRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateTenantRequestCopyWith<_CreateTenantRequest> get copyWith =>
      __$CreateTenantRequestCopyWithImpl<_CreateTenantRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateTenantRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateTenantRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'CreateTenantRequest(name: $name, slug: $slug, description: $description, domain: $domain, contactEmail: $contactEmail, contactPhone: $contactPhone, address: $address, timezone: $timezone, currency: $currency, language: $language, settings: $settings, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$CreateTenantRequestCopyWith<$Res>
    implements $CreateTenantRequestCopyWith<$Res> {
  factory _$CreateTenantRequestCopyWith(_CreateTenantRequest value,
          $Res Function(_CreateTenantRequest) _then) =
      __$CreateTenantRequestCopyWithImpl;
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
class __$CreateTenantRequestCopyWithImpl<$Res>
    implements _$CreateTenantRequestCopyWith<$Res> {
  __$CreateTenantRequestCopyWithImpl(this._self, this._then);

  final _CreateTenantRequest _self;
  final $Res Function(_CreateTenantRequest) _then;

  /// Create a copy of CreateTenantRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_CreateTenantRequest(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _self.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      domain: freezed == domain
          ? _self.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _self.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _self.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _self.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: freezed == settings
          ? _self._settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$UpdateTenantRequest {
  String? get name;
  String? get description;
  String? get domain;
  String? get contactEmail;
  String? get contactPhone;
  String? get address;
  String? get timezone;
  String? get currency;
  String? get language;
  String? get status;
  Map<String, dynamic>? get settings;
  Map<String, dynamic>? get metadata;

  /// Create a copy of UpdateTenantRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateTenantRequestCopyWith<UpdateTenantRequest> get copyWith =>
      _$UpdateTenantRequestCopyWithImpl<UpdateTenantRequest>(
          this as UpdateTenantRequest, _$identity);

  /// Serializes this UpdateTenantRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateTenantRequest &&
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
            const DeepCollectionEquality().equals(other.settings, settings) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(settings),
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'UpdateTenantRequest(name: $name, description: $description, domain: $domain, contactEmail: $contactEmail, contactPhone: $contactPhone, address: $address, timezone: $timezone, currency: $currency, language: $language, status: $status, settings: $settings, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $UpdateTenantRequestCopyWith<$Res> {
  factory $UpdateTenantRequestCopyWith(
          UpdateTenantRequest value, $Res Function(UpdateTenantRequest) _then) =
      _$UpdateTenantRequestCopyWithImpl;
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
class _$UpdateTenantRequestCopyWithImpl<$Res>
    implements $UpdateTenantRequestCopyWith<$Res> {
  _$UpdateTenantRequestCopyWithImpl(this._self, this._then);

  final UpdateTenantRequest _self;
  final $Res Function(UpdateTenantRequest) _then;

  /// Create a copy of UpdateTenantRequest
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      domain: freezed == domain
          ? _self.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _self.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _self.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _self.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: freezed == settings
          ? _self.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateTenantRequest].
extension UpdateTenantRequestPatterns on UpdateTenantRequest {
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
    TResult Function(_UpdateTenantRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateTenantRequest() when $default != null:
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
    TResult Function(_UpdateTenantRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateTenantRequest():
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
    TResult? Function(_UpdateTenantRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateTenantRequest() when $default != null:
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
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateTenantRequest() when $default != null:
        return $default(
            _that.name,
            _that.description,
            _that.domain,
            _that.contactEmail,
            _that.contactPhone,
            _that.address,
            _that.timezone,
            _that.currency,
            _that.language,
            _that.status,
            _that.settings,
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
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateTenantRequest():
        return $default(
            _that.name,
            _that.description,
            _that.domain,
            _that.contactEmail,
            _that.contactPhone,
            _that.address,
            _that.timezone,
            _that.currency,
            _that.language,
            _that.status,
            _that.settings,
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
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateTenantRequest() when $default != null:
        return $default(
            _that.name,
            _that.description,
            _that.domain,
            _that.contactEmail,
            _that.contactPhone,
            _that.address,
            _that.timezone,
            _that.currency,
            _that.language,
            _that.status,
            _that.settings,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateTenantRequest implements UpdateTenantRequest {
  const _UpdateTenantRequest(
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
  factory _UpdateTenantRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateTenantRequestFromJson(json);

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

  /// Create a copy of UpdateTenantRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateTenantRequestCopyWith<_UpdateTenantRequest> get copyWith =>
      __$UpdateTenantRequestCopyWithImpl<_UpdateTenantRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateTenantRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateTenantRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'UpdateTenantRequest(name: $name, description: $description, domain: $domain, contactEmail: $contactEmail, contactPhone: $contactPhone, address: $address, timezone: $timezone, currency: $currency, language: $language, status: $status, settings: $settings, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$UpdateTenantRequestCopyWith<$Res>
    implements $UpdateTenantRequestCopyWith<$Res> {
  factory _$UpdateTenantRequestCopyWith(_UpdateTenantRequest value,
          $Res Function(_UpdateTenantRequest) _then) =
      __$UpdateTenantRequestCopyWithImpl;
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
class __$UpdateTenantRequestCopyWithImpl<$Res>
    implements _$UpdateTenantRequestCopyWith<$Res> {
  __$UpdateTenantRequestCopyWithImpl(this._self, this._then);

  final _UpdateTenantRequest _self;
  final $Res Function(_UpdateTenantRequest) _then;

  /// Create a copy of UpdateTenantRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_UpdateTenantRequest(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      domain: freezed == domain
          ? _self.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: freezed == contactEmail
          ? _self.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: freezed == contactPhone
          ? _self.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _self.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: freezed == settings
          ? _self._settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$CreateInvitationRequest {
  String get email;
  String get role;
  String? get firstName;
  String? get lastName;
  DateTime? get expiresAt;
  Map<String, dynamic>? get metadata;

  /// Create a copy of CreateInvitationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateInvitationRequestCopyWith<CreateInvitationRequest> get copyWith =>
      _$CreateInvitationRequestCopyWithImpl<CreateInvitationRequest>(
          this as CreateInvitationRequest, _$identity);

  /// Serializes this CreateInvitationRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateInvitationRequest &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, role, firstName, lastName,
      expiresAt, const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'CreateInvitationRequest(email: $email, role: $role, firstName: $firstName, lastName: $lastName, expiresAt: $expiresAt, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $CreateInvitationRequestCopyWith<$Res> {
  factory $CreateInvitationRequestCopyWith(CreateInvitationRequest value,
          $Res Function(CreateInvitationRequest) _then) =
      _$CreateInvitationRequestCopyWithImpl;
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
class _$CreateInvitationRequestCopyWithImpl<$Res>
    implements $CreateInvitationRequestCopyWith<$Res> {
  _$CreateInvitationRequestCopyWithImpl(this._self, this._then);

  final CreateInvitationRequest _self;
  final $Res Function(CreateInvitationRequest) _then;

  /// Create a copy of CreateInvitationRequest
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateInvitationRequest].
extension CreateInvitationRequestPatterns on CreateInvitationRequest {
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
    TResult Function(_CreateInvitationRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateInvitationRequest() when $default != null:
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
    TResult Function(_CreateInvitationRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateInvitationRequest():
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
    TResult? Function(_CreateInvitationRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateInvitationRequest() when $default != null:
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
            String email,
            String role,
            String? firstName,
            String? lastName,
            DateTime? expiresAt,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateInvitationRequest() when $default != null:
        return $default(_that.email, _that.role, _that.firstName,
            _that.lastName, _that.expiresAt, _that.metadata);
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
            String email,
            String role,
            String? firstName,
            String? lastName,
            DateTime? expiresAt,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateInvitationRequest():
        return $default(_that.email, _that.role, _that.firstName,
            _that.lastName, _that.expiresAt, _that.metadata);
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
            String email,
            String role,
            String? firstName,
            String? lastName,
            DateTime? expiresAt,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateInvitationRequest() when $default != null:
        return $default(_that.email, _that.role, _that.firstName,
            _that.lastName, _that.expiresAt, _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateInvitationRequest implements CreateInvitationRequest {
  const _CreateInvitationRequest(
      {required this.email,
      required this.role,
      this.firstName,
      this.lastName,
      this.expiresAt,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _CreateInvitationRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateInvitationRequestFromJson(json);

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

  /// Create a copy of CreateInvitationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateInvitationRequestCopyWith<_CreateInvitationRequest> get copyWith =>
      __$CreateInvitationRequestCopyWithImpl<_CreateInvitationRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateInvitationRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateInvitationRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, role, firstName, lastName,
      expiresAt, const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'CreateInvitationRequest(email: $email, role: $role, firstName: $firstName, lastName: $lastName, expiresAt: $expiresAt, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$CreateInvitationRequestCopyWith<$Res>
    implements $CreateInvitationRequestCopyWith<$Res> {
  factory _$CreateInvitationRequestCopyWith(_CreateInvitationRequest value,
          $Res Function(_CreateInvitationRequest) _then) =
      __$CreateInvitationRequestCopyWithImpl;
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
class __$CreateInvitationRequestCopyWithImpl<$Res>
    implements _$CreateInvitationRequestCopyWith<$Res> {
  __$CreateInvitationRequestCopyWithImpl(this._self, this._then);

  final _CreateInvitationRequest _self;
  final $Res Function(_CreateInvitationRequest) _then;

  /// Create a copy of CreateInvitationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? role = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? expiresAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_CreateInvitationRequest(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$UpdateMembershipRequest {
  String? get role;
  String? get status;
  List<String>? get permissions;
  Map<String, dynamic>? get metadata;

  /// Create a copy of UpdateMembershipRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateMembershipRequestCopyWith<UpdateMembershipRequest> get copyWith =>
      _$UpdateMembershipRequestCopyWithImpl<UpdateMembershipRequest>(
          this as UpdateMembershipRequest, _$identity);

  /// Serializes this UpdateMembershipRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateMembershipRequest &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.permissions, permissions) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      role,
      status,
      const DeepCollectionEquality().hash(permissions),
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'UpdateMembershipRequest(role: $role, status: $status, permissions: $permissions, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $UpdateMembershipRequestCopyWith<$Res> {
  factory $UpdateMembershipRequestCopyWith(UpdateMembershipRequest value,
          $Res Function(UpdateMembershipRequest) _then) =
      _$UpdateMembershipRequestCopyWithImpl;
  @useResult
  $Res call(
      {String? role,
      String? status,
      List<String>? permissions,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$UpdateMembershipRequestCopyWithImpl<$Res>
    implements $UpdateMembershipRequestCopyWith<$Res> {
  _$UpdateMembershipRequestCopyWithImpl(this._self, this._then);

  final UpdateMembershipRequest _self;
  final $Res Function(UpdateMembershipRequest) _then;

  /// Create a copy of UpdateMembershipRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? status = freezed,
    Object? permissions = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      permissions: freezed == permissions
          ? _self.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateMembershipRequest].
extension UpdateMembershipRequestPatterns on UpdateMembershipRequest {
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
    TResult Function(_UpdateMembershipRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateMembershipRequest() when $default != null:
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
    TResult Function(_UpdateMembershipRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateMembershipRequest():
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
    TResult? Function(_UpdateMembershipRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateMembershipRequest() when $default != null:
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
    TResult Function(String? role, String? status, List<String>? permissions,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateMembershipRequest() when $default != null:
        return $default(
            _that.role, _that.status, _that.permissions, _that.metadata);
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
    TResult Function(String? role, String? status, List<String>? permissions,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateMembershipRequest():
        return $default(
            _that.role, _that.status, _that.permissions, _that.metadata);
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
    TResult? Function(String? role, String? status, List<String>? permissions,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateMembershipRequest() when $default != null:
        return $default(
            _that.role, _that.status, _that.permissions, _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateMembershipRequest implements UpdateMembershipRequest {
  const _UpdateMembershipRequest(
      {this.role,
      this.status,
      final List<String>? permissions,
      final Map<String, dynamic>? metadata})
      : _permissions = permissions,
        _metadata = metadata;
  factory _UpdateMembershipRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateMembershipRequestFromJson(json);

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

  /// Create a copy of UpdateMembershipRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateMembershipRequestCopyWith<_UpdateMembershipRequest> get copyWith =>
      __$UpdateMembershipRequestCopyWithImpl<_UpdateMembershipRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateMembershipRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateMembershipRequest &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      role,
      status,
      const DeepCollectionEquality().hash(_permissions),
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'UpdateMembershipRequest(role: $role, status: $status, permissions: $permissions, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$UpdateMembershipRequestCopyWith<$Res>
    implements $UpdateMembershipRequestCopyWith<$Res> {
  factory _$UpdateMembershipRequestCopyWith(_UpdateMembershipRequest value,
          $Res Function(_UpdateMembershipRequest) _then) =
      __$UpdateMembershipRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? role,
      String? status,
      List<String>? permissions,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$UpdateMembershipRequestCopyWithImpl<$Res>
    implements _$UpdateMembershipRequestCopyWith<$Res> {
  __$UpdateMembershipRequestCopyWithImpl(this._self, this._then);

  final _UpdateMembershipRequest _self;
  final $Res Function(_UpdateMembershipRequest) _then;

  /// Create a copy of UpdateMembershipRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? role = freezed,
    Object? status = freezed,
    Object? permissions = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_UpdateMembershipRequest(
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      permissions: freezed == permissions
          ? _self._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$TenantFilters {
  String? get status;
  String? get name;
  String? get domain;
  DateTime? get createdAfter;
  DateTime? get createdBefore;
  int? get page;
  int? get limit;
  String? get sortBy;
  String? get sortOrder;

  /// Create a copy of TenantFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TenantFiltersCopyWith<TenantFilters> get copyWith =>
      _$TenantFiltersCopyWithImpl<TenantFilters>(
          this as TenantFilters, _$identity);

  /// Serializes this TenantFilters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TenantFilters &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, name, domain,
      createdAfter, createdBefore, page, limit, sortBy, sortOrder);

  @override
  String toString() {
    return 'TenantFilters(status: $status, name: $name, domain: $domain, createdAfter: $createdAfter, createdBefore: $createdBefore, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class $TenantFiltersCopyWith<$Res> {
  factory $TenantFiltersCopyWith(
          TenantFilters value, $Res Function(TenantFilters) _then) =
      _$TenantFiltersCopyWithImpl;
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
class _$TenantFiltersCopyWithImpl<$Res>
    implements $TenantFiltersCopyWith<$Res> {
  _$TenantFiltersCopyWithImpl(this._self, this._then);

  final TenantFilters _self;
  final $Res Function(TenantFilters) _then;

  /// Create a copy of TenantFilters
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      domain: freezed == domain
          ? _self.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAfter: freezed == createdAfter
          ? _self.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _self.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _self.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [TenantFilters].
extension TenantFiltersPatterns on TenantFilters {
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
    TResult Function(_TenantFilters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TenantFilters() when $default != null:
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
    TResult Function(_TenantFilters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantFilters():
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
    TResult? Function(_TenantFilters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantFilters() when $default != null:
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
            String? status,
            String? name,
            String? domain,
            DateTime? createdAfter,
            DateTime? createdBefore,
            int? page,
            int? limit,
            String? sortBy,
            String? sortOrder)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TenantFilters() when $default != null:
        return $default(
            _that.status,
            _that.name,
            _that.domain,
            _that.createdAfter,
            _that.createdBefore,
            _that.page,
            _that.limit,
            _that.sortBy,
            _that.sortOrder);
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
            String? status,
            String? name,
            String? domain,
            DateTime? createdAfter,
            DateTime? createdBefore,
            int? page,
            int? limit,
            String? sortBy,
            String? sortOrder)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantFilters():
        return $default(
            _that.status,
            _that.name,
            _that.domain,
            _that.createdAfter,
            _that.createdBefore,
            _that.page,
            _that.limit,
            _that.sortBy,
            _that.sortOrder);
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
            String? status,
            String? name,
            String? domain,
            DateTime? createdAfter,
            DateTime? createdBefore,
            int? page,
            int? limit,
            String? sortBy,
            String? sortOrder)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantFilters() when $default != null:
        return $default(
            _that.status,
            _that.name,
            _that.domain,
            _that.createdAfter,
            _that.createdBefore,
            _that.page,
            _that.limit,
            _that.sortBy,
            _that.sortOrder);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TenantFilters extends TenantFilters {
  const _TenantFilters(
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
  factory _TenantFilters.fromJson(Map<String, dynamic> json) =>
      _$TenantFiltersFromJson(json);

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

  /// Create a copy of TenantFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TenantFiltersCopyWith<_TenantFilters> get copyWith =>
      __$TenantFiltersCopyWithImpl<_TenantFilters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TenantFiltersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TenantFilters &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, name, domain,
      createdAfter, createdBefore, page, limit, sortBy, sortOrder);

  @override
  String toString() {
    return 'TenantFilters(status: $status, name: $name, domain: $domain, createdAfter: $createdAfter, createdBefore: $createdBefore, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class _$TenantFiltersCopyWith<$Res>
    implements $TenantFiltersCopyWith<$Res> {
  factory _$TenantFiltersCopyWith(
          _TenantFilters value, $Res Function(_TenantFilters) _then) =
      __$TenantFiltersCopyWithImpl;
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
class __$TenantFiltersCopyWithImpl<$Res>
    implements _$TenantFiltersCopyWith<$Res> {
  __$TenantFiltersCopyWithImpl(this._self, this._then);

  final _TenantFilters _self;
  final $Res Function(_TenantFilters) _then;

  /// Create a copy of TenantFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_TenantFilters(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      domain: freezed == domain
          ? _self.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAfter: freezed == createdAfter
          ? _self.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _self.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _self.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$TenantMemberFilters {
  String? get role;
  String? get status;
  String? get userId;
  DateTime? get joinedAfter;
  DateTime? get joinedBefore;
  int? get page;
  int? get limit;
  String? get sortBy;
  String? get sortOrder;

  /// Create a copy of TenantMemberFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TenantMemberFiltersCopyWith<TenantMemberFilters> get copyWith =>
      _$TenantMemberFiltersCopyWithImpl<TenantMemberFilters>(
          this as TenantMemberFilters, _$identity);

  /// Serializes this TenantMemberFilters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TenantMemberFilters &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, role, status, userId,
      joinedAfter, joinedBefore, page, limit, sortBy, sortOrder);

  @override
  String toString() {
    return 'TenantMemberFilters(role: $role, status: $status, userId: $userId, joinedAfter: $joinedAfter, joinedBefore: $joinedBefore, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class $TenantMemberFiltersCopyWith<$Res> {
  factory $TenantMemberFiltersCopyWith(
          TenantMemberFilters value, $Res Function(TenantMemberFilters) _then) =
      _$TenantMemberFiltersCopyWithImpl;
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
class _$TenantMemberFiltersCopyWithImpl<$Res>
    implements $TenantMemberFiltersCopyWith<$Res> {
  _$TenantMemberFiltersCopyWithImpl(this._self, this._then);

  final TenantMemberFilters _self;
  final $Res Function(TenantMemberFilters) _then;

  /// Create a copy of TenantMemberFilters
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      joinedAfter: freezed == joinedAfter
          ? _self.joinedAfter
          : joinedAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      joinedBefore: freezed == joinedBefore
          ? _self.joinedBefore
          : joinedBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _self.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [TenantMemberFilters].
extension TenantMemberFiltersPatterns on TenantMemberFilters {
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
    TResult Function(_TenantMemberFilters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TenantMemberFilters() when $default != null:
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
    TResult Function(_TenantMemberFilters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantMemberFilters():
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
    TResult? Function(_TenantMemberFilters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantMemberFilters() when $default != null:
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
            String? role,
            String? status,
            String? userId,
            DateTime? joinedAfter,
            DateTime? joinedBefore,
            int? page,
            int? limit,
            String? sortBy,
            String? sortOrder)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TenantMemberFilters() when $default != null:
        return $default(
            _that.role,
            _that.status,
            _that.userId,
            _that.joinedAfter,
            _that.joinedBefore,
            _that.page,
            _that.limit,
            _that.sortBy,
            _that.sortOrder);
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
            String? role,
            String? status,
            String? userId,
            DateTime? joinedAfter,
            DateTime? joinedBefore,
            int? page,
            int? limit,
            String? sortBy,
            String? sortOrder)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantMemberFilters():
        return $default(
            _that.role,
            _that.status,
            _that.userId,
            _that.joinedAfter,
            _that.joinedBefore,
            _that.page,
            _that.limit,
            _that.sortBy,
            _that.sortOrder);
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
            String? role,
            String? status,
            String? userId,
            DateTime? joinedAfter,
            DateTime? joinedBefore,
            int? page,
            int? limit,
            String? sortBy,
            String? sortOrder)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantMemberFilters() when $default != null:
        return $default(
            _that.role,
            _that.status,
            _that.userId,
            _that.joinedAfter,
            _that.joinedBefore,
            _that.page,
            _that.limit,
            _that.sortBy,
            _that.sortOrder);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TenantMemberFilters extends TenantMemberFilters {
  const _TenantMemberFilters(
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
  factory _TenantMemberFilters.fromJson(Map<String, dynamic> json) =>
      _$TenantMemberFiltersFromJson(json);

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

  /// Create a copy of TenantMemberFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TenantMemberFiltersCopyWith<_TenantMemberFilters> get copyWith =>
      __$TenantMemberFiltersCopyWithImpl<_TenantMemberFilters>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TenantMemberFiltersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TenantMemberFilters &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, role, status, userId,
      joinedAfter, joinedBefore, page, limit, sortBy, sortOrder);

  @override
  String toString() {
    return 'TenantMemberFilters(role: $role, status: $status, userId: $userId, joinedAfter: $joinedAfter, joinedBefore: $joinedBefore, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class _$TenantMemberFiltersCopyWith<$Res>
    implements $TenantMemberFiltersCopyWith<$Res> {
  factory _$TenantMemberFiltersCopyWith(_TenantMemberFilters value,
          $Res Function(_TenantMemberFilters) _then) =
      __$TenantMemberFiltersCopyWithImpl;
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
class __$TenantMemberFiltersCopyWithImpl<$Res>
    implements _$TenantMemberFiltersCopyWith<$Res> {
  __$TenantMemberFiltersCopyWithImpl(this._self, this._then);

  final _TenantMemberFilters _self;
  final $Res Function(_TenantMemberFilters) _then;

  /// Create a copy of TenantMemberFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_TenantMemberFilters(
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      joinedAfter: freezed == joinedAfter
          ? _self.joinedAfter
          : joinedAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      joinedBefore: freezed == joinedBefore
          ? _self.joinedBefore
          : joinedBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _self.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$TenantInvitationFilters {
  String? get status;
  String? get role;
  String? get email;
  String? get invitedBy;
  DateTime? get createdAfter;
  DateTime? get createdBefore;
  DateTime? get expiresAfter;
  DateTime? get expiresBefore;
  int? get page;
  int? get limit;
  String? get sortBy;
  String? get sortOrder;

  /// Create a copy of TenantInvitationFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TenantInvitationFiltersCopyWith<TenantInvitationFilters> get copyWith =>
      _$TenantInvitationFiltersCopyWithImpl<TenantInvitationFilters>(
          this as TenantInvitationFilters, _$identity);

  /// Serializes this TenantInvitationFilters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TenantInvitationFilters &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'TenantInvitationFilters(status: $status, role: $role, email: $email, invitedBy: $invitedBy, createdAfter: $createdAfter, createdBefore: $createdBefore, expiresAfter: $expiresAfter, expiresBefore: $expiresBefore, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class $TenantInvitationFiltersCopyWith<$Res> {
  factory $TenantInvitationFiltersCopyWith(TenantInvitationFilters value,
          $Res Function(TenantInvitationFilters) _then) =
      _$TenantInvitationFiltersCopyWithImpl;
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
class _$TenantInvitationFiltersCopyWithImpl<$Res>
    implements $TenantInvitationFiltersCopyWith<$Res> {
  _$TenantInvitationFiltersCopyWithImpl(this._self, this._then);

  final TenantInvitationFilters _self;
  final $Res Function(TenantInvitationFilters) _then;

  /// Create a copy of TenantInvitationFilters
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      invitedBy: freezed == invitedBy
          ? _self.invitedBy
          : invitedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAfter: freezed == createdAfter
          ? _self.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _self.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresAfter: freezed == expiresAfter
          ? _self.expiresAfter
          : expiresAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresBefore: freezed == expiresBefore
          ? _self.expiresBefore
          : expiresBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _self.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [TenantInvitationFilters].
extension TenantInvitationFiltersPatterns on TenantInvitationFilters {
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
    TResult Function(_TenantInvitationFilters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TenantInvitationFilters() when $default != null:
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
    TResult Function(_TenantInvitationFilters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantInvitationFilters():
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
    TResult? Function(_TenantInvitationFilters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantInvitationFilters() when $default != null:
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
            String? status,
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
            String? sortOrder)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TenantInvitationFilters() when $default != null:
        return $default(
            _that.status,
            _that.role,
            _that.email,
            _that.invitedBy,
            _that.createdAfter,
            _that.createdBefore,
            _that.expiresAfter,
            _that.expiresBefore,
            _that.page,
            _that.limit,
            _that.sortBy,
            _that.sortOrder);
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
            String? status,
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
            String? sortOrder)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantInvitationFilters():
        return $default(
            _that.status,
            _that.role,
            _that.email,
            _that.invitedBy,
            _that.createdAfter,
            _that.createdBefore,
            _that.expiresAfter,
            _that.expiresBefore,
            _that.page,
            _that.limit,
            _that.sortBy,
            _that.sortOrder);
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
            String? status,
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
            String? sortOrder)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TenantInvitationFilters() when $default != null:
        return $default(
            _that.status,
            _that.role,
            _that.email,
            _that.invitedBy,
            _that.createdAfter,
            _that.createdBefore,
            _that.expiresAfter,
            _that.expiresBefore,
            _that.page,
            _that.limit,
            _that.sortBy,
            _that.sortOrder);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TenantInvitationFilters extends TenantInvitationFilters {
  const _TenantInvitationFilters(
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
  factory _TenantInvitationFilters.fromJson(Map<String, dynamic> json) =>
      _$TenantInvitationFiltersFromJson(json);

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

  /// Create a copy of TenantInvitationFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TenantInvitationFiltersCopyWith<_TenantInvitationFilters> get copyWith =>
      __$TenantInvitationFiltersCopyWithImpl<_TenantInvitationFilters>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TenantInvitationFiltersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TenantInvitationFilters &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'TenantInvitationFilters(status: $status, role: $role, email: $email, invitedBy: $invitedBy, createdAfter: $createdAfter, createdBefore: $createdBefore, expiresAfter: $expiresAfter, expiresBefore: $expiresBefore, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class _$TenantInvitationFiltersCopyWith<$Res>
    implements $TenantInvitationFiltersCopyWith<$Res> {
  factory _$TenantInvitationFiltersCopyWith(_TenantInvitationFilters value,
          $Res Function(_TenantInvitationFilters) _then) =
      __$TenantInvitationFiltersCopyWithImpl;
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
class __$TenantInvitationFiltersCopyWithImpl<$Res>
    implements _$TenantInvitationFiltersCopyWith<$Res> {
  __$TenantInvitationFiltersCopyWithImpl(this._self, this._then);

  final _TenantInvitationFilters _self;
  final $Res Function(_TenantInvitationFilters) _then;

  /// Create a copy of TenantInvitationFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_TenantInvitationFilters(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      invitedBy: freezed == invitedBy
          ? _self.invitedBy
          : invitedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAfter: freezed == createdAfter
          ? _self.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _self.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresAfter: freezed == expiresAfter
          ? _self.expiresAfter
          : expiresAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresBefore: freezed == expiresBefore
          ? _self.expiresBefore
          : expiresBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _self.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
