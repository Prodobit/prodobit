import { BaseClient } from "./base-client";
import type { PurchaseOrder, PurchaseOrderLineItem, CreatePurchaseOrderRequest, UpdatePurchaseOrderRequest, PurchaseOrderFilters, PurchaseRequisition, PurchaseRequisitionLineItem, CreatePurchaseRequisitionRequest, UpdatePurchaseRequisitionRequest, PurchaseRequisitionFilters, SupplierQuotation, SupplierQuotationLineItem, CreateSupplierQuotationRequest, UpdateSupplierQuotationRequest, SupplierQuotationFilters, GoodsReceipt, GoodsReceiptLineItem, CreateGoodsReceiptRequest, UpdateGoodsReceiptRequest, GoodsReceiptFilters, RequestForQuotation, RfqLineItem, RfqSupplier, Response, PaginatedResponse } from "@prodobit/types";
import type { RequestConfig } from "../types";
export declare class PurchaseClient extends BaseClient {
    getPurchaseOrders(filters?: PurchaseOrderFilters, config?: RequestConfig): Promise<PaginatedResponse<PurchaseOrder[]>>;
    getPurchaseOrder(id: string, config?: RequestConfig): Promise<Response<PurchaseOrder>>;
    createPurchaseOrder(data: CreatePurchaseOrderRequest, config?: RequestConfig): Promise<Response<PurchaseOrder>>;
    updatePurchaseOrder(id: string, data: UpdatePurchaseOrderRequest, config?: RequestConfig): Promise<Response<PurchaseOrder>>;
    deletePurchaseOrder(id: string, config?: RequestConfig): Promise<Response<void>>;
    approvePurchaseOrder(id: string, config?: RequestConfig): Promise<Response<PurchaseOrder>>;
    sendPurchaseOrder(id: string, config?: RequestConfig): Promise<Response<PurchaseOrder>>;
    acknowledgePurchaseOrder(id: string, notes?: string, config?: RequestConfig): Promise<Response<PurchaseOrder>>;
    cancelPurchaseOrder(id: string, reason?: string, config?: RequestConfig): Promise<Response<PurchaseOrder>>;
    closePurchaseOrder(id: string, config?: RequestConfig): Promise<Response<PurchaseOrder>>;
    getPurchaseOrderLineItems(purchaseOrderId: string, config?: RequestConfig): Promise<Response<PurchaseOrderLineItem[]>>;
    addPurchaseOrderLineItem(purchaseOrderId: string, data: Omit<PurchaseOrderLineItem, 'id' | 'tenantId' | 'purchaseOrderId' | 'insertedAt' | 'updatedAt'>, config?: RequestConfig): Promise<Response<PurchaseOrderLineItem>>;
    updatePurchaseOrderLineItem(purchaseOrderId: string, lineItemId: string, data: Partial<PurchaseOrderLineItem>, config?: RequestConfig): Promise<Response<PurchaseOrderLineItem>>;
    deletePurchaseOrderLineItem(purchaseOrderId: string, lineItemId: string, config?: RequestConfig): Promise<Response<void>>;
    getPurchaseRequisitions(filters?: PurchaseRequisitionFilters, config?: RequestConfig): Promise<PaginatedResponse<PurchaseRequisition[]>>;
    getPurchaseRequisition(id: string, config?: RequestConfig): Promise<Response<PurchaseRequisition>>;
    createPurchaseRequisition(data: CreatePurchaseRequisitionRequest, config?: RequestConfig): Promise<Response<PurchaseRequisition>>;
    updatePurchaseRequisition(id: string, data: UpdatePurchaseRequisitionRequest, config?: RequestConfig): Promise<Response<PurchaseRequisition>>;
    deletePurchaseRequisition(id: string, config?: RequestConfig): Promise<Response<void>>;
    submitPurchaseRequisition(id: string, config?: RequestConfig): Promise<Response<PurchaseRequisition>>;
    approvePurchaseRequisition(id: string, config?: RequestConfig): Promise<Response<PurchaseRequisition>>;
    rejectPurchaseRequisition(id: string, reason: string, config?: RequestConfig): Promise<Response<PurchaseRequisition>>;
    closePurchaseRequisition(id: string, config?: RequestConfig): Promise<Response<PurchaseRequisition>>;
    cancelPurchaseRequisition(id: string, reason?: string, config?: RequestConfig): Promise<Response<PurchaseRequisition>>;
    getPurchaseRequisitionLineItems(purchaseRequisitionId: string, config?: RequestConfig): Promise<Response<PurchaseRequisitionLineItem[]>>;
    addPurchaseRequisitionLineItem(purchaseRequisitionId: string, data: Omit<PurchaseRequisitionLineItem, 'id' | 'tenantId' | 'purchaseRequisitionId' | 'insertedAt' | 'updatedAt'>, config?: RequestConfig): Promise<Response<PurchaseRequisitionLineItem>>;
    updatePurchaseRequisitionLineItem(purchaseRequisitionId: string, lineItemId: string, data: Partial<PurchaseRequisitionLineItem>, config?: RequestConfig): Promise<Response<PurchaseRequisitionLineItem>>;
    deletePurchaseRequisitionLineItem(purchaseRequisitionId: string, lineItemId: string, config?: RequestConfig): Promise<Response<void>>;
    convertRequisitionToPurchaseOrder(requisitionId: string, data: {
        supplierId: string;
        splitBySupplier?: boolean;
        lineItemIds?: string[];
    }, config?: RequestConfig): Promise<Response<PurchaseOrder | PurchaseOrder[]>>;
    getSupplierQuotations(filters?: SupplierQuotationFilters, config?: RequestConfig): Promise<PaginatedResponse<SupplierQuotation[]>>;
    getSupplierQuotation(id: string, config?: RequestConfig): Promise<Response<SupplierQuotation>>;
    createSupplierQuotation(data: CreateSupplierQuotationRequest, config?: RequestConfig): Promise<Response<SupplierQuotation>>;
    updateSupplierQuotation(id: string, data: UpdateSupplierQuotationRequest, config?: RequestConfig): Promise<Response<SupplierQuotation>>;
    deleteSupplierQuotation(id: string, config?: RequestConfig): Promise<Response<void>>;
    selectSupplierQuotation(id: string, config?: RequestConfig): Promise<Response<SupplierQuotation>>;
    rejectSupplierQuotation(id: string, reason: string, config?: RequestConfig): Promise<Response<SupplierQuotation>>;
    getSupplierQuotationLineItems(quotationId: string, config?: RequestConfig): Promise<Response<SupplierQuotationLineItem[]>>;
    compareSupplierQuotations(quotationIds: string[], config?: RequestConfig): Promise<Response<any>>;
    convertQuotationToPurchaseOrder(quotationId: string, config?: RequestConfig): Promise<Response<PurchaseOrder>>;
    getGoodsReceipts(filters?: GoodsReceiptFilters, config?: RequestConfig): Promise<PaginatedResponse<GoodsReceipt[]>>;
    getGoodsReceipt(id: string, config?: RequestConfig): Promise<Response<GoodsReceipt>>;
    createGoodsReceipt(data: CreateGoodsReceiptRequest, config?: RequestConfig): Promise<Response<GoodsReceipt>>;
    updateGoodsReceipt(id: string, data: UpdateGoodsReceiptRequest, config?: RequestConfig): Promise<Response<GoodsReceipt>>;
    deleteGoodsReceipt(id: string, config?: RequestConfig): Promise<Response<void>>;
    inspectGoodsReceipt(id: string, data: {
        inspectedBy: string;
        inspectionResult: 'passed' | 'failed' | 'conditional_pass';
        qualityNotes?: string;
    }, config?: RequestConfig): Promise<Response<GoodsReceipt>>;
    acceptGoodsReceipt(id: string, config?: RequestConfig): Promise<Response<GoodsReceipt>>;
    rejectGoodsReceipt(id: string, reason: string, config?: RequestConfig): Promise<Response<GoodsReceipt>>;
    postGoodsReceipt(id: string, config?: RequestConfig): Promise<Response<GoodsReceipt>>;
    getGoodsReceiptLineItems(receiptId: string, config?: RequestConfig): Promise<Response<GoodsReceiptLineItem[]>>;
    updateGoodsReceiptLineItem(receiptId: string, lineItemId: string, data: Partial<GoodsReceiptLineItem>, config?: RequestConfig): Promise<Response<GoodsReceiptLineItem>>;
    getRFQs(filters?: {
        status?: 'draft' | 'sent' | 'responses_received' | 'evaluated' | 'awarded' | 'cancelled';
        purchaseRequisitionId?: string;
        buyerId?: string;
        dateFrom?: string;
        dateTo?: string;
        search?: string;
        page?: number;
        limit?: number;
    }, config?: RequestConfig): Promise<PaginatedResponse<RequestForQuotation[]>>;
    getRFQ(id: string, config?: RequestConfig): Promise<Response<RequestForQuotation>>;
    createRFQ(data: Omit<RequestForQuotation, 'id' | 'tenantId' | 'insertedAt' | 'updatedAt'> & {
        supplierIds: string[];
        lineItems: Omit<RfqLineItem, 'id' | 'tenantId' | 'requestForQuotationId' | 'insertedAt' | 'updatedAt'>[];
    }, config?: RequestConfig): Promise<Response<RequestForQuotation>>;
    updateRFQ(id: string, data: Partial<RequestForQuotation>, config?: RequestConfig): Promise<Response<RequestForQuotation>>;
    deleteRFQ(id: string, config?: RequestConfig): Promise<Response<void>>;
    sendRFQ(id: string, supplierIds?: string[], config?: RequestConfig): Promise<Response<RequestForQuotation>>;
    cancelRFQ(id: string, reason?: string, config?: RequestConfig): Promise<Response<RequestForQuotation>>;
    getRFQSuppliers(rfqId: string, config?: RequestConfig): Promise<Response<RfqSupplier[]>>;
    addRFQSupplier(rfqId: string, supplierId: string, config?: RequestConfig): Promise<Response<RfqSupplier>>;
    removeRFQSupplier(rfqId: string, rfqSupplierId: string, config?: RequestConfig): Promise<Response<void>>;
    getRFQLineItems(rfqId: string, config?: RequestConfig): Promise<Response<RfqLineItem[]>>;
    getPurchaseOrderStats(filters?: {
        dateFrom?: string;
        dateTo?: string;
        supplierId?: string;
        departmentId?: string;
    }, config?: RequestConfig): Promise<Response<any>>;
    getSupplierPerformance(filters?: {
        supplierId?: string;
        dateFrom?: string;
        dateTo?: string;
    }, config?: RequestConfig): Promise<Response<any>>;
    getPurchaseSpendAnalysis(filters?: {
        dateFrom?: string;
        dateTo?: string;
        groupBy?: 'supplier' | 'category' | 'department' | 'month';
    }, config?: RequestConfig): Promise<Response<any>>;
    getReceiptPerformance(filters?: {
        dateFrom?: string;
        dateTo?: string;
        supplierId?: string;
    }, config?: RequestConfig): Promise<Response<any>>;
    bulkApprovePurchaseOrders(orderIds: string[], config?: RequestConfig): Promise<Response<{
        success: string[];
        failed: string[];
    }>>;
    bulkUpdatePurchaseOrderStatus(updates: Array<{
        orderId: string;
        status: string;
        notes?: string;
    }>, config?: RequestConfig): Promise<Response<{
        success: string[];
        failed: string[];
    }>>;
    bulkCreateGoodsReceipts(receipts: CreateGoodsReceiptRequest[], config?: RequestConfig): Promise<Response<{
        success: GoodsReceipt[];
        failed: any[];
    }>>;
}
//# sourceMappingURL=purchase-client.d.ts.map