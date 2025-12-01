import { Hono } from "hono";
import { type } from "arktype";
import { authMiddleware } from "../../core/middleware/auth.js";
import { requirePermission } from "../../core/middleware/rbac.js";
import { AccountService } from "./services/AccountService.js";
import { JournalEntryService } from "./services/JournalEntryService.js";
import { LedgerService } from "./services/LedgerService.js";
import {
  createAccountRequest,
  updateAccountRequest,
  createJournalEntryRequest,
  updateJournalEntryRequest,
  postJournalEntryRequest,
  reverseJournalEntryRequest,
} from "@prodobit/types";

export const accountingRoutes = new Hono();

// Apply auth middleware to all routes
accountingRoutes.use("*", authMiddleware);

// ═══════════════════════════════════════════════════════════════════════════
// CHART OF ACCOUNTS
// ═══════════════════════════════════════════════════════════════════════════

// GET /accounts - List all accounts
accountingRoutes.get("/accounts", requirePermission("accounting", "accounts:read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const query = c.req.query();

    const accountService = new AccountService(db);
    const accounts = await accountService.listAccounts(user.tenantId, query);

    return c.json({
      success: true,
      data: accounts,
    });
  } catch (error) {
    console.error("List accounts error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list accounts",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /accounts/hierarchy - Get account tree
accountingRoutes.get("/accounts/hierarchy", requirePermission("accounting", "accounts:read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");

    const accountService = new AccountService(db);
    const hierarchy = await accountService.getAccountHierarchy(user.tenantId);

    return c.json({
      success: true,
      data: hierarchy,
    });
  } catch (error) {
    console.error("Get account hierarchy error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get account hierarchy",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /accounts/templates - Get available CoA templates
accountingRoutes.get("/accounts/templates", requirePermission("accounting", "accounts:read"), async (c) => {
  try {
    const db = c.get("db");

    const accountService = new AccountService(db);
    const templates = await accountService.getCoaTemplates();

    return c.json({
      success: true,
      data: templates,
    });
  } catch (error) {
    console.error("Get CoA templates error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get CoA templates",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /accounts/initialize - Initialize CoA from template
accountingRoutes.post("/accounts/initialize", requirePermission("accounting", "accounts:create"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const { templateCode } = await c.req.json();

    if (!templateCode) {
      return c.json(
        {
          success: false,
          error: {
            code: "VALIDATION_ERROR",
            message: "templateCode is required",
          },
        },
        400
      );
    }

    const accountService = new AccountService(db);
    const result = await accountService.initializeFromTemplate(user.tenantId, templateCode, user.id);

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("Initialize CoA error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to initialize chart of accounts",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /accounts/:id - Get account by ID
accountingRoutes.get("/accounts/:id", requirePermission("accounting", "accounts:read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const accountId = c.req.param("id");

    const accountService = new AccountService(db);
    const account = await accountService.getAccount(accountId, user.tenantId);

    if (!account) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Account not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: account,
    });
  } catch (error) {
    console.error("Get account error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get account",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /accounts - Create new account
accountingRoutes.post("/accounts", requirePermission("accounting", "accounts:create"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();

    const validation = createAccountRequest(body);
    if (validation instanceof type.errors) {
      return c.json(
        {
          success: false,
          error: {
            code: "VALIDATION_ERROR",
            message: "Validation failed",
            details: validation,
          },
        },
        400
      );
    }

    const accountService = new AccountService(db);

    // Check if code exists
    const exists = await accountService.accountCodeExists(user.tenantId, validation.code);
    if (exists) {
      return c.json(
        {
          success: false,
          error: {
            code: "DUPLICATE_CODE",
            message: "Account code already exists",
          },
        },
        400
      );
    }

    const account = await accountService.createAccount(user.tenantId, validation, user.id);

    return c.json(
      {
        success: true,
        data: account,
      },
      201
    );
  } catch (error) {
    console.error("Create account error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create account",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// PUT /accounts/:id - Update account
accountingRoutes.put("/accounts/:id", requirePermission("accounting", "accounts:update"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const accountId = c.req.param("id");
    const body = await c.req.json();

    const validation = updateAccountRequest(body);
    if (validation instanceof type.errors) {
      return c.json(
        {
          success: false,
          error: {
            code: "VALIDATION_ERROR",
            message: "Validation failed",
            details: validation,
          },
        },
        400
      );
    }

    const accountService = new AccountService(db);

    // Check if new code exists
    if (validation.code) {
      const exists = await accountService.accountCodeExists(user.tenantId, validation.code, accountId);
      if (exists) {
        return c.json(
          {
            success: false,
            error: {
              code: "DUPLICATE_CODE",
              message: "Account code already exists",
            },
          },
          400
        );
      }
    }

    const account = await accountService.updateAccount(accountId, user.tenantId, validation);

    if (!account) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Account not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: account,
    });
  } catch (error) {
    console.error("Update account error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to update account",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// DELETE /accounts/:id - Delete account
accountingRoutes.delete("/accounts/:id", requirePermission("accounting", "accounts:delete"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const accountId = c.req.param("id");

    const accountService = new AccountService(db);
    const account = await accountService.deleteAccount(accountId, user.tenantId);

    if (!account) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Account not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: account,
    });
  } catch (error) {
    console.error("Delete account error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to delete account",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// ═══════════════════════════════════════════════════════════════════════════
// JOURNAL ENTRIES
// ═══════════════════════════════════════════════════════════════════════════

// GET /journal-entries - List journal entries
accountingRoutes.get("/journal-entries", requirePermission("accounting", "journal:read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const query = c.req.query();

    const journalService = new JournalEntryService(db);
    const entries = await journalService.listJournalEntries(user.tenantId, query);

    return c.json({
      success: true,
      data: entries,
    });
  } catch (error) {
    console.error("List journal entries error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list journal entries",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /journal-entries/:id - Get journal entry by ID
accountingRoutes.get("/journal-entries/:id", requirePermission("accounting", "journal:read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const entryId = c.req.param("id");

    const journalService = new JournalEntryService(db);
    const entry = await journalService.getJournalEntry(entryId, user.tenantId);

    if (!entry) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Journal entry not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: entry,
    });
  } catch (error) {
    console.error("Get journal entry error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get journal entry",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /journal-entries - Create journal entry
accountingRoutes.post("/journal-entries", requirePermission("accounting", "journal:create"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();

    const validation = createJournalEntryRequest(body);
    if (validation instanceof type.errors) {
      return c.json(
        {
          success: false,
          error: {
            code: "VALIDATION_ERROR",
            message: "Validation failed",
            details: validation,
          },
        },
        400
      );
    }

    const journalService = new JournalEntryService(db);
    const entry = await journalService.createJournalEntry(user.tenantId, validation, user.id);

    return c.json(
      {
        success: true,
        data: entry,
      },
      201
    );
  } catch (error) {
    console.error("Create journal entry error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create journal entry",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// PUT /journal-entries/:id - Update journal entry
accountingRoutes.put("/journal-entries/:id", requirePermission("accounting", "journal:update"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const entryId = c.req.param("id");
    const body = await c.req.json();

    const validation = updateJournalEntryRequest(body);
    if (validation instanceof type.errors) {
      return c.json(
        {
          success: false,
          error: {
            code: "VALIDATION_ERROR",
            message: "Validation failed",
            details: validation,
          },
        },
        400
      );
    }

    const journalService = new JournalEntryService(db);
    const entry = await journalService.updateJournalEntry(entryId, user.tenantId, validation, user.id);

    return c.json({
      success: true,
      data: entry,
    });
  } catch (error) {
    console.error("Update journal entry error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to update journal entry",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /journal-entries/:id/post - Post journal entry
accountingRoutes.post("/journal-entries/:id/post", requirePermission("accounting", "journal:post"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const entryId = c.req.param("id");
    const body = await c.req.json().catch(() => null);

    const journalService = new JournalEntryService(db);
    const entry = await journalService.postJournalEntry(entryId, user.tenantId, body, user.id);

    return c.json({
      success: true,
      data: entry,
    });
  } catch (error) {
    console.error("Post journal entry error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to post journal entry",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /journal-entries/:id/reverse - Reverse journal entry
accountingRoutes.post("/journal-entries/:id/reverse", requirePermission("accounting", "journal:reverse"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const entryId = c.req.param("id");
    const body = await c.req.json();

    const validation = reverseJournalEntryRequest(body);
    if (validation instanceof type.errors) {
      return c.json(
        {
          success: false,
          error: {
            code: "VALIDATION_ERROR",
            message: "Validation failed",
            details: validation,
          },
        },
        400
      );
    }

    const journalService = new JournalEntryService(db);
    const entry = await journalService.reverseJournalEntry(entryId, user.tenantId, validation, user.id);

    return c.json({
      success: true,
      data: entry,
    });
  } catch (error) {
    console.error("Reverse journal entry error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to reverse journal entry",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// DELETE /journal-entries/:id - Delete journal entry
accountingRoutes.delete("/journal-entries/:id", requirePermission("accounting", "journal:delete"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const entryId = c.req.param("id");

    const journalService = new JournalEntryService(db);
    const entry = await journalService.deleteJournalEntry(entryId, user.tenantId);

    return c.json({
      success: true,
      data: entry,
    });
  } catch (error) {
    console.error("Delete journal entry error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to delete journal entry",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// ═══════════════════════════════════════════════════════════════════════════
// LEDGER & REPORTS
// ═══════════════════════════════════════════════════════════════════════════

// GET /ledger/:accountId - Get account ledger
accountingRoutes.get("/ledger/:accountId", requirePermission("accounting", "accounts:read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const accountId = c.req.param("accountId");
    const { startDate, endDate } = c.req.query();

    if (!startDate || !endDate) {
      return c.json(
        {
          success: false,
          error: {
            code: "VALIDATION_ERROR",
            message: "startDate and endDate are required",
          },
        },
        400
      );
    }

    const ledgerService = new LedgerService(db);
    const ledger = await ledgerService.getAccountLedger(user.tenantId, accountId, startDate, endDate);

    return c.json({
      success: true,
      data: ledger,
    });
  } catch (error) {
    console.error("Get account ledger error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get account ledger",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /reports/trial-balance - Get trial balance
accountingRoutes.get("/reports/trial-balance", requirePermission("accounting", "reports:read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const { asOfDate } = c.req.query();

    if (!asOfDate) {
      return c.json(
        {
          success: false,
          error: {
            code: "VALIDATION_ERROR",
            message: "asOfDate is required",
          },
        },
        400
      );
    }

    const ledgerService = new LedgerService(db);
    const trialBalance = await ledgerService.getTrialBalance(user.tenantId, asOfDate);

    return c.json({
      success: true,
      data: trialBalance,
    });
  } catch (error) {
    console.error("Get trial balance error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get trial balance",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /reports/income-statement - Get income statement
accountingRoutes.get("/reports/income-statement", requirePermission("accounting", "reports:read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const { startDate, endDate } = c.req.query();

    if (!startDate || !endDate) {
      return c.json(
        {
          success: false,
          error: {
            code: "VALIDATION_ERROR",
            message: "startDate and endDate are required",
          },
        },
        400
      );
    }

    const ledgerService = new LedgerService(db);
    const incomeStatement = await ledgerService.getIncomeStatement(user.tenantId, startDate, endDate);

    return c.json({
      success: true,
      data: incomeStatement,
    });
  } catch (error) {
    console.error("Get income statement error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get income statement",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /reports/balance-sheet - Get balance sheet
accountingRoutes.get("/reports/balance-sheet", requirePermission("accounting", "reports:read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const { asOfDate } = c.req.query();

    if (!asOfDate) {
      return c.json(
        {
          success: false,
          error: {
            code: "VALIDATION_ERROR",
            message: "asOfDate is required",
          },
        },
        400
      );
    }

    const ledgerService = new LedgerService(db);
    const balanceSheet = await ledgerService.getBalanceSheet(user.tenantId, asOfDate);

    return c.json({
      success: true,
      data: balanceSheet,
    });
  } catch (error) {
    console.error("Get balance sheet error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get balance sheet",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});
