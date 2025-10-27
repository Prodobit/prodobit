import 'package:prodobit_flutter_sdk/core/api_client.dart';
import 'package:prodobit_flutter_sdk/models/employee/employee_models.dart';

class EmployeeService {
  EmployeeService(this._apiClient);

  final ApiClient _apiClient;

  /// Get all employees with optional filters
  Future<List<Employee>> getEmployees({
    EmployeeFilters? filters,
  }) async {
    final queryParams = filters?.toQueryMap() ?? {};

    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/employees',
      queryParameters: queryParams,
    );

    final data = response['data'] as List<dynamic>;
    return data.map((json) => Employee.fromJson(json as Map<String, dynamic>)).toList();
  }

  /// Get a specific employee by ID
  Future<Employee> getEmployee(String employeeId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/employees/$employeeId',
    );

    final data = response['data'] as Map<String, dynamic>;
    return Employee.fromJson(data);
  }

  /// Create a new employee
  Future<Employee> createEmployee(CreateEmployeeRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/employees',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return Employee.fromJson(data);
  }

  /// Update an existing employee
  Future<Employee> updateEmployee(
    String employeeId,
    UpdateEmployeeRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/employees/$employeeId',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return Employee.fromJson(data);
  }

  /// Delete an employee
  Future<void> deleteEmployee(String employeeId) async {
    await _apiClient.delete('/api/v1/employees/$employeeId');
  }
}
