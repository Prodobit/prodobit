-- Migration: Revert role_id back to UUID and restore foreign key
-- Date: $(date)
-- Description: Revert the previous migration and fix the issue properly

BEGIN;

-- Change role_id column type back to UUID
ALTER TABLE user_invitations 
ALTER COLUMN role_id TYPE UUID USING role_id::UUID;

-- Add back the foreign key constraint
ALTER TABLE user_invitations 
ADD CONSTRAINT user_invitations_role_id_roles_id_fk 
FOREIGN KEY (role_id) REFERENCES roles(id) ON DELETE CASCADE;

COMMIT;