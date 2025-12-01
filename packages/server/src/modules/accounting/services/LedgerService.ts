import { eq, and, desc, gte, lte, sql } from "drizzle-orm";
import {
  journalEntries,
  journalEntryLines,
  accounts,
  accountBalances,
  fiscalPeriods,
  fiscalYears,
} from "@prodobit/database";
import type { Database } from "@prodobit/database";
import Decimal from "decimal.js";

export class LedgerService {
  constructor(private db: Database) {}

  /**
   * Get general ledger for an account
   */
  async getAccountLedger(
    tenantId: string,
    accountId: string,
    startDate: string,
    endDate: string
  ) {
    // Get account info
    const [account] = await this.db
      .select()
      .from(accounts)
      .where(and(eq(accounts.id, accountId), eq(accounts.tenantId, tenantId)));

    if (!account) {
      throw new Error("Account not found");
    }

    // Get opening balance (sum of all entries before startDate)
    const openingBalanceResult = await this.db
      .select({
        debitTotal: sql<string>`COALESCE(SUM(${journalEntryLines.debit}), 0)`,
        creditTotal: sql<string>`COALESCE(SUM(${journalEntryLines.credit}), 0)`,
      })
      .from(journalEntryLines)
      .innerJoin(journalEntries, eq(journalEntryLines.journalEntryId, journalEntries.id))
      .where(
        and(
          eq(journalEntryLines.accountId, accountId),
          eq(journalEntries.tenantId, tenantId),
          eq(journalEntries.status, "posted"),
          sql`${journalEntries.postingDate} < ${startDate}`
        )
      );

    const openingDebit = new Decimal(openingBalanceResult[0]?.debitTotal ?? "0");
    const openingCredit = new Decimal(openingBalanceResult[0]?.creditTotal ?? "0");

    // For asset/expense accounts: debit increases, credit decreases
    // For liability/equity/revenue accounts: credit increases, debit decreases
    let openingBalance: Decimal;
    if (account.accountType === "asset" || account.accountType === "expense") {
      openingBalance = openingDebit.minus(openingCredit);
    } else {
      openingBalance = openingCredit.minus(openingDebit);
    }

    // Get entries within date range
    const entries = await this.db
      .select({
        entryId: journalEntries.id,
        entryNumber: journalEntries.entryNumber,
        entryDate: journalEntries.postingDate,
        description: journalEntries.description,
        reference: journalEntries.reference,
        debit: journalEntryLines.debit,
        credit: journalEntryLines.credit,
      })
      .from(journalEntryLines)
      .innerJoin(journalEntries, eq(journalEntryLines.journalEntryId, journalEntries.id))
      .where(
        and(
          eq(journalEntryLines.accountId, accountId),
          eq(journalEntries.tenantId, tenantId),
          eq(journalEntries.status, "posted"),
          gte(journalEntries.postingDate, startDate),
          lte(journalEntries.postingDate, endDate)
        )
      )
      .orderBy(journalEntries.postingDate, journalEntries.entryNumber);

    // Calculate running balance
    let runningBalance = openingBalance;
    const ledgerEntries = entries.map((entry) => {
      const debit = new Decimal(entry.debit?.toString() ?? "0");
      const credit = new Decimal(entry.credit?.toString() ?? "0");

      if (account.accountType === "asset" || account.accountType === "expense") {
        runningBalance = runningBalance.plus(debit).minus(credit);
      } else {
        runningBalance = runningBalance.plus(credit).minus(debit);
      }

      return {
        entryId: entry.entryId,
        entryNumber: entry.entryNumber,
        entryDate: entry.entryDate,
        description: entry.description,
        reference: entry.reference,
        debit: debit.toNumber(),
        credit: credit.toNumber(),
        balance: runningBalance.toNumber(),
      };
    });

    // Calculate totals
    const totalDebits = entries.reduce(
      (sum, e) => sum.plus(new Decimal(e.debit?.toString() ?? "0")),
      new Decimal(0)
    );
    const totalCredits = entries.reduce(
      (sum, e) => sum.plus(new Decimal(e.credit?.toString() ?? "0")),
      new Decimal(0)
    );

    return {
      accountId: account.id,
      accountCode: account.code,
      accountName: account.name,
      accountType: account.accountType,
      openingBalance: openingBalance.toNumber(),
      entries: ledgerEntries,
      closingBalance: runningBalance.toNumber(),
      totalDebits: totalDebits.toNumber(),
      totalCredits: totalCredits.toNumber(),
    };
  }

