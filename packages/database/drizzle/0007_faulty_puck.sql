CREATE TABLE "asset_issues" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"asset_id" uuid NOT NULL,
	"title" text NOT NULL,
	"description" text NOT NULL,
	"category" text NOT NULL,
	"severity" text NOT NULL,
	"status" text DEFAULT 'reported' NOT NULL,
	"reported_by" uuid NOT NULL,
	"assigned_to" uuid,
	"related_task_id" uuid,
	"reported_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"acknowledged_at" timestamp (6) with time zone,
	"resolved_at" timestamp (6) with time zone,
	"closed_at" timestamp (6) with time zone,
	"estimated_resolution_time" integer,
	"actual_resolution_time" integer,
	"resolution_notes" text,
	"root_cause" text,
	"corrective_actions" text,
	"preventive_actions" text,
	"image_ids" text[],
	"document_ids" text[],
	"location" text,
	"impact_description" text,
	"downtime" boolean DEFAULT false,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "calibration_plans" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"asset_id" uuid NOT NULL,
	"name" text NOT NULL,
	"description" text,
	"type" text DEFAULT 'external' NOT NULL,
	"frequency" text NOT NULL,
	"status" text DEFAULT 'active' NOT NULL,
	"start_date" timestamp (6) with time zone NOT NULL,
	"end_date" timestamp (6) with time zone,
	"next_calibration_date" timestamp (6) with time zone,
	"last_calibration_date" timestamp (6) with time zone,
	"interval_days" integer,
	"interval_months" integer,
	"calibration_standard" text,
	"reference_standard" text,
	"acceptance_criteria" text,
	"tolerance_range" text,
	"estimated_duration_hours" integer,
	"default_assignee_id" uuid,
	"external_provider_id" uuid,
	"calibration_location" text,
	"priority" text DEFAULT 'medium',
	"instructions" text,
	"checklist_items" jsonb,
	"required_equipment" text[],
	"environmental_conditions" text,
	"requires_certificate" boolean DEFAULT true,
	"certificate_validity_days" integer,
	"regulatory_requirements" text[],
	"compliance_standards" text[],
	"auto_create_task" boolean DEFAULT true,
	"task_creation_lead_days" integer DEFAULT 14,
	"alert_before_days" integer DEFAULT 30,
	"alert_recipients" text[],
	"total_calibration_count" integer DEFAULT 0,
	"passed_calibration_count" integer DEFAULT 0,
	"failed_calibration_count" integer DEFAULT 0,
	"average_completion_time" numeric(10, 2),
	"image_ids" text[],
	"document_ids" text[],
	"procedure_document_id" text,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "calibration_records" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"calibration_plan_id" uuid NOT NULL,
	"asset_id" uuid NOT NULL,
	"task_id" uuid,
	"scheduled_date" timestamp (6) with time zone NOT NULL,
	"completed_date" timestamp (6) with time zone,
	"performed_by" uuid,
	"external_provider_id" uuid,
	"type" text NOT NULL,
	"status" text DEFAULT 'pending' NOT NULL,
	"duration_hours" integer,
	"calibration_result" text,
	"before_calibration_values" jsonb,
	"after_calibration_values" jsonb,
	"deviation_values" jsonb,
	"adjustments_made" text,
	"notes" text,
	"failure_reason" text,
	"certificate_number" text,
	"certificate_issue_date" timestamp (6) with time zone,
	"certificate_expiry_date" timestamp (6) with time zone,
	"certificate_document_id" text,
	"accreditation_body" text,
	"next_recommended_date" timestamp (6) with time zone,
	"recommended_actions" text,
	"cost" numeric(12, 2),
	"currency" text DEFAULT 'USD',
	"image_ids" text[],
	"document_ids" text[],
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "maintenance_plans" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"asset_id" uuid NOT NULL,
	"name" text NOT NULL,
	"description" text,
	"type" text DEFAULT 'preventive' NOT NULL,
	"frequency" text NOT NULL,
	"status" text DEFAULT 'active' NOT NULL,
	"start_date" timestamp (6) with time zone NOT NULL,
	"end_date" timestamp (6) with time zone,
	"next_scheduled_date" timestamp (6) with time zone,
	"last_maintenance_date" timestamp (6) with time zone,
	"interval_days" integer,
	"interval_hours" integer,
	"interval_cycles" integer,
	"estimated_duration_hours" integer,
	"assigned_team_id" uuid,
	"default_assignee_id" uuid,
	"priority" text DEFAULT 'medium',
	"instructions" text,
	"checklist_items" jsonb,
	"required_skills" text[],
	"safety_precautions" text,
	"required_materials" jsonb,
	"spare_parts" jsonb,
	"auto_create_task" boolean DEFAULT true,
	"task_creation_lead_days" integer DEFAULT 7,
	"total_maintenance_count" integer DEFAULT 0,
	"completed_maintenance_count" integer DEFAULT 0,
	"missed_maintenance_count" integer DEFAULT 0,
	"average_completion_time" numeric(10, 2),
	"image_ids" text[],
	"document_ids" text[],
	"procedure_document_id" text,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "maintenance_records" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"maintenance_plan_id" uuid NOT NULL,
	"asset_id" uuid NOT NULL,
	"task_id" uuid NOT NULL,
	"scheduled_date" timestamp (6) with time zone NOT NULL,
	"completed_date" timestamp (6) with time zone,
	"performed_by" uuid,
	"duration_hours" integer,
	"status" text DEFAULT 'scheduled' NOT NULL,
	"notes" text,
	"issues_found" text,
	"parts_replaced" jsonb,
	"materials_used" jsonb,
	"next_recommended_date" timestamp (6) with time zone,
	"image_ids" text[],
	"document_ids" text[],
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "task_dependencies" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"task_id" uuid NOT NULL,
	"depends_on_task_id" uuid NOT NULL,
	"dependency_type" text DEFAULT 'finish_to_start' NOT NULL,
	"lag_days" integer DEFAULT 0,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "tasks" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"title" text NOT NULL,
	"description" text,
	"type" text DEFAULT 'general' NOT NULL,
	"priority" text DEFAULT 'medium' NOT NULL,
	"status" text DEFAULT 'pending' NOT NULL,
	"assignee_id" uuid,
	"created_by" uuid NOT NULL,
	"assigned_by" uuid,
	"parent_task_id" uuid,
	"related_asset_id" uuid,
	"related_issue_id" uuid,
	"related_maintenance_plan_id" uuid,
	"related_calibration_plan_id" uuid,
	"location_id" uuid,
	"start_date" timestamp (6) with time zone,
	"end_date" timestamp (6) with time zone,
	"due_date" timestamp (6) with time zone,
	"completed_at" timestamp (6) with time zone,
	"estimated_hours" integer,
	"actual_hours" integer,
	"progress_percentage" integer DEFAULT 0,
	"checklist_items" jsonb,
	"checklist_completed_count" integer DEFAULT 0,
	"is_recurring" boolean DEFAULT false,
	"recurrence_interval" text,
	"recurrence_count" integer,
	"next_occurrence_date" timestamp (6) with time zone,
	"notes" text,
	"tags" text[],
	"image_ids" text[],
	"document_ids" text[],
	"completion_notes" text,
	"blocking_reason" text,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
