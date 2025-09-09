CREATE TABLE "sales_order_items" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"sales_order_id" uuid NOT NULL,
	"item_id" uuid NOT NULL,
	"quantity" numeric NOT NULL,
	"unit" text,
	"unit_price" numeric NOT NULL,
	"total_price" numeric NOT NULL,
	"currency" text DEFAULT 'TRY',
	"requested_delivery_date" date,
	"confirmed_delivery_date" date,
	"actual_delivery_date" date,
	"shipped_quantity" numeric,
	"remaining_quantity" numeric NOT NULL,
	"line_status" text DEFAULT 'pending',
	"item_notes" text,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "sales_order_status_history" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"sales_order_id" uuid NOT NULL,
	"old_status" text,
	"new_status" text NOT NULL,
	"changed_by" uuid NOT NULL,
	"change_reason" text,
	"notes" text,
	"changed_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "sales_orders" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"order_number" text NOT NULL,
	"customer_id" uuid NOT NULL,
	"order_date" date DEFAULT now() NOT NULL,
	"requested_delivery_date" date,
	"confirmed_delivery_date" date,
	"status" text DEFAULT 'draft' NOT NULL,
	"total_amount" numeric,
	"currency" text DEFAULT 'TRY' NOT NULL,
	"shipping_address_id" uuid,
	"shipping_instructions" text,
	"approved_by" uuid,
	"approved_at" timestamp (6) with time zone,
	"notes" text,
	"created_by" uuid NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
ALTER TABLE "bom_components" ALTER COLUMN "quantity" SET DATA TYPE numeric;--> statement-breakpoint
ALTER TABLE "bom_components" ALTER COLUMN "run_time_per_unit_seconds" SET DATA TYPE numeric;--> statement-breakpoint
ALTER TABLE "bom_components" ALTER COLUMN "run_time_per_unit_seconds" DROP DEFAULT;--> statement-breakpoint
ALTER TABLE "bom_components" ALTER COLUMN "run_time_per_unit_seconds" DROP NOT NULL;--> statement-breakpoint
ALTER TABLE "boms" ALTER COLUMN "production_quantity" SET DATA TYPE numeric;--> statement-breakpoint
ALTER TABLE "boms" ALTER COLUMN "production_quantity" DROP DEFAULT;--> statement-breakpoint
ALTER TABLE "boms" ALTER COLUMN "production_quantity" DROP NOT NULL;--> statement-breakpoint
ALTER TABLE "engineering_change_orders" ALTER COLUMN "estimated_cost_impact" SET DATA TYPE numeric;--> statement-breakpoint
ALTER TABLE "products" ADD COLUMN "design_ownership" text;--> statement-breakpoint
ALTER TABLE "products" ADD COLUMN "fulfillment_strategy" text;--> statement-breakpoint
DO $$ BEGIN
  IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'tenants' AND column_name = 'slug') THEN
    ALTER TABLE "tenants" ADD COLUMN "slug" text;
  END IF;
END $$;--> statement-breakpoint
DO $$ BEGIN
  IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'tenants' AND column_name = 'subdomain') THEN
    ALTER TABLE "tenants" ADD COLUMN "subdomain" text;
  END IF;
