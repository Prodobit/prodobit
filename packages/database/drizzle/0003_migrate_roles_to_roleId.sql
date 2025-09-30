-- Migration: Convert tenant_memberships.role (text) to roleId (uuid foreign key)
-- This migration:
-- 1. Moves roles table before tenant_memberships (already done in schema)
-- 2. Adds roleId column to tenant_memberships
-- 3. Migrates existing role strings to roleId references
-- 4. Drops old role column
-- 5. Makes roleId NOT NULL

-- Step 1: Add roleId column (nullable for now, to allow migration)
ALTER TABLE tenant_memberships
ADD COLUMN role_id UUID;

-- Step 2: Create a temporary function to find or create role by name for a tenant
CREATE OR REPLACE FUNCTION get_or_create_role_id(p_tenant_id UUID, p_role_name TEXT)
RETURNS UUID
LANGUAGE plpgsql
AS $$
DECLARE
  v_role_id UUID;
  v_role_description TEXT;
  v_role_color TEXT;
BEGIN
  -- Try to find existing role
  SELECT id INTO v_role_id
  FROM roles
  WHERE tenant_id = p_tenant_id AND name = p_role_name
  LIMIT 1;

  -- If not found, create it
  IF v_role_id IS NULL THEN
    -- Set default descriptions and colors based on role name
    CASE p_role_name
      WHEN 'system_admin' THEN
        v_role_description := 'System administrator with full access';
        v_role_color := '#EF4444';
      WHEN 'admin' THEN
        v_role_description := 'Tenant administrator';
        v_role_color := '#EF4444';
      WHEN 'manager' THEN
        v_role_description := 'Tenant manager';
        v_role_color := '#F59E0B';
      WHEN 'user' THEN
        v_role_description := 'Regular user';
        v_role_color := '#3B82F6';
      WHEN 'viewer' THEN
        v_role_description := 'Read-only access';
        v_role_color := '#6B7280';
      WHEN 'external' THEN
        v_role_description := 'External user';
        v_role_color := '#8B5CF6';
      ELSE
        v_role_description := p_role_name;
        v_role_color := '#6B7280';
    END CASE;

    INSERT INTO roles (tenant_id, name, description, is_system, is_active, color, inserted_at, updated_at)
    VALUES (p_tenant_id, p_role_name, v_role_description, true, true, v_role_color, NOW(), NOW())
    RETURNING id INTO v_role_id;
  END IF;

  RETURN v_role_id;
END;
$$;

-- Step 3: Migrate existing role data to roleId
UPDATE tenant_memberships tm
SET role_id = get_or_create_role_id(tm.tenant_id, tm.role::TEXT)
WHERE role_id IS NULL;

-- Step 4: Drop the temporary function
DROP FUNCTION get_or_create_role_id(UUID, TEXT);

-- Step 5: Make roleId NOT NULL and add foreign key constraint
ALTER TABLE tenant_memberships
ALTER COLUMN role_id SET NOT NULL;

ALTER TABLE tenant_memberships
ADD CONSTRAINT tenant_memberships_role_id_fkey
FOREIGN KEY (role_id) REFERENCES roles(id) ON DELETE RESTRICT;

-- Step 6: Create index on roleId
CREATE INDEX tenant_memberships_role_id_idx ON tenant_memberships(role_id);
CREATE INDEX tenant_memberships_tenant_role_idx ON tenant_memberships(tenant_id, role_id);

-- Step 7: Drop old role column
ALTER TABLE tenant_memberships DROP COLUMN role;

-- Step 8: Rename role_id to roleId for consistency
-- Note: Drizzle uses snake_case in DB, this is already correct