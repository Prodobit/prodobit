/**
 * Calibration Plan (Kalibrasyon Planı)
 *
 * Ölçüm cihazları ve hassas ekipmanların düzenli kalibrasyonlarını
 * planlamak ve sertifikalarını takip etmek için kullanılır.
 *
 * Özellikler:
 * - Periyodik kalibrasyon planlaması
 * - Kalibrasyon standartları ve referanslar
 * - Sertifika takibi
 * - Tolerans ve ölçüm değerleri
 * - İç/Dış kalibrasyon takibi
 * - Otomatik uyarılar
 */
export declare const calibrationType: import("arktype/internal/methods/string.ts").StringType<"external" | "self" | "internal", {}>;
export declare const calibrationStatus: import("arktype/internal/methods/string.ts").StringType<"pending" | "expired" | "in_progress" | "cancelled" | "passed" | "failed", {}>;
export declare const calibrationFrequency: import("arktype/internal/methods/string.ts").StringType<"custom" | "monthly" | "quarterly" | "semi_annually" | "annually" | "biannually", {}>;
export declare const calibrationPlanStatus: import("arktype/internal/methods/string.ts").StringType<"active" | "inactive" | "draft", {}>;
export declare const calibrationPlan: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    tenantId: string;
    assetId: string;
    name: string;
    type: "external" | "self" | "internal";
    frequency: "custom" | "monthly" | "quarterly" | "semi_annually" | "annually" | "biannually";
    status: "active" | "inactive" | "draft";
    startDate: string;
    insertedAt: string;
    updatedAt: string;
    description?: string | undefined;
    endDate?: string | undefined;
    nextCalibrationDate?: string | undefined;
    lastCalibrationDate?: string | undefined;
    intervalDays?: number | undefined;
    intervalMonths?: number | undefined;
    calibrationStandard?: string | undefined;
    referenceStandard?: string | undefined;
    acceptanceCriteria?: string | undefined;
    toleranceRange?: string | undefined;
    estimatedDurationHours?: number | undefined;
    defaultAssigneeId?: string | undefined;
    externalProviderId?: string | undefined;
    calibrationLocation?: string | undefined;
    priority?: "low" | "medium" | "high" | "critical" | undefined;
    instructions?: string | undefined;
    checklistItems?: unknown[] | undefined;
    requiredEquipment?: string[] | undefined;
    environmentalConditions?: string | undefined;
    requiresCertificate?: boolean | undefined;
    certificateValidityDays?: number | undefined;
    regulatoryRequirements?: string[] | undefined;
    complianceStandards?: string[] | undefined;
    autoCreateTask?: boolean | undefined;
    taskCreationLeadDays?: number | undefined;
    alertBeforeDays?: number | undefined;
    alertRecipients?: string[] | undefined;
    totalCalibrationCount?: number | undefined;
    passedCalibrationCount?: number | undefined;
    failedCalibrationCount?: number | undefined;
    averageCompletionTime?: number | undefined;
    imageIds?: string[] | undefined;
    documentIds?: string[] | undefined;
    procedureDocumentId?: string | undefined;
    deletedAt?: string | undefined;
}, {}>;
export declare const calibrationRecord: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    tenantId: string;
    calibrationPlanId: string;
    assetId: string;
    scheduledDate: string;
    type: "external" | "self" | "internal";
    status: "pending" | "expired" | "in_progress" | "cancelled" | "passed" | "failed";
    insertedAt: string;
    updatedAt: string;
    taskId?: string | undefined;
    completedDate?: string | undefined;
    performedBy?: string | undefined;
    externalProviderId?: string | undefined;
    durationHours?: number | undefined;
    calibrationResult?: "conditional" | "pass" | "fail" | undefined;
    beforeCalibrationValues?: unknown;
    afterCalibrationValues?: unknown;
    deviationValues?: unknown;
    adjustmentsMade?: string | undefined;
    notes?: string | undefined;
    failureReason?: string | undefined;
    certificateNumber?: string | undefined;
    certificateIssueDate?: string | undefined;
    certificateExpiryDate?: string | undefined;
    certificateDocumentId?: string | undefined;
    accreditationBody?: string | undefined;
    nextRecommendedDate?: string | undefined;
    recommendedActions?: string | undefined;
    cost?: number | undefined;
    currency?: string | undefined;
    imageIds?: string[] | undefined;
    documentIds?: string[] | undefined;
}, {}>;
export declare const createCalibrationPlanRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    assetId: string;
    name: string;
    type: "external" | "self" | "internal";
    frequency: "custom" | "monthly" | "quarterly" | "semi_annually" | "annually" | "biannually";
    startDate: string;
    description?: string | undefined;
    endDate?: string | undefined;
    intervalDays?: number | undefined;
    intervalMonths?: number | undefined;
    calibrationStandard?: string | undefined;
    referenceStandard?: string | undefined;
    acceptanceCriteria?: string | undefined;
    toleranceRange?: string | undefined;
    estimatedDurationHours?: number | undefined;
    defaultAssigneeId?: string | undefined;
    externalProviderId?: string | undefined;
    calibrationLocation?: string | undefined;
    priority?: "low" | "medium" | "high" | "critical" | undefined;
    instructions?: string | undefined;
    checklistItems?: unknown[] | undefined;
    requiredEquipment?: string[] | undefined;
    environmentalConditions?: string | undefined;
    requiresCertificate?: boolean | undefined;
    certificateValidityDays?: number | undefined;
    regulatoryRequirements?: string[] | undefined;
    complianceStandards?: string[] | undefined;
    autoCreateTask?: boolean | undefined;
    taskCreationLeadDays?: number | undefined;
    alertBeforeDays?: number | undefined;
    alertRecipients?: string[] | undefined;
    imageIds?: string[] | undefined;
    documentIds?: string[] | undefined;
    procedureDocumentId?: string | undefined;
}, {}>;
export declare const updateCalibrationPlanRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    name?: string | undefined;
    description?: string | undefined;
    type?: "external" | "self" | "internal" | undefined;
    frequency?: "custom" | "monthly" | "quarterly" | "semi_annually" | "annually" | "biannually" | undefined;
    status?: "active" | "inactive" | "draft" | undefined;
    startDate?: string | undefined;
    endDate?: string | undefined;
    nextCalibrationDate?: string | undefined;
    intervalDays?: number | undefined;
    intervalMonths?: number | undefined;
    calibrationStandard?: string | undefined;
    referenceStandard?: string | undefined;
    acceptanceCriteria?: string | undefined;
    toleranceRange?: string | undefined;
    estimatedDurationHours?: number | undefined;
    defaultAssigneeId?: string | undefined;
    externalProviderId?: string | undefined;
    calibrationLocation?: string | undefined;
    priority?: "low" | "medium" | "high" | "critical" | undefined;
    instructions?: string | undefined;
    checklistItems?: unknown[] | undefined;
    requiredEquipment?: string[] | undefined;
    environmentalConditions?: string | undefined;
    requiresCertificate?: boolean | undefined;
    certificateValidityDays?: number | undefined;
    regulatoryRequirements?: string[] | undefined;
    complianceStandards?: string[] | undefined;
    autoCreateTask?: boolean | undefined;
    taskCreationLeadDays?: number | undefined;
    alertBeforeDays?: number | undefined;
    alertRecipients?: string[] | undefined;
    imageIds?: string[] | undefined;
    documentIds?: string[] | undefined;
    procedureDocumentId?: string | undefined;
}, {}>;
export declare const createCalibrationRecordRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    calibrationPlanId: string;
    scheduledDate: string;
    type: "external" | "self" | "internal";
    externalProviderId?: string | undefined;
    notes?: string | undefined;
}, {}>;
export declare const updateCalibrationRecordRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    status?: "pending" | "expired" | "in_progress" | "cancelled" | "passed" | "failed" | undefined;
    completedDate?: string | undefined;
    performedBy?: string | undefined;
    externalProviderId?: string | undefined;
    durationHours?: number | undefined;
    calibrationResult?: "conditional" | "pass" | "fail" | undefined;
    beforeCalibrationValues?: unknown;
    afterCalibrationValues?: unknown;
    deviationValues?: unknown;
    adjustmentsMade?: string | undefined;
    notes?: string | undefined;
    failureReason?: string | undefined;
    certificateNumber?: string | undefined;
    certificateIssueDate?: string | undefined;
    certificateExpiryDate?: string | undefined;
    certificateDocumentId?: string | undefined;
    accreditationBody?: string | undefined;
    nextRecommendedDate?: string | undefined;
    recommendedActions?: string | undefined;
    cost?: number | undefined;
    currency?: string | undefined;
    imageIds?: string[] | undefined;
    documentIds?: string[] | undefined;
}, {}>;
export declare const calibrationPlanQuery: import("arktype/internal/methods/object.ts").ObjectType<{
    assetId?: string | undefined;
    type?: "external" | "self" | "internal" | undefined;
    frequency?: "custom" | "monthly" | "quarterly" | "semi_annually" | "annually" | "biannually" | undefined;
    status?: "active" | "inactive" | "draft" | undefined;
    defaultAssigneeId?: string | undefined;
    externalProviderId?: string | undefined;
    search?: string | undefined;
}, {}>;
export declare const calibrationRecordQuery: import("arktype/internal/methods/object.ts").ObjectType<{
    calibrationPlanId?: string | undefined;
    assetId?: string | undefined;
    taskId?: string | undefined;
    type?: "external" | "self" | "internal" | undefined;
    status?: "pending" | "expired" | "in_progress" | "cancelled" | "passed" | "failed" | undefined;
    performedBy?: string | undefined;
    externalProviderId?: string | undefined;
    calibrationResult?: "conditional" | "pass" | "fail" | undefined;
    scheduledAfter?: string | undefined;
    scheduledBefore?: string | undefined;
    certificateExpiresBefore?: string | undefined;
}, {}>;
export type CalibrationType = typeof calibrationType.infer;
export type CalibrationStatus = typeof calibrationStatus.infer;
export type CalibrationFrequency = typeof calibrationFrequency.infer;
export type CalibrationPlanStatus = typeof calibrationPlanStatus.infer;
export type CalibrationPlan = typeof calibrationPlan.infer;
export type CalibrationRecord = typeof calibrationRecord.infer;
export type CreateCalibrationPlanRequest = typeof createCalibrationPlanRequest.infer;
export type UpdateCalibrationPlanRequest = typeof updateCalibrationPlanRequest.infer;
export type CreateCalibrationRecordRequest = typeof createCalibrationRecordRequest.infer;
export type UpdateCalibrationRecordRequest = typeof updateCalibrationRecordRequest.infer;
export type CalibrationPlanQuery = typeof calibrationPlanQuery.infer;
export type CalibrationRecordQuery = typeof calibrationRecordQuery.infer;
//# sourceMappingURL=calibration-plan.d.ts.map