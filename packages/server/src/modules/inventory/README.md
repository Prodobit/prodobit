# Inventory Module

## Overview
Comprehensive inventory management system supporting items, products, stock levels, lot tracking, locations, and stock transactions. Handles multi-location inventory with full traceability.

## Database Schema

### items
```sql
items {
  id: uuid PRIMARY KEY
  tenant_id: uuid NOT NULL REFERENCES tenants
  item_type: text NOT NULL -- 'product', 'service', 'raw_material', 'component'
  code: text NULL
  name: text NOT NULL
  status: text NOT NULL DEFAULT 'active'
  brand_id: uuid NULL REFERENCES brands
  is_inventory_item: boolean NOT NULL DEFAULT true
  is_stock_item: boolean NOT NULL DEFAULT true
  is_variant: boolean NOT NULL DEFAULT false
  is_abstract: boolean NOT NULL DEFAULT false
  reference_item_id: uuid NULL -- Parent item for variants
  name_search_trimmed: text NULL
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()
  deleted_at: timestamp(6) with timezone NULL

  UNIQUE (tenant_id, name)
  UNIQUE (tenant_id, code) WHERE code IS NOT NULL
  INDEX (tenant_id, item_type)
  INDEX (tenant_id, status)
  INDEX (brand_id)
  INDEX (reference_item_id)

  CONSTRAINT item_type IN ('product', 'service', 'raw_material', 'component')
  CONSTRAINT variant must have reference_item_id
  CONSTRAINT no circular references
}
```

### products
```sql
products {
  id: uuid PRIMARY KEY
  item_id: uuid NOT NULL REFERENCES items
  tenant_id: uuid NOT NULL REFERENCES tenants
  unit: text NULL
  item_category_id: uuid NULL REFERENCES item_categories
  sourcing_type: text NOT NULL DEFAULT 'manufactured' -- 'manufactured', 'purchased'
  design_ownership: text NULL -- 'own', 'private_label', 'white_label'
  fulfillment_strategy: text NULL -- 'warehouse', 'dropship'
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()
  deleted_at: timestamp(6) with timezone NULL

  UNIQUE (item_id)
  INDEX (tenant_id)
  INDEX (item_category_id)
}
```

### item_categories
```sql
item_categories {
  id: uuid PRIMARY KEY
  tenant_id: uuid NOT NULL REFERENCES tenants
  name: text NOT NULL
  code: text NULL
  description: text NULL
  parent_category_id: uuid NULL -- Hierarchical categories
  status: text NOT NULL DEFAULT 'active'
  item_type: text NOT NULL
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()
  deleted_at: timestamp(6) with timezone NULL

  UNIQUE (tenant_id, name)
  UNIQUE (tenant_id, code) WHERE code IS NOT NULL
  INDEX (parent_category_id)
}
```

### stocks
```sql
stocks {
  id: uuid PRIMARY KEY
  tenant_id: uuid NOT NULL REFERENCES tenants
  item_id: uuid NOT NULL REFERENCES items
  lot_id: uuid NULL REFERENCES lots
  quantity: decimal(15,3) NOT NULL
  location_id: uuid NOT NULL REFERENCES locations
  status: varchar(50) NOT NULL DEFAULT 'available'
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()
  deleted_at: timestamp(6) with timezone NULL

  UNIQUE (tenant_id, item_id, lot_id, location_id)
  INDEX (tenant_id, item_id)
  INDEX (tenant_id, lot_id)
  INDEX (tenant_id, location_id)
  INDEX (tenant_id, status)

  CONSTRAINT quantity >= 0
}
```

### lots
```sql
lots {
  id: uuid PRIMARY KEY
  tenant_id: uuid NOT NULL REFERENCES tenants
  lot_number: varchar(255) NOT NULL
  actual_quantity: decimal(15,3) NOT NULL DEFAULT 0
  expected_quantity: decimal(15,3) NOT NULL DEFAULT 0
  parent_lot_id: uuid NULL -- Hierarchical lots
  location_id: uuid NULL REFERENCES locations
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()
  deleted_at: timestamp(6) with timezone NULL

  UNIQUE (tenant_id, lot_number)
  INDEX (tenant_id, parent_lot_id)
  INDEX (tenant_id, location_id)

  CONSTRAINT actual_quantity >= 0
  CONSTRAINT expected_quantity >= 0
}
```

### stock_transactions
```sql
stock_transactions {
  id: uuid PRIMARY KEY
  tenant_id: uuid NOT NULL REFERENCES tenants
  stock_id: uuid NOT NULL REFERENCES stocks
  lot_id: uuid NULL REFERENCES lots
  item_id: uuid NOT NULL REFERENCES items
  transaction_type: varchar(50) NOT NULL
  quantity: decimal(15,3) NOT NULL
  source_location_id: uuid NULL REFERENCES locations
  destination_location_id: uuid NULL REFERENCES locations
  status: varchar(50) NOT NULL DEFAULT 'pending'
  transaction_date: timestamp(6) with timezone DEFAULT now()
  description: text NULL
  created_by: uuid NULL
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()
  deleted_at: timestamp(6) with timezone NULL

  INDEX (tenant_id, stock_id)
  INDEX (tenant_id, lot_id)
  INDEX (tenant_id, item_id)
  INDEX (tenant_id, transaction_type)
  INDEX (tenant_id, source_location_id)
  INDEX (tenant_id, destination_location_id)
  INDEX (tenant_id, transaction_date)
  INDEX (tenant_id, created_by)
  INDEX (tenant_id, status)

  CONSTRAINT quantity != 0
}
```

