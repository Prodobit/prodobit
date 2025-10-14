import { type } from "arktype";

// Internal schemas - not exported to avoid arktype internal types in d.ts
const moduleDefinitionSchema = type({
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

const moduleManifestSchema = type({
  "modules": moduleDefinitionSchema.array(),
  "loadOrder": "string[]",
  "globalConfig?": "object",
});

const moduleStateSchema = type({
  "id": "string >= 1",
  "enabled": "boolean",
  "loaded": "boolean",
  "initialized": "boolean",
  "started": "boolean",
  "error?": "string",
  "lastUpdated": "Date",
});

const moduleRegistrySchema = type({
  "states": moduleStateSchema.array(),
  "loadingOrder": "string[]",
  "dependencyGraph": "object",
});

const inventoryModuleConfigSchema = type({
  "trackLots": "boolean",
  "requireSerialNumbers": "boolean",
  "allowNegativeStock": "boolean",
  "defaultUnitOfMeasure": "string >= 1",
  "stockValuationMethod": "'FIFO' | 'LIFO' | 'weighted_average'",
  "enableBarcodeScanning": "boolean",
});

const manufacturingModuleConfigSchema = type({
  "enableRouting": "boolean",
  "allowBackflush": "boolean",
  "requireWorkCenterCapacity": "boolean",
  "enableQualityControl": "boolean",
  "defaultLeadTimeDays": "1 <= number <= 365",
  "enableBomVersioning": "boolean",
});

const salesModuleConfigSchema = type({
  "requireCustomerApproval": "boolean",
  "allowPartialShipments": "boolean",
  "defaultPaymentTerms": "string >= 1",
  "enablePricing": "boolean",
  "requireSalesOrderApproval": "boolean",
  "enableDiscounts": "boolean",
});

const purchaseModuleConfigSchema = type({
  "requireApprovalForOrders": "boolean",
  "enableThreeWayMatching": "boolean",
  "defaultDeliveryDays": "1 <= number <= 365",
  "allowPartialReceipts": "boolean",
  "requireInspection": "boolean",
  "enableVendorPortal": "boolean",
});

const employeeModuleConfigSchema = type({
  "enableTimeTracking": "boolean",
  "requireManagerApproval": "boolean",
  "enableSelfService": "boolean",
  "enableBiometrics": "boolean",
  "defaultWorkingHours": "1 <= number <= 24",
  "enableOvertimeTracking": "boolean",
});

const brandModuleConfigSchema = type({
  "requireApproval": "boolean",
  "enableAutoCode": "boolean",
  "allowDuplicateNames": "boolean",
});

const customerModuleConfigSchema = type({
  "requireApproval": "boolean",
  "enableCreditLimit": "boolean",
  "defaultPaymentTerms": "string >= 1",
});

const supplierModuleConfigSchema = type({
  "requireApproval": "boolean",
  "enableRating": "boolean",
  "defaultPaymentTerms": "string >= 1",
});

const moduleConfigsSchema = type({
  "inventory?": inventoryModuleConfigSchema,
  "manufacturing?": manufacturingModuleConfigSchema,
  "sales?": salesModuleConfigSchema,
  "purchase?": purchaseModuleConfigSchema,
  "employee?": employeeModuleConfigSchema,
  "brand?": brandModuleConfigSchema,
  "customer?": customerModuleConfigSchema,
  "supplier?": supplierModuleConfigSchema,
});

const modulesConfigSchema = type({
  "manifest": moduleManifestSchema,
  "registry": moduleRegistrySchema,
  "moduleConfigs": moduleConfigsSchema,
  "enableHotReloading": "boolean",
  "developmentMode": "boolean",
});

// Export types only
export type ModuleDefinition = typeof moduleDefinitionSchema.infer;
export type ModuleManifest = typeof moduleManifestSchema.infer;
export type ModuleState = typeof moduleStateSchema.infer;
export type ModuleRegistry = typeof moduleRegistrySchema.infer;
export type InventoryModuleConfig = typeof inventoryModuleConfigSchema.infer;
export type ManufacturingModuleConfig = typeof manufacturingModuleConfigSchema.infer;
export type SalesModuleConfig = typeof salesModuleConfigSchema.infer;
export type PurchaseModuleConfig = typeof purchaseModuleConfigSchema.infer;
export type EmployeeModuleConfig = typeof employeeModuleConfigSchema.infer;
export type BrandModuleConfig = typeof brandModuleConfigSchema.infer;
export type CustomerModuleConfig = typeof customerModuleConfigSchema.infer;
export type SupplierModuleConfig = typeof supplierModuleConfigSchema.infer;
export type ModuleConfigs = typeof moduleConfigsSchema.infer;
export type ModulesConfig = typeof modulesConfigSchema.infer;

// Export validation functions for runtime validation
export function validateModuleDefinition(config: unknown): ModuleDefinition | Error {
  const result = moduleDefinitionSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as ModuleDefinition;
}

export function validateModuleManifest(config: unknown): ModuleManifest | Error {
  const result = moduleManifestSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as ModuleManifest;
}

export function validateModuleState(config: unknown): ModuleState | Error {
  const result = moduleStateSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as ModuleState;
}

export function validateModuleRegistry(config: unknown): ModuleRegistry | Error {
  const result = moduleRegistrySchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as ModuleRegistry;
}

export function validateInventoryModuleConfig(config: unknown): InventoryModuleConfig | Error {
  const result = inventoryModuleConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as InventoryModuleConfig;
}

export function validateManufacturingModuleConfig(config: unknown): ManufacturingModuleConfig | Error {
  const result = manufacturingModuleConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as ManufacturingModuleConfig;
}

export function validateSalesModuleConfig(config: unknown): SalesModuleConfig | Error {
  const result = salesModuleConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as SalesModuleConfig;
}

export function validatePurchaseModuleConfig(config: unknown): PurchaseModuleConfig | Error {
  const result = purchaseModuleConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as PurchaseModuleConfig;
}

export function validateEmployeeModuleConfig(config: unknown): EmployeeModuleConfig | Error {
  const result = employeeModuleConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as EmployeeModuleConfig;
}

export function validateBrandModuleConfig(config: unknown): BrandModuleConfig | Error {
  const result = brandModuleConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as BrandModuleConfig;
}

export function validateCustomerModuleConfig(config: unknown): CustomerModuleConfig | Error {
  const result = customerModuleConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as CustomerModuleConfig;
}

export function validateSupplierModuleConfig(config: unknown): SupplierModuleConfig | Error {
  const result = supplierModuleConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as SupplierModuleConfig;
}

export function validateModuleConfigs(config: unknown): ModuleConfigs | Error {
  const result = moduleConfigsSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as ModuleConfigs;
}

export function validateModulesConfig(config: unknown): ModulesConfig | Error {
  const result = modulesConfigSchema(config);
  return result.constructor.name === 'ArkErrors' ? new Error(result.toString()) : result as ModulesConfig;
}

// Schemas kept internal - accessed via validation functions