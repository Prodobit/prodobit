import { relations, sql } from "drizzle-orm";
import {
  pgTable,
  uuid,
  text,
  timestamp,
  boolean,
  integer,
  decimal,
  date,
  jsonb,
  uniqueIndex,
  index,
  check,
} from "drizzle-orm/pg-core";
import { tenants } from "./tenants";
import { parties } from "./parties";
import { users } from "./auth";
import { assets } from "./assets";
import { numericAsDecimal } from "../types/decimal";

// ═══════════════════════════════════════════════════════════════════════════
// ACCOUNTING SETTINGS (Tenant Configuration)
// ═══════════════════════════════════════════════════════════════════════════

export const accountingSettings = pgTable(
  "accounting_settings",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .unique()
      .references(() => tenants.id, { onDelete: "cascade" }),

    // Country & Standard
    country: text("country").notNull().default("TR"),
    accountingStandard: text("accounting_standard").notNull().default("TDHP"),

    // Fiscal Year
    fiscalYearStartMonth: integer("fiscal_year_start_month").notNull().default(1),
    fiscalYearStartDay: integer("fiscal_year_start_day").notNull().default(1),

    // Currency
    baseCurrency: text("base_currency").notNull().default("TRY"),

    // Formatting
    decimalPlaces: integer("decimal_places").notNull().default(2),
    thousandsSeparator: text("thousands_separator").notNull().default("."),
    decimalSeparator: text("decimal_separator").notNull().default(","),

    // Features
    enableMultiCurrency: boolean("enable_multi_currency").notNull().default(false),
    enableCostCenters: boolean("enable_cost_centers").notNull().default(false),
    enableProjects: boolean("enable_projects").notNull().default(false),
    enableDepartmentTracking: boolean("enable_department_tracking").notNull().default(false),

    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    accountingStandardCheck: sql`CONSTRAINT accounting_settings_standard_check CHECK (accounting_standard IN ('TDHP', 'US_GAAP', 'IFRS', 'UK_GAAP', 'SKR03', 'SKR04', 'CUSTOM'))`,
  })
);

// ═══════════════════════════════════════════════════════════════════════════
// CHART OF ACCOUNTS TEMPLATES (System-wide)
// ═══════════════════════════════════════════════════════════════════════════

export const coaTemplates = pgTable(
  "coa_templates",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    code: text("code").notNull().unique(),
    name: text("name").notNull(),
    country: text("country"),
    description: text("description"),
    isSystem: boolean("is_system").notNull().default(true),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  }
);

export const coaTemplateAccounts = pgTable(
  "coa_template_accounts",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    templateId: uuid("template_id")
      .notNull()
      .references(() => coaTemplates.id, { onDelete: "cascade" }),
    code: text("code").notNull(),
    name: text("name").notNull(),
    nameEn: text("name_en"),
    accountType: text("account_type").notNull(),
    parentCode: text("parent_code"),
    level: integer("level").notNull().default(1),
    isGroup: boolean("is_group").notNull().default(false),
    reportCategory: text("report_category"),
    cashFlowCategory: text("cash_flow_category"),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    templateCodeIdx: uniqueIndex("coa_template_accounts_template_code_idx").on(
      table.templateId,
      table.code
    ),
    accountTypeCheck: sql`CONSTRAINT coa_template_accounts_type_check CHECK (account_type IN ('asset', 'liability', 'equity', 'revenue', 'expense'))`,
  })
);

// ═══════════════════════════════════════════════════════════════════════════
// CHART OF ACCOUNTS (Tenant-specific)
// ═══════════════════════════════════════════════════════════════════════════

export const accounts = pgTable(
  "accounts",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    code: text("code").notNull(),
    name: text("name").notNull(),
    nameEn: text("name_en"),
    parentAccountId: uuid("parent_account_id"),
    accountType: text("account_type").notNull(),
    level: integer("level").notNull().default(1),
    isGroup: boolean("is_group").notNull().default(false),
    isActive: boolean("is_active").notNull().default(true),
    currency: text("currency").notNull().default("TRY"),

    // Attributes
    isBankAccount: boolean("is_bank_account").notNull().default(false),
    isCashAccount: boolean("is_cash_account").notNull().default(false),
    isReconcilable: boolean("is_reconcilable").notNull().default(false),
    requiresCostCenter: boolean("requires_cost_center").notNull().default(false),
    requiresProject: boolean("requires_project").notNull().default(false),

    // Tax
    defaultTaxRateId: uuid("default_tax_rate_id"),

    // Report mapping
    reportCategory: text("report_category"),
    cashFlowCategory: text("cash_flow_category"),

    // Metadata
    description: text("description"),
    notes: text("notes"),

    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    tenantCodeIdx: uniqueIndex("accounts_tenant_code_idx").on(table.tenantId, table.code),
    tenantParentIdx: index("accounts_tenant_parent_idx").on(table.tenantId, table.parentAccountId),
    tenantTypeIdx: index("accounts_tenant_type_idx").on(table.tenantId, table.accountType),
    tenantActiveIdx: index("accounts_tenant_active_idx").on(table.tenantId, table.isActive),
    accountTypeCheck: sql`CONSTRAINT accounts_type_check CHECK (account_type IN ('asset', 'liability', 'equity', 'revenue', 'expense'))`,
  })
);

