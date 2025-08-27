import { BaseClient } from "./base-client";
import { buildQuery } from "../utils/query-builder";
import type {
  PurchaseOrder,
  PurchaseOrderLineItem,
  CreatePurchaseOrderRequest,
  UpdatePurchaseOrderRequest,
  PurchaseOrderFilters,
  PurchaseRequisition,
  PurchaseRequisitionLineItem,
  CreatePurchaseRequisitionRequest,
  UpdatePurchaseRequisitionRequest,
  PurchaseRequisitionFilters,
  SupplierQuotation,
  SupplierQuotationLineItem,
  CreateSupplierQuotationRequest,
  UpdateSupplierQuotationRequest,
  SupplierQuotationFilters,
  GoodsReceipt,
  GoodsReceiptLineItem,
  CreateGoodsReceiptRequest,
  UpdateGoodsReceiptRequest,
  GoodsReceiptFilters,
  RequestForQuotation,
  RfqLineItem,
  RfqSupplier,
  Response,
  PaginatedResponse,
} from "@prodobit/types";
import type { RequestConfig } from "../types";

export class PurchaseClient extends BaseClient {
  // Purchase Orders
  async getPurchaseOrders(
    filters?: PurchaseOrderFilters,
    config?: RequestConfig
  ): Promise<PaginatedResponse<PurchaseOrder[]>> {
    const queryString = buildQuery(filters);
    const path = `/api/v1/purchase/orders${queryString ? `?${queryString}` : ""}`;
    return this.makeRequest("GET", path, undefined, config);
  }

  async getPurchaseOrder(
    id: string,
    config?: RequestConfig
  ): Promise<Response<PurchaseOrder>> {
    return this.makeRequest("GET", `/api/v1/purchase/orders/${id}`, undefined, config);
  }

  async createPurchaseOrder(
    data: CreatePurchaseOrderRequest,
    config?: RequestConfig
  ): Promise<Response<PurchaseOrder>> {
    return this.makeRequest("POST", "/api/v1/purchase/orders", data, config);
  }

  async updatePurchaseOrder(
    id: string,
    data: UpdatePurchaseOrderRequest,
    config?: RequestConfig
  ): Promise<Response<PurchaseOrder>> {
    return this.makeRequest("PUT", `/api/v1/purchase/orders/${id}`, data, config);
  }

  async deletePurchaseOrder(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.makeRequest("DELETE", `/api/v1/purchase/orders/${id}`, undefined, config);
  }

  async approvePurchaseOrder(
    id: string,
    config?: RequestConfig
  ): Promise<Response<PurchaseOrder>> {
    return this.makeRequest("POST", `/api/v1/purchase/orders/${id}/approve`, undefined, config);
  }

  async sendPurchaseOrder(
    id: string,
    config?: RequestConfig
  ): Promise<Response<PurchaseOrder>> {
    return this.makeRequest("POST", `/api/v1/purchase/orders/${id}/send`, undefined, config);
  }

  async acknowledgePurchaseOrder(
    id: string,
    notes?: string,
    config?: RequestConfig
  ): Promise<Response<PurchaseOrder>> {
    return this.makeRequest("POST", `/api/v1/purchase/orders/${id}/acknowledge`, { notes }, config);
  }

  async cancelPurchaseOrder(
    id: string,
    reason?: string,
    config?: RequestConfig
  ): Promise<Response<PurchaseOrder>> {
    return this.makeRequest("POST", `/api/v1/purchase/orders/${id}/cancel`, { reason }, config);
  }

  async closePurchaseOrder(
    id: string,
    config?: RequestConfig
  ): Promise<Response<PurchaseOrder>> {
    return this.makeRequest("POST", `/api/v1/purchase/orders/${id}/close`, undefined, config);
  }

  async getPurchaseOrderLineItems(
    purchaseOrderId: string,
    config?: RequestConfig
  ): Promise<Response<PurchaseOrderLineItem[]>> {
    return this.makeRequest("GET", `/api/v1/purchase/orders/${purchaseOrderId}/line-items`, undefined, config);
  }

  async addPurchaseOrderLineItem(
    purchaseOrderId: string,
    data: Omit<PurchaseOrderLineItem, 'id' | 'tenantId' | 'purchaseOrderId' | 'insertedAt' | 'updatedAt'>,
    config?: RequestConfig
  ): Promise<Response<PurchaseOrderLineItem>> {
    return this.makeRequest("POST", `/api/v1/purchase/orders/${purchaseOrderId}/line-items`, data, config);
  }

