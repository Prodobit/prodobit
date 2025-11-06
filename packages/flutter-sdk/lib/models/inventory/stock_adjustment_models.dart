import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_adjustment_models.freezed.dart';
part 'stock_adjustment_models.g.dart';

/// Stock adjustment model
@freezed
sealed class StockAdjustment with _$StockAdjustment {
  const factory StockAdjustment({
    required String id,
    required String itemId,
    required String locationId,
    required double quantity,
    required double value,
    required String type, // 'increase', 'decrease'
    required String reason, // 'damage', 'theft', 'obsolete', 'found', 'correction', 'other'
    required String status, // 'draft', 'pending_approval', 'approved', 'rejected', 'posted'
    required DateTime createdAt,
    required DateTime updatedAt,
    String? referenceNumber,
    String? notes,
    String? createdBy,
    String? approvedBy,
    String? rejectedBy,
    String? postedBy,
    DateTime? approvedAt,
    DateTime? rejectedAt,
    DateTime? postedAt,
    String? rejectionReason,
    String? lotNumber,
    String? serialNumber,
    Map<String, dynamic>? metadata,
  }) = _StockAdjustment;

  factory StockAdjustment.fromJson(Map<String, dynamic> json) =>
      _$StockAdjustmentFromJson(json);
}

/// Stock adjustment item model
@freezed
sealed class StockAdjustmentItem with _$StockAdjustmentItem {
  const factory StockAdjustmentItem({
    required String id,
    required String stockAdjustmentId,
    required String itemId,
    required String locationId,
    required double quantity,
    required double unitCost,
    required double totalValue,
    String? reason,
    String? notes,
    String? lotNumber,
    String? serialNumber,
    Map<String, dynamic>? metadata,
  }) = _StockAdjustmentItem;

  factory StockAdjustmentItem.fromJson(Map<String, dynamic> json) =>
      _$StockAdjustmentItemFromJson(json);
}

/// Create stock adjustment request
@freezed
sealed class CreateStockAdjustmentRequest with _$CreateStockAdjustmentRequest {
  const factory CreateStockAdjustmentRequest({
    required String itemId,
    required String locationId,
    required double quantity,
    required String type,
    required String reason,
    String? referenceNumber,
    String? notes,
    String? lotNumber,
    String? serialNumber,
    Map<String, dynamic>? metadata,
  }) = _CreateStockAdjustmentRequest;

  factory CreateStockAdjustmentRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateStockAdjustmentRequestFromJson(json);
}

/// Update stock adjustment request
@freezed
sealed class UpdateStockAdjustmentRequest with _$UpdateStockAdjustmentRequest {
  const factory UpdateStockAdjustmentRequest({
    double? quantity,
    String? reason,
    String? referenceNumber,
    String? notes,
    String? lotNumber,
    String? serialNumber,
    Map<String, dynamic>? metadata,
  }) = _UpdateStockAdjustmentRequest;

  factory UpdateStockAdjustmentRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateStockAdjustmentRequestFromJson(json);
}

/// Stock adjustment filters
@freezed
sealed class StockAdjustmentFilters with _$StockAdjustmentFilters {
  const factory StockAdjustmentFilters({
    String? itemId,
    String? locationId,
    String? type,
    String? reason,
    String? status,
    String? createdBy,
    String? approvedBy,
    DateTime? createdAfter,
    DateTime? createdBefore,
    DateTime? approvedAfter,
    DateTime? approvedBefore,
    DateTime? postedAfter,
    DateTime? postedBefore,
    int? page,
    int? limit,
    String? sortBy,
    String? sortOrder,
  }) = _StockAdjustmentFilters;

  factory StockAdjustmentFilters.fromJson(Map<String, dynamic> json) =>
      _$StockAdjustmentFiltersFromJson(json);

  const StockAdjustmentFilters._();

  /// Convert to query parameters map
  Map<String, dynamic> toQueryMap() {
    return {
      if (itemId != null) 'itemId': itemId,
      if (locationId != null) 'locationId': locationId,
      if (type != null) 'type': type,
      if (reason != null) 'reason': reason,
      if (status != null) 'status': status,
      if (createdBy != null) 'createdBy': createdBy,
      if (approvedBy != null) 'approvedBy': approvedBy,
      if (createdAfter != null) 'createdAfter': createdAfter!.toIso8601String(),
      if (createdBefore != null) 'createdBefore': createdBefore!.toIso8601String(),
      if (approvedAfter != null) 'approvedAfter': approvedAfter!.toIso8601String(),
      if (approvedBefore != null) 'approvedBefore': approvedBefore!.toIso8601String(),
      if (postedAfter != null) 'postedAfter': postedAfter!.toIso8601String(),
      if (postedBefore != null) 'postedBefore': postedBefore!.toIso8601String(),
      if (page != null) 'page': page,
      if (limit != null) 'limit': limit,
      if (sortBy != null) 'sortBy': sortBy,
      if (sortOrder != null) 'sortOrder': sortOrder,
    };
  }
}

/// Approve stock adjustment request
@freezed
sealed class ApproveStockAdjustmentRequest with _$ApproveStockAdjustmentRequest {
  const factory ApproveStockAdjustmentRequest({
    String? notes,
  }) = _ApproveStockAdjustmentRequest;

  factory ApproveStockAdjustmentRequest.fromJson(Map<String, dynamic> json) =>
      _$ApproveStockAdjustmentRequestFromJson(json);
}

/// Reject stock adjustment request
@freezed
sealed class RejectStockAdjustmentRequest with _$RejectStockAdjustmentRequest {
  const factory RejectStockAdjustmentRequest({
    required String reason,
    String? notes,
  }) = _RejectStockAdjustmentRequest;

  factory RejectStockAdjustmentRequest.fromJson(Map<String, dynamic> json) =>
      _$RejectStockAdjustmentRequestFromJson(json);
}