// ═══════════════════════════════════════════════════════════════════════════
// FISCAL YEARS & PERIODS
// ═══════════════════════════════════════════════════════════════════════════

export const fiscalYears = pgTable(
  "fiscal_years",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    year: integer("year").notNull(),
    name: text("name").notNull(),
    startDate: date("start_date").notNull(),
    endDate: date("end_date").notNull(),
    status: text("status").notNull().default("active"),
    closedAt: timestamp("closed_at", { withTimezone: true, precision: 6 }),
    closedBy: uuid("closed_by").references(() => users.id, { onDelete: "set null" }),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    tenantYearIdx: uniqueIndex("fiscal_years_tenant_year_idx").on(table.tenantId, table.year),
    statusCheck: sql`CONSTRAINT fiscal_years_status_check CHECK (status IN ('active', 'closed'))`,
  })
);

export const fiscalPeriods = pgTable(
  "fiscal_periods",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    fiscalYearId: uuid("fiscal_year_id")
      .notNull()
      .references(() => fiscalYears.id, { onDelete: "cascade" }),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    periodNumber: integer("period_number").notNull(),
    periodType: text("period_type").notNull().default("monthly"),
    name: text("name").notNull(),
    startDate: date("start_date").notNull(),
    endDate: date("end_date").notNull(),
    status: text("status").notNull().default("open"),
    closedAt: timestamp("closed_at", { withTimezone: true, precision: 6 }),
    closedBy: uuid("closed_by").references(() => users.id, { onDelete: "set null" }),
    lockedAt: timestamp("locked_at", { withTimezone: true, precision: 6 }),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    yearPeriodIdx: uniqueIndex("fiscal_periods_year_period_idx").on(
      table.fiscalYearId,
      table.periodNumber
    ),
    tenantStatusIdx: index("fiscal_periods_tenant_status_idx").on(table.tenantId, table.status),
    statusCheck: sql`CONSTRAINT fiscal_periods_status_check CHECK (status IN ('open', 'closed', 'locked'))`,
    periodTypeCheck: sql`CONSTRAINT fiscal_periods_type_check CHECK (period_type IN ('monthly', 'quarterly'))`,
  })
);

// ═══════════════════════════════════════════════════════════════════════════
// TAX MANAGEMENT
// ═══════════════════════════════════════════════════════════════════════════

export const taxTemplates = pgTable(
  "tax_templates",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    country: text("country").notNull(),
    code: text("code").notNull(),
    name: text("name").notNull(),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    countryCodeIdx: uniqueIndex("tax_templates_country_code_idx").on(table.country, table.code),
  })
);

export const taxRates = pgTable(
  "tax_rates",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    code: text("code").notNull(),
    name: text("name").notNull(),
    taxType: text("tax_type").notNull(),
    rate: numericAsDecimal("rate", { precision: 10, scale: 4 }).notNull(),
    taxAccountId: uuid("tax_account_id").references(() => accounts.id, { onDelete: "set null" }),
    validFrom: date("valid_from"),
    validTo: date("valid_to"),
    isDefault: boolean("is_default").notNull().default(false),
    isActive: boolean("is_active").notNull().default(true),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    tenantCodeIdx: uniqueIndex("tax_rates_tenant_code_idx").on(table.tenantId, table.code),
    taxTypeCheck: sql`CONSTRAINT tax_rates_type_check CHECK (tax_type IN ('vat', 'sales_tax', 'withholding', 'excise', 'other'))`,
  })
);

// ═══════════════════════════════════════════════════════════════════════════
// JOURNAL ENTRIES
// ═══════════════════════════════════════════════════════════════════════════

