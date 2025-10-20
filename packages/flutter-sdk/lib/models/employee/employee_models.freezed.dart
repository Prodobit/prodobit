// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Employee _$EmployeeFromJson(Map<String, dynamic> json) {
  return _Employee.fromJson(json);
}

/// @nodoc
mixin _$Employee {
  String get id => throw _privateConstructorUsedError;
  String get tenantId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get employeeId => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // 'active', 'inactive', 'suspended', 'terminated'
  DateTime get hireDate => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get department => throw _privateConstructorUsedError;
  String? get position => throw _privateConstructorUsedError;
  String? get managerId => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  double? get salary => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get workSchedule => throw _privateConstructorUsedError;
  DateTime? get birthDate => throw _privateConstructorUsedError;
  DateTime? get terminationDate => throw _privateConstructorUsedError;
  String? get terminationReason => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  Map<String, dynamic>? get personalInfo => throw _privateConstructorUsedError;
  Map<String, dynamic>? get emergencyContact =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get bankDetails => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeCopyWith<Employee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeCopyWith<$Res> {
  factory $EmployeeCopyWith(Employee value, $Res Function(Employee) then) =
      _$EmployeeCopyWithImpl<$Res, Employee>;
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
class _$EmployeeCopyWithImpl<$Res, $Val extends Employee>
    implements $EmployeeCopyWith<$Res> {
  _$EmployeeCopyWithImpl(this._value, this._then);

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
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      hireDate: null == hireDate
          ? _value.hireDate
          : hireDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      managerId: freezed == managerId
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      workSchedule: freezed == workSchedule
          ? _value.workSchedule
          : workSchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      terminationDate: freezed == terminationDate
          ? _value.terminationDate
          : terminationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      terminationReason: freezed == terminationReason
          ? _value.terminationReason
          : terminationReason // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      personalInfo: freezed == personalInfo
          ? _value.personalInfo
          : personalInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      emergencyContact: freezed == emergencyContact
          ? _value.emergencyContact
          : emergencyContact // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      bankDetails: freezed == bankDetails
          ? _value.bankDetails
          : bankDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmployeeImplCopyWith<$Res>
    implements $EmployeeCopyWith<$Res> {
  factory _$$EmployeeImplCopyWith(
          _$EmployeeImpl value, $Res Function(_$EmployeeImpl) then) =
      __$$EmployeeImplCopyWithImpl<$Res>;
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
class __$$EmployeeImplCopyWithImpl<$Res>
    extends _$EmployeeCopyWithImpl<$Res, _$EmployeeImpl>
    implements _$$EmployeeImplCopyWith<$Res> {
  __$$EmployeeImplCopyWithImpl(
      _$EmployeeImpl _value, $Res Function(_$EmployeeImpl) _then)
      : super(_value, _then);

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
    return _then(_$EmployeeImpl(
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
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      hireDate: null == hireDate
          ? _value.hireDate
          : hireDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      managerId: freezed == managerId
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      workSchedule: freezed == workSchedule
          ? _value.workSchedule
          : workSchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      terminationDate: freezed == terminationDate
          ? _value.terminationDate
          : terminationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      terminationReason: freezed == terminationReason
          ? _value.terminationReason
          : terminationReason // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      personalInfo: freezed == personalInfo
          ? _value._personalInfo
          : personalInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      emergencyContact: freezed == emergencyContact
          ? _value._emergencyContact
          : emergencyContact // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      bankDetails: freezed == bankDetails
          ? _value._bankDetails
          : bankDetails // ignore: cast_nullable_to_non_nullable
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
class _$EmployeeImpl implements _Employee {
  const _$EmployeeImpl(
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

  factory _$EmployeeImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeImplFromJson(json);

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

  @override
  String toString() {
    return 'Employee(id: $id, tenantId: $tenantId, userId: $userId, employeeId: $employeeId, firstName: $firstName, lastName: $lastName, email: $email, status: $status, hireDate: $hireDate, createdAt: $createdAt, updatedAt: $updatedAt, phone: $phone, department: $department, position: $position, managerId: $managerId, location: $location, salary: $salary, currency: $currency, workSchedule: $workSchedule, birthDate: $birthDate, terminationDate: $terminationDate, terminationReason: $terminationReason, notes: $notes, personalInfo: $personalInfo, emergencyContact: $emergencyContact, bankDetails: $bankDetails, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeImplCopyWith<_$EmployeeImpl> get copyWith =>
      __$$EmployeeImplCopyWithImpl<_$EmployeeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeImplToJson(
      this,
    );
  }
}

abstract class _Employee implements Employee {
  const factory _Employee(
      {required final String id,
      required final String tenantId,
      required final String userId,
      required final String employeeId,
      required final String firstName,
      required final String lastName,
      required final String email,
      required final String status,
      required final DateTime hireDate,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final String? phone,
      final String? department,
      final String? position,
      final String? managerId,
      final String? location,
      final double? salary,
      final String? currency,
      final String? workSchedule,
      final DateTime? birthDate,
      final DateTime? terminationDate,
      final String? terminationReason,
      final String? notes,
      final Map<String, dynamic>? personalInfo,
      final Map<String, dynamic>? emergencyContact,
      final Map<String, dynamic>? bankDetails,
      final Map<String, dynamic>? metadata}) = _$EmployeeImpl;

  factory _Employee.fromJson(Map<String, dynamic> json) =
      _$EmployeeImpl.fromJson;

  @override
  String get id;
  @override
  String get tenantId;
  @override
  String get userId;
  @override
  String get employeeId;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  String get status;
  @override // 'active', 'inactive', 'suspended', 'terminated'
  DateTime get hireDate;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String? get phone;
  @override
  String? get department;
  @override
  String? get position;
  @override
  String? get managerId;
  @override
  String? get location;
  @override
  double? get salary;
  @override
  String? get currency;
  @override
  String? get workSchedule;
  @override
  DateTime? get birthDate;
  @override
  DateTime? get terminationDate;
  @override
  String? get terminationReason;
  @override
  String? get notes;
  @override
  Map<String, dynamic>? get personalInfo;
  @override
  Map<String, dynamic>? get emergencyContact;
  @override
  Map<String, dynamic>? get bankDetails;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$EmployeeImplCopyWith<_$EmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateEmployeeRequest _$CreateEmployeeRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateEmployeeRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateEmployeeRequest {
  String get userId => throw _privateConstructorUsedError;
  String get employeeId => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  DateTime get hireDate => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get department => throw _privateConstructorUsedError;
  String? get position => throw _privateConstructorUsedError;
  String? get managerId => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  double? get salary => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get workSchedule => throw _privateConstructorUsedError;
  DateTime? get birthDate => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  Map<String, dynamic>? get personalInfo => throw _privateConstructorUsedError;
  Map<String, dynamic>? get emergencyContact =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get bankDetails => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateEmployeeRequestCopyWith<CreateEmployeeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateEmployeeRequestCopyWith<$Res> {
  factory $CreateEmployeeRequestCopyWith(CreateEmployeeRequest value,
          $Res Function(CreateEmployeeRequest) then) =
      _$CreateEmployeeRequestCopyWithImpl<$Res, CreateEmployeeRequest>;
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
class _$CreateEmployeeRequestCopyWithImpl<$Res,
        $Val extends CreateEmployeeRequest>
    implements $CreateEmployeeRequestCopyWith<$Res> {
  _$CreateEmployeeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      hireDate: null == hireDate
          ? _value.hireDate
          : hireDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      managerId: freezed == managerId
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      workSchedule: freezed == workSchedule
          ? _value.workSchedule
          : workSchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      personalInfo: freezed == personalInfo
          ? _value.personalInfo
          : personalInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      emergencyContact: freezed == emergencyContact
          ? _value.emergencyContact
          : emergencyContact // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      bankDetails: freezed == bankDetails
          ? _value.bankDetails
          : bankDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateEmployeeRequestImplCopyWith<$Res>
    implements $CreateEmployeeRequestCopyWith<$Res> {
  factory _$$CreateEmployeeRequestImplCopyWith(
          _$CreateEmployeeRequestImpl value,
          $Res Function(_$CreateEmployeeRequestImpl) then) =
      __$$CreateEmployeeRequestImplCopyWithImpl<$Res>;
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
class __$$CreateEmployeeRequestImplCopyWithImpl<$Res>
    extends _$CreateEmployeeRequestCopyWithImpl<$Res,
        _$CreateEmployeeRequestImpl>
    implements _$$CreateEmployeeRequestImplCopyWith<$Res> {
  __$$CreateEmployeeRequestImplCopyWithImpl(_$CreateEmployeeRequestImpl _value,
      $Res Function(_$CreateEmployeeRequestImpl) _then)
      : super(_value, _then);

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
    return _then(_$CreateEmployeeRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      hireDate: null == hireDate
          ? _value.hireDate
          : hireDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      managerId: freezed == managerId
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      workSchedule: freezed == workSchedule
          ? _value.workSchedule
          : workSchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      personalInfo: freezed == personalInfo
          ? _value._personalInfo
          : personalInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      emergencyContact: freezed == emergencyContact
          ? _value._emergencyContact
          : emergencyContact // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      bankDetails: freezed == bankDetails
          ? _value._bankDetails
          : bankDetails // ignore: cast_nullable_to_non_nullable
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
class _$CreateEmployeeRequestImpl implements _CreateEmployeeRequest {
  const _$CreateEmployeeRequestImpl(
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

  factory _$CreateEmployeeRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateEmployeeRequestImplFromJson(json);

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

  @override
  String toString() {
    return 'CreateEmployeeRequest(userId: $userId, employeeId: $employeeId, firstName: $firstName, lastName: $lastName, email: $email, hireDate: $hireDate, phone: $phone, department: $department, position: $position, managerId: $managerId, location: $location, salary: $salary, currency: $currency, workSchedule: $workSchedule, birthDate: $birthDate, notes: $notes, personalInfo: $personalInfo, emergencyContact: $emergencyContact, bankDetails: $bankDetails, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateEmployeeRequestImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateEmployeeRequestImplCopyWith<_$CreateEmployeeRequestImpl>
      get copyWith => __$$CreateEmployeeRequestImplCopyWithImpl<
          _$CreateEmployeeRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateEmployeeRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateEmployeeRequest implements CreateEmployeeRequest {
  const factory _CreateEmployeeRequest(
      {required final String userId,
      required final String employeeId,
      required final String firstName,
      required final String lastName,
      required final String email,
      required final DateTime hireDate,
      final String? phone,
      final String? department,
      final String? position,
      final String? managerId,
      final String? location,
      final double? salary,
      final String? currency,
      final String? workSchedule,
      final DateTime? birthDate,
      final String? notes,
      final Map<String, dynamic>? personalInfo,
      final Map<String, dynamic>? emergencyContact,
      final Map<String, dynamic>? bankDetails,
      final Map<String, dynamic>? metadata}) = _$CreateEmployeeRequestImpl;

  factory _CreateEmployeeRequest.fromJson(Map<String, dynamic> json) =
      _$CreateEmployeeRequestImpl.fromJson;

  @override
  String get userId;
  @override
  String get employeeId;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  DateTime get hireDate;
  @override
  String? get phone;
  @override
  String? get department;
  @override
  String? get position;
  @override
  String? get managerId;
  @override
  String? get location;
  @override
  double? get salary;
  @override
  String? get currency;
  @override
  String? get workSchedule;
  @override
  DateTime? get birthDate;
  @override
  String? get notes;
  @override
  Map<String, dynamic>? get personalInfo;
  @override
  Map<String, dynamic>? get emergencyContact;
  @override
  Map<String, dynamic>? get bankDetails;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$CreateEmployeeRequestImplCopyWith<_$CreateEmployeeRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateEmployeeRequest _$UpdateEmployeeRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateEmployeeRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateEmployeeRequest {
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get department => throw _privateConstructorUsedError;
  String? get position => throw _privateConstructorUsedError;
  String? get managerId => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  double? get salary => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get workSchedule => throw _privateConstructorUsedError;
  DateTime? get birthDate => throw _privateConstructorUsedError;
  DateTime? get terminationDate => throw _privateConstructorUsedError;
  String? get terminationReason => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  Map<String, dynamic>? get personalInfo => throw _privateConstructorUsedError;
  Map<String, dynamic>? get emergencyContact =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get bankDetails => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateEmployeeRequestCopyWith<UpdateEmployeeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateEmployeeRequestCopyWith<$Res> {
  factory $UpdateEmployeeRequestCopyWith(UpdateEmployeeRequest value,
          $Res Function(UpdateEmployeeRequest) then) =
      _$UpdateEmployeeRequestCopyWithImpl<$Res, UpdateEmployeeRequest>;
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
class _$UpdateEmployeeRequestCopyWithImpl<$Res,
        $Val extends UpdateEmployeeRequest>
    implements $UpdateEmployeeRequestCopyWith<$Res> {
  _$UpdateEmployeeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      managerId: freezed == managerId
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      workSchedule: freezed == workSchedule
          ? _value.workSchedule
          : workSchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      terminationDate: freezed == terminationDate
          ? _value.terminationDate
          : terminationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      terminationReason: freezed == terminationReason
          ? _value.terminationReason
          : terminationReason // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      personalInfo: freezed == personalInfo
          ? _value.personalInfo
          : personalInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      emergencyContact: freezed == emergencyContact
          ? _value.emergencyContact
          : emergencyContact // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      bankDetails: freezed == bankDetails
          ? _value.bankDetails
          : bankDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateEmployeeRequestImplCopyWith<$Res>
    implements $UpdateEmployeeRequestCopyWith<$Res> {
  factory _$$UpdateEmployeeRequestImplCopyWith(
          _$UpdateEmployeeRequestImpl value,
          $Res Function(_$UpdateEmployeeRequestImpl) then) =
      __$$UpdateEmployeeRequestImplCopyWithImpl<$Res>;
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
class __$$UpdateEmployeeRequestImplCopyWithImpl<$Res>
    extends _$UpdateEmployeeRequestCopyWithImpl<$Res,
        _$UpdateEmployeeRequestImpl>
    implements _$$UpdateEmployeeRequestImplCopyWith<$Res> {
  __$$UpdateEmployeeRequestImplCopyWithImpl(_$UpdateEmployeeRequestImpl _value,
      $Res Function(_$UpdateEmployeeRequestImpl) _then)
      : super(_value, _then);

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
    return _then(_$UpdateEmployeeRequestImpl(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      managerId: freezed == managerId
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      workSchedule: freezed == workSchedule
          ? _value.workSchedule
          : workSchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      terminationDate: freezed == terminationDate
          ? _value.terminationDate
          : terminationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      terminationReason: freezed == terminationReason
          ? _value.terminationReason
          : terminationReason // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      personalInfo: freezed == personalInfo
          ? _value._personalInfo
          : personalInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      emergencyContact: freezed == emergencyContact
          ? _value._emergencyContact
          : emergencyContact // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      bankDetails: freezed == bankDetails
          ? _value._bankDetails
          : bankDetails // ignore: cast_nullable_to_non_nullable
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
class _$UpdateEmployeeRequestImpl implements _UpdateEmployeeRequest {
  const _$UpdateEmployeeRequestImpl(
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

  factory _$UpdateEmployeeRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateEmployeeRequestImplFromJson(json);

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

  @override
  String toString() {
    return 'UpdateEmployeeRequest(firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, department: $department, position: $position, managerId: $managerId, location: $location, status: $status, salary: $salary, currency: $currency, workSchedule: $workSchedule, birthDate: $birthDate, terminationDate: $terminationDate, terminationReason: $terminationReason, notes: $notes, personalInfo: $personalInfo, emergencyContact: $emergencyContact, bankDetails: $bankDetails, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEmployeeRequestImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateEmployeeRequestImplCopyWith<_$UpdateEmployeeRequestImpl>
      get copyWith => __$$UpdateEmployeeRequestImplCopyWithImpl<
          _$UpdateEmployeeRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateEmployeeRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateEmployeeRequest implements UpdateEmployeeRequest {
  const factory _UpdateEmployeeRequest(
      {final String? firstName,
      final String? lastName,
      final String? email,
      final String? phone,
      final String? department,
      final String? position,
      final String? managerId,
      final String? location,
      final String? status,
      final double? salary,
      final String? currency,
      final String? workSchedule,
      final DateTime? birthDate,
      final DateTime? terminationDate,
      final String? terminationReason,
      final String? notes,
      final Map<String, dynamic>? personalInfo,
      final Map<String, dynamic>? emergencyContact,
      final Map<String, dynamic>? bankDetails,
      final Map<String, dynamic>? metadata}) = _$UpdateEmployeeRequestImpl;

  factory _UpdateEmployeeRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateEmployeeRequestImpl.fromJson;

  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get department;
  @override
  String? get position;
  @override
  String? get managerId;
  @override
  String? get location;
  @override
  String? get status;
  @override
  double? get salary;
  @override
  String? get currency;
  @override
  String? get workSchedule;
  @override
  DateTime? get birthDate;
  @override
  DateTime? get terminationDate;
  @override
  String? get terminationReason;
  @override
  String? get notes;
  @override
  Map<String, dynamic>? get personalInfo;
  @override
  Map<String, dynamic>? get emergencyContact;
  @override
  Map<String, dynamic>? get bankDetails;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$UpdateEmployeeRequestImplCopyWith<_$UpdateEmployeeRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EmployeeFilters _$EmployeeFiltersFromJson(Map<String, dynamic> json) {
  return _EmployeeFilters.fromJson(json);
}

/// @nodoc
mixin _$EmployeeFilters {
  String? get status => throw _privateConstructorUsedError;
  String? get department => throw _privateConstructorUsedError;
  String? get position => throw _privateConstructorUsedError;
  String? get managerId => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  DateTime? get hiredAfter => throw _privateConstructorUsedError;
  DateTime? get hiredBefore => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String? get sortBy => throw _privateConstructorUsedError;
  String? get sortOrder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeFiltersCopyWith<EmployeeFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeFiltersCopyWith<$Res> {
  factory $EmployeeFiltersCopyWith(
          EmployeeFilters value, $Res Function(EmployeeFilters) then) =
      _$EmployeeFiltersCopyWithImpl<$Res, EmployeeFilters>;
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
class _$EmployeeFiltersCopyWithImpl<$Res, $Val extends EmployeeFilters>
    implements $EmployeeFiltersCopyWith<$Res> {
  _$EmployeeFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      managerId: freezed == managerId
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      hiredAfter: freezed == hiredAfter
          ? _value.hiredAfter
          : hiredAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      hiredBefore: freezed == hiredBefore
          ? _value.hiredBefore
          : hiredBefore // ignore: cast_nullable_to_non_nullable
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
abstract class _$$EmployeeFiltersImplCopyWith<$Res>
    implements $EmployeeFiltersCopyWith<$Res> {
  factory _$$EmployeeFiltersImplCopyWith(_$EmployeeFiltersImpl value,
          $Res Function(_$EmployeeFiltersImpl) then) =
      __$$EmployeeFiltersImplCopyWithImpl<$Res>;
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
class __$$EmployeeFiltersImplCopyWithImpl<$Res>
    extends _$EmployeeFiltersCopyWithImpl<$Res, _$EmployeeFiltersImpl>
    implements _$$EmployeeFiltersImplCopyWith<$Res> {
  __$$EmployeeFiltersImplCopyWithImpl(
      _$EmployeeFiltersImpl _value, $Res Function(_$EmployeeFiltersImpl) _then)
      : super(_value, _then);

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
    return _then(_$EmployeeFiltersImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      managerId: freezed == managerId
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      hiredAfter: freezed == hiredAfter
          ? _value.hiredAfter
          : hiredAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      hiredBefore: freezed == hiredBefore
          ? _value.hiredBefore
          : hiredBefore // ignore: cast_nullable_to_non_nullable
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
class _$EmployeeFiltersImpl extends _EmployeeFilters {
  const _$EmployeeFiltersImpl(
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

  factory _$EmployeeFiltersImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeFiltersImplFromJson(json);

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

  @override
  String toString() {
    return 'EmployeeFilters(status: $status, department: $department, position: $position, managerId: $managerId, location: $location, name: $name, email: $email, hiredAfter: $hiredAfter, hiredBefore: $hiredBefore, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeFiltersImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeFiltersImplCopyWith<_$EmployeeFiltersImpl> get copyWith =>
      __$$EmployeeFiltersImplCopyWithImpl<_$EmployeeFiltersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeFiltersImplToJson(
      this,
    );
  }
}

abstract class _EmployeeFilters extends EmployeeFilters {
  const factory _EmployeeFilters(
      {final String? status,
      final String? department,
      final String? position,
      final String? managerId,
      final String? location,
      final String? name,
      final String? email,
      final DateTime? hiredAfter,
      final DateTime? hiredBefore,
      final int? page,
      final int? limit,
      final String? sortBy,
      final String? sortOrder}) = _$EmployeeFiltersImpl;
  const _EmployeeFilters._() : super._();

  factory _EmployeeFilters.fromJson(Map<String, dynamic> json) =
      _$EmployeeFiltersImpl.fromJson;

  @override
  String? get status;
  @override
  String? get department;
  @override
  String? get position;
  @override
  String? get managerId;
  @override
  String? get location;
  @override
  String? get name;
  @override
  String? get email;
  @override
  DateTime? get hiredAfter;
  @override
  DateTime? get hiredBefore;
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
  _$$EmployeeFiltersImplCopyWith<_$EmployeeFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
