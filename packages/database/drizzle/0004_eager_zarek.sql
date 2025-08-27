CREATE TABLE IF NOT EXISTS "bom_components" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"bom_id" uuid NOT NULL,
	"component_item_id" uuid NOT NULL,
	"parent_component_id" uuid,
	"quantity" numeric(15, 4) NOT NULL,
	"unit" varchar(50) NOT NULL,
	"component_type" varchar(50) DEFAULT 'material' NOT NULL,
	"is_optional" boolean DEFAULT false NOT NULL,
	"is_critical" boolean DEFAULT false NOT NULL,
	"phantom_policy" varchar(50) DEFAULT 'always_explode' NOT NULL,
	"sourcing_type" varchar(50) DEFAULT 'buy' NOT NULL,
	"explode_in_mrp" boolean DEFAULT true NOT NULL,
	"explode_in_costing" boolean DEFAULT true NOT NULL,
	"explode_in_picking" boolean DEFAULT true NOT NULL,
	"inherited_lead_time" integer,
	"setup_time_minutes" integer DEFAULT 0 NOT NULL,
	"run_time_per_unit_seconds" numeric(8, 2) DEFAULT '0.0' NOT NULL,
	"valid_from" date DEFAULT now() NOT NULL,
	"valid_to" date,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE IF NOT EXISTS "bom_version_history" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"bom_id" uuid NOT NULL,
	"eco_id" uuid,
	"old_version" varchar(50) NOT NULL,
	"new_version" varchar(50) NOT NULL,
	"change_summary" text NOT NULL,
	"changed_by" uuid NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE IF NOT EXISTS "boms" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"item_id" uuid NOT NULL,
	"bom_code" varchar(255) NOT NULL,
	"name" varchar(255) NOT NULL,
	"description" text,
	"status" varchar(50) DEFAULT 'draft' NOT NULL,
	"version" varchar(50) DEFAULT '1.0' NOT NULL,
	"is_current_version" boolean DEFAULT true NOT NULL,
	"production_quantity" numeric(15, 4) DEFAULT '1.0' NOT NULL,
	"production_unit" varchar(50),
	"valid_from" date DEFAULT now() NOT NULL,
	"valid_to" date,
	"engineer_id" uuid,
	"approved_by" uuid,
	"approved_at" timestamp (6) with time zone,
	"is_phantom_bom" boolean DEFAULT false NOT NULL,
	"phantom_explosion_policy" varchar(50) DEFAULT 'immediate' NOT NULL,
	"manufacturing_policy" varchar(50) DEFAULT 'assemble_to_stock' NOT NULL,
	"planning_policy" varchar(50) DEFAULT 'mrp' NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone,
	CONSTRAINT "boms_tenant_id_bom_code_unique" UNIQUE("tenant_id","bom_code"),
	CONSTRAINT "boms_item_id_version_unique" UNIQUE("item_id","version")
);
--> statement-breakpoint
CREATE TABLE IF NOT EXISTS "eco_bom_changes" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"eco_id" uuid NOT NULL,
	"bom_id" uuid NOT NULL,
	"change_action" varchar(50) NOT NULL,
	"old_bom_component_id" uuid,
	"new_bom_component_id" uuid,
	"change_description" text NOT NULL,
	"old_values" json,
	"new_values" json,
	"is_implemented" boolean DEFAULT false NOT NULL,
	"implemented_at" timestamp (6) with time zone,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE IF NOT EXISTS "engineering_change_orders" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"eco_number" varchar(255) NOT NULL,
	"title" varchar(255) NOT NULL,
	"description" text NOT NULL,
	"status" varchar(50) DEFAULT 'draft' NOT NULL,
	"change_type" varchar(50) NOT NULL,
	"priority" varchar(50) DEFAULT 'medium' NOT NULL,
	"affected_bom_ids" json DEFAULT '[]'::json NOT NULL,
	"reason_for_change" text NOT NULL,
	"impact_analysis" text,
	"estimated_cost_impact" numeric(15, 2),
	"cost_currency" varchar(3) DEFAULT 'TRY' NOT NULL,
	"requested_completion_date" date,
	"actual_completion_date" date,
	"requested_by" uuid NOT NULL,
	"assigned_to" uuid,
	"approved_by" uuid,
	"approved_at" timestamp (6) with time zone,
	"rejected_by" uuid,
	"rejected_at" timestamp (6) with time zone,
	"rejection_reason" text,
	"implemented_by" uuid,
	"implemented_at" timestamp (6) with time zone,
	"implementation_notes" text,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone,
	CONSTRAINT "engineering_change_orders_tenant_id_eco_number_unique" UNIQUE("tenant_id","eco_number")
);
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "bom_components" ADD CONSTRAINT "bom_components_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "bom_components" ADD CONSTRAINT "bom_components_bom_id_boms_id_fk" FOREIGN KEY ("bom_id") REFERENCES "public"."boms"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "bom_components" ADD CONSTRAINT "bom_components_component_item_id_items_id_fk" FOREIGN KEY ("component_item_id") REFERENCES "public"."items"("id") ON DELETE restrict ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "bom_version_history" ADD CONSTRAINT "bom_version_history_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "bom_version_history" ADD CONSTRAINT "bom_version_history_bom_id_boms_id_fk" FOREIGN KEY ("bom_id") REFERENCES "public"."boms"("id") ON DELETE restrict ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "bom_version_history" ADD CONSTRAINT "bom_version_history_eco_id_engineering_change_orders_id_fk" FOREIGN KEY ("eco_id") REFERENCES "public"."engineering_change_orders"("id") ON DELETE set null ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "boms" ADD CONSTRAINT "boms_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "boms" ADD CONSTRAINT "boms_item_id_items_id_fk" FOREIGN KEY ("item_id") REFERENCES "public"."items"("id") ON DELETE restrict ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "eco_bom_changes" ADD CONSTRAINT "eco_bom_changes_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "eco_bom_changes" ADD CONSTRAINT "eco_bom_changes_eco_id_engineering_change_orders_id_fk" FOREIGN KEY ("eco_id") REFERENCES "public"."engineering_change_orders"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "eco_bom_changes" ADD CONSTRAINT "eco_bom_changes_bom_id_boms_id_fk" FOREIGN KEY ("bom_id") REFERENCES "public"."boms"("id") ON DELETE restrict ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "eco_bom_changes" ADD CONSTRAINT "eco_bom_changes_old_bom_component_id_bom_components_id_fk" FOREIGN KEY ("old_bom_component_id") REFERENCES "public"."bom_components"("id") ON DELETE set null ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "eco_bom_changes" ADD CONSTRAINT "eco_bom_changes_new_bom_component_id_bom_components_id_fk" FOREIGN KEY ("new_bom_component_id") REFERENCES "public"."bom_components"("id") ON DELETE set null ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "engineering_change_orders" ADD CONSTRAINT "engineering_change_orders_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "bom_components_bom_id_index" ON "bom_components" USING btree ("bom_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "bom_components_component_item_id_index" ON "bom_components" USING btree ("component_item_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "bom_components_parent_component_id_index" ON "bom_components" USING btree ("parent_component_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "bom_components_tenant_id_index" ON "bom_components" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "bom_components_component_type_index" ON "bom_components" USING btree ("component_type");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "bom_components_sourcing_type_index" ON "bom_components" USING btree ("sourcing_type");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "bom_components_explode_in_mrp_index" ON "bom_components" USING btree ("explode_in_mrp");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "bom_version_history_bom_id_index" ON "bom_version_history" USING btree ("bom_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "bom_version_history_eco_id_index" ON "bom_version_history" USING btree ("eco_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "bom_version_history_tenant_id_index" ON "bom_version_history" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "bom_version_history_changed_by_index" ON "bom_version_history" USING btree ("changed_by");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "boms_tenant_id_item_id_index" ON "boms" USING btree ("tenant_id","item_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "boms_tenant_id_status_index" ON "boms" USING btree ("tenant_id","status");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "boms_is_current_version_index" ON "boms" USING btree ("is_current_version");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "boms_valid_from_valid_to_index" ON "boms" USING btree ("valid_from","valid_to");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "boms_is_phantom_bom_index" ON "boms" USING btree ("is_phantom_bom");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "boms_manufacturing_policy_index" ON "boms" USING btree ("manufacturing_policy");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "eco_bom_changes_eco_id_index" ON "eco_bom_changes" USING btree ("eco_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "eco_bom_changes_bom_id_index" ON "eco_bom_changes" USING btree ("bom_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "eco_bom_changes_tenant_id_index" ON "eco_bom_changes" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "eco_bom_changes_change_action_index" ON "eco_bom_changes" USING btree ("change_action");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "eco_bom_changes_is_implemented_index" ON "eco_bom_changes" USING btree ("is_implemented");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "engineering_change_orders_tenant_id_status_index" ON "engineering_change_orders" USING btree ("tenant_id","status");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "engineering_change_orders_change_type_index" ON "engineering_change_orders" USING btree ("change_type");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "engineering_change_orders_priority_index" ON "engineering_change_orders" USING btree ("priority");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "engineering_change_orders_requested_by_index" ON "engineering_change_orders" USING btree ("requested_by");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "engineering_change_orders_assigned_to_index" ON "engineering_change_orders" USING btree ("assigned_to");--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "engineering_change_orders_requested_completion_date_index" ON "engineering_change_orders" USING btree ("requested_completion_date");