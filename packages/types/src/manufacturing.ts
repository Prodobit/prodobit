import { type } from "arktype";
import { uuid, timestamp } from "./common";

// BOM Status types
export const bomStatus = type(
  "'draft' | 'active' | 'obsolete' | 'under_review'"
);

export const phantomExplosionPolicy = type(
  "'immediate' | 'one_level' | 'full_explosion'"
);

export const manufacturingPolicy = type(
  "'assemble_to_stock' | 'assemble_to_order' | 'phantom'"
);

export const planningPolicy = type(
  "'mrp' | 'reorder_point' | 'phantom'"
);

export const componentType = type(
  "'material' | 'assembly' | 'phantom'"
);

export const phantomPolicy = type(
  "'always_explode' | 'conditional_explode' | 'planning_only'"
);

export const sourcingType = type(
  "'make' | 'buy' | 'phantom' | 'configured'"
);

// BOM schemas
export const bom = type({
  id: uuid,
  tenantId: uuid,
  itemId: uuid,
  bomCode: "string >= 1",
  name: "string >= 1",
  "description?": "string",
  status: bomStatus,
  "version?": "string",
  "productionQuantity?": "number >= 0",
  "productionUnit?": "string",
  "validFrom?": timestamp,
  "validTo?": timestamp,
  "isPhantomBom?": "boolean",
  "phantomExplosionPolicy?": phantomExplosionPolicy,
  "manufacturingPolicy?": manufacturingPolicy,
  "planningPolicy?": planningPolicy,
  "isCurrentVersion?": "boolean",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createBomRequest = type({
  itemId: uuid,
  bomCode: "string >= 1",
  name: "string >= 1",
  "description?": "string",
  "status?": bomStatus,
  "version?": "string",
  "productionQuantity?": "number >= 0",
  "productionUnit?": "string",
  "validFrom?": timestamp,
  "validTo?": timestamp,
  "isPhantomBom?": "boolean",
  "phantomExplosionPolicy?": phantomExplosionPolicy,
  "manufacturingPolicy?": manufacturingPolicy,
  "planningPolicy?": planningPolicy,
});

export const updateBomRequest = type({
  "itemId?": uuid,
  "bomCode?": "string >= 1",
  "name?": "string >= 1",
  "description?": "string",
  "status?": bomStatus,
  "version?": "string",
  "productionQuantity?": "number >= 0",
  "productionUnit?": "string",
  "validFrom?": timestamp,
  "validTo?": timestamp,
  "isPhantomBom?": "boolean",
  "phantomExplosionPolicy?": phantomExplosionPolicy,
  "manufacturingPolicy?": manufacturingPolicy,
  "planningPolicy?": planningPolicy,
});

// BOM Component schemas
export const bomComponent = type({
  id: uuid,
  tenantId: uuid,
  bomId: uuid,
  componentItemId: uuid,
  "parentComponentId?": uuid,
  quantity: "number > 0",
  unit: "string >= 1",
  "componentType?": componentType,
  "isOptional?": "boolean",
  "isCritical?": "boolean",
  "phantomPolicy?": phantomPolicy,
  "sourcingType?": sourcingType,
  "explodeInMrp?": "boolean",
  "explodeInCosting?": "boolean",
  "explodeInPicking?": "boolean",
  "setupTimeMinutes?": "number >= 0",
  "runTimePerUnitSeconds?": "number >= 0",
  "validFrom?": timestamp,
  "validTo?": timestamp,
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createBomComponentRequest = type({
  bomId: uuid,
  componentItemId: uuid,
  "parentComponentId?": uuid,
  quantity: "number > 0",
  unit: "string >= 1",
  "componentType?": componentType,
  "isOptional?": "boolean",
  "isCritical?": "boolean",
  "phantomPolicy?": phantomPolicy,
  "sourcingType?": sourcingType,
  "explodeInMrp?": "boolean",
  "explodeInCosting?": "boolean",
  "explodeInPicking?": "boolean",
  "setupTimeMinutes?": "number >= 0",
  "runTimePerUnitSeconds?": "number >= 0",
  "validFrom?": timestamp,
  "validTo?": timestamp,
});

// ECO (Engineering Change Order) schemas
export const ecoChangeType = type(
  "'design' | 'process' | 'material' | 'tooling'"
);

export const ecoPriority = type(
  "'low' | 'medium' | 'high' | 'critical'"
);

export const ecoStatus = type(
  "'draft' | 'submitted' | 'under_review' | 'approved' | 'rejected' | 'implemented' | 'cancelled'"
);

export const eco = type({
  id: uuid,
  tenantId: uuid,
  ecoNumber: "string >= 1",
  title: "string >= 1",
  description: "string >= 1",
  changeType: ecoChangeType,
  status: ecoStatus,
  "priority?": ecoPriority,
  "affectedBomIds?": uuid.array(),
  reasonForChange: "string >= 1",
  "impactAnalysis?": "string",
  "estimatedCostImpact?": "number",
  "costCurrency?": "string",
  "requestedCompletionDate?": timestamp,
  requestedBy: uuid,
  "assignedTo?": uuid,
  "approvedBy?": uuid,
  "approvedAt?": timestamp,
  "rejectedBy?": uuid,
  "rejectedAt?": timestamp,
  "rejectionReason?": "string",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createEcoRequest = type({
  ecoNumber: "string >= 1",
  title: "string >= 1",
  description: "string >= 1",
  changeType: ecoChangeType,
  "priority?": ecoPriority,
  "affectedBomIds?": uuid.array(),
  reasonForChange: "string >= 1",
  "impactAnalysis?": "string",
  "estimatedCostImpact?": "number",
  "costCurrency?": "string",
  "requestedCompletionDate?": timestamp,
  requestedBy: uuid,
  "assignedTo?": uuid,
});

export const updateEcoRequest = type({
  "ecoNumber?": "string >= 1",
  "title?": "string >= 1",
  "description?": "string >= 1",
  "changeType?": ecoChangeType,
  "priority?": ecoPriority,
  "affectedBomIds?": uuid.array(),
  "reasonForChange?": "string >= 1",
  "impactAnalysis?": "string",
  "estimatedCostImpact?": "number",
  "costCurrency?": "string",
  "requestedCompletionDate?": timestamp,
  "assignedTo?": uuid,
});

export const rejectEcoRequest = type({
  reason: "string >= 1",
});

// Clone BOM request
export const cloneBomRequest = type({
  newVersion: "string >= 1",
});

// MRP Requirements request
export const mrpRequirementsRequest = type({
  requiredQuantity: "number > 0",
  requiredDate: timestamp,
  "sourcingFilter?": "string",
});

// BOM Query filters
export const bomQuery = type({
  "itemId?": uuid,
  "status?": bomStatus,
  "isCurrentVersion?": "boolean",
  "isPhantomBom?": "boolean",
  "manufacturingPolicy?": manufacturingPolicy,
  "search?": "string",
});

export const bomComponentQuery = type({
  "bomId?": uuid,
  "componentItemId?": uuid,
  "componentType?": componentType,
  "sourcingType?": sourcingType,
  "isOptional?": "boolean",
  "isCritical?": "boolean",
});

export const ecoQuery = type({
  "status?": ecoStatus,
  "changeType?": ecoChangeType,
  "priority?": ecoPriority,
  "assignedTo?": uuid,
  "requestedBy?": uuid,
});

// Type exports
export type BomStatus = typeof bomStatus.infer;
export type PhantomExplosionPolicy = typeof phantomExplosionPolicy.infer;
export type ManufacturingPolicy = typeof manufacturingPolicy.infer;
export type PlanningPolicy = typeof planningPolicy.infer;
export type ComponentType = typeof componentType.infer;
export type PhantomPolicy = typeof phantomPolicy.infer;
export type SourcingType = typeof sourcingType.infer;
export type Bom = typeof bom.infer;
export type CreateBomRequest = typeof createBomRequest.infer;
export type UpdateBomRequest = typeof updateBomRequest.infer;
export type BomComponent = typeof bomComponent.infer;
export type CreateBomComponentRequest = typeof createBomComponentRequest.infer;
export type EcoChangeType = typeof ecoChangeType.infer;
export type EcoPriority = typeof ecoPriority.infer;
export type EcoStatus = typeof ecoStatus.infer;
export type Eco = typeof eco.infer;
export type CreateEcoRequest = typeof createEcoRequest.infer;
export type UpdateEcoRequest = typeof updateEcoRequest.infer;
export type RejectEcoRequest = typeof rejectEcoRequest.infer;
export type CloneBomRequest = typeof cloneBomRequest.infer;
export type MrpRequirementsRequest = typeof mrpRequirementsRequest.infer;
export type BomQuery = typeof bomQuery.infer;
export type BomComponentQuery = typeof bomComponentQuery.infer;
export type EcoQuery = typeof ecoQuery.infer;