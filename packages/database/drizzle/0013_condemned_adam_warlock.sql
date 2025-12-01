CREATE TABLE "account_balances" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"account_id" uuid NOT NULL,
	"fiscal_period_id" uuid NOT NULL,
	"opening_balance" numeric NOT NULL,
	"debit_total" numeric NOT NULL,
	"credit_total" numeric NOT NULL,
	"closing_balance" numeric NOT NULL,
	"currency" text DEFAULT 'TRY' NOT NULL,
	"calculated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "accounting_settings" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"country" text DEFAULT 'TR' NOT NULL,
	"accounting_standard" text DEFAULT 'TDHP' NOT NULL,
	"fiscal_year_start_month" integer DEFAULT 1 NOT NULL,
	"fiscal_year_start_day" integer DEFAULT 1 NOT NULL,
	"base_currency" text DEFAULT 'TRY' NOT NULL,
	"decimal_places" integer DEFAULT 2 NOT NULL,
	"thousands_separator" text DEFAULT '.' NOT NULL,
	"decimal_separator" text DEFAULT ',' NOT NULL,
	"enable_multi_currency" boolean DEFAULT false NOT NULL,
	"enable_cost_centers" boolean DEFAULT false NOT NULL,
	"enable_projects" boolean DEFAULT false NOT NULL,
	"enable_department_tracking" boolean DEFAULT false NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	CONSTRAINT "accounting_settings_tenant_id_unique" UNIQUE("tenant_id")
);
--> statement-breakpoint
CREATE TABLE "accounts" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"code" text NOT NULL,
	"name" text NOT NULL,
	"name_en" text,
	"parent_account_id" uuid,
	"account_type" text NOT NULL,
	"level" integer DEFAULT 1 NOT NULL,
	"is_group" boolean DEFAULT false NOT NULL,
	"is_active" boolean DEFAULT true NOT NULL,
	"currency" text DEFAULT 'TRY' NOT NULL,
	"is_bank_account" boolean DEFAULT false NOT NULL,
	"is_cash_account" boolean DEFAULT false NOT NULL,
	"is_reconcilable" boolean DEFAULT false NOT NULL,
	"requires_cost_center" boolean DEFAULT false NOT NULL,
	"requires_project" boolean DEFAULT false NOT NULL,
	"default_tax_rate_id" uuid,
	"report_category" text,
	"cash_flow_category" text,
	"description" text,
	"notes" text,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "bank_accounts" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"account_id" uuid NOT NULL,
	"bank_name" text NOT NULL,
	"account_number" text NOT NULL,
	"iban" text,
	"swift_code" text,
	"currency" text DEFAULT 'TRY' NOT NULL,
	"current_balance" numeric NOT NULL,
	"book_balance" numeric NOT NULL,
	"is_active" boolean DEFAULT true NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "bank_reconciliations" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"bank_account_id" uuid NOT NULL,
	"reconciliation_date" date NOT NULL,
	"book_balance" numeric NOT NULL,
	"bank_balance" numeric NOT NULL,
	"unreconciled_deposits" numeric NOT NULL,
	"unreconciled_withdrawals" numeric NOT NULL,
	"bank_charges" numeric NOT NULL,
	"final_balance" numeric NOT NULL,
	"notes" text,
	"reconciled_by" uuid NOT NULL,
	"reconciled_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "bank_statement_lines" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"bank_statement_id" uuid NOT NULL,
	"transaction_date" date NOT NULL,
	"description" text NOT NULL,
	"debit" numeric,
	"credit" numeric,
	"balance" numeric NOT NULL,
	"reference_number" text,
	"is_reconciled" boolean DEFAULT false NOT NULL,
	"matched_journal_entry_line_id" uuid,
	"reconciled_at" timestamp (6) with time zone,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "bank_statements" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"bank_account_id" uuid NOT NULL,
	"statement_date" date NOT NULL,
	"statement_number" text,
	"opening_balance" numeric NOT NULL,
	"closing_balance" numeric NOT NULL,
	"status" text DEFAULT 'imported' NOT NULL,
	"imported_at" timestamp (6) with time zone,
	"reconciled_at" timestamp (6) with time zone,
	"reconciled_by" uuid,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "coa_template_accounts" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"template_id" uuid NOT NULL,
	"code" text NOT NULL,
	"name" text NOT NULL,
	"name_en" text,
	"account_type" text NOT NULL,
	"parent_code" text,
	"level" integer DEFAULT 1 NOT NULL,
	"is_group" boolean DEFAULT false NOT NULL,
	"report_category" text,
	"cash_flow_category" text,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "coa_templates" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"code" text NOT NULL,
	"name" text NOT NULL,
	"country" text,
	"description" text,
	"is_system" boolean DEFAULT true NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	CONSTRAINT "coa_templates_code_unique" UNIQUE("code")
);
--> statement-breakpoint
CREATE TABLE "cost_centers" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"code" text NOT NULL,
	"name" text NOT NULL,
	"parent_cost_center_id" uuid,
	"level" integer DEFAULT 1 NOT NULL,
	"is_active" boolean DEFAULT true NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "depreciation_schedules" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"fixed_asset_account_id" uuid NOT NULL,
	"period_number" integer NOT NULL,
	"period_date" date NOT NULL,
	"depreciation_amount" numeric NOT NULL,
	"accumulated_depreciation" numeric NOT NULL,
	"book_value" numeric NOT NULL,
	"journal_entry_id" uuid,
	"status" text DEFAULT 'scheduled' NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "fiscal_periods" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"fiscal_year_id" uuid NOT NULL,
	"tenant_id" uuid NOT NULL,
	"period_number" integer NOT NULL,
	"period_type" text DEFAULT 'monthly' NOT NULL,
	"name" text NOT NULL,
	"start_date" date NOT NULL,
	"end_date" date NOT NULL,
	"status" text DEFAULT 'open' NOT NULL,
	"closed_at" timestamp (6) with time zone,
	"closed_by" uuid,
	"locked_at" timestamp (6) with time zone,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "fiscal_years" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"year" integer NOT NULL,
	"name" text NOT NULL,
	"start_date" date NOT NULL,
	"end_date" date NOT NULL,
	"status" text DEFAULT 'active' NOT NULL,
	"closed_at" timestamp (6) with time zone,
	"closed_by" uuid,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "fixed_asset_accounts" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"asset_id" uuid NOT NULL,
	"asset_account_id" uuid NOT NULL,
	"depreciation_account_id" uuid NOT NULL,
	"expense_account_id" uuid NOT NULL,
	"acquisition_cost" numeric NOT NULL,
	"residual_value" numeric,
	"useful_life_months" integer NOT NULL,
	"depreciation_method" text DEFAULT 'straight_line' NOT NULL,
	"depreciation_start_date" date NOT NULL,
	"last_depreciation_date" date,
	"accumulated_depreciation" numeric NOT NULL,
	"book_value" numeric NOT NULL,
	"status" text DEFAULT 'active' NOT NULL,
	"disposal_date" date,
	"disposal_amount" numeric,
	"disposal_journal_entry_id" uuid,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "journal_entries" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"entry_number" text NOT NULL,
	"entry_date" date NOT NULL,
	"posting_date" date NOT NULL,
	"reference" text,
	"description" text NOT NULL,
	"status" text DEFAULT 'draft' NOT NULL,
	"entry_type" text DEFAULT 'manual' NOT NULL,
	"source_module" text,
	"source_document_id" uuid,
	"debit_total" numeric NOT NULL,
	"credit_total" numeric NOT NULL,
	"currency" text DEFAULT 'TRY' NOT NULL,
	"reversed_entry_id" uuid,
	"reversal_reason" text,
	"is_recurring" boolean DEFAULT false NOT NULL,
	"recurring_schedule_id" uuid,
	"approval_status" text,
	"approved_by" uuid,
	"approved_at" timestamp (6) with time zone,
	"entry_hash" text,
	"created_by" uuid NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"deleted_at" timestamp (6) with time zone
);
--> statement-breakpoint
CREATE TABLE "journal_entry_lines" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"journal_entry_id" uuid NOT NULL,
	"line_number" integer NOT NULL,
	"account_id" uuid NOT NULL,
	"debit" numeric NOT NULL,
	"credit" numeric NOT NULL,
	"description" text,
	"cost_center_id" uuid,
	"project_id" uuid,
	"department_id" uuid,
	"currency" text DEFAULT 'TRY' NOT NULL,
	"exchange_rate" numeric,
	"is_reconciled" boolean DEFAULT false NOT NULL,
	"reconciled_at" timestamp (6) with time zone,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "payable_payments" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"payable_id" uuid NOT NULL,
	"payment_date" date NOT NULL,
	"amount" numeric NOT NULL,
	"payment_method" text NOT NULL,
	"reference_number" text,
	"bank_account_id" uuid,
	"journal_entry_id" uuid,
	"notes" text,
	"created_by" uuid NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "payables" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"supplier_id" uuid NOT NULL,
	"invoice_id" uuid,
	"invoice_number" text NOT NULL,
	"invoice_date" date NOT NULL,
	"due_date" date NOT NULL,
	"amount" numeric NOT NULL,
	"paid_amount" numeric NOT NULL,
	"remaining_amount" numeric NOT NULL,
	"currency" text DEFAULT 'TRY' NOT NULL,
	"exchange_rate" numeric,
	"status" text DEFAULT 'unpaid' NOT NULL,
	"payment_terms" text,
	"notes" text,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "receivable_payments" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"receivable_id" uuid NOT NULL,
	"payment_date" date NOT NULL,
	"amount" numeric NOT NULL,
	"payment_method" text NOT NULL,
	"reference_number" text,
	"bank_account_id" uuid,
	"journal_entry_id" uuid,
	"notes" text,
	"created_by" uuid NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "receivables" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"customer_id" uuid NOT NULL,
	"invoice_id" uuid,
	"invoice_number" text NOT NULL,
	"invoice_date" date NOT NULL,
	"due_date" date NOT NULL,
	"amount" numeric NOT NULL,
	"paid_amount" numeric NOT NULL,
	"remaining_amount" numeric NOT NULL,
	"currency" text DEFAULT 'TRY' NOT NULL,
	"exchange_rate" numeric,
	"status" text DEFAULT 'unpaid' NOT NULL,
	"payment_terms" text,
	"notes" text,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "recurring_journal_entries" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"name" text NOT NULL,
	"description" text,
	"frequency" text NOT NULL,
	"start_date" date NOT NULL,
	"end_date" date,
	"next_run_date" date NOT NULL,
	"template_data" jsonb NOT NULL,
	"is_active" boolean DEFAULT true NOT NULL,
	"last_run_at" timestamp (6) with time zone,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "tax_rates" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"tenant_id" uuid NOT NULL,
	"code" text NOT NULL,
	"name" text NOT NULL,
	"tax_type" text NOT NULL,
	"rate" numeric NOT NULL,
	"tax_account_id" uuid,
	"valid_from" date,
	"valid_to" date,
	"is_default" boolean DEFAULT false NOT NULL,
	"is_active" boolean DEFAULT true NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL,
	"updated_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "tax_templates" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"country" text NOT NULL,
	"code" text NOT NULL,
	"name" text NOT NULL,
	"inserted_at" timestamp (6) with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
