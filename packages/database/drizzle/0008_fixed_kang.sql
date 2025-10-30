CREATE TABLE "asset_images" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"asset_id" uuid NOT NULL,
	"media_id" uuid NOT NULL,
	"display_order" integer DEFAULT 0 NOT NULL,
	"is_primary" boolean DEFAULT false NOT NULL,
	"thumbnail_url" text,
	"medium_url" text,
	"large_url" text,
	"inserted_at" timestamp with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp with time zone
);
--> statement-breakpoint
ALTER TABLE "asset_images" ADD CONSTRAINT "asset_images_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "asset_images" ADD CONSTRAINT "asset_images_asset_id_assets_id_fk" FOREIGN KEY ("asset_id") REFERENCES "public"."assets"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "asset_images" ADD CONSTRAINT "asset_images_media_id_media_id_fk" FOREIGN KEY ("media_id") REFERENCES "public"."media"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
CREATE INDEX "asset_images_tenant_asset_idx" ON "asset_images" USING btree ("tenant_id","asset_id");--> statement-breakpoint
CREATE INDEX "asset_images_asset_primary_idx" ON "asset_images" USING btree ("asset_id","is_primary");--> statement-breakpoint
CREATE INDEX "asset_images_display_order_idx" ON "asset_images" USING btree ("asset_id","display_order");