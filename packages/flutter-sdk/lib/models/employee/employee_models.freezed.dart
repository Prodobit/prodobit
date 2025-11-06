// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Employee {
  String get id;
  String get tenantId;
  String get userId;
  String get employeeId;
  String get firstName;
  String get lastName;
  String get email;
  String get status; // 'active', 'inactive', 'suspended', 'terminated'
  DateTime get hireDate;
  DateTime get createdAt;
  DateTime get updatedAt;
  String? get phone;
  String? get department;
  String? get position;
  String? get managerId;
  String? get location;
  double? get salary;
  String? get currency;
  String? get workSchedule;
  DateTime? get birthDate;
  DateTime? get terminationDate;
  String? get terminationReason;
  String? get notes;
  Map<String, dynamic>? get personalInfo;
  Map<String, dynamic>? get emergencyContact;
  Map<String, dynamic>? get bankDetails;
  Map<String, dynamic>? get metadata;

  /// Create a copy of Employee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EmployeeCopyWith<Employee> get copyWith =>
      _$EmployeeCopyWithImpl<Employee>(this as Employee, _$identity);

  /// Serializes this Employee to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Employee &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.hireDate, hireDate) ||
                other.hireDate == hireDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.managerId, managerId) ||
                other.managerId == managerId) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.salary, salary) || other.salary == salary) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.workSchedule, workSchedule) ||
                other.workSchedule == workSchedule) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.terminationDate, terminationDate) ||
                other.terminationDate == terminationDate) &&
            (identical(other.terminationReason, terminationReason) ||
                other.terminationReason == terminationReason) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other.personalInfo, personalInfo) &&
            const DeepCollectionEquality()
                .equals(other.emergencyContact, emergencyContact) &&
            const DeepCollectionEquality()
                .equals(other.bankDetails, bankDetails) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        tenantId,
        userId,
        employeeId,
        firstName,
        lastName,
        email,
        status,
        hireDate,
        createdAt,
        updatedAt,
        phone,
        department,
        position,
        managerId,
        location,
        salary,
        currency,
        workSchedule,
        birthDate,
        terminationDate,
        terminationReason,
        notes,
        const DeepCollectionEquality().hash(personalInfo),
        const DeepCollectionEquality().hash(emergencyContact),
        const DeepCollectionEquality().hash(bankDetails),
        const DeepCollectionEquality().hash(metadata)
      ]);

  @override
  String toString() {
    return 'Employee(id: $id, tenantId: $tenantId, userId: $userId, employeeId: $employeeId, firstName: $firstName, lastName: $lastName, email: $email, status: $status, hireDate: $hireDate, createdAt: $createdAt, updatedAt: $updatedAt, phone: $phone, department: $department, position: $position, managerId: $managerId, location: $location, salary: $salary, currency: $currency, workSchedule: $workSchedule, birthDate: $birthDate, terminationDate: $terminationDate, terminationReason: $terminationReason, notes: $notes, personalInfo: $personalInfo, emergencyContact: $emergencyContact, bankDetails: $bankDetails, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $EmployeeCopyWith<$Res> {
  factory $EmployeeCopyWith(Employee value, $Res Function(Employee) _then) =
      _$EmployeeCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String tenantId,
      String userId,
      String employeeId,
      String firstName,
      String lastName,
      String email,
      String status,
      DateTime hireDate,
      DateTime createdAt,
      DateTime updatedAt,
      String? phone,
      String? department,
      String? position,
      String? managerId,
      String? location,
      double? salary,
      String? currency,
      String? workSchedule,
      DateTime? birthDate,
      DateTime? terminationDate,
      String? terminationReason,
      String? notes,
      Map<String, dynamic>? personalInfo,
      Map<String, dynamic>? emergencyContact,
      Map<String, dynamic>? bankDetails,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$EmployeeCopyWithImpl<$Res> implements $EmployeeCopyWith<$Res> {
  _$EmployeeCopyWithImpl(this._self, this._then);

  final Employee _self;
  final $Res Function(Employee) _then;

  /// Create a copy of Employee
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tenantId = null,
    Object? userId = null,
    Object? employeeId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? status = null,
    Object? hireDate = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? phone = freezed,
    Object? department = freezed,
    Object? position = freezed,
    Object? managerId = freezed,
    Object? location = freezed,
    Object? salary = freezed,
    Object? currency = freezed,
    Object? workSchedule = freezed,
    Object? birthDate = freezed,
    Object? terminationDate = freezed,
    Object? terminationReason = freezed,
    Object? notes = freezed,
    Object? personalInfo = freezed,
    Object? emergencyContact = freezed,
    Object? bankDetails = freezed,
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
      employeeId: null == employeeId
          ? _self.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      hireDate: null == hireDate
          ? _self.hireDate
          : hireDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      managerId: freezed == managerId
          ? _self.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      salary: freezed == salary
          ? _self.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      workSchedule: freezed == workSchedule
          ? _self.workSchedule
          : workSchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      terminationDate: freezed == terminationDate
          ? _self.terminationDate
          : terminationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      terminationReason: freezed == terminationReason
          ? _self.terminationReason
          : terminationReason // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      personalInfo: freezed == personalInfo
          ? _self.personalInfo
          : personalInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      emergencyContact: freezed == emergencyContact
          ? _self.emergencyContact
          : emergencyContact // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      bankDetails: freezed == bankDetails
          ? _self.bankDetails
          : bankDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Employee].
extension EmployeePatterns on Employee {
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
    TResult Function(_Employee value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Employee() when $default != null:
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
    TResult Function(_Employee value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Employee():
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
    TResult? Function(_Employee value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Employee() when $default != null:
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
            String employeeId,
            String firstName,
            String lastName,
            String email,
            String status,
            DateTime hireDate,
            DateTime createdAt,
            DateTime updatedAt,
            String? phone,
            String? department,
            String? position,
            String? managerId,
            String? location,
            double? salary,
            String? currency,
            String? workSchedule,
            DateTime? birthDate,
            DateTime? terminationDate,
            String? terminationReason,
            String? notes,
            Map<String, dynamic>? personalInfo,
            Map<String, dynamic>? emergencyContact,
            Map<String, dynamic>? bankDetails,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Employee() when $default != null:
        return $default(
            _that.id,
            _that.tenantId,
            _that.userId,
            _that.employeeId,
            _that.firstName,
            _that.lastName,
            _that.email,
            _that.status,
            _that.hireDate,
            _that.createdAt,
            _that.updatedAt,
            _that.phone,
            _that.department,
            _that.position,
            _that.managerId,
            _that.location,
            _that.salary,
            _that.currency,
            _that.workSchedule,
            _that.birthDate,
            _that.terminationDate,
            _that.terminationReason,
            _that.notes,
            _that.personalInfo,
            _that.emergencyContact,
            _that.bankDetails,
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
            String employeeId,
            String firstName,
            String lastName,
            String email,
            String status,
            DateTime hireDate,
            DateTime createdAt,
            DateTime updatedAt,
            String? phone,
            String? department,
            String? position,
            String? managerId,
            String? location,
            double? salary,
            String? currency,
            String? workSchedule,
            DateTime? birthDate,
            DateTime? terminationDate,
            String? terminationReason,
            String? notes,
            Map<String, dynamic>? personalInfo,
            Map<String, dynamic>? emergencyContact,
            Map<String, dynamic>? bankDetails,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Employee():
        return $default(
            _that.id,
            _that.tenantId,
            _that.userId,
            _that.employeeId,
            _that.firstName,
            _that.lastName,
            _that.email,
            _that.status,
            _that.hireDate,
            _that.createdAt,
            _that.updatedAt,
            _that.phone,
            _that.department,
            _that.position,
            _that.managerId,
            _that.location,
            _that.salary,
            _that.currency,
            _that.workSchedule,
            _that.birthDate,
            _that.terminationDate,
            _that.terminationReason,
            _that.notes,
            _that.personalInfo,
            _that.emergencyContact,
            _that.bankDetails,
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
            String employeeId,
            String firstName,
            String lastName,
            String email,
            String status,
            DateTime hireDate,
            DateTime createdAt,
            DateTime updatedAt,
            String? phone,
            String? department,
            String? position,
            String? managerId,
            String? location,
            double? salary,
            String? currency,
            String? workSchedule,
            DateTime? birthDate,
            DateTime? terminationDate,
            String? terminationReason,
            String? notes,
            Map<String, dynamic>? personalInfo,
            Map<String, dynamic>? emergencyContact,
            Map<String, dynamic>? bankDetails,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Employee() when $default != null:
        return $default(
            _that.id,
            _that.tenantId,
            _that.userId,
            _that.employeeId,
            _that.firstName,
            _that.lastName,
            _that.email,
            _that.status,
            _that.hireDate,
            _that.createdAt,
            _that.updatedAt,
            _that.phone,
            _that.department,
            _that.position,
            _that.managerId,
            _that.location,
            _that.salary,
            _that.currency,
            _that.workSchedule,
            _that.birthDate,
            _that.terminationDate,
            _that.terminationReason,
            _that.notes,
            _that.personalInfo,
            _that.emergencyContact,
            _that.bankDetails,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Employee implements Employee {
  const _Employee(
      {required this.id,
      required this.tenantId,
      required this.userId,
      required this.employeeId,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.status,
      required this.hireDate,
      required this.createdAt,
      required this.updatedAt,
      this.phone,
      this.department,
      this.position,
      this.managerId,
      this.location,
      this.salary,
      this.currency,
      this.workSchedule,
      this.birthDate,
      this.terminationDate,
      this.terminationReason,
      this.notes,
      final Map<String, dynamic>? personalInfo,
      final Map<String, dynamic>? emergencyContact,
      final Map<String, dynamic>? bankDetails,
      final Map<String, dynamic>? metadata})
      : _personalInfo = personalInfo,
        _emergencyContact = emergencyContact,
        _bankDetails = bankDetails,
        _metadata = metadata;
  factory _Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);

  @override
  final String id;
  @override
  final String tenantId;
  @override
  final String userId;
  @override
  final String employeeId;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String status;
// 'active', 'inactive', 'suspended', 'terminated'
  @override
  final DateTime hireDate;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String? phone;
  @override
  final String? department;
  @override
  final String? position;
  @override
  final String? managerId;
  @override
  final String? location;
  @override
  final double? salary;
  @override
  final String? currency;
  @override
  final String? workSchedule;
  @override
  final DateTime? birthDate;
  @override
  final DateTime? terminationDate;
  @override
  final String? terminationReason;
  @override
  final String? notes;
  final Map<String, dynamic>? _personalInfo;
  @override
  Map<String, dynamic>? get personalInfo {
    final value = _personalInfo;
    if (value == null) return null;
    if (_personalInfo is EqualUnmodifiableMapView) return _personalInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _emergencyContact;
  @override
  Map<String, dynamic>? get emergencyContact {
    final value = _emergencyContact;
    if (value == null) return null;
    if (_emergencyContact is EqualUnmodifiableMapView) return _emergencyContact;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _bankDetails;
  @override
  Map<String, dynamic>? get bankDetails {
    final value = _bankDetails;
    if (value == null) return null;
    if (_bankDetails is EqualUnmodifiableMapView) return _bankDetails;
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

  /// Create a copy of Employee
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EmployeeCopyWith<_Employee> get copyWith =>
      __$EmployeeCopyWithImpl<_Employee>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EmployeeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Employee &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.hireDate, hireDate) ||
                other.hireDate == hireDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.managerId, managerId) ||
                other.managerId == managerId) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.salary, salary) || other.salary == salary) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.workSchedule, workSchedule) ||
                other.workSchedule == workSchedule) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.terminationDate, terminationDate) ||
                other.terminationDate == terminationDate) &&
            (identical(other.terminationReason, terminationReason) ||
                other.terminationReason == terminationReason) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._personalInfo, _personalInfo) &&
            const DeepCollectionEquality()
                .equals(other._emergencyContact, _emergencyContact) &&
            const DeepCollectionEquality()
                .equals(other._bankDetails, _bankDetails) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        tenantId,
        userId,
        employeeId,
        firstName,
        lastName,
        email,
        status,
        hireDate,
        createdAt,
        updatedAt,
        phone,
        department,
        position,
        managerId,
        location,
        salary,
        currency,
        workSchedule,
        birthDate,
        terminationDate,
        terminationReason,
        notes,
        const DeepCollectionEquality().hash(_personalInfo),
        const DeepCollectionEquality().hash(_emergencyContact),
        const DeepCollectionEquality().hash(_bankDetails),
        const DeepCollectionEquality().hash(_metadata)
      ]);

  @override
  String toString() {
    return 'Employee(id: $id, tenantId: $tenantId, userId: $userId, employeeId: $employeeId, firstName: $firstName, lastName: $lastName, email: $email, status: $status, hireDate: $hireDate, createdAt: $createdAt, updatedAt: $updatedAt, phone: $phone, department: $department, position: $position, managerId: $managerId, location: $location, salary: $salary, currency: $currency, workSchedule: $workSchedule, birthDate: $birthDate, terminationDate: $terminationDate, terminationReason: $terminationReason, notes: $notes, personalInfo: $personalInfo, emergencyContact: $emergencyContact, bankDetails: $bankDetails, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$EmployeeCopyWith<$Res>
    implements $EmployeeCopyWith<$Res> {
  factory _$EmployeeCopyWith(_Employee value, $Res Function(_Employee) _then) =
      __$EmployeeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String tenantId,
      String userId,
      String employeeId,
      String firstName,
      String lastName,
      String email,
      String status,
      DateTime hireDate,
      DateTime createdAt,
      DateTime updatedAt,
      String? phone,
      String? department,
      String? position,
      String? managerId,
      String? location,
      double? salary,
      String? currency,
      String? workSchedule,
      DateTime? birthDate,
      DateTime? terminationDate,
      String? terminationReason,
      String? notes,
      Map<String, dynamic>? personalInfo,
      Map<String, dynamic>? emergencyContact,
      Map<String, dynamic>? bankDetails,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$EmployeeCopyWithImpl<$Res> implements _$EmployeeCopyWith<$Res> {
  __$EmployeeCopyWithImpl(this._self, this._then);

  final _Employee _self;
  final $Res Function(_Employee) _then;

  /// Create a copy of Employee
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? tenantId = null,
    Object? userId = null,
    Object? employeeId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? status = null,
    Object? hireDate = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? phone = freezed,
    Object? department = freezed,
    Object? position = freezed,
    Object? managerId = freezed,
    Object? location = freezed,
    Object? salary = freezed,
    Object? currency = freezed,
    Object? workSchedule = freezed,
    Object? birthDate = freezed,
    Object? terminationDate = freezed,
    Object? terminationReason = freezed,
    Object? notes = freezed,
    Object? personalInfo = freezed,
    Object? emergencyContact = freezed,
    Object? bankDetails = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_Employee(
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
      employeeId: null == employeeId
          ? _self.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      hireDate: null == hireDate
          ? _self.hireDate
          : hireDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      managerId: freezed == managerId
          ? _self.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      salary: freezed == salary
          ? _self.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      workSchedule: freezed == workSchedule
          ? _self.workSchedule
          : workSchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      terminationDate: freezed == terminationDate
          ? _self.terminationDate
          : terminationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      terminationReason: freezed == terminationReason
          ? _self.terminationReason
          : terminationReason // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      personalInfo: freezed == personalInfo
          ? _self._personalInfo
          : personalInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      emergencyContact: freezed == emergencyContact
          ? _self._emergencyContact
          : emergencyContact // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      bankDetails: freezed == bankDetails
          ? _self._bankDetails
          : bankDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$CreateEmployeeRequest {
  String get userId;
  String get employeeId;
  String get firstName;
  String get lastName;
  String get email;
  DateTime get hireDate;
  String? get phone;
  String? get department;
  String? get position;
  String? get managerId;
  String? get location;
  double? get salary;
  String? get currency;
  String? get workSchedule;
  DateTime? get birthDate;
  String? get notes;
  Map<String, dynamic>? get personalInfo;
  Map<String, dynamic>? get emergencyContact;
  Map<String, dynamic>? get bankDetails;
  Map<String, dynamic>? get metadata;

  /// Create a copy of CreateEmployeeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateEmployeeRequestCopyWith<CreateEmployeeRequest> get copyWith =>
      _$CreateEmployeeRequestCopyWithImpl<CreateEmployeeRequest>(
          this as CreateEmployeeRequest, _$identity);

  /// Serializes this CreateEmployeeRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateEmployeeRequest &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.hireDate, hireDate) ||
                other.hireDate == hireDate) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.managerId, managerId) ||
                other.managerId == managerId) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.salary, salary) || other.salary == salary) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.workSchedule, workSchedule) ||
                other.workSchedule == workSchedule) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other.personalInfo, personalInfo) &&
            const DeepCollectionEquality()
                .equals(other.emergencyContact, emergencyContact) &&
            const DeepCollectionEquality()
                .equals(other.bankDetails, bankDetails) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        userId,
        employeeId,
        firstName,
        lastName,
        email,
        hireDate,
        phone,
        department,
        position,
        managerId,
        location,
        salary,
        currency,
        workSchedule,
        birthDate,
        notes,
        const DeepCollectionEquality().hash(personalInfo),
        const DeepCollectionEquality().hash(emergencyContact),
        const DeepCollectionEquality().hash(bankDetails),
        const DeepCollectionEquality().hash(metadata)
      ]);

  @override
  String toString() {
    return 'CreateEmployeeRequest(userId: $userId, employeeId: $employeeId, firstName: $firstName, lastName: $lastName, email: $email, hireDate: $hireDate, phone: $phone, department: $department, position: $position, managerId: $managerId, location: $location, salary: $salary, currency: $currency, workSchedule: $workSchedule, birthDate: $birthDate, notes: $notes, personalInfo: $personalInfo, emergencyContact: $emergencyContact, bankDetails: $bankDetails, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $CreateEmployeeRequestCopyWith<$Res> {
  factory $CreateEmployeeRequestCopyWith(CreateEmployeeRequest value,
          $Res Function(CreateEmployeeRequest) _then) =
      _$CreateEmployeeRequestCopyWithImpl;
  @useResult
  $Res call(
      {String userId,
      String employeeId,
      String firstName,
      String lastName,
      String email,
      DateTime hireDate,
      String? phone,
      String? department,
      String? position,
      String? managerId,
      String? location,
      double? salary,
      String? currency,
      String? workSchedule,
      DateTime? birthDate,
      String? notes,
      Map<String, dynamic>? personalInfo,
      Map<String, dynamic>? emergencyContact,
      Map<String, dynamic>? bankDetails,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$CreateEmployeeRequestCopyWithImpl<$Res>
    implements $CreateEmployeeRequestCopyWith<$Res> {
  _$CreateEmployeeRequestCopyWithImpl(this._self, this._then);

  final CreateEmployeeRequest _self;
  final $Res Function(CreateEmployeeRequest) _then;

  /// Create a copy of CreateEmployeeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? employeeId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? hireDate = null,
    Object? phone = freezed,
    Object? department = freezed,
    Object? position = freezed,
    Object? managerId = freezed,
    Object? location = freezed,
    Object? salary = freezed,
    Object? currency = freezed,
    Object? workSchedule = freezed,
    Object? birthDate = freezed,
    Object? notes = freezed,
    Object? personalInfo = freezed,
    Object? emergencyContact = freezed,
    Object? bankDetails = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      employeeId: null == employeeId
          ? _self.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      hireDate: null == hireDate
          ? _self.hireDate
          : hireDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      managerId: freezed == managerId
          ? _self.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      salary: freezed == salary
          ? _self.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      workSchedule: freezed == workSchedule
          ? _self.workSchedule
          : workSchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      personalInfo: freezed == personalInfo
          ? _self.personalInfo
          : personalInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      emergencyContact: freezed == emergencyContact
          ? _self.emergencyContact
          : emergencyContact // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      bankDetails: freezed == bankDetails
          ? _self.bankDetails
          : bankDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateEmployeeRequest].
extension CreateEmployeeRequestPatterns on CreateEmployeeRequest {
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
    TResult Function(_CreateEmployeeRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateEmployeeRequest() when $default != null:
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
    TResult Function(_CreateEmployeeRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateEmployeeRequest():
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
    TResult? Function(_CreateEmployeeRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateEmployeeRequest() when $default != null:
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
            String userId,
            String employeeId,
            String firstName,
            String lastName,
            String email,
            DateTime hireDate,
            String? phone,
            String? department,
            String? position,
            String? managerId,
            String? location,
            double? salary,
            String? currency,
            String? workSchedule,
            DateTime? birthDate,
            String? notes,
            Map<String, dynamic>? personalInfo,
            Map<String, dynamic>? emergencyContact,
            Map<String, dynamic>? bankDetails,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateEmployeeRequest() when $default != null:
        return $default(
            _that.userId,
            _that.employeeId,
            _that.firstName,
            _that.lastName,
            _that.email,
            _that.hireDate,
            _that.phone,
            _that.department,
            _that.position,
            _that.managerId,
            _that.location,
            _that.salary,
            _that.currency,
            _that.workSchedule,
            _that.birthDate,
            _that.notes,
            _that.personalInfo,
            _that.emergencyContact,
            _that.bankDetails,
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
            String userId,
            String employeeId,
            String firstName,
            String lastName,
            String email,
            DateTime hireDate,
            String? phone,
            String? department,
            String? position,
            String? managerId,
            String? location,
            double? salary,
            String? currency,
            String? workSchedule,
            DateTime? birthDate,
            String? notes,
            Map<String, dynamic>? personalInfo,
            Map<String, dynamic>? emergencyContact,
            Map<String, dynamic>? bankDetails,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateEmployeeRequest():
        return $default(
            _that.userId,
            _that.employeeId,
            _that.firstName,
            _that.lastName,
            _that.email,
            _that.hireDate,
            _that.phone,
            _that.department,
            _that.position,
            _that.managerId,
            _that.location,
            _that.salary,
            _that.currency,
            _that.workSchedule,
            _that.birthDate,
            _that.notes,
            _that.personalInfo,
            _that.emergencyContact,
            _that.bankDetails,
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
            String userId,
            String employeeId,
            String firstName,
            String lastName,
            String email,
            DateTime hireDate,
            String? phone,
            String? department,
            String? position,
            String? managerId,
            String? location,
            double? salary,
            String? currency,
            String? workSchedule,
            DateTime? birthDate,
            String? notes,
            Map<String, dynamic>? personalInfo,
            Map<String, dynamic>? emergencyContact,
            Map<String, dynamic>? bankDetails,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateEmployeeRequest() when $default != null:
        return $default(
            _that.userId,
            _that.employeeId,
            _that.firstName,
            _that.lastName,
            _that.email,
            _that.hireDate,
            _that.phone,
            _that.department,
            _that.position,
            _that.managerId,
            _that.location,
            _that.salary,
            _that.currency,
            _that.workSchedule,
            _that.birthDate,
            _that.notes,
            _that.personalInfo,
            _that.emergencyContact,
            _that.bankDetails,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateEmployeeRequest implements CreateEmployeeRequest {
  const _CreateEmployeeRequest(
      {required this.userId,
      required this.employeeId,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.hireDate,
      this.phone,
      this.department,
      this.position,
      this.managerId,
      this.location,
      this.salary,
      this.currency,
      this.workSchedule,
      this.birthDate,
      this.notes,
      final Map<String, dynamic>? personalInfo,
      final Map<String, dynamic>? emergencyContact,
      final Map<String, dynamic>? bankDetails,
      final Map<String, dynamic>? metadata})
      : _personalInfo = personalInfo,
        _emergencyContact = emergencyContact,
        _bankDetails = bankDetails,
        _metadata = metadata;
  factory _CreateEmployeeRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateEmployeeRequestFromJson(json);

  @override
  final String userId;
  @override
  final String employeeId;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final DateTime hireDate;
  @override
  final String? phone;
  @override
  final String? department;
  @override
  final String? position;
  @override
  final String? managerId;
  @override
  final String? location;
  @override
  final double? salary;
  @override
  final String? currency;
  @override
  final String? workSchedule;
  @override
  final DateTime? birthDate;
  @override
  final String? notes;
  final Map<String, dynamic>? _personalInfo;
  @override
  Map<String, dynamic>? get personalInfo {
    final value = _personalInfo;
    if (value == null) return null;
    if (_personalInfo is EqualUnmodifiableMapView) return _personalInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _emergencyContact;
  @override
  Map<String, dynamic>? get emergencyContact {
    final value = _emergencyContact;
    if (value == null) return null;
    if (_emergencyContact is EqualUnmodifiableMapView) return _emergencyContact;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _bankDetails;
  @override
  Map<String, dynamic>? get bankDetails {
    final value = _bankDetails;
    if (value == null) return null;
    if (_bankDetails is EqualUnmodifiableMapView) return _bankDetails;
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

  /// Create a copy of CreateEmployeeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateEmployeeRequestCopyWith<_CreateEmployeeRequest> get copyWith =>
      __$CreateEmployeeRequestCopyWithImpl<_CreateEmployeeRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateEmployeeRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateEmployeeRequest &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.hireDate, hireDate) ||
                other.hireDate == hireDate) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.managerId, managerId) ||
                other.managerId == managerId) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.salary, salary) || other.salary == salary) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.workSchedule, workSchedule) ||
                other.workSchedule == workSchedule) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._personalInfo, _personalInfo) &&
            const DeepCollectionEquality()
                .equals(other._emergencyContact, _emergencyContact) &&
            const DeepCollectionEquality()
                .equals(other._bankDetails, _bankDetails) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        userId,
        employeeId,
        firstName,
        lastName,
        email,
        hireDate,
        phone,
        department,
        position,
        managerId,
        location,
        salary,
        currency,
        workSchedule,
        birthDate,
        notes,
        const DeepCollectionEquality().hash(_personalInfo),
        const DeepCollectionEquality().hash(_emergencyContact),
        const DeepCollectionEquality().hash(_bankDetails),
        const DeepCollectionEquality().hash(_metadata)
      ]);

  @override
  String toString() {
    return 'CreateEmployeeRequest(userId: $userId, employeeId: $employeeId, firstName: $firstName, lastName: $lastName, email: $email, hireDate: $hireDate, phone: $phone, department: $department, position: $position, managerId: $managerId, location: $location, salary: $salary, currency: $currency, workSchedule: $workSchedule, birthDate: $birthDate, notes: $notes, personalInfo: $personalInfo, emergencyContact: $emergencyContact, bankDetails: $bankDetails, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$CreateEmployeeRequestCopyWith<$Res>
    implements $CreateEmployeeRequestCopyWith<$Res> {
  factory _$CreateEmployeeRequestCopyWith(_CreateEmployeeRequest value,
          $Res Function(_CreateEmployeeRequest) _then) =
      __$CreateEmployeeRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String userId,
      String employeeId,
      String firstName,
      String lastName,
      String email,
      DateTime hireDate,
      String? phone,
      String? department,
      String? position,
      String? managerId,
      String? location,
      double? salary,
      String? currency,
      String? workSchedule,
      DateTime? birthDate,
      String? notes,
      Map<String, dynamic>? personalInfo,
      Map<String, dynamic>? emergencyContact,
      Map<String, dynamic>? bankDetails,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$CreateEmployeeRequestCopyWithImpl<$Res>
    implements _$CreateEmployeeRequestCopyWith<$Res> {
  __$CreateEmployeeRequestCopyWithImpl(this._self, this._then);

  final _CreateEmployeeRequest _self;
  final $Res Function(_CreateEmployeeRequest) _then;

  /// Create a copy of CreateEmployeeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userId = null,
    Object? employeeId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? hireDate = null,
    Object? phone = freezed,
    Object? department = freezed,
    Object? position = freezed,
    Object? managerId = freezed,
    Object? location = freezed,
    Object? salary = freezed,
    Object? currency = freezed,
    Object? workSchedule = freezed,
    Object? birthDate = freezed,
    Object? notes = freezed,
    Object? personalInfo = freezed,
    Object? emergencyContact = freezed,
    Object? bankDetails = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_CreateEmployeeRequest(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      employeeId: null == employeeId
          ? _self.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      hireDate: null == hireDate
          ? _self.hireDate
          : hireDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      managerId: freezed == managerId
          ? _self.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      salary: freezed == salary
          ? _self.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      workSchedule: freezed == workSchedule
          ? _self.workSchedule
          : workSchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      personalInfo: freezed == personalInfo
          ? _self._personalInfo
          : personalInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      emergencyContact: freezed == emergencyContact
          ? _self._emergencyContact
          : emergencyContact // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      bankDetails: freezed == bankDetails
          ? _self._bankDetails
          : bankDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$UpdateEmployeeRequest {
  String? get firstName;
  String? get lastName;
  String? get email;
  String? get phone;
  String? get department;
  String? get position;
  String? get managerId;
  String? get location;
  String? get status;
  double? get salary;
  String? get currency;
  String? get workSchedule;
  DateTime? get birthDate;
  DateTime? get terminationDate;
  String? get terminationReason;
  String? get notes;
  Map<String, dynamic>? get personalInfo;
  Map<String, dynamic>? get emergencyContact;
  Map<String, dynamic>? get bankDetails;
  Map<String, dynamic>? get metadata;

  /// Create a copy of UpdateEmployeeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateEmployeeRequestCopyWith<UpdateEmployeeRequest> get copyWith =>
      _$UpdateEmployeeRequestCopyWithImpl<UpdateEmployeeRequest>(
          this as UpdateEmployeeRequest, _$identity);

  /// Serializes this UpdateEmployeeRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateEmployeeRequest &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.managerId, managerId) ||
                other.managerId == managerId) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.salary, salary) || other.salary == salary) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.workSchedule, workSchedule) ||
                other.workSchedule == workSchedule) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.terminationDate, terminationDate) ||
                other.terminationDate == terminationDate) &&
            (identical(other.terminationReason, terminationReason) ||
                other.terminationReason == terminationReason) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other.personalInfo, personalInfo) &&
            const DeepCollectionEquality()
                .equals(other.emergencyContact, emergencyContact) &&
            const DeepCollectionEquality()
                .equals(other.bankDetails, bankDetails) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        firstName,
        lastName,
        email,
        phone,
        department,
        position,
        managerId,
        location,
        status,
        salary,
        currency,
        workSchedule,
        birthDate,
        terminationDate,
        terminationReason,
        notes,
        const DeepCollectionEquality().hash(personalInfo),
        const DeepCollectionEquality().hash(emergencyContact),
        const DeepCollectionEquality().hash(bankDetails),
        const DeepCollectionEquality().hash(metadata)
      ]);

  @override
  String toString() {
    return 'UpdateEmployeeRequest(firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, department: $department, position: $position, managerId: $managerId, location: $location, status: $status, salary: $salary, currency: $currency, workSchedule: $workSchedule, birthDate: $birthDate, terminationDate: $terminationDate, terminationReason: $terminationReason, notes: $notes, personalInfo: $personalInfo, emergencyContact: $emergencyContact, bankDetails: $bankDetails, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $UpdateEmployeeRequestCopyWith<$Res> {
  factory $UpdateEmployeeRequestCopyWith(UpdateEmployeeRequest value,
          $Res Function(UpdateEmployeeRequest) _then) =
      _$UpdateEmployeeRequestCopyWithImpl;
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String? email,
      String? phone,
      String? department,
      String? position,
      String? managerId,
      String? location,
      String? status,
      double? salary,
      String? currency,
      String? workSchedule,
      DateTime? birthDate,
      DateTime? terminationDate,
      String? terminationReason,
      String? notes,
      Map<String, dynamic>? personalInfo,
      Map<String, dynamic>? emergencyContact,
      Map<String, dynamic>? bankDetails,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$UpdateEmployeeRequestCopyWithImpl<$Res>
    implements $UpdateEmployeeRequestCopyWith<$Res> {
  _$UpdateEmployeeRequestCopyWithImpl(this._self, this._then);

  final UpdateEmployeeRequest _self;
  final $Res Function(UpdateEmployeeRequest) _then;

  /// Create a copy of UpdateEmployeeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? department = freezed,
    Object? position = freezed,
    Object? managerId = freezed,
    Object? location = freezed,
    Object? status = freezed,
    Object? salary = freezed,
    Object? currency = freezed,
    Object? workSchedule = freezed,
    Object? birthDate = freezed,
    Object? terminationDate = freezed,
    Object? terminationReason = freezed,
    Object? notes = freezed,
    Object? personalInfo = freezed,
    Object? emergencyContact = freezed,
    Object? bankDetails = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      managerId: freezed == managerId
          ? _self.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      salary: freezed == salary
          ? _self.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      workSchedule: freezed == workSchedule
          ? _self.workSchedule
          : workSchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      terminationDate: freezed == terminationDate
          ? _self.terminationDate
          : terminationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      terminationReason: freezed == terminationReason
          ? _self.terminationReason
          : terminationReason // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      personalInfo: freezed == personalInfo
          ? _self.personalInfo
          : personalInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      emergencyContact: freezed == emergencyContact
          ? _self.emergencyContact
          : emergencyContact // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      bankDetails: freezed == bankDetails
          ? _self.bankDetails
          : bankDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateEmployeeRequest].
extension UpdateEmployeeRequestPatterns on UpdateEmployeeRequest {
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
    TResult Function(_UpdateEmployeeRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateEmployeeRequest() when $default != null:
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
    TResult Function(_UpdateEmployeeRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateEmployeeRequest():
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
    TResult? Function(_UpdateEmployeeRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateEmployeeRequest() when $default != null:
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
            String? firstName,
            String? lastName,
            String? email,
            String? phone,
            String? department,
            String? position,
            String? managerId,
            String? location,
            String? status,
            double? salary,
            String? currency,
            String? workSchedule,
            DateTime? birthDate,
            DateTime? terminationDate,
            String? terminationReason,
            String? notes,
            Map<String, dynamic>? personalInfo,
            Map<String, dynamic>? emergencyContact,
            Map<String, dynamic>? bankDetails,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateEmployeeRequest() when $default != null:
        return $default(
            _that.firstName,
            _that.lastName,
            _that.email,
            _that.phone,
            _that.department,
            _that.position,
            _that.managerId,
            _that.location,
            _that.status,
            _that.salary,
            _that.currency,
            _that.workSchedule,
            _that.birthDate,
            _that.terminationDate,
            _that.terminationReason,
            _that.notes,
            _that.personalInfo,
            _that.emergencyContact,
            _that.bankDetails,
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
            String? firstName,
            String? lastName,
            String? email,
            String? phone,
            String? department,
            String? position,
            String? managerId,
            String? location,
            String? status,
            double? salary,
            String? currency,
            String? workSchedule,
            DateTime? birthDate,
            DateTime? terminationDate,
            String? terminationReason,
            String? notes,
            Map<String, dynamic>? personalInfo,
            Map<String, dynamic>? emergencyContact,
            Map<String, dynamic>? bankDetails,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateEmployeeRequest():
        return $default(
            _that.firstName,
            _that.lastName,
            _that.email,
            _that.phone,
            _that.department,
            _that.position,
            _that.managerId,
            _that.location,
            _that.status,
            _that.salary,
            _that.currency,
            _that.workSchedule,
            _that.birthDate,
            _that.terminationDate,
            _that.terminationReason,
            _that.notes,
            _that.personalInfo,
            _that.emergencyContact,
            _that.bankDetails,
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
            String? firstName,
            String? lastName,
            String? email,
            String? phone,
            String? department,
            String? position,
            String? managerId,
            String? location,
            String? status,
            double? salary,
            String? currency,
            String? workSchedule,
            DateTime? birthDate,
            DateTime? terminationDate,
            String? terminationReason,
            String? notes,
            Map<String, dynamic>? personalInfo,
            Map<String, dynamic>? emergencyContact,
            Map<String, dynamic>? bankDetails,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateEmployeeRequest() when $default != null:
        return $default(
            _that.firstName,
            _that.lastName,
            _that.email,
            _that.phone,
            _that.department,
            _that.position,
            _that.managerId,
            _that.location,
            _that.status,
            _that.salary,
            _that.currency,
            _that.workSchedule,
            _that.birthDate,
            _that.terminationDate,
            _that.terminationReason,
            _that.notes,
            _that.personalInfo,
            _that.emergencyContact,
            _that.bankDetails,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateEmployeeRequest implements UpdateEmployeeRequest {
  const _UpdateEmployeeRequest(
      {this.firstName,
      this.lastName,
      this.email,
      this.phone,
      this.department,
      this.position,
      this.managerId,
      this.location,
      this.status,
      this.salary,
      this.currency,
      this.workSchedule,
      this.birthDate,
      this.terminationDate,
      this.terminationReason,
      this.notes,
      final Map<String, dynamic>? personalInfo,
      final Map<String, dynamic>? emergencyContact,
      final Map<String, dynamic>? bankDetails,
      final Map<String, dynamic>? metadata})
      : _personalInfo = personalInfo,
        _emergencyContact = emergencyContact,
        _bankDetails = bankDetails,
        _metadata = metadata;
  factory _UpdateEmployeeRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateEmployeeRequestFromJson(json);

  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? department;
  @override
  final String? position;
  @override
  final String? managerId;
  @override
  final String? location;
  @override
  final String? status;
  @override
  final double? salary;
  @override
  final String? currency;
  @override
  final String? workSchedule;
  @override
  final DateTime? birthDate;
  @override
  final DateTime? terminationDate;
  @override
  final String? terminationReason;
  @override
  final String? notes;
  final Map<String, dynamic>? _personalInfo;
  @override
  Map<String, dynamic>? get personalInfo {
    final value = _personalInfo;
    if (value == null) return null;
    if (_personalInfo is EqualUnmodifiableMapView) return _personalInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _emergencyContact;
  @override
  Map<String, dynamic>? get emergencyContact {
    final value = _emergencyContact;
    if (value == null) return null;
    if (_emergencyContact is EqualUnmodifiableMapView) return _emergencyContact;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _bankDetails;
  @override
  Map<String, dynamic>? get bankDetails {
    final value = _bankDetails;
    if (value == null) return null;
    if (_bankDetails is EqualUnmodifiableMapView) return _bankDetails;
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

  /// Create a copy of UpdateEmployeeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateEmployeeRequestCopyWith<_UpdateEmployeeRequest> get copyWith =>
      __$UpdateEmployeeRequestCopyWithImpl<_UpdateEmployeeRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateEmployeeRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateEmployeeRequest &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.managerId, managerId) ||
                other.managerId == managerId) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.salary, salary) || other.salary == salary) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.workSchedule, workSchedule) ||
                other.workSchedule == workSchedule) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.terminationDate, terminationDate) ||
                other.terminationDate == terminationDate) &&
            (identical(other.terminationReason, terminationReason) ||
                other.terminationReason == terminationReason) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._personalInfo, _personalInfo) &&
            const DeepCollectionEquality()
                .equals(other._emergencyContact, _emergencyContact) &&
            const DeepCollectionEquality()
                .equals(other._bankDetails, _bankDetails) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        firstName,
        lastName,
        email,
        phone,
        department,
        position,
        managerId,
        location,
        status,
        salary,
        currency,
        workSchedule,
        birthDate,
        terminationDate,
        terminationReason,
        notes,
        const DeepCollectionEquality().hash(_personalInfo),
        const DeepCollectionEquality().hash(_emergencyContact),
        const DeepCollectionEquality().hash(_bankDetails),
        const DeepCollectionEquality().hash(_metadata)
      ]);

  @override
  String toString() {
    return 'UpdateEmployeeRequest(firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, department: $department, position: $position, managerId: $managerId, location: $location, status: $status, salary: $salary, currency: $currency, workSchedule: $workSchedule, birthDate: $birthDate, terminationDate: $terminationDate, terminationReason: $terminationReason, notes: $notes, personalInfo: $personalInfo, emergencyContact: $emergencyContact, bankDetails: $bankDetails, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$UpdateEmployeeRequestCopyWith<$Res>
    implements $UpdateEmployeeRequestCopyWith<$Res> {
  factory _$UpdateEmployeeRequestCopyWith(_UpdateEmployeeRequest value,
          $Res Function(_UpdateEmployeeRequest) _then) =
      __$UpdateEmployeeRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String? email,
      String? phone,
      String? department,
      String? position,
      String? managerId,
      String? location,
      String? status,
      double? salary,
      String? currency,
      String? workSchedule,
      DateTime? birthDate,
      DateTime? terminationDate,
      String? terminationReason,
      String? notes,
      Map<String, dynamic>? personalInfo,
      Map<String, dynamic>? emergencyContact,
      Map<String, dynamic>? bankDetails,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$UpdateEmployeeRequestCopyWithImpl<$Res>
    implements _$UpdateEmployeeRequestCopyWith<$Res> {
  __$UpdateEmployeeRequestCopyWithImpl(this._self, this._then);

  final _UpdateEmployeeRequest _self;
  final $Res Function(_UpdateEmployeeRequest) _then;

  /// Create a copy of UpdateEmployeeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? department = freezed,
    Object? position = freezed,
    Object? managerId = freezed,
    Object? location = freezed,
    Object? status = freezed,
    Object? salary = freezed,
    Object? currency = freezed,
    Object? workSchedule = freezed,
    Object? birthDate = freezed,
    Object? terminationDate = freezed,
    Object? terminationReason = freezed,
    Object? notes = freezed,
    Object? personalInfo = freezed,
    Object? emergencyContact = freezed,
    Object? bankDetails = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_UpdateEmployeeRequest(
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      managerId: freezed == managerId
          ? _self.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      salary: freezed == salary
          ? _self.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      workSchedule: freezed == workSchedule
          ? _self.workSchedule
          : workSchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      terminationDate: freezed == terminationDate
          ? _self.terminationDate
          : terminationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      terminationReason: freezed == terminationReason
          ? _self.terminationReason
          : terminationReason // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      personalInfo: freezed == personalInfo
          ? _self._personalInfo
          : personalInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      emergencyContact: freezed == emergencyContact
          ? _self._emergencyContact
          : emergencyContact // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      bankDetails: freezed == bankDetails
          ? _self._bankDetails
          : bankDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$EmployeeFilters {
  String? get status;
  String? get department;
  String? get position;
  String? get managerId;
  String? get location;
  String? get name;
  String? get email;
  DateTime? get hiredAfter;
  DateTime? get hiredBefore;
  int? get page;
  int? get limit;
  String? get sortBy;
  String? get sortOrder;

  /// Create a copy of EmployeeFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EmployeeFiltersCopyWith<EmployeeFilters> get copyWith =>
      _$EmployeeFiltersCopyWithImpl<EmployeeFilters>(
          this as EmployeeFilters, _$identity);

  /// Serializes this EmployeeFilters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmployeeFilters &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.managerId, managerId) ||
                other.managerId == managerId) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.hiredAfter, hiredAfter) ||
                other.hiredAfter == hiredAfter) &&
            (identical(other.hiredBefore, hiredBefore) ||
                other.hiredBefore == hiredBefore) &&
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
      department,
      position,
      managerId,
      location,
      name,
      email,
      hiredAfter,
      hiredBefore,
      page,
      limit,
      sortBy,
      sortOrder);

  @override
  String toString() {
    return 'EmployeeFilters(status: $status, department: $department, position: $position, managerId: $managerId, location: $location, name: $name, email: $email, hiredAfter: $hiredAfter, hiredBefore: $hiredBefore, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class $EmployeeFiltersCopyWith<$Res> {
  factory $EmployeeFiltersCopyWith(
          EmployeeFilters value, $Res Function(EmployeeFilters) _then) =
      _$EmployeeFiltersCopyWithImpl;
  @useResult
  $Res call(
      {String? status,
      String? department,
      String? position,
      String? managerId,
      String? location,
      String? name,
      String? email,
      DateTime? hiredAfter,
      DateTime? hiredBefore,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class _$EmployeeFiltersCopyWithImpl<$Res>
    implements $EmployeeFiltersCopyWith<$Res> {
  _$EmployeeFiltersCopyWithImpl(this._self, this._then);

  final EmployeeFilters _self;
  final $Res Function(EmployeeFilters) _then;

  /// Create a copy of EmployeeFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? department = freezed,
    Object? position = freezed,
    Object? managerId = freezed,
    Object? location = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? hiredAfter = freezed,
    Object? hiredBefore = freezed,
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
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      managerId: freezed == managerId
          ? _self.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      hiredAfter: freezed == hiredAfter
          ? _self.hiredAfter
          : hiredAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      hiredBefore: freezed == hiredBefore
          ? _self.hiredBefore
          : hiredBefore // ignore: cast_nullable_to_non_nullable
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

/// Adds pattern-matching-related methods to [EmployeeFilters].
extension EmployeeFiltersPatterns on EmployeeFilters {
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
    TResult Function(_EmployeeFilters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EmployeeFilters() when $default != null:
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
    TResult Function(_EmployeeFilters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EmployeeFilters():
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
    TResult? Function(_EmployeeFilters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EmployeeFilters() when $default != null:
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
            String? department,
            String? position,
            String? managerId,
            String? location,
            String? name,
            String? email,
            DateTime? hiredAfter,
            DateTime? hiredBefore,
            int? page,
            int? limit,
            String? sortBy,
            String? sortOrder)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EmployeeFilters() when $default != null:
        return $default(
            _that.status,
            _that.department,
            _that.position,
            _that.managerId,
            _that.location,
            _that.name,
            _that.email,
            _that.hiredAfter,
            _that.hiredBefore,
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
            String? department,
            String? position,
            String? managerId,
            String? location,
            String? name,
            String? email,
            DateTime? hiredAfter,
            DateTime? hiredBefore,
            int? page,
            int? limit,
            String? sortBy,
            String? sortOrder)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EmployeeFilters():
        return $default(
            _that.status,
            _that.department,
            _that.position,
            _that.managerId,
            _that.location,
            _that.name,
            _that.email,
            _that.hiredAfter,
            _that.hiredBefore,
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
            String? department,
            String? position,
            String? managerId,
            String? location,
            String? name,
            String? email,
            DateTime? hiredAfter,
            DateTime? hiredBefore,
            int? page,
            int? limit,
            String? sortBy,
            String? sortOrder)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EmployeeFilters() when $default != null:
        return $default(
            _that.status,
            _that.department,
            _that.position,
            _that.managerId,
            _that.location,
            _that.name,
            _that.email,
            _that.hiredAfter,
            _that.hiredBefore,
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
class _EmployeeFilters extends EmployeeFilters {
  const _EmployeeFilters(
      {this.status,
      this.department,
      this.position,
      this.managerId,
      this.location,
      this.name,
      this.email,
      this.hiredAfter,
      this.hiredBefore,
      this.page,
      this.limit,
      this.sortBy,
      this.sortOrder})
      : super._();
  factory _EmployeeFilters.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFiltersFromJson(json);

  @override
  final String? status;
  @override
  final String? department;
  @override
  final String? position;
  @override
  final String? managerId;
  @override
  final String? location;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final DateTime? hiredAfter;
  @override
  final DateTime? hiredBefore;
  @override
  final int? page;
  @override
  final int? limit;
  @override
  final String? sortBy;
  @override
  final String? sortOrder;

  /// Create a copy of EmployeeFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EmployeeFiltersCopyWith<_EmployeeFilters> get copyWith =>
      __$EmployeeFiltersCopyWithImpl<_EmployeeFilters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EmployeeFiltersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmployeeFilters &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.managerId, managerId) ||
                other.managerId == managerId) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.hiredAfter, hiredAfter) ||
                other.hiredAfter == hiredAfter) &&
            (identical(other.hiredBefore, hiredBefore) ||
                other.hiredBefore == hiredBefore) &&
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
      department,
      position,
      managerId,
      location,
      name,
      email,
      hiredAfter,
      hiredBefore,
      page,
      limit,
      sortBy,
      sortOrder);

  @override
  String toString() {
    return 'EmployeeFilters(status: $status, department: $department, position: $position, managerId: $managerId, location: $location, name: $name, email: $email, hiredAfter: $hiredAfter, hiredBefore: $hiredBefore, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class _$EmployeeFiltersCopyWith<$Res>
    implements $EmployeeFiltersCopyWith<$Res> {
  factory _$EmployeeFiltersCopyWith(
          _EmployeeFilters value, $Res Function(_EmployeeFilters) _then) =
      __$EmployeeFiltersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? status,
      String? department,
      String? position,
      String? managerId,
      String? location,
      String? name,
      String? email,
      DateTime? hiredAfter,
      DateTime? hiredBefore,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class __$EmployeeFiltersCopyWithImpl<$Res>
    implements _$EmployeeFiltersCopyWith<$Res> {
  __$EmployeeFiltersCopyWithImpl(this._self, this._then);

  final _EmployeeFilters _self;
  final $Res Function(_EmployeeFilters) _then;

  /// Create a copy of EmployeeFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = freezed,
    Object? department = freezed,
    Object? position = freezed,
    Object? managerId = freezed,
    Object? location = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? hiredAfter = freezed,
    Object? hiredBefore = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_EmployeeFilters(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _self.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      managerId: freezed == managerId
          ? _self.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      hiredAfter: freezed == hiredAfter
          ? _self.hiredAfter
          : hiredAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      hiredBefore: freezed == hiredBefore
          ? _self.hiredBefore
          : hiredBefore // ignore: cast_nullable_to_non_nullable
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
