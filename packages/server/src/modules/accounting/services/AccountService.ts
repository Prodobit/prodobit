import { eq, and, desc, or, ilike, isNull, sql } from "drizzle-orm";
import type { CreateAccountRequest, UpdateAccountRequest, AccountQuery } from "@prodobit/types";
import { accounts, coaTemplates, coaTemplateAccounts } from "@prodobit/database";
import type { Database } from "@prodobit/database";

export class AccountService {
  constructor(private db: Database) {}

  /**
   * List accounts with filters
   */
  async listAccounts(tenantId: string, filters?: Partial<AccountQuery>) {
    const conditions: any[] = [eq(accounts.tenantId, tenantId), isNull(accounts.deletedAt)];

    if (filters?.accountType) {
      conditions.push(eq(accounts.accountType, filters.accountType));
    }

    if (filters?.isGroup !== undefined) {
      conditions.push(eq(accounts.isGroup, filters.isGroup));
    }

    if (filters?.isActive !== undefined) {
      conditions.push(eq(accounts.isActive, filters.isActive));
    }

    if (filters?.parentAccountId) {
      conditions.push(eq(accounts.parentAccountId, filters.parentAccountId));
    }

    if (filters?.isBankAccount !== undefined) {
      conditions.push(eq(accounts.isBankAccount, filters.isBankAccount));
    }

    if (filters?.isCashAccount !== undefined) {
      conditions.push(eq(accounts.isCashAccount, filters.isCashAccount));
    }

    if (filters?.search) {
      conditions.push(
        or(ilike(accounts.name, `%${filters.search}%`), ilike(accounts.code, `%${filters.search}%`))
      );
    }

    const accountsList = await this.db
      .select()
      .from(accounts)
      .where(and(...conditions))
      .orderBy(accounts.code);

    return accountsList;
  }

  /**
   * Get account hierarchy (tree structure)
   */
  async getAccountHierarchy(tenantId: string) {
    const allAccounts = await this.listAccounts(tenantId, { isActive: true });

    // Build tree structure
    const accountMap = new Map();
    const rootAccounts: any[] = [];

    // First pass: create map of all accounts
    for (const account of allAccounts) {
      accountMap.set(account.id, { ...account, children: [] });
    }

    // Second pass: build tree
    for (const account of allAccounts) {
      const accountNode = accountMap.get(account.id);
      if (account.parentAccountId) {
        const parent = accountMap.get(account.parentAccountId);
        if (parent) {
          parent.children.push(accountNode);
        } else {
          rootAccounts.push(accountNode);
        }
      } else {
        rootAccounts.push(accountNode);
      }
    }

    return rootAccounts;
  }

  /**
   * Get a single account by ID
   */
  async getAccount(accountId: string, tenantId: string) {
    const [account] = await this.db
      .select()
      .from(accounts)
      .where(and(eq(accounts.id, accountId), eq(accounts.tenantId, tenantId), isNull(accounts.deletedAt)));

    return account || null;
  }

  /**
   * Get account by code
   */
  async getAccountByCode(code: string, tenantId: string) {
    const [account] = await this.db
      .select()
      .from(accounts)
      .where(and(eq(accounts.code, code), eq(accounts.tenantId, tenantId), isNull(accounts.deletedAt)));

    return account || null;
  }

  /**
   * Create a new account
   */
  async createAccount(tenantId: string, data: CreateAccountRequest, userId: string) {
    // Calculate level based on parent
    let level = 1;
    if (data.parentAccountId) {
      const parent = await this.getAccount(data.parentAccountId, tenantId);
      if (parent) {
        level = parent.level + 1;
      }
    }

    const [account] = await this.db
      .insert(accounts)
      .values({
        tenantId,
        code: data.code,
        name: data.name,
        nameEn: data.nameEn,
        parentAccountId: data.parentAccountId,
        accountType: data.accountType,
        level,
        isGroup: data.isGroup ?? false,
        currency: data.currency ?? "TRY",
        isBankAccount: data.isBankAccount ?? false,
        isCashAccount: data.isCashAccount ?? false,
        isReconcilable: data.isReconcilable ?? false,
        requiresCostCenter: data.requiresCostCenter ?? false,
        requiresProject: data.requiresProject ?? false,
        defaultTaxRateId: data.defaultTaxRateId,
        reportCategory: data.reportCategory,
        cashFlowCategory: data.cashFlowCategory,
        description: data.description,
        notes: data.notes,
      })
      .returning();

    return account;
  }