export const journalEntries = pgTable(
  "journal_entries",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    entryNumber: text("entry_number").notNull(),
    entryDate: date("entry_date").notNull(),
    postingDate: date("posting_date").notNull(),

    reference: text("reference"),
    description: text("description").notNull(),

    status: text("status").notNull().default("draft"),
    entryType: text("entry_type").notNull().default("manual"),
    sourceModule: text("source_module"),
    sourceDocumentId: uuid("source_document_id"),

    // Totals
    debitTotal: numericAsDecimal("debit_total", { precision: 18, scale: 4 }).notNull(),
    creditTotal: numericAsDecimal("credit_total", { precision: 18, scale: 4 }).notNull(),
    currency: text("currency").notNull().default("TRY"),

    // Reversal
    reversedEntryId: uuid("reversed_entry_id"),
    reversalReason: text("reversal_reason"),

    // Recurring
    isRecurring: boolean("is_recurring").notNull().default(false),
    recurringScheduleId: uuid("recurring_schedule_id"),

    // Approval
    approvalStatus: text("approval_status"),
    approvedBy: uuid("approved_by").references(() => users.id, { onDelete: "set null" }),
    approvedAt: timestamp("approved_at", { withTimezone: true, precision: 6 }),

    // Sardis-ready: hash for integrity
    entryHash: text("entry_hash"),

    // Audit
    createdBy: uuid("created_by")
      .notNull()
      .references(() => users.id, { onDelete: "restrict" }),

    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    tenantEntryNumberIdx: uniqueIndex("journal_entries_tenant_entry_number_idx").on(
      table.tenantId,
      table.entryNumber
    ),
    tenantStatusIdx: index("journal_entries_tenant_status_idx").on(table.tenantId, table.status),
    tenantDateIdx: index("journal_entries_tenant_date_idx").on(table.tenantId, table.entryDate),
    tenantSourceIdx: index("journal_entries_tenant_source_idx").on(
      table.tenantId,
      table.sourceModule,
      table.sourceDocumentId
    ),
    statusCheck: sql`CONSTRAINT journal_entries_status_check CHECK (status IN ('draft', 'posted', 'reversed'))`,
    entryTypeCheck: sql`CONSTRAINT journal_entries_type_check CHECK (entry_type IN ('manual', 'automated', 'reversal', 'recurring', 'closing', 'opening'))`,
  })
);

export const journalEntryLines = pgTable(
  "journal_entry_lines",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    journalEntryId: uuid("journal_entry_id")
      .notNull()
      .references(() => journalEntries.id, { onDelete: "cascade" }),
    lineNumber: integer("line_number").notNull(),

    accountId: uuid("account_id")
      .notNull()
      .references(() => accounts.id, { onDelete: "restrict" }),
    debit: numericAsDecimal("debit", { precision: 18, scale: 4 }).notNull(),
    credit: numericAsDecimal("credit", { precision: 18, scale: 4 }).notNull(),

    description: text("description"),

    // Dimensions
    costCenterId: uuid("cost_center_id").references(() => costCenters.id, { onDelete: "set null" }),
    projectId: uuid("project_id"),
    departmentId: uuid("department_id"),

    // Currency
    currency: text("currency").notNull().default("TRY"),
    exchangeRate: numericAsDecimal("exchange_rate", { precision: 18, scale: 8 }),

    // Reconciliation
    isReconciled: boolean("is_reconciled").notNull().default(false),
    reconciledAt: timestamp("reconciled_at", { withTimezone: true, precision: 6 }),

    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    entryLineIdx: uniqueIndex("journal_entry_lines_entry_line_idx").on(
      table.journalEntryId,
      table.lineNumber
    ),
    accountIdx: index("journal_entry_lines_account_idx").on(table.accountId),
    costCenterIdx: index("journal_entry_lines_cost_center_idx").on(table.costCenterId),
  })
);

// ═══════════════════════════════════════════════════════════════════════════
// ACCOUNT BALANCES
// ═══════════════════════════════════════════════════════════════════════════

export const accountBalances = pgTable(
  "account_balances",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    accountId: uuid("account_id")
      .notNull()
      .references(() => accounts.id, { onDelete: "cascade" }),
    fiscalPeriodId: uuid("fiscal_period_id")
      .notNull()
      .references(() => fiscalPeriods.id, { onDelete: "cascade" }),

    openingBalance: numericAsDecimal("opening_balance", { precision: 18, scale: 4 })
      .notNull()
      ,
    debitTotal: numericAsDecimal("debit_total", { precision: 18, scale: 4 })
      .notNull()
      ,
    creditTotal: numericAsDecimal("credit_total", { precision: 18, scale: 4 })
      .notNull()
      ,
    closingBalance: numericAsDecimal("closing_balance", { precision: 18, scale: 4 })
      .notNull()
      ,

    currency: text("currency").notNull().default("TRY"),

    calculatedAt: timestamp("calculated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    accountPeriodIdx: uniqueIndex("account_balances_account_period_idx").on(
      table.accountId,
      table.fiscalPeriodId
    ),
    tenantPeriodIdx: index("account_balances_tenant_period_idx").on(
      table.tenantId,
      table.fiscalPeriodId
    ),
  })
);

// ═══════════════════════════════════════════════════════════════════════════
// ACCOUNTS PAYABLE
// ═══════════════════════════════════════════════════════════════════════════

