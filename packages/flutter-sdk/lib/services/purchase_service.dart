import 'package:prodobit_flutter_sdk/core/api_client.dart';
import 'package:prodobit_flutter_sdk/models/models.dart';

/// Purchase service for procurement management
class PurchaseService {
  const PurchaseService(this._apiClient);

  final ApiClient _apiClient;

  // ========== PURCHASE ORDERS ==========

  /// Get purchase orders with filtering
  Future<PaginatedResponse<PurchaseOrder>> getPurchaseOrders({
    PurchaseOrderFilters? filters,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/purchase/orders',
      queryParameters: filters?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => PurchaseOrder.fromJson(json! as Map<String, dynamic>),
    );
  }

  /// Get purchase order by ID
  Future<PurchaseOrder> getPurchaseOrder(String orderId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/purchase/orders/$orderId',
    );

    return PurchaseOrder.fromJson(response);
  }

  /// Create new purchase order
  Future<PurchaseOrder> createPurchaseOrder(
    CreatePurchaseOrderRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/orders',
      data: request.toJson(),
    );

    return PurchaseOrder.fromJson(response);
  }

  /// Update purchase order
  Future<PurchaseOrder> updatePurchaseOrder(
    String orderId,
    UpdatePurchaseOrderRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/purchase/orders/$orderId',
      data: request.toJson(),
    );

    return PurchaseOrder.fromJson(response);
  }

  /// Delete purchase order
  Future<void> deletePurchaseOrder(String orderId) async {
    await _apiClient.delete('/api/v1/purchase/orders/$orderId');
  }

  /// Approve purchase order
  Future<PurchaseOrder> approvePurchaseOrder(String orderId) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/orders/$orderId/approve',
    );

    return PurchaseOrder.fromJson(response);
  }

  /// Send purchase order to supplier
  Future<PurchaseOrder> sendPurchaseOrder(String orderId) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/orders/$orderId/send',
    );

    return PurchaseOrder.fromJson(response);
  }

  /// Acknowledge purchase order receipt
  Future<PurchaseOrder> acknowledgePurchaseOrder(String orderId) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/orders/$orderId/acknowledge',
    );

    return PurchaseOrder.fromJson(response);
  }

  /// Cancel purchase order
  Future<PurchaseOrder> cancelPurchaseOrder(String orderId) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/orders/$orderId/cancel',
    );

    return PurchaseOrder.fromJson(response);
  }

  /// Close purchase order
  Future<PurchaseOrder> closePurchaseOrder(String orderId) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/orders/$orderId/close',
    );

    return PurchaseOrder.fromJson(response);
  }

  // ========== PURCHASE ORDER LINE ITEMS ==========

  /// Get purchase order line items
  Future<PaginatedResponse<PurchaseOrderLineItem>> getPurchaseOrderLineItems(
    String orderId, {
    QueryParams? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/purchase/orders/$orderId/items',
      queryParameters: query?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => PurchaseOrderLineItem.fromJson(json! as Map<String, dynamic>),
    );
  }

  /// Add line item to purchase order
  Future<PurchaseOrderLineItem> addPurchaseOrderLineItem(
    String orderId,
    CreatePurchaseOrderLineItemRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/orders/$orderId/items',
      data: request.toJson(),
    );

    return PurchaseOrderLineItem.fromJson(response);
  }

  /// Update purchase order line item
  Future<PurchaseOrderLineItem> updatePurchaseOrderLineItem(
    String orderId,
    String itemId,
    UpdatePurchaseOrderLineItemRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/purchase/orders/$orderId/items/$itemId',
      data: request.toJson(),
    );

    return PurchaseOrderLineItem.fromJson(response);
  }

  /// Delete purchase order line item
  Future<void> deletePurchaseOrderLineItem(String orderId, String itemId) async {
    await _apiClient.delete('/api/v1/purchase/orders/$orderId/items/$itemId');
  }

  // ========== PURCHASE REQUISITIONS ==========

  /// Get purchase requisitions with filtering
  Future<PaginatedResponse<PurchaseRequisition>> getPurchaseRequisitions({
    PurchaseRequisitionFilters? filters,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/purchase/requisitions',
      queryParameters: filters?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => PurchaseRequisition.fromJson(json! as Map<String, dynamic>),
    );
  }

  /// Get purchase requisition by ID
  Future<PurchaseRequisition> getPurchaseRequisition(String requisitionId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/purchase/requisitions/$requisitionId',
    );

    return PurchaseRequisition.fromJson(response);
  }

  /// Create new purchase requisition
  Future<PurchaseRequisition> createPurchaseRequisition(
    CreatePurchaseRequisitionRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/requisitions',
      data: request.toJson(),
    );

    return PurchaseRequisition.fromJson(response);
  }

  /// Update purchase requisition
  Future<PurchaseRequisition> updatePurchaseRequisition(
    String requisitionId,
    UpdatePurchaseRequisitionRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/purchase/requisitions/$requisitionId',
      data: request.toJson(),
    );

    return PurchaseRequisition.fromJson(response);
  }

  /// Delete purchase requisition
  Future<void> deletePurchaseRequisition(String requisitionId) async {
    await _apiClient.delete('/api/v1/purchase/requisitions/$requisitionId');
  }

  /// Submit purchase requisition for approval
  Future<PurchaseRequisition> submitPurchaseRequisition(String requisitionId) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/requisitions/$requisitionId/submit',
    );

    return PurchaseRequisition.fromJson(response);
  }

  /// Approve purchase requisition
  Future<PurchaseRequisition> approvePurchaseRequisition(
    String requisitionId,
    ApprovePurchaseRequisitionRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/requisitions/$requisitionId/approve',
      data: request.toJson(),
    );

    return PurchaseRequisition.fromJson(response);
  }

  /// Reject purchase requisition
  Future<PurchaseRequisition> rejectPurchaseRequisition(
    String requisitionId,
    RejectPurchaseRequisitionRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/requisitions/$requisitionId/reject',
      data: request.toJson(),
    );

    return PurchaseRequisition.fromJson(response);
  }

  /// Close purchase requisition
  Future<PurchaseRequisition> closePurchaseRequisition(String requisitionId) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/requisitions/$requisitionId/close',
    );

    return PurchaseRequisition.fromJson(response);
  }

  /// Cancel purchase requisition
  Future<PurchaseRequisition> cancelPurchaseRequisition(String requisitionId) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/requisitions/$requisitionId/cancel',
    );

    return PurchaseRequisition.fromJson(response);
  }

  // ========== PURCHASE REQUISITION LINE ITEMS ==========

  /// Get purchase requisition line items
  Future<PaginatedResponse<PurchaseRequisitionLineItem>> getPurchaseRequisitionLineItems(
    String requisitionId, {
    QueryParams? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/purchase/requisitions/$requisitionId/items',
      queryParameters: query?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => PurchaseRequisitionLineItem.fromJson(json! as Map<String, dynamic>),
    );
  }

  /// Add line item to purchase requisition
  Future<PurchaseRequisitionLineItem> addPurchaseRequisitionLineItem(
    String requisitionId,
    CreatePurchaseRequisitionLineItemRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/requisitions/$requisitionId/items',
      data: request.toJson(),
    );

    return PurchaseRequisitionLineItem.fromJson(response);
  }

  /// Update purchase requisition line item
  Future<PurchaseRequisitionLineItem> updatePurchaseRequisitionLineItem(
    String requisitionId,
    String itemId,
    UpdatePurchaseRequisitionLineItemRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/purchase/requisitions/$requisitionId/items/$itemId',
      data: request.toJson(),
    );

    return PurchaseRequisitionLineItem.fromJson(response);
  }

  /// Delete purchase requisition line item
  Future<void> deletePurchaseRequisitionLineItem(String requisitionId, String itemId) async {
    await _apiClient.delete('/api/v1/purchase/requisitions/$requisitionId/items/$itemId');
  }

  /// Convert requisition to purchase order
  Future<PurchaseOrder> convertRequisitionToPurchaseOrder(String requisitionId) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/requisitions/$requisitionId/convert-to-order',
    );

    return PurchaseOrder.fromJson(response);
  }

  // ========== SUPPLIER QUOTATIONS ==========

  /// Get supplier quotations with filtering
  Future<PaginatedResponse<SupplierQuotation>> getSupplierQuotations({
    SupplierQuotationFilters? filters,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/purchase/quotations',
      queryParameters: filters?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => SupplierQuotation.fromJson(json! as Map<String, dynamic>),
    );
  }

  /// Get supplier quotation by ID
  Future<SupplierQuotation> getSupplierQuotation(String quotationId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/purchase/quotations/$quotationId',
    );

    return SupplierQuotation.fromJson(response);
  }

  /// Create new supplier quotation
  Future<SupplierQuotation> createSupplierQuotation(
    CreateSupplierQuotationRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/quotations',
      data: request.toJson(),
    );

    return SupplierQuotation.fromJson(response);
  }

  /// Update supplier quotation
  Future<SupplierQuotation> updateSupplierQuotation(
    String quotationId,
    UpdateSupplierQuotationRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/purchase/quotations/$quotationId',
      data: request.toJson(),
    );

    return SupplierQuotation.fromJson(response);
  }

  /// Delete supplier quotation
  Future<void> deleteSupplierQuotation(String quotationId) async {
    await _apiClient.delete('/api/v1/purchase/quotations/$quotationId');
  }

  /// Select supplier quotation
  Future<SupplierQuotation> selectSupplierQuotation(String quotationId) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/quotations/$quotationId/select',
    );

    return SupplierQuotation.fromJson(response);
  }

  /// Reject supplier quotation
  Future<SupplierQuotation> rejectSupplierQuotation(String quotationId) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/quotations/$quotationId/reject',
    );

    return SupplierQuotation.fromJson(response);
  }

  // ========== SUPPLIER QUOTATION LINE ITEMS ==========

  /// Get supplier quotation line items
  Future<PaginatedResponse<SupplierQuotationLineItem>> getSupplierQuotationLineItems(
    String quotationId, {
    QueryParams? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/purchase/quotations/$quotationId/items',
      queryParameters: query?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => SupplierQuotationLineItem.fromJson(json! as Map<String, dynamic>),
    );
  }

  /// Compare supplier quotations
  Future<List<QuotationComparison>> compareSupplierQuotations(
    List<String> quotationIds,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/quotations/compare',
      data: {'quotationIds': quotationIds},
    );

    final comparisons = response['data'] as List<dynamic>;
    return comparisons
        .map((comp) => QuotationComparison.fromJson(comp as Map<String, dynamic>))
        .toList();
  }

  /// Convert quotation to purchase order
  Future<PurchaseOrder> convertQuotationToPurchaseOrder(String quotationId) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/quotations/$quotationId/convert-to-order',
    );

    return PurchaseOrder.fromJson(response);
  }

  // ========== GOODS RECEIPTS ==========

  /// Get goods receipts with filtering
  Future<PaginatedResponse<GoodsReceipt>> getGoodsReceipts({
    GoodsReceiptFilters? filters,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/purchase/goods-receipts',
      queryParameters: filters?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => GoodsReceipt.fromJson(json! as Map<String, dynamic>),
    );
  }

  /// Get goods receipt by ID
  Future<GoodsReceipt> getGoodsReceipt(String receiptId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/purchase/goods-receipts/$receiptId',
    );

    return GoodsReceipt.fromJson(response);
  }

  /// Create new goods receipt
  Future<GoodsReceipt> createGoodsReceipt(
    CreateGoodsReceiptRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/goods-receipts',
      data: request.toJson(),
    );

    return GoodsReceipt.fromJson(response);
  }

  /// Update goods receipt
  Future<GoodsReceipt> updateGoodsReceipt(
    String receiptId,
    UpdateGoodsReceiptRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/purchase/goods-receipts/$receiptId',
      data: request.toJson(),
    );

    return GoodsReceipt.fromJson(response);
  }

  /// Delete goods receipt
  Future<void> deleteGoodsReceipt(String receiptId) async {
    await _apiClient.delete('/api/v1/purchase/goods-receipts/$receiptId');
  }

  /// Inspect goods receipt
  Future<GoodsReceipt> inspectGoodsReceipt(
    String receiptId,
    InspectGoodsReceiptRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/goods-receipts/$receiptId/inspect',
      data: request.toJson(),
    );

    return GoodsReceipt.fromJson(response);
  }

  /// Accept goods receipt
  Future<GoodsReceipt> acceptGoodsReceipt(
    String receiptId,
    AcceptGoodsReceiptRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/goods-receipts/$receiptId/accept',
      data: request.toJson(),
    );

    return GoodsReceipt.fromJson(response);
  }

  /// Reject goods receipt
  Future<GoodsReceipt> rejectGoodsReceipt(
    String receiptId,
    RejectGoodsReceiptRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/goods-receipts/$receiptId/reject',
      data: request.toJson(),
    );

    return GoodsReceipt.fromJson(response);
  }

  /// Post goods receipt to inventory
  Future<GoodsReceipt> postGoodsReceipt(String receiptId) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/goods-receipts/$receiptId/post',
    );

    return GoodsReceipt.fromJson(response);
  }

  // ========== GOODS RECEIPT LINE ITEMS ==========

  /// Get goods receipt line items
  Future<PaginatedResponse<GoodsReceiptLineItem>> getGoodsReceiptLineItems(
    String receiptId, {
    QueryParams? query,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/purchase/goods-receipts/$receiptId/items',
      queryParameters: query?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => GoodsReceiptLineItem.fromJson(json! as Map<String, dynamic>),
    );
  }

  /// Update goods receipt line item
  Future<GoodsReceiptLineItem> updateGoodsReceiptLineItem(
    String receiptId,
    String itemId,
    UpdateGoodsReceiptLineItemRequest request,
  ) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/purchase/goods-receipts/$receiptId/items/$itemId',
      data: request.toJson(),
    );

    return GoodsReceiptLineItem.fromJson(response);
  }

  // ========== REQUEST FOR QUOTATION (RFQ) ==========

  /// Get RFQs with filtering
  Future<PaginatedResponse<RFQ>> getRFQs({
    RFQFilters? filters,
  }) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/purchase/rfqs',
      queryParameters: filters?.toQueryMap(),
    );

    return PaginatedResponse.fromJson(
      response,
      (json) => RFQ.fromJson(json! as Map<String, dynamic>),
    );
  }

  /// Get RFQ by ID
  Future<RFQ> getRFQ(String rfqId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/purchase/rfqs/$rfqId',
    );

    return RFQ.fromJson(response);
  }

  /// Create new RFQ
  Future<RFQ> createRFQ(CreateRFQRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/rfqs',
      data: request.toJson(),
    );

    return RFQ.fromJson(response);
  }

  /// Update RFQ
  Future<RFQ> updateRFQ(String rfqId, UpdateRFQRequest request) async {
    final response = await _apiClient.put<Map<String, dynamic>>(
      '/api/v1/purchase/rfqs/$rfqId',
      data: request.toJson(),
    );

    return RFQ.fromJson(response);
  }

  /// Delete RFQ
  Future<void> deleteRFQ(String rfqId) async {
    await _apiClient.delete('/api/v1/purchase/rfqs/$rfqId');
  }

  /// Send RFQ to suppliers
  Future<RFQ> sendRFQ(String rfqId) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/rfqs/$rfqId/send',
    );

    return RFQ.fromJson(response);
  }

  /// Cancel RFQ
  Future<RFQ> cancelRFQ(String rfqId) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/rfqs/$rfqId/cancel',
    );

    return RFQ.fromJson(response);
  }

  // ========== RFQ SUPPLIERS ==========

  /// Get RFQ suppliers
  Future<List<RFQSupplier>> getRFQSuppliers(String rfqId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/purchase/rfqs/$rfqId/suppliers',
    );

    final suppliers = response['data'] as List<dynamic>;
    return suppliers
        .map((supplier) => RFQSupplier.fromJson(supplier as Map<String, dynamic>))
        .toList();
  }

  /// Add supplier to RFQ
  Future<RFQSupplier> addRFQSupplier(
    String rfqId,
    AddRFQSupplierRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/rfqs/$rfqId/suppliers',
      data: request.toJson(),
    );

    return RFQSupplier.fromJson(response);
  }

  /// Remove supplier from RFQ
  Future<void> removeRFQSupplier(String rfqId, String supplierId) async {
    await _apiClient.delete('/api/v1/purchase/rfqs/$rfqId/suppliers/$supplierId');
  }

  // ========== RFQ LINE ITEMS ==========

  /// Get RFQ line items
  Future<List<RFQLineItem>> getRFQLineItems(String rfqId) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/purchase/rfqs/$rfqId/items',
    );

    final items = response['data'] as List<dynamic>;
    return items
        .map((item) => RFQLineItem.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  // ========== PURCHASE ANALYTICS ==========

  /// Get purchase order statistics
  Future<Map<String, dynamic>> getPurchaseOrderStats({
    DateTime? startDate,
    DateTime? endDate,
    String? supplierId,
  }) async {
    final queryParams = <String, dynamic>{};
    if (startDate != null) queryParams['startDate'] = startDate.toIso8601String();
    if (endDate != null) queryParams['endDate'] = endDate.toIso8601String();
    if (supplierId != null) queryParams['supplierId'] = supplierId;

    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/purchase/analytics/order-stats',
      queryParameters: queryParams,
    );

    return response;
  }

  /// Get supplier performance metrics
  Future<Map<String, dynamic>> getSupplierPerformance({
    DateTime? startDate,
    DateTime? endDate,
    List<String>? supplierIds,
  }) async {
    final queryParams = <String, dynamic>{};
    if (startDate != null) queryParams['startDate'] = startDate.toIso8601String();
    if (endDate != null) queryParams['endDate'] = endDate.toIso8601String();
    if (supplierIds != null) queryParams['supplierIds'] = supplierIds;

    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/purchase/analytics/supplier-performance',
      queryParameters: queryParams,
    );

    return response;
  }

  /// Get purchase spend analysis
  Future<Map<String, dynamic>> getPurchaseSpendAnalysis({
    DateTime? startDate,
    DateTime? endDate,
    String? groupBy,
  }) async {
    final queryParams = <String, dynamic>{};
    if (startDate != null) queryParams['startDate'] = startDate.toIso8601String();
    if (endDate != null) queryParams['endDate'] = endDate.toIso8601String();
    if (groupBy != null) queryParams['groupBy'] = groupBy;

    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/purchase/analytics/spend-analysis',
      queryParameters: queryParams,
    );

    return response;
  }

  /// Get receipt performance metrics
  Future<Map<String, dynamic>> getReceiptPerformance({
    DateTime? startDate,
    DateTime? endDate,
    String? supplierId,
  }) async {
    final queryParams = <String, dynamic>{};
    if (startDate != null) queryParams['startDate'] = startDate.toIso8601String();
    if (endDate != null) queryParams['endDate'] = endDate.toIso8601String();
    if (supplierId != null) queryParams['supplierId'] = supplierId;

    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/purchase/analytics/receipt-performance',
      queryParameters: queryParams,
    );

    return response;
  }

  // ========== BULK OPERATIONS ==========

  /// Bulk approve purchase orders
  Future<Map<String, dynamic>> bulkApprovePurchaseOrders(List<String> orderIds) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/orders/bulk-approve',
      data: {'orderIds': orderIds},
    );

    return response;
  }

  /// Bulk update purchase order status
  Future<Map<String, dynamic>> bulkUpdatePurchaseOrderStatus(
    List<String> orderIds,
    String status,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/orders/bulk-update-status',
      data: {
        'orderIds': orderIds,
        'status': status,
      },
    );

    return response;
  }

  /// Bulk create goods receipts
  Future<List<GoodsReceipt>> bulkCreateGoodsReceipts(
    List<CreateGoodsReceiptRequest> requests,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/purchase/goods-receipts/bulk-create',
      data: {
        'receipts': requests.map((req) => req.toJson()).toList(),
      },
    );

    final receipts = response['data'] as List<dynamic>;
    return receipts
        .map((receipt) => GoodsReceipt.fromJson(receipt as Map<String, dynamic>))
        .toList();
  }
}