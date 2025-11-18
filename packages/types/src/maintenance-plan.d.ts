/**
 * Maintenance Plan (Bakım Planı)
 *
 * Assetlerin düzenli bakımlarını planlamak ve takip etmek için kullanılır.
 * Preventive (önleyici) ve predictive (öngörülü) bakım stratejilerini destekler.
 *
 * Özellikler:
 * - Periyodik bakım planlaması (zaman veya kullanım bazlı)
 * - Checklist ve prosedür tanımları
 * - Otomatik task oluşturma
 * - Bakım geçmişi takibi
 * - Malzeme ve yedek parça listesi
 */
export declare const maintenanceType: import("arktype/internal/methods/string.ts").StringType<"preventive" | "predictive" | "corrective" | "condition_based", {}>;
export declare const maintenanceFrequency: import("arktype/internal/methods/string.ts").StringType<"custom" | "daily" | "weekly" | "monthly" | "quarterly" | "biweekly" | "semi_annually" | "annually", {}>;
export declare const maintenancePlanStatus: import("arktype/internal/methods/string.ts").StringType<"active" | "inactive" | "draft", {}>;
export declare const maintenancePlan: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    tenantId: string;
    assetId: string;
    name: string;
    type: "preventive" | "predictive" | "corrective" | "condition_based";
    frequency: "custom" | "daily" | "weekly" | "monthly" | "quarterly" | "biweekly" | "semi_annually" | "annually";
    status: "active" | "inactive" | "draft";
    startDate: string;
    insertedAt: string;
    updatedAt: string;
    description?: string | undefined;
    endDate?: string | undefined;
    nextScheduledDate?: string | undefined;
    lastMaintenanceDate?: string | undefined;
    intervalDays?: number | undefined;
    intervalHours?: number | undefined;
    intervalCycles?: number | undefined;
    estimatedDurationHours?: number | undefined;
    assignedTeamId?: string | undefined;
    defaultAssigneeId?: string | undefined;
    priority?: "low" | "medium" | "high" | "critical" | undefined;
    instructions?: string | undefined;
    checklistItems?: unknown[] | undefined;
    requiredSkills?: string[] | undefined;
    safetyPrecautions?: string | undefined;
    requiredMaterials?: unknown[] | undefined;
    spareParts?: unknown[] | undefined;
    autoCreateTask?: boolean | undefined;
    taskCreationLeadDays?: number | undefined;
    totalMaintenanceCount?: number | undefined;
    completedMaintenanceCount?: number | undefined;
    missedMaintenanceCount?: number | undefined;
    averageCompletionTime?: number | undefined;
    imageIds?: string[] | undefined;
    documentIds?: string[] | undefined;
    procedureDocumentId?: string | undefined;
    deletedAt?: string | undefined;
}, {}>;
export declare const maintenanceRecord: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    tenantId: string;
    maintenancePlanId: string;
    assetId: string;
    taskId: string;
    scheduledDate: string;
    status: "in_progress" | "cancelled" | "completed" | "scheduled" | "skipped";
    insertedAt: string;
    updatedAt: string;
    completedDate?: string | undefined;
    performedBy?: string | undefined;
    durationHours?: number | undefined;
    notes?: string | undefined;
    issuesFound?: string | undefined;
    partsReplaced?: unknown[] | undefined;
    materialsUsed?: unknown[] | undefined;
    nextRecommendedDate?: string | undefined;
    imageIds?: string[] | undefined;
    documentIds?: string[] | undefined;
}, {}>;
export declare const createMaintenancePlanRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    assetId: string;
    name: string;
    type: "preventive" | "predictive" | "corrective" | "condition_based";
    frequency: "custom" | "daily" | "weekly" | "monthly" | "quarterly" | "biweekly" | "semi_annually" | "annually";
    startDate: string;
    description?: string | undefined;
    endDate?: string | undefined;
    intervalDays?: number | undefined;
    intervalHours?: number | undefined;
    intervalCycles?: number | undefined;
    estimatedDurationHours?: number | undefined;
    assignedTeamId?: string | undefined;
    defaultAssigneeId?: string | undefined;
    priority?: "low" | "medium" | "high" | "critical" | undefined;
    instructions?: string | undefined;
    checklistItems?: unknown[] | undefined;
    requiredSkills?: string[] | undefined;
    safetyPrecautions?: string | undefined;
    requiredMaterials?: unknown[] | undefined;
    spareParts?: unknown[] | undefined;
    autoCreateTask?: boolean | undefined;
    taskCreationLeadDays?: number | undefined;
    imageIds?: string[] | undefined;
    documentIds?: string[] | undefined;
    procedureDocumentId?: string | undefined;
}, {}>;
export declare const updateMaintenancePlanRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    name?: string | undefined;
    description?: string | undefined;
    type?: "preventive" | "predictive" | "corrective" | "condition_based" | undefined;
    frequency?: "custom" | "daily" | "weekly" | "monthly" | "quarterly" | "biweekly" | "semi_annually" | "annually" | undefined;
    status?: "active" | "inactive" | "draft" | undefined;
    startDate?: string | undefined;
    endDate?: string | undefined;
    nextScheduledDate?: string | undefined;
    intervalDays?: number | undefined;
    intervalHours?: number | undefined;
    intervalCycles?: number | undefined;
    estimatedDurationHours?: number | undefined;
    assignedTeamId?: string | undefined;
    defaultAssigneeId?: string | undefined;
    priority?: "low" | "medium" | "high" | "critical" | undefined;
    instructions?: string | undefined;
    checklistItems?: unknown[] | undefined;
    requiredSkills?: string[] | undefined;
    safetyPrecautions?: string | undefined;
    requiredMaterials?: unknown[] | undefined;
    spareParts?: unknown[] | undefined;
    autoCreateTask?: boolean | undefined;
    taskCreationLeadDays?: number | undefined;
    imageIds?: string[] | undefined;
    documentIds?: string[] | undefined;
    procedureDocumentId?: string | undefined;
}, {}>;
export declare const createMaintenanceRecordRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    maintenancePlanId: string;
    scheduledDate: string;
    notes?: string | undefined;
}, {}>;
export declare const updateMaintenanceRecordRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    status?: "in_progress" | "cancelled" | "completed" | "scheduled" | "skipped" | undefined;
    completedDate?: string | undefined;
    performedBy?: string | undefined;
    durationHours?: number | undefined;
    notes?: string | undefined;
    issuesFound?: string | undefined;
    partsReplaced?: unknown[] | undefined;
    materialsUsed?: unknown[] | undefined;
    nextRecommendedDate?: string | undefined;
    imageIds?: string[] | undefined;
    documentIds?: string[] | undefined;
}, {}>;
export declare const maintenancePlanQuery: import("arktype/internal/methods/object.ts").ObjectType<{
    assetId?: string | undefined;
    type?: "preventive" | "predictive" | "corrective" | "condition_based" | undefined;
    frequency?: "custom" | "daily" | "weekly" | "monthly" | "quarterly" | "biweekly" | "semi_annually" | "annually" | undefined;
    status?: "active" | "inactive" | "draft" | undefined;
    assignedTeamId?: string | undefined;
    defaultAssigneeId?: string | undefined;
    search?: string | undefined;
}, {}>;
export declare const maintenanceRecordQuery: import("arktype/internal/methods/object.ts").ObjectType<{
    maintenancePlanId?: string | undefined;
    assetId?: string | undefined;
    taskId?: string | undefined;
    performedBy?: string | undefined;
    status?: "in_progress" | "cancelled" | "completed" | "scheduled" | "skipped" | undefined;
    scheduledAfter?: string | undefined;
    scheduledBefore?: string | undefined;
}, {}>;
export type MaintenanceType = typeof maintenanceType.infer;
export type MaintenanceFrequency = typeof maintenanceFrequency.infer;
export type MaintenancePlanStatus = typeof maintenancePlanStatus.infer;
export type MaintenancePlan = typeof maintenancePlan.infer;
export type MaintenanceRecord = typeof maintenanceRecord.infer;
export type CreateMaintenancePlanRequest = typeof createMaintenancePlanRequest.infer;
export type UpdateMaintenancePlanRequest = typeof updateMaintenancePlanRequest.infer;
export type CreateMaintenanceRecordRequest = typeof createMaintenanceRecordRequest.infer;
export type UpdateMaintenanceRecordRequest = typeof updateMaintenanceRecordRequest.infer;
export type MaintenancePlanQuery = typeof maintenancePlanQuery.infer;
export type MaintenanceRecordQuery = typeof maintenanceRecordQuery.infer;
//# sourceMappingURL=maintenance-plan.d.ts.map