export const payables = pgTable(
  "payables",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    supplierId: uuid("supplier_id")
      .notNull()
      .references(() => parties.id, { onDelete: "restrict" }),
    invoiceId: uuid("invoice_id"),

    invoiceNumber: text("invoice_number").notNull(),
    invoiceDate: date("invoice_date").notNull(),
    dueDate: date("due_date").notNull(),

    amount: numericAsDecimal("amount", { precision: 18, scale: 4 }).notNull(),
    paidAmount: numericAsDecimal("paid_amount", { precision: 18, scale: 4 })
      .notNull()
      ,
    remainingAmount: numericAsDecimal("remaining_amount", { precision: 18, scale: 4 })
      .notNull()
      ,

    currency: text("currency").notNull().default("TRY"),
    exchangeRate: numericAsDecimal("exchange_rate", { precision: 18, scale: 8 }),

    status: text("status").notNull().default("unpaid"),

    paymentTerms: text("payment_terms"),
    notes: text("notes"),

    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    tenantSupplierIdx: index("payables_tenant_supplier_idx").on(table.tenantId, table.supplierId),
    tenantStatusIdx: index("payables_tenant_status_idx").on(table.tenantId, table.status),
    tenantDueDateIdx: index("payables_tenant_due_date_idx").on(table.tenantId, table.dueDate),
    statusCheck: sql`CONSTRAINT payables_status_check CHECK (status IN ('unpaid', 'partial', 'paid', 'overdue', 'written_off'))`,
  })
);

export const payablePayments = pgTable(
  "payable_payments",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    payableId: uuid("payable_id")
      .notNull()
      .references(() => payables.id, { onDelete: "cascade" }),
    paymentDate: date("payment_date").notNull(),
    amount: numericAsDecimal("amount", { precision: 18, scale: 4 }).notNull(),
    paymentMethod: text("payment_method").notNull(),
    referenceNumber: text("reference_number"),
    bankAccountId: uuid("bank_account_id").references(() => bankAccounts.id, {
      onDelete: "set null",
    }),
    journalEntryId: uuid("journal_entry_id").references(() => journalEntries.id, {
      onDelete: "set null",
    }),
    notes: text("notes"),
    createdBy: uuid("created_by")
      .notNull()
      .references(() => users.id, { onDelete: "restrict" }),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    paymentMethodCheck: sql`CONSTRAINT payable_payments_method_check CHECK (payment_method IN ('bank_transfer', 'cash', 'check', 'credit_card', 'other'))`,
  })
);

// ═══════════════════════════════════════════════════════════════════════════
// ACCOUNTS RECEIVABLE
// ═══════════════════════════════════════════════════════════════════════════

export const receivables = pgTable(
  "receivables",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    customerId: uuid("customer_id")
      .notNull()
      .references(() => parties.id, { onDelete: "restrict" }),
    invoiceId: uuid("invoice_id"),

    invoiceNumber: text("invoice_number").notNull(),
    invoiceDate: date("invoice_date").notNull(),
    dueDate: date("due_date").notNull(),

    amount: numericAsDecimal("amount", { precision: 18, scale: 4 }).notNull(),
    paidAmount: numericAsDecimal("paid_amount", { precision: 18, scale: 4 })
      .notNull()
      ,
    remainingAmount: numericAsDecimal("remaining_amount", { precision: 18, scale: 4 })
      .notNull()
      ,

    currency: text("currency").notNull().default("TRY"),
    exchangeRate: numericAsDecimal("exchange_rate", { precision: 18, scale: 8 }),

    status: text("status").notNull().default("unpaid"),

    paymentTerms: text("payment_terms"),
    notes: text("notes"),

    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    tenantCustomerIdx: index("receivables_tenant_customer_idx").on(
      table.tenantId,
      table.customerId
    ),
    tenantStatusIdx: index("receivables_tenant_status_idx").on(table.tenantId, table.status),
    tenantDueDateIdx: index("receivables_tenant_due_date_idx").on(table.tenantId, table.dueDate),
    statusCheck: sql`CONSTRAINT receivables_status_check CHECK (status IN ('unpaid', 'partial', 'paid', 'overdue', 'written_off'))`,
  })
);

export const receivablePayments = pgTable(
  "receivable_payments",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    receivableId: uuid("receivable_id")
      .notNull()
      .references(() => receivables.id, { onDelete: "cascade" }),
    paymentDate: date("payment_date").notNull(),
    amount: numericAsDecimal("amount", { precision: 18, scale: 4 }).notNull(),
    paymentMethod: text("payment_method").notNull(),
    referenceNumber: text("reference_number"),
    bankAccountId: uuid("bank_account_id").references(() => bankAccounts.id, {
      onDelete: "set null",
    }),
    journalEntryId: uuid("journal_entry_id").references(() => journalEntries.id, {
      onDelete: "set null",
    }),
    notes: text("notes"),
    createdBy: uuid("created_by")
      .notNull()
      .references(() => users.id, { onDelete: "restrict" }),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    paymentMethodCheck: sql`CONSTRAINT receivable_payments_method_check CHECK (payment_method IN ('bank_transfer', 'cash', 'check', 'credit_card', 'other'))`,
  })
);

// ═══════════════════════════════════════════════════════════════════════════
// BANK ACCOUNTS & RECONCILIATION
// ═══════════════════════════════════════════════════════════════════════════

