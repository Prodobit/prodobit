// Validation Schemas for Common SDK Operations

import { validators } from './validators';

/**
 * Authentication Schemas
 */
export const authSchemas = {
  requestOTP: validators.schema()
    .field('email', validators.requiredEmail())
    .field('tenantId', validators.optionalUuid()),

  verifyOTP: validators.schema()
    .field('email', validators.requiredEmail())
    .field('code', validators.field().required().string().minLength(6).maxLength(6))
    .field('tenantId', validators.optionalUuid()),

  refreshToken: validators.schema()
    .field('refreshToken', validators.requiredString()),
};

/**
 * Tenant Schemas
 */
export const tenantSchemas = {
  create: validators.schema()
    .field('name', validators.field().required().string().minLength(1).maxLength(255))
    .field('subscriptionPlan', validators.field().oneOf(['basic', 'pro', 'enterprise']))
    .field('settings', validators.field().custom(
      (value) => typeof value === 'object' && value !== null,
      'Settings must be an object'
    )),

  update: validators.schema()
    .field('name', validators.field().string().minLength(1).maxLength(255))
    .field('status', validators.field().oneOf(['active', 'inactive', 'suspended', 'deleted']))
    .field('subscriptionPlan', validators.field().oneOf(['basic', 'pro', 'enterprise']))
    .field('settings', validators.field().custom(
      (value) => typeof value === 'object' && value !== null,
      'Settings must be an object'
    )),

  query: validators.schema()
    .field('name', validators.optionalString())
    .field('status', validators.field().oneOf(['active', 'inactive', 'suspended', 'deleted']))
    .field('subscriptionPlan', validators.field().oneOf(['basic', 'pro', 'enterprise']))
    .field('page', validators.field().number().min(1))
    .field('limit', validators.field().number().min(1).max(100))
    .field('orderBy', validators.optionalString())
    .field('orderDirection', validators.field().oneOf(['asc', 'desc'])),
};

/**
 * Party Schemas
 */
export const partySchemas = {
  createPerson: validators.schema()
    .field('firstName', validators.field().required().string().minLength(1).maxLength(100))
    .field('lastName', validators.field().required().string().minLength(1).maxLength(100))
    .field('code', validators.field().string().minLength(1).maxLength(50))
    .field('roles', validators.field().required().array().arrayMinLength(1))
    .field('addresses', validators.optionalArray())
    .field('contacts', validators.optionalArray())
    .field('customerCode', validators.field().string().maxLength(50))
    .field('supplierCode', validators.field().string().maxLength(50))
    .field('employeeCode', validators.field().string().maxLength(50)),

  createOrganization: validators.schema()
    .field('name', validators.field().required().string().minLength(1).maxLength(255))
    .field('code', validators.field().string().minLength(1).maxLength(50))
    .field('roles', validators.field().required().array().arrayMinLength(1))
    .field('addresses', validators.optionalArray())
    .field('contacts', validators.optionalArray())
    .field('customerCode', validators.field().string().maxLength(50))
    .field('supplierCode', validators.field().string().maxLength(50)),

  update: validators.schema()
    .field('firstName', validators.field().string().minLength(1).maxLength(100))
    .field('lastName', validators.field().string().minLength(1).maxLength(100))
    .field('name', validators.field().string().minLength(1).maxLength(255))
    .field('code', validators.field().string().minLength(1).maxLength(50)),

  query: validators.schema()
    .field('partyType', validators.field().oneOf(['person', 'organization']))
    .field('roleType', validators.field().oneOf(['customer', 'supplier', 'employee']))
    .field('page', validators.field().number().min(1))
    .field('limit', validators.field().number().min(1).max(100))
    .field('orderBy', validators.optionalString())
    .field('orderDirection', validators.field().oneOf(['asc', 'desc'])),
};

/**
 * Item Schemas
 */
export const itemSchemas = {
  create: validators.schema()
    .field('name', validators.field().required().string().minLength(1).maxLength(255))
    .field('code', validators.field().string().minLength(1).maxLength(100))
    .field('itemType', validators.field().required().oneOf(['product', 'service', 'raw_material', 'component']))
    .field('categoryId', validators.optionalUuid())
    .field('specificData', validators.field().custom(
      (value) => typeof value === 'object' && value !== null,
      'Specific data must be an object'
    )),

  update: validators.schema()
    .field('name', validators.field().string().minLength(1).maxLength(255))
    .field('code', validators.field().string().minLength(1).maxLength(100))
    .field('categoryId', validators.optionalUuid())
    .field('status', validators.optionalString())
    .field('specificData', validators.field().custom(
      (value) => typeof value === 'object' && value !== null,
      'Specific data must be an object'
    )),

  query: validators.schema()
    .field('itemType', validators.field().oneOf(['product', 'service', 'raw_material', 'component']))
    .field('categoryId', validators.optionalUuid())
    .field('status', validators.optionalString())
    .field('search', validators.optionalString())
    .field('page', validators.field().number().min(1))
    .field('limit', validators.field().number().min(1).max(100))
    .field('orderBy', validators.optionalString())
    .field('orderDirection', validators.field().oneOf(['asc', 'desc'])),
};

