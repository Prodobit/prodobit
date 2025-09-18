import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_models.freezed.dart';
part 'employee_models.g.dart';

/// Employee model
@freezed
class Employee with _$Employee {
  const factory Employee({
    required String id,
    required String tenantId,
    required String userId,
    required String employeeId,
    required String firstName,
    required String lastName,
    required String email,
    required String status, // 'active', 'inactive', 'suspended', 'terminated'
    required DateTime hireDate,
    required DateTime createdAt,
    required DateTime updatedAt,
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
    Map<String, dynamic>? metadata,
  }) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) => _$EmployeeFromJson(json);
}

/// Create employee request
@freezed
class CreateEmployeeRequest with _$CreateEmployeeRequest {
  const factory CreateEmployeeRequest({
    required String userId,
    required String employeeId,
    required String firstName,
    required String lastName,
    required String email,
    required DateTime hireDate,
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
    Map<String, dynamic>? metadata,
  }) = _CreateEmployeeRequest;

  factory CreateEmployeeRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateEmployeeRequestFromJson(json);
}

/// Update employee request
@freezed
class UpdateEmployeeRequest with _$UpdateEmployeeRequest {
  const factory UpdateEmployeeRequest({
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
    Map<String, dynamic>? metadata,
  }) = _UpdateEmployeeRequest;

  factory UpdateEmployeeRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateEmployeeRequestFromJson(json);
}

/// Employee filters
@freezed
class EmployeeFilters with _$EmployeeFilters {
  const factory EmployeeFilters({
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
    String? sortOrder,
  }) = _EmployeeFilters;

  factory EmployeeFilters.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFiltersFromJson(json);

  const EmployeeFilters._();

  /// Convert to query parameters map
  Map<String, dynamic> toQueryMap() {
    return {
      if (status != null) 'status': status,
      if (department != null) 'department': department,
      if (position != null) 'position': position,
      if (managerId != null) 'managerId': managerId,
      if (location != null) 'location': location,
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (hiredAfter != null) 'hiredAfter': hiredAfter!.toIso8601String(),
      if (hiredBefore != null) 'hiredBefore': hiredBefore!.toIso8601String(),
      if (page != null) 'page': page,
      if (limit != null) 'limit': limit,
      if (sortBy != null) 'sortBy': sortBy,
      if (sortOrder != null) 'sortOrder': sortOrder,
    };
  }
}