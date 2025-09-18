import 'package:prodobit_flutter_sdk/core/api_client.dart';
import 'package:prodobit_flutter_sdk/models/models.dart';

/// Sales service for order management
class SalesService {
  const SalesService(this._apiClient);

  final ApiClient _apiClient;

  // ========== SALES ORDERS ==========

  /// Get sales orders with filtering
  Future<PaginatedResponse<SalesOrder>> getSalesOrders({
    SalesOrderFilters? filters,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/sales/orders',
      queryParameters: filters?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => SalesOrder.fromJson(json! as Map<String, dynamic>),
    );
  }

  /// Get sales order by ID
  Future<SalesOrder> getSalesOrderById(String orderId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/sales/orders/$orderId',
    );

    return SalesOrder.fromJson(response);
  }

  /// Create new sales order
  Future<SalesOrder> createSalesOrder(CreateSalesOrderRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/sales/orders',
      data: request.toJson(),
    );

    return SalesOrder.fromJson(response);
  }

  /// Update sales order
  Future<SalesOrder> updateSalesOrder(
    String orderId,
    UpdateSalesOrderRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/sales/orders/$orderId',
      data: request.toJson(),
    );

    return SalesOrder.fromJson(response);
  }

  /// Update sales order status
  Future<SalesOrder> updateSalesOrderStatus(
    String orderId,
    UpdateSalesOrderStatusRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/sales/orders/$orderId/status',
      data: request.toJson(),
    );

    return SalesOrder.fromJson(response);
  }

  /// Delete sales order
  Future<void> deleteSalesOrder(String orderId) async {
    await _apiClient.delete('/api/v1/sales/orders/$orderId');
  }

  // ========== SALES ORDER ITEMS ==========

  /// Add item to sales order
  Future<SalesOrderLineItem> addSalesOrderItem(
    String orderId,
    CreateSalesOrderLineItemRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/sales/orders/$orderId/items',
      data: request.toJson(),
    );

    return SalesOrderLineItem.fromJson(response);
  }

  /// Update sales order item
  Future<SalesOrderLineItem> updateSalesOrderItem(
    String orderId,
    String itemId,
    UpdateSalesOrderLineItemRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/sales/orders/$orderId/items/$itemId',
      data: request.toJson(),
    );

    return SalesOrderLineItem.fromJson(response);
  }

  /// Remove item from sales order
  Future<void> removeSalesOrderItem(String orderId, String itemId) async {
    await _apiClient.delete('/api/v1/sales/orders/$orderId/items/$itemId');
  }

  /// Get sales order items
  Future<PaginatedResponse<SalesOrderLineItem>> getSalesOrderItems(
    String orderId, {
    QueryParams? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/sales/orders/$orderId/items',
      queryParameters: query?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => SalesOrderLineItem.fromJson(json! as Map<String, dynamic>),
    );
  }

  // ========== SALES ANALYTICS ==========

  /// Get sales order history
  Future<PaginatedResponse<SalesOrderHistory>> getSalesOrderHistory(
    String orderId, {
    QueryParams? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/sales/orders/$orderId/history',
      queryParameters: query?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => SalesOrderHistory.fromJson(json! as Map<String, dynamic>),
    );
  }

  /// Get sales analytics
  Future<Map<String, dynamic>> getSalesAnalytics({
    DateTime? startDate,
    DateTime? endDate,
    String? groupBy,
    List<String>? customerIds,
    List<String>? itemIds,
  }) async {
    final queryParams = <String, dynamic>{};
    if (startDate != null) queryParams['startDate'] = startDate.toIso8601String();
    if (endDate != null) queryParams['endDate'] = endDate.toIso8601String();
    if (groupBy != null) queryParams['groupBy'] = groupBy;
    if (customerIds != null) queryParams['customerIds'] = customerIds;
    if (itemIds != null) queryParams['itemIds'] = itemIds;

    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/sales/analytics',
      queryParameters: queryParams,
    );

    return response;
  }
}
