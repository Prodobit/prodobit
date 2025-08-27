-- Employee module migration
CREATE TABLE employees (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  party_id UUID NOT NULL,
  employee_number TEXT UNIQUE NOT NULL,
  position TEXT,
  department TEXT,
  hire_date TIMESTAMP DEFAULT NOW(),
  termination_date TIMESTAMP,
  is_active BOOLEAN DEFAULT true,
  tenant_id UUID NOT NULL,
  created_at TIMESTAMP DEFAULT NOW() NOT NULL,
  updated_at TIMESTAMP DEFAULT NOW() NOT NULL
);

-- Enable RLS
ALTER TABLE employees ENABLE ROW LEVEL SECURITY;

-- RLS Policy: Users can only access employees from their tenant
CREATE POLICY employees_tenant_isolation ON employees
  FOR ALL
  USING (tenant_id = current_setting('app.current_tenant_id')::UUID);

-- Indexes
CREATE INDEX idx_employees_tenant_id ON employees(tenant_id);
CREATE INDEX idx_employees_party_id ON employees(party_id);
CREATE INDEX idx_employees_employee_number ON employees(employee_number);
CREATE INDEX idx_employees_is_active ON employees(is_active);