import { BaseClient } from "./base-client";
import { buildQuery } from "../utils/query-builder";
import type {
  Account,
  CreateAccountRequest,
  UpdateAccountRequest,
  AccountQuery,
  JournalEntry,
  CreateJournalEntryRequest,
  UpdateJournalEntryRequest,
  JournalEntryQuery,
  PostJournalEntryRequest,
  ReverseJournalEntryRequest,
  TrialBalanceResponse,
  AccountLedgerResponse,
  IncomeStatementResponse,
  BalanceSheetResponse,
  CoaTemplate,
  TaxRate,
  CreateTaxRateRequest,
  UpdateTaxRateRequest,
  FiscalYear,
  FiscalPeriod,
  CreateFiscalYearRequest,
  Payable,
  CreatePayableRequest,
  PayableQuery,
  CreatePayablePaymentRequest,
  Receivable,
  CreateReceivableRequest,
  ReceivableQuery,
  CreateReceivablePaymentRequest,
  BankAccount,
  CreateBankAccountRequest,
  UpdateBankAccountRequest,
  CostCenter,
  CreateCostCenterRequest,
  UpdateCostCenterRequest,
  FixedAssetAccount,
  CreateFixedAssetAccountRequest,
  RunDepreciationRequest,
  DisposeAssetRequest,
  AccountingSettings,
  CreateAccountingSettingsRequest,
  UpdateAccountingSettingsRequest,
  AgingReportResponse,
} from "@prodobit/types";
import type { ProdobitClientConfig, RequestConfig, Response } from "../types";

