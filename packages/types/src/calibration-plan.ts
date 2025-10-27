import { type } from "arktype";
import { uuid, timestamp } from "./common";

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
export const calibrationType = type("'internal' | 'external' | 'self'");

export const calibrationStatus = type(
  "'pending' | 'in_progress' | 'passed' | 'failed' | 'expired' | 'cancelled'"
);

export const calibrationFrequency = type(
  "'monthly' | 'quarterly' | 'semi_annually' | 'annually' | 'biannually' | 'custom'"
);

export const calibrationPlanStatus = type("'active' | 'inactive' | 'draft'");

export const calibrationPlan = type({
  id: uuid,
  tenantId: uuid,
  assetId: uuid,
  name: "string >= 1",
  "description?": "string",
  type: calibrationType,
  frequency: calibrationFrequency,
  status: calibrationPlanStatus,

  // Schedule (Planlama)
  "startDate": timestamp,
  "endDate?": timestamp,
  "nextCalibrationDate?": timestamp,
  "lastCalibrationDate?": timestamp,

  // Frequency Details (Periyot Detayları)
  "intervalDays?": "number", // custom frequency için
  "intervalMonths?": "number", // alternatif olarak ay bazlı

  // Standards & References (Standartlar & Referanslar)
  "calibrationStandard?": "string", // ISO 17025, ISO 9001, etc.
  "referenceStandard?": "string",
  "acceptanceCriteria?": "string",
  "toleranceRange?": "string", // ±0.1%, etc.

  // Execution (Uygulama)
  "estimatedDurationHours?": "number",
  "defaultAssigneeId?": uuid, // internal ise kim yapacak
  "externalProviderId?": uuid, // external ise party/supplier id
  "calibrationLocation?": "string",
  "priority?": "'critical' | 'high' | 'medium' | 'low'",

  // Instructions (Talimatlar)
  "instructions?": "string",
  "checklistItems?": "unknown[]",
  "requiredEquipment?": "string[]", // kalibrasyon için gerekli ekipmanlar
  "environmentalConditions?": "string", // sıcaklık, nem vb. şartlar

  // Certificate & Compliance (Sertifika & Uygunluk)
  "requiresCertificate?": "boolean",
  "certificateValidityDays?": "number",
  "regulatoryRequirements?": "string[]",
  "complianceStandards?": "string[]",

  // Auto Task Creation (Otomatik Görev Oluşturma)
  "autoCreateTask?": "boolean",
  "taskCreationLeadDays?": "number",

  // Alerts (Uyarılar)
  "alertBeforeDays?": "number", // kaç gün önceden uyarı
  "alertRecipients?": "string[]", // email veya user ids

  // Metrics (Metrikler)
  "totalCalibrationCount?": "number >= 0",
  "passedCalibrationCount?": "number >= 0",
  "failedCalibrationCount?": "number >= 0",
  "averageCompletionTime?": "number",

  // Documents
  "imageIds?": "string[]",
  "documentIds?": "string[]",
  "procedureDocumentId?": "string",

  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const calibrationRecord = type({
  id: uuid,
  tenantId: uuid,
  calibrationPlanId: uuid,
  assetId: uuid,
  "taskId?": uuid, // ilişkili task
  scheduledDate: timestamp,
  "completedDate?": timestamp,
  "performedBy?": uuid, // employee id (internal)
  "externalProviderId?": uuid, // supplier id (external)
  type: calibrationType,
  status: calibrationStatus,

  // Results (Sonuçlar)
  "durationHours?": "number",
  "calibrationResult?": "'pass' | 'fail' | 'conditional'",
  "beforeCalibrationValues?": "unknown", // JSON object
  "afterCalibrationValues?": "unknown", // JSON object
  "deviationValues?": "unknown", // sapma değerleri
  "adjustmentsMade?": "string",
  "notes?": "string",
  "failureReason?": "string",

  // Certificate (Sertifika)
  "certificateNumber?": "string",
  "certificateIssueDate?": timestamp,
  "certificateExpiryDate?": timestamp,
  "certificateDocumentId?": "string",
  "accreditationBody?": "string",

  // Next Calibration (Sonraki Kalibrasyon)
  "nextRecommendedDate?": timestamp,
  "recommendedActions?": "string",

  // Cost (Maliyet)
  "cost?": "number",
  "currency?": "string",

  // Documents & Images
  "imageIds?": "string[]",
  "documentIds?": "string[]",

  insertedAt: timestamp,
  updatedAt: timestamp,
});

export const createCalibrationPlanRequest = type({
  assetId: uuid,
  name: "string >= 1",
  "description?": "string",
  type: calibrationType,
  frequency: calibrationFrequency,
  startDate: timestamp,
  "endDate?": timestamp,
  "intervalDays?": "number",
  "intervalMonths?": "number",
  "calibrationStandard?": "string",
  "referenceStandard?": "string",
  "acceptanceCriteria?": "string",
  "toleranceRange?": "string",
  "estimatedDurationHours?": "number",
  "defaultAssigneeId?": uuid,
  "externalProviderId?": uuid,
  "calibrationLocation?": "string",
  "priority?": "'critical' | 'high' | 'medium' | 'low'",
  "instructions?": "string",
  "checklistItems?": "unknown[]",
  "requiredEquipment?": "string[]",
  "environmentalConditions?": "string",
  "requiresCertificate?": "boolean",
  "certificateValidityDays?": "number",
  "regulatoryRequirements?": "string[]",
  "complianceStandards?": "string[]",
  "autoCreateTask?": "boolean",
  "taskCreationLeadDays?": "number",
  "alertBeforeDays?": "number",
  "alertRecipients?": "string[]",
  "imageIds?": "string[]",
  "documentIds?": "string[]",
  "procedureDocumentId?": "string",
});

export const updateCalibrationPlanRequest = type({
  "name?": "string >= 1",
  "description?": "string",
  "type?": calibrationType,
  "frequency?": calibrationFrequency,
  "status?": calibrationPlanStatus,
  "startDate?": timestamp,
  "endDate?": timestamp,
  "nextCalibrationDate?": timestamp,
  "intervalDays?": "number",
  "intervalMonths?": "number",
  "calibrationStandard?": "string",
  "referenceStandard?": "string",
  "acceptanceCriteria?": "string",
  "toleranceRange?": "string",
  "estimatedDurationHours?": "number",
  "defaultAssigneeId?": uuid,
  "externalProviderId?": uuid,
  "calibrationLocation?": "string",
  "priority?": "'critical' | 'high' | 'medium' | 'low'",
  "instructions?": "string",
  "checklistItems?": "unknown[]",
  "requiredEquipment?": "string[]",
  "environmentalConditions?": "string",
  "requiresCertificate?": "boolean",
  "certificateValidityDays?": "number",
  "regulatoryRequirements?": "string[]",
  "complianceStandards?": "string[]",
  "autoCreateTask?": "boolean",
  "taskCreationLeadDays?": "number",
  "alertBeforeDays?": "number",
  "alertRecipients?": "string[]",
  "imageIds?": "string[]",
  "documentIds?": "string[]",
  "procedureDocumentId?": "string",
});

export const createCalibrationRecordRequest = type({
  calibrationPlanId: uuid,
  scheduledDate: timestamp,
  type: calibrationType,
  "externalProviderId?": uuid,
  "notes?": "string",
});

export const updateCalibrationRecordRequest = type({
  "status?": calibrationStatus,
  "completedDate?": timestamp,
  "performedBy?": uuid,
  "externalProviderId?": uuid,
  "durationHours?": "number",
  "calibrationResult?": "'pass' | 'fail' | 'conditional'",
  "beforeCalibrationValues?": "unknown",
  "afterCalibrationValues?": "unknown",
  "deviationValues?": "unknown",
  "adjustmentsMade?": "string",
  "notes?": "string",
  "failureReason?": "string",
  "certificateNumber?": "string",
  "certificateIssueDate?": timestamp,
  "certificateExpiryDate?": timestamp,
  "certificateDocumentId?": "string",
  "accreditationBody?": "string",
  "nextRecommendedDate?": timestamp,
  "recommendedActions?": "string",
  "cost?": "number",
  "currency?": "string",
  "imageIds?": "string[]",
  "documentIds?": "string[]",
});

export const calibrationPlanQuery = type({
  "assetId?": uuid,
  "type?": calibrationType,
  "frequency?": calibrationFrequency,
  "status?": calibrationPlanStatus,
  "defaultAssigneeId?": uuid,
  "externalProviderId?": uuid,
  "search?": "string",
});

export const calibrationRecordQuery = type({
  "calibrationPlanId?": uuid,
  "assetId?": uuid,
  "taskId?": uuid,
  "type?": calibrationType,
  "status?": calibrationStatus,
  "performedBy?": uuid,
  "externalProviderId?": uuid,
  "calibrationResult?": "'pass' | 'fail' | 'conditional'",
  "scheduledAfter?": timestamp,
  "scheduledBefore?": timestamp,
  "certificateExpiresBefore?": timestamp,
});

// Type exports
export type CalibrationType = typeof calibrationType.infer;
export type CalibrationStatus = typeof calibrationStatus.infer;
export type CalibrationFrequency = typeof calibrationFrequency.infer;
export type CalibrationPlanStatus = typeof calibrationPlanStatus.infer;
export type CalibrationPlan = typeof calibrationPlan.infer;
export type CalibrationRecord = typeof calibrationRecord.infer;
export type CreateCalibrationPlanRequest =
  typeof createCalibrationPlanRequest.infer;
export type UpdateCalibrationPlanRequest =
  typeof updateCalibrationPlanRequest.infer;
export type CreateCalibrationRecordRequest =
  typeof createCalibrationRecordRequest.infer;
export type UpdateCalibrationRecordRequest =
  typeof updateCalibrationRecordRequest.infer;
export type CalibrationPlanQuery = typeof calibrationPlanQuery.infer;
export type CalibrationRecordQuery = typeof calibrationRecordQuery.infer;