END $$;--> statement-breakpoint
ALTER TABLE "tenants" ADD COLUMN "description" text;--> statement-breakpoint
ALTER TABLE "tenants" ADD COLUMN "industry" text;--> statement-breakpoint
ALTER TABLE "sales_order_items" ADD CONSTRAINT "sales_order_items_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "sales_order_items" ADD CONSTRAINT "sales_order_items_sales_order_id_sales_orders_id_fk" FOREIGN KEY ("sales_order_id") REFERENCES "public"."sales_orders"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "sales_order_items" ADD CONSTRAINT "sales_order_items_item_id_items_id_fk" FOREIGN KEY ("item_id") REFERENCES "public"."items"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "sales_order_status_history" ADD CONSTRAINT "sales_order_status_history_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "sales_order_status_history" ADD CONSTRAINT "sales_order_status_history_sales_order_id_sales_orders_id_fk" FOREIGN KEY ("sales_order_id") REFERENCES "public"."sales_orders"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "sales_order_status_history" ADD CONSTRAINT "sales_order_status_history_changed_by_users_id_fk" FOREIGN KEY ("changed_by") REFERENCES "public"."users"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "sales_orders" ADD CONSTRAINT "sales_orders_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "sales_orders" ADD CONSTRAINT "sales_orders_customer_id_customers_id_fk" FOREIGN KEY ("customer_id") REFERENCES "public"."customers"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "sales_orders" ADD CONSTRAINT "sales_orders_shipping_address_id_addresses_id_fk" FOREIGN KEY ("shipping_address_id") REFERENCES "public"."addresses"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "sales_orders" ADD CONSTRAINT "sales_orders_approved_by_users_id_fk" FOREIGN KEY ("approved_by") REFERENCES "public"."users"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "sales_orders" ADD CONSTRAINT "sales_orders_created_by_users_id_fk" FOREIGN KEY ("created_by") REFERENCES "public"."users"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
CREATE INDEX "sales_order_items_sales_order_idx" ON "sales_order_items" USING btree ("sales_order_id");--> statement-breakpoint
CREATE INDEX "sales_order_items_item_idx" ON "sales_order_items" USING btree ("item_id");--> statement-breakpoint
CREATE INDEX "sales_order_items_tenant_idx" ON "sales_order_items" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX "sales_order_items_line_status_idx" ON "sales_order_items" USING btree ("line_status");--> statement-breakpoint
CREATE INDEX "sales_order_status_history_sales_order_idx" ON "sales_order_status_history" USING btree ("sales_order_id");--> statement-breakpoint
CREATE INDEX "sales_order_status_history_tenant_idx" ON "sales_order_status_history" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX "sales_order_status_history_changed_by_idx" ON "sales_order_status_history" USING btree ("changed_by");--> statement-breakpoint
CREATE UNIQUE INDEX "sales_orders_tenant_order_number_unique" ON "sales_orders" USING btree ("tenant_id","order_number");--> statement-breakpoint
CREATE INDEX "sales_orders_tenant_customer_idx" ON "sales_orders" USING btree ("tenant_id","customer_id");--> statement-breakpoint
CREATE INDEX "sales_orders_tenant_status_idx" ON "sales_orders" USING btree ("tenant_id","status");--> statement-breakpoint
CREATE INDEX "sales_orders_order_date_idx" ON "sales_orders" USING btree ("order_date");--> statement-breakpoint
CREATE INDEX "sales_orders_requested_delivery_date_idx" ON "sales_orders" USING btree ("requested_delivery_date");--> statement-breakpoint
CREATE INDEX "sales_orders_created_by_idx" ON "sales_orders" USING btree ("created_by");--> statement-breakpoint
DO $$ BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_indexes WHERE indexname = 'tenants_slug_idx') THEN
    CREATE UNIQUE INDEX "tenants_slug_idx" ON "tenants" USING btree ("slug");
  END IF;
END $$;--> statement-breakpoint
DO $$ BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_indexes WHERE indexname = 'tenants_subdomain_idx') THEN
    CREATE UNIQUE INDEX "tenants_subdomain_idx" ON "tenants" USING btree ("subdomain");
  END IF;
END $$;--> statement-breakpoint
DO $$ BEGIN
  IF NOT EXISTS (SELECT 1 FROM information_schema.table_constraints WHERE constraint_name = 'tenants_slug_unique') THEN
    ALTER TABLE "tenants" ADD CONSTRAINT "tenants_slug_unique" UNIQUE("slug");
  END IF;
END $$;--> statement-breakpoint
DO $$ BEGIN
  IF NOT EXISTS (SELECT 1 FROM information_schema.table_constraints WHERE constraint_name = 'tenants_subdomain_unique') THEN
    ALTER TABLE "tenants" ADD CONSTRAINT "tenants_subdomain_unique" UNIQUE("subdomain");
  END IF;
END $$;