  async updatePurchaseOrderLineItem(
    purchaseOrderId: string,
    lineItemId: string,
    data: Partial<PurchaseOrderLineItem>,
    config?: RequestConfig
  ): Promise<Response<PurchaseOrderLineItem>> {
    return this.makeRequest("PUT", `/api/v1/purchase/orders/${purchaseOrderId}/line-items/${lineItemId}`, data, config);
  }

  async deletePurchaseOrderLineItem(
    purchaseOrderId: string,
    lineItemId: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.makeRequest("DELETE", `/api/v1/purchase/orders/${purchaseOrderId}/line-items/${lineItemId}`, undefined, config);
  }

  // Purchase Requisitions
  async getPurchaseRequisitions(
    filters?: PurchaseRequisitionFilters,
    config?: RequestConfig
  ): Promise<PaginatedResponse<PurchaseRequisition[]>> {
    const queryString = buildQuery(filters);
    const path = `/api/v1/purchase/requisitions${queryString ? `?${queryString}` : ""}`;
    return this.makeRequest("GET", path, undefined, config);
  }

  async getPurchaseRequisition(
    id: string,
    config?: RequestConfig
  ): Promise<Response<PurchaseRequisition>> {
    return this.makeRequest("GET", `/api/v1/purchase/requisitions/${id}`, undefined, config);
  }

  async createPurchaseRequisition(
    data: CreatePurchaseRequisitionRequest,
    config?: RequestConfig
  ): Promise<Response<PurchaseRequisition>> {
    return this.makeRequest("POST", "/api/v1/purchase/requisitions", data, config);
  }

  async updatePurchaseRequisition(
    id: string,
    data: UpdatePurchaseRequisitionRequest,
    config?: RequestConfig
  ): Promise<Response<PurchaseRequisition>> {
    return this.makeRequest("PUT", `/api/v1/purchase/requisitions/${id}`, data, config);
  }

  async deletePurchaseRequisition(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.makeRequest("DELETE", `/api/v1/purchase/requisitions/${id}`, undefined, config);
  }

  async submitPurchaseRequisition(
    id: string,
    config?: RequestConfig
  ): Promise<Response<PurchaseRequisition>> {
    return this.makeRequest("POST", `/api/v1/purchase/requisitions/${id}/submit`, undefined, config);
  }

  async approvePurchaseRequisition(
    id: string,
    config?: RequestConfig
  ): Promise<Response<PurchaseRequisition>> {
    return this.makeRequest("POST", `/api/v1/purchase/requisitions/${id}/approve`, undefined, config);
  }

  async rejectPurchaseRequisition(
    id: string,
    reason: string,
    config?: RequestConfig
  ): Promise<Response<PurchaseRequisition>> {
    return this.makeRequest("POST", `/api/v1/purchase/requisitions/${id}/reject`, { reason }, config);
  }

  async closePurchaseRequisition(
    id: string,
    config?: RequestConfig
  ): Promise<Response<PurchaseRequisition>> {
    return this.makeRequest("POST", `/api/v1/purchase/requisitions/${id}/close`, undefined, config);
  }

  async cancelPurchaseRequisition(
    id: string,
    reason?: string,
    config?: RequestConfig
  ): Promise<Response<PurchaseRequisition>> {
    return this.makeRequest("POST", `/api/v1/purchase/requisitions/${id}/cancel`, { reason }, config);
  }

  async getPurchaseRequisitionLineItems(
    purchaseRequisitionId: string,
    config?: RequestConfig
  ): Promise<Response<PurchaseRequisitionLineItem[]>> {
    return this.makeRequest("GET", `/api/v1/purchase/requisitions/${purchaseRequisitionId}/line-items`, undefined, config);
  }

  async addPurchaseRequisitionLineItem(
    purchaseRequisitionId: string,
    data: Omit<PurchaseRequisitionLineItem, 'id' | 'tenantId' | 'purchaseRequisitionId' | 'insertedAt' | 'updatedAt'>,
    config?: RequestConfig
  ): Promise<Response<PurchaseRequisitionLineItem>> {
    return this.makeRequest("POST", `/api/v1/purchase/requisitions/${purchaseRequisitionId}/line-items`, data, config);
  }

