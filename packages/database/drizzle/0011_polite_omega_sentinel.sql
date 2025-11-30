CREATE TYPE "public"."asset_status" AS ENUM('active', 'inactive', 'maintenance', 'repair', 'calibration', 'inspection', 'reserved', 'in_transit', 'quarantine', 'decommissioned', 'disposed', 'lost', 'stolen');--> statement-breakpoint
CREATE TYPE "public"."meter_type" AS ENUM('hours', 'kilometers', 'miles', 'cycles', 'units', 'liters', 'gallons', 'kwh', 'custom');--> statement-breakpoint
CREATE TYPE "public"."reading_source" AS ENUM('manual', 'iot', 'import', 'system');--> statement-breakpoint
CREATE TYPE "public"."status_change_reason" AS ENUM('scheduled_maintenance', 'unscheduled_maintenance', 'breakdown', 'calibration_due', 'inspection_required', 'relocation', 'end_of_life', 'sale', 'transfer', 'damage', 'theft', 'loss', 'quarantine_quality', 'quarantine_safety', 'return_from_maintenance', 'return_from_calibration', 'commissioning', 'decommissioning', 'user_request', 'system_automatic', 'other');--> statement-breakpoint
CREATE TYPE "public"."trigger_mode" AS ENUM('first', 'all');--> statement-breakpoint
CREATE TYPE "public"."trigger_type" AS ENUM('time', 'meter', 'both');--> statement-breakpoint
CREATE TABLE "asset_meter_readings" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"meter_id" uuid NOT NULL,
	"asset_id" uuid NOT NULL,
	"reading" numeric(15, 3) NOT NULL,
	"reading_date" timestamp with time zone NOT NULL,
	"reading_source" "reading_source" DEFAULT 'manual' NOT NULL,
	"previous_reading" numeric(15, 3),
	"usage_since_last_reading" numeric(15, 3),
	"is_rollover" boolean DEFAULT false NOT NULL,
	"rollover_count" numeric(6, 0) DEFAULT '0',
	"recorded_by_id" uuid,
	"notes" text,
	"external_id" text,
	"raw_value" text,
	"inserted_at" timestamp with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp with time zone
);
--> statement-breakpoint
CREATE TABLE "asset_meters" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"asset_id" uuid NOT NULL,
	"meter_type" "meter_type" DEFAULT 'hours' NOT NULL,
	"name" text NOT NULL,
	"unit" text NOT NULL,
	"description" text,
	"current_reading" numeric(15, 3) DEFAULT '0' NOT NULL,
	"last_reading_date" timestamp with time zone,
	"initial_reading" numeric(15, 3) DEFAULT '0' NOT NULL,
	"installation_date" timestamp with time zone,
	"rollover_value" numeric(15, 3),
	"has_rollover" boolean DEFAULT false NOT NULL,
	"is_active" boolean DEFAULT true NOT NULL,
	"inserted_at" timestamp with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp with time zone
);
--> statement-breakpoint
CREATE TABLE "asset_status_history" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"asset_id" uuid NOT NULL,
	"previous_status" text,
	"new_status" text NOT NULL,
	"change_reason" "status_change_reason",
	"reason_details" text,
	"maintenance_record_id" uuid,
	"calibration_record_id" uuid,
	"issue_id" uuid,
	"work_order_id" uuid,
	"changed_at" timestamp with time zone DEFAULT now() NOT NULL,
	"changed_by_id" uuid,
	"duration_minutes" text,
	"location_id" uuid,
	"notes" text,
	"metadata" text,
	"external_reference" text,
	"inserted_at" timestamp with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "maintenance_plan_triggers" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"maintenance_plan_id" uuid NOT NULL,
	"trigger_type" "trigger_type" DEFAULT 'time' NOT NULL,
	"trigger_mode" "trigger_mode" DEFAULT 'first' NOT NULL,
	"name" text,
	"description" text,
	"interval_days" numeric(6, 0),
	"interval_months" numeric(4, 0),
	"meter_id" uuid,
	"meter_interval" numeric(15, 3),
	"meter_threshold" numeric(15, 3),
	"last_triggered_at" timestamp with time zone,
	"last_triggered_reading" numeric(15, 3),
	"next_due_date" timestamp with time zone,
	"next_due_reading" numeric(15, 3),
	"is_active" boolean DEFAULT true NOT NULL,
	"priority" numeric(2, 0) DEFAULT '1',
	"inserted_at" timestamp with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp with time zone
);
--> statement-breakpoint
ALTER TABLE "asset_meter_readings" ADD CONSTRAINT "asset_meter_readings_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "asset_meter_readings" ADD CONSTRAINT "asset_meter_readings_meter_id_asset_meters_id_fk" FOREIGN KEY ("meter_id") REFERENCES "public"."asset_meters"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "asset_meter_readings" ADD CONSTRAINT "asset_meter_readings_asset_id_assets_id_fk" FOREIGN KEY ("asset_id") REFERENCES "public"."assets"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "asset_meter_readings" ADD CONSTRAINT "asset_meter_readings_recorded_by_id_users_id_fk" FOREIGN KEY ("recorded_by_id") REFERENCES "public"."users"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "asset_meters" ADD CONSTRAINT "asset_meters_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "asset_meters" ADD CONSTRAINT "asset_meters_asset_id_assets_id_fk" FOREIGN KEY ("asset_id") REFERENCES "public"."assets"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "asset_status_history" ADD CONSTRAINT "asset_status_history_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "asset_status_history" ADD CONSTRAINT "asset_status_history_asset_id_assets_id_fk" FOREIGN KEY ("asset_id") REFERENCES "public"."assets"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "asset_status_history" ADD CONSTRAINT "asset_status_history_changed_by_id_users_id_fk" FOREIGN KEY ("changed_by_id") REFERENCES "public"."users"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "maintenance_plan_triggers" ADD CONSTRAINT "maintenance_plan_triggers_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "maintenance_plan_triggers" ADD CONSTRAINT "maintenance_plan_triggers_maintenance_plan_id_maintenance_plans_id_fk" FOREIGN KEY ("maintenance_plan_id") REFERENCES "public"."maintenance_plans"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "maintenance_plan_triggers" ADD CONSTRAINT "maintenance_plan_triggers_meter_id_asset_meters_id_fk" FOREIGN KEY ("meter_id") REFERENCES "public"."asset_meters"("id") ON DELETE set null ON UPDATE no action;