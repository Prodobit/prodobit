ALTER TABLE "maintenance_records" DROP CONSTRAINT "maintenance_records_maintenance_plan_id_maintenance_plans_id_fk";
--> statement-breakpoint
ALTER TABLE "maintenance_records" DROP CONSTRAINT "maintenance_records_task_id_tasks_id_fk";
--> statement-breakpoint
ALTER TABLE "maintenance_records" ALTER COLUMN "maintenance_plan_id" DROP NOT NULL;--> statement-breakpoint
ALTER TABLE "maintenance_records" ALTER COLUMN "task_id" DROP NOT NULL;--> statement-breakpoint
ALTER TABLE "maintenance_records" ALTER COLUMN "scheduled_date" DROP NOT NULL;--> statement-breakpoint
ALTER TABLE "maintenance_records" ADD COLUMN "type" text DEFAULT 'preventive' NOT NULL;--> statement-breakpoint
ALTER TABLE "maintenance_records" ADD COLUMN "source" text DEFAULT 'plan' NOT NULL;--> statement-breakpoint
ALTER TABLE "maintenance_records" ADD COLUMN "issue_id" uuid;--> statement-breakpoint
ALTER TABLE "maintenance_records" ADD COLUMN "priority" text DEFAULT 'medium';--> statement-breakpoint
ALTER TABLE "maintenance_records" ADD CONSTRAINT "maintenance_records_issue_id_asset_issues_id_fk" FOREIGN KEY ("issue_id") REFERENCES "public"."asset_issues"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "maintenance_records" ADD CONSTRAINT "maintenance_records_maintenance_plan_id_maintenance_plans_id_fk" FOREIGN KEY ("maintenance_plan_id") REFERENCES "public"."maintenance_plans"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "maintenance_records" ADD CONSTRAINT "maintenance_records_task_id_tasks_id_fk" FOREIGN KEY ("task_id") REFERENCES "public"."tasks"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
CREATE INDEX "maintenance_records_tenant_type_idx" ON "maintenance_records" USING btree ("tenant_id","type");--> statement-breakpoint
CREATE INDEX "maintenance_records_tenant_source_idx" ON "maintenance_records" USING btree ("tenant_id","source");--> statement-breakpoint
CREATE INDEX "maintenance_records_issue_idx" ON "maintenance_records" USING btree ("issue_id");--> statement-breakpoint
ALTER TABLE "maintenance_records" ADD CONSTRAINT "maintenance_records_type_check" CHECK (type IN ('preventive', 'corrective', 'predictive', 'condition_based'));--> statement-breakpoint
ALTER TABLE "maintenance_records" ADD CONSTRAINT "maintenance_records_source_check" CHECK (source IN ('plan', 'issue', 'prediction', 'condition', 'manual'));--> statement-breakpoint
ALTER TABLE "maintenance_records" ADD CONSTRAINT "maintenance_records_priority_check" CHECK (priority IN ('critical', 'high', 'medium', 'low'));--> statement-breakpoint
ALTER TABLE "maintenance_plans" DROP CONSTRAINT IF EXISTS "maintenance_plans_type_check";--> statement-breakpoint
ALTER TABLE "maintenance_plans" ADD CONSTRAINT "maintenance_plans_type_check" CHECK (type = 'preventive');