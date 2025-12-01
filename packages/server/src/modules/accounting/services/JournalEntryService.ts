import { eq, and, desc, or, ilike, isNull, sql, gte, lte, inArray } from "drizzle-orm";
import type {
  CreateJournalEntryRequest,
  UpdateJournalEntryRequest,
  JournalEntryQuery,
  PostJournalEntryRequest,
  ReverseJournalEntryRequest,
} from "@prodobit/types";
import {
  journalEntries,
  journalEntryLines,
  accounts,
  fiscalPeriods,
  accountBalances,
} from "@prodobit/database";
import type { Database } from "@prodobit/database";
import Decimal from "decimal.js";
import crypto from "crypto";

export class JournalEntryService {
  constructor(private db: Database) {}

  /**
   * List journal entries with filters
   */
  async listJournalEntries(tenantId: string, filters?: Partial<JournalEntryQuery>) {
    const conditions: any[] = [eq(journalEntries.tenantId, tenantId), isNull(journalEntries.deletedAt)];

    if (filters?.status) {
      conditions.push(eq(journalEntries.status, filters.status));
    }

    if (filters?.entryType) {
      conditions.push(eq(journalEntries.entryType, filters.entryType));
    }

    if (filters?.sourceModule) {
      conditions.push(eq(journalEntries.sourceModule, filters.sourceModule));
    }

    if (filters?.fromDate) {
      conditions.push(gte(journalEntries.entryDate, filters.fromDate));
    }

    if (filters?.toDate) {
      conditions.push(lte(journalEntries.entryDate, filters.toDate));
    }

    if (filters?.search) {
      conditions.push(
        or(
          ilike(journalEntries.entryNumber, `%${filters.search}%`),
          ilike(journalEntries.description, `%${filters.search}%`),
          ilike(journalEntries.reference, `%${filters.search}%`)
        )
      );
    }

    const entries = await this.db
      .select()
      .from(journalEntries)
      .where(and(...conditions))
      .orderBy(desc(journalEntries.entryDate), desc(journalEntries.entryNumber));

    return entries;
  }

  /**
   * Get a single journal entry by ID with lines
   */
  async getJournalEntry(entryId: string, tenantId: string) {
    const [entry] = await this.db
      .select()
      .from(journalEntries)
      .where(
        and(eq(journalEntries.id, entryId), eq(journalEntries.tenantId, tenantId), isNull(journalEntries.deletedAt))
      );

    if (!entry) {
      return null;
    }

    const lines = await this.db
      .select({
        id: journalEntryLines.id,
        lineNumber: journalEntryLines.lineNumber,
        accountId: journalEntryLines.accountId,
        accountCode: accounts.code,
        accountName: accounts.name,
        debit: journalEntryLines.debit,
        credit: journalEntryLines.credit,
        description: journalEntryLines.description,
        costCenterId: journalEntryLines.costCenterId,
        projectId: journalEntryLines.projectId,
        departmentId: journalEntryLines.departmentId,
        currency: journalEntryLines.currency,
        exchangeRate: journalEntryLines.exchangeRate,
        isReconciled: journalEntryLines.isReconciled,
      })
      .from(journalEntryLines)
      .leftJoin(accounts, eq(journalEntryLines.accountId, accounts.id))
      .where(eq(journalEntryLines.journalEntryId, entryId))
      .orderBy(journalEntryLines.lineNumber);

    return {
      ...entry,
      lines,
    };
  }