export class AccountingClient extends BaseClient {
  constructor(config: ProdobitClientConfig) {
    super(config);
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // ACCOUNTING SETTINGS
  // ═══════════════════════════════════════════════════════════════════════════

  async getSettings(config?: RequestConfig): Promise<Response<AccountingSettings>> {
    return this.request("GET", "/api/v1/accounting/settings", undefined, config);
  }

  async createSettings(
    data: CreateAccountingSettingsRequest,
    config?: RequestConfig
  ): Promise<Response<AccountingSettings>> {
    return this.request("POST", "/api/v1/accounting/settings", data, config);
  }

  async updateSettings(
    data: UpdateAccountingSettingsRequest,
    config?: RequestConfig
  ): Promise<Response<AccountingSettings>> {
    return this.request("PUT", "/api/v1/accounting/settings", data, config);
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // CHART OF ACCOUNTS
  // ═══════════════════════════════════════════════════════════════════════════

  async getAccounts(
    filters?: Partial<AccountQuery>,
    config?: RequestConfig
  ): Promise<Response<Account[]>> {
    const queryString = buildQuery(filters);
    const path = `/api/v1/accounting/accounts${queryString ? `?${queryString}` : ""}`;
    return this.request("GET", path, undefined, config);
  }

  async getAccountHierarchy(config?: RequestConfig): Promise<Response<Account[]>> {
    return this.request("GET", "/api/v1/accounting/accounts/hierarchy", undefined, config);
  }

  async getCoaTemplates(config?: RequestConfig): Promise<Response<CoaTemplate[]>> {
    return this.request("GET", "/api/v1/accounting/accounts/templates", undefined, config);
  }

  async initializeFromTemplate(
    templateCode: string,
    config?: RequestConfig
  ): Promise<Response<{ template: CoaTemplate; accountsCreated: number }>> {
    return this.request("POST", "/api/v1/accounting/accounts/initialize", { templateCode }, config);
  }

  async getAccount(id: string, config?: RequestConfig): Promise<Response<Account>> {
    return this.request("GET", `/api/v1/accounting/accounts/${id}`, undefined, config);
  }

  async createAccount(
    data: CreateAccountRequest,
    config?: RequestConfig
  ): Promise<Response<Account>> {
    return this.request("POST", "/api/v1/accounting/accounts", data, config);
  }

  async updateAccount(
    id: string,
    data: UpdateAccountRequest,
    config?: RequestConfig
  ): Promise<Response<Account>> {
    return this.request("PUT", `/api/v1/accounting/accounts/${id}`, data, config);
  }

  async deleteAccount(id: string, config?: RequestConfig): Promise<Response<Account>> {
    return this.request("DELETE", `/api/v1/accounting/accounts/${id}`, undefined, config);
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // JOURNAL ENTRIES
  // ═══════════════════════════════════════════════════════════════════════════

  async getJournalEntries(
    filters?: Partial<JournalEntryQuery>,
    config?: RequestConfig
  ): Promise<Response<JournalEntry[]>> {
    const queryString = buildQuery(filters);
    const path = `/api/v1/accounting/journal-entries${queryString ? `?${queryString}` : ""}`;
    return this.request("GET", path, undefined, config);
  }

  async getJournalEntry(id: string, config?: RequestConfig): Promise<Response<JournalEntry>> {
    return this.request("GET", `/api/v1/accounting/journal-entries/${id}`, undefined, config);
  }

  async createJournalEntry(
    data: CreateJournalEntryRequest,
    config?: RequestConfig
  ): Promise<Response<JournalEntry>> {
    return this.request("POST", "/api/v1/accounting/journal-entries", data, config);
  }

  async updateJournalEntry(
    id: string,
    data: UpdateJournalEntryRequest,
    config?: RequestConfig
  ): Promise<Response<JournalEntry>> {
    return this.request("PUT", `/api/v1/accounting/journal-entries/${id}`, data, config);
  }

  async postJournalEntry(
    id: string,
    data?: PostJournalEntryRequest,
    config?: RequestConfig
  ): Promise<Response<JournalEntry>> {
    return this.request("POST", `/api/v1/accounting/journal-entries/${id}/post`, data, config);
  }

  async reverseJournalEntry(
    id: string,
    data: ReverseJournalEntryRequest,
    config?: RequestConfig
  ): Promise<Response<JournalEntry>> {
    return this.request("POST", `/api/v1/accounting/journal-entries/${id}/reverse`, data, config);
  }

  async deleteJournalEntry(id: string, config?: RequestConfig): Promise<Response<JournalEntry>> {
    return this.request("DELETE", `/api/v1/accounting/journal-entries/${id}`, undefined, config);
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // LEDGER & REPORTS
  // ═══════════════════════════════════════════════════════════════════════════

  async getAccountLedger(
    accountId: string,
    startDate: string,
    endDate: string,
    config?: RequestConfig
  ): Promise<Response<AccountLedgerResponse>> {
    return this.request(
      "GET",
      `/api/v1/accounting/ledger/${accountId}?startDate=${startDate}&endDate=${endDate}`,
      undefined,
      config
    );
  }

  async getTrialBalance(
    asOfDate: string,
    config?: RequestConfig
  ): Promise<Response<TrialBalanceResponse>> {
    return this.request(
      "GET",
      `/api/v1/accounting/reports/trial-balance?asOfDate=${asOfDate}`,
      undefined,
      config
    );
  }

  async getIncomeStatement(
    startDate: string,
    endDate: string,
    config?: RequestConfig
  ): Promise<Response<IncomeStatementResponse>> {
    return this.request(
      "GET",
      `/api/v1/accounting/reports/income-statement?startDate=${startDate}&endDate=${endDate}`,
      undefined,
      config
    );
  }

  async getBalanceSheet(
    asOfDate: string,
    config?: RequestConfig
  ): Promise<Response<BalanceSheetResponse>> {
    return this.request(
      "GET",
      `/api/v1/accounting/reports/balance-sheet?asOfDate=${asOfDate}`,
      undefined,
      config
    );
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // FISCAL YEARS & PERIODS
  // ═══════════════════════════════════════════════════════════════════════════

  async getFiscalYears(config?: RequestConfig): Promise<Response<FiscalYear[]>> {
    return this.request("GET", "/api/v1/accounting/fiscal-years", undefined, config);
  }

  async getFiscalYear(id: string, config?: RequestConfig): Promise<Response<FiscalYear>> {
    return this.request("GET", `/api/v1/accounting/fiscal-years/${id}`, undefined, config);
  }

  async createFiscalYear(
    data: CreateFiscalYearRequest,
    config?: RequestConfig
  ): Promise<Response<FiscalYear>> {
    return this.request("POST", "/api/v1/accounting/fiscal-years", data, config);
  }

  async closeFiscalYear(id: string, config?: RequestConfig): Promise<Response<FiscalYear>> {
    return this.request("POST", `/api/v1/accounting/fiscal-years/${id}/close`, undefined, config);
  }

  async getFiscalPeriods(fiscalYearId: string, config?: RequestConfig): Promise<Response<FiscalPeriod[]>> {
    return this.request(
      "GET",
      `/api/v1/accounting/fiscal-years/${fiscalYearId}/periods`,
      undefined,
      config
    );
  }

  async closeFiscalPeriod(id: string, config?: RequestConfig): Promise<Response<FiscalPeriod>> {
    return this.request("POST", `/api/v1/accounting/fiscal-periods/${id}/close`, undefined, config);
  }

  async reopenFiscalPeriod(id: string, config?: RequestConfig): Promise<Response<FiscalPeriod>> {
    return this.request("POST", `/api/v1/accounting/fiscal-periods/${id}/reopen`, undefined, config);
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // TAX RATES
  // ═══════════════════════════════════════════════════════════════════════════

  async getTaxRates(config?: RequestConfig): Promise<Response<TaxRate[]>> {
    return this.request("GET", "/api/v1/accounting/tax-rates", undefined, config);
  }

  async getTaxRate(id: string, config?: RequestConfig): Promise<Response<TaxRate>> {
    return this.request("GET", `/api/v1/accounting/tax-rates/${id}`, undefined, config);
  }

  async createTaxRate(data: CreateTaxRateRequest, config?: RequestConfig): Promise<Response<TaxRate>> {
    return this.request("POST", "/api/v1/accounting/tax-rates", data, config);
  }

  async updateTaxRate(
    id: string,
    data: UpdateTaxRateRequest,
    config?: RequestConfig
  ): Promise<Response<TaxRate>> {
    return this.request("PUT", `/api/v1/accounting/tax-rates/${id}`, data, config);
  }

  async deleteTaxRate(id: string, config?: RequestConfig): Promise<Response<TaxRate>> {
    return this.request("DELETE", `/api/v1/accounting/tax-rates/${id}`, undefined, config);
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // ACCOUNTS PAYABLE
  // ═══════════════════════════════════════════════════════════════════════════

  async getPayables(
    filters?: Partial<PayableQuery>,
    config?: RequestConfig
  ): Promise<Response<Payable[]>> {
    const queryString = buildQuery(filters);
    const path = `/api/v1/accounting/payables${queryString ? `?${queryString}` : ""}`;
    return this.request("GET", path, undefined, config);
  }

  async getPayable(id: string, config?: RequestConfig): Promise<Response<Payable>> {
    return this.request("GET", `/api/v1/accounting/payables/${id}`, undefined, config);
  }

  async createPayable(data: CreatePayableRequest, config?: RequestConfig): Promise<Response<Payable>> {
    return this.request("POST", "/api/v1/accounting/payables", data, config);
  }

  async recordPayablePayment(
    payableId: string,
    data: CreatePayablePaymentRequest,
    config?: RequestConfig
  ): Promise<Response<Payable>> {
    return this.request(
      "POST",
      `/api/v1/accounting/payables/${payableId}/payments`,
      data,
      config
    );
  }

  async getPayablesAgingReport(config?: RequestConfig): Promise<Response<AgingReportResponse>> {
    return this.request("GET", "/api/v1/accounting/payables/aging", undefined, config);
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // ACCOUNTS RECEIVABLE
  // ═══════════════════════════════════════════════════════════════════════════

  async getReceivables(
    filters?: Partial<ReceivableQuery>,
    config?: RequestConfig
  ): Promise<Response<Receivable[]>> {
    const queryString = buildQuery(filters);
    const path = `/api/v1/accounting/receivables${queryString ? `?${queryString}` : ""}`;
    return this.request("GET", path, undefined, config);
  }

  async getReceivable(id: string, config?: RequestConfig): Promise<Response<Receivable>> {
    return this.request("GET", `/api/v1/accounting/receivables/${id}`, undefined, config);
  }

  async createReceivable(
    data: CreateReceivableRequest,
    config?: RequestConfig
  ): Promise<Response<Receivable>> {
    return this.request("POST", "/api/v1/accounting/receivables", data, config);
  }

  async recordReceivablePayment(
    receivableId: string,
    data: CreateReceivablePaymentRequest,
    config?: RequestConfig
  ): Promise<Response<Receivable>> {
    return this.request(
      "POST",
      `/api/v1/accounting/receivables/${receivableId}/payments`,
      data,
      config
    );
  }

  async getReceivablesAgingReport(config?: RequestConfig): Promise<Response<AgingReportResponse>> {
    return this.request("GET", "/api/v1/accounting/receivables/aging", undefined, config);
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // BANK ACCOUNTS
  // ═══════════════════════════════════════════════════════════════════════════

  async getBankAccounts(config?: RequestConfig): Promise<Response<BankAccount[]>> {
    return this.request("GET", "/api/v1/accounting/bank-accounts", undefined, config);
  }

  async getBankAccount(id: string, config?: RequestConfig): Promise<Response<BankAccount>> {
    return this.request("GET", `/api/v1/accounting/bank-accounts/${id}`, undefined, config);
  }

  async createBankAccount(
    data: CreateBankAccountRequest,
    config?: RequestConfig
  ): Promise<Response<BankAccount>> {
    return this.request("POST", "/api/v1/accounting/bank-accounts", data, config);
  }

  async updateBankAccount(
    id: string,
    data: UpdateBankAccountRequest,
    config?: RequestConfig
  ): Promise<Response<BankAccount>> {
    return this.request("PUT", `/api/v1/accounting/bank-accounts/${id}`, data, config);
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // COST CENTERS
  // ═══════════════════════════════════════════════════════════════════════════

  async getCostCenters(config?: RequestConfig): Promise<Response<CostCenter[]>> {
    return this.request("GET", "/api/v1/accounting/cost-centers", undefined, config);
  }

  async getCostCenter(id: string, config?: RequestConfig): Promise<Response<CostCenter>> {
    return this.request("GET", `/api/v1/accounting/cost-centers/${id}`, undefined, config);
  }

  async createCostCenter(
    data: CreateCostCenterRequest,
    config?: RequestConfig
  ): Promise<Response<CostCenter>> {
    return this.request("POST", "/api/v1/accounting/cost-centers", data, config);
  }

  async updateCostCenter(
    id: string,
    data: UpdateCostCenterRequest,
    config?: RequestConfig
  ): Promise<Response<CostCenter>> {
    return this.request("PUT", `/api/v1/accounting/cost-centers/${id}`, data, config);
  }

  async deleteCostCenter(id: string, config?: RequestConfig): Promise<Response<CostCenter>> {
    return this.request("DELETE", `/api/v1/accounting/cost-centers/${id}`, undefined, config);
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // FIXED ASSETS
  // ═══════════════════════════════════════════════════════════════════════════

  async getFixedAssetAccounts(config?: RequestConfig): Promise<Response<FixedAssetAccount[]>> {
    return this.request("GET", "/api/v1/accounting/fixed-assets", undefined, config);
  }

  async getFixedAssetAccount(
    id: string,
    config?: RequestConfig
  ): Promise<Response<FixedAssetAccount>> {
    return this.request("GET", `/api/v1/accounting/fixed-assets/${id}`, undefined, config);
  }

  async createFixedAssetAccount(
    data: CreateFixedAssetAccountRequest,
    config?: RequestConfig
  ): Promise<Response<FixedAssetAccount>> {
    return this.request("POST", "/api/v1/accounting/fixed-assets", data, config);
  }

  async runDepreciation(
    data?: RunDepreciationRequest,
    config?: RequestConfig
  ): Promise<Response<{ processedCount: number; journalEntryIds: string[] }>> {
    return this.request("POST", "/api/v1/accounting/fixed-assets/depreciation/run", data, config);
  }

  async disposeFixedAsset(
    id: string,
    data: DisposeAssetRequest,
    config?: RequestConfig
  ): Promise<Response<FixedAssetAccount>> {
    return this.request("POST", `/api/v1/accounting/fixed-assets/${id}/dispose`, data, config);
  }
}
