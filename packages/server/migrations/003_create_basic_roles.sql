-- Migration: Create basic roles for all tenants
-- Date: $(date)
-- Description: Insert basic admin and user roles for each existing tenant

BEGIN;

-- Insert basic roles for each existing tenant
INSERT INTO roles (tenant_id, name, description, is_system, is_active, color)
SELECT 
    t.id as tenant_id,
    'Admin' as name,
    'Full access to all features' as description,
    true as is_system,
    true as is_active,
    '#dc2626' as color
FROM tenants t
WHERE NOT EXISTS (
    SELECT 1 FROM roles r 
    WHERE r.tenant_id = t.id AND r.name = 'Admin'
);

INSERT INTO roles (tenant_id, name, description, is_system, is_active, color)
SELECT 
    t.id as tenant_id,
    'User' as name,
    'Standard user access' as description,
    true as is_system,
    true as is_active,
    '#2563eb' as color
FROM tenants t
WHERE NOT EXISTS (
    SELECT 1 FROM roles r 
    WHERE r.tenant_id = t.id AND r.name = 'User'
);

COMMIT;