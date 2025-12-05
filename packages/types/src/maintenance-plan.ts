import { type } from "arktype";
import { uuid, timestamp } from "./common";

/**
 * Maintenance Plan (Bakım Planı)
 *
 * Sadece PREVENTIVE (önleyici) bakım için plan oluşturulabilir.
 * Diğer bakım tipleri farklı kaynaklardan tetiklenir:
 *
 * - preventive: Periyodik, zamanlanmış bakım → Plan ile yönetilir
 * - corrective: Arıza sonrası reaktif bakım → Issue'dan oluşur, plan olmaz
 * - predictive: AI/ML ile öngörülü bakım → Sistem tarafından tetiklenir (gelecek)
 * - condition_based: Sensör/IoT bazlı bakım → Otomatik tetiklenir (gelecek)
 *
 * Özellikler:
 * - Periyodik bakım planlaması (zaman veya kullanım bazlı)
 * - Checklist ve prosedür tanımları
 * - Otomatik task oluşturma
 * - Bakım geçmişi takibi
 * - Malzeme ve yedek parça listesi
 */

// Tüm bakım tipleri (record için)
export const maintenanceType = type(
  "'preventive' | 'predictive' | 'corrective' | 'condition_based'"
);

// Plan için sadece preventive (planlanabilir bakım)
export const maintenancePlanType = type("'preventive'");

// Bakım kaydının kaynağı
export const maintenanceRecordSource = type(
  "'plan' | 'issue' | 'prediction' | 'condition' | 'manual'"
);

export const maintenanceFrequency = type(
  "'daily' | 'weekly' | 'biweekly' | 'monthly' | 'quarterly' | 'semi_annually' | 'annually' | 'custom'"
);

export const maintenancePlanStatus = type("'active' | 'inactive' | 'draft'");

