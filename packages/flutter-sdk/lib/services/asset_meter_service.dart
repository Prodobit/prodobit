import 'package:prodobit_flutter_sdk/core/api_client.dart';
import 'package:prodobit_flutter_sdk/models/models.dart';

/// Service for asset meter operations
class AssetMeterService {
  const AssetMeterService(this._apiClient);

  final ApiClient _apiClient;

  /// Get all asset meters with optional filters
  Future<List<AssetMeter>> getAssetMeters({
    String? assetId,
    String? meterType,
    bool? isActive,
  }) async {
    final queryParams = <String, String>{};
    if (assetId != null) queryParams['assetId'] = assetId;
    if (meterType != null) queryParams['meterType'] = meterType;
    if (isActive != null) queryParams['isActive'] = isActive.toString();

    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/asset-meters',
      queryParameters: queryParams.isEmpty ? null : queryParams,
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => AssetMeter.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Get asset meter by ID
  Future<AssetMeter> getAssetMeter(String meterId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/asset-meters/$meterId',
    );

    final data = response['data'] as Map<String, dynamic>;
    return AssetMeter.fromJson(data);
  }

  /// Get meters by asset
  Future<List<AssetMeter>> getMetersByAsset(String assetId) async {
    return getAssetMeters(assetId: assetId);
  }

  /// Create new asset meter
  Future<AssetMeter> createAssetMeter(CreateAssetMeterRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/asset-meters',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return AssetMeter.fromJson(data);
  }

  /// Update asset meter
  Future<AssetMeter> updateAssetMeter(
    String meterId,
    UpdateAssetMeterRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/asset-meters/$meterId',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return AssetMeter.fromJson(data);
  }

  /// Delete asset meter
  Future<void> deleteAssetMeter(String meterId) async {
    await _apiClient.delete('/api/v1/asset-meters/$meterId');
  }

  /// Get meter readings for a meter
  Future<List<AssetMeterReading>> getMeterReadings(String meterId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/asset-meters/$meterId/readings',
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => AssetMeterReading.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Create meter reading
  Future<AssetMeterReading> createMeterReading(
    String meterId,
    CreateMeterReadingRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/asset-meters/$meterId/readings',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return AssetMeterReading.fromJson(data);
  }

  /// Get meter statistics
  Future<MeterStats> getMeterStats(String meterId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/asset-meters/$meterId/stats',
    );

    final data = response['data'] as Map<String, dynamic>;
    return MeterStats.fromJson(data);
  }
}
