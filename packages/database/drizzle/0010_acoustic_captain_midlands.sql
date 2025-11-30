CREATE TABLE "asset_stock_usages" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"asset_id" uuid NOT NULL,
	"item_id" uuid NOT NULL,
	"stock_transaction_id" uuid,
	"maintenance_record_id" uuid,
	"calibration_record_id" uuid,
	"usage_type" text NOT NULL,
	"quantity" numeric(15, 3) NOT NULL,
	"unit" text NOT NULL,
	"used_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"used_by_id" uuid,
	"unit_cost" numeric(15, 4),
	"total_cost" numeric(15, 4),
	"currency" text DEFAULT 'TRY',
	"notes" text,
	"lot_number" text,
	"serial_number" text,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone,
	CONSTRAINT "asset_stock_usages_quantity_check" CHECK ("asset_stock_usages"."quantity" > 0)
);
--> statement-breakpoint
CREATE TABLE "consumables" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"item_id" uuid NOT NULL,
	"tenant_id" uuid NOT NULL,
	"unit" text,
	"item_category_id" uuid,
	"shelf_life_days" numeric(6, 0),
	"storage_conditions" text,
	"hazard_class" text,
	"is_hazardous" boolean DEFAULT false NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "spare_parts" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"item_id" uuid NOT NULL,
	"tenant_id" uuid NOT NULL,
	"unit" text,
	"item_category_id" uuid,
	"part_number" text,
	"manufacturer" text,
	"warranty_period_days" numeric(6, 0),
	"is_critical" boolean DEFAULT false NOT NULL,
	"lead_time_days" numeric(6, 0),
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
ALTER TABLE "asset_stock_usages" ADD CONSTRAINT "asset_stock_usages_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "asset_stock_usages" ADD CONSTRAINT "asset_stock_usages_asset_id_assets_id_fk" FOREIGN KEY ("asset_id") REFERENCES "public"."assets"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "asset_stock_usages" ADD CONSTRAINT "asset_stock_usages_item_id_items_id_fk" FOREIGN KEY ("item_id") REFERENCES "public"."items"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "asset_stock_usages" ADD CONSTRAINT "asset_stock_usages_stock_transaction_id_stock_transactions_id_fk" FOREIGN KEY ("stock_transaction_id") REFERENCES "public"."stock_transactions"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "asset_stock_usages" ADD CONSTRAINT "asset_stock_usages_maintenance_record_id_maintenance_records_id_fk" FOREIGN KEY ("maintenance_record_id") REFERENCES "public"."maintenance_records"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "asset_stock_usages" ADD CONSTRAINT "asset_stock_usages_calibration_record_id_calibration_records_id_fk" FOREIGN KEY ("calibration_record_id") REFERENCES "public"."calibration_records"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "asset_stock_usages" ADD CONSTRAINT "asset_stock_usages_used_by_id_users_id_fk" FOREIGN KEY ("used_by_id") REFERENCES "public"."users"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "consumables" ADD CONSTRAINT "consumables_item_id_items_id_fk" FOREIGN KEY ("item_id") REFERENCES "public"."items"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "consumables" ADD CONSTRAINT "consumables_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "consumables" ADD CONSTRAINT "consumables_item_category_id_item_categories_id_fk" FOREIGN KEY ("item_category_id") REFERENCES "public"."item_categories"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "spare_parts" ADD CONSTRAINT "spare_parts_item_id_items_id_fk" FOREIGN KEY ("item_id") REFERENCES "public"."items"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "spare_parts" ADD CONSTRAINT "spare_parts_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "spare_parts" ADD CONSTRAINT "spare_parts_item_category_id_item_categories_id_fk" FOREIGN KEY ("item_category_id") REFERENCES "public"."item_categories"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
CREATE INDEX "asset_stock_usages_tenant_asset_idx" ON "asset_stock_usages" USING btree ("tenant_id","asset_id");--> statement-breakpoint
CREATE INDEX "asset_stock_usages_tenant_item_idx" ON "asset_stock_usages" USING btree ("tenant_id","item_id");--> statement-breakpoint
CREATE INDEX "asset_stock_usages_stock_transaction_idx" ON "asset_stock_usages" USING btree ("stock_transaction_id");--> statement-breakpoint
CREATE INDEX "asset_stock_usages_maintenance_record_idx" ON "asset_stock_usages" USING btree ("maintenance_record_id");--> statement-breakpoint
CREATE INDEX "asset_stock_usages_calibration_record_idx" ON "asset_stock_usages" USING btree ("calibration_record_id");--> statement-breakpoint
CREATE INDEX "asset_stock_usages_usage_type_idx" ON "asset_stock_usages" USING btree ("tenant_id","usage_type");--> statement-breakpoint
CREATE INDEX "asset_stock_usages_used_at_idx" ON "asset_stock_usages" USING btree ("used_at");--> statement-breakpoint
CREATE INDEX "asset_stock_usages_used_by_idx" ON "asset_stock_usages" USING btree ("used_by_id");--> statement-breakpoint
CREATE UNIQUE INDEX "consumables_item_id_idx" ON "consumables" USING btree ("item_id");--> statement-breakpoint
CREATE INDEX "consumables_tenant_idx" ON "consumables" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX "consumables_category_idx" ON "consumables" USING btree ("item_category_id");--> statement-breakpoint
CREATE INDEX "consumables_hazardous_idx" ON "consumables" USING btree ("tenant_id","is_hazardous");--> statement-breakpoint
CREATE UNIQUE INDEX "spare_parts_item_id_idx" ON "spare_parts" USING btree ("item_id");--> statement-breakpoint
CREATE INDEX "spare_parts_tenant_idx" ON "spare_parts" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX "spare_parts_category_idx" ON "spare_parts" USING btree ("item_category_id");--> statement-breakpoint
CREATE INDEX "spare_parts_part_number_idx" ON "spare_parts" USING btree ("tenant_id","part_number");--> statement-breakpoint
CREATE INDEX "spare_parts_critical_idx" ON "spare_parts" USING btree ("tenant_id","is_critical");