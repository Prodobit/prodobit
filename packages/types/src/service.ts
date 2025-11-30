import { type } from "arktype";
import { uuid, timestamp } from "./common";

/**
 * Service Module Types
 *
 * Servis sözleşmeleri ve servis talepleri için tip tanımlamaları.
 * AssetSpotter ve Prodobit'in servis yönetimi için kullanılır.
 */

// ============================================================================
// ENUMS
// ============================================================================

export const contractType = type(
  "'maintenance' | 'support' | 'warranty_extension' | 'full_service' | 'on_demand' | 'preventive' | 'calibration'"
);

export const contractStatus = type(
  "'draft' | 'pending_approval' | 'active' | 'suspended' | 'expired' | 'cancelled' | 'renewed'"
);

export const billingModel = type(
  "'fixed' | 'per_incident' | 'hourly' | 'monthly' | 'quarterly' | 'annually' | 'hybrid'"
);

export const ticketType = type(
  "'incident' | 'request' | 'preventive' | 'corrective' | 'installation' | 'training' | 'consultation' | 'inspection'"
);

export const ticketStatus = type(
  "'open' | 'assigned' | 'in_progress' | 'pending_customer' | 'pending_parts' | 'on_hold' | 'resolved' | 'closed' | 'cancelled'"
);

export const ticketPriority = type("'critical' | 'high' | 'medium' | 'low'");

export const ticketSource = type(
  "'customer_portal' | 'phone' | 'email' | 'chat' | 'field_technician' | 'system_alert' | 'scheduled' | 'internal'"
);

// ============================================================================
// SERVICE CONTRACT
// ============================================================================

