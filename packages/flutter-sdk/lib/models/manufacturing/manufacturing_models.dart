import 'package:freezed_annotation/freezed_annotation.dart';

part 'manufacturing_models.freezed.dart';
part 'manufacturing_models.g.dart';

/// BOM model
@freezed
class Bom with _$Bom {
  const factory Bom({
    required String id,
    required String itemId,
    required String name,
    required String version,
    required String status,
    required DateTime createdAt,
    required DateTime updatedAt, // 'draft', 'active', 'inactive', 'obsolete'
    String? description,
    DateTime? effectiveDate,
    DateTime? expiryDate,
    String? createdBy,
    double? totalCost,
    Map<String, dynamic>? metadata,
  }) = _Bom;

  factory Bom.fromJson(Map<String, dynamic> json) => _$BomFromJson(json);
}

/// Create BOM request
@freezed
class CreateBomRequest with _$CreateBomRequest {
  const factory CreateBomRequest({
    required String itemId,
    required String name,
    required String version,
    String? description,
    DateTime? effectiveDate,
    DateTime? expiryDate,
    Map<String, dynamic>? metadata,
  }) = _CreateBomRequest;

  factory CreateBomRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateBomRequestFromJson(json);
}

/// Update BOM request
@freezed
class UpdateBomRequest with _$UpdateBomRequest {
  const factory UpdateBomRequest({
    String? name,
    String? version,
    String? description,
    String? status,
    DateTime? effectiveDate,
    DateTime? expiryDate,
    Map<String, dynamic>? metadata,
  }) = _UpdateBomRequest;

  factory UpdateBomRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateBomRequestFromJson(json);
}

/// Work order model
@freezed
class WorkOrder with _$WorkOrder {
  const factory WorkOrder({
    required String id,
    required String workOrderNumber,
    required String itemId,
    required double quantity,
    required String
        status, // 'planned', 'released', 'in_progress', 'completed', 'cancelled'
    DateTime? plannedStartDate,
    DateTime? plannedEndDate,
    DateTime? actualStartDate,
    DateTime? actualEndDate,
    String? bomId,
    String? priority,
    String? notes,
    Map<String, dynamic>? metadata,
  }) = _WorkOrder;

  factory WorkOrder.fromJson(Map<String, dynamic> json) =>
      _$WorkOrderFromJson(json);
}

/// Production order material creation request
@freezed
class CreateProductionOrderMaterialRequest
    with _$CreateProductionOrderMaterialRequest {
  const factory CreateProductionOrderMaterialRequest({
    required String itemId,
    required double requiredQuantity,
  }) = _CreateProductionOrderMaterialRequest;

  factory CreateProductionOrderMaterialRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CreateProductionOrderMaterialRequestFromJson(json);
}

/// Production order creation request
@freezed
class CreateProductionOrderRequest with _$CreateProductionOrderRequest {
  const factory CreateProductionOrderRequest({
    required String itemId,
    required double quantity,
    required DateTime startDate,
    required List<CreateProductionOrderMaterialRequest> materials,
    DateTime? endDate,
    String? notes,
  }) = _CreateProductionOrderRequest;

  factory CreateProductionOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateProductionOrderRequestFromJson(json);
}

/// Production order model
@freezed
class ProductionOrder with _$ProductionOrder {
  const factory ProductionOrder({
    required String id,
    required String orderNumber,
    required String itemId,
    required String itemName,
    required double quantity,
    required String status,
    required DateTime startDate,
    required List<ProductionOrderMaterial> materials,
    required DateTime createdAt,
    DateTime? endDate,
    String? notes,
    String? organizationId,
    DateTime? updatedAt,
  }) = _ProductionOrder;

  factory ProductionOrder.fromJson(Map<String, dynamic> json) =>
      _$ProductionOrderFromJson(json);
}

/// Production order material model
@freezed
class ProductionOrderMaterial with _$ProductionOrderMaterial {
  const factory ProductionOrderMaterial({
    required String id,
    required String itemId,
    required String itemName,
    required double requiredQuantity,
    required double consumedQuantity,
    String? unit,
  }) = _ProductionOrderMaterial;

  factory ProductionOrderMaterial.fromJson(Map<String, dynamic> json) =>
      _$ProductionOrderMaterialFromJson(json);
}
