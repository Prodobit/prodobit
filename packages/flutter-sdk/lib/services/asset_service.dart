import 'package:prodobit_flutter_sdk/core/api_client.dart';
import 'package:prodobit_flutter_sdk/models/models.dart';

/// Placeholder asset service - will be implemented with asset models
class AssetService {
  const AssetService(this._apiClient);

  final ApiClient _apiClient;

  /// Create new asset
  Future<Map<String, dynamic>> createAsset(Map<String, dynamic> data) async {
    return _apiClient.post<Map<String, dynamic>>('/assets', data: data);
  }

  /// Get asset by ID
  Future<Map<String, dynamic>> getAsset(String assetId) async {
    return _apiClient.get<Map<String, dynamic>>('/assets/$assetId');
  }

  /// Get all assets
  Future<Map<String, dynamic>> getAssets({
    QueryParams? query,
  }) async {
    return _apiClient.get<Map<String, dynamic>>(
      '/assets',
      queryParameters: query?.toQueryMap(),
    );
  }
}