  async updatePurchaseRequisitionLineItem(
    purchaseRequisitionId: string,
    lineItemId: string,
    data: Partial<PurchaseRequisitionLineItem>,
    config?: RequestConfig
  ): Promise<Response<PurchaseRequisitionLineItem>> {
    return this.makeRequest("PUT", `/api/v1/purchase/requisitions/${purchaseRequisitionId}/line-items/${lineItemId}`, data, config);
  }

  async deletePurchaseRequisitionLineItem(
    purchaseRequisitionId: string,
    lineItemId: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.makeRequest("DELETE", `/api/v1/purchase/requisitions/${purchaseRequisitionId}/line-items/${lineItemId}`, undefined, config);
  }

  async convertRequisitionToPurchaseOrder(
    requisitionId: string,
    data: {
      supplierId: string;
      splitBySupplier?: boolean;
      lineItemIds?: string[];
    },
    config?: RequestConfig
  ): Promise<Response<PurchaseOrder | PurchaseOrder[]>> {
    return this.makeRequest("POST", `/api/v1/purchase/requisitions/${requisitionId}/convert-to-order`, data, config);
  }

  // Supplier Quotations
  async getSupplierQuotations(
    filters?: SupplierQuotationFilters,
    config?: RequestConfig
  ): Promise<PaginatedResponse<SupplierQuotation[]>> {
    const queryString = buildQuery(filters);
    const path = `/api/v1/purchase/quotations${queryString ? `?${queryString}` : ""}`;
    return this.makeRequest("GET", path, undefined, config);
  }

  async getSupplierQuotation(
    id: string,
    config?: RequestConfig
  ): Promise<Response<SupplierQuotation>> {
    return this.makeRequest("GET", `/api/v1/purchase/quotations/${id}`, undefined, config);
  }

  async createSupplierQuotation(
    data: CreateSupplierQuotationRequest,
    config?: RequestConfig
  ): Promise<Response<SupplierQuotation>> {
    return this.makeRequest("POST", "/api/v1/purchase/quotations", data, config);
  }

  async updateSupplierQuotation(
    id: string,
    data: UpdateSupplierQuotationRequest,
    config?: RequestConfig
  ): Promise<Response<SupplierQuotation>> {
    return this.makeRequest("PUT", `/api/v1/purchase/quotations/${id}`, data, config);
  }

  async deleteSupplierQuotation(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.makeRequest("DELETE", `/api/v1/purchase/quotations/${id}`, undefined, config);
  }

  async selectSupplierQuotation(
    id: string,
    config?: RequestConfig
  ): Promise<Response<SupplierQuotation>> {
    return this.makeRequest("POST", `/api/v1/purchase/quotations/${id}/select`, undefined, config);
  }

  async rejectSupplierQuotation(
    id: string,
    reason: string,
    config?: RequestConfig
  ): Promise<Response<SupplierQuotation>> {
    return this.makeRequest("POST", `/api/v1/purchase/quotations/${id}/reject`, { reason }, config);
  }

  async getSupplierQuotationLineItems(
    quotationId: string,
    config?: RequestConfig
  ): Promise<Response<SupplierQuotationLineItem[]>> {
    return this.makeRequest("GET", `/api/v1/purchase/quotations/${quotationId}/line-items`, undefined, config);
  }

  async compareSupplierQuotations(
    quotationIds: string[],
    config?: RequestConfig
  ): Promise<Response<any>> {
    return this.makeRequest("POST", "/api/v1/purchase/quotations/compare", { quotationIds }, config);
  }

  async convertQuotationToPurchaseOrder(
    quotationId: string,
    config?: RequestConfig
  ): Promise<Response<PurchaseOrder>> {
    return this.makeRequest("POST", `/api/v1/purchase/quotations/${quotationId}/convert-to-order`, undefined, config);
  }

  // Goods Receipts
  async getGoodsReceipts(
    filters?: GoodsReceiptFilters,
    config?: RequestConfig
  ): Promise<PaginatedResponse<GoodsReceipt[]>> {
    const queryString = buildQuery(filters);
    const path = `/api/v1/purchase/receipts${queryString ? `?${queryString}` : ""}`;
    return this.makeRequest("GET", path, undefined, config);
  }

  async getGoodsReceipt(
    id: string,
    config?: RequestConfig
  ): Promise<Response<GoodsReceipt>> {
    return this.makeRequest("GET", `/api/v1/purchase/receipts/${id}`, undefined, config);
  }

