// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enhanced_party_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatePersonRequest {
  String get firstName;
  String get lastName;
  String? get middleName;
  String? get salutation;
  String? get suffix;
  String? get nickname;
  DateTime? get birthDate;
  String? get gender;
  String? get maritalStatus;
  String? get occupation;
  String? get notes;
  List<String>? get roles;
  Map<String, dynamic>? get attributes;

  /// Create a copy of CreatePersonRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreatePersonRequestCopyWith<CreatePersonRequest> get copyWith =>
      _$CreatePersonRequestCopyWithImpl<CreatePersonRequest>(
          this as CreatePersonRequest, _$identity);

  /// Serializes this CreatePersonRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreatePersonRequest &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.salutation, salutation) ||
                other.salutation == salutation) &&
            (identical(other.suffix, suffix) || other.suffix == suffix) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.maritalStatus, maritalStatus) ||
                other.maritalStatus == maritalStatus) &&
            (identical(other.occupation, occupation) ||
                other.occupation == occupation) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other.roles, roles) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstName,
      lastName,
      middleName,
      salutation,
      suffix,
      nickname,
      birthDate,
      gender,
      maritalStatus,
      occupation,
      notes,
      const DeepCollectionEquality().hash(roles),
      const DeepCollectionEquality().hash(attributes));

  @override
  String toString() {
    return 'CreatePersonRequest(firstName: $firstName, lastName: $lastName, middleName: $middleName, salutation: $salutation, suffix: $suffix, nickname: $nickname, birthDate: $birthDate, gender: $gender, maritalStatus: $maritalStatus, occupation: $occupation, notes: $notes, roles: $roles, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class $CreatePersonRequestCopyWith<$Res> {
  factory $CreatePersonRequestCopyWith(
          CreatePersonRequest value, $Res Function(CreatePersonRequest) _then) =
      _$CreatePersonRequestCopyWithImpl;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String? middleName,
      String? salutation,
      String? suffix,
      String? nickname,
      DateTime? birthDate,
      String? gender,
      String? maritalStatus,
      String? occupation,
      String? notes,
      List<String>? roles,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class _$CreatePersonRequestCopyWithImpl<$Res>
    implements $CreatePersonRequestCopyWith<$Res> {
  _$CreatePersonRequestCopyWithImpl(this._self, this._then);

  final CreatePersonRequest _self;
  final $Res Function(CreatePersonRequest) _then;

  /// Create a copy of CreatePersonRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? middleName = freezed,
    Object? salutation = freezed,
    Object? suffix = freezed,
    Object? nickname = freezed,
    Object? birthDate = freezed,
    Object? gender = freezed,
    Object? maritalStatus = freezed,
    Object? occupation = freezed,
    Object? notes = freezed,
    Object? roles = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_self.copyWith(
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: freezed == middleName
          ? _self.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      salutation: freezed == salutation
          ? _self.salutation
          : salutation // ignore: cast_nullable_to_non_nullable
              as String?,
      suffix: freezed == suffix
          ? _self.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: freezed == nickname
          ? _self.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: freezed == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      maritalStatus: freezed == maritalStatus
          ? _self.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      occupation: freezed == occupation
          ? _self.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _self.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      attributes: freezed == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreatePersonRequest].
extension CreatePersonRequestPatterns on CreatePersonRequest {
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
    TResult Function(_CreatePersonRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePersonRequest() when $default != null:
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
    TResult Function(_CreatePersonRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePersonRequest():
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
    TResult? Function(_CreatePersonRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePersonRequest() when $default != null:
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
            String firstName,
            String lastName,
            String? middleName,
            String? salutation,
            String? suffix,
            String? nickname,
            DateTime? birthDate,
            String? gender,
            String? maritalStatus,
            String? occupation,
            String? notes,
            List<String>? roles,
            Map<String, dynamic>? attributes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePersonRequest() when $default != null:
        return $default(
            _that.firstName,
            _that.lastName,
            _that.middleName,
            _that.salutation,
            _that.suffix,
            _that.nickname,
            _that.birthDate,
            _that.gender,
            _that.maritalStatus,
            _that.occupation,
            _that.notes,
            _that.roles,
            _that.attributes);
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
            String firstName,
            String lastName,
            String? middleName,
            String? salutation,
            String? suffix,
            String? nickname,
            DateTime? birthDate,
            String? gender,
            String? maritalStatus,
            String? occupation,
            String? notes,
            List<String>? roles,
            Map<String, dynamic>? attributes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePersonRequest():
        return $default(
            _that.firstName,
            _that.lastName,
            _that.middleName,
            _that.salutation,
            _that.suffix,
            _that.nickname,
            _that.birthDate,
            _that.gender,
            _that.maritalStatus,
            _that.occupation,
            _that.notes,
            _that.roles,
            _that.attributes);
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
            String firstName,
            String lastName,
            String? middleName,
            String? salutation,
            String? suffix,
            String? nickname,
            DateTime? birthDate,
            String? gender,
            String? maritalStatus,
            String? occupation,
            String? notes,
            List<String>? roles,
            Map<String, dynamic>? attributes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePersonRequest() when $default != null:
        return $default(
            _that.firstName,
            _that.lastName,
            _that.middleName,
            _that.salutation,
            _that.suffix,
            _that.nickname,
            _that.birthDate,
            _that.gender,
            _that.maritalStatus,
            _that.occupation,
            _that.notes,
            _that.roles,
            _that.attributes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreatePersonRequest implements CreatePersonRequest {
  const _CreatePersonRequest(
      {required this.firstName,
      required this.lastName,
      this.middleName,
      this.salutation,
      this.suffix,
      this.nickname,
      this.birthDate,
      this.gender,
      this.maritalStatus,
      this.occupation,
      this.notes,
      final List<String>? roles,
      final Map<String, dynamic>? attributes})
      : _roles = roles,
        _attributes = attributes;
  factory _CreatePersonRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePersonRequestFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String? middleName;
  @override
  final String? salutation;
  @override
  final String? suffix;
  @override
  final String? nickname;
  @override
  final DateTime? birthDate;
  @override
  final String? gender;
  @override
  final String? maritalStatus;
  @override
  final String? occupation;
  @override
  final String? notes;
  final List<String>? _roles;
  @override
  List<String>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of CreatePersonRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreatePersonRequestCopyWith<_CreatePersonRequest> get copyWith =>
      __$CreatePersonRequestCopyWithImpl<_CreatePersonRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreatePersonRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreatePersonRequest &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.salutation, salutation) ||
                other.salutation == salutation) &&
            (identical(other.suffix, suffix) || other.suffix == suffix) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.maritalStatus, maritalStatus) ||
                other.maritalStatus == maritalStatus) &&
            (identical(other.occupation, occupation) ||
                other.occupation == occupation) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstName,
      lastName,
      middleName,
      salutation,
      suffix,
      nickname,
      birthDate,
      gender,
      maritalStatus,
      occupation,
      notes,
      const DeepCollectionEquality().hash(_roles),
      const DeepCollectionEquality().hash(_attributes));

  @override
  String toString() {
    return 'CreatePersonRequest(firstName: $firstName, lastName: $lastName, middleName: $middleName, salutation: $salutation, suffix: $suffix, nickname: $nickname, birthDate: $birthDate, gender: $gender, maritalStatus: $maritalStatus, occupation: $occupation, notes: $notes, roles: $roles, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class _$CreatePersonRequestCopyWith<$Res>
    implements $CreatePersonRequestCopyWith<$Res> {
  factory _$CreatePersonRequestCopyWith(_CreatePersonRequest value,
          $Res Function(_CreatePersonRequest) _then) =
      __$CreatePersonRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String? middleName,
      String? salutation,
      String? suffix,
      String? nickname,
      DateTime? birthDate,
      String? gender,
      String? maritalStatus,
      String? occupation,
      String? notes,
      List<String>? roles,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class __$CreatePersonRequestCopyWithImpl<$Res>
    implements _$CreatePersonRequestCopyWith<$Res> {
  __$CreatePersonRequestCopyWithImpl(this._self, this._then);

  final _CreatePersonRequest _self;
  final $Res Function(_CreatePersonRequest) _then;

  /// Create a copy of CreatePersonRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? middleName = freezed,
    Object? salutation = freezed,
    Object? suffix = freezed,
    Object? nickname = freezed,
    Object? birthDate = freezed,
    Object? gender = freezed,
    Object? maritalStatus = freezed,
    Object? occupation = freezed,
    Object? notes = freezed,
    Object? roles = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_CreatePersonRequest(
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: freezed == middleName
          ? _self.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      salutation: freezed == salutation
          ? _self.salutation
          : salutation // ignore: cast_nullable_to_non_nullable
              as String?,
      suffix: freezed == suffix
          ? _self.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: freezed == nickname
          ? _self.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: freezed == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      maritalStatus: freezed == maritalStatus
          ? _self.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      occupation: freezed == occupation
          ? _self.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _self._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      attributes: freezed == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$CreateOrganizationRequest {
  String get name;
  String? get legalName;
  String? get shortName;
  String? get description;
  String? get taxId;
  String? get registrationNumber;
  String? get industry;
  String? get website;
  DateTime? get establishedDate;
  String? get notes;
  List<String>? get roles;
  Map<String, dynamic>? get attributes;

  /// Create a copy of CreateOrganizationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateOrganizationRequestCopyWith<CreateOrganizationRequest> get copyWith =>
      _$CreateOrganizationRequestCopyWithImpl<CreateOrganizationRequest>(
          this as CreateOrganizationRequest, _$identity);

  /// Serializes this CreateOrganizationRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateOrganizationRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.legalName, legalName) ||
                other.legalName == legalName) &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.taxId, taxId) || other.taxId == taxId) &&
            (identical(other.registrationNumber, registrationNumber) ||
                other.registrationNumber == registrationNumber) &&
            (identical(other.industry, industry) ||
                other.industry == industry) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.establishedDate, establishedDate) ||
                other.establishedDate == establishedDate) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other.roles, roles) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      legalName,
      shortName,
      description,
      taxId,
      registrationNumber,
      industry,
      website,
      establishedDate,
      notes,
      const DeepCollectionEquality().hash(roles),
      const DeepCollectionEquality().hash(attributes));

  @override
  String toString() {
    return 'CreateOrganizationRequest(name: $name, legalName: $legalName, shortName: $shortName, description: $description, taxId: $taxId, registrationNumber: $registrationNumber, industry: $industry, website: $website, establishedDate: $establishedDate, notes: $notes, roles: $roles, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class $CreateOrganizationRequestCopyWith<$Res> {
  factory $CreateOrganizationRequestCopyWith(CreateOrganizationRequest value,
          $Res Function(CreateOrganizationRequest) _then) =
      _$CreateOrganizationRequestCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String? legalName,
      String? shortName,
      String? description,
      String? taxId,
      String? registrationNumber,
      String? industry,
      String? website,
      DateTime? establishedDate,
      String? notes,
      List<String>? roles,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class _$CreateOrganizationRequestCopyWithImpl<$Res>
    implements $CreateOrganizationRequestCopyWith<$Res> {
  _$CreateOrganizationRequestCopyWithImpl(this._self, this._then);

  final CreateOrganizationRequest _self;
  final $Res Function(CreateOrganizationRequest) _then;

  /// Create a copy of CreateOrganizationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? legalName = freezed,
    Object? shortName = freezed,
    Object? description = freezed,
    Object? taxId = freezed,
    Object? registrationNumber = freezed,
    Object? industry = freezed,
    Object? website = freezed,
    Object? establishedDate = freezed,
    Object? notes = freezed,
    Object? roles = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      legalName: freezed == legalName
          ? _self.legalName
          : legalName // ignore: cast_nullable_to_non_nullable
              as String?,
      shortName: freezed == shortName
          ? _self.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      taxId: freezed == taxId
          ? _self.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationNumber: freezed == registrationNumber
          ? _self.registrationNumber
          : registrationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      industry: freezed == industry
          ? _self.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _self.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      establishedDate: freezed == establishedDate
          ? _self.establishedDate
          : establishedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _self.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      attributes: freezed == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateOrganizationRequest].
extension CreateOrganizationRequestPatterns on CreateOrganizationRequest {
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
    TResult Function(_CreateOrganizationRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateOrganizationRequest() when $default != null:
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
    TResult Function(_CreateOrganizationRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrganizationRequest():
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
    TResult? Function(_CreateOrganizationRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrganizationRequest() when $default != null:
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
            String? legalName,
            String? shortName,
            String? description,
            String? taxId,
            String? registrationNumber,
            String? industry,
            String? website,
            DateTime? establishedDate,
            String? notes,
            List<String>? roles,
            Map<String, dynamic>? attributes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateOrganizationRequest() when $default != null:
        return $default(
            _that.name,
            _that.legalName,
            _that.shortName,
            _that.description,
            _that.taxId,
            _that.registrationNumber,
            _that.industry,
            _that.website,
            _that.establishedDate,
            _that.notes,
            _that.roles,
            _that.attributes);
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
            String? legalName,
            String? shortName,
            String? description,
            String? taxId,
            String? registrationNumber,
            String? industry,
            String? website,
            DateTime? establishedDate,
            String? notes,
            List<String>? roles,
            Map<String, dynamic>? attributes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrganizationRequest():
        return $default(
            _that.name,
            _that.legalName,
            _that.shortName,
            _that.description,
            _that.taxId,
            _that.registrationNumber,
            _that.industry,
            _that.website,
            _that.establishedDate,
            _that.notes,
            _that.roles,
            _that.attributes);
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
            String? legalName,
            String? shortName,
            String? description,
            String? taxId,
            String? registrationNumber,
            String? industry,
            String? website,
            DateTime? establishedDate,
            String? notes,
            List<String>? roles,
            Map<String, dynamic>? attributes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrganizationRequest() when $default != null:
        return $default(
            _that.name,
            _that.legalName,
            _that.shortName,
            _that.description,
            _that.taxId,
            _that.registrationNumber,
            _that.industry,
            _that.website,
            _that.establishedDate,
            _that.notes,
            _that.roles,
            _that.attributes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateOrganizationRequest implements CreateOrganizationRequest {
  const _CreateOrganizationRequest(
      {required this.name,
      this.legalName,
      this.shortName,
      this.description,
      this.taxId,
      this.registrationNumber,
      this.industry,
      this.website,
      this.establishedDate,
      this.notes,
      final List<String>? roles,
      final Map<String, dynamic>? attributes})
      : _roles = roles,
        _attributes = attributes;
  factory _CreateOrganizationRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateOrganizationRequestFromJson(json);

  @override
  final String name;
  @override
  final String? legalName;
  @override
  final String? shortName;
  @override
  final String? description;
  @override
  final String? taxId;
  @override
  final String? registrationNumber;
  @override
  final String? industry;
  @override
  final String? website;
  @override
  final DateTime? establishedDate;
  @override
  final String? notes;
  final List<String>? _roles;
  @override
  List<String>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of CreateOrganizationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateOrganizationRequestCopyWith<_CreateOrganizationRequest>
      get copyWith =>
          __$CreateOrganizationRequestCopyWithImpl<_CreateOrganizationRequest>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateOrganizationRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateOrganizationRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.legalName, legalName) ||
                other.legalName == legalName) &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.taxId, taxId) || other.taxId == taxId) &&
            (identical(other.registrationNumber, registrationNumber) ||
                other.registrationNumber == registrationNumber) &&
            (identical(other.industry, industry) ||
                other.industry == industry) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.establishedDate, establishedDate) ||
                other.establishedDate == establishedDate) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      legalName,
      shortName,
      description,
      taxId,
      registrationNumber,
      industry,
      website,
      establishedDate,
      notes,
      const DeepCollectionEquality().hash(_roles),
      const DeepCollectionEquality().hash(_attributes));

  @override
  String toString() {
    return 'CreateOrganizationRequest(name: $name, legalName: $legalName, shortName: $shortName, description: $description, taxId: $taxId, registrationNumber: $registrationNumber, industry: $industry, website: $website, establishedDate: $establishedDate, notes: $notes, roles: $roles, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class _$CreateOrganizationRequestCopyWith<$Res>
    implements $CreateOrganizationRequestCopyWith<$Res> {
  factory _$CreateOrganizationRequestCopyWith(_CreateOrganizationRequest value,
          $Res Function(_CreateOrganizationRequest) _then) =
      __$CreateOrganizationRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String? legalName,
      String? shortName,
      String? description,
      String? taxId,
      String? registrationNumber,
      String? industry,
      String? website,
      DateTime? establishedDate,
      String? notes,
      List<String>? roles,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class __$CreateOrganizationRequestCopyWithImpl<$Res>
    implements _$CreateOrganizationRequestCopyWith<$Res> {
  __$CreateOrganizationRequestCopyWithImpl(this._self, this._then);

  final _CreateOrganizationRequest _self;
  final $Res Function(_CreateOrganizationRequest) _then;

  /// Create a copy of CreateOrganizationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? legalName = freezed,
    Object? shortName = freezed,
    Object? description = freezed,
    Object? taxId = freezed,
    Object? registrationNumber = freezed,
    Object? industry = freezed,
    Object? website = freezed,
    Object? establishedDate = freezed,
    Object? notes = freezed,
    Object? roles = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_CreateOrganizationRequest(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      legalName: freezed == legalName
          ? _self.legalName
          : legalName // ignore: cast_nullable_to_non_nullable
              as String?,
      shortName: freezed == shortName
          ? _self.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      taxId: freezed == taxId
          ? _self.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationNumber: freezed == registrationNumber
          ? _self.registrationNumber
          : registrationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      industry: freezed == industry
          ? _self.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _self.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      establishedDate: freezed == establishedDate
          ? _self.establishedDate
          : establishedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _self._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      attributes: freezed == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$CreatePersonWithRolesRequest {
  String get firstName;
  String get lastName;
  List<String> get roles;
  String? get middleName;
  String? get salutation;
  String? get notes;
  Map<String, dynamic>? get attributes;

  /// Create a copy of CreatePersonWithRolesRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreatePersonWithRolesRequestCopyWith<CreatePersonWithRolesRequest>
      get copyWith => _$CreatePersonWithRolesRequestCopyWithImpl<
              CreatePersonWithRolesRequest>(
          this as CreatePersonWithRolesRequest, _$identity);

  /// Serializes this CreatePersonWithRolesRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreatePersonWithRolesRequest &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            const DeepCollectionEquality().equals(other.roles, roles) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.salutation, salutation) ||
                other.salutation == salutation) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstName,
      lastName,
      const DeepCollectionEquality().hash(roles),
      middleName,
      salutation,
      notes,
      const DeepCollectionEquality().hash(attributes));

  @override
  String toString() {
    return 'CreatePersonWithRolesRequest(firstName: $firstName, lastName: $lastName, roles: $roles, middleName: $middleName, salutation: $salutation, notes: $notes, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class $CreatePersonWithRolesRequestCopyWith<$Res> {
  factory $CreatePersonWithRolesRequestCopyWith(
          CreatePersonWithRolesRequest value,
          $Res Function(CreatePersonWithRolesRequest) _then) =
      _$CreatePersonWithRolesRequestCopyWithImpl;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      List<String> roles,
      String? middleName,
      String? salutation,
      String? notes,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class _$CreatePersonWithRolesRequestCopyWithImpl<$Res>
    implements $CreatePersonWithRolesRequestCopyWith<$Res> {
  _$CreatePersonWithRolesRequestCopyWithImpl(this._self, this._then);

  final CreatePersonWithRolesRequest _self;
  final $Res Function(CreatePersonWithRolesRequest) _then;

  /// Create a copy of CreatePersonWithRolesRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? roles = null,
    Object? middleName = freezed,
    Object? salutation = freezed,
    Object? notes = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_self.copyWith(
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _self.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      middleName: freezed == middleName
          ? _self.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      salutation: freezed == salutation
          ? _self.salutation
          : salutation // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreatePersonWithRolesRequest].
extension CreatePersonWithRolesRequestPatterns on CreatePersonWithRolesRequest {
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
    TResult Function(_CreatePersonWithRolesRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePersonWithRolesRequest() when $default != null:
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
    TResult Function(_CreatePersonWithRolesRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePersonWithRolesRequest():
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
    TResult? Function(_CreatePersonWithRolesRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePersonWithRolesRequest() when $default != null:
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
            String firstName,
            String lastName,
            List<String> roles,
            String? middleName,
            String? salutation,
            String? notes,
            Map<String, dynamic>? attributes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePersonWithRolesRequest() when $default != null:
        return $default(_that.firstName, _that.lastName, _that.roles,
            _that.middleName, _that.salutation, _that.notes, _that.attributes);
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
            String firstName,
            String lastName,
            List<String> roles,
            String? middleName,
            String? salutation,
            String? notes,
            Map<String, dynamic>? attributes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePersonWithRolesRequest():
        return $default(_that.firstName, _that.lastName, _that.roles,
            _that.middleName, _that.salutation, _that.notes, _that.attributes);
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
            String firstName,
            String lastName,
            List<String> roles,
            String? middleName,
            String? salutation,
            String? notes,
            Map<String, dynamic>? attributes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePersonWithRolesRequest() when $default != null:
        return $default(_that.firstName, _that.lastName, _that.roles,
            _that.middleName, _that.salutation, _that.notes, _that.attributes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreatePersonWithRolesRequest implements CreatePersonWithRolesRequest {
  const _CreatePersonWithRolesRequest(
      {required this.firstName,
      required this.lastName,
      required final List<String> roles,
      this.middleName,
      this.salutation,
      this.notes,
      final Map<String, dynamic>? attributes})
      : _roles = roles,
        _attributes = attributes;
  factory _CreatePersonWithRolesRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePersonWithRolesRequestFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  final List<String> _roles;
  @override
  List<String> get roles {
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  @override
  final String? middleName;
  @override
  final String? salutation;
  @override
  final String? notes;
  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of CreatePersonWithRolesRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreatePersonWithRolesRequestCopyWith<_CreatePersonWithRolesRequest>
      get copyWith => __$CreatePersonWithRolesRequestCopyWithImpl<
          _CreatePersonWithRolesRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreatePersonWithRolesRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreatePersonWithRolesRequest &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.salutation, salutation) ||
                other.salutation == salutation) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstName,
      lastName,
      const DeepCollectionEquality().hash(_roles),
      middleName,
      salutation,
      notes,
      const DeepCollectionEquality().hash(_attributes));

  @override
  String toString() {
    return 'CreatePersonWithRolesRequest(firstName: $firstName, lastName: $lastName, roles: $roles, middleName: $middleName, salutation: $salutation, notes: $notes, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class _$CreatePersonWithRolesRequestCopyWith<$Res>
    implements $CreatePersonWithRolesRequestCopyWith<$Res> {
  factory _$CreatePersonWithRolesRequestCopyWith(
          _CreatePersonWithRolesRequest value,
          $Res Function(_CreatePersonWithRolesRequest) _then) =
      __$CreatePersonWithRolesRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      List<String> roles,
      String? middleName,
      String? salutation,
      String? notes,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class __$CreatePersonWithRolesRequestCopyWithImpl<$Res>
    implements _$CreatePersonWithRolesRequestCopyWith<$Res> {
  __$CreatePersonWithRolesRequestCopyWithImpl(this._self, this._then);

  final _CreatePersonWithRolesRequest _self;
  final $Res Function(_CreatePersonWithRolesRequest) _then;

  /// Create a copy of CreatePersonWithRolesRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? roles = null,
    Object? middleName = freezed,
    Object? salutation = freezed,
    Object? notes = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_CreatePersonWithRolesRequest(
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _self._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      middleName: freezed == middleName
          ? _self.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      salutation: freezed == salutation
          ? _self.salutation
          : salutation // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$CreatePersonCustomerRequest {
  String get firstName;
  String get lastName;
  String? get middleName;
  String? get email;
  String? get phone;
  String? get notes;
  Map<String, dynamic>? get attributes;

  /// Create a copy of CreatePersonCustomerRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreatePersonCustomerRequestCopyWith<CreatePersonCustomerRequest>
      get copyWith => _$CreatePersonCustomerRequestCopyWithImpl<
              CreatePersonCustomerRequest>(
          this as CreatePersonCustomerRequest, _$identity);

  /// Serializes this CreatePersonCustomerRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreatePersonCustomerRequest &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, middleName,
      email, phone, notes, const DeepCollectionEquality().hash(attributes));

  @override
  String toString() {
    return 'CreatePersonCustomerRequest(firstName: $firstName, lastName: $lastName, middleName: $middleName, email: $email, phone: $phone, notes: $notes, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class $CreatePersonCustomerRequestCopyWith<$Res> {
  factory $CreatePersonCustomerRequestCopyWith(
          CreatePersonCustomerRequest value,
          $Res Function(CreatePersonCustomerRequest) _then) =
      _$CreatePersonCustomerRequestCopyWithImpl;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String? middleName,
      String? email,
      String? phone,
      String? notes,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class _$CreatePersonCustomerRequestCopyWithImpl<$Res>
    implements $CreatePersonCustomerRequestCopyWith<$Res> {
  _$CreatePersonCustomerRequestCopyWithImpl(this._self, this._then);

  final CreatePersonCustomerRequest _self;
  final $Res Function(CreatePersonCustomerRequest) _then;

  /// Create a copy of CreatePersonCustomerRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? middleName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? notes = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_self.copyWith(
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: freezed == middleName
          ? _self.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreatePersonCustomerRequest].
extension CreatePersonCustomerRequestPatterns on CreatePersonCustomerRequest {
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
    TResult Function(_CreatePersonCustomerRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePersonCustomerRequest() when $default != null:
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
    TResult Function(_CreatePersonCustomerRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePersonCustomerRequest():
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
    TResult? Function(_CreatePersonCustomerRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePersonCustomerRequest() when $default != null:
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
            String firstName,
            String lastName,
            String? middleName,
            String? email,
            String? phone,
            String? notes,
            Map<String, dynamic>? attributes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePersonCustomerRequest() when $default != null:
        return $default(_that.firstName, _that.lastName, _that.middleName,
            _that.email, _that.phone, _that.notes, _that.attributes);
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
            String firstName,
            String lastName,
            String? middleName,
            String? email,
            String? phone,
            String? notes,
            Map<String, dynamic>? attributes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePersonCustomerRequest():
        return $default(_that.firstName, _that.lastName, _that.middleName,
            _that.email, _that.phone, _that.notes, _that.attributes);
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
            String firstName,
            String lastName,
            String? middleName,
            String? email,
            String? phone,
            String? notes,
            Map<String, dynamic>? attributes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePersonCustomerRequest() when $default != null:
        return $default(_that.firstName, _that.lastName, _that.middleName,
            _that.email, _that.phone, _that.notes, _that.attributes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreatePersonCustomerRequest implements CreatePersonCustomerRequest {
  const _CreatePersonCustomerRequest(
      {required this.firstName,
      required this.lastName,
      this.middleName,
      this.email,
      this.phone,
      this.notes,
      final Map<String, dynamic>? attributes})
      : _attributes = attributes;
  factory _CreatePersonCustomerRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePersonCustomerRequestFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String? middleName;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? notes;
  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of CreatePersonCustomerRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreatePersonCustomerRequestCopyWith<_CreatePersonCustomerRequest>
      get copyWith => __$CreatePersonCustomerRequestCopyWithImpl<
          _CreatePersonCustomerRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreatePersonCustomerRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreatePersonCustomerRequest &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, middleName,
      email, phone, notes, const DeepCollectionEquality().hash(_attributes));

  @override
  String toString() {
    return 'CreatePersonCustomerRequest(firstName: $firstName, lastName: $lastName, middleName: $middleName, email: $email, phone: $phone, notes: $notes, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class _$CreatePersonCustomerRequestCopyWith<$Res>
    implements $CreatePersonCustomerRequestCopyWith<$Res> {
  factory _$CreatePersonCustomerRequestCopyWith(
          _CreatePersonCustomerRequest value,
          $Res Function(_CreatePersonCustomerRequest) _then) =
      __$CreatePersonCustomerRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String? middleName,
      String? email,
      String? phone,
      String? notes,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class __$CreatePersonCustomerRequestCopyWithImpl<$Res>
    implements _$CreatePersonCustomerRequestCopyWith<$Res> {
  __$CreatePersonCustomerRequestCopyWithImpl(this._self, this._then);

  final _CreatePersonCustomerRequest _self;
  final $Res Function(_CreatePersonCustomerRequest) _then;

  /// Create a copy of CreatePersonCustomerRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? middleName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? notes = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_CreatePersonCustomerRequest(
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: freezed == middleName
          ? _self.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$CreatePersonSupplierRequest {
  String get firstName;
  String get lastName;
  String? get middleName;
  String? get email;
  String? get phone;
  String? get businessName;
  String? get taxId;
  String? get notes;
  Map<String, dynamic>? get attributes;

  /// Create a copy of CreatePersonSupplierRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreatePersonSupplierRequestCopyWith<CreatePersonSupplierRequest>
      get copyWith => _$CreatePersonSupplierRequestCopyWithImpl<
              CreatePersonSupplierRequest>(
          this as CreatePersonSupplierRequest, _$identity);

  /// Serializes this CreatePersonSupplierRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreatePersonSupplierRequest &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName) &&
            (identical(other.taxId, taxId) || other.taxId == taxId) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstName,
      lastName,
      middleName,
      email,
      phone,
      businessName,
      taxId,
      notes,
      const DeepCollectionEquality().hash(attributes));

  @override
  String toString() {
    return 'CreatePersonSupplierRequest(firstName: $firstName, lastName: $lastName, middleName: $middleName, email: $email, phone: $phone, businessName: $businessName, taxId: $taxId, notes: $notes, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class $CreatePersonSupplierRequestCopyWith<$Res> {
  factory $CreatePersonSupplierRequestCopyWith(
          CreatePersonSupplierRequest value,
          $Res Function(CreatePersonSupplierRequest) _then) =
      _$CreatePersonSupplierRequestCopyWithImpl;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String? middleName,
      String? email,
      String? phone,
      String? businessName,
      String? taxId,
      String? notes,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class _$CreatePersonSupplierRequestCopyWithImpl<$Res>
    implements $CreatePersonSupplierRequestCopyWith<$Res> {
  _$CreatePersonSupplierRequestCopyWithImpl(this._self, this._then);

  final CreatePersonSupplierRequest _self;
  final $Res Function(CreatePersonSupplierRequest) _then;

  /// Create a copy of CreatePersonSupplierRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? middleName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? businessName = freezed,
    Object? taxId = freezed,
    Object? notes = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_self.copyWith(
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: freezed == middleName
          ? _self.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      businessName: freezed == businessName
          ? _self.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      taxId: freezed == taxId
          ? _self.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreatePersonSupplierRequest].
extension CreatePersonSupplierRequestPatterns on CreatePersonSupplierRequest {
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
    TResult Function(_CreatePersonSupplierRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePersonSupplierRequest() when $default != null:
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
    TResult Function(_CreatePersonSupplierRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePersonSupplierRequest():
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
    TResult? Function(_CreatePersonSupplierRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePersonSupplierRequest() when $default != null:
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
            String firstName,
            String lastName,
            String? middleName,
            String? email,
            String? phone,
            String? businessName,
            String? taxId,
            String? notes,
            Map<String, dynamic>? attributes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePersonSupplierRequest() when $default != null:
        return $default(
            _that.firstName,
            _that.lastName,
            _that.middleName,
            _that.email,
            _that.phone,
            _that.businessName,
            _that.taxId,
            _that.notes,
            _that.attributes);
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
            String firstName,
            String lastName,
            String? middleName,
            String? email,
            String? phone,
            String? businessName,
            String? taxId,
            String? notes,
            Map<String, dynamic>? attributes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePersonSupplierRequest():
        return $default(
            _that.firstName,
            _that.lastName,
            _that.middleName,
            _that.email,
            _that.phone,
            _that.businessName,
            _that.taxId,
            _that.notes,
            _that.attributes);
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
            String firstName,
            String lastName,
            String? middleName,
            String? email,
            String? phone,
            String? businessName,
            String? taxId,
            String? notes,
            Map<String, dynamic>? attributes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePersonSupplierRequest() when $default != null:
        return $default(
            _that.firstName,
            _that.lastName,
            _that.middleName,
            _that.email,
            _that.phone,
            _that.businessName,
            _that.taxId,
            _that.notes,
            _that.attributes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreatePersonSupplierRequest implements CreatePersonSupplierRequest {
  const _CreatePersonSupplierRequest(
      {required this.firstName,
      required this.lastName,
      this.middleName,
      this.email,
      this.phone,
      this.businessName,
      this.taxId,
      this.notes,
      final Map<String, dynamic>? attributes})
      : _attributes = attributes;
  factory _CreatePersonSupplierRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePersonSupplierRequestFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String? middleName;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? businessName;
  @override
  final String? taxId;
  @override
  final String? notes;
  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of CreatePersonSupplierRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreatePersonSupplierRequestCopyWith<_CreatePersonSupplierRequest>
      get copyWith => __$CreatePersonSupplierRequestCopyWithImpl<
          _CreatePersonSupplierRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreatePersonSupplierRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreatePersonSupplierRequest &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName) &&
            (identical(other.taxId, taxId) || other.taxId == taxId) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstName,
      lastName,
      middleName,
      email,
      phone,
      businessName,
      taxId,
      notes,
      const DeepCollectionEquality().hash(_attributes));

  @override
  String toString() {
    return 'CreatePersonSupplierRequest(firstName: $firstName, lastName: $lastName, middleName: $middleName, email: $email, phone: $phone, businessName: $businessName, taxId: $taxId, notes: $notes, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class _$CreatePersonSupplierRequestCopyWith<$Res>
    implements $CreatePersonSupplierRequestCopyWith<$Res> {
  factory _$CreatePersonSupplierRequestCopyWith(
          _CreatePersonSupplierRequest value,
          $Res Function(_CreatePersonSupplierRequest) _then) =
      __$CreatePersonSupplierRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String? middleName,
      String? email,
      String? phone,
      String? businessName,
      String? taxId,
      String? notes,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class __$CreatePersonSupplierRequestCopyWithImpl<$Res>
    implements _$CreatePersonSupplierRequestCopyWith<$Res> {
  __$CreatePersonSupplierRequestCopyWithImpl(this._self, this._then);

  final _CreatePersonSupplierRequest _self;
  final $Res Function(_CreatePersonSupplierRequest) _then;

  /// Create a copy of CreatePersonSupplierRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? middleName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? businessName = freezed,
    Object? taxId = freezed,
    Object? notes = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_CreatePersonSupplierRequest(
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: freezed == middleName
          ? _self.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      businessName: freezed == businessName
          ? _self.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      taxId: freezed == taxId
          ? _self.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$CreateOrganizationCustomerRequest {
  String get name;
  String? get legalName;
  String? get email;
  String? get phone;
  String? get website;
  String? get taxId;
  String? get registrationNumber;
  String? get industry;
  String? get notes;
  Map<String, dynamic>? get attributes;

  /// Create a copy of CreateOrganizationCustomerRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateOrganizationCustomerRequestCopyWith<CreateOrganizationCustomerRequest>
      get copyWith => _$CreateOrganizationCustomerRequestCopyWithImpl<
              CreateOrganizationCustomerRequest>(
          this as CreateOrganizationCustomerRequest, _$identity);

  /// Serializes this CreateOrganizationCustomerRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateOrganizationCustomerRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.legalName, legalName) ||
                other.legalName == legalName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.taxId, taxId) || other.taxId == taxId) &&
            (identical(other.registrationNumber, registrationNumber) ||
                other.registrationNumber == registrationNumber) &&
            (identical(other.industry, industry) ||
                other.industry == industry) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      legalName,
      email,
      phone,
      website,
      taxId,
      registrationNumber,
      industry,
      notes,
      const DeepCollectionEquality().hash(attributes));

  @override
  String toString() {
    return 'CreateOrganizationCustomerRequest(name: $name, legalName: $legalName, email: $email, phone: $phone, website: $website, taxId: $taxId, registrationNumber: $registrationNumber, industry: $industry, notes: $notes, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class $CreateOrganizationCustomerRequestCopyWith<$Res> {
  factory $CreateOrganizationCustomerRequestCopyWith(
          CreateOrganizationCustomerRequest value,
          $Res Function(CreateOrganizationCustomerRequest) _then) =
      _$CreateOrganizationCustomerRequestCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String? legalName,
      String? email,
      String? phone,
      String? website,
      String? taxId,
      String? registrationNumber,
      String? industry,
      String? notes,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class _$CreateOrganizationCustomerRequestCopyWithImpl<$Res>
    implements $CreateOrganizationCustomerRequestCopyWith<$Res> {
  _$CreateOrganizationCustomerRequestCopyWithImpl(this._self, this._then);

  final CreateOrganizationCustomerRequest _self;
  final $Res Function(CreateOrganizationCustomerRequest) _then;

  /// Create a copy of CreateOrganizationCustomerRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? legalName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? taxId = freezed,
    Object? registrationNumber = freezed,
    Object? industry = freezed,
    Object? notes = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      legalName: freezed == legalName
          ? _self.legalName
          : legalName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _self.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      taxId: freezed == taxId
          ? _self.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationNumber: freezed == registrationNumber
          ? _self.registrationNumber
          : registrationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      industry: freezed == industry
          ? _self.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateOrganizationCustomerRequest].
extension CreateOrganizationCustomerRequestPatterns
    on CreateOrganizationCustomerRequest {
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
    TResult Function(_CreateOrganizationCustomerRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateOrganizationCustomerRequest() when $default != null:
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
    TResult Function(_CreateOrganizationCustomerRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrganizationCustomerRequest():
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
    TResult? Function(_CreateOrganizationCustomerRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrganizationCustomerRequest() when $default != null:
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
            String? legalName,
            String? email,
            String? phone,
            String? website,
            String? taxId,
            String? registrationNumber,
            String? industry,
            String? notes,
            Map<String, dynamic>? attributes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateOrganizationCustomerRequest() when $default != null:
        return $default(
            _that.name,
            _that.legalName,
            _that.email,
            _that.phone,
            _that.website,
            _that.taxId,
            _that.registrationNumber,
            _that.industry,
            _that.notes,
            _that.attributes);
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
            String? legalName,
            String? email,
            String? phone,
            String? website,
            String? taxId,
            String? registrationNumber,
            String? industry,
            String? notes,
            Map<String, dynamic>? attributes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrganizationCustomerRequest():
        return $default(
            _that.name,
            _that.legalName,
            _that.email,
            _that.phone,
            _that.website,
            _that.taxId,
            _that.registrationNumber,
            _that.industry,
            _that.notes,
            _that.attributes);
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
            String? legalName,
            String? email,
            String? phone,
            String? website,
            String? taxId,
            String? registrationNumber,
            String? industry,
            String? notes,
            Map<String, dynamic>? attributes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrganizationCustomerRequest() when $default != null:
        return $default(
            _that.name,
            _that.legalName,
            _that.email,
            _that.phone,
            _that.website,
            _that.taxId,
            _that.registrationNumber,
            _that.industry,
            _that.notes,
            _that.attributes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateOrganizationCustomerRequest
    implements CreateOrganizationCustomerRequest {
  const _CreateOrganizationCustomerRequest(
      {required this.name,
      this.legalName,
      this.email,
      this.phone,
      this.website,
      this.taxId,
      this.registrationNumber,
      this.industry,
      this.notes,
      final Map<String, dynamic>? attributes})
      : _attributes = attributes;
  factory _CreateOrganizationCustomerRequest.fromJson(
          Map<String, dynamic> json) =>
      _$CreateOrganizationCustomerRequestFromJson(json);

  @override
  final String name;
  @override
  final String? legalName;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? website;
  @override
  final String? taxId;
  @override
  final String? registrationNumber;
  @override
  final String? industry;
  @override
  final String? notes;
  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of CreateOrganizationCustomerRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateOrganizationCustomerRequestCopyWith<
          _CreateOrganizationCustomerRequest>
      get copyWith => __$CreateOrganizationCustomerRequestCopyWithImpl<
          _CreateOrganizationCustomerRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateOrganizationCustomerRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateOrganizationCustomerRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.legalName, legalName) ||
                other.legalName == legalName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.taxId, taxId) || other.taxId == taxId) &&
            (identical(other.registrationNumber, registrationNumber) ||
                other.registrationNumber == registrationNumber) &&
            (identical(other.industry, industry) ||
                other.industry == industry) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      legalName,
      email,
      phone,
      website,
      taxId,
      registrationNumber,
      industry,
      notes,
      const DeepCollectionEquality().hash(_attributes));

  @override
  String toString() {
    return 'CreateOrganizationCustomerRequest(name: $name, legalName: $legalName, email: $email, phone: $phone, website: $website, taxId: $taxId, registrationNumber: $registrationNumber, industry: $industry, notes: $notes, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class _$CreateOrganizationCustomerRequestCopyWith<$Res>
    implements $CreateOrganizationCustomerRequestCopyWith<$Res> {
  factory _$CreateOrganizationCustomerRequestCopyWith(
          _CreateOrganizationCustomerRequest value,
          $Res Function(_CreateOrganizationCustomerRequest) _then) =
      __$CreateOrganizationCustomerRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String? legalName,
      String? email,
      String? phone,
      String? website,
      String? taxId,
      String? registrationNumber,
      String? industry,
      String? notes,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class __$CreateOrganizationCustomerRequestCopyWithImpl<$Res>
    implements _$CreateOrganizationCustomerRequestCopyWith<$Res> {
  __$CreateOrganizationCustomerRequestCopyWithImpl(this._self, this._then);

  final _CreateOrganizationCustomerRequest _self;
  final $Res Function(_CreateOrganizationCustomerRequest) _then;

  /// Create a copy of CreateOrganizationCustomerRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? legalName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? taxId = freezed,
    Object? registrationNumber = freezed,
    Object? industry = freezed,
    Object? notes = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_CreateOrganizationCustomerRequest(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      legalName: freezed == legalName
          ? _self.legalName
          : legalName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _self.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      taxId: freezed == taxId
          ? _self.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationNumber: freezed == registrationNumber
          ? _self.registrationNumber
          : registrationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      industry: freezed == industry
          ? _self.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$CreateOrganizationSupplierRequest {
  String get name;
  String? get legalName;
  String? get email;
  String? get phone;
  String? get website;
  String? get taxId;
  String? get registrationNumber;
  String? get industry;
  String? get paymentTerms;
  String? get notes;
  Map<String, dynamic>? get attributes;

  /// Create a copy of CreateOrganizationSupplierRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateOrganizationSupplierRequestCopyWith<CreateOrganizationSupplierRequest>
      get copyWith => _$CreateOrganizationSupplierRequestCopyWithImpl<
              CreateOrganizationSupplierRequest>(
          this as CreateOrganizationSupplierRequest, _$identity);

  /// Serializes this CreateOrganizationSupplierRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateOrganizationSupplierRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.legalName, legalName) ||
                other.legalName == legalName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.taxId, taxId) || other.taxId == taxId) &&
            (identical(other.registrationNumber, registrationNumber) ||
                other.registrationNumber == registrationNumber) &&
            (identical(other.industry, industry) ||
                other.industry == industry) &&
            (identical(other.paymentTerms, paymentTerms) ||
                other.paymentTerms == paymentTerms) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      legalName,
      email,
      phone,
      website,
      taxId,
      registrationNumber,
      industry,
      paymentTerms,
      notes,
      const DeepCollectionEquality().hash(attributes));

  @override
  String toString() {
    return 'CreateOrganizationSupplierRequest(name: $name, legalName: $legalName, email: $email, phone: $phone, website: $website, taxId: $taxId, registrationNumber: $registrationNumber, industry: $industry, paymentTerms: $paymentTerms, notes: $notes, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class $CreateOrganizationSupplierRequestCopyWith<$Res> {
  factory $CreateOrganizationSupplierRequestCopyWith(
          CreateOrganizationSupplierRequest value,
          $Res Function(CreateOrganizationSupplierRequest) _then) =
      _$CreateOrganizationSupplierRequestCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String? legalName,
      String? email,
      String? phone,
      String? website,
      String? taxId,
      String? registrationNumber,
      String? industry,
      String? paymentTerms,
      String? notes,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class _$CreateOrganizationSupplierRequestCopyWithImpl<$Res>
    implements $CreateOrganizationSupplierRequestCopyWith<$Res> {
  _$CreateOrganizationSupplierRequestCopyWithImpl(this._self, this._then);

  final CreateOrganizationSupplierRequest _self;
  final $Res Function(CreateOrganizationSupplierRequest) _then;

  /// Create a copy of CreateOrganizationSupplierRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? legalName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? taxId = freezed,
    Object? registrationNumber = freezed,
    Object? industry = freezed,
    Object? paymentTerms = freezed,
    Object? notes = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      legalName: freezed == legalName
          ? _self.legalName
          : legalName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _self.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      taxId: freezed == taxId
          ? _self.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationNumber: freezed == registrationNumber
          ? _self.registrationNumber
          : registrationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      industry: freezed == industry
          ? _self.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _self.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateOrganizationSupplierRequest].
extension CreateOrganizationSupplierRequestPatterns
    on CreateOrganizationSupplierRequest {
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
    TResult Function(_CreateOrganizationSupplierRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateOrganizationSupplierRequest() when $default != null:
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
    TResult Function(_CreateOrganizationSupplierRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrganizationSupplierRequest():
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
    TResult? Function(_CreateOrganizationSupplierRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrganizationSupplierRequest() when $default != null:
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
            String? legalName,
            String? email,
            String? phone,
            String? website,
            String? taxId,
            String? registrationNumber,
            String? industry,
            String? paymentTerms,
            String? notes,
            Map<String, dynamic>? attributes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateOrganizationSupplierRequest() when $default != null:
        return $default(
            _that.name,
            _that.legalName,
            _that.email,
            _that.phone,
            _that.website,
            _that.taxId,
            _that.registrationNumber,
            _that.industry,
            _that.paymentTerms,
            _that.notes,
            _that.attributes);
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
            String? legalName,
            String? email,
            String? phone,
            String? website,
            String? taxId,
            String? registrationNumber,
            String? industry,
            String? paymentTerms,
            String? notes,
            Map<String, dynamic>? attributes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrganizationSupplierRequest():
        return $default(
            _that.name,
            _that.legalName,
            _that.email,
            _that.phone,
            _that.website,
            _that.taxId,
            _that.registrationNumber,
            _that.industry,
            _that.paymentTerms,
            _that.notes,
            _that.attributes);
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
            String? legalName,
            String? email,
            String? phone,
            String? website,
            String? taxId,
            String? registrationNumber,
            String? industry,
            String? paymentTerms,
            String? notes,
            Map<String, dynamic>? attributes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrganizationSupplierRequest() when $default != null:
        return $default(
            _that.name,
            _that.legalName,
            _that.email,
            _that.phone,
            _that.website,
            _that.taxId,
            _that.registrationNumber,
            _that.industry,
            _that.paymentTerms,
            _that.notes,
            _that.attributes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateOrganizationSupplierRequest
    implements CreateOrganizationSupplierRequest {
  const _CreateOrganizationSupplierRequest(
      {required this.name,
      this.legalName,
      this.email,
      this.phone,
      this.website,
      this.taxId,
      this.registrationNumber,
      this.industry,
      this.paymentTerms,
      this.notes,
      final Map<String, dynamic>? attributes})
      : _attributes = attributes;
  factory _CreateOrganizationSupplierRequest.fromJson(
          Map<String, dynamic> json) =>
      _$CreateOrganizationSupplierRequestFromJson(json);

  @override
  final String name;
  @override
  final String? legalName;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? website;
  @override
  final String? taxId;
  @override
  final String? registrationNumber;
  @override
  final String? industry;
  @override
  final String? paymentTerms;
  @override
  final String? notes;
  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of CreateOrganizationSupplierRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateOrganizationSupplierRequestCopyWith<
          _CreateOrganizationSupplierRequest>
      get copyWith => __$CreateOrganizationSupplierRequestCopyWithImpl<
          _CreateOrganizationSupplierRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateOrganizationSupplierRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateOrganizationSupplierRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.legalName, legalName) ||
                other.legalName == legalName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.taxId, taxId) || other.taxId == taxId) &&
            (identical(other.registrationNumber, registrationNumber) ||
                other.registrationNumber == registrationNumber) &&
            (identical(other.industry, industry) ||
                other.industry == industry) &&
            (identical(other.paymentTerms, paymentTerms) ||
                other.paymentTerms == paymentTerms) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      legalName,
      email,
      phone,
      website,
      taxId,
      registrationNumber,
      industry,
      paymentTerms,
      notes,
      const DeepCollectionEquality().hash(_attributes));

  @override
  String toString() {
    return 'CreateOrganizationSupplierRequest(name: $name, legalName: $legalName, email: $email, phone: $phone, website: $website, taxId: $taxId, registrationNumber: $registrationNumber, industry: $industry, paymentTerms: $paymentTerms, notes: $notes, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class _$CreateOrganizationSupplierRequestCopyWith<$Res>
    implements $CreateOrganizationSupplierRequestCopyWith<$Res> {
  factory _$CreateOrganizationSupplierRequestCopyWith(
          _CreateOrganizationSupplierRequest value,
          $Res Function(_CreateOrganizationSupplierRequest) _then) =
      __$CreateOrganizationSupplierRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String? legalName,
      String? email,
      String? phone,
      String? website,
      String? taxId,
      String? registrationNumber,
      String? industry,
      String? paymentTerms,
      String? notes,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class __$CreateOrganizationSupplierRequestCopyWithImpl<$Res>
    implements _$CreateOrganizationSupplierRequestCopyWith<$Res> {
  __$CreateOrganizationSupplierRequestCopyWithImpl(this._self, this._then);

  final _CreateOrganizationSupplierRequest _self;
  final $Res Function(_CreateOrganizationSupplierRequest) _then;

  /// Create a copy of CreateOrganizationSupplierRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? legalName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? website = freezed,
    Object? taxId = freezed,
    Object? registrationNumber = freezed,
    Object? industry = freezed,
    Object? paymentTerms = freezed,
    Object? notes = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_CreateOrganizationSupplierRequest(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      legalName: freezed == legalName
          ? _self.legalName
          : legalName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _self.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      taxId: freezed == taxId
          ? _self.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationNumber: freezed == registrationNumber
          ? _self.registrationNumber
          : registrationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      industry: freezed == industry
          ? _self.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _self.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$PartySearchFilters {
  String? get name;
  String? get email;
  String? get phone;
  String? get type; // 'person', 'organization'
  List<String>? get roles;
  String? get status;
  String? get city;
  String? get state;
  String? get country;
  DateTime? get createdAfter;
  DateTime? get createdBefore;
  int? get page;
  int? get limit;
  String? get sortBy;
  String? get sortOrder;

  /// Create a copy of PartySearchFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PartySearchFiltersCopyWith<PartySearchFilters> get copyWith =>
      _$PartySearchFiltersCopyWithImpl<PartySearchFilters>(
          this as PartySearchFilters, _$identity);

  /// Serializes this PartySearchFilters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PartySearchFilters &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.roles, roles) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      name,
      email,
      phone,
      type,
      const DeepCollectionEquality().hash(roles),
      status,
      city,
      state,
      country,
      createdAfter,
      createdBefore,
      page,
      limit,
      sortBy,
      sortOrder);

  @override
  String toString() {
    return 'PartySearchFilters(name: $name, email: $email, phone: $phone, type: $type, roles: $roles, status: $status, city: $city, state: $state, country: $country, createdAfter: $createdAfter, createdBefore: $createdBefore, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class $PartySearchFiltersCopyWith<$Res> {
  factory $PartySearchFiltersCopyWith(
          PartySearchFilters value, $Res Function(PartySearchFilters) _then) =
      _$PartySearchFiltersCopyWithImpl;
  @useResult
  $Res call(
      {String? name,
      String? email,
      String? phone,
      String? type,
      List<String>? roles,
      String? status,
      String? city,
      String? state,
      String? country,
      DateTime? createdAfter,
      DateTime? createdBefore,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class _$PartySearchFiltersCopyWithImpl<$Res>
    implements $PartySearchFiltersCopyWith<$Res> {
  _$PartySearchFiltersCopyWithImpl(this._self, this._then);

  final PartySearchFilters _self;
  final $Res Function(PartySearchFilters) _then;

  /// Create a copy of PartySearchFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? type = freezed,
    Object? roles = freezed,
    Object? status = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? createdAfter = freezed,
    Object? createdBefore = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _self.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
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

/// Adds pattern-matching-related methods to [PartySearchFilters].
extension PartySearchFiltersPatterns on PartySearchFilters {
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
    TResult Function(_PartySearchFilters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PartySearchFilters() when $default != null:
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
    TResult Function(_PartySearchFilters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PartySearchFilters():
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
    TResult? Function(_PartySearchFilters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PartySearchFilters() when $default != null:
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
            String? email,
            String? phone,
            String? type,
            List<String>? roles,
            String? status,
            String? city,
            String? state,
            String? country,
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
      case _PartySearchFilters() when $default != null:
        return $default(
            _that.name,
            _that.email,
            _that.phone,
            _that.type,
            _that.roles,
            _that.status,
            _that.city,
            _that.state,
            _that.country,
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
            String? name,
            String? email,
            String? phone,
            String? type,
            List<String>? roles,
            String? status,
            String? city,
            String? state,
            String? country,
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
      case _PartySearchFilters():
        return $default(
            _that.name,
            _that.email,
            _that.phone,
            _that.type,
            _that.roles,
            _that.status,
            _that.city,
            _that.state,
            _that.country,
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
            String? name,
            String? email,
            String? phone,
            String? type,
            List<String>? roles,
            String? status,
            String? city,
            String? state,
            String? country,
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
      case _PartySearchFilters() when $default != null:
        return $default(
            _that.name,
            _that.email,
            _that.phone,
            _that.type,
            _that.roles,
            _that.status,
            _that.city,
            _that.state,
            _that.country,
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
class _PartySearchFilters extends PartySearchFilters {
  const _PartySearchFilters(
      {this.name,
      this.email,
      this.phone,
      this.type,
      final List<String>? roles,
      this.status,
      this.city,
      this.state,
      this.country,
      this.createdAfter,
      this.createdBefore,
      this.page,
      this.limit,
      this.sortBy,
      this.sortOrder})
      : _roles = roles,
        super._();
  factory _PartySearchFilters.fromJson(Map<String, dynamic> json) =>
      _$PartySearchFiltersFromJson(json);

  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? type;
// 'person', 'organization'
  final List<String>? _roles;
// 'person', 'organization'
  @override
  List<String>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? status;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? country;
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

  /// Create a copy of PartySearchFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PartySearchFiltersCopyWith<_PartySearchFilters> get copyWith =>
      __$PartySearchFiltersCopyWithImpl<_PartySearchFilters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PartySearchFiltersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PartySearchFilters &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      name,
      email,
      phone,
      type,
      const DeepCollectionEquality().hash(_roles),
      status,
      city,
      state,
      country,
      createdAfter,
      createdBefore,
      page,
      limit,
      sortBy,
      sortOrder);

  @override
  String toString() {
    return 'PartySearchFilters(name: $name, email: $email, phone: $phone, type: $type, roles: $roles, status: $status, city: $city, state: $state, country: $country, createdAfter: $createdAfter, createdBefore: $createdBefore, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class _$PartySearchFiltersCopyWith<$Res>
    implements $PartySearchFiltersCopyWith<$Res> {
  factory _$PartySearchFiltersCopyWith(
          _PartySearchFilters value, $Res Function(_PartySearchFilters) _then) =
      __$PartySearchFiltersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? name,
      String? email,
      String? phone,
      String? type,
      List<String>? roles,
      String? status,
      String? city,
      String? state,
      String? country,
      DateTime? createdAfter,
      DateTime? createdBefore,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class __$PartySearchFiltersCopyWithImpl<$Res>
    implements _$PartySearchFiltersCopyWith<$Res> {
  __$PartySearchFiltersCopyWithImpl(this._self, this._then);

  final _PartySearchFilters _self;
  final $Res Function(_PartySearchFilters) _then;

  /// Create a copy of PartySearchFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? type = freezed,
    Object? roles = freezed,
    Object? status = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? createdAfter = freezed,
    Object? createdBefore = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_PartySearchFilters(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _self._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
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

// dart format on