export const maintenancePlan = type({
  id: uuid,
  tenantId: uuid,
  assetId: uuid,
  name: "string >= 1",
  "description?": "string",
  type: maintenancePlanType, // Sadece 'preventive' - plan sadece önleyici bakım için
  frequency: maintenanceFrequency,
  status: maintenancePlanStatus,

  // Schedule (Planlama)
  "startDate": timestamp,
  "endDate?": timestamp,
  "nextScheduledDate?": timestamp,
  "lastMaintenanceDate?": timestamp,

  // Frequency Details (Periyot Detayları)
  "intervalDays?": "number", // custom frequency için
  "intervalHours?": "number", // kullanım saati bazlı (operating hours)
  "intervalCycles?": "number", // çalışma döngüsü bazlı

  // Execution (Uygulama)
  "estimatedDurationHours?": "number",
  "assignedTeamId?": uuid, // department id
  "defaultAssigneeId?": uuid, // varsayılan atanan kişi
  "priority?": "'critical' | 'high' | 'medium' | 'low'",

  // Instructions (Talimatlar)
  "instructions?": "string",
  "checklistItems?": "unknown[]", // bakım checklist
  "requiredSkills?": "string[]",
  "safetyPrecautions?": "string",

  // Materials & Parts (Malzemeler & Parçalar)
  "requiredMaterials?": "unknown[]", // { name, quantity, unit }
  "spareParts?": "unknown[]", // { partId, quantity }

  // Auto Task Creation (Otomatik Görev Oluşturma)
  "autoCreateTask?": "boolean",
  "taskCreationLeadDays?": "number", // kaç gün önce task oluşturulsun

  // Metrics (Metrikler)
  "totalMaintenanceCount?": "number >= 0",
  "completedMaintenanceCount?": "number >= 0",
  "missedMaintenanceCount?": "number >= 0",
  "averageCompletionTime?": "number",

  // Documents
  "imageIds?": "string[]",
  "documentIds?": "string[]",
  "procedureDocumentId?": "string",

  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const maintenanceRecord = type({
  id: uuid,
  tenantId: uuid,
  assetId: uuid,

  // Bakım tipi ve kaynağı
  type: maintenanceType, // 'preventive' | 'corrective' | 'predictive' | 'condition_based'
  source: maintenanceRecordSource, // Kaydın nereden oluştuğu

  // İlişkili kayıtlar (source'a göre biri dolu olur)
  "maintenancePlanId?": uuid, // source: 'plan' ise
  "issueId?": uuid, // source: 'issue' ise (corrective bakım)
  "predictionId?": uuid, // source: 'prediction' ise (gelecek - AI/ML)
  "conditionAlertId?": uuid, // source: 'condition' ise (gelecek - IoT)
  "taskId?": uuid, // ilişkili task

  scheduledDate: timestamp,
  "completedDate?": timestamp,
  "performedBy?": uuid, // employee id
  "durationHours?": "number",
  status: "'scheduled' | 'in_progress' | 'completed' | 'skipped' | 'cancelled'",
  "notes?": "string",
  "issuesFound?": "string",
  "partsReplaced?": "unknown[]",
  "materialsUsed?": "unknown[]",
  "nextRecommendedDate?": timestamp,
  "imageIds?": "string[]",
  "documentIds?": "string[]",
  insertedAt: timestamp,
  updatedAt: timestamp,
});

export const createMaintenancePlanRequest = type({
  assetId: uuid,
  name: "string >= 1",
  "description?": "string",
  "type?": maintenancePlanType, // Opsiyonel, default 'preventive' - sadece önleyici bakım planlanabilir
  frequency: maintenanceFrequency,
  startDate: timestamp,
  "endDate?": timestamp,
  "intervalDays?": "number",
  "intervalHours?": "number",
  "intervalCycles?": "number",
  "estimatedDurationHours?": "number",
  "assignedTeamId?": uuid,
  "defaultAssigneeId?": uuid,
  "priority?": "'critical' | 'high' | 'medium' | 'low'",
  "instructions?": "string",
  "checklistItems?": "unknown[]",
  "requiredSkills?": "string[]",
  "safetyPrecautions?": "string",
  "requiredMaterials?": "unknown[]",
  "spareParts?": "unknown[]",
  "autoCreateTask?": "boolean",
  "taskCreationLeadDays?": "number",
  "imageIds?": "string[]",
  "documentIds?": "string[]",
  "procedureDocumentId?": "string",
});

export const updateMaintenancePlanRequest = type({
  "name?": "string >= 1",
  "description?": "string",
  // type güncellenemez - plan her zaman 'preventive' kalır
  "frequency?": maintenanceFrequency,
  "status?": maintenancePlanStatus,
  "startDate?": timestamp,
  "endDate?": timestamp,
  "nextScheduledDate?": timestamp,
  "intervalDays?": "number",
  "intervalHours?": "number",
  "intervalCycles?": "number",
  "estimatedDurationHours?": "number",
  "assignedTeamId?": uuid,
  "defaultAssigneeId?": uuid,
  "priority?": "'critical' | 'high' | 'medium' | 'low'",
  "instructions?": "string",
  "checklistItems?": "unknown[]",
  "requiredSkills?": "string[]",
  "safetyPrecautions?": "string",
  "requiredMaterials?": "unknown[]",
  "spareParts?": "unknown[]",
  "autoCreateTask?": "boolean",
  "taskCreationLeadDays?": "number",
  "imageIds?": "string[]",
  "documentIds?": "string[]",
  "procedureDocumentId?": "string",
});

// Preventive bakım kaydı - Plan'dan oluşturulur
export const createPreventiveMaintenanceRecordRequest = type({
  maintenancePlanId: uuid,
  scheduledDate: timestamp,
  "notes?": "string",
});

// Corrective bakım kaydı - Issue'dan oluşturulur (arıza sonrası)
export const createCorrectiveMaintenanceRecordRequest = type({
  assetId: uuid,
  issueId: uuid,
  "scheduledDate?": timestamp, // opsiyonel, hemen başlanabilir
  "notes?": "string",
  "priority?": "'critical' | 'high' | 'medium' | 'low'",
});

// Manuel bakım kaydı - Doğrudan oluşturulur (genel amaçlı)
export const createManualMaintenanceRecordRequest = type({
  assetId: uuid,
  type: maintenanceType,
  scheduledDate: timestamp,
  "notes?": "string",
  "priority?": "'critical' | 'high' | 'medium' | 'low'",
});

// Birleşik request - source'a göre farklı alanlar
export const createMaintenanceRecordRequest = type({
  assetId: uuid,
  type: maintenanceType,
  source: maintenanceRecordSource,
  "maintenancePlanId?": uuid, // source: 'plan'
  "issueId?": uuid, // source: 'issue'
  "scheduledDate?": timestamp,
  "notes?": "string",
  "priority?": "'critical' | 'high' | 'medium' | 'low'",
});

export const updateMaintenanceRecordRequest = type({
  "status?": "'scheduled' | 'in_progress' | 'completed' | 'skipped' | 'cancelled'",
  "completedDate?": timestamp,
  "performedBy?": uuid,
  "durationHours?": "number",
  "notes?": "string",
  "issuesFound?": "string",
  "partsReplaced?": "unknown[]",
  "materialsUsed?": "unknown[]",
  "nextRecommendedDate?": timestamp,
  "imageIds?": "string[]",
  "documentIds?": "string[]",
});

export const maintenancePlanQuery = type({
  "assetId?": uuid,
  "type?": maintenanceType,
  "frequency?": maintenanceFrequency,
  "status?": maintenancePlanStatus,
  "assignedTeamId?": uuid,
  "defaultAssigneeId?": uuid,
  "search?": "string",
});

export const maintenanceRecordQuery = type({
  "maintenancePlanId?": uuid,
  "assetId?": uuid,
  "taskId?": uuid,
  "issueId?": uuid,
  "performedBy?": uuid,
  "type?": maintenanceType,
  "source?": maintenanceRecordSource,
  "status?": "'scheduled' | 'in_progress' | 'completed' | 'skipped' | 'cancelled'",
  "scheduledAfter?": timestamp,
  "scheduledBefore?": timestamp,
});

// Type exports
export type MaintenanceType = typeof maintenanceType.infer;
export type MaintenancePlanType = typeof maintenancePlanType.infer;
export type MaintenanceRecordSource = typeof maintenanceRecordSource.infer;
export type MaintenanceFrequency = typeof maintenanceFrequency.infer;
export type MaintenancePlanStatus = typeof maintenancePlanStatus.infer;
export type MaintenancePlan = typeof maintenancePlan.infer;
export type MaintenanceRecord = typeof maintenanceRecord.infer;
export type CreateMaintenancePlanRequest =
  typeof createMaintenancePlanRequest.infer;
export type UpdateMaintenancePlanRequest =
  typeof updateMaintenancePlanRequest.infer;
export type CreateMaintenanceRecordRequest =
  typeof createMaintenanceRecordRequest.infer;
export type CreatePreventiveMaintenanceRecordRequest =
  typeof createPreventiveMaintenanceRecordRequest.infer;
export type CreateCorrectiveMaintenanceRecordRequest =
  typeof createCorrectiveMaintenanceRecordRequest.infer;
export type CreateManualMaintenanceRecordRequest =
  typeof createManualMaintenanceRecordRequest.infer;
export type UpdateMaintenanceRecordRequest =
  typeof updateMaintenanceRecordRequest.infer;
export type MaintenancePlanQuery = typeof maintenancePlanQuery.infer;
export type MaintenanceRecordQuery = typeof maintenanceRecordQuery.infer;