export const serviceContract = type({
  id: uuid,
  tenantId: uuid,
  contractNumber: "string >= 1",
  name: "string >= 1",
  "description?": "string",

  customerId: uuid,
  contractType: contractType,
  billingModel: billingModel,
  status: contractStatus,

  startDate: timestamp,
  endDate: timestamp,
  "autoRenew?": "boolean",
  "renewalNoticeDays?": "number",

  "contractValue?": "number",
  "currency?": "string",
  "monthlyFee?": "number",
  "hourlyRate?": "number",
  "incidentRate?": "number",

  "includedIncidents?": "number",
  "includedHours?": "number",
  "includedPreventiveVisits?": "number",

  "slaConfig?": "unknown", // JSON
  "coverageScope?": "unknown", // JSON
  "excludedItems?": "unknown", // JSON

  "primaryContactId?": uuid,
  "technicalContactId?": uuid,
  "accountManagerId?": uuid,
  "serviceTeamId?": "string",

  "documentIds?": "string[]",
  "termsAndConditions?": "string",
  "specialTerms?": "string",

  "totalTicketsCreated?": "number",
  "totalIncidentsUsed?": "number",
  "totalHoursUsed?": "number",

  "notes?": "string",
  "metadata?": "unknown",

  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createServiceContractRequest = type({
  contractNumber: "string >= 1",
  name: "string >= 1",
  "description?": "string",
  customerId: uuid,
  contractType: contractType,
  billingModel: billingModel,
  startDate: timestamp,
  endDate: timestamp,
  "autoRenew?": "boolean",
  "renewalNoticeDays?": "number",
  "contractValue?": "number",
  "currency?": "string",
  "monthlyFee?": "number",
  "hourlyRate?": "number",
  "incidentRate?": "number",
  "includedIncidents?": "number",
  "includedHours?": "number",
  "includedPreventiveVisits?": "number",
  "slaConfig?": "unknown",
  "coverageScope?": "unknown",
  "excludedItems?": "unknown",
  "primaryContactId?": uuid,
  "technicalContactId?": uuid,
  "accountManagerId?": uuid,
  "serviceTeamId?": "string",
  "documentIds?": "string[]",
  "termsAndConditions?": "string",
  "specialTerms?": "string",
  "notes?": "string",
  "assetIds?": "string[]", // Assets to include in contract
});

export const updateServiceContractRequest = type({
  "name?": "string >= 1",
  "description?": "string",
  "contractType?": contractType,
  "billingModel?": billingModel,
  "status?": contractStatus,
  "startDate?": timestamp,
  "endDate?": timestamp,
  "autoRenew?": "boolean",
  "renewalNoticeDays?": "number",
  "contractValue?": "number",
  "currency?": "string",
  "monthlyFee?": "number",
  "hourlyRate?": "number",
  "incidentRate?": "number",
  "includedIncidents?": "number",
  "includedHours?": "number",
  "includedPreventiveVisits?": "number",
  "slaConfig?": "unknown",
  "coverageScope?": "unknown",
  "excludedItems?": "unknown",
  "primaryContactId?": uuid,
  "technicalContactId?": uuid,
  "accountManagerId?": uuid,
  "serviceTeamId?": "string",
  "documentIds?": "string[]",
  "termsAndConditions?": "string",
  "specialTerms?": "string",
  "notes?": "string",
});

export const serviceContractQuery = type({
  "customerId?": uuid,
  "contractType?": contractType,
  "status?": contractStatus,
  "accountManagerId?": uuid,
  "expiringWithinDays?": "number",
  "search?": "string",
});

// ============================================================================
// SERVICE CONTRACT ASSET
// ============================================================================

export const serviceContractAsset = type({
  id: uuid,
  tenantId: uuid,
  contractId: uuid,
  assetId: uuid,
  "coverageStartDate?": timestamp,
  "coverageEndDate?": timestamp,
  "specialTerms?": "string",
  isActive: "boolean",
  insertedAt: timestamp,
});

export const addContractAssetRequest = type({
  assetId: uuid,
  "coverageStartDate?": timestamp,
  "coverageEndDate?": timestamp,
  "specialTerms?": "string",
});

// ============================================================================
// SERVICE TICKET
// ============================================================================

export const serviceTicket = type({
  id: uuid,
  tenantId: uuid,
  ticketNumber: "string >= 1",

  "contractId?": uuid,
  isBillable: "boolean",

  customerId: uuid,
  "contactPersonId?": uuid,
  "assetId?": uuid,

  ticketType: ticketType,
  priority: ticketPriority,
  status: ticketStatus,
  source: ticketSource,

  subject: "string >= 1",
  "description?": "string",
  "problemCategory?": "string",
  "errorCode?": "string",

  "serviceLocationId?": uuid,
  "serviceAddress?": "string",

  "assignedToId?": uuid,
  "assignedTeamId?": "string",

  "slaResponseDue?": timestamp,
  "slaResolutionDue?": timestamp,
  "firstResponseAt?": timestamp,

  reportedAt: timestamp,
  "acknowledgedAt?": timestamp,
  "scheduledAt?": timestamp,
  "startedAt?": timestamp,
  "resolvedAt?": timestamp,
  "closedAt?": timestamp,

  "resolutionSummary?": "string",
  "resolutionCode?": "string",
  "rootCause?": "string",
  "preventiveAction?": "string",

  "travelTimeMinutes?": "number",
  "workTimeMinutes?": "number",
  "totalTimeMinutes?": "number",

  "laborCost?": "number",
  "partsCost?": "number",
  "travelCost?": "number",
  "otherCost?": "number",
  "totalCost?": "number",
  "currency?": "string",

  "partsUsed?": "unknown[]",
  "maintenanceRecordId?": uuid,
  "calibrationRecordId?": uuid,
  "relatedTicketId?": uuid,

  "attachmentIds?": "string[]",
  "signatureImageId?": "string",

  "customerSatisfaction?": "number",
  "customerFeedback?": "string",
  "internalNotes?": "string",
  "metadata?": "unknown",

  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createServiceTicketRequest = type({
  ticketNumber: "string >= 1",
  "contractId?": uuid,
  "isBillable?": "boolean",
  customerId: uuid,
  "contactPersonId?": uuid,
  "assetId?": uuid,
  ticketType: ticketType,
  priority: ticketPriority,
  "source?": ticketSource,
  subject: "string >= 1",
  "description?": "string",
  "problemCategory?": "string",
  "errorCode?": "string",
  "serviceLocationId?": uuid,
  "serviceAddress?": "string",
  "assignedToId?": uuid,
  "assignedTeamId?": "string",
  "scheduledAt?": timestamp,
  "internalNotes?": "string",
});

export const updateServiceTicketRequest = type({
  "ticketType?": ticketType,
  "priority?": ticketPriority,
  "status?": ticketStatus,
  "subject?": "string >= 1",
  "description?": "string",
  "problemCategory?": "string",
  "errorCode?": "string",
  "serviceLocationId?": uuid,
  "serviceAddress?": "string",
  "assignedToId?": uuid,
  "assignedTeamId?": "string",
  "scheduledAt?": timestamp,
  "resolutionSummary?": "string",
  "resolutionCode?": "string",
  "rootCause?": "string",
  "preventiveAction?": "string",
  "travelTimeMinutes?": "number",
  "workTimeMinutes?": "number",
  "laborCost?": "number",
  "partsCost?": "number",
  "travelCost?": "number",
  "otherCost?": "number",
  "partsUsed?": "unknown[]",
  "attachmentIds?": "string[]",
  "signatureImageId?": "string",
  "customerSatisfaction?": "number",
  "customerFeedback?": "string",
  "internalNotes?": "string",
});

export const serviceTicketQuery = type({
  "contractId?": uuid,
  "customerId?": uuid,
  "assetId?": uuid,
  "ticketType?": ticketType,
  "priority?": ticketPriority,
  "status?": ticketStatus,
  "assignedToId?": uuid,
  "assignedTeamId?": "string",
  "reportedAfter?": timestamp,
  "reportedBefore?": timestamp,
  "search?": "string",
});

// ============================================================================
// SERVICE TICKET COMMENT
// ============================================================================

export const serviceTicketComment = type({
  id: uuid,
  tenantId: uuid,
  ticketId: uuid,
  authorId: uuid,
  content: "string >= 1",
  isInternal: "boolean",
  isSystemGenerated: "boolean",
  "attachmentIds?": "string[]",
  insertedAt: timestamp,
});

export const createTicketCommentRequest = type({
  content: "string >= 1",
  "isInternal?": "boolean",
  "attachmentIds?": "string[]",
});

// ============================================================================
// SLA CONFIGURATION
// ============================================================================

export const slaConfigItem = type({
  priority: ticketPriority,
  responseTimeMinutes: "number",
  resolutionTimeMinutes: "number",
});

export const slaConfig = type({
  items: "unknown[]", // SlaConfigItem[]
  businessHoursOnly: "boolean",
  "businessHoursStart?": "string", // "09:00"
  "businessHoursEnd?": "string", // "18:00"
  "excludeWeekends?": "boolean",
});

// ============================================================================
// TYPE EXPORTS
// ============================================================================

export type ContractType = typeof contractType.infer;
export type ContractStatus = typeof contractStatus.infer;
export type BillingModel = typeof billingModel.infer;
export type TicketType = typeof ticketType.infer;
export type TicketStatus = typeof ticketStatus.infer;
export type TicketPriority = typeof ticketPriority.infer;
export type TicketSource = typeof ticketSource.infer;

export type ServiceContract = typeof serviceContract.infer;
export type CreateServiceContractRequest = typeof createServiceContractRequest.infer;
export type UpdateServiceContractRequest = typeof updateServiceContractRequest.infer;
export type ServiceContractQuery = typeof serviceContractQuery.infer;

export type ServiceContractAsset = typeof serviceContractAsset.infer;
export type AddContractAssetRequest = typeof addContractAssetRequest.infer;

export type ServiceTicket = typeof serviceTicket.infer;
export type CreateServiceTicketRequest = typeof createServiceTicketRequest.infer;
export type UpdateServiceTicketRequest = typeof updateServiceTicketRequest.infer;
export type ServiceTicketQuery = typeof serviceTicketQuery.infer;

export type ServiceTicketComment = typeof serviceTicketComment.infer;
export type CreateTicketCommentRequest = typeof createTicketCommentRequest.infer;

export type SlaConfigItem = typeof slaConfigItem.infer;
export type SlaConfig = typeof slaConfig.infer;
