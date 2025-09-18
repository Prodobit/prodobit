import 'package:prodobit_flutter_sdk/core/api_client.dart';
import 'package:prodobit_flutter_sdk/models/common/common_models.dart';
import 'package:prodobit_flutter_sdk/models/tenant/tenant_models.dart';

class TenantService {
  TenantService(this._apiClient);

  final ApiClient _apiClient;

  /// Get all tenants with optional filters
  Future<PaginatedResponse<Tenant>> getTenants({
    TenantFilters? filters,
  }) async {
    final queryParams = filters?.toQueryMap() ?? {};

    final response = await _apiClient.get(
      '/api/v1/tenants',
      queryParameters: queryParams,
    );

    return PaginatedResponse.fromJson(
      response.data as Map<String, dynamic>,
      (data) => Tenant.fromJson(data! as Map<String, dynamic>),
    );
  }

  /// Get a specific tenant by ID
  Future<Tenant> getTenant(String tenantId) async {
    final response = await _apiClient.get('/api/v1/tenants/$tenantId');

    return Tenant.fromJson(response.data as Map<String, dynamic>);
  }

  /// Create a new tenant
  Future<Tenant> createTenant(CreateTenantRequest request) async {
    final response = await _apiClient.post(
      '/api/v1/tenants',
      data: request.toJson(),
    );

    return Tenant.fromJson(response.data as Map<String, dynamic>);
  }

  /// Update an existing tenant
  Future<Tenant> updateTenant(
    String tenantId,
    UpdateTenantRequest request,
  ) async {
    final response = await _apiClient.put(
      '/api/v1/tenants/$tenantId',
      data: request.toJson(),
    );

    return Tenant.fromJson(response.data as Map<String, dynamic>);
  }

  /// Delete a tenant
  Future<void> deleteTenant(String tenantId) async {
    await _apiClient.delete('/api/v1/tenants/$tenantId');
  }

  /// Get all members of a tenant with optional filters
  Future<PaginatedResponse<TenantMember>> getTenantMembers(
    String tenantId, {
    TenantMemberFilters? filters,
  }) async {
    final queryParams = filters?.toQueryMap() ?? {};

    final response = await _apiClient.get(
      '/api/v1/tenants/$tenantId/members',
      queryParameters: queryParams,
    );

    return PaginatedResponse.fromJson(
      response.data as Map<String, dynamic>,
      (data) => TenantMember.fromJson(data! as Map<String, dynamic>),
    );
  }

  /// Get all roles for a tenant
  Future<List<TenantRole>> getTenantRoles(String tenantId) async {
    final response = await _apiClient.get('/api/v1/tenants/$tenantId/roles');

    return (response.data as List)
        .map((item) => TenantRole.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  /// Get all invitations for a tenant with optional filters
  Future<PaginatedResponse<TenantInvitation>> getTenantInvitations(
    String tenantId, {
    TenantInvitationFilters? filters,
  }) async {
    final queryParams = filters?.toQueryMap() ?? {};

    final response = await _apiClient.get(
      '/api/v1/tenants/$tenantId/invitations',
      queryParameters: queryParams,
    );

    return PaginatedResponse.fromJson(
      response.data as Map<String, dynamic>,
      (data) => TenantInvitation.fromJson(data! as Map<String, dynamic>),
    );
  }

  /// Create a new tenant invitation
  Future<TenantInvitation> createInvitation(
    String tenantId,
    CreateInvitationRequest request,
  ) async {
    final response = await _apiClient.post(
      '/api/v1/tenants/$tenantId/invitations',
      data: request.toJson(),
    );

    return TenantInvitation.fromJson(response.data as Map<String, dynamic>);
  }

  /// Get invitation details by token
  Future<TenantInvitation> getInvitationByToken(
    String token,
  ) async {
    final response = await _apiClient.get('/api/v1/invitations/$token');

    return TenantInvitation.fromJson(response.data as Map<String, dynamic>);
  }

  /// Accept a tenant invitation
  Future<TenantMember> acceptInvitation(String token) async {
    final response = await _apiClient.post('/api/v1/invitations/$token/accept');

    return TenantMember.fromJson(response.data as Map<String, dynamic>);
  }

  /// Update a tenant member's role or permissions
  Future<TenantMember> updateMembership(
    String tenantId,
    String memberId,
    UpdateMembershipRequest request,
  ) async {
    final response = await _apiClient.put(
      '/api/v1/tenants/$tenantId/members/$memberId',
      data: request.toJson(),
    );

    return TenantMember.fromJson(response.data as Map<String, dynamic>);
  }

  /// Remove a member from the tenant
  Future<void> removeMember(
    String tenantId,
    String memberId,
  ) async {
    await _apiClient.delete(
      '/api/v1/tenants/$tenantId/members/$memberId',
    );
  }
}
