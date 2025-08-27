-- Migration: Fix user_invitations.role_id to use text instead of UUID
-- Date: $(date)
-- Description: Change role_id column from UUID with foreign key to text to support hardcoded roles

BEGIN;

-- Remove the foreign key constraint
ALTER TABLE user_invitations 
DROP CONSTRAINT IF EXISTS user_invitations_role_id_roles_id_fk;

-- Change role_id column type from UUID to TEXT
ALTER TABLE user_invitations 
ALTER COLUMN role_id TYPE TEXT USING role_id::TEXT;

COMMIT;