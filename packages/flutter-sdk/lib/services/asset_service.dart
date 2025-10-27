import 'package:prodobit_flutter_sdk/core/api_client.dart';
import 'package:prodobit_flutter_sdk/models/models.dart';

/// Service for asset management operations
class AssetService {
  const AssetService(this._apiClient);

  final ApiClient _apiClient;

  /// Create new asset
  Future<Asset> createAsset(CreateAssetRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/assets',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return Asset.fromJson(data);
  }

  /// Get asset by ID
  Future<Asset> getAsset(String assetId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/assets/$assetId',
    );

    final data = response['data'] as Map<String, dynamic>;
    return Asset.fromJson(data);
  }

  /// Get all assets
  Future<List<Asset>> getAssets({
    QueryParams? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/assets',
      queryParameters: query?.toQueryMap(),
    );

    final data = response['data'] as List<dynamic>;
    return data.map((json) => Asset.fromJson(json as Map<String, dynamic>)).toList();
  }

  /// Update asset
  Future<Asset> updateAsset(
    String assetId,
    UpdateAssetRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/assets/$assetId',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return Asset.fromJson(data);
  }

  /// Delete asset
  Future<void> deleteAsset(String assetId) async {
    await _apiClient.delete('/api/v1/assets/$assetId');
  }
}
