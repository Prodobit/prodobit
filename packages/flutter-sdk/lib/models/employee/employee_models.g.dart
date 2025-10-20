// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeImpl _$$EmployeeImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EmployeeImpl',
      json,
      ($checkedConvert) {
        final val = _$EmployeeImpl(
          id: $checkedConvert('id', (v) => v as String),
          tenantId: $checkedConvert('tenantId', (v) => v as String),
          userId: $checkedConvert('userId', (v) => v as String),
          employeeId: $checkedConvert('employeeId', (v) => v as String),
          firstName: $checkedConvert('firstName', (v) => v as String),
          lastName: $checkedConvert('lastName', (v) => v as String),
          email: $checkedConvert('email', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          hireDate:
              $checkedConvert('hireDate', (v) => DateTime.parse(v as String)),
          createdAt:
              $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
          updatedAt:
              $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
          phone: $checkedConvert('phone', (v) => v as String?),
          department: $checkedConvert('department', (v) => v as String?),
          position: $checkedConvert('position', (v) => v as String?),
          managerId: $checkedConvert('managerId', (v) => v as String?),
          location: $checkedConvert('location', (v) => v as String?),
          salary: $checkedConvert('salary', (v) => (v as num?)?.toDouble()),
          currency: $checkedConvert('currency', (v) => v as String?),
          workSchedule: $checkedConvert('workSchedule', (v) => v as String?),
          birthDate: $checkedConvert('birthDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          terminationDate: $checkedConvert('terminationDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          terminationReason:
              $checkedConvert('terminationReason', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          personalInfo: $checkedConvert(
              'personalInfo', (v) => v as Map<String, dynamic>?),
          emergencyContact: $checkedConvert(
              'emergencyContact', (v) => v as Map<String, dynamic>?),
          bankDetails:
              $checkedConvert('bankDetails', (v) => v as Map<String, dynamic>?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$EmployeeImplToJson(_$EmployeeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tenantId': instance.tenantId,
      'userId': instance.userId,
      'employeeId': instance.employeeId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'status': instance.status,
      'hireDate': instance.hireDate.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'phone': instance.phone,
      'department': instance.department,
      'position': instance.position,
      'managerId': instance.managerId,
      'location': instance.location,
      'salary': instance.salary,
      'currency': instance.currency,
      'workSchedule': instance.workSchedule,
      'birthDate': instance.birthDate?.toIso8601String(),
      'terminationDate': instance.terminationDate?.toIso8601String(),
      'terminationReason': instance.terminationReason,
      'notes': instance.notes,
      'personalInfo': instance.personalInfo,
      'emergencyContact': instance.emergencyContact,
      'bankDetails': instance.bankDetails,
      'metadata': instance.metadata,
    };

_$CreateEmployeeRequestImpl _$$CreateEmployeeRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CreateEmployeeRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$CreateEmployeeRequestImpl(
          userId: $checkedConvert('userId', (v) => v as String),
          employeeId: $checkedConvert('employeeId', (v) => v as String),
          firstName: $checkedConvert('firstName', (v) => v as String),
          lastName: $checkedConvert('lastName', (v) => v as String),
          email: $checkedConvert('email', (v) => v as String),
          hireDate:
              $checkedConvert('hireDate', (v) => DateTime.parse(v as String)),
          phone: $checkedConvert('phone', (v) => v as String?),
          department: $checkedConvert('department', (v) => v as String?),
          position: $checkedConvert('position', (v) => v as String?),
          managerId: $checkedConvert('managerId', (v) => v as String?),
          location: $checkedConvert('location', (v) => v as String?),
          salary: $checkedConvert('salary', (v) => (v as num?)?.toDouble()),
          currency: $checkedConvert('currency', (v) => v as String?),
          workSchedule: $checkedConvert('workSchedule', (v) => v as String?),
          birthDate: $checkedConvert('birthDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          notes: $checkedConvert('notes', (v) => v as String?),
          personalInfo: $checkedConvert(
              'personalInfo', (v) => v as Map<String, dynamic>?),
          emergencyContact: $checkedConvert(
              'emergencyContact', (v) => v as Map<String, dynamic>?),
          bankDetails:
              $checkedConvert('bankDetails', (v) => v as Map<String, dynamic>?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CreateEmployeeRequestImplToJson(
        _$CreateEmployeeRequestImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'employeeId': instance.employeeId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'hireDate': instance.hireDate.toIso8601String(),
      'phone': instance.phone,
      'department': instance.department,
      'position': instance.position,
      'managerId': instance.managerId,
      'location': instance.location,
      'salary': instance.salary,
      'currency': instance.currency,
      'workSchedule': instance.workSchedule,
      'birthDate': instance.birthDate?.toIso8601String(),
      'notes': instance.notes,
      'personalInfo': instance.personalInfo,
      'emergencyContact': instance.emergencyContact,
      'bankDetails': instance.bankDetails,
      'metadata': instance.metadata,
    };

_$UpdateEmployeeRequestImpl _$$UpdateEmployeeRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$UpdateEmployeeRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$UpdateEmployeeRequestImpl(
          firstName: $checkedConvert('firstName', (v) => v as String?),
          lastName: $checkedConvert('lastName', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
          phone: $checkedConvert('phone', (v) => v as String?),
          department: $checkedConvert('department', (v) => v as String?),
          position: $checkedConvert('position', (v) => v as String?),
          managerId: $checkedConvert('managerId', (v) => v as String?),
          location: $checkedConvert('location', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          salary: $checkedConvert('salary', (v) => (v as num?)?.toDouble()),
          currency: $checkedConvert('currency', (v) => v as String?),
          workSchedule: $checkedConvert('workSchedule', (v) => v as String?),
          birthDate: $checkedConvert('birthDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          terminationDate: $checkedConvert('terminationDate',
              (v) => v == null ? null : DateTime.parse(v as String)),
          terminationReason:
              $checkedConvert('terminationReason', (v) => v as String?),
          notes: $checkedConvert('notes', (v) => v as String?),
          personalInfo: $checkedConvert(
              'personalInfo', (v) => v as Map<String, dynamic>?),
          emergencyContact: $checkedConvert(
              'emergencyContact', (v) => v as Map<String, dynamic>?),
          bankDetails:
              $checkedConvert('bankDetails', (v) => v as Map<String, dynamic>?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$UpdateEmployeeRequestImplToJson(
        _$UpdateEmployeeRequestImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'department': instance.department,
      'position': instance.position,
      'managerId': instance.managerId,
      'location': instance.location,
      'status': instance.status,
      'salary': instance.salary,
      'currency': instance.currency,
      'workSchedule': instance.workSchedule,
      'birthDate': instance.birthDate?.toIso8601String(),
      'terminationDate': instance.terminationDate?.toIso8601String(),
      'terminationReason': instance.terminationReason,
      'notes': instance.notes,
      'personalInfo': instance.personalInfo,
      'emergencyContact': instance.emergencyContact,
      'bankDetails': instance.bankDetails,
      'metadata': instance.metadata,
    };

_$EmployeeFiltersImpl _$$EmployeeFiltersImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EmployeeFiltersImpl',
      json,
      ($checkedConvert) {
        final val = _$EmployeeFiltersImpl(
          status: $checkedConvert('status', (v) => v as String?),
          department: $checkedConvert('department', (v) => v as String?),
          position: $checkedConvert('position', (v) => v as String?),
          managerId: $checkedConvert('managerId', (v) => v as String?),
          location: $checkedConvert('location', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
          hiredAfter: $checkedConvert('hiredAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          hiredBefore: $checkedConvert('hiredBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          page: $checkedConvert('page', (v) => (v as num?)?.toInt()),
          limit: $checkedConvert('limit', (v) => (v as num?)?.toInt()),
          sortBy: $checkedConvert('sortBy', (v) => v as String?),
          sortOrder: $checkedConvert('sortOrder', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$EmployeeFiltersImplToJson(
        _$EmployeeFiltersImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'department': instance.department,
      'position': instance.position,
      'managerId': instance.managerId,
      'location': instance.location,
      'name': instance.name,
      'email': instance.email,
      'hiredAfter': instance.hiredAfter?.toIso8601String(),
      'hiredBefore': instance.hiredBefore?.toIso8601String(),
      'page': instance.page,
      'limit': instance.limit,
      'sortBy': instance.sortBy,
      'sortOrder': instance.sortOrder,
    };