  /**
   * Update an existing account
   */
  async updateAccount(accountId: string, tenantId: string, data: UpdateAccountRequest) {
    // If parent is changing, recalculate level
    let level: number | undefined;
    if (data.parentAccountId !== undefined) {
      if (data.parentAccountId) {
        const parent = await this.getAccount(data.parentAccountId, tenantId);
        if (parent) {
          level = parent.level + 1;
        }
      } else {
        level = 1;
      }
    }

    const updateData: any = {
      ...data,
      updatedAt: new Date(),
    };

    if (level !== undefined) {
      updateData.level = level;
    }

    const [account] = await this.db
      .update(accounts)
      .set(updateData)
      .where(and(eq(accounts.id, accountId), eq(accounts.tenantId, tenantId), isNull(accounts.deletedAt)))
      .returning();

    return account || null;
  }

  /**
   * Delete an account (soft delete)
   */
  async deleteAccount(accountId: string, tenantId: string) {
    // Check if account has children
    const [child] = await this.db
      .select()
      .from(accounts)
      .where(and(eq(accounts.parentAccountId, accountId), isNull(accounts.deletedAt)))
      .limit(1);

    if (child) {
      throw new Error("Cannot delete account with child accounts");
    }

    // TODO: Check if account has journal entries

    const [account] = await this.db
      .update(accounts)
      .set({
        deletedAt: new Date(),
        updatedAt: new Date(),
      })
      .where(and(eq(accounts.id, accountId), eq(accounts.tenantId, tenantId), isNull(accounts.deletedAt)))
      .returning();

    return account || null;
  }

  /**
   * Check if account code exists
   */
  async accountCodeExists(tenantId: string, code: string, excludeAccountId?: string) {
    const conditions: any[] = [eq(accounts.tenantId, tenantId), eq(accounts.code, code), isNull(accounts.deletedAt)];

    if (excludeAccountId) {
      conditions.push(sql`${accounts.id} != ${excludeAccountId}`);
    }

    const [account] = await this.db
      .select()
      .from(accounts)
      .where(and(...conditions))
      .limit(1);

    return !!account;
  }

  /**
   * Get available CoA templates
   */
  async getCoaTemplates() {
    return this.db.select().from(coaTemplates).orderBy(coaTemplates.code);
  }

  /**
   * Initialize chart of accounts from template
   */
  async initializeFromTemplate(tenantId: string, templateCode: string, userId: string) {
    // Get template
    const [template] = await this.db
      .select()
      .from(coaTemplates)
      .where(eq(coaTemplates.code, templateCode));

    if (!template) {
      throw new Error(`Template not found: ${templateCode}`);
    }

    // Get template accounts
    const templateAccounts = await this.db
      .select()
      .from(coaTemplateAccounts)
      .where(eq(coaTemplateAccounts.templateId, template.id))
      .orderBy(coaTemplateAccounts.code);

    // Create accounts from template
    const accountCodeToIdMap = new Map<string, string>();
    const createdAccounts: any[] = [];

    for (const templateAccount of templateAccounts) {
      // Find parent account ID if parent code exists
      let parentAccountId: string | null = null;
      if (templateAccount.parentCode) {
        parentAccountId = accountCodeToIdMap.get(templateAccount.parentCode) ?? null;
      }

      const [account] = await this.db
        .insert(accounts)
        .values({
          tenantId,
          code: templateAccount.code,
          name: templateAccount.name,
          nameEn: templateAccount.nameEn,
          parentAccountId,
          accountType: templateAccount.accountType,
          level: templateAccount.level,
          isGroup: templateAccount.isGroup,
          reportCategory: templateAccount.reportCategory,
          cashFlowCategory: templateAccount.cashFlowCategory,
        })
        .returning();

      accountCodeToIdMap.set(templateAccount.code, account.id);
      createdAccounts.push(account);
    }

    return {
      template,
      accountsCreated: createdAccounts.length,
    };
  }
}