  /**
   * Generate next entry number
   */
  async generateEntryNumber(tenantId: string, prefix = "JE"): Promise<string> {
    const year = new Date().getFullYear();
    const month = String(new Date().getMonth() + 1).padStart(2, "0");

    // Get the last entry number for this year/month
    const pattern = `${prefix}-${year}${month}-%`;

    const [lastEntry] = await this.db
      .select({ entryNumber: journalEntries.entryNumber })
      .from(journalEntries)
      .where(and(eq(journalEntries.tenantId, tenantId), ilike(journalEntries.entryNumber, pattern)))
      .orderBy(desc(journalEntries.entryNumber))
      .limit(1);

    let sequence = 1;
    if (lastEntry) {
      const parts = lastEntry.entryNumber.split("-");
      if (parts.length === 3) {
        sequence = parseInt(parts[2], 10) + 1;
      }
    }

    return `${prefix}-${year}${month}-${String(sequence).padStart(5, "0")}`;
  }

  /**
   * Create a new journal entry (draft)
   */
  async createJournalEntry(tenantId: string, data: CreateJournalEntryRequest, userId: string) {
    // Validate debit = credit
    let totalDebit = new Decimal(0);
    let totalCredit = new Decimal(0);

    for (const line of data.lines) {
      if (line.debit) totalDebit = totalDebit.plus(new Decimal(line.debit));
      if (line.credit) totalCredit = totalCredit.plus(new Decimal(line.credit));
    }

    if (!totalDebit.equals(totalCredit)) {
      throw new Error(`Debits (${totalDebit.toString()}) must equal credits (${totalCredit.toString()})`);
    }

    if (totalDebit.isZero()) {
      throw new Error("Journal entry must have at least one debit or credit line");
    }

    // Generate entry number
    const entryNumber = await this.generateEntryNumber(tenantId);

    // Create journal entry
    const [entry] = await this.db
      .insert(journalEntries)
      .values({
        tenantId,
        entryNumber,
        entryDate: data.entryDate,
        postingDate: data.postingDate ?? data.entryDate,
        reference: data.reference,
        description: data.description,
        status: "draft",
        entryType: data.entryType ?? "manual",
        sourceModule: data.sourceModule,
        sourceDocumentId: data.sourceDocumentId,
        debitTotal: totalDebit,
        creditTotal: totalCredit,
        currency: data.currency ?? "TRY",
        createdBy: userId,
      })
      .returning();

    // Create lines
    const lineValues = data.lines.map((line, index) => ({
      journalEntryId: entry.id,
      lineNumber: index + 1,
      accountId: line.accountId,
      debit: line.debit ? new Decimal(line.debit) : new Decimal(0),
      credit: line.credit ? new Decimal(line.credit) : new Decimal(0),
      description: line.description,
      costCenterId: line.costCenterId,
      projectId: line.projectId,
      departmentId: line.departmentId,
      currency: "TRY",
      exchangeRate: line.exchangeRate ? new Decimal(line.exchangeRate) : undefined,
    }));

    await this.db.insert(journalEntryLines).values(lineValues);

    return this.getJournalEntry(entry.id, tenantId);
  }

