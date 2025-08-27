/**
 * Define which fields in each table/service are decimal fields
 * This ensures consistent decimal handling across the application
 */

export const DECIMAL_FIELDS = {
  // BOM related decimal fields
  BOM: ['productionQuantity'],
  
  // ECO related decimal fields  
  ECO: ['estimatedCostImpact'],
  
  // Sales Order related decimal fields
  SALES_ORDER: ['totalAmount'],
  SALES_ORDER_ITEM: ['quantity', 'unitPrice', 'totalPrice', 'remainingQuantity'],
  
  // Item related decimal fields
  ITEM: ['standardCost', 'listPrice', 'weight', 'volume'],
  
  // Stock related decimal fields
  STOCK: ['quantity', 'reservedQuantity', 'availableQuantity', 'unitCost'],
  
  // Purchase related decimal fields
  PURCHASE_ORDER: ['totalAmount'],
  PURCHASE_ORDER_ITEM: ['quantity', 'unitPrice', 'totalPrice'],
  
};

export type DecimalField<T extends keyof typeof DECIMAL_FIELDS> = typeof DECIMAL_FIELDS[T][number];