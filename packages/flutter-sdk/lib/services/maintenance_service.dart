import 'package:prodobit_flutter_sdk/core/api_client.dart';
import 'package:prodobit_flutter_sdk/models/models.dart';

/// Service for maintenance management operations
class MaintenanceService {
  const MaintenanceService(this._apiClient);

  final ApiClient _apiClient;

  // ==================== Maintenance Plan Operations ====================

  /// Complete maintenance record
  Future<MaintenanceRecord> completeMaintenanceRecord(
    String recordId, {
    required String performedBy,
    int? durationHours,
    String? notes,
    String? issuesFound,
    Map<String, dynamic>? partsReplaced,
    Map<String, dynamic>? materialsUsed,
  }) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/maintenance-records/$recordId/complete',
      data: {
        'performedBy': performedBy,
        if (durationHours != null) 'durationHours': durationHours,
        if (notes != null) 'notes': notes,
        if (issuesFound != null) 'issuesFound': issuesFound,
        if (partsReplaced != null) 'partsReplaced': partsReplaced,
        if (materialsUsed != null) 'materialsUsed': materialsUsed,
      },
    );

    final data = response['data'] as Map<String, dynamic>;
    return MaintenanceRecord.fromJson(data);
  }

  /// Create new maintenance plan
  Future<MaintenancePlan> createMaintenancePlan(
      CreateMaintenancePlanRequest request,) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/maintenance/plans',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return MaintenancePlan.fromJson(data);
  }

  /// Create new maintenance record
  Future<MaintenanceRecord> createMaintenanceRecord(
      CreateMaintenanceRecordRequest request,) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/maintenance-records',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return MaintenanceRecord.fromJson(data);
  }

  /// Delete maintenance plan
  Future<void> deleteMaintenancePlan(String planId,) async {
    await _apiClient.delete('/api/v1/maintenance/plans/$planId');
  }

  /// Delete maintenance record
  Future<void> deleteMaintenanceRecord(String recordId) async {
    await _apiClient.delete('/api/v1/maintenance-records/$recordId');
  }

  /// Get maintenance plan by ID
  Future<MaintenancePlan> getMaintenancePlan(String planId,) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/maintenance/plans/$planId',
    );

    final data = response['data'] as Map<String, dynamic>;
    return MaintenancePlan.fromJson(data);
  }

  // ==================== Maintenance Record Operations ====================

  /// Get all maintenance plans
  Future<List<MaintenancePlan>> getMaintenancePlans({
    QueryParams? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/maintenance/plans',
      queryParameters: query?.toQueryMap(),
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => MaintenancePlan.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Get maintenance plans by asset ID
  Future<List<MaintenancePlan>> getMaintenancePlansByAssetId(
      String assetId,) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/maintenance/plans/asset/$assetId',
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => MaintenancePlan.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Get maintenance record by ID
  Future<MaintenanceRecord> getMaintenanceRecord(String recordId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/maintenance-records/$recordId',
    );

    final data = response['data'] as Map<String, dynamic>;
    return MaintenanceRecord.fromJson(data);
  }

  /// Get all maintenance records
  Future<List<MaintenanceRecord>> getMaintenanceRecords({
    QueryParams? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/maintenance-records',
      queryParameters: query?.toQueryMap(),
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => MaintenanceRecord.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Get maintenance records by asset ID
  Future<List<MaintenanceRecord>> getMaintenanceRecordsByAssetId(
      String assetId,) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/maintenance/records/asset/$assetId',
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => MaintenanceRecord.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Get maintenance records by plan ID
  Future<List<MaintenanceRecord>> getMaintenanceRecordsByPlanId(
      String planId,) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/maintenance/records/plan/$planId',
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => MaintenanceRecord.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Update maintenance plan
  Future<MaintenancePlan> updateMaintenancePlan(
    String planId,
    UpdateMaintenancePlanRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/maintenance/plans/$planId',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return MaintenancePlan.fromJson(data);
  }

  /// Update maintenance record
  Future<MaintenanceRecord> updateMaintenanceRecord(
    String recordId,
    UpdateMaintenanceRecordRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/maintenance-records/$recordId',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return MaintenanceRecord.fromJson(data);
  }
}
