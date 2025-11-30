import 'package:freezed_annotation/freezed_annotation.dart';

part 'asset_meter_models.freezed.dart';
part 'asset_meter_models.g.dart';

/// Meter type enum
enum MeterType {
  @JsonValue('hours')
  hours,
  @JsonValue('kilometers')
  kilometers,
  @JsonValue('miles')
  miles,
  @JsonValue('cycles')
  cycles,
  @JsonValue('units')
  units,
  @JsonValue('custom')
  custom,
}

/// Reading source enum
enum ReadingSource {
  @JsonValue('manual')
  manual,
  @JsonValue('automatic')
  automatic,
  @JsonValue('sensor')
  sensor,
  @JsonValue('import')
  import_,
}

/// Asset meter model - tracks meter/counter types attached to assets
@freezed
sealed class AssetMeter with _$AssetMeter {
  const factory AssetMeter({
    required String id,
    required String tenantId,
    required String assetId,
    required MeterType meterType,
    required String name,
    required String unit,
    required DateTime insertedAt,
    required DateTime updatedAt,
    String? description,
    String? currentReading,
    String? initialReading,
    DateTime? installationDate,
    String? rolloverValue,
    @Default(false) bool hasRollover,
    @Default(true) bool isActive,
    DateTime? deletedAt,
    // Related data
    MeterAssetInfo? asset,
    AssetMeterReading? lastReading,
  }) = _AssetMeter;

  factory AssetMeter.fromJson(Map<String, dynamic> json) =>
      _$AssetMeterFromJson(json);
}

/// Simplified asset info for meter display
@freezed
sealed class MeterAssetInfo with _$MeterAssetInfo {
  const factory MeterAssetInfo({
    required String id,
    required String name,
    String? code,
  }) = _MeterAssetInfo;

  factory MeterAssetInfo.fromJson(Map<String, dynamic> json) =>
      _$MeterAssetInfoFromJson(json);
}

/// Asset meter reading model - historical readings for meters
@freezed
sealed class AssetMeterReading with _$AssetMeterReading {
  const factory AssetMeterReading({
    required String id,
    required String tenantId,
    required String meterId,
    required String reading,
    required DateTime readingDate,
    required DateTime insertedAt,
    required DateTime updatedAt,
    ReadingSource? readingSource,
    String? notes,
    String? previousReading,
    String? usageSinceLastReading,
    @Default(false) bool isRollover,
    String? recordedById,
    DateTime? deletedAt,
  }) = _AssetMeterReading;

  factory AssetMeterReading.fromJson(Map<String, dynamic> json) =>
      _$AssetMeterReadingFromJson(json);
}

/// Create asset meter request
@freezed
sealed class CreateAssetMeterRequest with _$CreateAssetMeterRequest {
  const factory CreateAssetMeterRequest({
    required String assetId,
    required String name,
    required String unit,
    @Default(MeterType.hours) MeterType meterType,
    String? description,
    double? initialReading,
    DateTime? installationDate,
    double? rolloverValue,
    @Default(false) bool hasRollover,
  }) = _CreateAssetMeterRequest;

  factory CreateAssetMeterRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateAssetMeterRequestFromJson(json);
}

/// Update asset meter request
@freezed
sealed class UpdateAssetMeterRequest with _$UpdateAssetMeterRequest {
  const factory UpdateAssetMeterRequest({
    String? name,
    String? unit,
    String? description,
    double? rolloverValue,
    bool? hasRollover,
    bool? isActive,
  }) = _UpdateAssetMeterRequest;

  factory UpdateAssetMeterRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateAssetMeterRequestFromJson(json);
}

/// Create meter reading request
@freezed
sealed class CreateMeterReadingRequest with _$CreateMeterReadingRequest {
  const factory CreateMeterReadingRequest({
    required double reading,
    DateTime? readingDate,
    @Default(ReadingSource.manual) ReadingSource readingSource,
    String? notes,
  }) = _CreateMeterReadingRequest;

  factory CreateMeterReadingRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateMeterReadingRequestFromJson(json);
}

/// Asset meter query filters
@freezed
sealed class AssetMeterQuery with _$AssetMeterQuery {
  const factory AssetMeterQuery({
    String? assetId,
    MeterType? meterType,
    bool? isActive,
  }) = _AssetMeterQuery;

  factory AssetMeterQuery.fromJson(Map<String, dynamic> json) =>
      _$AssetMeterQueryFromJson(json);
}

/// Meter statistics
@freezed
sealed class MeterStats with _$MeterStats {
  const factory MeterStats({
    required String currentReading,
    required String initialReading,
    required String totalUsage,
    required int totalReadings,
    required String averageUsagePerDay,
    required String averageUsagePerWeek,
    required String averageUsagePerMonth,
    AssetMeterReading? lastReading,
    AssetMeterReading? firstReading,
  }) = _MeterStats;

  factory MeterStats.fromJson(Map<String, dynamic> json) =>
      _$MeterStatsFromJson(json);
}