  /**
   * Update a draft journal entry
   */
  async updateJournalEntry(entryId: string, tenantId: string, data: UpdateJournalEntryRequest, userId: string) {
    // Get existing entry
    const entry = await this.getJournalEntry(entryId, tenantId);
    if (!entry) {
      throw new Error("Journal entry not found");
    }

    if (entry.status !== "draft") {
      throw new Error("Only draft entries can be updated");
    }

    // If lines are provided, validate and replace
    if (data.lines) {
      let totalDebit = new Decimal(0);
      let totalCredit = new Decimal(0);

      for (const line of data.lines) {
        if (line.debit) totalDebit = totalDebit.plus(new Decimal(line.debit));
        if (line.credit) totalCredit = totalCredit.plus(new Decimal(line.credit));
      }

      if (!totalDebit.equals(totalCredit)) {
        throw new Error(`Debits (${totalDebit.toString()}) must equal credits (${totalCredit.toString()})`);
      }

      // Delete existing lines
      await this.db.delete(journalEntryLines).where(eq(journalEntryLines.journalEntryId, entryId));

      // Insert new lines
      const lineValues = data.lines.map((line, index) => ({
        journalEntryId: entryId,
        lineNumber: index + 1,
        accountId: line.accountId,
        debit: line.debit ? new Decimal(line.debit) : new Decimal(0),
        credit: line.credit ? new Decimal(line.credit) : new Decimal(0),
        description: line.description,
        costCenterId: line.costCenterId,
        projectId: line.projectId,
        departmentId: line.departmentId,
        currency: "TRY",
        exchangeRate: line.exchangeRate ? new Decimal(line.exchangeRate) : undefined,
      }));

      await this.db.insert(journalEntryLines).values(lineValues);

      // Update totals
      await this.db
        .update(journalEntries)
        .set({
          entryDate: data.entryDate ?? entry.entryDate,
          reference: data.reference ?? entry.reference,
          description: data.description ?? entry.description,
          debitTotal: totalDebit,
          creditTotal: totalCredit,
          updatedAt: new Date(),
        })
        .where(eq(journalEntries.id, entryId));
    } else {
      // Update only header fields
      await this.db
        .update(journalEntries)
        .set({
          entryDate: data.entryDate ?? entry.entryDate,
          reference: data.reference ?? entry.reference,
          description: data.description ?? entry.description,
          updatedAt: new Date(),
        })
        .where(eq(journalEntries.id, entryId));
    }

    return this.getJournalEntry(entryId, tenantId);
  }

  /**
   * Calculate entry hash for integrity (Sardis-ready)
   */
  private calculateEntryHash(entry: any, lines: any[]): string {
    const data = {
      entryNumber: entry.entryNumber,
      entryDate: entry.entryDate,
      description: entry.description,
      lines: lines.map((l) => ({
        accountId: l.accountId,
        debit: l.debit?.toString(),
        credit: l.credit?.toString(),
      })),
    };

    return crypto.createHash("sha256").update(JSON.stringify(data)).digest("hex");
  }

  /**
   * Post a journal entry (make it immutable)
   */
  async postJournalEntry(entryId: string, tenantId: string, data: PostJournalEntryRequest | null, userId: string) {
    const entry = await this.getJournalEntry(entryId, tenantId);
    if (!entry) {
      throw new Error("Journal entry not found");
    }

    if (entry.status !== "draft") {
      throw new Error("Only draft entries can be posted");
    }

    // Verify period is open
    const postingDate = data?.postingDate ?? entry.postingDate;
    const [period] = await this.db
      .select()
      .from(fiscalPeriods)
      .where(
        and(
          eq(fiscalPeriods.tenantId, tenantId),
          lte(fiscalPeriods.startDate, postingDate),
          gte(fiscalPeriods.endDate, postingDate),
          eq(fiscalPeriods.status, "open")
        )
      )
      .limit(1);

    if (!period) {
      throw new Error(`No open fiscal period found for date ${postingDate}`);
    }

    // Calculate hash for integrity
    const entryHash = this.calculateEntryHash(entry, entry.lines);

    // Update entry status
    await this.db
      .update(journalEntries)
      .set({
        status: "posted",
        postingDate,
        entryHash,
        updatedAt: new Date(),
      })
      .where(eq(journalEntries.id, entryId));

    // Update account balances
    await this.updateAccountBalances(tenantId, period.id, entry.lines);

    return this.getJournalEntry(entryId, tenantId);
  }

