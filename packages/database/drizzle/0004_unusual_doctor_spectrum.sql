CREATE TABLE "item_images" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"item_id" uuid NOT NULL,
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
CREATE TABLE "media" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"storage_provider" varchar(50) NOT NULL,
	"bucket" varchar(255) NOT NULL,
	"key" varchar(500) NOT NULL,
	"filename" varchar(255) NOT NULL,
	"original_filename" varchar(255),
	"mime_type" varchar(100) NOT NULL,
	"size" integer NOT NULL,
	"width" integer,
	"height" integer,
	"url" text NOT NULL,
	"entity_type" varchar(50),
	"entity_id" uuid,
	"metadata" text,
	"alt_text" text,
	"inserted_at" timestamp with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp with time zone
);
--> statement-breakpoint
ALTER TABLE "item_images" ADD CONSTRAINT "item_images_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "item_images" ADD CONSTRAINT "item_images_item_id_items_id_fk" FOREIGN KEY ("item_id") REFERENCES "public"."items"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "item_images" ADD CONSTRAINT "item_images_media_id_media_id_fk" FOREIGN KEY ("media_id") REFERENCES "public"."media"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "media" ADD CONSTRAINT "media_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
CREATE INDEX "item_images_tenant_item_idx" ON "item_images" USING btree ("tenant_id","item_id");--> statement-breakpoint
CREATE INDEX "item_images_item_primary_idx" ON "item_images" USING btree ("item_id","is_primary");--> statement-breakpoint
CREATE INDEX "item_images_display_order_idx" ON "item_images" USING btree ("item_id","display_order");--> statement-breakpoint
CREATE INDEX "media_tenant_idx" ON "media" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX "media_entity_idx" ON "media" USING btree ("entity_type","entity_id");--> statement-breakpoint
CREATE INDEX "media_tenant_entity_idx" ON "media" USING btree ("tenant_id","entity_type","entity_id");--> statement-breakpoint
CREATE INDEX "media_storage_idx" ON "media" USING btree ("storage_provider","bucket","key");