/**
 * Location Schemas
 */
export const locationSchemas = {
  create: validators.schema()
    .field('name', validators.field().required().string().minLength(1).maxLength(255))
    .field('code', validators.field().string().minLength(1).maxLength(100))
    .field('locationType', validators.requiredString())
    .field('status', validators.optionalString())
    .field('parentLocationId', validators.optionalUuid()),

  update: validators.schema()
    .field('name', validators.field().string().minLength(1).maxLength(255))
    .field('code', validators.field().string().minLength(1).maxLength(100))
    .field('locationType', validators.optionalString())
    .field('status', validators.optionalString())
    .field('parentLocationId', validators.optionalUuid()),

  query: validators.schema()
    .field('location_type', validators.optionalString())
    .field('status', validators.optionalString())
    .field('parent_location_id', validators.optionalUuid())
    .field('search', validators.optionalString()),
};

/**
 * Asset Schemas
 */
export const assetSchemas = {
  create: validators.schema()
    .field('locationId', validators.requiredUuid())
    .field('name', validators.field().required().string().minLength(1).maxLength(255))
    .field('code', validators.field().string().minLength(1).maxLength(100))
    .field('assetType', validators.requiredString())
    .field('status', validators.optionalString())
    .field('parentAssetId', validators.optionalUuid()),

  update: validators.schema()
    .field('locationId', validators.optionalUuid())
    .field('name', validators.field().string().minLength(1).maxLength(255))
    .field('code', validators.field().string().minLength(1).maxLength(100))
    .field('assetType', validators.optionalString())
    .field('status', validators.optionalString())
    .field('parentAssetId', validators.optionalUuid()),

  query: validators.schema()
    .field('location_id', validators.optionalUuid())
    .field('asset_type', validators.optionalString())
    .field('status', validators.optionalString())
    .field('parent_asset_id', validators.optionalUuid())
    .field('search', validators.optionalString()),
};

/**
 * Stock Schemas
 */
export const stockSchemas = {
  create: validators.schema()
    .field('itemId', validators.requiredUuid())
    .field('lotId', validators.optionalUuid())
    .field('quantity', validators.field().required().string()) // Decimal as string
    .field('locationId', validators.requiredUuid())
    .field('status', validators.field().oneOf(['available', 'reserved', 'quarantined', 'damaged', 'blocked'])),

  update: validators.schema()
    .field('quantity', validators.field().string()) // Decimal as string
    .field('status', validators.field().oneOf(['available', 'reserved', 'quarantined', 'damaged', 'blocked'])),

  createTransaction: validators.schema()
    .field('stockId', validators.requiredUuid())
    .field('lotId', validators.optionalUuid())
    .field('itemId', validators.requiredUuid())
    .field('transactionType', validators.field().required().oneOf(['in', 'out', 'transfer', 'adjustment', 'production', 'consumption']))
    .field('quantity', validators.field().required().string()) // Decimal as string
    .field('sourceLocationId', validators.optionalUuid())
    .field('destinationLocationId', validators.optionalUuid())
    .field('status', validators.field().oneOf(['pending', 'completed', 'cancelled']))
    .field('description', validators.optionalString())
    .field('createdBy', validators.optionalUuid()),
};

/**
 * Lot Schemas
 */
export const lotSchemas = {
  create: validators.schema()
    .field('lotNumber', validators.field().required().string().minLength(1).maxLength(100))
    .field('actualQuantity', validators.field().string()) // Decimal as string
    .field('expectedQuantity', validators.field().string()) // Decimal as string
    .field('parentLotId', validators.optionalUuid())
    .field('locationId', validators.optionalUuid()),

  update: validators.schema()
    .field('lotNumber', validators.field().string().minLength(1).maxLength(100))
    .field('actualQuantity', validators.field().string()) // Decimal as string
    .field('expectedQuantity', validators.field().string()) // Decimal as string
    .field('parentLotId', validators.optionalUuid())
    .field('locationId', validators.optionalUuid()),
};

/**
 * BOM Schemas
 */
