import 'package:freezed_annotation/freezed_annotation.dart';

part 'asset_stock_usage_models.freezed.dart';
part 'asset_stock_usage_models.g.dart';

/// Usage type enum
enum UsageType {
  @JsonValue('maintenance')
  maintenance,
  @JsonValue('repair')
  repair,
  @JsonValue('calibration')
  calibration,
  @JsonValue('replacement')
  replacement,
  @JsonValue('routine')
  routine,
}

/// Asset stock usage model - tracks materials used on assets
@freezed
sealed class AssetStockUsage with _$AssetStockUsage {
  const factory AssetStockUsage({
    required String id,
    required String tenantId,
    required String assetId,
    required String itemId,
    required UsageType usageType,
    required String quantity,
    required DateTime usedAt,
    required DateTime insertedAt,
    required DateTime updatedAt,
    String? stockTransactionId,
    String? maintenanceRecordId,
    String? calibrationRecordId,
    String? unit,
    String? usedById,
    String? unitCost,
    String? totalCost,
    String? currency,
    String? notes,
    String? lotNumber,
    String? serialNumber,
    DateTime? deletedAt,
    // Related data (populated by joins)
    UsageAssetInfo? asset,
    UsageItemInfo? item,
  }) = _AssetStockUsage;

  factory AssetStockUsage.fromJson(Map<String, dynamic> json) =>
      _$AssetStockUsageFromJson(json);
}

/// Simplified asset info for usage display
@freezed
sealed class UsageAssetInfo with _$UsageAssetInfo {
  const factory UsageAssetInfo({
    required String id,
    required String name,
    String? code,
  }) = _UsageAssetInfo;

  factory UsageAssetInfo.fromJson(Map<String, dynamic> json) =>
      _$UsageAssetInfoFromJson(json);
}

/// Simplified item info for usage display
@freezed
sealed class UsageItemInfo with _$UsageItemInfo {
  const factory UsageItemInfo({
    required String id,
    required String name,
    String? code,
    String? itemType,
  }) = _UsageItemInfo;

  factory UsageItemInfo.fromJson(Map<String, dynamic> json) =>
      _$UsageItemInfoFromJson(json);
}

/// Create asset stock usage request
@freezed
sealed class CreateAssetStockUsageRequest with _$CreateAssetStockUsageRequest {
  const factory CreateAssetStockUsageRequest({
    required String assetId,
    required String itemId,
    required UsageType usageType,
    required double quantity,
    String? unit,
    DateTime? usedAt,
    String? usedById,
    double? unitCost,
    double? totalCost,
    String? currency,
    String? notes,
    String? lotNumber,
    String? serialNumber,
    String? maintenanceRecordId,
    String? calibrationRecordId,
    String? stockTransactionId,
  }) = _CreateAssetStockUsageRequest;

  factory CreateAssetStockUsageRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateAssetStockUsageRequestFromJson(json);
}

/// Update asset stock usage request
@freezed
sealed class UpdateAssetStockUsageRequest with _$UpdateAssetStockUsageRequest {
  const factory UpdateAssetStockUsageRequest({
    UsageType? usageType,
    double? quantity,
    String? unit,
    DateTime? usedAt,
    String? usedById,
    double? unitCost,
    double? totalCost,
    String? currency,
    String? notes,
    String? lotNumber,
    String? serialNumber,
    String? maintenanceRecordId,
    String? calibrationRecordId,
    String? stockTransactionId,
  }) = _UpdateAssetStockUsageRequest;

  factory UpdateAssetStockUsageRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateAssetStockUsageRequestFromJson(json);
}

/// Asset stock usage query filters
@freezed
sealed class AssetStockUsageQuery with _$AssetStockUsageQuery {
  const factory AssetStockUsageQuery({
    String? assetId,
    String? itemId,
    UsageType? usageType,
    String? maintenanceRecordId,
    String? calibrationRecordId,
    String? usedById,
    DateTime? fromDate,
    DateTime? toDate,
  }) = _AssetStockUsageQuery;

  factory AssetStockUsageQuery.fromJson(Map<String, dynamic> json) =>
      _$AssetStockUsageQueryFromJson(json);
}

/// Asset usage statistics
@freezed
sealed class AssetUsageStats with _$AssetUsageStats {
  const factory AssetUsageStats({
    required int totalUsages,
    required Map<String, int> usagesByType,
    required double totalCost,
    required List<AssetStockUsage> recentUsages,
  }) = _AssetUsageStats;

  factory AssetUsageStats.fromJson(Map<String, dynamic> json) =>
      _$AssetUsageStatsFromJson(json);
}

/// Spare part model (extends Item)
@freezed
sealed class SparePart with _$SparePart {
  const factory SparePart({
    required String id,
    required String itemId,
    required String tenantId,
    required DateTime insertedAt,
    required DateTime updatedAt,
    String? unit,
    String? itemCategoryId,
    String? partNumber,
    String? manufacturer,
    int? warrantyPeriodDays,
    @Default(false) bool isCritical,
    int? leadTimeDays,
    DateTime? deletedAt,
    // Related item data
    UsageItemInfo? item,
  }) = _SparePart;

  factory SparePart.fromJson(Map<String, dynamic> json) =>
      _$SparePartFromJson(json);
}

/// Consumable model (extends Item)
@freezed
sealed class Consumable with _$Consumable {
  const factory Consumable({
    required String id,
    required String itemId,
    required String tenantId,
    required DateTime insertedAt,
    required DateTime updatedAt,
    String? unit,
    String? itemCategoryId,
    int? shelfLifeDays,
    String? storageConditions,
    String? hazardClass,
    @Default(false) bool isHazardous,
    DateTime? deletedAt,
    // Related item data
    UsageItemInfo? item,
  }) = _Consumable;

  factory Consumable.fromJson(Map<String, dynamic> json) =>
      _$ConsumableFromJson(json);
}

/// Create spare part request
@freezed
sealed class CreateSparePartRequest with _$CreateSparePartRequest {
  const factory CreateSparePartRequest({
    required String name,
    String? code,
    String? description,
    String? unit,
    String? itemCategoryId,
    String? partNumber,
    String? manufacturer,
    int? warrantyPeriodDays,
    @Default(false) bool isCritical,
    int? leadTimeDays,
    double? basePrice,
    double? costPrice,
    String? barcode,
    String? imageUrl,
  }) = _CreateSparePartRequest;

  factory CreateSparePartRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSparePartRequestFromJson(json);
}

/// Create consumable request
@freezed
sealed class CreateConsumableRequest with _$CreateConsumableRequest {
  const factory CreateConsumableRequest({
    required String name,
    String? code,
    String? description,
    String? unit,
    String? itemCategoryId,
    int? shelfLifeDays,
    String? storageConditions,
    String? hazardClass,
    @Default(false) bool isHazardous,
    double? basePrice,
    double? costPrice,
    String? barcode,
    String? imageUrl,
  }) = _CreateConsumableRequest;

  factory CreateConsumableRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateConsumableRequestFromJson(json);
}