export const bankAccounts = pgTable(
  "bank_accounts",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    accountId: uuid("account_id")
      .notNull()
      .references(() => accounts.id, { onDelete: "restrict" }),

    bankName: text("bank_name").notNull(),
    accountNumber: text("account_number").notNull(),
    iban: text("iban"),
    swiftCode: text("swift_code"),

    currency: text("currency").notNull().default("TRY"),

    currentBalance: numericAsDecimal("current_balance", { precision: 18, scale: 4 })
      .notNull()
      ,
    bookBalance: numericAsDecimal("book_balance", { precision: 18, scale: 4 })
      .notNull()
      ,

    isActive: boolean("is_active").notNull().default(true),

    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    tenantAccountIdx: uniqueIndex("bank_accounts_tenant_account_idx").on(
      table.tenantId,
      table.accountId
    ),
    tenantActiveIdx: index("bank_accounts_tenant_active_idx").on(table.tenantId, table.isActive),
  })
);

export const bankStatements = pgTable(
  "bank_statements",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    bankAccountId: uuid("bank_account_id")
      .notNull()
      .references(() => bankAccounts.id, { onDelete: "cascade" }),
    statementDate: date("statement_date").notNull(),
    statementNumber: text("statement_number"),
    openingBalance: numericAsDecimal("opening_balance", { precision: 18, scale: 4 }).notNull(),
    closingBalance: numericAsDecimal("closing_balance", { precision: 18, scale: 4 }).notNull(),
    status: text("status").notNull().default("imported"),
    importedAt: timestamp("imported_at", { withTimezone: true, precision: 6 }),
    reconciledAt: timestamp("reconciled_at", { withTimezone: true, precision: 6 }),
    reconciledBy: uuid("reconciled_by").references(() => users.id, { onDelete: "set null" }),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    accountDateIdx: index("bank_statements_account_date_idx").on(
      table.bankAccountId,
      table.statementDate
    ),
    statusCheck: sql`CONSTRAINT bank_statements_status_check CHECK (status IN ('imported', 'reconciled'))`,
  })
);

export const bankStatementLines = pgTable(
  "bank_statement_lines",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    bankStatementId: uuid("bank_statement_id")
      .notNull()
      .references(() => bankStatements.id, { onDelete: "cascade" }),
    transactionDate: date("transaction_date").notNull(),
    description: text("description").notNull(),
    debit: numericAsDecimal("debit", { precision: 18, scale: 4 }),
    credit: numericAsDecimal("credit", { precision: 18, scale: 4 }),
    balance: numericAsDecimal("balance", { precision: 18, scale: 4 }).notNull(),
    referenceNumber: text("reference_number"),
    isReconciled: boolean("is_reconciled").notNull().default(false),
    matchedJournalEntryLineId: uuid("matched_journal_entry_line_id").references(
      () => journalEntryLines.id,
      { onDelete: "set null" }
    ),
    reconciledAt: timestamp("reconciled_at", { withTimezone: true, precision: 6 }),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    statementDateIdx: index("bank_statement_lines_statement_date_idx").on(
      table.bankStatementId,
      table.transactionDate
    ),
    reconciledIdx: index("bank_statement_lines_reconciled_idx").on(table.isReconciled),
  })
);

export const bankReconciliations = pgTable("bank_reconciliations", {
  id: uuid("id").primaryKey().defaultRandom(),
  bankAccountId: uuid("bank_account_id")
    .notNull()
    .references(() => bankAccounts.id, { onDelete: "cascade" }),
  reconciliationDate: date("reconciliation_date").notNull(),
  bookBalance: numericAsDecimal("book_balance", { precision: 18, scale: 4 }).notNull(),
  bankBalance: numericAsDecimal("bank_balance", { precision: 18, scale: 4 }).notNull(),
  unreconciledDeposits: numericAsDecimal("unreconciled_deposits", { precision: 18, scale: 4 })
    .notNull()
    ,
  unreconciledWithdrawals: numericAsDecimal("unreconciled_withdrawals", { precision: 18, scale: 4 })
    .notNull()
    ,
  bankCharges: numericAsDecimal("bank_charges", { precision: 18, scale: 4 })
    .notNull()
    ,
  finalBalance: numericAsDecimal("final_balance", { precision: 18, scale: 4 }).notNull(),
  notes: text("notes"),
  reconciledBy: uuid("reconciled_by")
    .notNull()
    .references(() => users.id, { onDelete: "restrict" }),
  reconciledAt: timestamp("reconciled_at", { withTimezone: true, precision: 6 })
    .notNull()
    .defaultNow(),
});

// ═══════════════════════════════════════════════════════════════════════════
// COST CENTERS
// ═══════════════════════════════════════════════════════════════════════════

export const costCenters = pgTable(
  "cost_centers",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    code: text("code").notNull(),
    name: text("name").notNull(),
    parentCostCenterId: uuid("parent_cost_center_id"),
    level: integer("level").notNull().default(1),
    isActive: boolean("is_active").notNull().default(true),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    tenantCodeIdx: uniqueIndex("cost_centers_tenant_code_idx").on(table.tenantId, table.code),
    tenantParentIdx: index("cost_centers_tenant_parent_idx").on(
      table.tenantId,
      table.parentCostCenterId
    ),
  })
);

