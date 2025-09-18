import 'package:prodobit_flutter_sdk/core/api_client.dart';
import 'package:prodobit_flutter_sdk/models/models.dart';

/// Manufacturing service for BOM and ECO management
class ManufacturingService {
  const ManufacturingService(this._apiClient);

  final ApiClient _apiClient;

  // ========== BOMS ==========

  /// Get BOMs with filtering
  Future<PaginatedResponse<Bom>> getBoms({
    QueryParams? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/manufacturing/boms',
      queryParameters: query?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => Bom.fromJson(json! as Map<String, dynamic>),
    );
  }

  /// Get BOM by ID
  Future<Bom> getBomById(String bomId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/manufacturing/boms/$bomId',
    );

    return Bom.fromJson(response);
  }

  /// Create new BOM
  Future<Bom> createBom(CreateBomRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/manufacturing/boms',
      data: request.toJson(),
    );

    return Bom.fromJson(response);
  }

  /// Update BOM
  Future<Bom> updateBom(String bomId, UpdateBomRequest request) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/manufacturing/boms/$bomId',
      data: request.toJson(),
    );

    return Bom.fromJson(response);
  }

  /// Delete BOM
  Future<void> deleteBom(String bomId) async {
    await _apiClient.delete('/api/v1/manufacturing/boms/$bomId');
  }

  /// Get BOM explosion view
  Future<List<BomExplosionItem>> getBomExplosion(String bomId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/manufacturing/boms/$bomId/explosion',
    );

    final items = response['data'] as List<dynamic>;
    return items
        .map((item) => BomExplosionItem.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  /// Clone existing BOM
  Future<Bom> cloneBom(String bomId, CloneBomRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/manufacturing/boms/$bomId/clone',
      data: request.toJson(),
    );

    return Bom.fromJson(response);
  }

  /// Create BOM quickly
  Future<Bom> createBomQuick(CreateBomQuickRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/manufacturing/boms/quick',
      data: request.toJson(),
    );

    return Bom.fromJson(response);
  }

  // ========== BOM COMPONENTS ==========

  /// Add component to BOM
  Future<BomComponent> addBomComponent(
    String bomId,
    CreateBomComponentRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/manufacturing/boms/$bomId/components',
      data: request.toJson(),
    );

    return BomComponent.fromJson(response);
  }

  /// Get BOM components
  Future<PaginatedResponse<BomComponent>> getBomComponents(
    String bomId, {
    QueryParams? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/manufacturing/boms/$bomId/components',
      queryParameters: query?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => BomComponent.fromJson(json! as Map<String, dynamic>),
    );
  }

  /// Update BOM component
  Future<BomComponent> updateBomComponent(
    String bomId,
    String componentId,
    UpdateBomComponentRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/manufacturing/boms/$bomId/components/$componentId',
      data: request.toJson(),
    );

    return BomComponent.fromJson(response);
  }

  /// Delete BOM component
  Future<void> deleteBomComponent(String bomId, String componentId) async {
    await _apiClient.delete(
      '/api/v1/manufacturing/boms/$bomId/components/$componentId',
    );
  }

  // ========== BOM ANALYTICS ==========

  /// Get BOM lead time analysis
  Future<BomLeadTimeAnalysis> getBomLeadTime(String bomId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/manufacturing/boms/$bomId/lead-time',
    );

    return BomLeadTimeAnalysis.fromJson(response);
  }

  /// Get BOM statistics
  Future<BomStats> getBomStats(String bomId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/manufacturing/boms/$bomId/stats',
    );

    return BomStats.fromJson(response);
  }

  // ========== ECO MANAGEMENT ==========

  /// Get ECOs with filtering
  Future<PaginatedResponse<Eco>> getEcos({
    EcoFilters? filters,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/manufacturing/ecos',
      queryParameters: filters?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => Eco.fromJson(json! as Map<String, dynamic>),
    );
  }

  /// Get ECO by ID
  Future<Eco> getEcoById(String ecoId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/manufacturing/ecos/$ecoId',
    );

    return Eco.fromJson(response);
  }

  /// Create new ECO
  Future<Eco> createEco(CreateEcoRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/manufacturing/ecos',
      data: request.toJson(),
    );

    return Eco.fromJson(response);
  }

  /// Update ECO
  Future<Eco> updateEco(String ecoId, UpdateEcoRequest request) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/manufacturing/ecos/$ecoId',
      data: request.toJson(),
    );

    return Eco.fromJson(response);
  }

  /// Approve ECO
  Future<Eco> approveEco(String ecoId, ApproveEcoRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/manufacturing/ecos/$ecoId/approve',
      data: request.toJson(),
    );

    return Eco.fromJson(response);
  }

  /// Reject ECO
  Future<Eco> rejectEco(String ecoId, RejectEcoRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/manufacturing/ecos/$ecoId/reject',
      data: request.toJson(),
    );

    return Eco.fromJson(response);
  }

  // ========== MRP ==========

  /// Run MRP requirements calculation
  Future<Map<String, dynamic>> runMrpRequirements({
    List<String>? itemIds,
    DateTime? planningHorizon,
    Map<String, dynamic>? parameters,
  }) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/manufacturing/mrp/run',
      data: {
        if (itemIds != null) 'itemIds': itemIds,
        if (planningHorizon != null) 'planningHorizon': planningHorizon.toIso8601String(),
        if (parameters != null) 'parameters': parameters,
      },
    );

    return response;
  }

  // ========== WORK ORDERS ==========

  /// Get work orders
  Future<PaginatedResponse<WorkOrder>> getWorkOrders({
    QueryParams? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/manufacturing/work-orders',
      queryParameters: query?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => WorkOrder.fromJson(json! as Map<String, dynamic>),
    );
  }
}
