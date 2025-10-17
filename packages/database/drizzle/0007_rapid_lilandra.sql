-- Drop indexes first
DROP INDEX IF EXISTS "assets_tenant_type_idx";--> statement-breakpoint
DROP INDEX IF EXISTS "locations_tenant_type_idx";--> statement-breakpoint

-- Add new UUID columns
ALTER TABLE "assets" ADD COLUMN "asset_type_id" uuid;--> statement-breakpoint
ALTER TABLE "locations" ADD COLUMN "location_type_id" uuid;--> statement-breakpoint

-- Optional: Migrate data if you have existing records
-- This assumes you have corresponding records in asset_types and location_types
-- UPDATE "assets" SET "asset_type_id" = (SELECT id FROM "asset_types" WHERE code = "assets"."asset_type" LIMIT 1);
-- UPDATE "locations" SET "location_type_id" = (SELECT id FROM "location_types" WHERE code = "locations"."location_type" LIMIT 1);

-- Drop old text columns
ALTER TABLE "assets" DROP COLUMN "asset_type";--> statement-breakpoint
ALTER TABLE "locations" DROP COLUMN "location_type";--> statement-breakpoint

-- Add foreign key constraints
ALTER TABLE "assets" ADD CONSTRAINT "assets_asset_type_id_asset_types_id_fk" FOREIGN KEY ("asset_type_id") REFERENCES "public"."asset_types"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "locations" ADD CONSTRAINT "locations_location_type_id_location_types_id_fk" FOREIGN KEY ("location_type_id") REFERENCES "public"."location_types"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint

-- Recreate indexes with new columns
CREATE INDEX "assets_tenant_type_idx" ON "assets" USING btree ("tenant_id","asset_type_id");--> statement-breakpoint
CREATE INDEX "locations_tenant_type_idx" ON "locations" USING btree ("tenant_id","location_type_id");