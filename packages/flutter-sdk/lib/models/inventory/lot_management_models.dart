import 'package:freezed_annotation/freezed_annotation.dart';

part 'lot_management_models.freezed.dart';
part 'lot_management_models.g.dart';

/// Lot genealogy model
@freezed
sealed class LotGenealogy with _$LotGenealogy {
  const factory LotGenealogy({
    required String id,
    required String lotNumber,
    required String itemId,
    required String locationId,
    required double quantity,
    required String status, // 'active', 'consumed', 'quarantined', 'expired', 'recalled'
    required DateTime createdAt,
    required DateTime updatedAt,
    DateTime? expiryDate,
    DateTime? quarantinedAt,
    DateTime? releasedAt,
    String? parentLotId,
    String? supplierLotNumber,
    String? supplierName,
    String? receiptNumber,
    String? quarantineReason,
    String? releaseReason,
    String? notes,
    Map<String, dynamic>? attributes,
    Map<String, dynamic>? metadata,
  }) = _LotGenealogy;

  factory LotGenealogy.fromJson(Map<String, dynamic> json) =>
      _$LotGenealogyFromJson(json);
}

/// Lot tracking history model
@freezed
sealed class LotTrackingHistory with _$LotTrackingHistory {
  const factory LotTrackingHistory({
    required String id,
    required String lotId,
    required String eventType, // 'created', 'moved', 'consumed', 'split', 'merged', 'quarantined', 'released'
    required String fromLocationId,
    required String toLocationId,
    required double quantity,
    required DateTime eventDate,
    String? referenceType, // 'sales_order', 'production_order', 'transfer', 'adjustment'
    String? referenceId,
    String? performedBy,
    String? reason,
    String? notes,
    Map<String, dynamic>? metadata,
  }) = _LotTrackingHistory;

  factory LotTrackingHistory.fromJson(Map<String, dynamic> json) =>
      _$LotTrackingHistoryFromJson(json);
}

/// Lot split request
@freezed
sealed class SplitLotRequest with _$SplitLotRequest {
  const factory SplitLotRequest({
    required String sourceLotId,
    required List<LotSplitItem> splitItems,
    String? reason,
    String? notes,
  }) = _SplitLotRequest;

  factory SplitLotRequest.fromJson(Map<String, dynamic> json) =>
      _$SplitLotRequestFromJson(json);
}

/// Lot split item
@freezed
sealed class LotSplitItem with _$LotSplitItem {
  const factory LotSplitItem({
    required String newLotNumber,
    required double quantity,
    String? locationId,
    DateTime? expiryDate,
    Map<String, dynamic>? attributes,
  }) = _LotSplitItem;

  factory LotSplitItem.fromJson(Map<String, dynamic> json) =>
      _$LotSplitItemFromJson(json);
}

/// Merge lots request
@freezed
sealed class MergeLotsRequest with _$MergeLotsRequest {
  const factory MergeLotsRequest({
    required List<String> sourceLotIds,
    required String targetLotNumber,
    required String targetLocationId,
    DateTime? targetExpiryDate,
    String? reason,
    String? notes,
    Map<String, dynamic>? attributes,
  }) = _MergeLotsRequest;

  factory MergeLotsRequest.fromJson(Map<String, dynamic> json) =>
      _$MergeLotsRequestFromJson(json);
}

/// Update lot tracking request
@freezed
sealed class UpdateLotTrackingRequest with _$UpdateLotTrackingRequest {
  const factory UpdateLotTrackingRequest({
    String? status,
    DateTime? expiryDate,
    String? notes,
    Map<String, dynamic>? attributes,
  }) = _UpdateLotTrackingRequest;

  factory UpdateLotTrackingRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateLotTrackingRequestFromJson(json);
}

/// Quarantine lot request
@freezed
sealed class QuarantineLotRequest with _$QuarantineLotRequest {
  const factory QuarantineLotRequest({
    required String reason,
    String? notes,
    DateTime? quarantinedUntil,
  }) = _QuarantineLotRequest;

  factory QuarantineLotRequest.fromJson(Map<String, dynamic> json) =>
      _$QuarantineLotRequestFromJson(json);
}

/// Release lot request
@freezed
sealed class ReleaseLotRequest with _$ReleaseLotRequest {
  const factory ReleaseLotRequest({
    required String releaseReason,
    String? notes,
    String? inspectedBy,
    DateTime? inspectionDate,
  }) = _ReleaseLotRequest;

