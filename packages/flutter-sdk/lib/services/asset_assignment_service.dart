import 'package:prodobit_flutter_sdk/core/api_client.dart';
import 'package:prodobit_flutter_sdk/models/models.dart';

/// Service for asset assignment operations (zimmet)
class AssetAssignmentService {
  const AssetAssignmentService(this._apiClient);

  final ApiClient _apiClient;

  // ==================== Assignment CRUD Operations ====================

  /// Create new asset assignment
  Future<AssetAssignment> createAssignment(
    CreateAssetAssignmentRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/assignments',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return AssetAssignment.fromJson(data);
  }

  /// Get assignment by ID
  Future<AssetAssignment> getAssignment(String assignmentId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/assignments/$assignmentId',
    );

    final data = response['data'] as Map<String, dynamic>;
    return AssetAssignment.fromJson(data);
  }

  /// Get all assignments with optional filtering
  Future<List<AssetAssignment>> getAssignments({
    String? assetId,
    String? assignedTo,
    String? assignedType,
    String? status,
  }) async {
    final queryParameters = <String, dynamic>{};
    if (assetId != null) queryParameters['assetId'] = assetId;
    if (assignedTo != null) queryParameters['assignedTo'] = assignedTo;
    if (assignedType != null) queryParameters['assignedType'] = assignedType;
    if (status != null) queryParameters['status'] = status;

    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/assignments',
      queryParameters: queryParameters,
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => AssetAssignment.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Get assignment history for an asset
  Future<List<AssetAssignment>> getAssetAssignmentHistory(
    String assetId,
  ) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/assignments/asset/$assetId/history',
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => AssetAssignment.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Get active assignments for a user/department/location
  Future<List<AssetAssignment>> getActiveAssignments(String assignedTo) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/assignments/active/$assignedTo',
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => AssetAssignment.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Update assignment
  Future<AssetAssignment> updateAssignment(
    String assignmentId,
    UpdateAssetAssignmentRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/assignments/$assignmentId',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return AssetAssignment.fromJson(data);
  }

  /// Delete assignment
  Future<void> deleteAssignment(String assignmentId) async {
    await _apiClient.delete('/api/v1/assignments/$assignmentId');
  }

  // ==================== Assignment Actions ====================

  /// Return an assignment
  Future<AssetAssignment> returnAssignment(
    String assignmentId, {
    String? returnCondition,
  }) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/assignments/$assignmentId/return',
      data: {
        if (returnCondition != null) 'returnCondition': returnCondition,
      },
    );

    final data = response['data'] as Map<String, dynamic>;
    return AssetAssignment.fromJson(data);
  }

  /// Transfer an assignment to another user/department/location
  Future<AssetAssignment> transferAssignment(
    String assignmentId,
    TransferAssignmentRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/assignments/$assignmentId/transfer',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return AssetAssignment.fromJson(data);
  }
}
