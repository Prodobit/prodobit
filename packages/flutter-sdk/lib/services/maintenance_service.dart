import 'package:prodobit_flutter_sdk/core/api_client.dart';
import 'package:prodobit_flutter_sdk/models/models.dart';

/// Service for maintenance management operations
///
/// Maintenance Types:
/// - preventive: Önleyici bakım (plan ile yönetilir)
/// - corrective: Düzeltici bakım (arıza/issue sonrası)
/// - predictive: Öngörülü bakım (AI/ML ile - gelecek)
/// - condition_based: Durum bazlı bakım (IoT/sensör ile - gelecek)
///
/// Maintenance Sources:
/// - plan: Bakım planından (preventive)
/// - issue: Arıza/Issue'dan (corrective)
/// - prediction: AI/ML tahmininden (gelecek)
/// - condition: Sensör/IoT uyarısından (gelecek)
/// - manual: Manuel oluşturma
class MaintenanceService {
  const MaintenanceService(this._apiClient);

  final ApiClient _apiClient;

  // ==================== Maintenance Plan Operations ====================
  // Not: Planlar sadece preventive bakım için oluşturulabilir

  /// Get all maintenance plans
  Future<List<MaintenancePlan>> getMaintenancePlans({
    MaintenancePlanQuery? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/maintenance/plans',
      queryParameters: query?.toJson(),
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => MaintenancePlan.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Get maintenance plan by ID
  Future<MaintenancePlan> getMaintenancePlan(String planId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/maintenance/plans/$planId',
    );

    final data = response['data'] as Map<String, dynamic>;
    return MaintenancePlan.fromJson(data);
  }

  /// Get maintenance plans by asset ID
  Future<List<MaintenancePlan>> getMaintenancePlansByAssetId(
    String assetId,
  ) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/maintenance/plans/asset/$assetId',
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => MaintenancePlan.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Get upcoming maintenance plans
  Future<List<MaintenancePlan>> getUpcomingMaintenancePlans({
    int days = 30,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/maintenance/plans/upcoming',
      queryParameters: {'days': days.toString()},
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => MaintenancePlan.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Create new maintenance plan (sadece preventive bakım için)
  Future<MaintenancePlan> createMaintenancePlan(
    CreateMaintenancePlanRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/maintenance/plans',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return MaintenancePlan.fromJson(data);
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

  /// Delete maintenance plan
  Future<void> deleteMaintenancePlan(String planId) async {
    await _apiClient.delete('/api/v1/maintenance/plans/$planId');
  }

  // ==================== Maintenance Record Operations ====================
  // Bakım kayıtları tüm tipler için oluşturulabilir

  /// Get all maintenance records with optional filters
  Future<List<MaintenanceRecord>> getMaintenanceRecords({
    MaintenanceRecordQuery? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/maintenance/records',
      queryParameters: query?.toJson(),
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => MaintenanceRecord.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Get maintenance record by ID
  Future<MaintenanceRecord> getMaintenanceRecord(String recordId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/maintenance/records/$recordId',
    );

    final data = response['data'] as Map<String, dynamic>;
    return MaintenanceRecord.fromJson(data);
  }

  /// Get maintenance records by asset ID
  Future<List<MaintenanceRecord>> getMaintenanceRecordsByAssetId(
    String assetId,
  ) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/maintenance/records/asset/$assetId',
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => MaintenanceRecord.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Get maintenance records by plan ID (preventive bakımlar)
  Future<List<MaintenanceRecord>> getMaintenanceRecordsByPlanId(
    String planId,
  ) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/maintenance/records/plan/$planId',
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => MaintenanceRecord.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Get maintenance records by issue ID (corrective bakımlar)
  Future<List<MaintenanceRecord>> getMaintenanceRecordsByIssueId(
    String issueId,
  ) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/maintenance/records',
      queryParameters: {'issueId': issueId},
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => MaintenanceRecord.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Get maintenance records by type
  Future<List<MaintenanceRecord>> getMaintenanceRecordsByType(
    MaintenanceType type,
  ) async {
    final typeString = type.name == 'conditionBased' ? 'condition_based' : type.name;
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/maintenance/records',
      queryParameters: {'type': typeString},
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => MaintenanceRecord.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Get maintenance records by source
  Future<List<MaintenanceRecord>> getMaintenanceRecordsBySource(
    MaintenanceRecordSource source,
  ) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/maintenance/records',
      queryParameters: {'source': source.name},
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => MaintenanceRecord.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Create new maintenance record (generic)
  Future<MaintenanceRecord> createMaintenanceRecord(
    CreateMaintenanceRecordRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/maintenance/records',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return MaintenanceRecord.fromJson(data);
  }

  /// Create preventive maintenance record from a plan
  Future<MaintenanceRecord> createPreventiveMaintenanceRecord(
    CreatePreventiveMaintenanceRecordRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/maintenance/records',
      data: {
        ...request.toJson(),
        'type': 'preventive',
        'source': 'plan',
        'assetId': request.maintenancePlanId, // Server tarafından plan'dan alınacak
      },
    );

    final data = response['data'] as Map<String, dynamic>;
    return MaintenanceRecord.fromJson(data);
  }

  /// Create corrective maintenance record from an issue
  Future<MaintenanceRecord> createCorrectiveMaintenanceRecord(
    CreateCorrectiveMaintenanceRecordRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/maintenance/records',
      data: {
        ...request.toJson(),
        'type': 'corrective',
        'source': 'issue',
      },
    );

    final data = response['data'] as Map<String, dynamic>;
    return MaintenanceRecord.fromJson(data);
  }

  /// Create manual maintenance record
  Future<MaintenanceRecord> createManualMaintenanceRecord(
    CreateManualMaintenanceRecordRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/maintenance/records',
      data: {
        ...request.toJson(),
        'source': 'manual',
      },
    );

    final data = response['data'] as Map<String, dynamic>;
    return MaintenanceRecord.fromJson(data);
  }

  /// Update maintenance record
  Future<MaintenanceRecord> updateMaintenanceRecord(
    String recordId,
    UpdateMaintenanceRecordRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/maintenance/records/$recordId',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return MaintenanceRecord.fromJson(data);
  }

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
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/maintenance/records/$recordId',
      data: {
        'status': 'completed',
        'completedDate': DateTime.now().toIso8601String(),
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

  /// Delete maintenance record
  Future<void> deleteMaintenanceRecord(String recordId) async {
    await _apiClient.delete('/api/v1/maintenance/records/$recordId');
  }
}
