import { type } from "arktype";
import { uuid, timestamp } from "./common";

/**
 * Asset Issue (Arıza/Problem Bildirimi)
 *
 * Kullanıcıların assetler üzerinde tespit ettikleri arızaları,
 * hataları ve problemleri bildirmeleri için kullanılır.
 *
 * Özellikler:
 * - Çoklu severity (aciliyet) seviyeleri
 * - Arıza kategorileri (mechanical, electrical, software, etc.)
 * - İmaj ve döküman ekleme desteği
 * - Durum takibi (reported, in_progress, resolved, etc.)
 * - İlişkili task oluşturma
 */
export const assetIssueSeverity = type(
  "'critical' | 'high' | 'medium' | 'low'"
);

export const assetIssueCategory = type(
  "'mechanical' | 'electrical' | 'software' | 'structural' | 'cosmetic' | 'safety' | 'performance' | 'other'"
);

export const assetIssueStatus = type(
  "'reported' | 'acknowledged' | 'in_progress' | 'resolved' | 'closed' | 'cancelled'"
);

export const assetIssue = type({
  id: uuid,
  tenantId: uuid,
  assetId: uuid,
  title: "string >= 1",
  description: "string",
  category: assetIssueCategory,
  severity: assetIssueSeverity,
  status: assetIssueStatus,
  "reportedBy": uuid, // employee/user id
  "assignedTo?": uuid, // employee id - kim bu sorunu çözecek
  "relatedTaskId?": uuid, // bu arıza için oluşturulan task
  "reportedAt": timestamp,
  "acknowledgedAt?": timestamp,
  "resolvedAt?": timestamp,
  "closedAt?": timestamp,
  "estimatedResolutionTime?": "number", // saat cinsinden
  "actualResolutionTime?": "number", // gerçekleşen süre (saat)
  "resolutionNotes?": "string",
  "rootCause?": "string", // kök neden analizi
  "correctiveActions?": "string", // düzeltici aksiyonlar
  "preventiveActions?": "string", // önleyici aksiyonlar
  "imageIds?": "string[]", // fotoğraflar
  "documentIds?": "string[]", // dökümanlar
  "location?": "string", // asset içinde spesifik konum
  "impactDescription?": "string", // etkisi
  "downtime?": "boolean", // asset kullanılamaz durumda mı
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createAssetIssueRequest = type({
  assetId: uuid,
  title: "string >= 1",
  description: "string",
  category: assetIssueCategory,
  severity: assetIssueSeverity,
  "assignedTo?": uuid,
  "estimatedResolutionTime?": "number",
  "imageIds?": "string[]",
  "documentIds?": "string[]",
  "location?": "string",
  "impactDescription?": "string",
  "downtime?": "boolean",
});

export const updateAssetIssueRequest = type({
  "title?": "string >= 1",
  "description?": "string",
  "category?": assetIssueCategory,
  "severity?": assetIssueSeverity,
  "status?": assetIssueStatus,
  "assignedTo?": uuid,
  "estimatedResolutionTime?": "number",
  "actualResolutionTime?": "number",
  "resolutionNotes?": "string",
  "rootCause?": "string",
  "correctiveActions?": "string",
  "preventiveActions?": "string",
  "imageIds?": "string[]",
  "documentIds?": "string[]",
  "location?": "string",
  "impactDescription?": "string",
  "downtime?": "boolean",
});

export const assetIssueQuery = type({
  "assetId?": uuid,
  "category?": assetIssueCategory,
  "severity?": assetIssueSeverity,
  "status?": assetIssueStatus,
  "reportedBy?": uuid,
  "assignedTo?": uuid,
  "downtime?": "boolean",
  "search?": "string",
  "reportedAfter?": timestamp,
  "reportedBefore?": timestamp,
});

// Type exports
export type AssetIssueSeverity = typeof assetIssueSeverity.infer;
export type AssetIssueCategory = typeof assetIssueCategory.infer;
export type AssetIssueStatus = typeof assetIssueStatus.infer;
export type AssetIssue = typeof assetIssue.infer;
export type CreateAssetIssueRequest = typeof createAssetIssueRequest.infer;
export type UpdateAssetIssueRequest = typeof updateAssetIssueRequest.infer;
export type AssetIssueQuery = typeof assetIssueQuery.infer;
