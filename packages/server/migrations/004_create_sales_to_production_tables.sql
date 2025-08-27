-- Migration: Create Sales to Production Tables
-- Date: 2025-01-08
-- Description: Add sales orders, manufacturing orders, routings and work orders

BEGIN;

-- ================================================
-- 1. UPDATE PRODUCTS TABLE (Rename product_type to sourcing_type)
-- ================================================

-- Remove old product_type constraint
ALTER TABLE products DROP CONSTRAINT IF EXISTS product_type_check;

-- Add new fields to products table
ALTER TABLE products ADD COLUMN IF NOT EXISTS design_ownership TEXT;
ALTER TABLE products ADD COLUMN IF NOT EXISTS fulfillment_strategy TEXT;

-- Rename product_type to sourcing_type
ALTER TABLE products RENAME COLUMN product_type TO sourcing_type;

-- Add new constraints
ALTER TABLE products
ADD CONSTRAINT sourcing_type_check
CHECK (sourcing_type IN ('manufactured', 'purchased'));

ALTER TABLE products
ADD CONSTRAINT design_ownership_check
CHECK (design_ownership IS NULL OR design_ownership IN ('own', 'private_label', 'white_label'));

ALTER TABLE products
ADD CONSTRAINT fulfillment_strategy_check
CHECK (fulfillment_strategy IS NULL OR fulfillment_strategy IN ('warehouse', 'dropship'));

-- ================================================
-- 2. TIER 1: SALES ORDERS
-- ================================================

CREATE TABLE sales_orders (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    tenant_id UUID NOT NULL REFERENCES tenants(id) ON DELETE CASCADE,

    -- Order identification
    order_number TEXT NOT NULL,
    customer_id UUID NOT NULL REFERENCES customers(id) ON DELETE RESTRICT,

    -- Order dates
    order_date DATE NOT NULL DEFAULT CURRENT_DATE,
    requested_delivery_date DATE,
    confirmed_delivery_date DATE,

    -- Status: "draft", "confirmed", "in_progress", "shipped", "delivered", "cancelled", "closed"
    status TEXT NOT NULL DEFAULT 'draft',

    -- Financial
    total_amount DECIMAL(15,4) DEFAULT 0.0,
    currency TEXT NOT NULL DEFAULT 'TRY',

    -- Shipping
    shipping_address_id UUID REFERENCES addresses(id) ON DELETE SET NULL,
    shipping_instructions TEXT,

    -- Approval
    approved_by UUID REFERENCES users(id) ON DELETE RESTRICT,
    approved_at TIMESTAMPTZ(6),

    -- Notes
    notes TEXT,

    -- System fields
    created_by UUID NOT NULL REFERENCES users(id) ON DELETE RESTRICT,

    inserted_at TIMESTAMPTZ(6) NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ(6) NOT NULL DEFAULT now(),
    deleted_at TIMESTAMPTZ(6)
);

CREATE UNIQUE INDEX sales_orders_tenant_order_number_unique ON sales_orders (tenant_id, order_number);
CREATE INDEX sales_orders_tenant_customer_idx ON sales_orders (tenant_id, customer_id);
CREATE INDEX sales_orders_tenant_status_idx ON sales_orders (tenant_id, status);
CREATE INDEX sales_orders_order_date_idx ON sales_orders (order_date);
CREATE INDEX sales_orders_requested_delivery_date_idx ON sales_orders (requested_delivery_date);
CREATE INDEX sales_orders_created_by_idx ON sales_orders (created_by);

-- Sales order status constraint
ALTER TABLE sales_orders
ADD CONSTRAINT sales_order_status_check
CHECK (status IN ('draft', 'confirmed', 'in_progress', 'shipped', 'delivered', 'cancelled', 'closed'));

-- Sales Order Items
CREATE TABLE sales_order_items (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    tenant_id UUID NOT NULL REFERENCES tenants(id) ON DELETE CASCADE,

    sales_order_id UUID NOT NULL REFERENCES sales_orders(id) ON DELETE CASCADE,

    item_id UUID NOT NULL REFERENCES items(id) ON DELETE RESTRICT,

    -- Quantity and pricing
    quantity DECIMAL(15,4) NOT NULL,
    unit TEXT,
    unit_price DECIMAL(15,4) NOT NULL,
    total_price DECIMAL(15,4) NOT NULL,
    currency TEXT DEFAULT 'TRY',

    -- Delivery
    requested_delivery_date DATE,
    confirmed_delivery_date DATE,
    actual_delivery_date DATE,

    -- Fulfillment tracking
    shipped_quantity DECIMAL(15,4) DEFAULT 0.0,
    remaining_quantity DECIMAL(15,4) NOT NULL,

    -- Line status
    line_status TEXT DEFAULT 'pending',
    item_notes TEXT,

    inserted_at TIMESTAMPTZ(6) NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ(6) NOT NULL DEFAULT now(),
    deleted_at TIMESTAMPTZ(6)
);

