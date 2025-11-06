import 'package:freezed_annotation/freezed_annotation.dart';

part 'enhanced_party_models.freezed.dart';
part 'enhanced_party_models.g.dart';

/// Create person request
@freezed
sealed class CreatePersonRequest with _$CreatePersonRequest {
  const factory CreatePersonRequest({
    required String firstName,
    required String lastName,
    String? middleName,
    String? salutation,
    String? suffix,
    String? nickname,
    DateTime? birthDate,
    String? gender,
    String? maritalStatus,
    String? occupation,
    String? notes,
    List<String>? roles,
    Map<String, dynamic>? attributes,
  }) = _CreatePersonRequest;

  factory CreatePersonRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePersonRequestFromJson(json);
}

/// Create organization request
@freezed
sealed class CreateOrganizationRequest with _$CreateOrganizationRequest {
  const factory CreateOrganizationRequest({
    required String name,
    String? legalName,
    String? shortName,
    String? description,
    String? taxId,
    String? registrationNumber,
    String? industry,
    String? website,
    DateTime? establishedDate,
    String? notes,
    List<String>? roles,
    Map<String, dynamic>? attributes,
  }) = _CreateOrganizationRequest;

  factory CreateOrganizationRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateOrganizationRequestFromJson(json);
}

/// Create person with roles request
@freezed
sealed class CreatePersonWithRolesRequest with _$CreatePersonWithRolesRequest {
  const factory CreatePersonWithRolesRequest({
    required String firstName,
    required String lastName,
    required List<String> roles,
    String? middleName,
    String? salutation,
    String? notes,
    Map<String, dynamic>? attributes,
  }) = _CreatePersonWithRolesRequest;

  factory CreatePersonWithRolesRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePersonWithRolesRequestFromJson(json);
}

/// Create person customer request
@freezed
sealed class CreatePersonCustomerRequest with _$CreatePersonCustomerRequest {
  const factory CreatePersonCustomerRequest({
    required String firstName,
    required String lastName,
    String? middleName,
    String? email,
    String? phone,
    String? notes,
    Map<String, dynamic>? attributes,
  }) = _CreatePersonCustomerRequest;

  factory CreatePersonCustomerRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePersonCustomerRequestFromJson(json);
}

/// Create person supplier request
@freezed
sealed class CreatePersonSupplierRequest with _$CreatePersonSupplierRequest {
  const factory CreatePersonSupplierRequest({
    required String firstName,
    required String lastName,
    String? middleName,
    String? email,
    String? phone,
    String? businessName,
    String? taxId,
    String? notes,
    Map<String, dynamic>? attributes,
  }) = _CreatePersonSupplierRequest;

  factory CreatePersonSupplierRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePersonSupplierRequestFromJson(json);
}

/// Create organization customer request
@freezed
sealed class CreateOrganizationCustomerRequest with _$CreateOrganizationCustomerRequest {
  const factory CreateOrganizationCustomerRequest({
    required String name,
    String? legalName,
    String? email,
    String? phone,
    String? website,
    String? taxId,
    String? registrationNumber,
    String? industry,
    String? notes,
    Map<String, dynamic>? attributes,
  }) = _CreateOrganizationCustomerRequest;

  factory CreateOrganizationCustomerRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateOrganizationCustomerRequestFromJson(json);
}

/// Create organization supplier request
@freezed
sealed class CreateOrganizationSupplierRequest with _$CreateOrganizationSupplierRequest {
  const factory CreateOrganizationSupplierRequest({
    required String name,
    String? legalName,
    String? email,
    String? phone,
    String? website,
    String? taxId,
    String? registrationNumber,
    String? industry,
    String? paymentTerms,
    String? notes,
    Map<String, dynamic>? attributes,
  }) = _CreateOrganizationSupplierRequest;

  factory CreateOrganizationSupplierRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateOrganizationSupplierRequestFromJson(json);
}

/// Party search filters
@freezed
sealed class PartySearchFilters with _$PartySearchFilters {
  const factory PartySearchFilters({
    String? name,
    String? email,
    String? phone,
    String? type, // 'person', 'organization'
    List<String>? roles,
    String? status,
    String? city,
    String? state,
    String? country,
    DateTime? createdAfter,
    DateTime? createdBefore,
    int? page,
    int? limit,
    String? sortBy,
    String? sortOrder,
  }) = _PartySearchFilters;

  factory PartySearchFilters.fromJson(Map<String, dynamic> json) =>
      _$PartySearchFiltersFromJson(json);

  const PartySearchFilters._();

  /// Convert to query parameters map
  Map<String, dynamic> toQueryMap() {
    return {
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (phone != null) 'phone': phone,
      if (type != null) 'type': type,
      if (roles != null) 'roles': roles,
      if (status != null) 'status': status,
      if (city != null) 'city': city,
      if (state != null) 'state': state,
      if (country != null) 'country': country,
      if (createdAfter != null) 'createdAfter': createdAfter!.toIso8601String(),
      if (createdBefore != null) 'createdBefore': createdBefore!.toIso8601String(),
      if (page != null) 'page': page,
      if (limit != null) 'limit': limit,
      if (sortBy != null) 'sortBy': sortBy,
      if (sortOrder != null) 'sortOrder': sortOrder,
    };
  }
}