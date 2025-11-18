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
export declare const assetIssueSeverity: import("arktype/internal/methods/string.ts").StringType<"low" | "medium" | "high" | "critical", {}>;
export declare const assetIssueCategory: import("arktype/internal/methods/string.ts").StringType<"performance" | "mechanical" | "electrical" | "software" | "structural" | "cosmetic" | "safety" | "other", {}>;
export declare const assetIssueStatus: import("arktype/internal/methods/string.ts").StringType<"closed" | "in_progress" | "cancelled" | "acknowledged" | "reported" | "resolved", {}>;
export declare const assetIssue: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    tenantId: string;
    assetId: string;
    title: string;
    description: string;
    category: "performance" | "mechanical" | "electrical" | "software" | "structural" | "cosmetic" | "safety" | "other";
    severity: "low" | "medium" | "high" | "critical";
    status: "closed" | "in_progress" | "cancelled" | "acknowledged" | "reported" | "resolved";
    reportedBy: string;
    reportedAt: string;
    insertedAt: string;
    updatedAt: string;
    reportedByUser?: {
        id: string;
        displayName?: string | undefined;
    } | undefined;
    assignedTo?: string | undefined;
    assignedToUser?: {
        id: string;
        displayName?: string | undefined;
    } | undefined;
    relatedTaskId?: string | undefined;
    acknowledgedAt?: string | undefined;
    resolvedAt?: string | undefined;
    closedAt?: string | undefined;
    estimatedResolutionTime?: number | undefined;
    actualResolutionTime?: number | undefined;
    resolutionNotes?: string | undefined;
    rootCause?: string | undefined;
    correctiveActions?: string | undefined;
    preventiveActions?: string | undefined;
    imageIds?: string[] | undefined;
    documentIds?: string[] | undefined;
    location?: string | undefined;
    impactDescription?: string | undefined;
    downtime?: boolean | undefined;
    deletedAt?: string | undefined;
}, {}>;
export declare const createAssetIssueRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    assetId: string;
    title: string;
    description: string;
    category: "performance" | "mechanical" | "electrical" | "software" | "structural" | "cosmetic" | "safety" | "other";
    severity: "low" | "medium" | "high" | "critical";
    assignedTo?: string | undefined;
    estimatedResolutionTime?: number | undefined;
    imageIds?: string[] | undefined;
    documentIds?: string[] | undefined;
    location?: string | undefined;
    impactDescription?: string | undefined;
    downtime?: boolean | undefined;
}, {}>;
export declare const updateAssetIssueRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    title?: string | undefined;
    description?: string | undefined;
    category?: "performance" | "mechanical" | "electrical" | "software" | "structural" | "cosmetic" | "safety" | "other" | undefined;
    severity?: "low" | "medium" | "high" | "critical" | undefined;
    status?: "closed" | "in_progress" | "cancelled" | "acknowledged" | "reported" | "resolved" | undefined;
    assignedTo?: string | undefined;
    estimatedResolutionTime?: number | undefined;
    actualResolutionTime?: number | undefined;
    resolutionNotes?: string | undefined;
    rootCause?: string | undefined;
    correctiveActions?: string | undefined;
    preventiveActions?: string | undefined;
    imageIds?: string[] | undefined;
    documentIds?: string[] | undefined;
    location?: string | undefined;
    impactDescription?: string | undefined;
    downtime?: boolean | undefined;
}, {}>;
export declare const assetIssueQuery: import("arktype/internal/methods/object.ts").ObjectType<{
    assetId?: string | undefined;
    category?: "performance" | "mechanical" | "electrical" | "software" | "structural" | "cosmetic" | "safety" | "other" | undefined;
    severity?: "low" | "medium" | "high" | "critical" | undefined;
    status?: "closed" | "in_progress" | "cancelled" | "acknowledged" | "reported" | "resolved" | undefined;
    reportedBy?: string | undefined;
    assignedTo?: string | undefined;
    downtime?: boolean | undefined;
    search?: string | undefined;
    reportedAfter?: string | undefined;
    reportedBefore?: string | undefined;
}, {}>;
export type AssetIssueSeverity = typeof assetIssueSeverity.infer;
export type AssetIssueCategory = typeof assetIssueCategory.infer;
export type AssetIssueStatus = typeof assetIssueStatus.infer;
export type AssetIssue = typeof assetIssue.infer;
export type CreateAssetIssueRequest = typeof createAssetIssueRequest.infer;
export type UpdateAssetIssueRequest = typeof updateAssetIssueRequest.infer;
export type AssetIssueQuery = typeof assetIssueQuery.infer;
//# sourceMappingURL=asset-issue.d.ts.map