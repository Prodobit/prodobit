import { type } from "arktype";

// Asset status enum
export const assetStatusEnum = type(
  "'active' | 'inactive' | 'maintenance' | 'repair' | 'calibration' | 'inspection' | 'reserved' | 'in_transit' | 'quarantine' | 'decommissioned' | 'disposed' | 'lost' | 'stolen'"
);
export type AssetStatus = typeof assetStatusEnum.infer;

// Status change reason enum
export const statusChangeReasonEnum = type(
  "'scheduled_maintenance' | 'unscheduled_maintenance' | 'breakdown' | 'calibration_due' | 'inspection_required' | 'relocation' | 'end_of_life' | 'sale' | 'transfer' | 'damage' | 'theft' | 'loss' | 'quarantine_quality' | 'quarantine_safety' | 'return_from_maintenance' | 'return_from_calibration' | 'commissioning' | 'decommissioning' | 'user_request' | 'system_automatic' | 'other'"
);
export type StatusChangeReason = typeof statusChangeReasonEnum.infer;

// Asset Status History schema
export const assetStatusHistory = type({
  id: "string",
  tenantId: "string",
  assetId: "string",
  "previousStatus?": "string | null",
  newStatus: "string",
  "changeReason?": statusChangeReasonEnum,
  "reasonDetails?": "string | null",
  "maintenanceRecordId?": "string | null",
  "calibrationRecordId?": "string | null",
  "issueId?": "string | null",
  "workOrderId?": "string | null",
  changedAt: "string",
  "changedById?": "string | null",
  "durationMinutes?": "string | null",
  "locationId?": "string | null",
  "notes?": "string | null",
  "metadata?": "string | null",
  "externalReference?": "string | null",
  insertedAt: "string",
});
export type AssetStatusHistory = typeof assetStatusHistory.infer;

// Create asset status history request (used internally when status changes)
export const createAssetStatusHistoryRequest = type({
  assetId: "string",
  newStatus: "string",
  "previousStatus?": "string",
  "changeReason?": statusChangeReasonEnum,
  "reasonDetails?": "string",
  "maintenanceRecordId?": "string",
  "calibrationRecordId?": "string",
  "issueId?": "string",
  "workOrderId?": "string",
  "locationId?": "string",
  "notes?": "string",
  "metadata?": "string",
  "externalReference?": "string",
});
export type CreateAssetStatusHistoryRequest = typeof createAssetStatusHistoryRequest.infer;

// Update asset status request (triggers status history creation)
export const updateAssetStatusRequest = type({
  status: "string",
  "changeReason?": statusChangeReasonEnum,
  "reasonDetails?": "string",
  "notes?": "string",
  // Optional related records
  "maintenanceRecordId?": "string",
  "calibrationRecordId?": "string",
  "issueId?": "string",
});
export type UpdateAssetStatusRequest = typeof updateAssetStatusRequest.infer;

// Query types
export const assetStatusHistoryQuery = type({
  "assetId?": "string",
  "status?": "string",
  "changeReason?": statusChangeReasonEnum,
  "changedById?": "string",
  "fromDate?": "string",
  "toDate?": "string",
});
export type AssetStatusHistoryQuery = typeof assetStatusHistoryQuery.infer;

// Status duration statistics
export const statusDurationStats = type({
  status: "string",
  totalDurationMinutes: "number",
  occurrenceCount: "number",
  averageDurationMinutes: "number",
});
export type StatusDurationStats = typeof statusDurationStats.infer;

// Asset lifecycle summary
export const assetLifecycleSummary = type({
  assetId: "string",
  currentStatus: "string",
  totalStatusChanges: "number",
  "statusDurations?": "unknown[]",
  "recentChanges?": "unknown[]",
  "firstRecordedAt?": "string",
  "lastChangedAt?": "string",
});
export type AssetLifecycleSummary = typeof assetLifecycleSummary.infer;
