import { type } from "arktype";
import { uuid, timestamp } from "./common";

// Asset Assignment schemas
export const assetAssignment = type({
  id: uuid,
  tenantId: uuid,
  assetId: uuid,
  assignedTo: uuid,
  assignedType: "'user' | 'department' | 'location'",
  assignedBy: uuid,
  assignmentDate: timestamp,
  "expectedReturnDate?": "string.date",
  "actualReturnDate?": timestamp,
  status: "'active' | 'returned' | 'transferred'",
  "transferredToAssignmentId?": uuid,
  "notes?": "string",
  "signatureImageId?": uuid,
  "assignmentReason?": "string",
  "returnCondition?": "'good' | 'damaged' | 'needs_repair'",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createAssetAssignmentRequest = type({
  assetId: uuid,
  assignedTo: uuid,
  assignedType: "'user' | 'department' | 'location'",
  "expectedReturnDate?": "string.date",
  "notes?": "string",
  "assignmentReason?": "string",
  "signatureImageId?": uuid,
});

export const updateAssetAssignmentRequest = type({
  "status?": "'active' | 'returned' | 'transferred'",
  "actualReturnDate?": timestamp,
  "returnCondition?": "'good' | 'damaged' | 'needs_repair'",
  "notes?": "string",
  "transferredToAssignmentId?": uuid,
});

export const assetAssignmentQuery = type({
  "assetId?": uuid,
  "assignedTo?": uuid,
  "assignedType?": "'user' | 'department' | 'location'",
  "status?": "'active' | 'returned' | 'transferred'",
});

// Type exports
export type AssetAssignment = typeof assetAssignment.infer;
export type CreateAssetAssignmentRequest = typeof createAssetAssignmentRequest.infer;
export type UpdateAssetAssignmentRequest = typeof updateAssetAssignmentRequest.infer;
export type AssetAssignmentQuery = typeof assetAssignmentQuery.infer;
