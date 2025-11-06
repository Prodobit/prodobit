import 'package:freezed_annotation/freezed_annotation.dart';

part 'bom_models.freezed.dart';
part 'bom_models.g.dart';

/// BOM (Bill of Materials) component model
@freezed
sealed class BomComponent with _$BomComponent {
  const factory BomComponent({
    required String id,
    required String bomId,
    required String itemId,
    required double quantity,
    required String unit,
    required double unitCost,
    required double totalCost,
    required int sequence,
    String? notes,
    String? specification,
    bool? isOptional,
    String? alternativeItemId,
    double? wastagePercentage,
    double? leadTime,
    Map<String, dynamic>? attributes,
    Map<String, dynamic>? metadata,
  }) = _BomComponent;

  factory BomComponent.fromJson(Map<String, dynamic> json) =>
      _$BomComponentFromJson(json);
}

/// Create BOM component request
@freezed
sealed class CreateBomComponentRequest with _$CreateBomComponentRequest {
  const factory CreateBomComponentRequest({
    required String itemId,
    required double quantity,
    required String unit,
    required double unitCost,
    int? sequence,
    String? notes,
    String? specification,
    bool? isOptional,
    String? alternativeItemId,
    double? wastagePercentage,
    double? leadTime,
    Map<String, dynamic>? attributes,
  }) = _CreateBomComponentRequest;

  factory CreateBomComponentRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateBomComponentRequestFromJson(json);
}

/// Update BOM component request
@freezed
sealed class UpdateBomComponentRequest with _$UpdateBomComponentRequest {
  const factory UpdateBomComponentRequest({
    double? quantity,
    String? unit,
    double? unitCost,
    int? sequence,
    String? notes,
    String? specification,
    bool? isOptional,
    String? alternativeItemId,
    double? wastagePercentage,
    double? leadTime,
    Map<String, dynamic>? attributes,
  }) = _UpdateBomComponentRequest;

  factory UpdateBomComponentRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateBomComponentRequestFromJson(json);
}

/// BOM explosion item
@freezed
sealed class BomExplosionItem with _$BomExplosionItem {
  const factory BomExplosionItem({
    required String itemId,
    required String itemName,
    required String itemCode,
    required double quantity,
    required String unit,
    required double unitCost,
    required double totalCost,
    required int level,
    String? parentItemId,
    String? bomId,
    String? componentId,
    bool? isOptional,
    double? wastagePercentage,
    double? leadTime,
    List<BomExplosionItem>? children,
  }) = _BomExplosionItem;

  factory BomExplosionItem.fromJson(Map<String, dynamic> json) =>
      _$BomExplosionItemFromJson(json);
}

/// BOM statistics
@freezed
sealed class BomStats with _$BomStats {
  const factory BomStats({
    required String bomId,
    required int totalComponents,
    required double totalCost,
    required double totalLeadTime,
    required int maxLevels,
    Map<String, int>? componentsByCategory,
    Map<String, double>? costByCategory,
  }) = _BomStats;

  factory BomStats.fromJson(Map<String, dynamic> json) =>
      _$BomStatsFromJson(json);
}

/// BOM lead time analysis
@freezed
sealed class BomLeadTimeAnalysis with _$BomLeadTimeAnalysis {
  const factory BomLeadTimeAnalysis({
    required String bomId,
    required double totalLeadTime,
    required double criticalPath,
    required List<BomLeadTimeItem> items,
    List<String>? criticalPathItems,
  }) = _BomLeadTimeAnalysis;

  factory BomLeadTimeAnalysis.fromJson(Map<String, dynamic> json) =>
      _$BomLeadTimeAnalysisFromJson(json);
}

/// BOM lead time item
@freezed
sealed class BomLeadTimeItem with _$BomLeadTimeItem {
  const factory BomLeadTimeItem({
    required String itemId,
    required String itemName,
    required double leadTime,
    required bool isCritical,
    required int level,
  }) = _BomLeadTimeItem;

  factory BomLeadTimeItem.fromJson(Map<String, dynamic> json) =>
      _$BomLeadTimeItemFromJson(json);
}

/// Clone BOM request
@freezed
sealed class CloneBomRequest with _$CloneBomRequest {
  const factory CloneBomRequest({
    required String name,
    required String version,
    String? description,
    bool? includeComponents,
    bool? updateReferences,
  }) = _CloneBomRequest;

  factory CloneBomRequest.fromJson(Map<String, dynamic> json) =>
      _$CloneBomRequestFromJson(json);
}

/// Create BOM quick request
@freezed
sealed class CreateBomQuickRequest with _$CreateBomQuickRequest {
  const factory CreateBomQuickRequest({
    required String itemId,
    required String name,
    required String version,
    required List<BomQuickComponent> components,
    String? description,
  }) = _CreateBomQuickRequest;

  factory CreateBomQuickRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateBomQuickRequestFromJson(json);
}

/// BOM quick component
@freezed
sealed class BomQuickComponent with _$BomQuickComponent {
  const factory BomQuickComponent({
    required String itemId,
    required double quantity,
    required String unit,
    double? unitCost,
    int? sequence,
  }) = _BomQuickComponent;

  factory BomQuickComponent.fromJson(Map<String, dynamic> json) =>
      _$BomQuickComponentFromJson(json);
}