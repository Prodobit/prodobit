CREATE TABLE "brands" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"name" text NOT NULL,
	"code" text,
	"description" text,
	"logo" text,
	"website" text,
	"status" text DEFAULT 'active' NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
ALTER TABLE "items" ADD COLUMN "brand_id" uuid;--> statement-breakpoint
ALTER TABLE "brands" ADD CONSTRAINT "brands_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
CREATE UNIQUE INDEX "brands_tenant_name_idx" ON "brands" USING btree ("tenant_id","name");--> statement-breakpoint
CREATE UNIQUE INDEX "brands_tenant_code_idx" ON "brands" USING btree ("tenant_id","code") WHERE code IS NOT NULL;--> statement-breakpoint
CREATE INDEX "brands_tenant_status_idx" ON "brands" USING btree ("tenant_id","status");--> statement-breakpoint
ALTER TABLE "items" ADD CONSTRAINT "items_brand_id_brands_id_fk" FOREIGN KEY ("brand_id") REFERENCES "public"."brands"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
CREATE INDEX "items_brand_idx" ON "items" USING btree ("brand_id");