export const bomSchemas = {
  create: validators.schema()
    .field('itemId', validators.requiredUuid())
    .field('bomCode', validators.field().required().string().minLength(1).maxLength(100))
    .field('name', validators.field().required().string().minLength(1).maxLength(255))
    .field('description', validators.optionalString())
    .field('status', validators.field().oneOf(['draft', 'active', 'obsolete', 'under_review']))
    .field('version', validators.optionalString())
    .field('productionQuantity', validators.field().string()) // Decimal as string
    .field('productionUnit', validators.optionalString())
    .field('validFrom', validators.optionalString()) // Date as string
    .field('validTo', validators.optionalString()) // Date as string
    .field('isPhantomBom', validators.field().boolean())
    .field('phantomExplosionPolicy', validators.field().oneOf(['immediate', 'one_level', 'full_explosion']))
    .field('manufacturingPolicy', validators.field().oneOf(['assemble_to_stock', 'assemble_to_order', 'phantom']))
    .field('planningPolicy', validators.field().oneOf(['mrp', 'reorder_point', 'phantom'])),

  createComponent: validators.schema()
    .field('bomId', validators.requiredUuid())
    .field('componentItemId', validators.requiredUuid())
    .field('parentComponentId', validators.optionalUuid())
    .field('quantity', validators.field().required().string()) // Decimal as string
    .field('unit', validators.requiredString())
    .field('componentType', validators.field().oneOf(['material', 'assembly', 'phantom']))
    .field('isOptional', validators.field().boolean())
    .field('isCritical', validators.field().boolean())
    .field('phantomPolicy', validators.field().oneOf(['always_explode', 'conditional_explode', 'planning_only']))
    .field('sourcingType', validators.field().oneOf(['make', 'buy', 'phantom', 'configured']))
    .field('explodeInMrp', validators.field().boolean())
    .field('explodeInCosting', validators.field().boolean())
    .field('explodeInPicking', validators.field().boolean())
    .field('setupTimeMinutes', validators.field().number().min(0))
    .field('runTimePerUnitSeconds', validators.field().string()) // Decimal as string
    .field('validFrom', validators.optionalString()) // Date as string
    .field('validTo', validators.optionalString()), // Date as string
};

/**
 * Sales Order Schemas
 */
export const salesOrderSchemas = {
  create: validators.schema()
    .field('customerId', validators.requiredUuid())
    .field('orderDate', validators.requiredString()) // Date as string
    .field('requestedDeliveryDate', validators.optionalString()) // Date as string
    .field('shippingAddressId', validators.optionalUuid())
    .field('shippingInstructions', validators.optionalString())
    .field('notes', validators.optionalString())
    .field('items', validators.field().required().array().arrayMinLength(1)),

  update: validators.schema()
    .field('customerId', validators.optionalUuid())
    .field('requestedDeliveryDate', validators.optionalString()) // Date as string
    .field('confirmedDeliveryDate', validators.optionalString()) // Date as string
    .field('shippingAddressId', validators.optionalUuid())
    .field('shippingInstructions', validators.optionalString())
    .field('notes', validators.optionalString()),

  updateStatus: validators.schema()
    .field('status', validators.field().required().oneOf(['draft', 'confirmed', 'in_progress', 'shipped', 'delivered', 'cancelled', 'closed']))
    .field('changeReason', validators.optionalString())
    .field('notes', validators.optionalString()),
};

/**
 * Employee Schemas
 */
export const employeeSchemas = {
  create: validators.schema()
    .field('firstName', validators.field().required().string().minLength(1).maxLength(100))
    .field('lastName', validators.field().required().string().minLength(1).maxLength(100))
    .field('middleName', validators.field().string().maxLength(100))
    .field('authType', validators.field().required().oneOf(['email', 'phone']))
    .field('authValue', validators.requiredString())
    .field('employeeCode', validators.field().string().maxLength(50))
    .field('role', validators.optionalString()),

  update: validators.schema()
    .field('firstName', validators.field().string().minLength(1).maxLength(100))
    .field('lastName', validators.field().string().minLength(1).maxLength(100))
    .field('middleName', validators.field().string().maxLength(100))
    .field('role', validators.optionalString()),
};

/**
 * Attribute Schemas
 */
export const attributeSchemas = {
  create: validators.schema()
    .field('entityType', validators.field().required().string().minLength(1))
    .field('name', validators.field().required().string().minLength(1).maxLength(100))
    .field('displayName', validators.field().string().maxLength(255))
    .field('description', validators.optionalString())
    .field('dataType', validators.field().required().oneOf(['string', 'integer', 'boolean', 'date', 'decimal', 'json']))
    .field('isRequired', validators.field().boolean())
    .field('defaultValue', validators.field()) // Any type
    .field('validationRules', validators.field().custom(
      (value) => typeof value === 'object',
      'Validation rules must be an object'
    ))
    .field('options', validators.optionalArray()),

  update: validators.schema()
    .field('displayName', validators.field().string().maxLength(255))
    .field('description', validators.optionalString())
    .field('isRequired', validators.field().boolean())
    .field('defaultValue', validators.field()) // Any type
    .field('validationRules', validators.field().custom(
      (value) => typeof value === 'object',
      'Validation rules must be an object'
    ))
    .field('options', validators.optionalArray()),
};

/**
 * Export all schemas
 */
export const validationSchemas = {
  auth: authSchemas,
  tenant: tenantSchemas,
  party: partySchemas,
  item: itemSchemas,
  location: locationSchemas,
  asset: assetSchemas,
  stock: stockSchemas,
  lot: lotSchemas,
  bom: bomSchemas,
  salesOrder: salesOrderSchemas,
  employee: employeeSchemas,
  attribute: attributeSchemas,
};