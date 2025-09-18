import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_models.freezed.dart';
part 'common_models.g.dart';

/// Address model
@freezed
class Address with _$Address {
  const factory Address({
    String? street,
    String? city,
    String? state,
    String? country,
    String? zipCode,
    double? latitude,
    double? longitude,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

/// Generic API response wrapper
@Freezed(genericArgumentFactories: true)
class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse({
    required bool success,
    T? data,
    String? message,
    String? error,
    Map<String, dynamic>? metadata,
    String? errorCode,
  }) = _ApiResponse<T>;

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$ApiResponseFromJson(json, fromJsonT);
}

/// Audit information
@freezed
class AuditInfo with _$AuditInfo {
  const factory AuditInfo({
    required DateTime createdAt,
    required String createdBy,
    DateTime? updatedAt,
    String? updatedBy,
    int? version,
  }) = _AuditInfo;

  factory AuditInfo.fromJson(Map<String, dynamic> json) =>
      _$AuditInfoFromJson(json);
}

/// Contact information model
@freezed
class ContactInfo with _$ContactInfo {
  const factory ContactInfo({
    String? email,
    String? phone,
    String? mobile,
    String? fax,
    String? website,
  }) = _ContactInfo;

  factory ContactInfo.fromJson(Map<String, dynamic> json) =>
      _$ContactInfoFromJson(json);
}

/// File upload response
@freezed
class FileUploadResponse with _$FileUploadResponse {
  const factory FileUploadResponse({
    required String id,
    required String filename,
    required String originalName,
    required String mimeType,
    required int size,
    required String url,
    Map<String, dynamic>? metadata,
  }) = _FileUploadResponse;

  factory FileUploadResponse.fromJson(Map<String, dynamic> json) =>
      _$FileUploadResponseFromJson(json);
}

/// Money/Currency model
@freezed
class Money with _$Money {
  const factory Money({
    required double amount,
    @Default('USD') String currency,
  }) = _Money;

  factory Money.fromJson(Map<String, dynamic> json) => _$MoneyFromJson(json);
}

/// Paginated response model
@Freezed(genericArgumentFactories: true)
class PaginatedResponse<T> with _$PaginatedResponse<T> {
  const factory PaginatedResponse({
    required List<T> data,
    required PaginationMeta pagination,
  }) = _PaginatedResponse<T>;

  factory PaginatedResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$PaginatedResponseFromJson(json, fromJsonT);
}

/// Pagination metadata
@freezed
class PaginationMeta with _$PaginationMeta {
  const factory PaginationMeta({
    required int total,
    required int page,
    required int perPage,
    required int totalPages,
    required bool hasNext,
    required bool hasPrev,
  }) = _PaginationMeta;

  factory PaginationMeta.fromJson(Map<String, dynamic> json) =>
      _$PaginationMetaFromJson(json);
}

/// Query parameters for list requests
@freezed
class QueryParams with _$QueryParams {
  const factory QueryParams({
    @Default(1) int page,
    @Default(20) int limit,
    String? search,
    String? sortBy,
    @Default('asc') String sortOrder,
    Map<String, String>? filters,
  }) = _QueryParams;

  factory QueryParams.fromJson(Map<String, dynamic> json) =>
      _$QueryParamsFromJson(json);

  const QueryParams._();

  /// Convert to query parameters map
  Map<String, dynamic> toQueryMap() {
    return {
      'page': page,
      'limit': limit,
      if (search?.isNotEmpty ?? false) 'search': search,
      if (sortBy?.isNotEmpty ?? false) 'sortBy': sortBy,
      if (sortOrder != 'asc') 'sortOrder': sortOrder,
      ...?filters,
    };
  }
}
