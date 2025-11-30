import 'package:prodobit_flutter_sdk/core/api_client.dart';
import 'package:prodobit_flutter_sdk/models/models.dart';

/// Service for asset stock usage operations
class AssetStockUsageService {
  const AssetStockUsageService(this._apiClient);

  final ApiClient _apiClient;

  /// Get all asset stock usages with optional filters
  Future<List<AssetStockUsage>> getAssetStockUsages({
    String? assetId,
    String? itemId,
    String? usageType,
    String? maintenanceRecordId,
    String? calibrationRecordId,
    String? usedById,
    String? fromDate,
    String? toDate,
  }) async {
    final queryParams = <String, String>{};
    if (assetId != null) queryParams['assetId'] = assetId;
    if (itemId != null) queryParams['itemId'] = itemId;
    if (usageType != null) queryParams['usageType'] = usageType;
    if (maintenanceRecordId != null) {
      queryParams['maintenanceRecordId'] = maintenanceRecordId;
    }
    if (calibrationRecordId != null) {
      queryParams['calibrationRecordId'] = calibrationRecordId;
    }
    if (usedById != null) queryParams['usedById'] = usedById;
    if (fromDate != null) queryParams['fromDate'] = fromDate;
    if (toDate != null) queryParams['toDate'] = toDate;

    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/asset-stock-usages',
      queryParameters: queryParams.isEmpty ? null : queryParams,
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => AssetStockUsage.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Get asset stock usage by ID
  Future<AssetStockUsage> getAssetStockUsage(String usageId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/asset-stock-usages/$usageId',
    );

    final data = response['data'] as Map<String, dynamic>;
    return AssetStockUsage.fromJson(data);
  }

  /// Get stock usages by asset
  Future<List<AssetStockUsage>> getUsagesByAsset(String assetId) async {
    return getAssetStockUsages(assetId: assetId);
  }

  /// Get stock usages by item
  Future<List<AssetStockUsage>> getUsagesByItem(String itemId) async {
    return getAssetStockUsages(itemId: itemId);
  }

  /// Get stock usages by maintenance record
  Future<List<AssetStockUsage>> getUsagesByMaintenanceRecord(
    String maintenanceRecordId,
  ) async {
    return getAssetStockUsages(maintenanceRecordId: maintenanceRecordId);
  }

  /// Get stock usages by calibration record
  Future<List<AssetStockUsage>> getUsagesByCalibrationRecord(
    String calibrationRecordId,
  ) async {
    return getAssetStockUsages(calibrationRecordId: calibrationRecordId);
  }

  /// Create new asset stock usage
  Future<AssetStockUsage> createAssetStockUsage(
    CreateAssetStockUsageRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/asset-stock-usages',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return AssetStockUsage.fromJson(data);
  }

  /// Bulk create asset stock usages
  Future<List<AssetStockUsage>> bulkCreateUsages(
    List<CreateAssetStockUsageRequest> usages,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/asset-stock-usages/bulk',
      data: {'usages': usages.map((u) => u.toJson()).toList()},
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => AssetStockUsage.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Update asset stock usage
  Future<AssetStockUsage> updateAssetStockUsage(
    String usageId,
    UpdateAssetStockUsageRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/asset-stock-usages/$usageId',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return AssetStockUsage.fromJson(data);
  }

  /// Delete asset stock usage
  Future<void> deleteAssetStockUsage(String usageId) async {
    await _apiClient.delete('/api/v1/asset-stock-usages/$usageId');
  }

  /// Get usage statistics for an asset
  Future<AssetUsageStats> getAssetUsageStats(String assetId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/asset-stock-usages/stats/$assetId',
    );

    final data = response['data'] as Map<String, dynamic>;
    return AssetUsageStats.fromJson(data);
  }

  // Spare Parts methods

  /// Get all spare parts
  Future<List<Item>> getSpareParts() async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/items/spare-parts',
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => Item.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Create a spare part
  Future<Item> createSparePart(CreateSparePartRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/items/spare-parts',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return Item.fromJson(data);
  }

  // Consumables methods

  /// Get all consumables
  Future<List<Item>> getConsumables() async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/items/consumables',
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => Item.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Create a consumable
  Future<Item> createConsumable(CreateConsumableRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/items/consumables',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return Item.fromJson(data);
  }
}
