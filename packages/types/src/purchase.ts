import { type } from "arktype";
import { timestamp, uuid } from "./common";

// Purchase enums
export const purchaseOrderStatusEnum = type(
  "'draft' | 'pending_approval' | 'approved' | 'sent' | 'acknowledged' | 'partially_received' | 'received' | 'cancelled' | 'closed'"
);

export const purchaseOrderPriorityEnum = type(
  "'low' | 'normal' | 'high' | 'urgent'"
);

export const purchaseOrderTypeEnum = type(
  "'standard' | 'blanket' | 'contract' | 'emergency' | 'service'"
);

export const purchaseLineItemStatusEnum = type(
  "'pending' | 'ordered' | 'acknowledged' | 'partially_received' | 'received' | 'cancelled' | 'closed'"
);

export const purchaseRequisitionStatusEnum = type(
  "'draft' | 'submitted' | 'pending_approval' | 'approved' | 'rejected' | 'partially_ordered' | 'ordered' | 'closed' | 'cancelled'"
);

export const purchaseRequisitionPriorityEnum = type(
  "'low' | 'normal' | 'high' | 'urgent'"
);

export const purchaseRequisitionTypeEnum = type(
  "'material' | 'service' | 'equipment' | 'maintenance' | 'office_supplies'"
);

export const quotationStatusEnum = type(
  "'requested' | 'received' | 'under_review' | 'accepted' | 'rejected' | 'expired'"
);

export const quotationTypeEnum = type(
  "'rfq' | 'informal' | 'formal' | 'tender'"
);

export const goodsReceiptStatusEnum = type(
  "'draft' | 'pending_inspection' | 'inspected' | 'accepted' | 'partially_accepted' | 'rejected' | 'posted'"
);

export const goodsReceiptTypeEnum = type(
  "'standard' | 'return' | 'sample' | 'consignment'"
);

export const inspectionResultEnum = type(
  "'pending' | 'passed' | 'failed' | 'conditional_pass'"
);

export const paymentTermsEnum = type(
  "'net_30' | 'net_60' | 'net_90' | 'cod' | 'prepaid' | 'due_on_receipt' | 'custom'"
);

export const deliveryTermsEnum = type(
  "'exw' | 'fca' | 'cpt' | 'cip' | 'dap' | 'dpu' | 'ddp' | 'fas' | 'fob' | 'cfr' | 'cif'"
);

