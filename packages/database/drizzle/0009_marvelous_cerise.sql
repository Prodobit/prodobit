CREATE TABLE "integration_keys" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"name" text NOT NULL,
	"key" text NOT NULL,
	"key_prefix" text NOT NULL,
	"environment" text DEFAULT 'test' NOT NULL,
	"status" text DEFAULT 'active' NOT NULL,
	"scopes" jsonb DEFAULT '[]'::jsonb NOT NULL,
	"metadata" jsonb,
	"last_used_at" timestamp (6) with time zone,
	"expires_at" timestamp (6) with time zone,
	"created_by" uuid,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "integration_logs" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"key_id" uuid NOT NULL,
	"tenant_id" uuid NOT NULL,
	"method" text NOT NULL,
	"path" text NOT NULL,
	"status_code" integer NOT NULL,
	"response_time" integer,
	"ip_address" text,
	"user_agent" text,
	"error_message" text,
	"metadata" jsonb,
	"requested_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "integration_rate_limits" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"key_id" uuid NOT NULL,
	"limit_type" text NOT NULL,
	"max_requests" integer NOT NULL,
	"current_count" integer DEFAULT 0 NOT NULL,
	"reset_at" timestamp (6) with time zone NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "integration_scopes" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"module" text NOT NULL,
	"resource" text NOT NULL,
	"action" text NOT NULL,
	"scope" text NOT NULL,
	"endpoint" text,
	"description" text NOT NULL,
	"is_public" boolean DEFAULT true NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	CONSTRAINT "integration_scopes_scope_unique" UNIQUE("scope")
);
--> statement-breakpoint
ALTER TABLE "integration_keys" ADD CONSTRAINT "integration_keys_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "integration_logs" ADD CONSTRAINT "integration_logs_key_id_integration_keys_id_fk" FOREIGN KEY ("key_id") REFERENCES "public"."integration_keys"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "integration_logs" ADD CONSTRAINT "integration_logs_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "integration_rate_limits" ADD CONSTRAINT "integration_rate_limits_key_id_integration_keys_id_fk" FOREIGN KEY ("key_id") REFERENCES "public"."integration_keys"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
CREATE INDEX "integration_keys_tenant_idx" ON "integration_keys" USING btree ("tenant_id");--> statement-breakpoint
CREATE UNIQUE INDEX "integration_keys_prefix_idx" ON "integration_keys" USING btree ("key_prefix");--> statement-breakpoint
CREATE INDEX "integration_keys_status_idx" ON "integration_keys" USING btree ("status");--> statement-breakpoint
CREATE INDEX "integration_keys_tenant_status_idx" ON "integration_keys" USING btree ("tenant_id","status");--> statement-breakpoint
CREATE INDEX "integration_logs_key_idx" ON "integration_logs" USING btree ("key_id");--> statement-breakpoint
CREATE INDEX "integration_logs_tenant_idx" ON "integration_logs" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX "integration_logs_requested_at_idx" ON "integration_logs" USING btree ("requested_at");--> statement-breakpoint
CREATE INDEX "integration_logs_key_requested_at_idx" ON "integration_logs" USING btree ("key_id","requested_at");--> statement-breakpoint
CREATE UNIQUE INDEX "integration_rate_limits_key_limit_type_idx" ON "integration_rate_limits" USING btree ("key_id","limit_type");--> statement-breakpoint
CREATE INDEX "integration_rate_limits_reset_at_idx" ON "integration_rate_limits" USING btree ("reset_at");--> statement-breakpoint
CREATE INDEX "integration_scopes_module_idx" ON "integration_scopes" USING btree ("module");--> statement-breakpoint
CREATE UNIQUE INDEX "integration_scopes_scope_idx" ON "integration_scopes" USING btree ("scope");--> statement-breakpoint
CREATE INDEX "integration_scopes_public_idx" ON "integration_scopes" USING btree ("is_public");