  /**
   * Get trial balance
   */
  async getTrialBalance(tenantId: string, asOfDate: string) {
    // Get all posted entries up to the date
    const balances = await this.db
      .select({
        accountId: journalEntryLines.accountId,
        accountCode: accounts.code,
        accountName: accounts.name,
        accountType: accounts.accountType,
        level: accounts.level,
        isGroup: accounts.isGroup,
        debitTotal: sql<string>`COALESCE(SUM(${journalEntryLines.debit}), 0)`,
        creditTotal: sql<string>`COALESCE(SUM(${journalEntryLines.credit}), 0)`,
      })
      .from(journalEntryLines)
      .innerJoin(journalEntries, eq(journalEntryLines.journalEntryId, journalEntries.id))
      .innerJoin(accounts, eq(journalEntryLines.accountId, accounts.id))
      .where(
        and(
          eq(journalEntries.tenantId, tenantId),
          eq(journalEntries.status, "posted"),
          lte(journalEntries.postingDate, asOfDate)
        )
      )
      .groupBy(
        journalEntryLines.accountId,
        accounts.code,
        accounts.name,
        accounts.accountType,
        accounts.level,
        accounts.isGroup
      )
      .orderBy(accounts.code);

    const entries = balances.map((balance) => {
      const debit = new Decimal(balance.debitTotal);
      const credit = new Decimal(balance.creditTotal);

      // Calculate debit/credit balance based on account type
      let debitBalance = new Decimal(0);
      let creditBalance = new Decimal(0);

      if (balance.accountType === "asset" || balance.accountType === "expense") {
        const net = debit.minus(credit);
        if (net.isPositive()) {
          debitBalance = net;
        } else {
          creditBalance = net.abs();
        }
      } else {
        const net = credit.minus(debit);
        if (net.isPositive()) {
          creditBalance = net;
        } else {
          debitBalance = net.abs();
        }
      }

      return {
        accountId: balance.accountId,
        accountCode: balance.accountCode,
        accountName: balance.accountName,
        accountType: balance.accountType,
        level: balance.level,
        isGroup: balance.isGroup,
        debitBalance: debitBalance.toNumber(),
        creditBalance: creditBalance.toNumber(),
      };
    });

    const totalDebits = entries.reduce((sum, e) => sum.plus(e.debitBalance), new Decimal(0));
    const totalCredits = entries.reduce((sum, e) => sum.plus(e.creditBalance), new Decimal(0));

    return {
      period: "As of",
      asOfDate,
      entries,
      totalDebits: totalDebits.toNumber(),
      totalCredits: totalCredits.toNumber(),
      isBalanced: totalDebits.equals(totalCredits),
    };
  }

  /**
   * Get income statement
   */
  async getIncomeStatement(tenantId: string, startDate: string, endDate: string) {
    const balances = await this.db
      .select({
        accountId: journalEntryLines.accountId,
        accountCode: accounts.code,
        accountName: accounts.name,
        accountType: accounts.accountType,
        reportCategory: accounts.reportCategory,
        level: accounts.level,
        isGroup: accounts.isGroup,
        debitTotal: sql<string>`COALESCE(SUM(${journalEntryLines.debit}), 0)`,
        creditTotal: sql<string>`COALESCE(SUM(${journalEntryLines.credit}), 0)`,
      })
      .from(journalEntryLines)
      .innerJoin(journalEntries, eq(journalEntryLines.journalEntryId, journalEntries.id))
      .innerJoin(accounts, eq(journalEntryLines.accountId, accounts.id))
      .where(
        and(
          eq(journalEntries.tenantId, tenantId),
          eq(journalEntries.status, "posted"),
          gte(journalEntries.postingDate, startDate),
          lte(journalEntries.postingDate, endDate),
          sql`${accounts.accountType} IN ('revenue', 'expense')`
        )
      )
      .groupBy(
        journalEntryLines.accountId,
        accounts.code,
        accounts.name,
        accounts.accountType,
        accounts.reportCategory,
        accounts.level,
        accounts.isGroup
      )
      .orderBy(accounts.code);

    const revenue: any[] = [];
    const costOfGoodsSold: any[] = [];
    const operatingExpenses: any[] = [];
    const otherIncomeExpenses: any[] = [];

    let totalRevenue = new Decimal(0);
    let totalCogs = new Decimal(0);
    let totalOpex = new Decimal(0);
    let totalOther = new Decimal(0);

    for (const balance of balances) {
      const debit = new Decimal(balance.debitTotal);
      const credit = new Decimal(balance.creditTotal);

      let amount: Decimal;
      if (balance.accountType === "revenue") {
        amount = credit.minus(debit); // Revenue is credit
      } else {
        amount = debit.minus(credit); // Expense is debit
      }

      const line = {
        accountId: balance.accountId,
        code: balance.accountCode,
        name: balance.accountName,
        level: balance.level,
        isGroup: balance.isGroup,
        amount: amount.toNumber(),
      };

      if (balance.accountType === "revenue") {
        if (balance.reportCategory === "operating_revenue") {
          revenue.push(line);
          totalRevenue = totalRevenue.plus(amount);
        } else {
          otherIncomeExpenses.push(line);
          totalOther = totalOther.plus(amount);
        }
      } else {
        if (balance.reportCategory === "cost_of_goods") {
          costOfGoodsSold.push(line);
          totalCogs = totalCogs.plus(amount);
        } else if (balance.reportCategory === "operating_expenses") {
          operatingExpenses.push(line);
          totalOpex = totalOpex.plus(amount);
        } else {
          otherIncomeExpenses.push({ ...line, amount: -amount.toNumber() });
          totalOther = totalOther.minus(amount);
        }
      }
    }

    const grossProfit = totalRevenue.minus(totalCogs);
    const operatingIncome = grossProfit.minus(totalOpex);
    const incomeBeforeTax = operatingIncome.plus(totalOther);

    return {
      startDate,
      endDate,
      revenue,
      costOfGoodsSold,
      grossProfit: grossProfit.toNumber(),
      operatingExpenses,
      operatingIncome: operatingIncome.toNumber(),
      otherIncomeExpenses,
      incomeBeforeTax: incomeBeforeTax.toNumber(),
      taxExpense: 0, // TODO: Calculate from tax accounts
      netIncome: incomeBeforeTax.toNumber(),
    };
  }

