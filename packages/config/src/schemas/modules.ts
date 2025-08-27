import { type } from "arktype";

export const ModuleDefinitionSchema = type({
  "id": "string >= 1",
  "name": "string >= 1",
  "version": "string >= 1",
  "description": "string >= 1",
  "category": "'core' | 'business' | 'advanced' | 'integration'",
  "dependencies": "string[]",
  "conflicts?": "string[]",
  "enabled": "boolean",
  "autoStart": "boolean",
  "priority": "0 <= number <= 100",
  "config?": "object",
});

export const ModuleManifestSchema = type({
  "modules": ModuleDefinitionSchema.array(),
  "loadOrder": "string[]",
  "globalConfig?": "object",
});

export const ModuleStateSchema = type({
  "id": "string >= 1",
  "enabled": "boolean",
  "loaded": "boolean",
  "initialized": "boolean",
  "started": "boolean",
  "error?": "string",
  "lastUpdated": "Date",
});

export const ModuleRegistrySchema = type({
  "states": ModuleStateSchema.array(),
  "loadingOrder": "string[]",
  "dependencyGraph": "object",
});

export const InventoryModuleConfigSchema = type({
  "trackLots": "boolean",
  "requireSerialNumbers": "boolean",
  "allowNegativeStock": "boolean",
  "defaultUnitOfMeasure": "string >= 1",
  "stockValuationMethod": "'FIFO' | 'LIFO' | 'weighted_average'",
  "enableBarcodeScanning": "boolean",
});

export const ManufacturingModuleConfigSchema = type({
  "enableRouting": "boolean",
  "allowBackflush": "boolean",
  "requireWorkCenterCapacity": "boolean",
  "enableQualityControl": "boolean",
  "defaultLeadTimeDays": "1 <= number <= 365",
  "enableBomVersioning": "boolean",
});

export const SalesModuleConfigSchema = type({
  "requireCustomerApproval": "boolean",
  "allowPartialShipments": "boolean",
  "defaultPaymentTerms": "string >= 1",
  "enablePricing": "boolean",
  "requireSalesOrderApproval": "boolean",
  "enableDiscounts": "boolean",
});

export const PurchaseModuleConfigSchema = type({
  "requireApprovalForOrders": "boolean",
  "enableThreeWayMatching": "boolean",
  "defaultDeliveryDays": "1 <= number <= 365",
  "allowPartialReceipts": "boolean",
  "requireInspection": "boolean",
  "enableVendorPortal": "boolean",
});

export const EmployeeModuleConfigSchema = type({
  "enableTimeTracking": "boolean",
  "requireManagerApproval": "boolean",
  "enableSelfService": "boolean",
  "enableBiometrics": "boolean",
  "defaultWorkingHours": "1 <= number <= 24",
  "enableOvertimeTracking": "boolean",
});

export const ModuleConfigsSchema = type({
  "inventory?": InventoryModuleConfigSchema,
  "manufacturing?": ManufacturingModuleConfigSchema,
  "sales?": SalesModuleConfigSchema,
  "purchase?": PurchaseModuleConfigSchema,
  "employee?": EmployeeModuleConfigSchema,
});

export const ModulesConfigSchema = type({
  "manifest": ModuleManifestSchema,
  "registry": ModuleRegistrySchema,
  "moduleConfigs": ModuleConfigsSchema,
  "enableHotReloading": "boolean",
  "developmentMode": "boolean",
});

export type ModuleDefinition = typeof ModuleDefinitionSchema.infer;
export type ModuleManifest = typeof ModuleManifestSchema.infer;
export type ModuleState = typeof ModuleStateSchema.infer;
export type ModuleRegistry = typeof ModuleRegistrySchema.infer;
export type InventoryModuleConfig = typeof InventoryModuleConfigSchema.infer;
export type ManufacturingModuleConfig = typeof ManufacturingModuleConfigSchema.infer;
export type SalesModuleConfig = typeof SalesModuleConfigSchema.infer;
export type PurchaseModuleConfig = typeof PurchaseModuleConfigSchema.infer;
export type EmployeeModuleConfig = typeof EmployeeModuleConfigSchema.infer;
export type ModuleConfigs = typeof ModuleConfigsSchema.infer;
export type ModulesConfig = typeof ModulesConfigSchema.infer;