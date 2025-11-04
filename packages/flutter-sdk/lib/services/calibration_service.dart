import 'package:prodobit_flutter_sdk/core/api_client.dart';
import 'package:prodobit_flutter_sdk/models/models.dart';

/// Service for calibration management operations
class CalibrationService {
  const CalibrationService(this._apiClient);

  final ApiClient _apiClient;

  // ==================== Calibration Plan Operations ====================

  /// Complete calibration record
  Future<CalibrationRecord> completeCalibrationRecord(
    String recordId, {
    required String performedBy,
    required String calibrationResult,
    int? durationHours,
    Map<String, dynamic>? beforeCalibrationValues,
    Map<String, dynamic>? afterCalibrationValues,
    Map<String, dynamic>? deviationValues,
    String? adjustmentsMade,
    String? notes,
    String? certificateNumber,
    DateTime? certificateIssueDate,
    DateTime? certificateExpiryDate,
  }) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/calibration-records/$recordId/complete',
      data: {
        'performedBy': performedBy,
        'calibrationResult': calibrationResult,
        if (durationHours != null) 'durationHours': durationHours,
        if (beforeCalibrationValues != null)
          'beforeCalibrationValues': beforeCalibrationValues,
        if (afterCalibrationValues != null)
          'afterCalibrationValues': afterCalibrationValues,
        if (deviationValues != null) 'deviationValues': deviationValues,
        if (adjustmentsMade != null) 'adjustmentsMade': adjustmentsMade,
        if (notes != null) 'notes': notes,
        if (certificateNumber != null) 'certificateNumber': certificateNumber,
        if (certificateIssueDate != null)
          'certificateIssueDate': certificateIssueDate.toIso8601String(),
        if (certificateExpiryDate != null)
          'certificateExpiryDate': certificateExpiryDate.toIso8601String(),
      },
    );

    final data = response['data'] as Map<String, dynamic>;
    return CalibrationRecord.fromJson(data);
  }

  /// Create new calibration plan
  Future<CalibrationPlan> createCalibrationPlan(
      CreateCalibrationPlanRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/calibration',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return CalibrationPlan.fromJson(data);
  }

  /// Create new calibration record
  Future<CalibrationRecord> createCalibrationRecord(
      CreateCalibrationRecordRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/calibration-records',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return CalibrationRecord.fromJson(data);
  }

  /// Delete calibration plan
  Future<void> deleteCalibrationPlan(String planId) async {
    await _apiClient.delete('/api/v1/calibration/$planId');
  }

  /// Delete calibration record
  Future<void> deleteCalibrationRecord(String recordId) async {
    await _apiClient.delete('/api/v1/calibration-records/$recordId');
  }

  /// Get calibration plan by ID
  Future<CalibrationPlan> getCalibrationPlan(String planId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/calibration/$planId',
    );

    final data = response['data'] as Map<String, dynamic>;
    return CalibrationPlan.fromJson(data);
  }

  // ==================== Calibration Record Operations ====================

  /// Get all calibration plans
  Future<List<CalibrationPlan>> getCalibrationPlans({
    QueryParams? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/calibration',
      queryParameters: query?.toQueryMap(),
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => CalibrationPlan.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Get calibration plans by asset ID
  Future<List<CalibrationPlan>> getCalibrationPlansByAssetId(
      String assetId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/assets/$assetId/calibration-plans',
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => CalibrationPlan.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Get calibration record by ID
  Future<CalibrationRecord> getCalibrationRecord(String recordId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/calibration-records/$recordId',
    );

    final data = response['data'] as Map<String, dynamic>;
    return CalibrationRecord.fromJson(data);
  }

  /// Get all calibration records
  Future<List<CalibrationRecord>> getCalibrationRecords({
    QueryParams? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/calibration-records',
      queryParameters: query?.toQueryMap(),
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => CalibrationRecord.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Get calibration records by asset ID
  Future<List<CalibrationRecord>> getCalibrationRecordsByAssetId(
      String assetId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/assets/$assetId/calibration-records',
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => CalibrationRecord.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Get calibration records by plan ID
  Future<List<CalibrationRecord>> getCalibrationRecordsByPlanId(
      String planId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/calibration/$planId/records',
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => CalibrationRecord.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Update calibration plan
  Future<CalibrationPlan> updateCalibrationPlan(
    String planId,
    UpdateCalibrationPlanRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/calibration/$planId',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return CalibrationPlan.fromJson(data);
  }

  /// Update calibration record
  Future<CalibrationRecord> updateCalibrationRecord(
    String recordId,
    UpdateCalibrationRecordRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/calibration-records/$recordId',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return CalibrationRecord.fromJson(data);
  }
}
