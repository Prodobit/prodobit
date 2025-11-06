import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_reservation_models.freezed.dart';
part 'stock_reservation_models.g.dart';

/// Stock reservation model
@freezed
sealed class StockReservation with _$StockReservation {
  const factory StockReservation({
    required String id,
    required String itemId,
    required String locationId,
    required double quantity,
    required double reservedQuantity,
    required double consumedQuantity,
    required String status, // 'active', 'consumed', 'released', 'expired'
    required String purpose, // 'sales_order', 'production_order', 'transfer', 'custom'
    required DateTime createdAt,
    required DateTime updatedAt,
    String? referenceId,
    String? referenceType,
    String? notes,
    DateTime? expiresAt,
    DateTime? releasedAt,
    DateTime? consumedAt,
    Map<String, dynamic>? metadata,
  }) = _StockReservation;

  factory StockReservation.fromJson(Map<String, dynamic> json) =>
      _$StockReservationFromJson(json);
}

/// Create stock reservation request
@freezed
sealed class CreateStockReservationRequest with _$CreateStockReservationRequest {
  const factory CreateStockReservationRequest({
    required String itemId,
    required String locationId,
    required double quantity,
    required String purpose,
    String? referenceId,
    String? referenceType,
    String? notes,
    DateTime? expiresAt,
    Map<String, dynamic>? metadata,
  }) = _CreateStockReservationRequest;

  factory CreateStockReservationRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateStockReservationRequestFromJson(json);
}

/// Update stock reservation request
@freezed
sealed class UpdateStockReservationRequest with _$UpdateStockReservationRequest {
  const factory UpdateStockReservationRequest({
    double? quantity,
    String? notes,
    DateTime? expiresAt,
    Map<String, dynamic>? metadata,
  }) = _UpdateStockReservationRequest;

  factory UpdateStockReservationRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateStockReservationRequestFromJson(json);
}

/// Stock reservation filters
@freezed
sealed class StockReservationFilters with _$StockReservationFilters {
  const factory StockReservationFilters({
    String? itemId,
    String? locationId,
    String? status,
    String? purpose,
    String? referenceId,
    String? referenceType,
    DateTime? createdAfter,
    DateTime? createdBefore,
    DateTime? expiresAfter,
    DateTime? expiresBefore,
    int? page,
    int? limit,
    String? sortBy,
    String? sortOrder,
  }) = _StockReservationFilters;

  factory StockReservationFilters.fromJson(Map<String, dynamic> json) =>
      _$StockReservationFiltersFromJson(json);

  const StockReservationFilters._();

  /// Convert to query parameters map
  Map<String, dynamic> toQueryMap() {
    return {
      if (itemId != null) 'itemId': itemId,
      if (locationId != null) 'locationId': locationId,
      if (status != null) 'status': status,
      if (purpose != null) 'purpose': purpose,
      if (referenceId != null) 'referenceId': referenceId,
      if (referenceType != null) 'referenceType': referenceType,
      if (createdAfter != null) 'createdAfter': createdAfter!.toIso8601String(),
      if (createdBefore != null) 'createdBefore': createdBefore!.toIso8601String(),
      if (expiresAfter != null) 'expiresAfter': expiresAfter!.toIso8601String(),
      if (expiresBefore != null) 'expiresBefore': expiresBefore!.toIso8601String(),
      if (page != null) 'page': page,
      if (limit != null) 'limit': limit,
      if (sortBy != null) 'sortBy': sortBy,
      if (sortOrder != null) 'sortOrder': sortOrder,
    };
  }
}

/// Consume stock reservation request
@freezed
sealed class ConsumeStockReservationRequest with _$ConsumeStockReservationRequest {
  const factory ConsumeStockReservationRequest({
    required double quantity,
    String? notes,
  }) = _ConsumeStockReservationRequest;

  factory ConsumeStockReservationRequest.fromJson(Map<String, dynamic> json) =>
      _$ConsumeStockReservationRequestFromJson(json);
}