ALTER TABLE "asset_issues" ADD CONSTRAINT "asset_issues_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "asset_issues" ADD CONSTRAINT "asset_issues_asset_id_assets_id_fk" FOREIGN KEY ("asset_id") REFERENCES "public"."assets"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "asset_issues" ADD CONSTRAINT "asset_issues_reported_by_users_id_fk" FOREIGN KEY ("reported_by") REFERENCES "public"."users"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "asset_issues" ADD CONSTRAINT "asset_issues_assigned_to_users_id_fk" FOREIGN KEY ("assigned_to") REFERENCES "public"."users"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "calibration_plans" ADD CONSTRAINT "calibration_plans_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "calibration_plans" ADD CONSTRAINT "calibration_plans_asset_id_assets_id_fk" FOREIGN KEY ("asset_id") REFERENCES "public"."assets"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "calibration_plans" ADD CONSTRAINT "calibration_plans_default_assignee_id_users_id_fk" FOREIGN KEY ("default_assignee_id") REFERENCES "public"."users"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "calibration_plans" ADD CONSTRAINT "calibration_plans_external_provider_id_parties_id_fk" FOREIGN KEY ("external_provider_id") REFERENCES "public"."parties"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "calibration_records" ADD CONSTRAINT "calibration_records_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "calibration_records" ADD CONSTRAINT "calibration_records_calibration_plan_id_calibration_plans_id_fk" FOREIGN KEY ("calibration_plan_id") REFERENCES "public"."calibration_plans"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "calibration_records" ADD CONSTRAINT "calibration_records_asset_id_assets_id_fk" FOREIGN KEY ("asset_id") REFERENCES "public"."assets"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "calibration_records" ADD CONSTRAINT "calibration_records_task_id_tasks_id_fk" FOREIGN KEY ("task_id") REFERENCES "public"."tasks"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "calibration_records" ADD CONSTRAINT "calibration_records_performed_by_users_id_fk" FOREIGN KEY ("performed_by") REFERENCES "public"."users"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "calibration_records" ADD CONSTRAINT "calibration_records_external_provider_id_parties_id_fk" FOREIGN KEY ("external_provider_id") REFERENCES "public"."parties"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "maintenance_plans" ADD CONSTRAINT "maintenance_plans_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "maintenance_plans" ADD CONSTRAINT "maintenance_plans_asset_id_assets_id_fk" FOREIGN KEY ("asset_id") REFERENCES "public"."assets"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "maintenance_plans" ADD CONSTRAINT "maintenance_plans_default_assignee_id_users_id_fk" FOREIGN KEY ("default_assignee_id") REFERENCES "public"."users"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "maintenance_records" ADD CONSTRAINT "maintenance_records_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "maintenance_records" ADD CONSTRAINT "maintenance_records_maintenance_plan_id_maintenance_plans_id_fk" FOREIGN KEY ("maintenance_plan_id") REFERENCES "public"."maintenance_plans"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "maintenance_records" ADD CONSTRAINT "maintenance_records_asset_id_assets_id_fk" FOREIGN KEY ("asset_id") REFERENCES "public"."assets"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "maintenance_records" ADD CONSTRAINT "maintenance_records_task_id_tasks_id_fk" FOREIGN KEY ("task_id") REFERENCES "public"."tasks"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "maintenance_records" ADD CONSTRAINT "maintenance_records_performed_by_users_id_fk" FOREIGN KEY ("performed_by") REFERENCES "public"."users"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "task_dependencies" ADD CONSTRAINT "task_dependencies_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "task_dependencies" ADD CONSTRAINT "task_dependencies_task_id_tasks_id_fk" FOREIGN KEY ("task_id") REFERENCES "public"."tasks"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "task_dependencies" ADD CONSTRAINT "task_dependencies_depends_on_task_id_tasks_id_fk" FOREIGN KEY ("depends_on_task_id") REFERENCES "public"."tasks"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "tasks" ADD CONSTRAINT "tasks_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "tasks" ADD CONSTRAINT "tasks_assignee_id_users_id_fk" FOREIGN KEY ("assignee_id") REFERENCES "public"."users"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "tasks" ADD CONSTRAINT "tasks_created_by_users_id_fk" FOREIGN KEY ("created_by") REFERENCES "public"."users"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "tasks" ADD CONSTRAINT "tasks_assigned_by_users_id_fk" FOREIGN KEY ("assigned_by") REFERENCES "public"."users"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "tasks" ADD CONSTRAINT "tasks_related_asset_id_assets_id_fk" FOREIGN KEY ("related_asset_id") REFERENCES "public"."assets"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "tasks" ADD CONSTRAINT "tasks_related_issue_id_asset_issues_id_fk" FOREIGN KEY ("related_issue_id") REFERENCES "public"."asset_issues"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "tasks" ADD CONSTRAINT "tasks_location_id_locations_id_fk" FOREIGN KEY ("location_id") REFERENCES "public"."locations"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
CREATE INDEX "asset_issues_tenant_asset_idx" ON "asset_issues" USING btree ("tenant_id","asset_id");--> statement-breakpoint
CREATE INDEX "asset_issues_tenant_status_idx" ON "asset_issues" USING btree ("tenant_id","status");--> statement-breakpoint
CREATE INDEX "asset_issues_tenant_severity_idx" ON "asset_issues" USING btree ("tenant_id","severity");--> statement-breakpoint
CREATE INDEX "asset_issues_tenant_category_idx" ON "asset_issues" USING btree ("tenant_id","category");--> statement-breakpoint
CREATE INDEX "asset_issues_reported_by_idx" ON "asset_issues" USING btree ("reported_by");--> statement-breakpoint
CREATE INDEX "asset_issues_assigned_to_idx" ON "asset_issues" USING btree ("assigned_to");--> statement-breakpoint
CREATE INDEX "asset_issues_reported_at_idx" ON "asset_issues" USING btree ("reported_at");--> statement-breakpoint
CREATE INDEX "calibration_plans_tenant_asset_idx" ON "calibration_plans" USING btree ("tenant_id","asset_id");--> statement-breakpoint
CREATE INDEX "calibration_plans_tenant_status_idx" ON "calibration_plans" USING btree ("tenant_id","status");--> statement-breakpoint
CREATE INDEX "calibration_plans_tenant_type_idx" ON "calibration_plans" USING btree ("tenant_id","type");--> statement-breakpoint
CREATE INDEX "calibration_plans_next_calibration_idx" ON "calibration_plans" USING btree ("next_calibration_date");--> statement-breakpoint
CREATE INDEX "calibration_plans_external_provider_idx" ON "calibration_plans" USING btree ("external_provider_id");--> statement-breakpoint
CREATE INDEX "calibration_records_tenant_plan_idx" ON "calibration_records" USING btree ("tenant_id","calibration_plan_id");--> statement-breakpoint
CREATE INDEX "calibration_records_tenant_asset_idx" ON "calibration_records" USING btree ("tenant_id","asset_id");--> statement-breakpoint
CREATE INDEX "calibration_records_task_idx" ON "calibration_records" USING btree ("task_id");--> statement-breakpoint
CREATE INDEX "calibration_records_performed_by_idx" ON "calibration_records" USING btree ("performed_by");--> statement-breakpoint
CREATE INDEX "calibration_records_external_provider_idx" ON "calibration_records" USING btree ("external_provider_id");--> statement-breakpoint
CREATE INDEX "calibration_records_scheduled_date_idx" ON "calibration_records" USING btree ("scheduled_date");--> statement-breakpoint
CREATE INDEX "calibration_records_certificate_expiry_idx" ON "calibration_records" USING btree ("certificate_expiry_date");--> statement-breakpoint
CREATE INDEX "calibration_records_status_idx" ON "calibration_records" USING btree ("status");--> statement-breakpoint
CREATE INDEX "maintenance_plans_tenant_asset_idx" ON "maintenance_plans" USING btree ("tenant_id","asset_id");--> statement-breakpoint
CREATE INDEX "maintenance_plans_tenant_status_idx" ON "maintenance_plans" USING btree ("tenant_id","status");--> statement-breakpoint
CREATE INDEX "maintenance_plans_tenant_type_idx" ON "maintenance_plans" USING btree ("tenant_id","type");--> statement-breakpoint
CREATE INDEX "maintenance_plans_next_scheduled_idx" ON "maintenance_plans" USING btree ("next_scheduled_date");--> statement-breakpoint
CREATE INDEX "maintenance_plans_default_assignee_idx" ON "maintenance_plans" USING btree ("default_assignee_id");--> statement-breakpoint
CREATE INDEX "maintenance_records_tenant_plan_idx" ON "maintenance_records" USING btree ("tenant_id","maintenance_plan_id");--> statement-breakpoint
CREATE INDEX "maintenance_records_tenant_asset_idx" ON "maintenance_records" USING btree ("tenant_id","asset_id");--> statement-breakpoint
CREATE INDEX "maintenance_records_task_idx" ON "maintenance_records" USING btree ("task_id");--> statement-breakpoint
CREATE INDEX "maintenance_records_performed_by_idx" ON "maintenance_records" USING btree ("performed_by");--> statement-breakpoint
CREATE INDEX "maintenance_records_scheduled_date_idx" ON "maintenance_records" USING btree ("scheduled_date");--> statement-breakpoint
CREATE INDEX "maintenance_records_status_idx" ON "maintenance_records" USING btree ("status");--> statement-breakpoint
CREATE INDEX "task_dependencies_task_idx" ON "task_dependencies" USING btree ("task_id");--> statement-breakpoint
CREATE INDEX "task_dependencies_depends_on_idx" ON "task_dependencies" USING btree ("depends_on_task_id");--> statement-breakpoint
CREATE INDEX "tasks_tenant_type_idx" ON "tasks" USING btree ("tenant_id","type");--> statement-breakpoint
CREATE INDEX "tasks_tenant_status_idx" ON "tasks" USING btree ("tenant_id","status");--> statement-breakpoint
CREATE INDEX "tasks_tenant_priority_idx" ON "tasks" USING btree ("tenant_id","priority");--> statement-breakpoint
CREATE INDEX "tasks_assignee_idx" ON "tasks" USING btree ("assignee_id");--> statement-breakpoint
CREATE INDEX "tasks_created_by_idx" ON "tasks" USING btree ("created_by");--> statement-breakpoint
CREATE INDEX "tasks_parent_task_idx" ON "tasks" USING btree ("parent_task_id");--> statement-breakpoint
CREATE INDEX "tasks_related_asset_idx" ON "tasks" USING btree ("related_asset_id");--> statement-breakpoint
CREATE INDEX "tasks_related_issue_idx" ON "tasks" USING btree ("related_issue_id");--> statement-breakpoint
CREATE INDEX "tasks_due_date_idx" ON "tasks" USING btree ("due_date");--> statement-breakpoint
CREATE INDEX "tasks_recurring_idx" ON "tasks" USING btree ("is_recurring","next_occurrence_date");