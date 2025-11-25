# Manufacturing Module

## Overview
Comprehensive Bill of Materials (BOM) management with versioning, phantom BOMs, Engineering Change Orders (ECO), and component hierarchy. Supports manufacturing planning and engineering change control.

## Database Schema

### boms
```sql
boms {
  id: uuid PRIMARY KEY
  tenant_id: uuid NOT NULL REFERENCES tenants
  item_id: uuid NOT NULL REFERENCES items
  bom_code: varchar(255) NOT NULL
  name: varchar(255) NOT NULL
  description: text NULL
  status: varchar(50) NOT NULL DEFAULT 'draft'
  version: varchar(50) NOT NULL DEFAULT '1.0'
  is_current_version: boolean NOT NULL DEFAULT true
  production_quantity: decimal(15,4) NULL
  production_unit: varchar(50) NULL
  valid_from: date NOT NULL DEFAULT now()
  valid_to: date NULL
  engineer_id: uuid NULL
  approved_by: uuid NULL
  approved_at: timestamp(6) with timezone NULL
  is_phantom_bom: boolean NOT NULL DEFAULT false
  phantom_explosion_policy: varchar(50) NOT NULL DEFAULT 'immediate'
  manufacturing_policy: varchar(50) NOT NULL DEFAULT 'assemble_to_stock'
  planning_policy: varchar(50) NOT NULL DEFAULT 'mrp'
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()
  deleted_at: timestamp(6) with timezone NULL

  UNIQUE (tenant_id, bom_code)
  UNIQUE (item_id, version)
  INDEX (tenant_id, item_id)
  INDEX (tenant_id, status)
  INDEX (is_current_version)
  INDEX (valid_from, valid_to)
  INDEX (is_phantom_bom)
  INDEX (manufacturing_policy)

  CONSTRAINT status IN ('draft', 'active', 'obsolete', 'under_review')
  CONSTRAINT phantom_explosion_policy IN ('immediate', 'one_level', 'full_explosion')
  CONSTRAINT manufacturing_policy IN ('assemble_to_stock', 'assemble_to_order', 'phantom')
  CONSTRAINT planning_policy IN ('mrp', 'reorder_point', 'phantom')
}
```

### bom_components
```sql
bom_components {
  id: uuid PRIMARY KEY
  tenant_id: uuid NOT NULL REFERENCES tenants
  bom_id: uuid NOT NULL REFERENCES boms
  component_item_id: uuid NOT NULL REFERENCES items
  parent_component_id: uuid NULL -- Hierarchical structure
  quantity: decimal(15,4) NOT NULL
  unit: varchar(50) NOT NULL
  component_type: varchar(50) NOT NULL DEFAULT 'material'
  is_optional: boolean NOT NULL DEFAULT false
  is_critical: boolean NOT NULL DEFAULT false
  phantom_policy: varchar(50) NOT NULL DEFAULT 'always_explode'
  sourcing_type: varchar(50) NOT NULL DEFAULT 'buy'
  explode_in_mrp: boolean NOT NULL DEFAULT true
  explode_in_costing: boolean NOT NULL DEFAULT true
  explode_in_picking: boolean NOT NULL DEFAULT true
  inherited_lead_time: integer NULL
  setup_time_minutes: integer NOT NULL DEFAULT 0
  run_time_per_unit_seconds: decimal(8,2) NULL
  valid_from: date NOT NULL DEFAULT now()
  valid_to: date NULL
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()
  deleted_at: timestamp(6) with timezone NULL

  INDEX (bom_id)
  INDEX (component_item_id)
  INDEX (parent_component_id)
  INDEX (tenant_id)
  INDEX (component_type)
  INDEX (sourcing_type)
  INDEX (explode_in_mrp)

  CONSTRAINT component_type IN ('material', 'assembly', 'phantom')
  CONSTRAINT phantom_policy IN ('always_explode', 'conditional_explode', 'planning_only')
  CONSTRAINT sourcing_type IN ('make', 'buy', 'phantom', 'configured')
}
```

### engineering_change_orders
```sql
engineering_change_orders {
  id: uuid PRIMARY KEY
  tenant_id: uuid NOT NULL REFERENCES tenants
  eco_number: varchar(255) NOT NULL
  title: varchar(255) NOT NULL
  description: text NOT NULL
  status: varchar(50) NOT NULL DEFAULT 'draft'
  change_type: varchar(50) NOT NULL
  priority: varchar(50) NOT NULL DEFAULT 'medium'
  affected_bom_ids: json NOT NULL DEFAULT []
  reason_for_change: text NOT NULL
  impact_analysis: text NULL
  estimated_cost_impact: decimal(15,2) NULL
  cost_currency: varchar(3) NOT NULL DEFAULT 'TRY'
  requested_completion_date: date NULL
  actual_completion_date: date NULL
  requested_by: uuid NOT NULL
  assigned_to: uuid NULL
  approved_by: uuid NULL
  approved_at: timestamp(6) with timezone NULL
  rejected_by: uuid NULL
  rejected_at: timestamp(6) with timezone NULL
  rejection_reason: text NULL
  implemented_by: uuid NULL
  implemented_at: timestamp(6) with timezone NULL
  implementation_notes: text NULL
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()
  deleted_at: timestamp(6) with timezone NULL

  UNIQUE (tenant_id, eco_number)
  INDEX (tenant_id, status)
  INDEX (change_type)
  INDEX (priority)
  INDEX (requested_by)
  INDEX (assigned_to)
  INDEX (requested_completion_date)

  CONSTRAINT status IN ('draft', 'submitted', 'under_review', 'approved',
                        'rejected', 'implemented', 'closed')
  CONSTRAINT change_type IN ('design', 'process', 'material', 'tooling')
  CONSTRAINT priority IN ('low', 'medium', 'high', 'critical')
}
```

