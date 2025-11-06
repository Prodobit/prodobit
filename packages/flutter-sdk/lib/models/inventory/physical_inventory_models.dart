import 'package:freezed_annotation/freezed_annotation.dart';

part 'physical_inventory_models.freezed.dart';
part 'physical_inventory_models.g.dart';

/// Physical inventory model
@freezed
sealed class PhysicalInventory with _$PhysicalInventory {
  const factory PhysicalInventory({
    required String id,
    required String name,
    required String description,
    required String locationId,
    required String status, // 'draft', 'in_progress', 'completed', 'cancelled'
    required DateTime createdAt,
    required DateTime updatedAt,
    DateTime? startedAt,
    DateTime? completedAt,
    DateTime? cancelledAt,
    String? createdBy,
    String? startedBy,
    String? completedBy,
    String? cancelledBy,
    Map<String, dynamic>? metadata,
  }) = _PhysicalInventory;

  factory PhysicalInventory.fromJson(Map<String, dynamic> json) =>
      _$PhysicalInventoryFromJson(json);
}

/// Physical inventory item model
@freezed
sealed class PhysicalInventoryItem with _$PhysicalInventoryItem {
  const factory PhysicalInventoryItem({
    required String id,
    required String physicalInventoryId,
    required String itemId,
    required String locationId,
    required double systemQuantity,
    required double countedQuantity,
    required double varianceQuantity,
    required double varianceValue,
    required String status, // 'pending', 'counted', 'adjusted'
    DateTime? countedAt,
    String? countedBy,
    String? notes,
    String? lotNumber,
    String? serialNumber,
    Map<String, dynamic>? metadata,
  }) = _PhysicalInventoryItem;

  factory PhysicalInventoryItem.fromJson(Map<String, dynamic> json) =>
      _$PhysicalInventoryItemFromJson(json);
}

/// Create physical inventory request
@freezed
sealed class CreatePhysicalInventoryRequest with _$CreatePhysicalInventoryRequest {
  const factory CreatePhysicalInventoryRequest({
    required String name,
    required String description,
    required String locationId,
    Map<String, dynamic>? metadata,
  }) = _CreatePhysicalInventoryRequest;

  factory CreatePhysicalInventoryRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePhysicalInventoryRequestFromJson(json);
}

/// Update physical inventory request
@freezed
sealed class UpdatePhysicalInventoryRequest with _$UpdatePhysicalInventoryRequest {
  const factory UpdatePhysicalInventoryRequest({
    String? name,
    String? description,
    Map<String, dynamic>? metadata,
  }) = _UpdatePhysicalInventoryRequest;

  factory UpdatePhysicalInventoryRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdatePhysicalInventoryRequestFromJson(json);
}

/// Physical inventory filters
@freezed
sealed class PhysicalInventoryFilters with _$PhysicalInventoryFilters {
  const factory PhysicalInventoryFilters({
    String? locationId,
    String? status,
    String? createdBy,
    DateTime? createdAfter,
    DateTime? createdBefore,
    DateTime? startedAfter,
    DateTime? startedBefore,
    DateTime? completedAfter,
    DateTime? completedBefore,
    int? page,
    int? limit,
    String? sortBy,
    String? sortOrder,
  }) = _PhysicalInventoryFilters;

  factory PhysicalInventoryFilters.fromJson(Map<String, dynamic> json) =>
      _$PhysicalInventoryFiltersFromJson(json);

  const PhysicalInventoryFilters._();

  /// Convert to query parameters map
  Map<String, dynamic> toQueryMap() {
    return {
      if (locationId != null) 'locationId': locationId,
      if (status != null) 'status': status,
      if (createdBy != null) 'createdBy': createdBy,
      if (createdAfter != null) 'createdAfter': createdAfter!.toIso8601String(),
      if (createdBefore != null) 'createdBefore': createdBefore!.toIso8601String(),
      if (startedAfter != null) 'startedAfter': startedAfter!.toIso8601String(),
      if (startedBefore != null) 'startedBefore': startedBefore!.toIso8601String(),
      if (completedAfter != null) 'completedAfter': completedAfter!.toIso8601String(),
      if (completedBefore != null) 'completedBefore': completedBefore!.toIso8601String(),
      if (page != null) 'page': page,
      if (limit != null) 'limit': limit,
      if (sortBy != null) 'sortBy': sortBy,
      if (sortOrder != null) 'sortOrder': sortOrder,
    };
  }
}

/// Update physical inventory item request
@freezed
sealed class UpdatePhysicalInventoryItemRequest with _$UpdatePhysicalInventoryItemRequest {
  const factory UpdatePhysicalInventoryItemRequest({
    required double countedQuantity,
    String? notes,
    String? lotNumber,
    String? serialNumber,
  }) = _UpdatePhysicalInventoryItemRequest;

  factory UpdatePhysicalInventoryItemRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdatePhysicalInventoryItemRequestFromJson(json);
}

/// Physical inventory adjustment
@freezed
sealed class PhysicalInventoryAdjustment with _$PhysicalInventoryAdjustment {
  const factory PhysicalInventoryAdjustment({
    required String id,
    required String physicalInventoryId,
    required String itemId,
    required String locationId,
    required double adjustmentQuantity,
    required double adjustmentValue,
    required String reason,
    required DateTime createdAt,
    String? createdBy,
    String? lotNumber,
    String? serialNumber,
    String? notes,
    Map<String, dynamic>? metadata,
  }) = _PhysicalInventoryAdjustment;

  factory PhysicalInventoryAdjustment.fromJson(Map<String, dynamic> json) =>
      _$PhysicalInventoryAdjustmentFromJson(json);
}