  async createGoodsReceipt(
    data: CreateGoodsReceiptRequest,
    config?: RequestConfig
  ): Promise<Response<GoodsReceipt>> {
    return this.makeRequest("POST", "/api/v1/purchase/receipts", data, config);
  }

  async updateGoodsReceipt(
    id: string,
    data: UpdateGoodsReceiptRequest,
    config?: RequestConfig
  ): Promise<Response<GoodsReceipt>> {
    return this.makeRequest("PUT", `/api/v1/purchase/receipts/${id}`, data, config);
  }

  async deleteGoodsReceipt(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.makeRequest("DELETE", `/api/v1/purchase/receipts/${id}`, undefined, config);
  }

  async inspectGoodsReceipt(
    id: string,
    data: {
      inspectedBy: string;
      inspectionResult: 'passed' | 'failed' | 'conditional_pass';
      qualityNotes?: string;
    },
    config?: RequestConfig
  ): Promise<Response<GoodsReceipt>> {
    return this.makeRequest("POST", `/api/v1/purchase/receipts/${id}/inspect`, data, config);
  }

  async acceptGoodsReceipt(
    id: string,
    config?: RequestConfig
  ): Promise<Response<GoodsReceipt>> {
    return this.makeRequest("POST", `/api/v1/purchase/receipts/${id}/accept`, undefined, config);
  }

  async rejectGoodsReceipt(
    id: string,
    reason: string,
    config?: RequestConfig
  ): Promise<Response<GoodsReceipt>> {
    return this.makeRequest("POST", `/api/v1/purchase/receipts/${id}/reject`, { reason }, config);
  }

  async postGoodsReceipt(
    id: string,
    config?: RequestConfig
  ): Promise<Response<GoodsReceipt>> {
    return this.makeRequest("POST", `/api/v1/purchase/receipts/${id}/post`, undefined, config);
  }

  async getGoodsReceiptLineItems(
    receiptId: string,
    config?: RequestConfig
  ): Promise<Response<GoodsReceiptLineItem[]>> {
    return this.makeRequest("GET", `/api/v1/purchase/receipts/${receiptId}/line-items`, undefined, config);
  }

  async updateGoodsReceiptLineItem(
    receiptId: string,
    lineItemId: string,
    data: Partial<GoodsReceiptLineItem>,
    config?: RequestConfig
  ): Promise<Response<GoodsReceiptLineItem>> {
    return this.makeRequest("PUT", `/api/v1/purchase/receipts/${receiptId}/line-items/${lineItemId}`, data, config);
  }

  // Request for Quotation (RFQ)
  async getRFQs(
    filters?: {
      status?: 'draft' | 'sent' | 'responses_received' | 'evaluated' | 'awarded' | 'cancelled';
      purchaseRequisitionId?: string;
      buyerId?: string;
      dateFrom?: string;
      dateTo?: string;
      search?: string;
      page?: number;
      limit?: number;
    },
    config?: RequestConfig
  ): Promise<PaginatedResponse<RequestForQuotation[]>> {
    const queryString = buildQuery(filters);
    const path = `/api/v1/purchase/rfq${queryString ? `?${queryString}` : ""}`;
    return this.makeRequest("GET", path, undefined, config);
  }

  async getRFQ(
    id: string,
    config?: RequestConfig
  ): Promise<Response<RequestForQuotation>> {
    return this.makeRequest("GET", `/api/v1/purchase/rfq/${id}`, undefined, config);
  }

  async createRFQ(
    data: Omit<RequestForQuotation, 'id' | 'tenantId' | 'insertedAt' | 'updatedAt'> & {
      supplierIds: string[];
      lineItems: Omit<RfqLineItem, 'id' | 'tenantId' | 'requestForQuotationId' | 'insertedAt' | 'updatedAt'>[];
    },
    config?: RequestConfig
  ): Promise<Response<RequestForQuotation>> {
    return this.makeRequest("POST", "/api/v1/purchase/rfq", data, config);
  }

  async updateRFQ(
    id: string,
    data: Partial<RequestForQuotation>,
    config?: RequestConfig
  ): Promise<Response<RequestForQuotation>> {
    return this.makeRequest("PUT", `/api/v1/purchase/rfq/${id}`, data, config);
  }

  async deleteRFQ(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.makeRequest("DELETE", `/api/v1/purchase/rfq/${id}`, undefined, config);
  }

