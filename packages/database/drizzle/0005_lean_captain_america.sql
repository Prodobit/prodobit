CREATE TABLE "asset_assignments" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"asset_id" uuid NOT NULL,
	"assigned_to" uuid NOT NULL,
	"assigned_type" text NOT NULL,
	"assigned_by" uuid NOT NULL,
	"assignment_date" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"expected_return_date" date,
	"actual_return_date" timestamp (6) with time zone,
	"status" text DEFAULT 'active' NOT NULL,
	"transferred_to_assignment_id" uuid,
	"notes" text,
	"signature_image_id" uuid,
	"assignment_reason" text,
	"return_condition" text,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "asset_purchases" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"asset_id" uuid NOT NULL,
	"purchase_date" date NOT NULL,
	"purchase_price" numeric(15, 2) NOT NULL,
	"currency" text DEFAULT 'TRY' NOT NULL,
	"vendor_id" uuid,
	"invoice_number" text,
	"po_number" text,
	"purchase_type" text DEFAULT 'new' NOT NULL,
	"lease_info" jsonb,
	"notes" text,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "asset_warranties" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"asset_id" uuid NOT NULL,
	"warranty_type" text NOT NULL,
	"provider_id" uuid,
	"start_date" date NOT NULL,
	"expiry_date" date NOT NULL,
	"cost" numeric(15, 2),
	"currency" text DEFAULT 'TRY',
	"contract_number" text,
	"coverage_details" jsonb,
	"is_active" boolean DEFAULT true NOT NULL,
	"notes" text,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "department_members" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"department_id" uuid NOT NULL,
	"user_id" uuid NOT NULL,
	"role" text DEFAULT 'member' NOT NULL,
	"joined_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"left_at" timestamp (6) with time zone,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "departments" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"parent_department_id" uuid,
	"name" text NOT NULL,
	"code" text NOT NULL,
	"description" text,
	"location_id" uuid,
	"manager_id" uuid,
	"is_active" boolean DEFAULT true NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
ALTER TABLE "assets" ADD COLUMN "serial_number" text;--> statement-breakpoint
ALTER TABLE "assets" ADD COLUMN "qr_code" text;--> statement-breakpoint
ALTER TABLE "asset_assignments" ADD CONSTRAINT "asset_assignments_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "asset_assignments" ADD CONSTRAINT "asset_assignments_asset_id_assets_id_fk" FOREIGN KEY ("asset_id") REFERENCES "public"."assets"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "asset_purchases" ADD CONSTRAINT "asset_purchases_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "asset_purchases" ADD CONSTRAINT "asset_purchases_asset_id_assets_id_fk" FOREIGN KEY ("asset_id") REFERENCES "public"."assets"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "asset_purchases" ADD CONSTRAINT "asset_purchases_vendor_id_parties_id_fk" FOREIGN KEY ("vendor_id") REFERENCES "public"."parties"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "asset_warranties" ADD CONSTRAINT "asset_warranties_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "asset_warranties" ADD CONSTRAINT "asset_warranties_asset_id_assets_id_fk" FOREIGN KEY ("asset_id") REFERENCES "public"."assets"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "asset_warranties" ADD CONSTRAINT "asset_warranties_provider_id_parties_id_fk" FOREIGN KEY ("provider_id") REFERENCES "public"."parties"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "department_members" ADD CONSTRAINT "department_members_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "department_members" ADD CONSTRAINT "department_members_department_id_departments_id_fk" FOREIGN KEY ("department_id") REFERENCES "public"."departments"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "departments" ADD CONSTRAINT "departments_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "departments" ADD CONSTRAINT "departments_location_id_locations_id_fk" FOREIGN KEY ("location_id") REFERENCES "public"."locations"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
CREATE INDEX "asset_assignments_tenant_asset_idx" ON "asset_assignments" USING btree ("tenant_id","asset_id");--> statement-breakpoint
CREATE INDEX "asset_assignments_assigned_to_idx" ON "asset_assignments" USING btree ("assigned_to","assigned_type");--> statement-breakpoint
CREATE INDEX "asset_assignments_status_idx" ON "asset_assignments" USING btree ("status");--> statement-breakpoint
CREATE INDEX "asset_assignments_assignment_date_idx" ON "asset_assignments" USING btree ("assignment_date");--> statement-breakpoint
CREATE INDEX "asset_purchases_tenant_asset_idx" ON "asset_purchases" USING btree ("tenant_id","asset_id");--> statement-breakpoint
CREATE INDEX "asset_purchases_purchase_date_idx" ON "asset_purchases" USING btree ("purchase_date");--> statement-breakpoint
CREATE INDEX "asset_purchases_vendor_idx" ON "asset_purchases" USING btree ("vendor_id");--> statement-breakpoint
CREATE INDEX "asset_warranties_tenant_asset_idx" ON "asset_warranties" USING btree ("tenant_id","asset_id");--> statement-breakpoint
CREATE INDEX "asset_warranties_tenant_active_idx" ON "asset_warranties" USING btree ("tenant_id","is_active");--> statement-breakpoint
CREATE INDEX "asset_warranties_expiry_date_idx" ON "asset_warranties" USING btree ("expiry_date");--> statement-breakpoint
CREATE INDEX "asset_warranties_warranty_type_idx" ON "asset_warranties" USING btree ("warranty_type");--> statement-breakpoint
CREATE UNIQUE INDEX "department_members_dept_user_idx" ON "department_members" USING btree ("department_id","user_id");--> statement-breakpoint
CREATE INDEX "department_members_tenant_user_idx" ON "department_members" USING btree ("tenant_id","user_id");--> statement-breakpoint
CREATE UNIQUE INDEX "departments_tenant_code_idx" ON "departments" USING btree ("tenant_id","code");--> statement-breakpoint
CREATE INDEX "departments_tenant_parent_idx" ON "departments" USING btree ("tenant_id","parent_department_id");--> statement-breakpoint
CREATE INDEX "departments_tenant_active_idx" ON "departments" USING btree ("tenant_id","is_active");--> statement-breakpoint
CREATE INDEX "departments_location_idx" ON "departments" USING btree ("location_id");--> statement-breakpoint
CREATE UNIQUE INDEX "assets_qr_code_idx" ON "assets" USING btree ("qr_code");