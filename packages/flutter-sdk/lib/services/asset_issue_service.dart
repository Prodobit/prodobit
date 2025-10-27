import 'package:prodobit_flutter_sdk/core/api_client.dart';
import 'package:prodobit_flutter_sdk/models/models.dart';

/// Service for asset issue management operations
class AssetIssueService {
  const AssetIssueService(this._apiClient);

  final ApiClient _apiClient;

  /// Create new asset issue
  Future<AssetIssue> createAssetIssue(CreateAssetIssueRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/asset-issues',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return AssetIssue.fromJson(data);
  }

  /// Get asset issue by ID
  Future<AssetIssue> getAssetIssue(String issueId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/asset-issues/$issueId',
    );

    final data = response['data'] as Map<String, dynamic>;
    return AssetIssue.fromJson(data);
  }

  /// Get all asset issues
  Future<List<AssetIssue>> getAssetIssues({
    QueryParams? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/asset-issues',
      queryParameters: query?.toQueryMap(),
    );

    final data = response['data'] as List<dynamic>;
    return data.map((json) => AssetIssue.fromJson(json as Map<String, dynamic>)).toList();
  }

  /// Get asset issues by asset ID
  Future<List<AssetIssue>> getAssetIssuesByAssetId(String assetId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/assets/$assetId/issues',
    );

    final data = response['data'] as List<dynamic>;
    return data.map((json) => AssetIssue.fromJson(json as Map<String, dynamic>)).toList();
  }

  /// Update asset issue
  Future<AssetIssue> updateAssetIssue(
    String issueId,
    UpdateAssetIssueRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/asset-issues/$issueId',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return AssetIssue.fromJson(data);
  }

  /// Delete asset issue
  Future<void> deleteAssetIssue(String issueId) async {
    await _apiClient.delete('/api/v1/asset-issues/$issueId');
  }

  /// Acknowledge asset issue
  Future<AssetIssue> acknowledgeAssetIssue(String issueId) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/asset-issues/$issueId/acknowledge',
    );

    final data = response['data'] as Map<String, dynamic>;
    return AssetIssue.fromJson(data);
  }

  /// Resolve asset issue
  Future<AssetIssue> resolveAssetIssue(
    String issueId, {
    required String resolutionNotes,
    String? rootCause,
    String? correctiveActions,
    String? preventiveActions,
  }) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/asset-issues/$issueId/resolve',
      data: {
        'resolutionNotes': resolutionNotes,
        if (rootCause != null) 'rootCause': rootCause,
        if (correctiveActions != null) 'correctiveActions': correctiveActions,
        if (preventiveActions != null) 'preventiveActions': preventiveActions,
      },
    );

    final data = response['data'] as Map<String, dynamic>;
    return AssetIssue.fromJson(data);
  }

  /// Close asset issue
  Future<AssetIssue> closeAssetIssue(String issueId) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/asset-issues/$issueId/close',
    );

    final data = response['data'] as Map<String, dynamic>;
    return AssetIssue.fromJson(data);
  }
}