CREATE INDEX sales_order_items_sales_order_idx ON sales_order_items (sales_order_id);
CREATE INDEX sales_order_items_item_idx ON sales_order_items (item_id);
CREATE INDEX sales_order_items_tenant_idx ON sales_order_items (tenant_id);
CREATE INDEX sales_order_items_line_status_idx ON sales_order_items (line_status);

-- Sales order item line status constraint
ALTER TABLE sales_order_items
ADD CONSTRAINT sales_order_item_line_status_check
CHECK (line_status IN ('pending', 'confirmed', 'in_progress', 'shipped', 'delivered', 'cancelled'));

-- Sales Order Status History
CREATE TABLE sales_order_status_history (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    tenant_id UUID NOT NULL REFERENCES tenants(id) ON DELETE CASCADE,

    sales_order_id UUID NOT NULL REFERENCES sales_orders(id) ON DELETE CASCADE,

    old_status TEXT,
    new_status TEXT NOT NULL,
    changed_by UUID NOT NULL REFERENCES users(id) ON DELETE RESTRICT,
    change_reason TEXT,
    notes TEXT,

    changed_at TIMESTAMPTZ(6) NOT NULL DEFAULT now()
);

CREATE INDEX sales_order_status_history_sales_order_idx ON sales_order_status_history (sales_order_id);
CREATE INDEX sales_order_status_history_tenant_idx ON sales_order_status_history (tenant_id);
CREATE INDEX sales_order_status_history_changed_by_idx ON sales_order_status_history (changed_by);

-- ================================================
-- 3. ENABLE RLS FOR SALES TABLES
-- ================================================

ALTER TABLE sales_orders ENABLE ROW LEVEL SECURITY;
CREATE POLICY sales_orders_rls_policy ON sales_orders
FOR ALL TO PUBLIC
USING (tenant_id::uuid = current_setting('app.current_tenant_id')::uuid);

ALTER TABLE sales_order_items ENABLE ROW LEVEL SECURITY;
CREATE POLICY sales_order_items_rls_policy ON sales_order_items
FOR ALL TO PUBLIC
USING (tenant_id::uuid = current_setting('app.current_tenant_id')::uuid);

ALTER TABLE sales_order_status_history ENABLE ROW LEVEL SECURITY;
CREATE POLICY sales_order_status_history_rls_policy ON sales_order_status_history
FOR ALL TO PUBLIC
USING (tenant_id::uuid = current_setting('app.current_tenant_id')::uuid);

-- ================================================
-- 4. CREATE HELPER FUNCTIONS AND TRIGGERS
-- ================================================

-- Auto-generate sales order numbers
CREATE OR REPLACE FUNCTION generate_sales_order_number()
RETURNS TRIGGER AS $$
DECLARE
  new_order_number VARCHAR(50);
BEGIN
  IF NEW.order_number IS NULL OR NEW.order_number = '' THEN
    SELECT 'SO-' || TO_CHAR(CURRENT_DATE, 'YYYYMMDD') || '-' ||
           LPAD((EXTRACT(EPOCH FROM CURRENT_TIMESTAMP) * 1000)::BIGINT % 10000, 4, '0')
    INTO new_order_number;

    WHILE EXISTS (
      SELECT 1 FROM sales_orders
      WHERE order_number = new_order_number AND tenant_id = NEW.tenant_id
    ) LOOP
      SELECT 'SO-' || TO_CHAR(CURRENT_DATE, 'YYYYMMDD') || '-' ||
             LPAD((EXTRACT(EPOCH FROM CURRENT_TIMESTAMP) * 1000)::BIGINT % 10000, 4, '0')
      INTO new_order_number;
    END LOOP;

    NEW.order_number = new_order_number;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_generate_sales_order_number
BEFORE INSERT ON sales_orders
FOR EACH ROW
EXECUTE FUNCTION generate_sales_order_number();

-- Update sales order totals when items change
CREATE OR REPLACE FUNCTION update_sales_order_totals()
RETURNS TRIGGER AS $$
BEGIN
  UPDATE sales_orders
  SET
    total_amount = (
      SELECT COALESCE(SUM(total_price), 0)
      FROM sales_order_items
      WHERE sales_order_id = COALESCE(NEW.sales_order_id, OLD.sales_order_id)
      AND deleted_at IS NULL
    ),
    updated_at = now()
  WHERE id = COALESCE(NEW.sales_order_id, OLD.sales_order_id);

  RETURN COALESCE(NEW, OLD);
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_update_sales_order_totals
AFTER INSERT OR UPDATE OR DELETE ON sales_order_items
FOR EACH ROW
EXECUTE FUNCTION update_sales_order_totals();

-- Update remaining quantities for sales orders
CREATE OR REPLACE FUNCTION update_sales_remaining_quantity()
RETURNS TRIGGER AS $$
BEGIN
  NEW.remaining_quantity = NEW.quantity - NEW.shipped_quantity;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_update_sales_remaining_quantity
BEFORE INSERT OR UPDATE ON sales_order_items
FOR EACH ROW
EXECUTE FUNCTION update_sales_remaining_quantity();

COMMIT;