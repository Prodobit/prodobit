import 'package:prodobit_flutter_sdk/core/api_client.dart';
import 'package:prodobit_flutter_sdk/models/models.dart';

/// Service for maintenance plan trigger operations
class MaintenanceTriggerService {
  const MaintenanceTriggerService(this._apiClient);

  final ApiClient _apiClient;

  /// Get all maintenance plan triggers with optional filters
  Future<List<MaintenancePlanTrigger>> getTriggers({
    String? maintenancePlanId,
    String? triggerType,
    String? meterId,
    bool? isActive,
  }) async {
    final queryParams = <String, String>{};
    if (maintenancePlanId != null) {
      queryParams['maintenancePlanId'] = maintenancePlanId;
    }
    if (triggerType != null) queryParams['triggerType'] = triggerType;
    if (meterId != null) queryParams['meterId'] = meterId;
    if (isActive != null) queryParams['isActive'] = isActive.toString();

    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/maintenance-plan-triggers',
      queryParameters: queryParams.isEmpty ? null : queryParams,
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map(
          (json) =>
              MaintenancePlanTrigger.fromJson(json as Map<String, dynamic>),
        )
        .toList();
  }

  /// Get trigger by ID
  Future<MaintenancePlanTrigger> getTrigger(String triggerId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/maintenance-plan-triggers/$triggerId',
    );

    final data = response['data'] as Map<String, dynamic>;
    return MaintenancePlanTrigger.fromJson(data);
  }

  /// Get due triggers
  Future<List<DueTrigger>> getDueTriggers() async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/maintenance-plan-triggers/due',
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => DueTrigger.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Create new trigger
  Future<MaintenancePlanTrigger> createTrigger(
    CreateMaintenancePlanTriggerRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/maintenance-plan-triggers',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return MaintenancePlanTrigger.fromJson(data);
  }

  /// Update trigger
  Future<MaintenancePlanTrigger> updateTrigger(
    String triggerId,
    UpdateMaintenancePlanTriggerRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/maintenance-plan-triggers/$triggerId',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return MaintenancePlanTrigger.fromJson(data);
  }

  /// Delete trigger
  Future<void> deleteTrigger(String triggerId) async {
    await _apiClient.delete('/api/v1/maintenance-plan-triggers/$triggerId');
  }

  /// Mark trigger as triggered
  Future<MaintenancePlanTrigger> markTriggered(
    String triggerId, {
    double? currentMeterReading,
  }) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/maintenance-plan-triggers/$triggerId/triggered',
      data: currentMeterReading != null
          ? {'currentMeterReading': currentMeterReading}
          : null,
    );

    final data = response['data'] as Map<String, dynamic>;
    return MaintenancePlanTrigger.fromJson(data);
  }
}
