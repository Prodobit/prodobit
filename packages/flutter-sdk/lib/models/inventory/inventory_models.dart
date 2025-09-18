import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prodobit_flutter_sdk/models/common/common_models.dart';

part 'inventory_models.freezed.dart';
part 'inventory_models.g.dart';

/// Item model
@freezed
class Item with _$Item {
  const factory Item({
    required String id,
    required String name,
    required String code,
    required String type, // 'product', 'service', 'raw_material', etc.
    required String unit,
    required bool isActive,
    required AuditInfo auditInfo,
    String? description,
    String? category,
    String? brand,
    Money? basePrice,
    Money? costPrice,
    String? barcode,
    String? imageUrl,
    Map<String, dynamic>? specifications,
    Map<String, dynamic>? metadata,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

/// Item creation/update request
@freezed
class ItemRequest with _$ItemRequest {
  const factory ItemRequest({
    required String name,
    required String code,
    required String type,
    required String unit,
    String? description,
    String? category,
    String? brand,
    Money? basePrice,
    Money? costPrice,
    String? barcode,
    String? imageUrl,
    @Default(true) bool isActive,
    Map<String, dynamic>? specifications,
    Map<String, dynamic>? metadata,
  }) = _ItemRequest;

  factory ItemRequest.fromJson(Map<String, dynamic> json) =>
      _$ItemRequestFromJson(json);
}

/// Location model
@freezed
class Location with _$Location {
  const factory Location({
    required String id,
    required String name,
    required String code,
    required bool isActive,
    required AuditInfo auditInfo,
    String? description,
    String? type, // 'warehouse', 'store', 'production', etc.
    String? parentId,
    Address? address,
    ContactInfo? contactInfo,
    Map<String, dynamic>? metadata,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

/// Stock adjustment request
@freezed
class StockAdjustmentRequest with _$StockAdjustmentRequest {
  const factory StockAdjustmentRequest({
    required String itemId,
    required String locationId,
    required double quantity,
    required String reason,
    String? notes,
    Money? cost,
  }) = _StockAdjustmentRequest;

  factory StockAdjustmentRequest.fromJson(Map<String, dynamic> json) =>
      _$StockAdjustmentRequestFromJson(json);
}

/// Stock entry model
@freezed
class StockEntry with _$StockEntry {
  const factory StockEntry({
    required String id,
    required String itemId,
    required String locationId,
    required double quantity,
    required double availableQuantity,
    required double reservedQuantity,
    required DateTime lastUpdated,
    double? minQuantity,
    double? maxQuantity,
    Money? averageCost,
    Map<String, dynamic>? metadata,
  }) = _StockEntry;

  factory StockEntry.fromJson(Map<String, dynamic> json) =>
      _$StockEntryFromJson(json);
}

/// Stock movement model
@freezed
class StockMovement with _$StockMovement {
  const factory StockMovement({
    required String id,
    required String itemId,
    required String locationId,
    required String type, // 'in', 'out', 'transfer', 'adjustment'
    required double quantity,
    required DateTime movementDate,
    required AuditInfo auditInfo,
    double? cost,
    String? referenceType,
    String? referenceId,
    String? notes,
  }) = _StockMovement;

  factory StockMovement.fromJson(Map<String, dynamic> json) =>
      _$StockMovementFromJson(json);
}

/// Stock transfer request
@freezed
class StockTransferRequest with _$StockTransferRequest {
  const factory StockTransferRequest({
    required String itemId,
    required String fromLocationId,
    required String toLocationId,
    required double quantity,
    String? notes,
  }) = _StockTransferRequest;

  factory StockTransferRequest.fromJson(Map<String, dynamic> json) =>
      _$StockTransferRequestFromJson(json);
}
