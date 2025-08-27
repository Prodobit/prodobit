CREATE TABLE IF NOT EXISTS "lot_sources" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"lot_id" uuid NOT NULL,
	"source_type" varchar(50) NOT NULL,
	"source_id" uuid NOT NULL,
	"quantity" numeric(15, 3) NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone,
	CONSTRAINT "uk_lot_source" UNIQUE("tenant_id","lot_id","source_type","source_id"),
	CONSTRAINT "lot_sources_quantity_check" CHECK ("lot_sources"."quantity" > 0)
);
--> statement-breakpoint
CREATE TABLE IF NOT EXISTS "lots" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"lot_number" varchar(255) NOT NULL,
	"actual_quantity" numeric(15, 3) DEFAULT '0' NOT NULL,
	"expected_quantity" numeric(15, 3) DEFAULT '0' NOT NULL,
	"parent_lot_id" uuid,
	"location_id" uuid,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone,
	CONSTRAINT "lots_tenant_id_lot_number_unique" UNIQUE("tenant_id","lot_number"),
	CONSTRAINT "lot_actual_quantity_check" CHECK ("lots"."actual_quantity" >= 0),
	CONSTRAINT "lot_expected_quantity_check" CHECK ("lots"."expected_quantity" >= 0)
);
--> statement-breakpoint
CREATE TABLE IF NOT EXISTS "stock_transaction_sources" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"transaction_id" uuid NOT NULL,
	"source_type" varchar(50) NOT NULL,
	"source_id" uuid NOT NULL,
	"quantity" numeric(15, 3) NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone,
	CONSTRAINT "uk_transaction_source" UNIQUE("tenant_id","transaction_id","source_type","source_id"),
	CONSTRAINT "stock_transaction_sources_quantity_check" CHECK ("stock_transaction_sources"."quantity" > 0)
);
--> statement-breakpoint
CREATE TABLE IF NOT EXISTS "stock_transactions" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"stock_id" uuid NOT NULL,
	"lot_id" uuid,
	"item_id" uuid NOT NULL,
	"transaction_type" varchar(50) NOT NULL,
	"quantity" numeric(15, 3) NOT NULL,
	"source_location_id" uuid,
	"destination_location_id" uuid,
	"status" varchar(50) DEFAULT 'pending' NOT NULL,
	"transaction_date" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"description" text,
	"created_by" uuid,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone,
	CONSTRAINT "stock_transaction_quantity_check" CHECK ("stock_transactions"."quantity" != 0)
);
--> statement-breakpoint
CREATE TABLE IF NOT EXISTS "stocks" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"item_id" uuid NOT NULL,
	"lot_id" uuid,
	"quantity" numeric(15, 3) NOT NULL,
	"location_id" uuid NOT NULL,
	"status" varchar(50) DEFAULT 'available' NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone,
	CONSTRAINT "uk_stock_item_lot_location" UNIQUE("tenant_id","item_id","lot_id","location_id"),
	CONSTRAINT "stock_quantity_check" CHECK ("stocks"."quantity" >= 0)
);
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "lot_sources" ADD CONSTRAINT "lot_sources_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "lot_sources" ADD CONSTRAINT "lot_sources_lot_id_lots_id_fk" FOREIGN KEY ("lot_id") REFERENCES "public"."lots"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "lots" ADD CONSTRAINT "lots_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "lots" ADD CONSTRAINT "lots_location_id_locations_id_fk" FOREIGN KEY ("location_id") REFERENCES "public"."locations"("id") ON DELETE restrict ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "stock_transaction_sources" ADD CONSTRAINT "stock_transaction_sources_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "stock_transaction_sources" ADD CONSTRAINT "stock_transaction_sources_transaction_id_stock_transactions_id_fk" FOREIGN KEY ("transaction_id") REFERENCES "public"."stock_transactions"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "stock_transactions" ADD CONSTRAINT "stock_transactions_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "stock_transactions" ADD CONSTRAINT "stock_transactions_stock_id_stocks_id_fk" FOREIGN KEY ("stock_id") REFERENCES "public"."stocks"("id") ON DELETE restrict ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "stock_transactions" ADD CONSTRAINT "stock_transactions_lot_id_lots_id_fk" FOREIGN KEY ("lot_id") REFERENCES "public"."lots"("id") ON DELETE restrict ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "stock_transactions" ADD CONSTRAINT "stock_transactions_item_id_items_id_fk" FOREIGN KEY ("item_id") REFERENCES "public"."items"("id") ON DELETE restrict ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "stock_transactions" ADD CONSTRAINT "stock_transactions_source_location_id_locations_id_fk" FOREIGN KEY ("source_location_id") REFERENCES "public"."locations"("id") ON DELETE restrict ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "stock_transactions" ADD CONSTRAINT "stock_transactions_destination_location_id_locations_id_fk" FOREIGN KEY ("destination_location_id") REFERENCES "public"."locations"("id") ON DELETE restrict ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "stocks" ADD CONSTRAINT "stocks_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "stocks" ADD CONSTRAINT "stocks_item_id_items_id_fk" FOREIGN KEY ("item_id") REFERENCES "public"."items"("id") ON DELETE restrict ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "stocks" ADD CONSTRAINT "stocks_lot_id_lots_id_fk" FOREIGN KEY ("lot_id") REFERENCES "public"."lots"("id") ON DELETE restrict ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "stocks" ADD CONSTRAINT "stocks_location_id_locations_id_fk" FOREIGN KEY ("location_id") REFERENCES "public"."locations"("id") ON DELETE restrict ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "lot_sources_tenant_id_lot_id_index" ON "lot_sources" USING btree ("tenant_id","lot_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "lot_sources_tenant_id_source_type_index" ON "lot_sources" USING btree ("tenant_id","source_type");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "lot_sources_tenant_id_source_id_index" ON "lot_sources" USING btree ("tenant_id","source_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "lot_sources_tenant_id_index" ON "lot_sources" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "lots_tenant_id_parent_lot_id_index" ON "lots" USING btree ("tenant_id","parent_lot_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "lots_tenant_id_location_id_index" ON "lots" USING btree ("tenant_id","location_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "lots_tenant_id_index" ON "lots" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "stock_transaction_sources_tenant_id_transaction_id_index" ON "stock_transaction_sources" USING btree ("tenant_id","transaction_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "stock_transaction_sources_tenant_id_source_type_index" ON "stock_transaction_sources" USING btree ("tenant_id","source_type");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "stock_transaction_sources_tenant_id_source_id_index" ON "stock_transaction_sources" USING btree ("tenant_id","source_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "stock_transaction_sources_tenant_id_index" ON "stock_transaction_sources" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "stock_transactions_tenant_id_stock_id_index" ON "stock_transactions" USING btree ("tenant_id","stock_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "stock_transactions_tenant_id_lot_id_index" ON "stock_transactions" USING btree ("tenant_id","lot_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "stock_transactions_tenant_id_item_id_index" ON "stock_transactions" USING btree ("tenant_id","item_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "stock_transactions_tenant_id_transaction_type_index" ON "stock_transactions" USING btree ("tenant_id","transaction_type");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "stock_transactions_tenant_id_source_location_id_index" ON "stock_transactions" USING btree ("tenant_id","source_location_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "stock_transactions_tenant_id_destination_location_id_index" ON "stock_transactions" USING btree ("tenant_id","destination_location_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "stock_transactions_tenant_id_transaction_date_index" ON "stock_transactions" USING btree ("tenant_id","transaction_date");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "stock_transactions_tenant_id_created_by_index" ON "stock_transactions" USING btree ("tenant_id","created_by");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "stock_transactions_tenant_id_status_index" ON "stock_transactions" USING btree ("tenant_id","status");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "stock_transactions_tenant_id_index" ON "stock_transactions" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "stocks_tenant_id_item_id_index" ON "stocks" USING btree ("tenant_id","item_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "stocks_tenant_id_lot_id_index" ON "stocks" USING btree ("tenant_id","lot_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "stocks_tenant_id_location_id_index" ON "stocks" USING btree ("tenant_id","location_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "stocks_tenant_id_status_index" ON "stocks" USING btree ("tenant_id","status");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "stocks_tenant_id_index" ON "stocks" USING btree ("tenant_id");