### stock_transaction_sources
```sql
stock_transaction_sources {
  id: uuid PRIMARY KEY
  tenant_id: uuid NOT NULL REFERENCES tenants
  transaction_id: uuid NOT NULL REFERENCES stock_transactions
  source_type: varchar(50) NOT NULL
  source_id: uuid NOT NULL
  quantity: decimal(15,3) NOT NULL
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()
  deleted_at: timestamp(6) with timezone NULL

  UNIQUE (tenant_id, transaction_id, source_type, source_id)
  INDEX (tenant_id, transaction_id)
  INDEX (tenant_id, source_type)
  INDEX (tenant_id, source_id)

  CONSTRAINT quantity > 0
}
```

### lot_sources
```sql
lot_sources {
  id: uuid PRIMARY KEY
  tenant_id: uuid NOT NULL REFERENCES tenants
  lot_id: uuid NOT NULL REFERENCES lots
  source_type: varchar(50) NOT NULL
  source_id: uuid NOT NULL
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()
  deleted_at: timestamp(6) with timezone NULL

  INDEX (tenant_id, lot_id)
  INDEX (tenant_id, source_type)
  INDEX (tenant_id, source_id)
}
```

## Key Features

### Item Management
- Four item types: product, service, raw_material, component
- Item variants with parent-child relationships
- Brand association
- Category hierarchy
- Inventory/stock flags
- Abstract items (templates)

### Stock Tracking
- Multi-location inventory
- Lot-based tracking
- Stock status management (available, reserved, quarantined, damaged)
- Unique stock by: tenant + item + lot + location
- Quantity constraints (non-negative)

### Lot Management
- Hierarchical lot structure (parent-child)
- Actual vs expected quantity tracking
- Lot number uniqueness per tenant
- Location assignment
- Source traceability

### Stock Transactions
- Transaction types: in, out, transfer, adjustment, production, consumption
- Location movements (source/destination)
- Transaction status: pending, completed, cancelled
- Audit trail (created_by)
- Source tracking (what triggered the transaction)

### Product Details
- Sourcing type: manufactured vs purchased
- Design ownership: own, private label, white label
- Fulfillment strategy: warehouse vs dropship
- Unit of measure
- Category classification

## API Endpoints

### Stock Routes (GET /stocks)

#### GET /stocks
List stock levels
- Auth: Required
- Permission: stock:read
- Returns: Array of stock records

#### GET /stocks/:id
Get stock by ID
- Auth: Required
- Permission: stock:read
- Returns: Stock record or 404

#### POST /stocks
Create stock entry
- Auth: Required
- Permission: stock:create
- Returns: Created stock (201)

#### PUT /stocks/:id
Update stock
- Auth: Required
- Permission: stock:update
- Returns: Updated stock

## Service Layer

### StockService
Main service for stock operations
- getStocks(filters): List stocks
- getStockById(id): Get single stock
- createStock(data): Create new stock
- updateStock(id, data): Update stock

## Business Rules

### Items
1. Item name must be unique per tenant
2. Item code must be unique per tenant (if provided)
3. Variants must have reference_item_id
4. No circular references allowed
5. Item type must be valid enum value

### Stocks
1. Stock quantity must be non-negative
2. Unique combination: tenant + item + lot + location
3. Stock status must be valid
4. Cannot delete if referenced by transactions

### Lots
1. Lot number must be unique per tenant
2. Actual and expected quantities must be non-negative
3. Parent-child hierarchy supported
4. Location tracking

### Stock Transactions
1. Quantity cannot be zero
2. Transaction must have valid type
3. Source tracking required for audit
4. Status transitions managed

## Integration Points

- **Sales Module**: Stock consumption on sales orders
- **Manufacturing Module**: Production transactions
- **Purchase Module**: Stock receipt from purchases
- **Location Module**: Multi-location tracking
- **Brand Module**: Item-brand associations
- **Accounting**: Stock valuation (future)

## Transaction Types

Common transaction types:
- **in**: Stock receipt
- **out**: Stock issue
- **transfer**: Location transfer
- **adjustment**: Inventory adjustment
- **production**: Manufacturing output
- **consumption**: Manufacturing input
- **sales**: Sales order fulfillment
- **purchase**: Purchase order receipt
- **return**: Customer/supplier returns

## Stock Statuses

- **available**: Available for use
- **reserved**: Reserved for orders
- **quarantined**: Quality hold
- **damaged**: Damaged stock
- **in_transit**: Being moved
- **expired**: Past expiry date

## Notes

- Complex multi-table structure for full traceability
- Lot tracking optional but recommended
- Multi-location support built-in
- Stock transactions immutable (audit trail)
- Source tracking for all movements
- Hierarchical categories and lots
- Variant management for product variations
- All operations are tenant-scoped