// ═══════════════════════════════════════════════════════════════════════════
// FIXED ASSETS & DEPRECIATION
// ═══════════════════════════════════════════════════════════════════════════

export const fixedAssetAccounts = pgTable(
  "fixed_asset_accounts",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    assetId: uuid("asset_id")
      .notNull()
      .references(() => assets.id, { onDelete: "cascade" }),

    // Accounting links
    assetAccountId: uuid("asset_account_id")
      .notNull()
      .references(() => accounts.id, { onDelete: "restrict" }),
    depreciationAccountId: uuid("depreciation_account_id")
      .notNull()
      .references(() => accounts.id, { onDelete: "restrict" }),
    expenseAccountId: uuid("expense_account_id")
      .notNull()
      .references(() => accounts.id, { onDelete: "restrict" }),

    // Cost
    acquisitionCost: numericAsDecimal("acquisition_cost", { precision: 18, scale: 4 }).notNull(),
    residualValue: numericAsDecimal("residual_value", { precision: 18, scale: 4 }),
    usefulLifeMonths: integer("useful_life_months").notNull(),

    // Depreciation
    depreciationMethod: text("depreciation_method").notNull().default("straight_line"),
    depreciationStartDate: date("depreciation_start_date").notNull(),
    lastDepreciationDate: date("last_depreciation_date"),

    // Calculated
    accumulatedDepreciation: numericAsDecimal("accumulated_depreciation", {
      precision: 18,
      scale: 4,
    })
      .notNull()
      ,
    bookValue: numericAsDecimal("book_value", { precision: 18, scale: 4 }).notNull(),

    // Status
    status: text("status").notNull().default("active"),
    disposalDate: date("disposal_date"),
    disposalAmount: numericAsDecimal("disposal_amount", { precision: 18, scale: 4 }),
    disposalJournalEntryId: uuid("disposal_journal_entry_id").references(() => journalEntries.id, {
      onDelete: "set null",
    }),

    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    tenantAssetIdx: uniqueIndex("fixed_asset_accounts_tenant_asset_idx").on(
      table.tenantId,
      table.assetId
    ),
    tenantStatusIdx: index("fixed_asset_accounts_tenant_status_idx").on(
      table.tenantId,
      table.status
    ),
    statusCheck: sql`CONSTRAINT fixed_asset_accounts_status_check CHECK (status IN ('active', 'fully_depreciated', 'disposed'))`,
    methodCheck: sql`CONSTRAINT fixed_asset_accounts_method_check CHECK (depreciation_method IN ('straight_line', 'declining_balance', 'double_declining', 'sum_of_years', 'units_of_production'))`,
  })
);

export const depreciationSchedules = pgTable(
  "depreciation_schedules",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    fixedAssetAccountId: uuid("fixed_asset_account_id")
      .notNull()
      .references(() => fixedAssetAccounts.id, { onDelete: "cascade" }),
    periodNumber: integer("period_number").notNull(),
    periodDate: date("period_date").notNull(),
    depreciationAmount: numericAsDecimal("depreciation_amount", { precision: 18, scale: 4 })
      .notNull(),
    accumulatedDepreciation: numericAsDecimal("accumulated_depreciation", {
      precision: 18,
      scale: 4,
    }).notNull(),
    bookValue: numericAsDecimal("book_value", { precision: 18, scale: 4 }).notNull(),
    journalEntryId: uuid("journal_entry_id").references(() => journalEntries.id, {
      onDelete: "set null",
    }),
    status: text("status").notNull().default("scheduled"),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    assetPeriodIdx: uniqueIndex("depreciation_schedules_asset_period_idx").on(
      table.fixedAssetAccountId,
      table.periodNumber
    ),
    statusCheck: sql`CONSTRAINT depreciation_schedules_status_check CHECK (status IN ('scheduled', 'posted'))`,
  })
);

// ═══════════════════════════════════════════════════════════════════════════
// RECURRING JOURNAL ENTRIES
// ═══════════════════════════════════════════════════════════════════════════

export const recurringJournalEntries = pgTable(
  "recurring_journal_entries",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    name: text("name").notNull(),
    description: text("description"),
    frequency: text("frequency").notNull(),
    startDate: date("start_date").notNull(),
    endDate: date("end_date"),
    nextRunDate: date("next_run_date").notNull(),
    templateData: jsonb("template_data").notNull(),
    isActive: boolean("is_active").notNull().default(true),
    lastRunAt: timestamp("last_run_at", { withTimezone: true, precision: 6 }),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    tenantActiveIdx: index("recurring_journal_entries_tenant_active_idx").on(
      table.tenantId,
      table.isActive
    ),
    nextRunIdx: index("recurring_journal_entries_next_run_idx").on(table.nextRunDate),
    frequencyCheck: sql`CONSTRAINT recurring_journal_entries_frequency_check CHECK (frequency IN ('daily', 'weekly', 'monthly', 'quarterly', 'yearly'))`,
  })
);