### eco_bom_changes
```sql
eco_bom_changes {
  id: uuid PRIMARY KEY
  tenant_id: uuid NOT NULL REFERENCES tenants
  eco_id: uuid NOT NULL REFERENCES engineering_change_orders
  bom_id: uuid NOT NULL REFERENCES boms
  change_action: varchar(50) NOT NULL
  old_bom_component_id: uuid NULL REFERENCES bom_components
  new_bom_component_id: uuid NULL REFERENCES bom_components
  change_description: text NOT NULL
  old_values: json NULL
  new_values: json NULL
  is_implemented: boolean NOT NULL DEFAULT false
  implemented_at: timestamp(6) with timezone NULL
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()
  deleted_at: timestamp(6) with timezone NULL

  INDEX (eco_id)
  INDEX (bom_id)
  INDEX (tenant_id)
  INDEX (change_action)
  INDEX (is_implemented)

  CONSTRAINT change_action IN ('add', 'remove', 'modify', 'replace')
}
```

### bom_version_history
```sql
bom_version_history {
  id: uuid PRIMARY KEY
  tenant_id: uuid NOT NULL REFERENCES tenants
  bom_id: uuid NOT NULL REFERENCES boms
  eco_id: uuid NULL REFERENCES engineering_change_orders
  old_version: varchar(50) NOT NULL
  new_version: varchar(50) NOT NULL
  change_summary: text NOT NULL
  changed_by: uuid NOT NULL
  inserted_at: timestamp(6) with timezone DEFAULT now()

  INDEX (bom_id)
  INDEX (eco_id)
  INDEX (tenant_id)
  INDEX (changed_by)
}
```

## Key Features

### BOM Management
- Bill of Materials for manufactured items
- Version control (version number + is_current_version flag)
- BOM validity periods (valid_from, valid_to)
- Multiple BOMs per item (different versions)
- Status lifecycle: draft → active → obsolete
- Approval workflow

### Component Hierarchy
- Multi-level BOM structures (parent-child components)
- Component types: material, assembly, phantom
- Optional and critical component flags
- Quantity and unit of measure per component
- Component validity periods

### Phantom BOMs
- Phantom BOM support (components that don't physically exist)
- Explosion policies: immediate, one_level, full_explosion
- Selective explosion control:
  - explode_in_mrp: Material planning
  - explode_in_costing: Cost calculation
  - explode_in_picking: Warehouse picking
- Phantom policy per component

### Manufacturing Policies
- **assemble_to_stock**: Build for inventory
- **assemble_to_order**: Build per order
- **phantom**: Intermediate assembly (exploded)

### Planning Policies
- **mrp**: Material Requirements Planning
- **reorder_point**: Min/max inventory
- **phantom**: Pass-through planning

### Sourcing Types
- **make**: Manufactured in-house
- **buy**: Purchased from supplier
- **phantom**: Intermediate (exploded)
- **configured**: Configured product

### Engineering Change Orders (ECO)
- Change request workflow
- Change types: design, process, material, tooling
- Priority levels: low, medium, high, critical
- Multi-BOM impact tracking
- Cost impact analysis
- Approval workflow (requested, approved, rejected)
- Implementation tracking

### ECO BOM Changes
- Detailed change tracking per BOM
- Change actions: add, remove, modify, replace
- Before/after component tracking
- Old/new values as JSON
- Implementation status

### Version History
- Complete BOM version audit trail
- ECO linkage to version changes
- Change summary documentation
- User tracking

## BOM Lifecycle

### BOM Statuses
```
draft → under_review → active → obsolete
```

### ECO Workflow
```
draft → submitted → under_review → approved → implemented → closed
                                 ↓
                             rejected
```

## Business Rules

1. BOM code must be unique per tenant
2. Item can have multiple BOM versions
3. Only one current version per item
4. Component quantity must be positive
5. Phantom components must have explosion policies
6. ECO number must be unique per tenant
7. ECO affects one or more BOMs
8. BOM changes tracked in version history
9. Soft delete supported

## Manufacturing Context

### Production Information
- Production quantity and unit
- Setup time per component
- Run time per unit
- Lead time inheritance for phantoms

### Time Tracking
- setup_time_minutes: Fixed setup time
- run_time_per_unit_seconds: Variable time per unit
- inherited_lead_time: Cumulative lead time for phantoms

## Integration Points

- **Item Module**: Links to items for finished goods and components
- **Inventory Module**: Component consumption and stock tracking
- **Sales Module**: BOM explosion for sales orders
- **Costing**: Material cost rollup (future)
- **MRP**: Material requirements planning (future)
- **Production**: Work order generation (future)

## Use Cases

### Single-level BOM
```
Product A
├── Component B (qty: 2)
├── Component C (qty: 1)
└── Component D (qty: 3)
```

### Multi-level BOM
```
Product A
├── Sub-assembly B
│   ├── Component C (qty: 2)
│   └── Component D (qty: 1)
└── Component E (qty: 3)
```

### Phantom BOM
```
Product A
├── Phantom Assembly B (exploded in planning)
│   ├── Component C (qty: 2)
│   └── Component D (qty: 1)
└── Component E (qty: 3)
```

## Notes

- Complex BOM management with full version control
- Engineering change control with approval workflow
- Phantom BOM support for intermediate assemblies
- Hierarchical component structures
- Time-based validity for components and BOMs
- Cost impact tracking on changes
- All operations are tenant-scoped
- Supports make-to-stock and make-to-order scenarios
- Planning policy controls MRP behavior
- Turkish market default (TRY currency)
