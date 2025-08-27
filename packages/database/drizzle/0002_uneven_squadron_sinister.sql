CREATE TABLE IF NOT EXISTS "components" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"item_id" uuid NOT NULL,
	"tenant_id" uuid NOT NULL,
	"unit" text,
	"item_category_id" uuid,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE IF NOT EXISTS "item_categories" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"name" text NOT NULL,
	"code" text,
	"description" text,
	"parent_category_id" uuid,
	"status" text DEFAULT 'active' NOT NULL,
	"item_type" text NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE IF NOT EXISTS "item_prices" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"item_id" uuid NOT NULL,
	"tenant_id" uuid NOT NULL,
	"price_type" text NOT NULL,
	"price" numeric(15, 4) NOT NULL,
	"currency" text DEFAULT 'TRY' NOT NULL,
	"valid_from" date DEFAULT now(),
	"valid_to" date,
	"is_active" boolean DEFAULT true NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE IF NOT EXISTS "item_variants" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"item_id" uuid NOT NULL,
	"parent_item_id" uuid NOT NULL,
	"tenant_id" uuid NOT NULL,
	"variant_attributes" jsonb,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE IF NOT EXISTS "items" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"item_type" text NOT NULL,
	"code" text,
	"name" text NOT NULL,
	"status" text DEFAULT 'active' NOT NULL,
	"is_inventory_item" boolean DEFAULT true NOT NULL,
	"is_stock_item" boolean DEFAULT true NOT NULL,
	"is_variant" boolean DEFAULT false NOT NULL,
	"is_abstract" boolean DEFAULT false NOT NULL,
	"reference_item_id" uuid,
	"name_search_trimmed" text,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE IF NOT EXISTS "products" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"item_id" uuid NOT NULL,
	"tenant_id" uuid NOT NULL,
	"unit" text,
	"item_category_id" uuid,
	"product_type" text DEFAULT 'manufactured' NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE IF NOT EXISTS "raw_materials" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"item_id" uuid NOT NULL,
	"tenant_id" uuid NOT NULL,
	"unit" text,
	"item_category_id" uuid,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE IF NOT EXISTS "services" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"item_id" uuid NOT NULL,
	"tenant_id" uuid NOT NULL,
	"description" text,
	"unit" text NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "components" ADD CONSTRAINT "components_item_id_items_id_fk" FOREIGN KEY ("item_id") REFERENCES "public"."items"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "components" ADD CONSTRAINT "components_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "components" ADD CONSTRAINT "components_item_category_id_item_categories_id_fk" FOREIGN KEY ("item_category_id") REFERENCES "public"."item_categories"("id") ON DELETE set null ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "item_categories" ADD CONSTRAINT "item_categories_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "item_prices" ADD CONSTRAINT "item_prices_item_id_items_id_fk" FOREIGN KEY ("item_id") REFERENCES "public"."items"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "item_prices" ADD CONSTRAINT "item_prices_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "item_variants" ADD CONSTRAINT "item_variants_item_id_items_id_fk" FOREIGN KEY ("item_id") REFERENCES "public"."items"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "item_variants" ADD CONSTRAINT "item_variants_parent_item_id_items_id_fk" FOREIGN KEY ("parent_item_id") REFERENCES "public"."items"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "item_variants" ADD CONSTRAINT "item_variants_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "items" ADD CONSTRAINT "items_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "products" ADD CONSTRAINT "products_item_id_items_id_fk" FOREIGN KEY ("item_id") REFERENCES "public"."items"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "products" ADD CONSTRAINT "products_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "products" ADD CONSTRAINT "products_item_category_id_item_categories_id_fk" FOREIGN KEY ("item_category_id") REFERENCES "public"."item_categories"("id") ON DELETE set null ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "raw_materials" ADD CONSTRAINT "raw_materials_item_id_items_id_fk" FOREIGN KEY ("item_id") REFERENCES "public"."items"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "raw_materials" ADD CONSTRAINT "raw_materials_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "raw_materials" ADD CONSTRAINT "raw_materials_item_category_id_item_categories_id_fk" FOREIGN KEY ("item_category_id") REFERENCES "public"."item_categories"("id") ON DELETE set null ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "services" ADD CONSTRAINT "services_item_id_items_id_fk" FOREIGN KEY ("item_id") REFERENCES "public"."items"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "services" ADD CONSTRAINT "services_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
CREATE UNIQUE INDEX IF NOT EXISTS "components_item_id_idx" ON "components" USING btree ("item_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "components_tenant_idx" ON "components" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "components_category_idx" ON "components" USING btree ("item_category_id");--> statement-breakpoint
CREATE UNIQUE INDEX IF NOT EXISTS "item_categories_tenant_name_idx" ON "item_categories" USING btree ("tenant_id","name");--> statement-breakpoint
CREATE UNIQUE INDEX IF NOT EXISTS "item_categories_tenant_code_idx" ON "item_categories" USING btree ("tenant_id","code") WHERE code IS NOT NULL;--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "item_categories_parent_category_idx" ON "item_categories" USING btree ("parent_category_id");--> statement-breakpoint
CREATE UNIQUE INDEX IF NOT EXISTS "item_categories_tenant_name_item_type_idx" ON "item_categories" USING btree ("tenant_id","name","item_type");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "item_prices_item_price_type_idx" ON "item_prices" USING btree ("item_id","price_type");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "item_prices_tenant_idx" ON "item_prices" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "item_prices_validity_idx" ON "item_prices" USING btree ("valid_from","valid_to");--> statement-breakpoint
CREATE UNIQUE INDEX IF NOT EXISTS "item_variants_item_id_idx" ON "item_variants" USING btree ("item_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "item_variants_parent_item_idx" ON "item_variants" USING btree ("parent_item_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "item_variants_tenant_idx" ON "item_variants" USING btree ("tenant_id");--> statement-breakpoint
CREATE UNIQUE INDEX IF NOT EXISTS "items_tenant_name_idx" ON "items" USING btree ("tenant_id","name");--> statement-breakpoint
CREATE UNIQUE INDEX IF NOT EXISTS "items_tenant_code_idx" ON "items" USING btree ("tenant_id","code") WHERE code IS NOT NULL;--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "items_tenant_item_type_idx" ON "items" USING btree ("tenant_id","item_type");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "items_tenant_status_idx" ON "items" USING btree ("tenant_id","status");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "items_reference_item_idx" ON "items" USING btree ("reference_item_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "items_name_search_idx" ON "items" USING btree ("name_search_trimmed");--> statement-breakpoint
CREATE UNIQUE INDEX IF NOT EXISTS "products_item_id_idx" ON "products" USING btree ("item_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "products_tenant_idx" ON "products" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "products_category_idx" ON "products" USING btree ("item_category_id");--> statement-breakpoint
CREATE UNIQUE INDEX IF NOT EXISTS "raw_materials_item_id_idx" ON "raw_materials" USING btree ("item_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "raw_materials_tenant_idx" ON "raw_materials" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "raw_materials_category_idx" ON "raw_materials" USING btree ("item_category_id");--> statement-breakpoint
CREATE UNIQUE INDEX IF NOT EXISTS "services_item_id_idx" ON "services" USING btree ("item_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "services_tenant_idx" ON "services" USING btree ("tenant_id");