// ═══════════════════════════════════════════════════════════════════════════
// RELATIONS
// ═══════════════════════════════════════════════════════════════════════════

export const accountingSettingsRelations = relations(accountingSettings, ({ one }) => ({
  tenant: one(tenants, {
    fields: [accountingSettings.tenantId],
    references: [tenants.id],
  }),
}));

export const coaTemplatesRelations = relations(coaTemplates, ({ many }) => ({
  accounts: many(coaTemplateAccounts),
}));

export const coaTemplateAccountsRelations = relations(coaTemplateAccounts, ({ one }) => ({
  template: one(coaTemplates, {
    fields: [coaTemplateAccounts.templateId],
    references: [coaTemplates.id],
  }),
}));

export const accountsRelations = relations(accounts, ({ one, many }) => ({
  tenant: one(tenants, {
    fields: [accounts.tenantId],
    references: [tenants.id],
  }),
  parentAccount: one(accounts, {
    fields: [accounts.parentAccountId],
    references: [accounts.id],
    relationName: "parentAccount",
  }),
  childAccounts: many(accounts, {
    relationName: "parentAccount",
  }),
  defaultTaxRate: one(taxRates, {
    fields: [accounts.defaultTaxRateId],
    references: [taxRates.id],
  }),
  journalEntryLines: many(journalEntryLines),
  accountBalances: many(accountBalances),
}));

export const fiscalYearsRelations = relations(fiscalYears, ({ one, many }) => ({
  tenant: one(tenants, {
    fields: [fiscalYears.tenantId],
    references: [tenants.id],
  }),
  closedByUser: one(users, {
    fields: [fiscalYears.closedBy],
    references: [users.id],
  }),
  periods: many(fiscalPeriods),
}));

export const fiscalPeriodsRelations = relations(fiscalPeriods, ({ one, many }) => ({
  fiscalYear: one(fiscalYears, {
    fields: [fiscalPeriods.fiscalYearId],
    references: [fiscalYears.id],
  }),
  tenant: one(tenants, {
    fields: [fiscalPeriods.tenantId],
    references: [tenants.id],
  }),
  closedByUser: one(users, {
    fields: [fiscalPeriods.closedBy],
    references: [users.id],
  }),
  accountBalances: many(accountBalances),
}));

export const taxRatesRelations = relations(taxRates, ({ one }) => ({
  tenant: one(tenants, {
    fields: [taxRates.tenantId],
    references: [tenants.id],
  }),
  taxAccount: one(accounts, {
    fields: [taxRates.taxAccountId],
    references: [accounts.id],
  }),
}));

export const journalEntriesRelations = relations(journalEntries, ({ one, many }) => ({
  tenant: one(tenants, {
    fields: [journalEntries.tenantId],
    references: [tenants.id],
  }),
  createdByUser: one(users, {
    fields: [journalEntries.createdBy],
    references: [users.id],
  }),
  approvedByUser: one(users, {
    fields: [journalEntries.approvedBy],
    references: [users.id],
  }),
  reversedEntry: one(journalEntries, {
    fields: [journalEntries.reversedEntryId],
    references: [journalEntries.id],
    relationName: "reversedEntry",
  }),
  lines: many(journalEntryLines),
}));

export const journalEntryLinesRelations = relations(journalEntryLines, ({ one }) => ({
  journalEntry: one(journalEntries, {
    fields: [journalEntryLines.journalEntryId],
    references: [journalEntries.id],
  }),
  account: one(accounts, {
    fields: [journalEntryLines.accountId],
    references: [accounts.id],
  }),
  costCenter: one(costCenters, {
    fields: [journalEntryLines.costCenterId],
    references: [costCenters.id],
  }),
}));

export const accountBalancesRelations = relations(accountBalances, ({ one }) => ({
  tenant: one(tenants, {
    fields: [accountBalances.tenantId],
    references: [tenants.id],
  }),
  account: one(accounts, {
    fields: [accountBalances.accountId],
    references: [accounts.id],
  }),
  fiscalPeriod: one(fiscalPeriods, {
    fields: [accountBalances.fiscalPeriodId],
    references: [fiscalPeriods.id],
  }),
}));

export const payablesRelations = relations(payables, ({ one, many }) => ({
  tenant: one(tenants, {
    fields: [payables.tenantId],
    references: [tenants.id],
  }),
  supplier: one(parties, {
    fields: [payables.supplierId],
    references: [parties.id],
  }),
  payments: many(payablePayments),
}));

