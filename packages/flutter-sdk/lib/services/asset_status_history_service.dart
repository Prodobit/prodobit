import 'package:prodobit_flutter_sdk/core/api_client.dart';
import 'package:prodobit_flutter_sdk/models/models.dart';

/// Service for asset status history operations
class AssetStatusHistoryService {
  const AssetStatusHistoryService(this._apiClient);

  final ApiClient _apiClient;

  /// Get all asset status history with optional filters
  Future<List<AssetStatusHistory>> getAssetStatusHistory({
    String? assetId,
    String? status,
    String? changeReason,
    String? changedById,
    String? fromDate,
    String? toDate,
  }) async {
    final queryParams = <String, String>{};
    if (assetId != null) queryParams['assetId'] = assetId;
    if (status != null) queryParams['status'] = status;
    if (changeReason != null) queryParams['changeReason'] = changeReason;
    if (changedById != null) queryParams['changedById'] = changedById;
    if (fromDate != null) queryParams['fromDate'] = fromDate;
    if (toDate != null) queryParams['toDate'] = toDate;

    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/asset-status-history',
      queryParameters: queryParams.isEmpty ? null : queryParams,
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map(
          (json) => AssetStatusHistory.fromJson(json as Map<String, dynamic>),
        )
        .toList();
  }

  /// Get asset status history by ID
  Future<AssetStatusHistory> getStatusHistoryById(String historyId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/asset-status-history/$historyId',
    );

    final data = response['data'] as Map<String, dynamic>;
    return AssetStatusHistory.fromJson(data);
  }

  /// Get status history by asset
  Future<List<AssetStatusHistory>> getHistoryByAsset(String assetId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/asset-status-history/asset/$assetId',
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map(
          (json) => AssetStatusHistory.fromJson(json as Map<String, dynamic>),
        )
        .toList();
  }

  /// Get lifecycle summary for an asset
  Future<AssetLifecycleSummary> getAssetLifecycleSummary(String assetId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/asset-status-history/asset/$assetId/lifecycle',
    );

    final data = response['data'] as Map<String, dynamic>;
    return AssetLifecycleSummary.fromJson(data);
  }

  /// Update asset status (creates history)
  Future<AssetStatusHistory> updateAssetStatus(
    String assetId,
    UpdateAssetStatusRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/asset-status-history/asset/$assetId/status',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return AssetStatusHistory.fromJson(data);
  }

  /// Get assets by status
  Future<List<StatusHistoryAssetInfo>> getAssetsByStatus(String status) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/asset-status-history/by-status/$status',
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map(
          (json) =>
              StatusHistoryAssetInfo.fromJson(json as Map<String, dynamic>),
        )
        .toList();
  }
}