  /**
   * Get balance sheet
   */
  async getBalanceSheet(tenantId: string, asOfDate: string) {
    const balances = await this.db
      .select({
        accountId: journalEntryLines.accountId,
        accountCode: accounts.code,
        accountName: accounts.name,
        accountType: accounts.accountType,
        reportCategory: accounts.reportCategory,
        level: accounts.level,
        isGroup: accounts.isGroup,
        debitTotal: sql<string>`COALESCE(SUM(${journalEntryLines.debit}), 0)`,
        creditTotal: sql<string>`COALESCE(SUM(${journalEntryLines.credit}), 0)`,
      })
      .from(journalEntryLines)
      .innerJoin(journalEntries, eq(journalEntryLines.journalEntryId, journalEntries.id))
      .innerJoin(accounts, eq(journalEntryLines.accountId, accounts.id))
      .where(
        and(
          eq(journalEntries.tenantId, tenantId),
          eq(journalEntries.status, "posted"),
          lte(journalEntries.postingDate, asOfDate),
          sql`${accounts.accountType} IN ('asset', 'liability', 'equity')`
        )
      )
      .groupBy(
        journalEntryLines.accountId,
        accounts.code,
        accounts.name,
        accounts.accountType,
        accounts.reportCategory,
        accounts.level,
        accounts.isGroup
      )
      .orderBy(accounts.code);

    const currentAssets: any[] = [];
    const fixedAssets: any[] = [];
    const otherAssets: any[] = [];
    const currentLiabilities: any[] = [];
    const longTermLiabilities: any[] = [];
    const equityItems: any[] = [];

    let totalCurrentAssets = new Decimal(0);
    let totalFixedAssets = new Decimal(0);
    let totalOtherAssets = new Decimal(0);
    let totalCurrentLiabilities = new Decimal(0);
    let totalLongTermLiabilities = new Decimal(0);
    let totalEquity = new Decimal(0);

    for (const balance of balances) {
      const debit = new Decimal(balance.debitTotal);
      const credit = new Decimal(balance.creditTotal);

      let amount: Decimal;
      if (balance.accountType === "asset") {
        amount = debit.minus(credit);
      } else {
        amount = credit.minus(debit);
      }

      const line = {
        accountId: balance.accountId,
        code: balance.accountCode,
        name: balance.accountName,
        level: balance.level,
        isGroup: balance.isGroup,
        amount: amount.toNumber(),
      };

      if (balance.accountType === "asset") {
        if (balance.reportCategory === "current_assets") {
          currentAssets.push(line);
          totalCurrentAssets = totalCurrentAssets.plus(amount);
        } else if (balance.reportCategory === "fixed_assets") {
          fixedAssets.push(line);
          totalFixedAssets = totalFixedAssets.plus(amount);
        } else {
          otherAssets.push(line);
          totalOtherAssets = totalOtherAssets.plus(amount);
        }
      } else if (balance.accountType === "liability") {
        if (balance.reportCategory === "current_liabilities") {
          currentLiabilities.push(line);
          totalCurrentLiabilities = totalCurrentLiabilities.plus(amount);
        } else {
          longTermLiabilities.push(line);
          totalLongTermLiabilities = totalLongTermLiabilities.plus(amount);
        }
      } else {
        equityItems.push(line);
        totalEquity = totalEquity.plus(amount);
      }
    }

    const totalAssets = totalCurrentAssets.plus(totalFixedAssets).plus(totalOtherAssets);
    const totalLiabilities = totalCurrentLiabilities.plus(totalLongTermLiabilities);
    const totalLiabilitiesAndEquity = totalLiabilities.plus(totalEquity);

    return {
      asOfDate,
      assets: {
        currentAssets,
        totalCurrentAssets: totalCurrentAssets.toNumber(),
        fixedAssets,
        totalFixedAssets: totalFixedAssets.toNumber(),
        otherAssets,
        totalOtherAssets: totalOtherAssets.toNumber(),
        totalAssets: totalAssets.toNumber(),
      },
      liabilities: {
        currentLiabilities,
        totalCurrentLiabilities: totalCurrentLiabilities.toNumber(),
        longTermLiabilities,
        totalLongTermLiabilities: totalLongTermLiabilities.toNumber(),
        totalLiabilities: totalLiabilities.toNumber(),
      },
      equity: {
        items: equityItems,
        totalEquity: totalEquity.toNumber(),
      },
      totalLiabilitiesAndEquity: totalLiabilitiesAndEquity.toNumber(),
    };
  }
}
