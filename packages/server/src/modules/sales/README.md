# Sales Module

## Overview
Manages sales orders from creation through delivery. Tracks order status, line items, fulfillment, approval workflow, and delivery schedules.

## Database Schema

### sales_orders
```sql
sales_orders {
  id: uuid PRIMARY KEY
  tenant_id: uuid NOT NULL REFERENCES tenants
  order_number: text NOT NULL
  customer_id: uuid NOT NULL REFERENCES customers
  order_date: date NOT NULL DEFAULT now()
  requested_delivery_date: date NULL
  confirmed_delivery_date: date NULL
  status: text NOT NULL DEFAULT 'draft'
  total_amount: decimal(15,4) NULL
  currency: text NOT NULL DEFAULT 'TRY'
  shipping_address_id: uuid NULL REFERENCES addresses
  shipping_instructions: text NULL
  approved_by: uuid NULL REFERENCES users
  approved_at: timestamp(6) with timezone NULL
  notes: text NULL
  created_by: uuid NOT NULL REFERENCES users
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()
  deleted_at: timestamp(6) with timezone NULL

  UNIQUE (tenant_id, order_number)
  INDEX (tenant_id, customer_id)
  INDEX (tenant_id, status)
  INDEX (order_date)
  INDEX (requested_delivery_date)
  INDEX (created_by)

  CONSTRAINT status IN ('draft', 'confirmed', 'in_progress',
                        'shipped', 'delivered', 'cancelled', 'closed')
}
```

### sales_order_items
```sql
sales_order_items {
  id: uuid PRIMARY KEY
  tenant_id: uuid NOT NULL REFERENCES tenants
  sales_order_id: uuid NOT NULL REFERENCES sales_orders
  item_id: uuid NOT NULL REFERENCES items
  quantity: decimal(15,4) NOT NULL
  unit: text NULL
  unit_price: decimal(15,4) NOT NULL
  total_price: decimal(15,4) NOT NULL
  currency: text DEFAULT 'TRY'
  requested_delivery_date: date NULL
  confirmed_delivery_date: date NULL
  actual_delivery_date: date NULL
  shipped_quantity: decimal(15,4) NULL
  remaining_quantity: decimal(15,4) NOT NULL
  line_status: text DEFAULT 'pending'
  item_notes: text NULL
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()
  deleted_at: timestamp(6) with timezone NULL

  INDEX (sales_order_id)
  INDEX (item_id)
  INDEX (tenant_id)
  INDEX (line_status)

  CONSTRAINT line_status IN ('pending', 'confirmed', 'in_progress',
                              'shipped', 'delivered', 'cancelled')
}
```

### sales_order_status_history
```sql
sales_order_status_history {
  id: uuid PRIMARY KEY
  tenant_id: uuid NOT NULL REFERENCES tenants
  sales_order_id: uuid NOT NULL REFERENCES sales_orders
  old_status: text NULL
  new_status: text NOT NULL
  changed_by: uuid NOT NULL REFERENCES users
  change_reason: text NULL
  notes: text NULL
  changed_at: timestamp(6) with timezone DEFAULT now()

  INDEX (sales_order_id)
  INDEX (tenant_id)
  INDEX (changed_by)
}
```

## Order Lifecycle

### Order Statuses
```
draft → confirmed → in_progress → shipped → delivered → closed
                                          ↓
                                    cancelled
```

**Status Definitions:**
- **draft**: Initial creation, editable
- **confirmed**: Approved, ready for processing
- **in_progress**: Being prepared/manufactured
- **shipped**: Dispatched to customer
- **delivered**: Customer received
- **cancelled**: Order cancelled
- **closed**: Order completed and finalized

### Line Item Statuses
- **pending**: Awaiting processing
- **confirmed**: Confirmed for fulfillment
- **in_progress**: Being prepared
- **shipped**: Dispatched
- **delivered**: Received by customer
- **cancelled**: Line cancelled

## Key Features

### Order Management
- Order number uniqueness per tenant
- Customer assignment
- Multiple delivery date types (requested, confirmed, actual)
- Currency support (default: TRY)
- Shipping address assignment
- Approval workflow with timestamp

### Line Item Tracking
- Item quantity and pricing
- Unit of measure
- Per-line delivery dates
- Fulfillment tracking (shipped vs remaining quantity)
- Individual line status
- Line-level notes

### Status History
- Complete audit trail of status changes
- User tracking (who made the change)
- Change reason and notes
- Timestamp of each change
- Old and new status recording

### Financial Tracking
- Unit price per line item
- Total price per line (quantity × unit price)
- Order total amount
- Multi-currency support
- Decimal precision: 15,4

## Fulfillment Tracking

### Partial Shipments
```sql
remaining_quantity = quantity - shipped_quantity
```

Line items track:
- Original quantity
- Shipped quantity
- Remaining quantity (auto-calculated)

### Delivery Dates
Three types per order/line:
- **Requested**: Customer's requested date
- **Confirmed**: Company's confirmed date
- **Actual**: Real delivery date (line items only)

## Business Rules

1. Order number must be unique per tenant
2. Order must have customer
3. Status transitions tracked in history
4. Approval requires user ID and timestamp
5. Line items belong to sales order (cascade delete)
6. Remaining quantity = quantity - shipped_quantity
7. Default currency is TRY (Turkish Lira)
8. Shipping address optional
9. Created by user required for audit

## Integration Points

- **Customer Module**: Links to customer via customer_id
- **Inventory Module**: Links to items, stock consumption on fulfillment
- **Address Module**: Shipping address
- **User Module**: Created by, approved by, status changes
- **Accounting**: Invoice generation (future)
- **Shipping**: Fulfillment tracking (future)

## Workflow

### Order Creation
1. Create sales_order (status: draft)
2. Add sales_order_items
3. Calculate total_amount
4. Assign shipping address

### Order Approval
1. Review order
2. Set approved_by user
3. Set approved_at timestamp
4. Change status to confirmed
5. Record in status_history

### Fulfillment
1. Change status to in_progress
2. Update line_status for each item
3. Track shipped_quantity
4. Update remaining_quantity
5. Set actual_delivery_date on lines
6. Change line_status to shipped/delivered

### Order Completion
1. Verify all lines delivered
2. Change status to delivered
3. Close order (status: closed)
4. Record final status change

## Notes

- Order numbers generated by system or user-provided
- Status history immutable (audit trail)
- Soft delete support on orders and line items
- Multi-line orders supported
- Partial shipments supported
- Approval workflow optional
- All operations are tenant-scoped
- Currency per line item for multi-currency orders
- Default Turkish market (TRY currency)
