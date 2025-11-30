import { type } from "arktype";

// Meter type enum
export const meterTypeEnum = type(
  "'hours' | 'kilometers' | 'miles' | 'cycles' | 'units' | 'liters' | 'gallons' | 'kwh' | 'custom'"
);
export type MeterType = typeof meterTypeEnum.infer;

// Reading source enum
export const readingSourceEnum = type(
  "'manual' | 'iot' | 'import' | 'system'"
);
export type ReadingSource = typeof readingSourceEnum.infer;

// Trigger type enum
export const triggerTypeEnum = type("'time' | 'meter' | 'both'");
export type TriggerType = typeof triggerTypeEnum.infer;

// Trigger mode enum
export const triggerModeEnum = type("'first' | 'all'");
export type TriggerMode = typeof triggerModeEnum.infer;

// Asset Meter schema
export const assetMeter = type({
  id: "string",
  tenantId: "string",
  assetId: "string",
  meterType: meterTypeEnum,
  name: "string",
  unit: "string",
  "description?": "string | null",
  currentReading: "string",
  "lastReadingDate?": "string | null",
  initialReading: "string",
  "installationDate?": "string | null",
  "rolloverValue?": "string | null",
  hasRollover: "boolean",
  isActive: "boolean",
  insertedAt: "string",
  updatedAt: "string",
  "deletedAt?": "string | null",
});
export type AssetMeter = typeof assetMeter.infer;

// Create asset meter request
export const createAssetMeterRequest = type({
  assetId: "string",
  meterType: meterTypeEnum,
  name: "string",
  unit: "string",
  "description?": "string",
  "initialReading?": "number",
  "installationDate?": "string",
  "rolloverValue?": "number",
  "hasRollover?": "boolean",
});
export type CreateAssetMeterRequest = typeof createAssetMeterRequest.infer;

// Update asset meter request
export const updateAssetMeterRequest = type({
  "name?": "string",
  "unit?": "string",
  "description?": "string | null",
  "rolloverValue?": "number | null",
  "hasRollover?": "boolean",
  "isActive?": "boolean",
});
export type UpdateAssetMeterRequest = typeof updateAssetMeterRequest.infer;

// Asset Meter Reading schema
export const assetMeterReading = type({
  id: "string",
  tenantId: "string",
  meterId: "string",
  assetId: "string",
  reading: "string",
  readingDate: "string",
  readingSource: readingSourceEnum,
  "previousReading?": "string | null",
  "usageSinceLastReading?": "string | null",
  isRollover: "boolean",
  "rolloverCount?": "string | null",
  "recordedById?": "string | null",
  "notes?": "string | null",
  "externalId?": "string | null",
  "rawValue?": "string | null",
  insertedAt: "string",
  updatedAt: "string",
  "deletedAt?": "string | null",
});
export type AssetMeterReading = typeof assetMeterReading.infer;

// Create meter reading request
export const createMeterReadingRequest = type({
  meterId: "string",
  reading: "number",
  "readingDate?": "string",
  "readingSource?": readingSourceEnum,
  "notes?": "string",
  "externalId?": "string",
  "rawValue?": "string",
});
export type CreateMeterReadingRequest = typeof createMeterReadingRequest.infer;

// Maintenance Plan Trigger schema
export const maintenancePlanTrigger = type({
  id: "string",
  tenantId: "string",
  maintenancePlanId: "string",
  triggerType: triggerTypeEnum,
  triggerMode: triggerModeEnum,
  "name?": "string | null",
  "description?": "string | null",
  "intervalDays?": "string | null",
  "intervalMonths?": "string | null",
  "meterId?": "string | null",
  "meterInterval?": "string | null",
  "meterThreshold?": "string | null",
  "lastTriggeredAt?": "string | null",
  "lastTriggeredReading?": "string | null",
  "nextDueDate?": "string | null",
  "nextDueReading?": "string | null",
  isActive: "boolean",
  "priority?": "string | null",
  insertedAt: "string",
  updatedAt: "string",
  "deletedAt?": "string | null",
});
export type MaintenancePlanTrigger = typeof maintenancePlanTrigger.infer;

// Create maintenance plan trigger request
export const createMaintenancePlanTriggerRequest = type({
  maintenancePlanId: "string",
  triggerType: triggerTypeEnum,
  "triggerMode?": triggerModeEnum,
  "name?": "string",
  "description?": "string",
  // Time-based
  "intervalDays?": "number",
  "intervalMonths?": "number",
  // Meter-based
  "meterId?": "string",
  "meterInterval?": "number",
  "meterThreshold?": "number",
  "priority?": "number",
});
export type CreateMaintenancePlanTriggerRequest = typeof createMaintenancePlanTriggerRequest.infer;

// Update maintenance plan trigger request
export const updateMaintenancePlanTriggerRequest = type({
  "triggerType?": triggerTypeEnum,
  "triggerMode?": triggerModeEnum,
  "name?": "string | null",
  "description?": "string | null",
  "intervalDays?": "number | null",
  "intervalMonths?": "number | null",
  "meterId?": "string | null",
  "meterInterval?": "number | null",
  "meterThreshold?": "number | null",
  "isActive?": "boolean",
  "priority?": "number | null",
});
export type UpdateMaintenancePlanTriggerRequest = typeof updateMaintenancePlanTriggerRequest.infer;

// Query types
export const assetMeterQuery = type({
  "assetId?": "string",
  "meterType?": meterTypeEnum,
  "isActive?": "boolean",
});
export type AssetMeterQuery = typeof assetMeterQuery.infer;

export const meterReadingQuery = type({
  "meterId?": "string",
  "assetId?": "string",
  "readingSource?": readingSourceEnum,
  "fromDate?": "string",
  "toDate?": "string",
});
export type MeterReadingQuery = typeof meterReadingQuery.infer;

export const maintenancePlanTriggerQuery = type({
  "maintenancePlanId?": "string",
  "triggerType?": triggerTypeEnum,
  "meterId?": "string",
  "isActive?": "boolean",
});
export type MaintenancePlanTriggerQuery = typeof maintenancePlanTriggerQuery.infer;
