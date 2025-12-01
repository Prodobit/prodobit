import { Hono } from "hono";
import type { ModuleManifest, ServerContext } from "../../framework/types.js";
import { accountingRoutes } from "./routes.js";

export const accountingModule: ModuleManifest = {
  name: "accounting",
  version: "1.0.0",
  description: "Accounting module - Chart of accounts, journal entries, ledger, AR/AP, financial reports",
  migrations: [
    // Accounting migrations will be handled by database package
  ],
  permissions: {
    // Accounting Settings
    "accounting:settings:read": ["admin", "accountant", "finance_manager"],
    "accounting:settings:update": ["admin", "finance_manager"],

    // Chart of Accounts
    "accounting:accounts:read": ["admin", "accountant", "finance_manager", "auditor"],
    "accounting:accounts:create": ["admin", "accountant", "finance_manager"],
    "accounting:accounts:update": ["admin", "accountant", "finance_manager"],
    "accounting:accounts:delete": ["admin"],

    // Journal Entries
    "accounting:journal:read": ["admin", "accountant", "finance_manager", "auditor"],
    "accounting:journal:create": ["admin", "accountant", "finance_manager"],
    "accounting:journal:update": ["admin", "accountant", "finance_manager"],
    "accounting:journal:post": ["admin", "finance_manager"],
    "accounting:journal:reverse": ["admin", "finance_manager"],
    "accounting:journal:delete": ["admin"],

    // Fiscal Periods
    "accounting:periods:read": ["admin", "accountant", "finance_manager", "auditor"],
    "accounting:periods:manage": ["admin", "finance_manager"],

    // Tax Rates
    "accounting:tax:read": ["admin", "accountant", "finance_manager", "sales_user"],
    "accounting:tax:manage": ["admin", "finance_manager"],

    // Accounts Payable
    "accounting:payables:read": ["admin", "accountant", "finance_manager", "auditor"],
    "accounting:payables:create": ["admin", "accountant", "finance_manager"],
    "accounting:payables:update": ["admin", "accountant", "finance_manager"],
    "accounting:payables:pay": ["admin", "finance_manager"],

    // Accounts Receivable
    "accounting:receivables:read": ["admin", "accountant", "finance_manager", "auditor"],
    "accounting:receivables:create": ["admin", "accountant", "finance_manager"],
    "accounting:receivables:update": ["admin", "accountant", "finance_manager"],
    "accounting:receivables:receive": ["admin", "finance_manager"],

    // Bank Accounts & Reconciliation
    "accounting:bank:read": ["admin", "accountant", "finance_manager", "auditor"],
    "accounting:bank:manage": ["admin", "finance_manager"],
    "accounting:bank:reconcile": ["admin", "accountant", "finance_manager"],

    // Cost Centers
    "accounting:costcenters:read": ["admin", "accountant", "finance_manager", "auditor"],
    "accounting:costcenters:manage": ["admin", "finance_manager"],

    // Fixed Assets
    "accounting:fixedassets:read": ["admin", "accountant", "finance_manager", "auditor"],
    "accounting:fixedassets:manage": ["admin", "finance_manager"],
    "accounting:fixedassets:depreciate": ["admin", "finance_manager"],

    // Financial Reports
    "accounting:reports:read": ["admin", "accountant", "finance_manager", "auditor", "executive"],
    "accounting:reports:export": ["admin", "finance_manager", "auditor"],
  },
  dependencies: [
    "core", // Auth, tenants
  ],
  registerRoutes(app: Hono<{ Variables: ServerContext }>) {
    app.route("/api/v1/accounting", accountingRoutes);
  },
  async onEnable() {
    console.log("📊 Accounting module enabled - Ready for financial management!");
  },
  async onDisable() {
    console.log("📊 Accounting module disabled");
  },
};
