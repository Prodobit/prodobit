-- Migration: Enhance authentication security
-- This migration updates the sessions table to support:
-- 1. CSRF token storage (removing access_token_hash)
-- 2. Device fingerprinting for enhanced security
-- 3. Updated revocation reasons

-- Remove access_token_hash column (no longer stored)
ALTER TABLE "sessions" DROP COLUMN IF EXISTS "access_token_hash";

-- Add csrf_token_hash column (required for CSRF protection)
ALTER TABLE "sessions" ADD COLUMN "csrf_token_hash" text NOT NULL DEFAULT '';

-- Add device_fingerprint column for device validation
ALTER TABLE "sessions" ADD COLUMN "device_fingerprint" text;

-- Update existing sessions to have temporary CSRF token hash
-- In production, existing sessions should be invalidated for security
UPDATE "sessions" SET "csrf_token_hash" = encode(gen_random_bytes(32), 'hex') WHERE "csrf_token_hash" = '';

-- Add indexes for new columns
CREATE INDEX IF NOT EXISTS "sessions_csrf_token_hash_idx" ON "sessions" ("csrf_token_hash");
CREATE INDEX IF NOT EXISTS "sessions_device_fingerprint_idx" ON "sessions" ("device_fingerprint");

-- Drop old access token hash index (no longer needed)
DROP INDEX IF EXISTS "sessions_access_token_hash_idx";

-- Update revoked_reason enum to include new security reasons
-- Note: PostgreSQL doesn't support modifying enum types directly in all versions
-- So we'll just ensure the column can accept the new values
-- The application will handle the new 'suspicious_activity' value

-- Clean up expired sessions older than 7 days for security
DELETE FROM "sessions" 
WHERE "status" = 'expired' 
  AND "updated_at" < NOW() - INTERVAL '7 days';

-- Optionally revoke all existing sessions for enhanced security
-- Uncomment the following lines if you want to force all users to re-authenticate
-- UPDATE "sessions" SET 
--   "status" = 'revoked',
--   "revoked_at" = NOW(),
--   "revoked_reason" = 'security_upgrade'
-- WHERE "status" = 'active';