-- Add missing columns to users table
ALTER TABLE "users" ADD COLUMN "email" text NOT NULL DEFAULT '';
ALTER TABLE "users" ADD COLUMN "password_hash" text;
ALTER TABLE "users" ADD COLUMN "first_name" text;
ALTER TABLE "users" ADD COLUMN "last_name" text;
ALTER TABLE "users" ADD COLUMN "is_email_verified" boolean DEFAULT false NOT NULL;

-- Add missing columns to tenants table
ALTER TABLE "tenants" ADD COLUMN "subdomain" text;
ALTER TABLE "tenants" ADD COLUMN "description" text;
ALTER TABLE "tenants" ADD COLUMN "industry" text;

-- Add unique constraints
CREATE UNIQUE INDEX IF NOT EXISTS "users_email_idx" ON "users" USING btree ("email");
CREATE UNIQUE INDEX IF NOT EXISTS "tenants_subdomain_idx" ON "tenants" USING btree ("subdomain");

-- Remove temporary default for email
ALTER TABLE "users" ALTER COLUMN "email" DROP DEFAULT;