ALTER TABLE "account_balances" ADD CONSTRAINT "account_balances_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "account_balances" ADD CONSTRAINT "account_balances_account_id_accounts_id_fk" FOREIGN KEY ("account_id") REFERENCES "public"."accounts"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "account_balances" ADD CONSTRAINT "account_balances_fiscal_period_id_fiscal_periods_id_fk" FOREIGN KEY ("fiscal_period_id") REFERENCES "public"."fiscal_periods"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "accounting_settings" ADD CONSTRAINT "accounting_settings_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "accounts" ADD CONSTRAINT "accounts_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "bank_accounts" ADD CONSTRAINT "bank_accounts_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "bank_accounts" ADD CONSTRAINT "bank_accounts_account_id_accounts_id_fk" FOREIGN KEY ("account_id") REFERENCES "public"."accounts"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "bank_reconciliations" ADD CONSTRAINT "bank_reconciliations_bank_account_id_bank_accounts_id_fk" FOREIGN KEY ("bank_account_id") REFERENCES "public"."bank_accounts"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "bank_reconciliations" ADD CONSTRAINT "bank_reconciliations_reconciled_by_users_id_fk" FOREIGN KEY ("reconciled_by") REFERENCES "public"."users"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "bank_statement_lines" ADD CONSTRAINT "bank_statement_lines_bank_statement_id_bank_statements_id_fk" FOREIGN KEY ("bank_statement_id") REFERENCES "public"."bank_statements"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "bank_statement_lines" ADD CONSTRAINT "bank_statement_lines_matched_journal_entry_line_id_journal_entry_lines_id_fk" FOREIGN KEY ("matched_journal_entry_line_id") REFERENCES "public"."journal_entry_lines"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "bank_statements" ADD CONSTRAINT "bank_statements_bank_account_id_bank_accounts_id_fk" FOREIGN KEY ("bank_account_id") REFERENCES "public"."bank_accounts"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "bank_statements" ADD CONSTRAINT "bank_statements_reconciled_by_users_id_fk" FOREIGN KEY ("reconciled_by") REFERENCES "public"."users"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "coa_template_accounts" ADD CONSTRAINT "coa_template_accounts_template_id_coa_templates_id_fk" FOREIGN KEY ("template_id") REFERENCES "public"."coa_templates"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "cost_centers" ADD CONSTRAINT "cost_centers_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "depreciation_schedules" ADD CONSTRAINT "depreciation_schedules_fixed_asset_account_id_fixed_asset_accounts_id_fk" FOREIGN KEY ("fixed_asset_account_id") REFERENCES "public"."fixed_asset_accounts"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "depreciation_schedules" ADD CONSTRAINT "depreciation_schedules_journal_entry_id_journal_entries_id_fk" FOREIGN KEY ("journal_entry_id") REFERENCES "public"."journal_entries"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "fiscal_periods" ADD CONSTRAINT "fiscal_periods_fiscal_year_id_fiscal_years_id_fk" FOREIGN KEY ("fiscal_year_id") REFERENCES "public"."fiscal_years"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "fiscal_periods" ADD CONSTRAINT "fiscal_periods_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "fiscal_periods" ADD CONSTRAINT "fiscal_periods_closed_by_users_id_fk" FOREIGN KEY ("closed_by") REFERENCES "public"."users"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "fiscal_years" ADD CONSTRAINT "fiscal_years_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "fiscal_years" ADD CONSTRAINT "fiscal_years_closed_by_users_id_fk" FOREIGN KEY ("closed_by") REFERENCES "public"."users"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "fixed_asset_accounts" ADD CONSTRAINT "fixed_asset_accounts_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "fixed_asset_accounts" ADD CONSTRAINT "fixed_asset_accounts_asset_id_assets_id_fk" FOREIGN KEY ("asset_id") REFERENCES "public"."assets"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "fixed_asset_accounts" ADD CONSTRAINT "fixed_asset_accounts_asset_account_id_accounts_id_fk" FOREIGN KEY ("asset_account_id") REFERENCES "public"."accounts"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "fixed_asset_accounts" ADD CONSTRAINT "fixed_asset_accounts_depreciation_account_id_accounts_id_fk" FOREIGN KEY ("depreciation_account_id") REFERENCES "public"."accounts"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "fixed_asset_accounts" ADD CONSTRAINT "fixed_asset_accounts_expense_account_id_accounts_id_fk" FOREIGN KEY ("expense_account_id") REFERENCES "public"."accounts"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "fixed_asset_accounts" ADD CONSTRAINT "fixed_asset_accounts_disposal_journal_entry_id_journal_entries_id_fk" FOREIGN KEY ("disposal_journal_entry_id") REFERENCES "public"."journal_entries"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "journal_entries" ADD CONSTRAINT "journal_entries_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "journal_entries" ADD CONSTRAINT "journal_entries_approved_by_users_id_fk" FOREIGN KEY ("approved_by") REFERENCES "public"."users"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "journal_entries" ADD CONSTRAINT "journal_entries_created_by_users_id_fk" FOREIGN KEY ("created_by") REFERENCES "public"."users"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "journal_entry_lines" ADD CONSTRAINT "journal_entry_lines_journal_entry_id_journal_entries_id_fk" FOREIGN KEY ("journal_entry_id") REFERENCES "public"."journal_entries"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "journal_entry_lines" ADD CONSTRAINT "journal_entry_lines_account_id_accounts_id_fk" FOREIGN KEY ("account_id") REFERENCES "public"."accounts"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "journal_entry_lines" ADD CONSTRAINT "journal_entry_lines_cost_center_id_cost_centers_id_fk" FOREIGN KEY ("cost_center_id") REFERENCES "public"."cost_centers"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "payable_payments" ADD CONSTRAINT "payable_payments_payable_id_payables_id_fk" FOREIGN KEY ("payable_id") REFERENCES "public"."payables"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "payable_payments" ADD CONSTRAINT "payable_payments_bank_account_id_bank_accounts_id_fk" FOREIGN KEY ("bank_account_id") REFERENCES "public"."bank_accounts"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "payable_payments" ADD CONSTRAINT "payable_payments_journal_entry_id_journal_entries_id_fk" FOREIGN KEY ("journal_entry_id") REFERENCES "public"."journal_entries"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "payable_payments" ADD CONSTRAINT "payable_payments_created_by_users_id_fk" FOREIGN KEY ("created_by") REFERENCES "public"."users"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "payables" ADD CONSTRAINT "payables_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "payables" ADD CONSTRAINT "payables_supplier_id_parties_id_fk" FOREIGN KEY ("supplier_id") REFERENCES "public"."parties"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "receivable_payments" ADD CONSTRAINT "receivable_payments_receivable_id_receivables_id_fk" FOREIGN KEY ("receivable_id") REFERENCES "public"."receivables"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "receivable_payments" ADD CONSTRAINT "receivable_payments_bank_account_id_bank_accounts_id_fk" FOREIGN KEY ("bank_account_id") REFERENCES "public"."bank_accounts"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "receivable_payments" ADD CONSTRAINT "receivable_payments_journal_entry_id_journal_entries_id_fk" FOREIGN KEY ("journal_entry_id") REFERENCES "public"."journal_entries"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "receivable_payments" ADD CONSTRAINT "receivable_payments_created_by_users_id_fk" FOREIGN KEY ("created_by") REFERENCES "public"."users"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "receivables" ADD CONSTRAINT "receivables_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "receivables" ADD CONSTRAINT "receivables_customer_id_parties_id_fk" FOREIGN KEY ("customer_id") REFERENCES "public"."parties"("id") ON DELETE restrict ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "recurring_journal_entries" ADD CONSTRAINT "recurring_journal_entries_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "tax_rates" ADD CONSTRAINT "tax_rates_tenant_id_tenants_id_fk" FOREIGN KEY ("tenant_id") REFERENCES "public"."tenants"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "tax_rates" ADD CONSTRAINT "tax_rates_tax_account_id_accounts_id_fk" FOREIGN KEY ("tax_account_id") REFERENCES "public"."accounts"("id") ON DELETE set null ON UPDATE no action;--> statement-breakpoint
CREATE UNIQUE INDEX "account_balances_account_period_idx" ON "account_balances" USING btree ("account_id","fiscal_period_id");--> statement-breakpoint
CREATE INDEX "account_balances_tenant_period_idx" ON "account_balances" USING btree ("tenant_id","fiscal_period_id");--> statement-breakpoint
CREATE UNIQUE INDEX "accounts_tenant_code_idx" ON "accounts" USING btree ("tenant_id","code");--> statement-breakpoint
CREATE INDEX "accounts_tenant_parent_idx" ON "accounts" USING btree ("tenant_id","parent_account_id");--> statement-breakpoint
CREATE INDEX "accounts_tenant_type_idx" ON "accounts" USING btree ("tenant_id","account_type");--> statement-breakpoint
CREATE INDEX "accounts_tenant_active_idx" ON "accounts" USING btree ("tenant_id","is_active");--> statement-breakpoint
CREATE UNIQUE INDEX "bank_accounts_tenant_account_idx" ON "bank_accounts" USING btree ("tenant_id","account_id");--> statement-breakpoint
CREATE INDEX "bank_accounts_tenant_active_idx" ON "bank_accounts" USING btree ("tenant_id","is_active");--> statement-breakpoint
CREATE INDEX "bank_statement_lines_statement_date_idx" ON "bank_statement_lines" USING btree ("bank_statement_id","transaction_date");--> statement-breakpoint
CREATE INDEX "bank_statement_lines_reconciled_idx" ON "bank_statement_lines" USING btree ("is_reconciled");--> statement-breakpoint
CREATE INDEX "bank_statements_account_date_idx" ON "bank_statements" USING btree ("bank_account_id","statement_date");--> statement-breakpoint
CREATE UNIQUE INDEX "coa_template_accounts_template_code_idx" ON "coa_template_accounts" USING btree ("template_id","code");--> statement-breakpoint
CREATE UNIQUE INDEX "cost_centers_tenant_code_idx" ON "cost_centers" USING btree ("tenant_id","code");--> statement-breakpoint
CREATE INDEX "cost_centers_tenant_parent_idx" ON "cost_centers" USING btree ("tenant_id","parent_cost_center_id");--> statement-breakpoint
CREATE UNIQUE INDEX "depreciation_schedules_asset_period_idx" ON "depreciation_schedules" USING btree ("fixed_asset_account_id","period_number");--> statement-breakpoint
CREATE UNIQUE INDEX "fiscal_periods_year_period_idx" ON "fiscal_periods" USING btree ("fiscal_year_id","period_number");--> statement-breakpoint
CREATE INDEX "fiscal_periods_tenant_status_idx" ON "fiscal_periods" USING btree ("tenant_id","status");--> statement-breakpoint
CREATE UNIQUE INDEX "fiscal_years_tenant_year_idx" ON "fiscal_years" USING btree ("tenant_id","year");--> statement-breakpoint
CREATE UNIQUE INDEX "fixed_asset_accounts_tenant_asset_idx" ON "fixed_asset_accounts" USING btree ("tenant_id","asset_id");--> statement-breakpoint
CREATE INDEX "fixed_asset_accounts_tenant_status_idx" ON "fixed_asset_accounts" USING btree ("tenant_id","status");--> statement-breakpoint
CREATE UNIQUE INDEX "journal_entries_tenant_entry_number_idx" ON "journal_entries" USING btree ("tenant_id","entry_number");--> statement-breakpoint
CREATE INDEX "journal_entries_tenant_status_idx" ON "journal_entries" USING btree ("tenant_id","status");--> statement-breakpoint
CREATE INDEX "journal_entries_tenant_date_idx" ON "journal_entries" USING btree ("tenant_id","entry_date");--> statement-breakpoint
CREATE INDEX "journal_entries_tenant_source_idx" ON "journal_entries" USING btree ("tenant_id","source_module","source_document_id");--> statement-breakpoint
CREATE UNIQUE INDEX "journal_entry_lines_entry_line_idx" ON "journal_entry_lines" USING btree ("journal_entry_id","line_number");--> statement-breakpoint
CREATE INDEX "journal_entry_lines_account_idx" ON "journal_entry_lines" USING btree ("account_id");--> statement-breakpoint
CREATE INDEX "journal_entry_lines_cost_center_idx" ON "journal_entry_lines" USING btree ("cost_center_id");--> statement-breakpoint
CREATE INDEX "payables_tenant_supplier_idx" ON "payables" USING btree ("tenant_id","supplier_id");--> statement-breakpoint
CREATE INDEX "payables_tenant_status_idx" ON "payables" USING btree ("tenant_id","status");--> statement-breakpoint
CREATE INDEX "payables_tenant_due_date_idx" ON "payables" USING btree ("tenant_id","due_date");--> statement-breakpoint
CREATE INDEX "receivables_tenant_customer_idx" ON "receivables" USING btree ("tenant_id","customer_id");--> statement-breakpoint
CREATE INDEX "receivables_tenant_status_idx" ON "receivables" USING btree ("tenant_id","status");--> statement-breakpoint
CREATE INDEX "receivables_tenant_due_date_idx" ON "receivables" USING btree ("tenant_id","due_date");--> statement-breakpoint
CREATE INDEX "recurring_journal_entries_tenant_active_idx" ON "recurring_journal_entries" USING btree ("tenant_id","is_active");--> statement-breakpoint
CREATE INDEX "recurring_journal_entries_next_run_idx" ON "recurring_journal_entries" USING btree ("next_run_date");--> statement-breakpoint
CREATE UNIQUE INDEX "tax_rates_tenant_code_idx" ON "tax_rates" USING btree ("tenant_id","code");--> statement-breakpoint
CREATE UNIQUE INDEX "tax_templates_country_code_idx" ON "tax_templates" USING btree ("country","code");