// Purchase Order schemas
export const purchaseOrder = type({
  id: uuid,
  tenantId: uuid,
  orderNumber: "string >= 1",
  supplierId: uuid,
  supplierName: "string >= 1",
  "supplierCode?": "string",
  orderType: purchaseOrderTypeEnum,
  status: purchaseOrderStatusEnum,
  priority: purchaseOrderPriorityEnum,
  "requisitionId?": uuid,
  "quotationId?": uuid,
  "contractId?": uuid,
  orderDate: timestamp,
  "expectedDeliveryDate?": timestamp,
  "promisedDeliveryDate?": timestamp,
  "actualDeliveryDate?": timestamp,
  "requestedBy?": uuid,
  "authorizedBy?": uuid,
  "approvedBy?": uuid,
  "approvedAt?": timestamp,
  "buyerId?": uuid,
  "departmentId?": uuid,
  "projectId?": uuid,
  "costCenterId?": uuid,
  "deliveryLocationId?": uuid,
  "billingLocationId?": uuid,
  paymentTerms: paymentTermsEnum,
  "customPaymentTerms?": "string",
  deliveryTerms: deliveryTermsEnum,
  "currency?": "string",
  "exchangeRate?": "number > 0",
  subtotalAmount: "number >= 0",
  taxAmount: "number >= 0",
  discountAmount: "number >= 0",
  shippingAmount: "number >= 0",
  totalAmount: "number >= 0",
  "notes?": "string",
  "terms?": "string",
  "internalNotes?": "string",
  "trackingNumber?": "string",
  "carrier?": "string",
  "sentAt?": timestamp,
  "acknowledgedAt?": timestamp,
  "acknowledgmentNotes?": "string",
  "revisionNumber?": "number >= 0",
  "parentOrderId?": uuid,
  "metadata?": "object",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const purchaseOrderLineItem = type({
  id: uuid,
  tenantId: uuid,
  purchaseOrderId: uuid,
  lineNumber: "number >= 1",
  itemId: uuid,
  itemName: "string >= 1",
  "itemCode?": "string",
  "description?": "string",
  quantity: "number > 0",
  unitPrice: "number >= 0",
  lineAmount: "number >= 0",
  "unitOfMeasure?": "string",
  "expectedDeliveryDate?": timestamp,
  "promisedDeliveryDate?": timestamp,
  status: purchaseLineItemStatusEnum,
  "receivedQuantity?": "number >= 0",
  "invoicedQuantity?": "number >= 0",
  "returnedQuantity?": "number >= 0",
  "taxRate?": "number >= 0",
  "taxAmount?": "number >= 0",
  "discountPercent?": "number >= 0",
  "discountAmount?": "number >= 0",
  "specifications?": "string",
  "manufacturerPartNumber?": "string",
  "supplierPartNumber?": "string",
  "notes?": "string",
  "metadata?": "object",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createPurchaseOrderRequest = type({
  "orderNumber?": "string >= 1",
  supplierId: uuid,
  orderType: purchaseOrderTypeEnum,
  "priority?": purchaseOrderPriorityEnum,
  "requisitionId?": uuid,
  "quotationId?": uuid,
  orderDate: timestamp,
  "expectedDeliveryDate?": timestamp,
  "requestedBy?": uuid,
  "buyerId?": uuid,
  "departmentId?": uuid,
  "projectId?": uuid,
  "costCenterId?": uuid,
  "deliveryLocationId?": uuid,
  "billingLocationId?": uuid,
  paymentTerms: paymentTermsEnum,
  "customPaymentTerms?": "string",
  deliveryTerms: deliveryTermsEnum,
  "currency?": "string",
  "notes?": "string",
  "terms?": "string",
  lineItems: type({
    itemId: uuid,
    quantity: "number > 0",
    unitPrice: "number >= 0",
    "description?": "string",
    "expectedDeliveryDate?": timestamp,
    "unitOfMeasure?": "string",
    "specifications?": "string",
    "notes?": "string",
  }).array(),
});

export const updatePurchaseOrderRequest = type({
  "status?": purchaseOrderStatusEnum,
  "priority?": purchaseOrderPriorityEnum,
  "expectedDeliveryDate?": timestamp,
  "promisedDeliveryDate?": timestamp,
  "buyerId?": uuid,
  "departmentId?": uuid,
  "projectId?": uuid,
  "deliveryLocationId?": uuid,
  "billingLocationId?": uuid,
  "paymentTerms?": paymentTermsEnum,
  "customPaymentTerms?": "string",
  "deliveryTerms?": deliveryTermsEnum,
  "notes?": "string",
  "terms?": "string",
  "internalNotes?": "string",
  "trackingNumber?": "string",
  "carrier?": "string",
});

// Purchase Requisition schemas
export const purchaseRequisition = type({
  id: uuid,
  tenantId: uuid,
  requisitionNumber: "string >= 1",
  title: "string >= 1",
  "description?": "string",
  requisitionType: purchaseRequisitionTypeEnum,
  status: purchaseRequisitionStatusEnum,
  priority: purchaseRequisitionPriorityEnum,
  "departmentId?": uuid,
  "projectId?": uuid,
  "costCenterId?": uuid,
  "budgetId?": uuid,
  requestedBy: uuid,
  "approvedBy?": uuid,
  "approvedAt?": timestamp,
  "rejectedBy?": uuid,
  "rejectedAt?": timestamp,
  "rejectionReason?": "string",
  requestedDate: timestamp,
  "requiredDate?": timestamp,
  "deliveryLocationId?": uuid,
  "preferredSupplierId?": uuid,
  totalEstimatedAmount: "number >= 0",
  "currency?": "string",
  "justification?": "string",
  "notes?": "string",
  "metadata?": "object",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const purchaseRequisitionLineItem = type({
  id: uuid,
  tenantId: uuid,
  purchaseRequisitionId: uuid,
  lineNumber: "number >= 1",
  "itemId?": uuid,
  itemName: "string >= 1",
  "itemCode?": "string",
  "description?": "string",
  quantity: "number > 0",
  "estimatedUnitPrice?": "number >= 0",
  "estimatedLineAmount?": "number >= 0",
  "unitOfMeasure?": "string",
  "requiredDate?": timestamp,
  "preferredSupplierId?": uuid,
  "orderedQuantity?": "number >= 0",
  "receivedQuantity?": "number >= 0",
  "specifications?": "string",
  "manufacturerPartNumber?": "string",
  "notes?": "string",
  "metadata?": "object",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createPurchaseRequisitionRequest = type({
  "requisitionNumber?": "string >= 1",
  title: "string >= 1",
  "description?": "string",
  requisitionType: purchaseRequisitionTypeEnum,
  "priority?": purchaseRequisitionPriorityEnum,
  "departmentId?": uuid,
  "projectId?": uuid,
  "costCenterId?": uuid,
  "budgetId?": uuid,
  "requiredDate?": timestamp,
  "deliveryLocationId?": uuid,
  "preferredSupplierId?": uuid,
  "justification?": "string",
  "notes?": "string",
  lineItems: type({
    "itemId?": uuid,
    itemName: "string >= 1",
    "itemCode?": "string",
    "description?": "string",
    quantity: "number > 0",
    "estimatedUnitPrice?": "number >= 0",
    "unitOfMeasure?": "string",
    "requiredDate?": timestamp,
    "preferredSupplierId?": uuid,
    "specifications?": "string",
    "notes?": "string",
  }).array(),
});

export const updatePurchaseRequisitionRequest = type({
  "title?": "string >= 1",
  "description?": "string",
  "status?": purchaseRequisitionStatusEnum,
  "priority?": purchaseRequisitionPriorityEnum,
  "requiredDate?": timestamp,
  "deliveryLocationId?": uuid,
  "preferredSupplierId?": uuid,
  "justification?": "string",
  "notes?": "string",
});

// Supplier Quotation schemas
export const supplierQuotation = type({
  id: uuid,
  tenantId: uuid,
  quotationNumber: "string >= 1",
  supplierId: uuid,
  supplierName: "string >= 1",
  "supplierCode?": "string",
  quotationType: quotationTypeEnum,
  status: quotationStatusEnum,
  "purchaseRequisitionId?": uuid,
  "rfqId?": uuid,
  requestDate: timestamp,
  "responseDate?": timestamp,
  quotationDate: timestamp,
  "validUntil?": timestamp,
  "contactPersonId?": uuid,
  "contactName?": "string",
  "contactEmail?": "string",
  "contactPhone?": "string",
  paymentTerms: paymentTermsEnum,
  "customPaymentTerms?": "string",
  deliveryTerms: deliveryTermsEnum,
  "currency?": "string",
  "exchangeRate?": "number > 0",
  subtotalAmount: "number >= 0",
  taxAmount: "number >= 0",
  discountAmount: "number >= 0",
  shippingAmount: "number >= 0",
  totalAmount: "number >= 0",
  "leadTimeDays?": "number >= 0",
  "warrantyPeriod?": "string",
  "notes?": "string",
  "terms?": "string",
  "attachments?": "string[]",
  "evaluationScore?": "number >= 0",
  "evaluationNotes?": "string",
  "selectedAt?": timestamp,
  "rejectedAt?": timestamp,
  "rejectionReason?": "string",
  "metadata?": "object",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const supplierQuotationLineItem = type({
  id: uuid,
  tenantId: uuid,
  supplierQuotationId: uuid,
  lineNumber: "number >= 1",
  "requisitionLineItemId?": uuid,
  itemId: uuid,
  itemName: "string >= 1",
  "itemCode?": "string",
  "description?": "string",
  quantity: "number > 0",
  unitPrice: "number >= 0",
  lineAmount: "number >= 0",
  "unitOfMeasure?": "string",
  "leadTimeDays?": "number >= 0",
  "taxRate?": "number >= 0",
  "taxAmount?": "number >= 0",
  "discountPercent?": "number >= 0",
  "discountAmount?": "number >= 0",
  "manufacturerPartNumber?": "string",
  "supplierPartNumber?": "string",
  "specifications?": "string",
  "warrantyPeriod?": "string",
  "notes?": "string",
  "metadata?": "object",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createSupplierQuotationRequest = type({
  "quotationNumber?": "string >= 1",
  supplierId: uuid,
  quotationType: quotationTypeEnum,
  "purchaseRequisitionId?": uuid,
  "rfqId?": uuid,
  quotationDate: timestamp,
  "validUntil?": timestamp,
  "contactPersonId?": uuid,
  paymentTerms: paymentTermsEnum,
  "customPaymentTerms?": "string",
  deliveryTerms: deliveryTermsEnum,
  "currency?": "string",
  "leadTimeDays?": "number >= 0",
  "warrantyPeriod?": "string",
  "notes?": "string",
  "terms?": "string",
  lineItems: type({
    "requisitionLineItemId?": uuid,
    itemId: uuid,
    quantity: "number > 0",
    unitPrice: "number >= 0",
    "description?": "string",
    "unitOfMeasure?": "string",
    "leadTimeDays?": "number >= 0",
    "manufacturerPartNumber?": "string",
    "supplierPartNumber?": "string",
    "specifications?": "string",
    "warrantyPeriod?": "string",
    "notes?": "string",
  }).array(),
});

export const updateSupplierQuotationRequest = type({
  "status?": quotationStatusEnum,
  "validUntil?": timestamp,
  "contactPersonId?": uuid,
  "paymentTerms?": paymentTermsEnum,
  "customPaymentTerms?": "string",
  "deliveryTerms?": deliveryTermsEnum,
  "leadTimeDays?": "number >= 0",
  "warrantyPeriod?": "string",
  "notes?": "string",
  "terms?": "string",
  "evaluationScore?": "number >= 0",
  "evaluationNotes?": "string",
  "rejectionReason?": "string",
});

// Goods Receipt schemas
export const goodsReceipt = type({
  id: uuid,
  tenantId: uuid,
  receiptNumber: "string >= 1",
  purchaseOrderId: uuid,
  supplierId: uuid,
  supplierName: "string >= 1",
  "supplierCode?": "string",
  receiptType: goodsReceiptTypeEnum,
  status: goodsReceiptStatusEnum,
  receiptDate: timestamp,
  "expectedDate?": timestamp,
  "deliveryDate?": timestamp,
  "locationId?": uuid,
  "warehouseId?": uuid,
  "receivedBy?": uuid,
  "inspectedBy?": uuid,
  "inspectedAt?": timestamp,
  inspectionResult: inspectionResultEnum,
  "qualityNotes?": "string",
  "documentNumber?": "string",
  "deliveryNote?": "string",
  "packingSlipNumber?": "string",
  "carrier?": "string",
  "trackingNumber?": "string",
  "vehicleNumber?": "string",
  "driverName?": "string",
  "notes?": "string",
  "attachments?": "string[]",
  "postedAt?": timestamp,
  "postedBy?": uuid,
  "metadata?": "object",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const goodsReceiptLineItem = type({
  id: uuid,
  tenantId: uuid,
  goodsReceiptId: uuid,
  purchaseOrderLineItemId: uuid,
  lineNumber: "number >= 1",
  itemId: uuid,
  itemName: "string >= 1",
  "itemCode?": "string",
  orderedQuantity: "number > 0",
  receivedQuantity: "number >= 0",
  acceptedQuantity: "number >= 0",
  rejectedQuantity: "number >= 0",
  "unitOfMeasure?": "string",
  "unitPrice?": "number >= 0",
  "totalValue?": "number >= 0",
  "lotNumber?": "string",
  "serialNumbers?": "string[]",
  "expirationDate?": timestamp,
  "manufacturingDate?": timestamp,
  "batchNumber?": "string",
  "locationId?": "string",
  "binLocation?": "string",
  inspectionResult: inspectionResultEnum,
  "qualityNotes?": "string",
  "damageDescription?": "string",
  "rejectionReason?": "string",
  "notes?": "string",
  "metadata?": "object",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createGoodsReceiptRequest = type({
  "receiptNumber?": "string >= 1",
  purchaseOrderId: uuid,
  receiptType: goodsReceiptTypeEnum,
  receiptDate: timestamp,
  "locationId?": uuid,
  "warehouseId?": uuid,
  "documentNumber?": "string",
  "deliveryNote?": "string",
  "packingSlipNumber?": "string",
  "carrier?": "string",
  "trackingNumber?": "string",
  "vehicleNumber?": "string",
  "driverName?": "string",
  "notes?": "string",
  lineItems: type({
    purchaseOrderLineItemId: uuid,
    receivedQuantity: "number >= 0",
    "acceptedQuantity?": "number >= 0",
    "rejectedQuantity?": "number >= 0",
    "lotNumber?": "string",
    "serialNumbers?": "string[]",
    "expirationDate?": timestamp,
    "manufacturingDate?": timestamp,
    "batchNumber?": "string",
    "locationId?": "string",
    "binLocation?": "string",
    "inspectionResult?": inspectionResultEnum,
    "qualityNotes?": "string",
    "damageDescription?": "string",
    "rejectionReason?": "string",
    "notes?": "string",
  }).array(),
});

export const updateGoodsReceiptRequest = type({
  "status?": goodsReceiptStatusEnum,
  "inspectedBy?": uuid,
  "inspectionResult?": inspectionResultEnum,
  "qualityNotes?": "string",
  "notes?": "string",
});

// Request for Quotation (RFQ) schemas
export const requestForQuotation = type({
  id: uuid,
  tenantId: uuid,
  rfqNumber: "string >= 1",
  title: "string >= 1",
  "description?": "string",
  rfqType: quotationTypeEnum,
  status:
    "'draft' | 'sent' | 'responses_received' | 'evaluated' | 'awarded' | 'cancelled'",
  "purchaseRequisitionId?": uuid,
  "categoryId?": uuid,
  "projectId?": uuid,
  "costCenterId?": uuid,
  "buyerId?": uuid,
  issueDate: timestamp,
  "responseDeadline?": timestamp,
  "validUntil?": timestamp,
  "currency?": "string",
  paymentTerms: paymentTermsEnum,
  "customPaymentTerms?": "string",
  deliveryTerms: deliveryTermsEnum,
  "deliveryLocationId?": uuid,
  "evaluationCriteria?": "string",
  "terms?": "string",
  "instructions?": "string",
  "attachments?": "string[]",
  "notes?": "string",
  "metadata?": "object",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const rfqLineItem = type({
  id: uuid,
  tenantId: uuid,
  requestForQuotationId: uuid,
  lineNumber: "number >= 1",
  "itemId?": uuid,
  itemName: "string >= 1",
  "itemCode?": "string",
  "description?": "string",
  quantity: "number > 0",
  "unitOfMeasure?": "string",
  "requiredDate?": timestamp,
  "specifications?": "string",
  "manufacturerPartNumber?": "string",
  "notes?": "string",
  "metadata?": "object",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const rfqSupplier = type({
  id: uuid,
  tenantId: uuid,
  requestForQuotationId: uuid,
  supplierId: uuid,
  supplierName: "string >= 1",
  "contactPersonId?": uuid,
  "contactEmail?": "string",
  sentAt: timestamp,
  "responseDeadline?": timestamp,
  "respondedAt?": timestamp,
  "quotationId?": uuid,
  "notes?": "string",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

// Query/Filter schemas
export const purchaseOrderFilters = type({
  "supplierId?": uuid,
  "status?": purchaseOrderStatusEnum,
  "orderType?": purchaseOrderTypeEnum,
  "priority?": purchaseOrderPriorityEnum,
  "buyerId?": uuid,
  "departmentId?": uuid,
  "projectId?": uuid,
  "dateFrom?": timestamp,
  "dateTo?": timestamp,
  "expectedDeliveryFrom?": timestamp,
  "expectedDeliveryTo?": timestamp,
  "amountFrom?": "number >= 0",
  "amountTo?": "number >= 0",
  "search?": "string",
  "page?": "number >= 1",
  "limit?": "number >= 1",
  "orderBy?": "string",
  "orderDirection?": "'asc' | 'desc'",
});

export const purchaseRequisitionFilters = type({
  "status?": purchaseRequisitionStatusEnum,
  "requisitionType?": purchaseRequisitionTypeEnum,
  "priority?": purchaseRequisitionPriorityEnum,
  "requestedBy?": uuid,
  "departmentId?": uuid,
  "projectId?": uuid,
  "dateFrom?": timestamp,
  "dateTo?": timestamp,
  "requiredDateFrom?": timestamp,
  "requiredDateTo?": timestamp,
  "search?": "string",
  "page?": "number >= 1",
  "limit?": "number >= 1",
  "orderBy?": "string",
  "orderDirection?": "'asc' | 'desc'",
});

export const supplierQuotationFilters = type({
  "supplierId?": uuid,
  "status?": quotationStatusEnum,
  "quotationType?": quotationTypeEnum,
  "purchaseRequisitionId?": uuid,
  "dateFrom?": timestamp,
  "dateTo?": timestamp,
  "validUntilFrom?": timestamp,
  "validUntilTo?": timestamp,
  "amountFrom?": "number >= 0",
  "amountTo?": "number >= 0",
  "search?": "string",
  "page?": "number >= 1",
  "limit?": "number >= 1",
  "orderBy?": "string",
  "orderDirection?": "'asc' | 'desc'",
});

export const goodsReceiptFilters = type({
  "purchaseOrderId?": uuid,
  "supplierId?": uuid,
  "status?": goodsReceiptStatusEnum,
  "receiptType?": goodsReceiptTypeEnum,
  "inspectionResult?": inspectionResultEnum,
  "dateFrom?": timestamp,
  "dateTo?": timestamp,
  "locationId?": uuid,
  "search?": "string",
  "page?": "number >= 1",
  "limit?": "number >= 1",
  "orderBy?": "string",
  "orderDirection?": "'asc' | 'desc'",
});

// Type exports
export type PurchaseOrder = typeof purchaseOrder.infer;
export type PurchaseOrderLineItem = typeof purchaseOrderLineItem.infer;
export type CreatePurchaseOrderRequest =
  typeof createPurchaseOrderRequest.infer;
export type UpdatePurchaseOrderRequest =
  typeof updatePurchaseOrderRequest.infer;

export type PurchaseRequisition = typeof purchaseRequisition.infer;
export type PurchaseRequisitionLineItem =
  typeof purchaseRequisitionLineItem.infer;
export type CreatePurchaseRequisitionRequest =
  typeof createPurchaseRequisitionRequest.infer;
export type UpdatePurchaseRequisitionRequest =
  typeof updatePurchaseRequisitionRequest.infer;

export type SupplierQuotation = typeof supplierQuotation.infer;
export type SupplierQuotationLineItem = typeof supplierQuotationLineItem.infer;
export type CreateSupplierQuotationRequest =
  typeof createSupplierQuotationRequest.infer;
export type UpdateSupplierQuotationRequest =
  typeof updateSupplierQuotationRequest.infer;

export type GoodsReceipt = typeof goodsReceipt.infer;
export type GoodsReceiptLineItem = typeof goodsReceiptLineItem.infer;
export type CreateGoodsReceiptRequest = typeof createGoodsReceiptRequest.infer;
export type UpdateGoodsReceiptRequest = typeof updateGoodsReceiptRequest.infer;

export type RequestForQuotation = typeof requestForQuotation.infer;
export type RfqLineItem = typeof rfqLineItem.infer;
export type RfqSupplier = typeof rfqSupplier.infer;

export type PurchaseOrderFilters = typeof purchaseOrderFilters.infer;
export type PurchaseRequisitionFilters =
  typeof purchaseRequisitionFilters.infer;
export type SupplierQuotationFilters = typeof supplierQuotationFilters.infer;
export type GoodsReceiptFilters = typeof goodsReceiptFilters.infer;

export type PurchaseOrderStatus = typeof purchaseOrderStatusEnum.infer;
export type PurchaseOrderPriority = typeof purchaseOrderPriorityEnum.infer;
export type PurchaseOrderType = typeof purchaseOrderTypeEnum.infer;
export type PurchaseLineItemStatus = typeof purchaseLineItemStatusEnum.infer;
export type PurchaseRequisitionStatus =
  typeof purchaseRequisitionStatusEnum.infer;
export type PurchaseRequisitionPriority =
  typeof purchaseRequisitionPriorityEnum.infer;
export type PurchaseRequisitionType = typeof purchaseRequisitionTypeEnum.infer;
export type QuotationStatus = typeof quotationStatusEnum.infer;
export type QuotationType = typeof quotationTypeEnum.infer;
export type GoodsReceiptStatus = typeof goodsReceiptStatusEnum.infer;
export type GoodsReceiptType = typeof goodsReceiptTypeEnum.infer;
export type InspectionResult = typeof inspectionResultEnum.infer;
export type PaymentTerms = typeof paymentTermsEnum.infer;
export type DeliveryTerms = typeof deliveryTermsEnum.infer;
