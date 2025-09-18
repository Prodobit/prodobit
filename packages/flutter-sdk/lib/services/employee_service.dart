import 'package:prodobit_flutter_sdk/core/api_client.dart';
import 'package:prodobit_flutter_sdk/models/common/common_models.dart';
import 'package:prodobit_flutter_sdk/models/employee/employee_models.dart';

class EmployeeService {
  EmployeeService(this._apiClient);

  final ApiClient _apiClient;

  /// Get all employees with optional filters
  Future<PaginatedResponse<Employee>> getEmployees({
    EmployeeFilters? filters,
  }) async {
    final queryParams = filters?.toQueryMap() ?? {};

    final response = await _apiClient.get(
      '/api/v1/employees',
      queryParameters: queryParams,
    );

    return PaginatedResponse.fromJson(
      response.data as Map<String, dynamic>,
      (data) => Employee.fromJson(data! as Map<String, dynamic>),
    );
  }

  /// Get a specific employee by ID
  Future<Employee> getEmployee(String employeeId) async {
    final response = await _apiClient.get('/api/v1/employees/$employeeId');

    return Employee.fromJson(response.data as Map<String, dynamic>);
  }

  /// Create a new employee
  Future<Employee> createEmployee(CreateEmployeeRequest request) async {
    final response = await _apiClient.post(
      '/api/v1/employees',
      data: request.toJson(),
    );

    return Employee.fromJson(response.data as Map<String, dynamic>);
  }

  /// Update an existing employee
  Future<Employee> updateEmployee(
    String employeeId,
    UpdateEmployeeRequest request,
  ) async {
    final response = await _apiClient.put(
      '/api/v1/employees/$employeeId',
      data: request.toJson(),
    );

    return Employee.fromJson(response.data as Map<String, dynamic>);
  }

  /// Delete an employee
  Future<void> deleteEmployee(String employeeId) async {
    await _apiClient.delete('/api/v1/employees/$employeeId');
  }
}