  /**
   * Reverse a posted journal entry
   */
  async reverseJournalEntry(entryId: string, tenantId: string, data: ReverseJournalEntryRequest, userId: string) {
    const entry = await this.getJournalEntry(entryId, tenantId);
    if (!entry) {
      throw new Error("Journal entry not found");
    }

    if (entry.status !== "posted") {
      throw new Error("Only posted entries can be reversed");
    }

    // Create reversal entry
    const reversalNumber = await this.generateEntryNumber(tenantId, "REV");

    const [reversalEntry] = await this.db
      .insert(journalEntries)
      .values({
        tenantId,
        entryNumber: reversalNumber,
        entryDate: data.reversalDate,
        postingDate: data.reversalDate,
        reference: entry.entryNumber,
        description: `Reversal: ${entry.description} - ${data.reason}`,
        status: "posted",
        entryType: "reversal",
        reversedEntryId: entryId,
        reversalReason: data.reason,
        debitTotal: entry.creditTotal, // Swap
        creditTotal: entry.debitTotal, // Swap
        currency: entry.currency,
        createdBy: userId,
      })
      .returning();

    // Create reversed lines (swap debit/credit)
    const reversalLines = entry.lines.map((line: any, index: number) => ({
      journalEntryId: reversalEntry.id,
      lineNumber: index + 1,
      accountId: line.accountId,
      debit: line.credit, // Swap
      credit: line.debit, // Swap
      description: `Reversal: ${line.description ?? ""}`,
      costCenterId: line.costCenterId,
      projectId: line.projectId,
      departmentId: line.departmentId,
      currency: line.currency,
      exchangeRate: line.exchangeRate,
    }));

    await this.db.insert(journalEntryLines).values(reversalLines);

    // Mark original as reversed
    await this.db
      .update(journalEntries)
      .set({
        status: "reversed",
        updatedAt: new Date(),
      })
      .where(eq(journalEntries.id, entryId));

    // Update account balances
    const [period] = await this.db
      .select()
      .from(fiscalPeriods)
      .where(
        and(
          eq(fiscalPeriods.tenantId, tenantId),
          lte(fiscalPeriods.startDate, data.reversalDate),
          gte(fiscalPeriods.endDate, data.reversalDate),
          eq(fiscalPeriods.status, "open")
        )
      )
      .limit(1);

    if (period) {
      await this.updateAccountBalances(tenantId, period.id, reversalLines);
    }

    return this.getJournalEntry(reversalEntry.id, tenantId);
  }

  /**
   * Delete a draft journal entry
   */
  async deleteJournalEntry(entryId: string, tenantId: string) {
    const entry = await this.getJournalEntry(entryId, tenantId);
    if (!entry) {
      throw new Error("Journal entry not found");
    }

    if (entry.status !== "draft") {
      throw new Error("Only draft entries can be deleted");
    }

    // Soft delete
    await this.db
      .update(journalEntries)
      .set({
        deletedAt: new Date(),
        updatedAt: new Date(),
      })
      .where(eq(journalEntries.id, entryId));

    return entry;
  }

  /**
   * Update account balances after posting
   */
  private async updateAccountBalances(tenantId: string, periodId: string, lines: any[]) {
    for (const line of lines) {
      const debit = new Decimal(line.debit?.toString() ?? "0");
      const credit = new Decimal(line.credit?.toString() ?? "0");

      // Get or create balance record
      const [existingBalance] = await this.db
        .select()
        .from(accountBalances)
        .where(and(eq(accountBalances.accountId, line.accountId), eq(accountBalances.fiscalPeriodId, periodId)));

      if (existingBalance) {
        const newDebitTotal = new Decimal(existingBalance.debitTotal.toString()).plus(debit);
        const newCreditTotal = new Decimal(existingBalance.creditTotal.toString()).plus(credit);
        const newClosingBalance = new Decimal(existingBalance.openingBalance.toString())
          .plus(newDebitTotal)
          .minus(newCreditTotal);

        await this.db
          .update(accountBalances)
          .set({
            debitTotal: newDebitTotal,
            creditTotal: newCreditTotal,
            closingBalance: newClosingBalance,
            calculatedAt: new Date(),
            updatedAt: new Date(),
          })
          .where(eq(accountBalances.id, existingBalance.id));
      } else {
        const closingBalance = debit.minus(credit);

        await this.db.insert(accountBalances).values({
          tenantId,
          accountId: line.accountId,
          fiscalPeriodId: periodId,
          openingBalance: new Decimal(0),
          debitTotal: debit,
          creditTotal: credit,
          closingBalance,
        });
      }
    }
  }
}
