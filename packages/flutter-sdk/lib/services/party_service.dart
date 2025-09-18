import 'package:prodobit_flutter_sdk/core/api_client.dart';
import 'package:prodobit_flutter_sdk/models/models.dart';

/// Party service for customer/supplier management
class PartyService {
  const PartyService(this._apiClient);

  final ApiClient _apiClient;

  // ========== COMPLETE PARTY MANAGEMENT ==========

  /// Create person with roles and contacts
  Future<Party> createPerson(CreatePersonRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/parties/persons',
      data: request.toJson(),
    );

    return Party.fromJson(response);
  }

  /// Create organization with roles and contacts
  Future<Party> createOrganization(CreateOrganizationRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/parties/organizations',
      data: request.toJson(),
    );

    return Party.fromJson(response);
  }

  /// Get parties with comprehensive filtering
  Future<PaginatedResponse<Party>> getParties({
    PartySearchFilters? filters,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/parties',
      queryParameters: filters?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => Party.fromJson(json! as Map<String, dynamic>),
    );
  }

  /// Get party with full details
  Future<Party> getParty(String partyId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/parties/$partyId',
    );

    return Party.fromJson(response);
  }

  /// Update party information
  Future<Party> updateParty(String partyId, UpdatePartyRequest request) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/parties/$partyId',
      data: request.toJson(),
    );

    return Party.fromJson(response);
  }

  /// Delete party
  Future<void> deleteParty(String partyId) async {
    await _apiClient.delete('/api/v1/parties/$partyId');
  }

  // ========== ROLE-BASED PARTY METHODS ==========

  /// Get all customer parties
  Future<PaginatedResponse<Party>> getCustomers({
    QueryParams? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/parties/customers',
      queryParameters: query?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => Party.fromJson(json! as Map<String, dynamic>),
    );
  }

  /// Get all supplier parties
  Future<PaginatedResponse<Party>> getSuppliers({
    QueryParams? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/parties/suppliers',
      queryParameters: query?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => Party.fromJson(json! as Map<String, dynamic>),
    );
  }

  /// Get employee parties
  Future<PaginatedResponse<Party>> getEmployeeParties({
    QueryParams? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/parties/employees',
      queryParameters: query?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => Party.fromJson(json! as Map<String, dynamic>),
    );
  }

  // ========== HELPER METHODS ==========

  /// Create person customer quickly
  Future<Party> createPersonCustomer(CreatePersonCustomerRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/parties/customers/person',
      data: request.toJson(),
    );

    return Party.fromJson(response);
  }

  /// Create person supplier quickly
  Future<Party> createPersonSupplier(CreatePersonSupplierRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/parties/suppliers/person',
      data: request.toJson(),
    );

    return Party.fromJson(response);
  }

  /// Create organization customer quickly
  Future<Party> createOrganizationCustomer(CreateOrganizationCustomerRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/parties/customers/organization',
      data: request.toJson(),
    );

    return Party.fromJson(response);
  }

  /// Create organization supplier quickly
  Future<Party> createOrganizationSupplier(CreateOrganizationSupplierRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/parties/suppliers/organization',
      data: request.toJson(),
    );

    return Party.fromJson(response);
  }

  /// Create person with multiple roles
  Future<Party> createPersonWithRoles(CreatePersonWithRolesRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/parties/persons/with-roles',
      data: request.toJson(),
    );

    return Party.fromJson(response);
  }

  /// Search parties by various criteria
  Future<PaginatedResponse<Party>> searchParties({
    required String query,
    List<String>? roles,
    String? type,
  }) async {
    final queryParams = <String, dynamic>{
      'q': query,
      if (roles != null) 'roles': roles,
      if (type != null) 'type': type,
    };

    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/parties/search',
      queryParameters: queryParams,
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => Party.fromJson(json! as Map<String, dynamic>),
    );
  }

  // ========== CONTACT MECHANISMS ==========

  /// Add contact mechanism to party
  Future<ContactMechanism> addContactMechanism(
    String partyId,
    CreateContactMechanismRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/parties/$partyId/contacts',
      data: request.toJson(),
    );

    return ContactMechanism.fromJson(response);
  }

  /// Get party contact mechanisms
  Future<List<ContactMechanism>> getContactMechanisms(String partyId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/parties/$partyId/contacts',
    );

    final contacts = response['data'] as List<dynamic>;
    return contacts
        .map((contact) => ContactMechanism.fromJson(contact as Map<String, dynamic>))
        .toList();
  }

  /// Update contact mechanism
  Future<ContactMechanism> updateContactMechanism(
    String partyId,
    String contactId,
    UpdateContactMechanismRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/parties/$partyId/contacts/$contactId',
      data: request.toJson(),
    );

    return ContactMechanism.fromJson(response);
  }

  /// Delete contact mechanism
  Future<void> deleteContactMechanism(String partyId, String contactId) async {
    await _apiClient.delete('/api/v1/parties/$partyId/contacts/$contactId');
  }

  // ========== ADDRESSES ==========

  /// Add address to party
  Future<PartyAddress> addAddress(
    String partyId,
    CreateAddressRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/parties/$partyId/addresses',
      data: request.toJson(),
    );

    return PartyAddress.fromJson(response);
  }

  /// Get party addresses
  Future<List<PartyAddress>> getAddresses(String partyId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/parties/$partyId/addresses',
    );

    final addresses = response['data'] as List<dynamic>;
    return addresses
        .map((address) => PartyAddress.fromJson(address as Map<String, dynamic>))
        .toList();
  }

  /// Update address
  Future<PartyAddress> updateAddress(
    String partyId,
    String addressId,
    UpdateAddressRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/parties/$partyId/addresses/$addressId',
      data: request.toJson(),
    );

    return PartyAddress.fromJson(response);
  }

  /// Delete address
  Future<void> deleteAddress(String partyId, String addressId) async {
    await _apiClient.delete('/api/v1/parties/$partyId/addresses/$addressId');
  }
}
