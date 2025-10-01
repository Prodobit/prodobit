-- Step 1: Add role_id column (nullable initially)
ALTER TABLE "tenant_memberships" ADD COLUMN "role_id" uuid;--> statement-breakpoint

-- Step 2: Migrate data from role to role_id
UPDATE "tenant_memberships" tm
SET role_id = r.id
FROM roles r
WHERE r.tenant_id = tm.tenant_id AND r.name = tm.role;--> statement-breakpoint

-- Step 3: Make role_id NOT NULL
ALTER TABLE "tenant_memberships" ALTER COLUMN "role_id" SET NOT NULL;--> statement-breakpoint

-- Step 4: Add foreign key constraint
ALTER TABLE "tenant_memberships" ADD CONSTRAINT "tenant_memberships_role_id_roles_id_fk" FOREIGN KEY ("role_id") REFERENCES "public"."roles"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint

-- Step 5: Drop old index
DROP INDEX IF EXISTS "tenant_memberships_tenant_role_idx";--> statement-breakpoint

-- Step 6: Create new indexes
CREATE INDEX "tenant_memberships_role_id_idx" ON "tenant_memberships" USING btree ("role_id");--> statement-breakpoint
CREATE INDEX "tenant_memberships_tenant_role_idx" ON "tenant_memberships" USING btree ("tenant_id","role_id");--> statement-breakpoint

-- Step 7: Drop old role column
ALTER TABLE "tenant_memberships" DROP COLUMN "role";