export const payablePaymentsRelations = relations(payablePayments, ({ one }) => ({
  payable: one(payables, {
    fields: [payablePayments.payableId],
    references: [payables.id],
  }),
  bankAccount: one(bankAccounts, {
    fields: [payablePayments.bankAccountId],
    references: [bankAccounts.id],
  }),
  journalEntry: one(journalEntries, {
    fields: [payablePayments.journalEntryId],
    references: [journalEntries.id],
  }),
  createdByUser: one(users, {
    fields: [payablePayments.createdBy],
    references: [users.id],
  }),
}));

export const receivablesRelations = relations(receivables, ({ one, many }) => ({
  tenant: one(tenants, {
    fields: [receivables.tenantId],
    references: [tenants.id],
  }),
  customer: one(parties, {
    fields: [receivables.customerId],
    references: [parties.id],
  }),
  payments: many(receivablePayments),
}));

export const receivablePaymentsRelations = relations(receivablePayments, ({ one }) => ({
  receivable: one(receivables, {
    fields: [receivablePayments.receivableId],
    references: [receivables.id],
  }),
  bankAccount: one(bankAccounts, {
    fields: [receivablePayments.bankAccountId],
    references: [bankAccounts.id],
  }),
  journalEntry: one(journalEntries, {
    fields: [receivablePayments.journalEntryId],
    references: [journalEntries.id],
  }),
  createdByUser: one(users, {
    fields: [receivablePayments.createdBy],
    references: [users.id],
  }),
}));

export const bankAccountsRelations = relations(bankAccounts, ({ one, many }) => ({
  tenant: one(tenants, {
    fields: [bankAccounts.tenantId],
    references: [tenants.id],
  }),
  account: one(accounts, {
    fields: [bankAccounts.accountId],
    references: [accounts.id],
  }),
  statements: many(bankStatements),
  reconciliations: many(bankReconciliations),
}));

export const bankStatementsRelations = relations(bankStatements, ({ one, many }) => ({
  bankAccount: one(bankAccounts, {
    fields: [bankStatements.bankAccountId],
    references: [bankAccounts.id],
  }),
  reconciledByUser: one(users, {
    fields: [bankStatements.reconciledBy],
    references: [users.id],
  }),
  lines: many(bankStatementLines),
}));

export const bankStatementLinesRelations = relations(bankStatementLines, ({ one }) => ({
  bankStatement: one(bankStatements, {
    fields: [bankStatementLines.bankStatementId],
    references: [bankStatements.id],
  }),
  matchedJournalEntryLine: one(journalEntryLines, {
    fields: [bankStatementLines.matchedJournalEntryLineId],
    references: [journalEntryLines.id],
  }),
}));

export const bankReconciliationsRelations = relations(bankReconciliations, ({ one }) => ({
  bankAccount: one(bankAccounts, {
    fields: [bankReconciliations.bankAccountId],
    references: [bankAccounts.id],
  }),
  reconciledByUser: one(users, {
    fields: [bankReconciliations.reconciledBy],
    references: [users.id],
  }),
}));

export const costCentersRelations = relations(costCenters, ({ one, many }) => ({
  tenant: one(tenants, {
    fields: [costCenters.tenantId],
    references: [tenants.id],
  }),
  parentCostCenter: one(costCenters, {
    fields: [costCenters.parentCostCenterId],
    references: [costCenters.id],
    relationName: "parentCostCenter",
  }),
  childCostCenters: many(costCenters, {
    relationName: "parentCostCenter",
  }),
  journalEntryLines: many(journalEntryLines),
}));

export const fixedAssetAccountsRelations = relations(fixedAssetAccounts, ({ one, many }) => ({
  tenant: one(tenants, {
    fields: [fixedAssetAccounts.tenantId],
    references: [tenants.id],
  }),
  asset: one(assets, {
    fields: [fixedAssetAccounts.assetId],
    references: [assets.id],
  }),
  assetAccount: one(accounts, {
    fields: [fixedAssetAccounts.assetAccountId],
    references: [accounts.id],
  }),
  depreciationAccount: one(accounts, {
    fields: [fixedAssetAccounts.depreciationAccountId],
    references: [accounts.id],
  }),
  expenseAccount: one(accounts, {
    fields: [fixedAssetAccounts.expenseAccountId],
    references: [accounts.id],
  }),
  disposalJournalEntry: one(journalEntries, {
    fields: [fixedAssetAccounts.disposalJournalEntryId],
    references: [journalEntries.id],
  }),
  schedules: many(depreciationSchedules),
}));

export const depreciationSchedulesRelations = relations(depreciationSchedules, ({ one }) => ({
  fixedAssetAccount: one(fixedAssetAccounts, {
    fields: [depreciationSchedules.fixedAssetAccountId],
    references: [fixedAssetAccounts.id],
  }),
  journalEntry: one(journalEntries, {
    fields: [depreciationSchedules.journalEntryId],
    references: [journalEntries.id],
  }),
}));

export const recurringJournalEntriesRelations = relations(recurringJournalEntries, ({ one }) => ({
  tenant: one(tenants, {
    fields: [recurringJournalEntries.tenantId],
    references: [tenants.id],
  }),
}));
