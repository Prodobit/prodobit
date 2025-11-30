import 'package:prodobit_flutter_sdk/core/api_client.dart';
import 'package:prodobit_flutter_sdk/models/models.dart';

/// Service for service contract and ticket management operations
class ServiceService {
  const ServiceService(this._apiClient);

  final ApiClient _apiClient;

  // ==================== Service Contract Operations ====================

  /// Get all service contracts
  Future<List<ServiceContract>> getContracts({
    ServiceContractQuery? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/service/contracts',
      queryParameters: query?.toJson(),
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => ServiceContract.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Get service contract by ID
  Future<ServiceContract> getContractById(String id) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/service/contracts/$id',
    );

    final data = response['data'] as Map<String, dynamic>;
    return ServiceContract.fromJson(data);
  }

  /// Get service contracts by customer ID
  Future<List<ServiceContract>> getContractsByCustomer(
      String customerId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/service/contracts/customer/$customerId',
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => ServiceContract.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Get expiring contracts
  Future<List<ServiceContract>> getExpiringContracts({int days = 30}) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/service/contracts/expiring',
      queryParameters: {'days': days.toString()},
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => ServiceContract.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Get contracts for a specific asset
  Future<List<ServiceContract>> getContractsForAsset(String assetId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/service/contracts/asset/$assetId',
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => ServiceContract.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Create new service contract
  Future<ServiceContract> createContract(
      CreateServiceContractRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/service/contracts',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return ServiceContract.fromJson(data);
  }

  /// Update service contract
  Future<ServiceContract> updateContract(
    String id,
    UpdateServiceContractRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/service/contracts/$id',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return ServiceContract.fromJson(data);
  }

  /// Delete service contract
  Future<void> deleteContract(String id) async {
    await _apiClient.delete('/api/v1/service/contracts/$id');
  }

  // ==================== Contract Asset Operations ====================

  /// Get assets for a contract
  Future<List<ServiceContractAsset>> getContractAssets(
      String contractId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/service/contracts/$contractId/assets',
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) =>
            ServiceContractAsset.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Add asset to contract
  Future<ServiceContractAsset> addContractAsset(
    String contractId,
    AddContractAssetRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/service/contracts/$contractId/assets',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return ServiceContractAsset.fromJson(data);
  }

  /// Remove asset from contract
  Future<void> removeContractAsset(String contractId, String assetId) async {
    await _apiClient.delete(
      '/api/v1/service/contracts/$contractId/assets/$assetId',
    );
  }

  // ==================== Service Ticket Operations ====================

  /// Get all service tickets
  Future<List<ServiceTicket>> getTickets({
    ServiceTicketQuery? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/service/tickets',
      queryParameters: query?.toJson(),
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => ServiceTicket.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Get service ticket by ID
  Future<ServiceTicket> getTicketById(String id) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/service/tickets/$id',
    );

    final data = response['data'] as Map<String, dynamic>;
    return ServiceTicket.fromJson(data);
  }

  /// Get tickets by contract ID
  Future<List<ServiceTicket>> getTicketsByContract(String contractId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/service/tickets/contract/$contractId',
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => ServiceTicket.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Get tickets by asset ID
  Future<List<ServiceTicket>> getTicketsByAsset(String assetId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/service/tickets/asset/$assetId',
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => ServiceTicket.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Get open tickets
  Future<List<ServiceTicket>> getOpenTickets() async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/service/tickets/open',
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => ServiceTicket.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Get overdue tickets
  Future<List<ServiceTicket>> getOverdueTickets() async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/service/tickets/overdue',
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) => ServiceTicket.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Get ticket statistics
  Future<Map<String, dynamic>> getTicketStatistics() async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/service/tickets/statistics',
    );

    return response['data'] as Map<String, dynamic>;
  }

  /// Create new service ticket
  Future<ServiceTicket> createTicket(
      CreateServiceTicketRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/service/tickets',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return ServiceTicket.fromJson(data);
  }

  /// Update service ticket
  Future<ServiceTicket> updateTicket(
    String id,
    UpdateServiceTicketRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/service/tickets/$id',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return ServiceTicket.fromJson(data);
  }

  /// Delete service ticket
  Future<void> deleteTicket(String id) async {
    await _apiClient.delete('/api/v1/service/tickets/$id');
  }

  // ==================== Ticket Comment Operations ====================

  /// Get comments for a ticket
  Future<List<ServiceTicketComment>> getTicketComments(String ticketId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/service/tickets/$ticketId/comments',
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) =>
            ServiceTicketComment.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  /// Add comment to ticket
  Future<ServiceTicketComment> addTicketComment(
    String ticketId,
    CreateTicketCommentRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/service/tickets/$ticketId/comments',
      data: request.toJson(),
    );

    final data = response['data'] as Map<String, dynamic>;
    return ServiceTicketComment.fromJson(data);
  }

  // ==================== Ticket Status History Operations ====================

  /// Get status history for a ticket
  Future<List<ServiceTicketStatusHistory>> getTicketStatusHistory(
      String ticketId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/service/tickets/$ticketId/history',
    );

    final data = response['data'] as List<dynamic>;
    return data
        .map((json) =>
            ServiceTicketStatusHistory.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
