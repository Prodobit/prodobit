CREATE TABLE "addresses" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"party_id" uuid NOT NULL,
	"tenant_id" uuid NOT NULL,
	"address_type" text NOT NULL,
	"line1" text NOT NULL,
	"line2" text,
	"city" text,
	"country" text DEFAULT 'TR' NOT NULL,
	"is_primary" boolean DEFAULT false NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "asset_types" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"name" text NOT NULL,
	"code" text NOT NULL,
	"description" text,
	"category" text,
	"is_active" boolean DEFAULT true NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "assets" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"location_id" uuid NOT NULL,
	"parent_asset_id" uuid,
	"name" text NOT NULL,
	"code" text NOT NULL,
	"asset_type" text NOT NULL,
	"status" text DEFAULT 'active' NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "attribute_values" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"entity_id" uuid NOT NULL,
	"entity_type" text NOT NULL,
	"attribute_id" uuid NOT NULL,
	"value" jsonb,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "attributes" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"entity_type" text NOT NULL,
	"name" text NOT NULL,
	"display_name" text,
	"description" text,
	"data_type" text NOT NULL,
	"is_required" boolean DEFAULT false NOT NULL,
	"default_value" jsonb,
	"validation_rules" jsonb,
	"options" jsonb,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "auth_audit_log" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid,
	"user_id" uuid,
	"action" text NOT NULL,
	"resource" text,
	"resource_id" uuid,
	"details" jsonb,
	"ip_address" "inet",
	"user_agent" text,
	"success" boolean DEFAULT true NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "auth_methods" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"user_id" uuid NOT NULL,
	"provider" text NOT NULL,
	"provider_id" text NOT NULL,
	"verified" boolean DEFAULT false NOT NULL,
	"metadata" jsonb,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "bom_components" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"bom_id" uuid NOT NULL,
	"component_item_id" uuid NOT NULL,
	"parent_component_id" uuid,
	"quantity" numeric NOT NULL,
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
	"run_time_per_unit_seconds" numeric,
	"valid_from" date DEFAULT now() NOT NULL,
	"valid_to" date,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "bom_version_history" (
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
CREATE TABLE "boms" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"item_id" uuid NOT NULL,
	"bom_code" varchar(255) NOT NULL,
	"name" varchar(255) NOT NULL,
	"description" text,
	"status" varchar(50) DEFAULT 'draft' NOT NULL,
	"version" varchar(50) DEFAULT '1.0' NOT NULL,
	"is_current_version" boolean DEFAULT true NOT NULL,
	"production_quantity" numeric,
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
CREATE TABLE "components" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"item_id" uuid NOT NULL,
	"tenant_id" uuid NOT NULL,
	"unit" text,
	"item_category_id" uuid,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "contact_mechanisms" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"party_id" uuid NOT NULL,
	"tenant_id" uuid NOT NULL,
	"contact_type" text NOT NULL,
	"contact_value" text NOT NULL,
	"is_primary" boolean DEFAULT false NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "customers" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"party_role_id" uuid NOT NULL,
	"tenant_id" uuid NOT NULL,
	"customer_code" text NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "eco_bom_changes" (
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
CREATE TABLE "employees" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"party_role_id" uuid NOT NULL,
	"tenant_id" uuid NOT NULL,
	"employee_code" text NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "engineering_change_orders" (
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
	"estimated_cost_impact" numeric,
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
CREATE TABLE "item_categories" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"name" text NOT NULL,
	"code" text,
	"description" text,
	"parent_category_id" uuid,
	"status" text DEFAULT 'active' NOT NULL,
	"item_type" text NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "item_prices" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"item_id" uuid NOT NULL,
	"tenant_id" uuid NOT NULL,
	"price_type" text NOT NULL,
	"price" numeric(15, 4) NOT NULL,
	"currency" text DEFAULT 'TRY' NOT NULL,
	"valid_from" date DEFAULT now(),
	"valid_to" date,
	"is_active" boolean DEFAULT true NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "item_variants" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"item_id" uuid NOT NULL,
	"parent_item_id" uuid NOT NULL,
	"tenant_id" uuid NOT NULL,
	"variant_attributes" jsonb,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "items" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"item_type" text NOT NULL,
	"code" text,
	"name" text NOT NULL,
	"status" text DEFAULT 'active' NOT NULL,
	"is_inventory_item" boolean DEFAULT true NOT NULL,
	"is_stock_item" boolean DEFAULT true NOT NULL,
	"is_variant" boolean DEFAULT false NOT NULL,
	"is_abstract" boolean DEFAULT false NOT NULL,
	"reference_item_id" uuid,
	"name_search_trimmed" text,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "location_types" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"name" text NOT NULL,
	"code" text NOT NULL,
	"description" text,
	"category" text,
	"is_active" boolean DEFAULT true NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "locations" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"parent_location_id" uuid,
	"name" text NOT NULL,
	"code" text NOT NULL,
	"location_type" text,
	"status" text DEFAULT 'available' NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "lot_sources" (
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
CREATE TABLE "lots" (
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
CREATE TABLE "organizations" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"party_id" uuid NOT NULL,
	"tenant_id" uuid NOT NULL,
	"name" text NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "parties" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"party_type" text NOT NULL,
	"code" text NOT NULL,
	"status" text DEFAULT 'active' NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "party_roles" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"party_id" uuid NOT NULL,
	"tenant_id" uuid NOT NULL,
	"role_type" text NOT NULL,
	"status" text DEFAULT 'active' NOT NULL,
	"start_date" date DEFAULT now() NOT NULL,
	"end_date" date,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "permissions" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"name" text NOT NULL,
	"description" text,
	"resource" text NOT NULL,
	"action" text NOT NULL,
	"scope" text DEFAULT 'tenant' NOT NULL,
	"is_system" boolean DEFAULT false NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	CONSTRAINT "permissions_name_unique" UNIQUE("name")
);
--> statement-breakpoint
CREATE TABLE "persons" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"party_id" uuid NOT NULL,
	"tenant_id" uuid NOT NULL,
	"first_name" text NOT NULL,
	"last_name" text NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "products" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"item_id" uuid NOT NULL,
	"tenant_id" uuid NOT NULL,
	"unit" text,
	"item_category_id" uuid,
	"sourcing_type" text DEFAULT 'manufactured' NOT NULL,
	"design_ownership" text,
	"fulfillment_strategy" text,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "raw_materials" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"item_id" uuid NOT NULL,
	"tenant_id" uuid NOT NULL,
	"unit" text,
	"item_category_id" uuid,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "role_permissions" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"role_id" uuid NOT NULL,
	"permission_id" uuid NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "roles" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"name" text NOT NULL,
	"description" text,
	"is_system" boolean DEFAULT false NOT NULL,
	"is_active" boolean DEFAULT true NOT NULL,
	"color" text,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
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
CREATE TABLE "services" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"item_id" uuid NOT NULL,
	"tenant_id" uuid NOT NULL,
	"description" text,
	"unit" text NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "sessions" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"user_id" uuid NOT NULL,
	"auth_method_id" uuid,
	"current_tenant_id" uuid,
	"access_token_hash" text NOT NULL,
	"refresh_token_hash" text,
	"expires_at" timestamp (6) with time zone NOT NULL,
	"refresh_expires_at" timestamp (6) with time zone,
	"device_type" text,
	"device_name" text,
	"user_agent" text,
	"ip_address" "inet",
	"location_data" jsonb,
	"status" text DEFAULT 'active' NOT NULL,
	"last_activity_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"revoked_at" timestamp (6) with time zone,
	"revoked_reason" text,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "stock_transaction_sources" (
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
CREATE TABLE "stock_transactions" (
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
CREATE TABLE "stocks" (
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
CREATE TABLE "suppliers" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"party_role_id" uuid NOT NULL,
	"tenant_id" uuid NOT NULL,
	"supplier_code" text NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "tenant_memberships" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"user_id" uuid NOT NULL,
	"tenant_id" uuid NOT NULL,
	"role" text NOT NULL,
	"status" text DEFAULT 'active' NOT NULL,
	"permissions" jsonb DEFAULT '{}'::jsonb NOT NULL,
	"access_level" text DEFAULT 'full' NOT NULL,
	"resource_restrictions" jsonb DEFAULT '{}'::jsonb NOT NULL,
	"ip_restrictions" jsonb,
	"time_restrictions" jsonb,
	"expires_at" timestamp (6) with time zone,
	"invited_by" uuid,
	"invited_at" timestamp (6) with time zone,
	"joined_at" timestamp (6) with time zone,
	"last_login_at" timestamp (6) with time zone,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "tenants" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"name" text NOT NULL,
	"slug" text,
	"subdomain" text,
	"description" text,
	"industry" text,
	"status" text DEFAULT 'active' NOT NULL,
	"subscription_plan" text DEFAULT 'basic' NOT NULL,
	"settings" jsonb DEFAULT '{}'::jsonb NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone,
	CONSTRAINT "tenants_slug_unique" UNIQUE("slug"),
	CONSTRAINT "tenants_subdomain_unique" UNIQUE("subdomain")
);
--> statement-breakpoint
CREATE TABLE "user_invitations" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"email" text NOT NULL,
	"role_id" uuid NOT NULL,
	"invited_by" uuid NOT NULL,
	"token" text NOT NULL,
	"status" text DEFAULT 'pending' NOT NULL,
	"expires_at" timestamp (6) with time zone DEFAULT now() + interval '7 days' NOT NULL,
	"accepted_at" timestamp (6) with time zone,
	"rejected_at" timestamp (6) with time zone,
	"message" text,
	"permissions" jsonb DEFAULT '{}'::jsonb NOT NULL,
	"access_level" text DEFAULT 'full' NOT NULL,
	"resource_restrictions" jsonb DEFAULT '{}'::jsonb NOT NULL,
	"membership_expires_at" timestamp (6) with time zone,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone,
	CONSTRAINT "user_invitations_token_unique" UNIQUE("token")
);
--> statement-breakpoint
CREATE TABLE "user_roles" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"user_id" uuid NOT NULL,
	"role_id" uuid NOT NULL,
	"assigned_by" uuid,
	"expires_at" timestamp (6) with time zone,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "users" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"display_name" text,
	"two_factor_enabled" boolean DEFAULT false NOT NULL,
	"two_factor_secret" text,
	"status" text DEFAULT 'active' NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
ALTER TABLE "addresses" ADD CONSTRAINT "addresses_party_id_parties_id_fk" FOREIGN KEY ("party_id") REFERENCES "public"."parties"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "addresses" ADD CONSTRAINT "addresses_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "asset_types" ADD CONSTRAINT "asset_types_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "assets" ADD CONSTRAINT "assets_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "assets" ADD CONSTRAINT "assets_location_id_locations_id_fk" FOREIGN KEY ("location_id") REFERENCES "public"."locations"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "attribute_values" ADD CONSTRAINT "attribute_values_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "attribute_values" ADD CONSTRAINT "attribute_values_attribute_id_attributes_id_fk" FOREIGN KEY ("attribute_id") REFERENCES "public"."attributes"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "attributes" ADD CONSTRAINT "attributes_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "auth_audit_log" ADD CONSTRAINT "auth_audit_log_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "auth_audit_log" ADD CONSTRAINT "auth_audit_log_user_id_users_id_fk" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "auth_methods" ADD CONSTRAINT "auth_methods_user_id_users_id_fk" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "bom_components" ADD CONSTRAINT "bom_components_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "bom_components" ADD CONSTRAINT "bom_components_bom_id_boms_id_fk" FOREIGN KEY ("bom_id") REFERENCES "public"."boms"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "bom_components" ADD CONSTRAINT "bom_components_component_item_id_items_id_fk" FOREIGN KEY ("component_item_id") REFERENCES "public"."items"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "bom_version_history" ADD CONSTRAINT "bom_version_history_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "bom_version_history" ADD CONSTRAINT "bom_version_history_bom_id_boms_id_fk" FOREIGN KEY ("bom_id") REFERENCES "public"."boms"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "bom_version_history" ADD CONSTRAINT "bom_version_history_eco_id_engineering_change_orders_id_fk" FOREIGN KEY ("eco_id") REFERENCES "public"."engineering_change_orders"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "boms" ADD CONSTRAINT "boms_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "boms" ADD CONSTRAINT "boms_item_id_items_id_fk" FOREIGN KEY ("item_id") REFERENCES "public"."items"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "components" ADD CONSTRAINT "components_item_id_items_id_fk" FOREIGN KEY ("item_id") REFERENCES "public"."items"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "components" ADD CONSTRAINT "components_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "components" ADD CONSTRAINT "components_item_category_id_item_categories_id_fk" FOREIGN KEY ("item_category_id") REFERENCES "public"."item_categories"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "contact_mechanisms" ADD CONSTRAINT "contact_mechanisms_party_id_parties_id_fk" FOREIGN KEY ("party_id") REFERENCES "public"."parties"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "contact_mechanisms" ADD CONSTRAINT "contact_mechanisms_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "customers" ADD CONSTRAINT "customers_party_role_id_party_roles_id_fk" FOREIGN KEY ("party_role_id") REFERENCES "public"."party_roles"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "customers" ADD CONSTRAINT "customers_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "eco_bom_changes" ADD CONSTRAINT "eco_bom_changes_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "eco_bom_changes" ADD CONSTRAINT "eco_bom_changes_eco_id_engineering_change_orders_id_fk" FOREIGN KEY ("eco_id") REFERENCES "public"."engineering_change_orders"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "eco_bom_changes" ADD CONSTRAINT "eco_bom_changes_bom_id_boms_id_fk" FOREIGN KEY ("bom_id") REFERENCES "public"."boms"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "eco_bom_changes" ADD CONSTRAINT "eco_bom_changes_old_bom_component_id_bom_components_id_fk" FOREIGN KEY ("old_bom_component_id") REFERENCES "public"."bom_components"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "eco_bom_changes" ADD CONSTRAINT "eco_bom_changes_new_bom_component_id_bom_components_id_fk" FOREIGN KEY ("new_bom_component_id") REFERENCES "public"."bom_components"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "employees" ADD CONSTRAINT "employees_party_role_id_party_roles_id_fk" FOREIGN KEY ("party_role_id") REFERENCES "public"."party_roles"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "employees" ADD CONSTRAINT "employees_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "engineering_change_orders" ADD CONSTRAINT "engineering_change_orders_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "item_categories" ADD CONSTRAINT "item_categories_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "item_prices" ADD CONSTRAINT "item_prices_item_id_items_id_fk" FOREIGN KEY ("item_id") REFERENCES "public"."items"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "item_prices" ADD CONSTRAINT "item_prices_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "item_variants" ADD CONSTRAINT "item_variants_item_id_items_id_fk" FOREIGN KEY ("item_id") REFERENCES "public"."items"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "item_variants" ADD CONSTRAINT "item_variants_parent_item_id_items_id_fk" FOREIGN KEY ("parent_item_id") REFERENCES "public"."items"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "item_variants" ADD CONSTRAINT "item_variants_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "items" ADD CONSTRAINT "items_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "location_types" ADD CONSTRAINT "location_types_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "locations" ADD CONSTRAINT "locations_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "lot_sources" ADD CONSTRAINT "lot_sources_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "lot_sources" ADD CONSTRAINT "lot_sources_lot_id_lots_id_fk" FOREIGN KEY ("lot_id") REFERENCES "public"."lots"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "lots" ADD CONSTRAINT "lots_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "lots" ADD CONSTRAINT "lots_location_id_locations_id_fk" FOREIGN KEY ("location_id") REFERENCES "public"."locations"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "organizations" ADD CONSTRAINT "organizations_party_id_parties_id_fk" FOREIGN KEY ("party_id") REFERENCES "public"."parties"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "organizations" ADD CONSTRAINT "organizations_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "parties" ADD CONSTRAINT "parties_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "party_roles" ADD CONSTRAINT "party_roles_party_id_parties_id_fk" FOREIGN KEY ("party_id") REFERENCES "public"."parties"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "party_roles" ADD CONSTRAINT "party_roles_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "persons" ADD CONSTRAINT "persons_party_id_parties_id_fk" FOREIGN KEY ("party_id") REFERENCES "public"."parties"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "persons" ADD CONSTRAINT "persons_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "products" ADD CONSTRAINT "products_item_id_items_id_fk" FOREIGN KEY ("item_id") REFERENCES "public"."items"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "products" ADD CONSTRAINT "products_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "products" ADD CONSTRAINT "products_item_category_id_item_categories_id_fk" FOREIGN KEY ("item_category_id") REFERENCES "public"."item_categories"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "raw_materials" ADD CONSTRAINT "raw_materials_item_id_items_id_fk" FOREIGN KEY ("item_id") REFERENCES "public"."items"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "raw_materials" ADD CONSTRAINT "raw_materials_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "raw_materials" ADD CONSTRAINT "raw_materials_item_category_id_item_categories_id_fk" FOREIGN KEY ("item_category_id") REFERENCES "public"."item_categories"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "role_permissions" ADD CONSTRAINT "role_permissions_role_id_roles_id_fk" FOREIGN KEY ("role_id") REFERENCES "public"."roles"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "role_permissions" ADD CONSTRAINT "role_permissions_permission_id_permissions_id_fk" FOREIGN KEY ("permission_id") REFERENCES "public"."permissions"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "roles" ADD CONSTRAINT "roles_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
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
ALTER TABLE "services" ADD CONSTRAINT "services_item_id_items_id_fk" FOREIGN KEY ("item_id") REFERENCES "public"."items"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "services" ADD CONSTRAINT "services_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "sessions" ADD CONSTRAINT "sessions_user_id_users_id_fk" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "sessions" ADD CONSTRAINT "sessions_auth_method_id_auth_methods_id_fk" FOREIGN KEY ("auth_method_id") REFERENCES "public"."auth_methods"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "sessions" ADD CONSTRAINT "sessions_current_tenant_id_tenants_id_fk" FOREIGN KEY ("current_tenant_id") REFERENCES "public"."tenants"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "stock_transaction_sources" ADD CONSTRAINT "stock_transaction_sources_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "stock_transaction_sources" ADD CONSTRAINT "stock_transaction_sources_transaction_id_stock_transactions_id_fk" FOREIGN KEY ("transaction_id") REFERENCES "public"."stock_transactions"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "stock_transactions" ADD CONSTRAINT "stock_transactions_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "stock_transactions" ADD CONSTRAINT "stock_transactions_stock_id_stocks_id_fk" FOREIGN KEY ("stock_id") REFERENCES "public"."stocks"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "stock_transactions" ADD CONSTRAINT "stock_transactions_lot_id_lots_id_fk" FOREIGN KEY ("lot_id") REFERENCES "public"."lots"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "stock_transactions" ADD CONSTRAINT "stock_transactions_item_id_items_id_fk" FOREIGN KEY ("item_id") REFERENCES "public"."items"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "stock_transactions" ADD CONSTRAINT "stock_transactions_source_location_id_locations_id_fk" FOREIGN KEY ("source_location_id") REFERENCES "public"."locations"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "stock_transactions" ADD CONSTRAINT "stock_transactions_destination_location_id_locations_id_fk" FOREIGN KEY ("destination_location_id") REFERENCES "public"."locations"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "stocks" ADD CONSTRAINT "stocks_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "stocks" ADD CONSTRAINT "stocks_item_id_items_id_fk" FOREIGN KEY ("item_id") REFERENCES "public"."items"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "stocks" ADD CONSTRAINT "stocks_lot_id_lots_id_fk" FOREIGN KEY ("lot_id") REFERENCES "public"."lots"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "stocks" ADD CONSTRAINT "stocks_location_id_locations_id_fk" FOREIGN KEY ("location_id") REFERENCES "public"."locations"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "suppliers" ADD CONSTRAINT "suppliers_party_role_id_party_roles_id_fk" FOREIGN KEY ("party_role_id") REFERENCES "public"."party_roles"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "suppliers" ADD CONSTRAINT "suppliers_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "tenant_memberships" ADD CONSTRAINT "tenant_memberships_user_id_users_id_fk" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "tenant_memberships" ADD CONSTRAINT "tenant_memberships_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "tenant_memberships" ADD CONSTRAINT "tenant_memberships_invited_by_users_id_fk" FOREIGN KEY ("invited_by") REFERENCES "public"."users"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "user_invitations" ADD CONSTRAINT "user_invitations_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "user_invitations" ADD CONSTRAINT "user_invitations_role_id_roles_id_fk" FOREIGN KEY ("role_id") REFERENCES "public"."roles"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "user_invitations" ADD CONSTRAINT "user_invitations_invited_by_users_id_fk" FOREIGN KEY ("invited_by") REFERENCES "public"."users"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "user_roles" ADD CONSTRAINT "user_roles_user_id_users_id_fk" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "user_roles" ADD CONSTRAINT "user_roles_role_id_roles_id_fk" FOREIGN KEY ("role_id") REFERENCES "public"."roles"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "user_roles" ADD CONSTRAINT "user_roles_assigned_by_users_id_fk" FOREIGN KEY ("assigned_by") REFERENCES "public"."users"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
CREATE INDEX "addresses_party_address_type_idx" ON "addresses" USING btree ("party_id","address_type");--> statement-breakpoint
CREATE INDEX "addresses_party_primary_idx" ON "addresses" USING btree ("party_id","is_primary");--> statement-breakpoint
CREATE INDEX "addresses_tenant_id_idx" ON "addresses" USING btree ("tenant_id");--> statement-breakpoint
CREATE UNIQUE INDEX "asset_types_tenant_code_idx" ON "asset_types" USING btree ("tenant_id","code");--> statement-breakpoint
CREATE INDEX "asset_types_tenant_category_idx" ON "asset_types" USING btree ("tenant_id","category");--> statement-breakpoint
CREATE INDEX "asset_types_tenant_active_idx" ON "asset_types" USING btree ("tenant_id","is_active");--> statement-breakpoint
CREATE UNIQUE INDEX "assets_tenant_code_idx" ON "assets" USING btree ("tenant_id","code");--> statement-breakpoint
CREATE INDEX "assets_tenant_location_idx" ON "assets" USING btree ("tenant_id","location_id");--> statement-breakpoint
CREATE INDEX "assets_tenant_parent_idx" ON "assets" USING btree ("tenant_id","parent_asset_id");--> statement-breakpoint
CREATE INDEX "assets_tenant_type_idx" ON "assets" USING btree ("tenant_id","asset_type");--> statement-breakpoint
CREATE INDEX "assets_tenant_status_idx" ON "assets" USING btree ("tenant_id","status");--> statement-breakpoint
CREATE UNIQUE INDEX "attribute_values_entity_attribute_unique" ON "attribute_values" USING btree ("entity_id","entity_type","attribute_id");--> statement-breakpoint
CREATE INDEX "attribute_values_tenant_entity_idx" ON "attribute_values" USING btree ("tenant_id","entity_type");--> statement-breakpoint
CREATE INDEX "attribute_values_tenant_attribute_idx" ON "attribute_values" USING btree ("tenant_id","attribute_id");--> statement-breakpoint
CREATE INDEX "attribute_values_entity_idx" ON "attribute_values" USING btree ("entity_id","entity_type");--> statement-breakpoint
CREATE UNIQUE INDEX "attributes_tenant_entity_name_unique" ON "attributes" USING btree ("tenant_id","entity_type","name");--> statement-breakpoint
CREATE INDEX "attributes_tenant_entity_idx" ON "attributes" USING btree ("tenant_id","entity_type");--> statement-breakpoint
CREATE INDEX "attributes_tenant_data_type_idx" ON "attributes" USING btree ("tenant_id","data_type");--> statement-breakpoint
CREATE INDEX "auth_audit_log_tenant_action_idx" ON "auth_audit_log" USING btree ("tenant_id","action");--> statement-breakpoint
CREATE INDEX "auth_audit_log_user_action_idx" ON "auth_audit_log" USING btree ("user_id","action");--> statement-breakpoint
CREATE INDEX "auth_audit_log_inserted_at_idx" ON "auth_audit_log" USING btree ("inserted_at");--> statement-breakpoint
CREATE INDEX "auth_audit_log_resource_idx" ON "auth_audit_log" USING btree ("resource","resource_id");--> statement-breakpoint
CREATE UNIQUE INDEX "auth_methods_provider_unique" ON "auth_methods" USING btree ("provider","provider_id");--> statement-breakpoint
CREATE INDEX "auth_methods_user_id_idx" ON "auth_methods" USING btree ("user_id");--> statement-breakpoint
CREATE INDEX "bom_components_bom_id_index" ON "bom_components" USING btree ("bom_id");--> statement-breakpoint
CREATE INDEX "bom_components_component_item_id_index" ON "bom_components" USING btree ("component_item_id");--> statement-breakpoint
CREATE INDEX "bom_components_parent_component_id_index" ON "bom_components" USING btree ("parent_component_id");--> statement-breakpoint
CREATE INDEX "bom_components_tenant_id_index" ON "bom_components" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX "bom_components_component_type_index" ON "bom_components" USING btree ("component_type");--> statement-breakpoint
CREATE INDEX "bom_components_sourcing_type_index" ON "bom_components" USING btree ("sourcing_type");--> statement-breakpoint
CREATE INDEX "bom_components_explode_in_mrp_index" ON "bom_components" USING btree ("explode_in_mrp");--> statement-breakpoint
CREATE INDEX "bom_version_history_bom_id_index" ON "bom_version_history" USING btree ("bom_id");--> statement-breakpoint
CREATE INDEX "bom_version_history_eco_id_index" ON "bom_version_history" USING btree ("eco_id");--> statement-breakpoint
CREATE INDEX "bom_version_history_tenant_id_index" ON "bom_version_history" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX "bom_version_history_changed_by_index" ON "bom_version_history" USING btree ("changed_by");--> statement-breakpoint
CREATE INDEX "boms_tenant_id_item_id_index" ON "boms" USING btree ("tenant_id","item_id");--> statement-breakpoint
CREATE INDEX "boms_tenant_id_status_index" ON "boms" USING btree ("tenant_id","status");--> statement-breakpoint
CREATE INDEX "boms_is_current_version_index" ON "boms" USING btree ("is_current_version");--> statement-breakpoint
CREATE INDEX "boms_valid_from_valid_to_index" ON "boms" USING btree ("valid_from","valid_to");--> statement-breakpoint
CREATE INDEX "boms_is_phantom_bom_index" ON "boms" USING btree ("is_phantom_bom");--> statement-breakpoint
CREATE INDEX "boms_manufacturing_policy_index" ON "boms" USING btree ("manufacturing_policy");--> statement-breakpoint
CREATE UNIQUE INDEX "components_item_id_idx" ON "components" USING btree ("item_id");--> statement-breakpoint
CREATE INDEX "components_tenant_idx" ON "components" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX "components_category_idx" ON "components" USING btree ("item_category_id");--> statement-breakpoint
CREATE INDEX "contact_mechanisms_party_contact_type_idx" ON "contact_mechanisms" USING btree ("party_id","contact_type");--> statement-breakpoint
CREATE INDEX "contact_mechanisms_party_primary_idx" ON "contact_mechanisms" USING btree ("party_id","is_primary");--> statement-breakpoint
CREATE INDEX "contact_mechanisms_tenant_id_idx" ON "contact_mechanisms" USING btree ("tenant_id");--> statement-breakpoint
CREATE UNIQUE INDEX "customers_tenant_customer_code_unique" ON "customers" USING btree ("tenant_id","customer_code");--> statement-breakpoint
CREATE UNIQUE INDEX "customers_party_role_id_unique" ON "customers" USING btree ("party_role_id");--> statement-breakpoint
CREATE INDEX "eco_bom_changes_eco_id_index" ON "eco_bom_changes" USING btree ("eco_id");--> statement-breakpoint
CREATE INDEX "eco_bom_changes_bom_id_index" ON "eco_bom_changes" USING btree ("bom_id");--> statement-breakpoint
CREATE INDEX "eco_bom_changes_tenant_id_index" ON "eco_bom_changes" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX "eco_bom_changes_change_action_index" ON "eco_bom_changes" USING btree ("change_action");--> statement-breakpoint
CREATE INDEX "eco_bom_changes_is_implemented_index" ON "eco_bom_changes" USING btree ("is_implemented");--> statement-breakpoint
CREATE UNIQUE INDEX "employees_tenant_employee_code_unique" ON "employees" USING btree ("tenant_id","employee_code");--> statement-breakpoint
CREATE UNIQUE INDEX "employees_party_role_id_unique" ON "employees" USING btree ("party_role_id");--> statement-breakpoint
CREATE INDEX "engineering_change_orders_tenant_id_status_index" ON "engineering_change_orders" USING btree ("tenant_id","status");--> statement-breakpoint
CREATE INDEX "engineering_change_orders_change_type_index" ON "engineering_change_orders" USING btree ("change_type");--> statement-breakpoint
CREATE INDEX "engineering_change_orders_priority_index" ON "engineering_change_orders" USING btree ("priority");--> statement-breakpoint
CREATE INDEX "engineering_change_orders_requested_by_index" ON "engineering_change_orders" USING btree ("requested_by");--> statement-breakpoint
CREATE INDEX "engineering_change_orders_assigned_to_index" ON "engineering_change_orders" USING btree ("assigned_to");--> statement-breakpoint
CREATE INDEX "engineering_change_orders_requested_completion_date_index" ON "engineering_change_orders" USING btree ("requested_completion_date");--> statement-breakpoint
CREATE UNIQUE INDEX "item_categories_tenant_name_idx" ON "item_categories" USING btree ("tenant_id","name");--> statement-breakpoint
CREATE UNIQUE INDEX "item_categories_tenant_code_idx" ON "item_categories" USING btree ("tenant_id","code") WHERE code IS NOT NULL;--> statement-breakpoint
CREATE INDEX "item_categories_parent_category_idx" ON "item_categories" USING btree ("parent_category_id");--> statement-breakpoint
CREATE UNIQUE INDEX "item_categories_tenant_name_item_type_idx" ON "item_categories" USING btree ("tenant_id","name","item_type");--> statement-breakpoint
CREATE INDEX "item_prices_item_price_type_idx" ON "item_prices" USING btree ("item_id","price_type");--> statement-breakpoint
CREATE INDEX "item_prices_tenant_idx" ON "item_prices" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX "item_prices_validity_idx" ON "item_prices" USING btree ("valid_from","valid_to");--> statement-breakpoint
CREATE UNIQUE INDEX "item_variants_item_id_idx" ON "item_variants" USING btree ("item_id");--> statement-breakpoint
CREATE INDEX "item_variants_parent_item_idx" ON "item_variants" USING btree ("parent_item_id");--> statement-breakpoint
CREATE INDEX "item_variants_tenant_idx" ON "item_variants" USING btree ("tenant_id");--> statement-breakpoint
CREATE UNIQUE INDEX "items_tenant_name_idx" ON "items" USING btree ("tenant_id","name");--> statement-breakpoint
CREATE UNIQUE INDEX "items_tenant_code_idx" ON "items" USING btree ("tenant_id","code") WHERE code IS NOT NULL;--> statement-breakpoint
CREATE INDEX "items_tenant_item_type_idx" ON "items" USING btree ("tenant_id","item_type");--> statement-breakpoint
CREATE INDEX "items_tenant_status_idx" ON "items" USING btree ("tenant_id","status");--> statement-breakpoint
CREATE INDEX "items_reference_item_idx" ON "items" USING btree ("reference_item_id");--> statement-breakpoint
CREATE INDEX "items_name_search_idx" ON "items" USING btree ("name_search_trimmed");--> statement-breakpoint
CREATE UNIQUE INDEX "location_types_tenant_code_idx" ON "location_types" USING btree ("tenant_id","code");--> statement-breakpoint
CREATE INDEX "location_types_tenant_category_idx" ON "location_types" USING btree ("tenant_id","category");--> statement-breakpoint
CREATE INDEX "location_types_tenant_active_idx" ON "location_types" USING btree ("tenant_id","is_active");--> statement-breakpoint
CREATE UNIQUE INDEX "locations_tenant_code_idx" ON "locations" USING btree ("tenant_id","code");--> statement-breakpoint
CREATE INDEX "locations_tenant_parent_idx" ON "locations" USING btree ("tenant_id","parent_location_id");--> statement-breakpoint
CREATE INDEX "locations_tenant_type_idx" ON "locations" USING btree ("tenant_id","location_type");--> statement-breakpoint
CREATE INDEX "locations_tenant_status_idx" ON "locations" USING btree ("tenant_id","status");--> statement-breakpoint
CREATE INDEX "lot_sources_tenant_id_lot_id_index" ON "lot_sources" USING btree ("tenant_id","lot_id");--> statement-breakpoint
CREATE INDEX "lot_sources_tenant_id_source_type_index" ON "lot_sources" USING btree ("tenant_id","source_type");--> statement-breakpoint
CREATE INDEX "lot_sources_tenant_id_source_id_index" ON "lot_sources" USING btree ("tenant_id","source_id");--> statement-breakpoint
CREATE INDEX "lot_sources_tenant_id_index" ON "lot_sources" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX "lots_tenant_id_parent_lot_id_index" ON "lots" USING btree ("tenant_id","parent_lot_id");--> statement-breakpoint
CREATE INDEX "lots_tenant_id_location_id_index" ON "lots" USING btree ("tenant_id","location_id");--> statement-breakpoint
CREATE INDEX "lots_tenant_id_index" ON "lots" USING btree ("tenant_id");--> statement-breakpoint
CREATE UNIQUE INDEX "organizations_party_id_unique" ON "organizations" USING btree ("party_id");--> statement-breakpoint
CREATE INDEX "organizations_tenant_id_idx" ON "organizations" USING btree ("tenant_id");--> statement-breakpoint
CREATE UNIQUE INDEX "parties_tenant_code_unique" ON "parties" USING btree ("tenant_id","code");--> statement-breakpoint
CREATE INDEX "parties_tenant_party_type_idx" ON "parties" USING btree ("tenant_id","party_type");--> statement-breakpoint
CREATE INDEX "parties_tenant_status_idx" ON "parties" USING btree ("tenant_id","status");--> statement-breakpoint
CREATE UNIQUE INDEX "party_roles_party_tenant_role_unique" ON "party_roles" USING btree ("party_id","tenant_id","role_type");--> statement-breakpoint
CREATE INDEX "party_roles_tenant_role_idx" ON "party_roles" USING btree ("tenant_id","role_type");--> statement-breakpoint
CREATE INDEX "party_roles_tenant_status_idx" ON "party_roles" USING btree ("tenant_id","status");--> statement-breakpoint
CREATE INDEX "permissions_resource_action_idx" ON "permissions" USING btree ("resource","action");--> statement-breakpoint
CREATE INDEX "permissions_scope_idx" ON "permissions" USING btree ("scope");--> statement-breakpoint
CREATE UNIQUE INDEX "persons_party_id_unique" ON "persons" USING btree ("party_id");--> statement-breakpoint
CREATE INDEX "persons_tenant_id_idx" ON "persons" USING btree ("tenant_id");--> statement-breakpoint
CREATE UNIQUE INDEX "products_item_id_idx" ON "products" USING btree ("item_id");--> statement-breakpoint
CREATE INDEX "products_tenant_idx" ON "products" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX "products_category_idx" ON "products" USING btree ("item_category_id");--> statement-breakpoint
CREATE UNIQUE INDEX "raw_materials_item_id_idx" ON "raw_materials" USING btree ("item_id");--> statement-breakpoint
CREATE INDEX "raw_materials_tenant_idx" ON "raw_materials" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX "raw_materials_category_idx" ON "raw_materials" USING btree ("item_category_id");--> statement-breakpoint
CREATE UNIQUE INDEX "role_permissions_role_permission_idx" ON "role_permissions" USING btree ("role_id","permission_id");--> statement-breakpoint
CREATE UNIQUE INDEX "roles_tenant_name_idx" ON "roles" USING btree ("tenant_id","name");--> statement-breakpoint
CREATE INDEX "roles_tenant_active_idx" ON "roles" USING btree ("tenant_id","is_active");--> statement-breakpoint
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
CREATE UNIQUE INDEX "services_item_id_idx" ON "services" USING btree ("item_id");--> statement-breakpoint
CREATE INDEX "services_tenant_idx" ON "services" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX "sessions_user_id_idx" ON "sessions" USING btree ("user_id");--> statement-breakpoint
CREATE INDEX "sessions_current_tenant_id_idx" ON "sessions" USING btree ("current_tenant_id");--> statement-breakpoint
CREATE INDEX "sessions_access_token_hash_idx" ON "sessions" USING btree ("access_token_hash");--> statement-breakpoint
CREATE INDEX "sessions_refresh_token_hash_idx" ON "sessions" USING btree ("refresh_token_hash");--> statement-breakpoint
CREATE INDEX "sessions_expires_at_idx" ON "sessions" USING btree ("expires_at");--> statement-breakpoint
CREATE INDEX "sessions_status_idx" ON "sessions" USING btree ("status");--> statement-breakpoint
CREATE INDEX "sessions_last_activity_at_idx" ON "sessions" USING btree ("last_activity_at");--> statement-breakpoint
CREATE INDEX "stock_transaction_sources_tenant_id_transaction_id_index" ON "stock_transaction_sources" USING btree ("tenant_id","transaction_id");--> statement-breakpoint
CREATE INDEX "stock_transaction_sources_tenant_id_source_type_index" ON "stock_transaction_sources" USING btree ("tenant_id","source_type");--> statement-breakpoint
CREATE INDEX "stock_transaction_sources_tenant_id_source_id_index" ON "stock_transaction_sources" USING btree ("tenant_id","source_id");--> statement-breakpoint
CREATE INDEX "stock_transaction_sources_tenant_id_index" ON "stock_transaction_sources" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX "stock_transactions_tenant_id_stock_id_index" ON "stock_transactions" USING btree ("tenant_id","stock_id");--> statement-breakpoint
CREATE INDEX "stock_transactions_tenant_id_lot_id_index" ON "stock_transactions" USING btree ("tenant_id","lot_id");--> statement-breakpoint
CREATE INDEX "stock_transactions_tenant_id_item_id_index" ON "stock_transactions" USING btree ("tenant_id","item_id");--> statement-breakpoint
CREATE INDEX "stock_transactions_tenant_id_transaction_type_index" ON "stock_transactions" USING btree ("tenant_id","transaction_type");--> statement-breakpoint
CREATE INDEX "stock_transactions_tenant_id_source_location_id_index" ON "stock_transactions" USING btree ("tenant_id","source_location_id");--> statement-breakpoint
CREATE INDEX "stock_transactions_tenant_id_destination_location_id_index" ON "stock_transactions" USING btree ("tenant_id","destination_location_id");--> statement-breakpoint
CREATE INDEX "stock_transactions_tenant_id_transaction_date_index" ON "stock_transactions" USING btree ("tenant_id","transaction_date");--> statement-breakpoint
CREATE INDEX "stock_transactions_tenant_id_created_by_index" ON "stock_transactions" USING btree ("tenant_id","created_by");--> statement-breakpoint
CREATE INDEX "stock_transactions_tenant_id_status_index" ON "stock_transactions" USING btree ("tenant_id","status");--> statement-breakpoint
CREATE INDEX "stock_transactions_tenant_id_index" ON "stock_transactions" USING btree ("tenant_id");--> statement-breakpoint
CREATE INDEX "stocks_tenant_id_item_id_index" ON "stocks" USING btree ("tenant_id","item_id");--> statement-breakpoint
CREATE INDEX "stocks_tenant_id_lot_id_index" ON "stocks" USING btree ("tenant_id","lot_id");--> statement-breakpoint
CREATE INDEX "stocks_tenant_id_location_id_index" ON "stocks" USING btree ("tenant_id","location_id");--> statement-breakpoint
CREATE INDEX "stocks_tenant_id_status_index" ON "stocks" USING btree ("tenant_id","status");--> statement-breakpoint
CREATE INDEX "stocks_tenant_id_index" ON "stocks" USING btree ("tenant_id");--> statement-breakpoint
CREATE UNIQUE INDEX "suppliers_tenant_supplier_code_unique" ON "suppliers" USING btree ("tenant_id","supplier_code");--> statement-breakpoint
CREATE UNIQUE INDEX "suppliers_party_role_id_unique" ON "suppliers" USING btree ("party_role_id");--> statement-breakpoint
CREATE UNIQUE INDEX "tenant_memberships_user_tenant_unique" ON "tenant_memberships" USING btree ("user_id","tenant_id");--> statement-breakpoint
CREATE INDEX "tenant_memberships_tenant_role_idx" ON "tenant_memberships" USING btree ("tenant_id","role");--> statement-breakpoint
CREATE INDEX "tenant_memberships_tenant_status_idx" ON "tenant_memberships" USING btree ("tenant_id","status");--> statement-breakpoint
CREATE INDEX "tenant_memberships_access_level_idx" ON "tenant_memberships" USING btree ("access_level");--> statement-breakpoint
CREATE INDEX "tenant_memberships_expires_at_idx" ON "tenant_memberships" USING btree ("expires_at");--> statement-breakpoint
CREATE INDEX "tenant_memberships_last_login_at_idx" ON "tenant_memberships" USING btree ("last_login_at");--> statement-breakpoint
CREATE UNIQUE INDEX "tenants_name_unique" ON "tenants" USING btree ("name");--> statement-breakpoint
CREATE UNIQUE INDEX "tenants_slug_idx" ON "tenants" USING btree ("slug");--> statement-breakpoint
CREATE UNIQUE INDEX "tenants_subdomain_idx" ON "tenants" USING btree ("subdomain");--> statement-breakpoint
CREATE INDEX "tenants_status_idx" ON "tenants" USING btree ("status");--> statement-breakpoint
CREATE UNIQUE INDEX "user_invitations_tenant_email_idx" ON "user_invitations" USING btree ("tenant_id","email") WHERE status = 'pending' AND deleted_at IS NULL;--> statement-breakpoint
CREATE UNIQUE INDEX "user_invitations_token_idx" ON "user_invitations" USING btree ("token");--> statement-breakpoint
CREATE INDEX "user_invitations_tenant_status_idx" ON "user_invitations" USING btree ("tenant_id","status");--> statement-breakpoint
CREATE INDEX "user_invitations_expires_at_idx" ON "user_invitations" USING btree ("expires_at");--> statement-breakpoint
CREATE INDEX "user_invitations_email_idx" ON "user_invitations" USING btree ("email");--> statement-breakpoint
CREATE UNIQUE INDEX "user_roles_user_role_idx" ON "user_roles" USING btree ("user_id","role_id");--> statement-breakpoint
CREATE INDEX "user_roles_role_idx" ON "user_roles" USING btree ("role_id");--> statement-breakpoint
CREATE INDEX "user_roles_expires_at_idx" ON "user_roles" USING btree ("expires_at");--> statement-breakpoint
CREATE INDEX "users_status_idx" ON "users" USING btree ("status");