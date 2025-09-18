import 'package:prodobit_flutter_sdk/core/api_client.dart';
import 'package:prodobit_flutter_sdk/models/models.dart';

/// Service for inventory management operations
class InventoryService {
  const InventoryService(this._apiClient);

  final ApiClient _apiClient;

  // ========== ITEMS ==========

  /// Adjust stock quantity
  Future<StockMovement> adjustStock(StockAdjustmentRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/inventory/stock/adjust',
      data: request.toJson(),
    );

    return StockMovement.fromJson(response);
  }

  /// Create new item
  Future<Item> createItem(ItemRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/inventory/items',
      data: request.toJson(),
    );

    return Item.fromJson(response);
  }

  /// Create new location
  Future<Location> createLocation({
    required String name,
    required String code,
    String? description,
    String? type,
    String? parentId,
    Address? address,
    ContactInfo? contactInfo,
    Map<String, dynamic>? metadata,
  }) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/inventory/locations',
      data: {
        'name': name,
        'code': code,
        if (description != null) 'description': description,
        if (type != null) 'type': type,
        if (parentId != null) 'parentId': parentId,
        if (address != null) 'address': address.toJson(),
        if (contactInfo != null) 'contactInfo': contactInfo.toJson(),
        if (metadata != null) 'metadata': metadata,
      },
    );

    return Location.fromJson(response);
  }

  /// Delete item
  Future<void> deleteItem(String itemId) async {
    await _apiClient.delete('/api/v1/inventory/items/$itemId');
  }

  /// Delete location
  Future<void> deleteLocation(String locationId) async {
    await _apiClient.delete('/api/v1/inventory/locations/$locationId');
  }

  /// Get inventory turnover
  Future<Map<String, dynamic>> getInventoryTurnover({
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    final queryParams = <String, dynamic>{};
    if (startDate != null) {
      queryParams['startDate'] = startDate.toIso8601String();
    }
    if (endDate != null) queryParams['endDate'] = endDate.toIso8601String();

    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/inventory/analytics/turnover',
      queryParameters: queryParams,
    );

    return response['data'] as Map<String, dynamic>;
  }

  // ========== STOCK ==========

  /// Get item by ID
  Future<Item> getItem(String itemId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/inventory/items/$itemId',
    );

    return Item.fromJson(response);
  }

  /// Get all items
  Future<PaginatedResponse<Item>> getItems({
    QueryParams? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/inventory/items',
      queryParameters: query?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => Item.fromJson(json! as Map<String, dynamic>),
    );
  }

  /// Get stock levels for an item
  Future<List<StockEntry>> getItemStock(String itemId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/inventory/items/$itemId/stock',
    );

    final stock = response['data'] as List<dynamic>;
    return stock
        .map((entry) => StockEntry.fromJson(entry as Map<String, dynamic>))
        .toList();
  }

  /// Get location by ID
  Future<Location> getLocation(String locationId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/inventory/locations/$locationId',
    );

    return Location.fromJson(response);
  }

  /// Get all locations
  Future<PaginatedResponse<Location>> getLocations({
    QueryParams? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/inventory/locations',
      queryParameters: query?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => Location.fromJson(json! as Map<String, dynamic>),
    );
  }

  // ========== LOCATIONS ==========

  /// Get stock by location
  Future<PaginatedResponse<StockEntry>> getLocationStock(
    String locationId, {
    QueryParams? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/inventory/locations/$locationId/stock',
      queryParameters: query?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => StockEntry.fromJson(json! as Map<String, dynamic>),
    );
  }

  /// Get low stock items
  Future<List<StockEntry>> getLowStockItems() async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/inventory/analytics/low-stock',
    );

    final items = response['data'] as List<dynamic>;
    return items
        .map((item) => StockEntry.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  /// Get stock movements
  Future<PaginatedResponse<StockMovement>> getStockMovements({
    String? itemId,
    String? locationId,
    QueryParams? query,
  }) async {
    final queryParams = query?.toQueryMap() ?? <String, dynamic>{};
    if (itemId != null) queryParams['itemId'] = itemId;
    if (locationId != null) queryParams['locationId'] = locationId;

    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/inventory/stock/movements',
      queryParameters: queryParams,
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => StockMovement.fromJson(json! as Map<String, dynamic>),
    );
  }

  /// Get stock value by location
  Future<Map<String, double>> getStockValueByLocation() async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/inventory/analytics/stock-value',
    );

    return Map<String, double>.from(response['data'] as Map);
  }

  /// Search items by name or code
  Future<List<Item>> searchItems(String query) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/inventory/items/search',
      queryParameters: {'q': query},
    );

    final items = response['data'] as List<dynamic>;
    return items
        .map((item) => Item.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  // ========== STOCK RESERVATIONS ==========

  /// Create stock reservation
  Future<StockReservation> createStockReservation(
    CreateStockReservationRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/inventory/stock-reservations',
      data: request.toJson(),
    );

    return StockReservation.fromJson(response);
  }

  /// Get stock reservations
  Future<PaginatedResponse<StockReservation>> getStockReservations({
    StockReservationFilters? filters,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/inventory/stock-reservations',
      queryParameters: filters?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => StockReservation.fromJson(json! as Map<String, dynamic>),
    );
  }

  /// Get stock reservation by ID
  Future<StockReservation> getStockReservation(String reservationId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/inventory/stock-reservations/$reservationId',
    );

    return StockReservation.fromJson(response);
  }

  /// Update stock reservation
  Future<StockReservation> updateStockReservation(
    String reservationId,
    UpdateStockReservationRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/inventory/stock-reservations/$reservationId',
      data: request.toJson(),
    );

    return StockReservation.fromJson(response);
  }

  /// Consume stock reservation
  Future<StockReservation> consumeStockReservation(
    String reservationId,
    ConsumeStockReservationRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/inventory/stock-reservations/$reservationId/consume',
      data: request.toJson(),
    );

    return StockReservation.fromJson(response);
  }

  /// Release stock reservation
  Future<StockReservation> releaseStockReservation(
    String reservationId, {
    String? notes,
  }) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/inventory/stock-reservations/$reservationId/release',
      data: {
        if (notes != null) 'notes': notes,
      },
    );

    return StockReservation.fromJson(response);
  }

  /// Delete stock reservation
  Future<void> deleteStockReservation(String reservationId) async {
    await _apiClient.delete(
      '/api/v1/inventory/stock-reservations/$reservationId',
    );
  }

  // ========== PHYSICAL INVENTORY ==========

  /// Get physical inventories
  Future<PaginatedResponse<PhysicalInventory>> getPhysicalInventories({
    PhysicalInventoryFilters? filters,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/inventory/physical-inventories',
      queryParameters: filters?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => PhysicalInventory.fromJson(json! as Map<String, dynamic>),
    );
  }

  /// Get physical inventory by ID
  Future<PhysicalInventory> getPhysicalInventory(String inventoryId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/inventory/physical-inventories/$inventoryId',
    );

    return PhysicalInventory.fromJson(response);
  }

  /// Create physical inventory
  Future<PhysicalInventory> createPhysicalInventory(
    CreatePhysicalInventoryRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/inventory/physical-inventories',
      data: request.toJson(),
    );

    return PhysicalInventory.fromJson(response);
  }

  /// Update physical inventory
  Future<PhysicalInventory> updatePhysicalInventory(
    String inventoryId,
    UpdatePhysicalInventoryRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/inventory/physical-inventories/$inventoryId',
      data: request.toJson(),
    );

    return PhysicalInventory.fromJson(response);
  }

  /// Delete physical inventory
  Future<void> deletePhysicalInventory(String inventoryId) async {
    await _apiClient.delete(
      '/api/v1/inventory/physical-inventories/$inventoryId',
    );
  }

  /// Start physical inventory
  Future<PhysicalInventory> startPhysicalInventory(String inventoryId) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/inventory/physical-inventories/$inventoryId/start',
    );

    return PhysicalInventory.fromJson(response);
  }

  /// Complete physical inventory
  Future<PhysicalInventory> completePhysicalInventory(String inventoryId) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/inventory/physical-inventories/$inventoryId/complete',
    );

    return PhysicalInventory.fromJson(response);
  }

  /// Cancel physical inventory
  Future<PhysicalInventory> cancelPhysicalInventory(String inventoryId) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/inventory/physical-inventories/$inventoryId/cancel',
    );

    return PhysicalInventory.fromJson(response);
  }

  /// Get physical inventory items
  Future<PaginatedResponse<PhysicalInventoryItem>> getPhysicalInventoryItems(
    String inventoryId, {
    QueryParams? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/inventory/physical-inventories/$inventoryId/items',
      queryParameters: query?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => PhysicalInventoryItem.fromJson(json! as Map<String, dynamic>),
    );
  }

  /// Update physical inventory item
  Future<PhysicalInventoryItem> updatePhysicalInventoryItem(
    String inventoryId,
    String itemId,
    UpdatePhysicalInventoryItemRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/inventory/physical-inventories/$inventoryId/items/$itemId',
      data: request.toJson(),
    );

    return PhysicalInventoryItem.fromJson(response);
  }

  /// Generate physical inventory adjustments
  Future<List<PhysicalInventoryAdjustment>> generatePhysicalInventoryAdjustments(
    String inventoryId,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/inventory/physical-inventories/$inventoryId/generate-adjustments',
    );

    final adjustments = response['data'] as List<dynamic>;
    return adjustments
        .map((adj) => PhysicalInventoryAdjustment.fromJson(adj as Map<String, dynamic>))
        .toList();
  }

  // ========== STOCK ADJUSTMENTS ==========

  /// Get stock adjustments
  Future<PaginatedResponse<StockAdjustment>> getStockAdjustments({
    StockAdjustmentFilters? filters,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/inventory/stock-adjustments',
      queryParameters: filters?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => StockAdjustment.fromJson(json! as Map<String, dynamic>),
    );
  }

  /// Get stock adjustment by ID
  Future<StockAdjustment> getStockAdjustment(String adjustmentId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/inventory/stock-adjustments/$adjustmentId',
    );

    return StockAdjustment.fromJson(response);
  }

  /// Create stock adjustment
  Future<StockAdjustment> createStockAdjustment(
    CreateStockAdjustmentRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/inventory/stock-adjustments',
      data: request.toJson(),
    );

    return StockAdjustment.fromJson(response);
  }

  /// Update stock adjustment
  Future<StockAdjustment> updateStockAdjustment(
    String adjustmentId,
    UpdateStockAdjustmentRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/inventory/stock-adjustments/$adjustmentId',
      data: request.toJson(),
    );

    return StockAdjustment.fromJson(response);
  }

  /// Delete stock adjustment
  Future<void> deleteStockAdjustment(String adjustmentId) async {
    await _apiClient.delete(
      '/api/v1/inventory/stock-adjustments/$adjustmentId',
    );
  }

  /// Approve stock adjustment
  Future<StockAdjustment> approveStockAdjustment(
    String adjustmentId, {
    String? notes,
  }) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/inventory/stock-adjustments/$adjustmentId/approve',
      data: {
        if (notes != null) 'notes': notes,
      },
    );

    return StockAdjustment.fromJson(response);
  }

  /// Reject stock adjustment
  Future<StockAdjustment> rejectStockAdjustment(
    String adjustmentId,
    RejectStockAdjustmentRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/inventory/stock-adjustments/$adjustmentId/reject',
      data: request.toJson(),
    );

    return StockAdjustment.fromJson(response);
  }

  /// Get stock adjustment items
  Future<PaginatedResponse<StockAdjustmentItem>> getStockAdjustmentItems(
    String adjustmentId, {
    QueryParams? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/inventory/stock-adjustments/$adjustmentId/items',
      queryParameters: query?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => StockAdjustmentItem.fromJson(json! as Map<String, dynamic>),
    );
  }

  // ========== LOT MANAGEMENT ==========

  /// Get lot genealogies
  Future<PaginatedResponse<LotGenealogy>> getLotGenealogies({
    LotGenealogyFilters? filters,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/inventory/lot-genealogies',
      queryParameters: filters?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => LotGenealogy.fromJson(json! as Map<String, dynamic>),
    );
  }

  /// Create lot genealogy
  Future<LotGenealogy> createLotGenealogy({
    required String lotNumber,
    required String itemId,
    required String locationId,
    required double quantity,
    DateTime? expiryDate,
    String? parentLotId,
    String? supplierLotNumber,
    String? supplierName,
    String? receiptNumber,
    String? notes,
    Map<String, dynamic>? attributes,
  }) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/inventory/lot-genealogies',
      data: {
        'lotNumber': lotNumber,
        'itemId': itemId,
        'locationId': locationId,
        'quantity': quantity,
        if (expiryDate != null) 'expiryDate': expiryDate.toIso8601String(),
        if (parentLotId != null) 'parentLotId': parentLotId,
        if (supplierLotNumber != null) 'supplierLotNumber': supplierLotNumber,
        if (supplierName != null) 'supplierName': supplierName,
        if (receiptNumber != null) 'receiptNumber': receiptNumber,
        if (notes != null) 'notes': notes,
        if (attributes != null) 'attributes': attributes,
      },
    );

    return LotGenealogy.fromJson(response);
  }

  /// Get lot children
  Future<List<LotGenealogy>> getLotChildren(String parentLotId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/inventory/lot-genealogies/$parentLotId/children',
    );

    final children = response['data'] as List<dynamic>;
    return children
        .map((child) => LotGenealogy.fromJson(child as Map<String, dynamic>))
        .toList();
  }

  /// Get lot parents
  Future<List<LotGenealogy>> getLotParents(String lotId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/inventory/lot-genealogies/$lotId/parents',
    );

    final parents = response['data'] as List<dynamic>;
    return parents
        .map((parent) => LotGenealogy.fromJson(parent as Map<String, dynamic>))
        .toList();
  }

  /// Get lot tracking history
  Future<PaginatedResponse<LotTrackingHistory>> getLotTrackingHistory({
    LotTrackingHistoryFilters? filters,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/inventory/lot-tracking-history',
      queryParameters: filters?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => LotTrackingHistory.fromJson(json! as Map<String, dynamic>),
    );
  }

  /// Update lot tracking
  Future<LotGenealogy> updateLotTracking(
    String lotId,
    UpdateLotTrackingRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/inventory/lot-genealogies/$lotId',
      data: request.toJson(),
    );

    return LotGenealogy.fromJson(response);
  }

  /// Quarantine lot
  Future<LotGenealogy> quarantineLot(
    String lotId,
    QuarantineLotRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/inventory/lot-genealogies/$lotId/quarantine',
      data: request.toJson(),
    );

    return LotGenealogy.fromJson(response);
  }

  /// Release lot from quarantine
  Future<LotGenealogy> releaseLot(
    String lotId,
    ReleaseLotRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/inventory/lot-genealogies/$lotId/release',
      data: request.toJson(),
    );

    return LotGenealogy.fromJson(response);
  }

  /// Split lot into multiple lots
  Future<List<LotGenealogy>> splitLot(SplitLotRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/inventory/lot-genealogies/split',
      data: request.toJson(),
    );

    final lots = response['data'] as List<dynamic>;
    return lots
        .map((lot) => LotGenealogy.fromJson(lot as Map<String, dynamic>))
        .toList();
  }

  /// Merge multiple lots into one
  Future<LotGenealogy> mergeLots(MergeLotsRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/inventory/lot-genealogies/merge',
      data: request.toJson(),
    );

    return LotGenealogy.fromJson(response);
  }

  /// Get expiring lots
  Future<List<ExpiringLot>> getExpiringLots({
    int? daysAhead = 30,
    String? locationId,
    String? itemId,
  }) async {
    final queryParams = <String, dynamic>{};
    if (daysAhead != null) queryParams['daysAhead'] = daysAhead;
    if (locationId != null) queryParams['locationId'] = locationId;
    if (itemId != null) queryParams['itemId'] = itemId;

    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/inventory/lot-genealogies/expiring',
      queryParameters: queryParams,
    );

    final lots = response['data'] as List<dynamic>;
    return lots
        .map((lot) => ExpiringLot.fromJson(lot as Map<String, dynamic>))
        .toList();
  }

  // ========== ANALYTICS ==========

  /// Transfer stock between locations
  Future<StockMovement> transferStock(StockTransferRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/inventory/stock/transfer',
      data: request.toJson(),
    );

    return StockMovement.fromJson(response);
  }

  /// Update item
  Future<Item> updateItem(String itemId, ItemRequest request) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/inventory/items/$itemId',
      data: request.toJson(),
    );

    return Item.fromJson(response);
  }

  /// Update location
  Future<Location> updateLocation(
    String locationId, {
    String? name,
    String? code,
    String? description,
    String? type,
    String? parentId,
    Address? address,
    ContactInfo? contactInfo,
    bool? isActive,
    Map<String, dynamic>? metadata,
  }) async {
    final data = <String, dynamic>{};
    if (name != null) data['name'] = name;
    if (code != null) data['code'] = code;
    if (description != null) data['description'] = description;
    if (type != null) data['type'] = type;
    if (parentId != null) data['parentId'] = parentId;
    if (address != null) data['address'] = address.toJson();
    if (contactInfo != null) data['contactInfo'] = contactInfo.toJson();
    if (isActive != null) data['isActive'] = isActive;
    if (metadata != null) data['metadata'] = metadata;

    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/inventory/locations/$locationId',
      data: data,
    );

    return Location.fromJson(response);
  }
}