  async sendRFQ(
    id: string,
    supplierIds?: string[],
    config?: RequestConfig
  ): Promise<Response<RequestForQuotation>> {
    return this.makeRequest("POST", `/api/v1/purchase/rfq/${id}/send`, { supplierIds }, config);
  }

  async cancelRFQ(
    id: string,
    reason?: string,
    config?: RequestConfig
  ): Promise<Response<RequestForQuotation>> {
    return this.makeRequest("POST", `/api/v1/purchase/rfq/${id}/cancel`, { reason }, config);
  }

  async getRFQSuppliers(
    rfqId: string,
    config?: RequestConfig
  ): Promise<Response<RfqSupplier[]>> {
    return this.makeRequest("GET", `/api/v1/purchase/rfq/${rfqId}/suppliers`, undefined, config);
  }

  async addRFQSupplier(
    rfqId: string,
    supplierId: string,
    config?: RequestConfig
  ): Promise<Response<RfqSupplier>> {
    return this.makeRequest("POST", `/api/v1/purchase/rfq/${rfqId}/suppliers`, { supplierId }, config);
  }

  async removeRFQSupplier(
    rfqId: string,
    rfqSupplierId: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.makeRequest("DELETE", `/api/v1/purchase/rfq/${rfqId}/suppliers/${rfqSupplierId}`, undefined, config);
  }

  async getRFQLineItems(
    rfqId: string,
    config?: RequestConfig
  ): Promise<Response<RfqLineItem[]>> {
    return this.makeRequest("GET", `/api/v1/purchase/rfq/${rfqId}/line-items`, undefined, config);
  }

  // Purchase Analytics and Reports
  async getPurchaseOrderStats(
    filters?: {
      dateFrom?: string;
      dateTo?: string;
      supplierId?: string;
      departmentId?: string;
    },
    config?: RequestConfig
  ): Promise<Response<any>> {
    const queryString = buildQuery(filters);
    const path = `/api/v1/purchase/analytics/orders${queryString ? `?${queryString}` : ""}`;
    return this.makeRequest("GET", path, undefined, config);
  }

  async getSupplierPerformance(
    filters?: {
      supplierId?: string;
      dateFrom?: string;
      dateTo?: string;
    },
    config?: RequestConfig
  ): Promise<Response<any>> {
    const queryString = buildQuery(filters);
    const path = `/api/v1/purchase/analytics/supplier-performance${queryString ? `?${queryString}` : ""}`;
    return this.makeRequest("GET", path, undefined, config);
  }

  async getPurchaseSpendAnalysis(
    filters?: {
      dateFrom?: string;
      dateTo?: string;
      groupBy?: 'supplier' | 'category' | 'department' | 'month';
    },
    config?: RequestConfig
  ): Promise<Response<any>> {
    const queryString = buildQuery(filters);
    const path = `/api/v1/purchase/analytics/spend${queryString ? `?${queryString}` : ""}`;
    return this.makeRequest("GET", path, undefined, config);
  }

  async getReceiptPerformance(
    filters?: {
      dateFrom?: string;
      dateTo?: string;
      supplierId?: string;
    },
    config?: RequestConfig
  ): Promise<Response<any>> {
    const queryString = buildQuery(filters);
    const path = `/api/v1/purchase/analytics/receipt-performance${queryString ? `?${queryString}` : ""}`;
    return this.makeRequest("GET", path, undefined, config);
  }

  // Bulk Operations
  async bulkApprovePurchaseOrders(
    orderIds: string[],
    config?: RequestConfig
  ): Promise<Response<{ success: string[]; failed: string[] }>> {
    return this.makeRequest("POST", "/api/v1/purchase/orders/bulk-approve", { orderIds }, config);
  }

  async bulkUpdatePurchaseOrderStatus(
    updates: Array<{ orderId: string; status: string; notes?: string }>,
    config?: RequestConfig
  ): Promise<Response<{ success: string[]; failed: string[] }>> {
    return this.makeRequest("POST", "/api/v1/purchase/orders/bulk-update-status", { updates }, config);
  }

  async bulkCreateGoodsReceipts(
    receipts: CreateGoodsReceiptRequest[],
    config?: RequestConfig
  ): Promise<Response<{ success: GoodsReceipt[]; failed: any[] }>> {
    return this.makeRequest("POST", "/api/v1/purchase/receipts/bulk-create", { receipts }, config);
  }
}