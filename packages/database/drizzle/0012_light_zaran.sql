CREATE TYPE "public"."billing_model" AS ENUM('fixed', 'per_incident', 'hourly', 'monthly', 'quarterly', 'annually', 'hybrid');--> statement-breakpoint
CREATE TYPE "public"."contract_status" AS ENUM('draft', 'pending_approval', 'active', 'suspended', 'expired', 'cancelled', 'renewed');--> statement-breakpoint
CREATE TYPE "public"."contract_type" AS ENUM('maintenance', 'support', 'warranty_extension', 'full_service', 'on_demand', 'preventive', 'calibration');--> statement-breakpoint
CREATE TYPE "public"."ticket_priority" AS ENUM('critical', 'high', 'medium', 'low');--> statement-breakpoint
CREATE TYPE "public"."ticket_source" AS ENUM('customer_portal', 'phone', 'email', 'chat', 'field_technician', 'system_alert', 'scheduled', 'internal');--> statement-breakpoint
CREATE TYPE "public"."ticket_status" AS ENUM('open', 'assigned', 'in_progress', 'pending_customer', 'pending_parts', 'on_hold', 'resolved', 'closed', 'cancelled');--> statement-breakpoint
CREATE TYPE "public"."ticket_type" AS ENUM('incident', 'request', 'preventive', 'corrective', 'installation', 'training', 'consultation', 'inspection');--> statement-breakpoint
CREATE TABLE "service_contract_assets" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"contract_id" uuid NOT NULL,
	"asset_id" uuid NOT NULL,
	"coverage_start_date" timestamp with time zone,
	"coverage_end_date" timestamp with time zone,
	"special_terms" text,
	"is_active" boolean DEFAULT true NOT NULL,
	"inserted_at" timestamp with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "service_contracts" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"contract_number" text NOT NULL,
	"name" text NOT NULL,
	"description" text,
	"customer_id" uuid NOT NULL,
	"contract_type" "contract_type" DEFAULT 'maintenance' NOT NULL,
	"billing_model" "billing_model" DEFAULT 'fixed' NOT NULL,
	"status" "contract_status" DEFAULT 'draft' NOT NULL,
	"start_date" timestamp with time zone NOT NULL,
	"end_date" timestamp with time zone NOT NULL,
	"auto_renew" boolean DEFAULT false NOT NULL,
	"renewal_notice_days" integer DEFAULT 30,
	"contract_value" numeric(15, 2),
	"currency" text DEFAULT 'TRY' NOT NULL,
	"monthly_fee" numeric(15, 2),
	"hourly_rate" numeric(10, 2),
	"incident_rate" numeric(10, 2),
	"included_incidents" integer,
	"included_hours" numeric(10, 2),
	"included_preventive_visits" integer,
	"sla_config" text,
	"coverage_scope" text,
	"excluded_items" text,
	"primary_contact_id" uuid,
	"technical_contact_id" uuid,
	"account_manager_id" uuid,
	"service_team_id" text,
	"document_ids" text,
	"terms_and_conditions" text,
	"special_terms" text,
	"total_tickets_created" integer DEFAULT 0 NOT NULL,
	"total_incidents_used" integer DEFAULT 0 NOT NULL,
	"total_hours_used" numeric(10, 2) DEFAULT '0' NOT NULL,
	"notes" text,
	"metadata" text,
	"inserted_at" timestamp with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp with time zone
);
--> statement-breakpoint
CREATE TABLE "service_ticket_comments" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"ticket_id" uuid NOT NULL,
	"author_id" uuid NOT NULL,
	"content" text NOT NULL,
	"is_internal" boolean DEFAULT false NOT NULL,
	"is_system_generated" boolean DEFAULT false NOT NULL,
	"attachment_ids" text,
	"inserted_at" timestamp with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "service_ticket_status_history" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"ticket_id" uuid NOT NULL,
	"previous_status" text,
	"new_status" text NOT NULL,
	"changed_by_id" uuid,
	"reason" text,
	"changed_at" timestamp with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "service_tickets" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"ticket_number" text NOT NULL,
	"contract_id" uuid,
	"is_billable" boolean DEFAULT true NOT NULL,
	"customer_id" uuid NOT NULL,
	"contact_person_id" uuid,
	"asset_id" uuid,
	"ticket_type" "ticket_type" DEFAULT 'incident' NOT NULL,
	"priority" "ticket_priority" DEFAULT 'medium' NOT NULL,
	"status" "ticket_status" DEFAULT 'open' NOT NULL,
	"source" "ticket_source" DEFAULT 'phone' NOT NULL,
	"subject" text NOT NULL,
	"description" text,
	"problem_category" text,
	"error_code" text,
	"service_location_id" uuid,
	"service_address" text,
	"assigned_to_id" uuid,
	"assigned_team_id" text,
	"sla_response_due" timestamp with time zone,
	"sla_resolution_due" timestamp with time zone,
	"first_response_at" timestamp with time zone,
	"reported_at" timestamp with time zone DEFAULT now() NOT NULL,
	"acknowledged_at" timestamp with time zone,
	"scheduled_at" timestamp with time zone,
	"started_at" timestamp with time zone,
	"resolved_at" timestamp with time zone,
	"closed_at" timestamp with time zone,
	"resolution_summary" text,
	"resolution_code" text,
	"root_cause" text,
	"preventive_action" text,
	"travel_time_minutes" integer,
	"work_time_minutes" integer,
	"total_time_minutes" integer,
	"labor_cost" numeric(10, 2),
	"parts_cost" numeric(10, 2),
	"travel_cost" numeric(10, 2),
	"other_cost" numeric(10, 2),
	"total_cost" numeric(10, 2),
	"currency" text DEFAULT 'TRY',
	"parts_used" text,
	"maintenance_record_id" uuid,
	"calibration_record_id" uuid,
	"related_ticket_id" uuid,
	"attachment_ids" text,
	"signature_image_id" text,
	"customer_satisfaction" integer,
	"customer_feedback" text,
	"internal_notes" text,
	"metadata" text,
	"inserted_at" timestamp with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp with time zone
);
--> statement-breakpoint
ALTER TABLE "service_contract_assets" ADD CONSTRAINT "service_contract_assets_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "service_contract_assets" ADD CONSTRAINT "service_contract_assets_contract_id_service_contracts_id_fk" FOREIGN KEY ("contract_id") REFERENCES "public"."service_contracts"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "service_contract_assets" ADD CONSTRAINT "service_contract_assets_asset_id_assets_id_fk" FOREIGN KEY ("asset_id") REFERENCES "public"."assets"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "service_contracts" ADD CONSTRAINT "service_contracts_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "service_contracts" ADD CONSTRAINT "service_contracts_customer_id_parties_id_fk" FOREIGN KEY ("customer_id") REFERENCES "public"."parties"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "service_contracts" ADD CONSTRAINT "service_contracts_primary_contact_id_users_id_fk" FOREIGN KEY ("primary_contact_id") REFERENCES "public"."users"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "service_contracts" ADD CONSTRAINT "service_contracts_technical_contact_id_users_id_fk" FOREIGN KEY ("technical_contact_id") REFERENCES "public"."users"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "service_contracts" ADD CONSTRAINT "service_contracts_account_manager_id_users_id_fk" FOREIGN KEY ("account_manager_id") REFERENCES "public"."users"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "service_ticket_comments" ADD CONSTRAINT "service_ticket_comments_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "service_ticket_comments" ADD CONSTRAINT "service_ticket_comments_ticket_id_service_tickets_id_fk" FOREIGN KEY ("ticket_id") REFERENCES "public"."service_tickets"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "service_ticket_comments" ADD CONSTRAINT "service_ticket_comments_author_id_users_id_fk" FOREIGN KEY ("author_id") REFERENCES "public"."users"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "service_ticket_status_history" ADD CONSTRAINT "service_ticket_status_history_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "service_ticket_status_history" ADD CONSTRAINT "service_ticket_status_history_ticket_id_service_tickets_id_fk" FOREIGN KEY ("ticket_id") REFERENCES "public"."service_tickets"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "service_ticket_status_history" ADD CONSTRAINT "service_ticket_status_history_changed_by_id_users_id_fk" FOREIGN KEY ("changed_by_id") REFERENCES "public"."users"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "service_tickets" ADD CONSTRAINT "service_tickets_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "service_tickets" ADD CONSTRAINT "service_tickets_contract_id_service_contracts_id_fk" FOREIGN KEY ("contract_id") REFERENCES "public"."service_contracts"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "service_tickets" ADD CONSTRAINT "service_tickets_customer_id_parties_id_fk" FOREIGN KEY ("customer_id") REFERENCES "public"."parties"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "service_tickets" ADD CONSTRAINT "service_tickets_contact_person_id_users_id_fk" FOREIGN KEY ("contact_person_id") REFERENCES "public"."users"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "service_tickets" ADD CONSTRAINT "service_tickets_asset_id_assets_id_fk" FOREIGN KEY ("asset_id") REFERENCES "public"."assets"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "service_tickets" ADD CONSTRAINT "service_tickets_assigned_to_id_users_id_fk" FOREIGN KEY ("assigned_to_id") REFERENCES "public"."users"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
CREATE INDEX "service_contract_assets_contract_idx" ON "service_contract_assets" USING btree ("contract_id");--> statement-breakpoint
CREATE INDEX "service_contract_assets_asset_idx" ON "service_contract_assets" USING btree ("asset_id");--> statement-breakpoint
CREATE INDEX "service_contracts_tenant_idx" ON "service_contracts" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX "service_contracts_customer_idx" ON "service_contracts" USING btree ("tenant_id","customer_id");--> statement-breakpoint
CREATE INDEX "service_contracts_status_idx" ON "service_contracts" USING btree ("tenant_id","status");--> statement-breakpoint
CREATE INDEX "service_contracts_end_date_idx" ON "service_contracts" USING btree ("end_date");--> statement-breakpoint
CREATE INDEX "service_contracts_contract_number_idx" ON "service_contracts" USING btree ("tenant_id","contract_number");--> statement-breakpoint
CREATE INDEX "service_ticket_comments_ticket_idx" ON "service_ticket_comments" USING btree ("ticket_id");--> statement-breakpoint
CREATE INDEX "service_ticket_status_history_ticket_idx" ON "service_ticket_status_history" USING btree ("ticket_id");--> statement-breakpoint
CREATE INDEX "service_tickets_tenant_idx" ON "service_tickets" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX "service_tickets_customer_idx" ON "service_tickets" USING btree ("tenant_id","customer_id");--> statement-breakpoint
CREATE INDEX "service_tickets_contract_idx" ON "service_tickets" USING btree ("contract_id");--> statement-breakpoint
CREATE INDEX "service_tickets_asset_idx" ON "service_tickets" USING btree ("asset_id");--> statement-breakpoint
CREATE INDEX "service_tickets_status_idx" ON "service_tickets" USING btree ("tenant_id","status");--> statement-breakpoint
CREATE INDEX "service_tickets_priority_idx" ON "service_tickets" USING btree ("tenant_id","priority");--> statement-breakpoint
CREATE INDEX "service_tickets_assigned_idx" ON "service_tickets" USING btree ("assigned_to_id");--> statement-breakpoint
CREATE INDEX "service_tickets_ticket_number_idx" ON "service_tickets" USING btree ("tenant_id","ticket_number");--> statement-breakpoint
CREATE INDEX "service_tickets_reported_at_idx" ON "service_tickets" USING btree ("reported_at");--> statement-breakpoint
CREATE INDEX "service_tickets_sla_response_idx" ON "service_tickets" USING btree ("sla_response_due");--> statement-breakpoint
CREATE INDEX "service_tickets_sla_resolution_idx" ON "service_tickets" USING btree ("sla_resolution_due");