  factory ReleaseLotRequest.fromJson(Map<String, dynamic> json) =>
      _$ReleaseLotRequestFromJson(json);
}

/// Lot genealogy filters
@freezed
sealed class LotGenealogyFilters with _$LotGenealogyFilters {
  const factory LotGenealogyFilters({
    String? itemId,
    String? locationId,
    String? status,
    String? lotNumber,
    String? supplierLotNumber,
    String? parentLotId,
    DateTime? createdAfter,
    DateTime? createdBefore,
    DateTime? expiryAfter,
    DateTime? expiryBefore,
    DateTime? quarantinedAfter,
    DateTime? quarantinedBefore,
    int? page,
    int? limit,
    String? sortBy,
    String? sortOrder,
  }) = _LotGenealogyFilters;

  factory LotGenealogyFilters.fromJson(Map<String, dynamic> json) =>
      _$LotGenealogyFiltersFromJson(json);

  const LotGenealogyFilters._();

  /// Convert to query parameters map
  Map<String, dynamic> toQueryMap() {
    return {
      if (itemId != null) 'itemId': itemId,
      if (locationId != null) 'locationId': locationId,
      if (status != null) 'status': status,
      if (lotNumber != null) 'lotNumber': lotNumber,
      if (supplierLotNumber != null) 'supplierLotNumber': supplierLotNumber,
      if (parentLotId != null) 'parentLotId': parentLotId,
      if (createdAfter != null) 'createdAfter': createdAfter!.toIso8601String(),
      if (createdBefore != null) 'createdBefore': createdBefore!.toIso8601String(),
      if (expiryAfter != null) 'expiryAfter': expiryAfter!.toIso8601String(),
      if (expiryBefore != null) 'expiryBefore': expiryBefore!.toIso8601String(),
      if (quarantinedAfter != null) 'quarantinedAfter': quarantinedAfter!.toIso8601String(),
      if (quarantinedBefore != null) 'quarantinedBefore': quarantinedBefore!.toIso8601String(),
      if (page != null) 'page': page,
      if (limit != null) 'limit': limit,
      if (sortBy != null) 'sortBy': sortBy,
      if (sortOrder != null) 'sortOrder': sortOrder,
    };
  }
}

/// Lot tracking history filters
@freezed
sealed class LotTrackingHistoryFilters with _$LotTrackingHistoryFilters {
  const factory LotTrackingHistoryFilters({
    String? lotId,
    String? eventType,
    String? fromLocationId,
    String? toLocationId,
    String? referenceType,
    String? referenceId,
    String? performedBy,
    DateTime? eventAfter,
    DateTime? eventBefore,
    int? page,
    int? limit,
    String? sortBy,
    String? sortOrder,
  }) = _LotTrackingHistoryFilters;

  factory LotTrackingHistoryFilters.fromJson(Map<String, dynamic> json) =>
      _$LotTrackingHistoryFiltersFromJson(json);

  const LotTrackingHistoryFilters._();

  /// Convert to query parameters map
  Map<String, dynamic> toQueryMap() {
    return {
      if (lotId != null) 'lotId': lotId,
      if (eventType != null) 'eventType': eventType,
      if (fromLocationId != null) 'fromLocationId': fromLocationId,
      if (toLocationId != null) 'toLocationId': toLocationId,
      if (referenceType != null) 'referenceType': referenceType,
      if (referenceId != null) 'referenceId': referenceId,
      if (performedBy != null) 'performedBy': performedBy,
      if (eventAfter != null) 'eventAfter': eventAfter!.toIso8601String(),
      if (eventBefore != null) 'eventBefore': eventBefore!.toIso8601String(),
      if (page != null) 'page': page,
      if (limit != null) 'limit': limit,
      if (sortBy != null) 'sortBy': sortBy,
      if (sortOrder != null) 'sortOrder': sortOrder,
    };
  }
}

/// Expiring lots response
@freezed
sealed class ExpiringLot with _$ExpiringLot {
  const factory ExpiringLot({
    required String lotId,
    required String lotNumber,
    required String itemId,
    required String itemName,
    required String locationId,
    required String locationName,
    required double quantity,
    required DateTime expiryDate,
    required int daysUntilExpiry,
    String? status,
  }) = _ExpiringLot;

  factory ExpiringLot.fromJson(Map<String, dynamic> json) =>
      _$ExpiringLotFromJson(json);
}