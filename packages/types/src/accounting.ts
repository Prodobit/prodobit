import { type } from "arktype";
import { uuid, timestamp } from "./common";

// ═══════════════════════════════════════════════════════════════════════════
// ENUMS & CONSTANTS
// ═══════════════════════════════════════════════════════════════════════════

export const accountType = type(
  "'asset' | 'liability' | 'equity' | 'revenue' | 'expense'"
);

export const accountingStandard = type(
  "'TDHP' | 'US_GAAP' | 'IFRS' | 'UK_GAAP' | 'SKR03' | 'SKR04' | 'CUSTOM'"
);

export const journalEntryStatus = type("'draft' | 'posted' | 'reversed'");

export const journalEntryType = type(
  "'manual' | 'automated' | 'reversal' | 'recurring' | 'closing' | 'opening'"
);

export const fiscalPeriodStatus = type("'open' | 'closed' | 'locked'");

export const payableReceivableStatus = type(
  "'unpaid' | 'partial' | 'paid' | 'overdue' | 'written_off'"
);

export const paymentMethod = type(
  "'bank_transfer' | 'cash' | 'check' | 'credit_card' | 'other'"
);

export const taxType = type("'vat' | 'sales_tax' | 'withholding' | 'excise' | 'other'");

export const depreciationMethod = type(
  "'straight_line' | 'declining_balance' | 'double_declining' | 'sum_of_years' | 'units_of_production'"
);

export const reportCategory = type(
  "'current_assets' | 'fixed_assets' | 'intangible_assets' | 'current_liabilities' | 'long_term_liabilities' | 'equity' | 'operating_revenue' | 'other_revenue' | 'cost_of_goods' | 'operating_expenses' | 'other_expenses'"
);

export const cashFlowCategory = type("'operating' | 'investing' | 'financing'");

export const reconciliationStatus = type("'pending' | 'matched' | 'unmatched'");

// ═══════════════════════════════════════════════════════════════════════════
// ACCOUNTING SETTINGS (Tenant Configuration)
// ═══════════════════════════════════════════════════════════════════════════

export const accountingSettings = type({
  id: uuid,
  tenantId: uuid,

  // Country & Standard
  country: "string >= 2",
  accountingStandard: accountingStandard,

  // Fiscal Year
  fiscalYearStartMonth: "1 <= number <= 12",
  fiscalYearStartDay: "1 <= number <= 31",

  // Currency
  baseCurrency: "string >= 3",

  // Formatting
  decimalPlaces: "2 | 4",
  thousandsSeparator: "string",
  decimalSeparator: "string",

  // Features
  enableMultiCurrency: "boolean",
  enableCostCenters: "boolean",
  enableProjects: "boolean",
  enableDepartmentTracking: "boolean",

  insertedAt: timestamp,
  updatedAt: timestamp,
});

export const createAccountingSettingsRequest = type({
  country: "string >= 2",
  accountingStandard: accountingStandard,
  "fiscalYearStartMonth?": "1 <= number <= 12",
  "fiscalYearStartDay?": "1 <= number <= 31",
  baseCurrency: "string >= 3",
  "decimalPlaces?": "2 | 4",
  "thousandsSeparator?": "string",
  "decimalSeparator?": "string",
  "enableMultiCurrency?": "boolean",
  "enableCostCenters?": "boolean",
  "enableProjects?": "boolean",
  "enableDepartmentTracking?": "boolean",
});

export const updateAccountingSettingsRequest = type({
  "country?": "string >= 2",
  "accountingStandard?": accountingStandard,
  "fiscalYearStartMonth?": "1 <= number <= 12",
  "fiscalYearStartDay?": "1 <= number <= 31",
  "baseCurrency?": "string >= 3",
  "decimalPlaces?": "2 | 4",
  "thousandsSeparator?": "string",
  "decimalSeparator?": "string",
  "enableMultiCurrency?": "boolean",
  "enableCostCenters?": "boolean",
  "enableProjects?": "boolean",
  "enableDepartmentTracking?": "boolean",
});

// ═══════════════════════════════════════════════════════════════════════════
// CHART OF ACCOUNTS TEMPLATES
// ═══════════════════════════════════════════════════════════════════════════

export const coaTemplate = type({
  id: uuid,
  code: "string >= 1",
  name: "string >= 1",
  "country?": "string",
  "description?": "string",
  isSystem: "boolean",
  insertedAt: timestamp,
});

export const coaTemplateAccount = type({
  id: uuid,
  templateId: uuid,
  code: "string >= 1",
  name: "string >= 1",
  "nameEn?": "string",
  accountType: accountType,
  "parentCode?": "string",
  level: "number >= 1",
  isGroup: "boolean",
  "reportCategory?": reportCategory,
  "cashFlowCategory?": cashFlowCategory,
  insertedAt: timestamp,
});

// ═══════════════════════════════════════════════════════════════════════════
// CHART OF ACCOUNTS (Tenant-specific)
// ═══════════════════════════════════════════════════════════════════════════

export const account = type({
  id: uuid,
  tenantId: uuid,
  code: "string >= 1",
  name: "string >= 1",
  "nameEn?": "string",
  "parentAccountId?": uuid,
  accountType: accountType,
  level: "number >= 1",
  isGroup: "boolean",
  isActive: "boolean",
  currency: "string >= 3",

  // Attributes
  isBankAccount: "boolean",
  isCashAccount: "boolean",
  isReconcilable: "boolean",
  requiresCostCenter: "boolean",
  requiresProject: "boolean",

  // Tax
  "defaultTaxRateId?": uuid,

  // Report mapping
  "reportCategory?": reportCategory,
  "cashFlowCategory?": cashFlowCategory,

  // Metadata
  "description?": "string",
  "notes?": "string",

  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createAccountRequest = type({
  code: "string >= 1",
  name: "string >= 1",
  "nameEn?": "string",
  "parentAccountId?": uuid,
  accountType: accountType,
  "isGroup?": "boolean",
  "currency?": "string >= 3",
  "isBankAccount?": "boolean",
  "isCashAccount?": "boolean",
  "isReconcilable?": "boolean",
  "requiresCostCenter?": "boolean",
  "requiresProject?": "boolean",
  "defaultTaxRateId?": uuid,
  "reportCategory?": reportCategory,
  "cashFlowCategory?": cashFlowCategory,
  "description?": "string",
  "notes?": "string",
});

export const updateAccountRequest = type({
  "code?": "string >= 1",
  "name?": "string >= 1",
  "nameEn?": "string",
  "parentAccountId?": uuid,
  "accountType?": accountType,
  "isGroup?": "boolean",
  "isActive?": "boolean",
  "currency?": "string >= 3",
  "isBankAccount?": "boolean",
  "isCashAccount?": "boolean",
  "isReconcilable?": "boolean",
  "requiresCostCenter?": "boolean",
  "requiresProject?": "boolean",
  "defaultTaxRateId?": uuid,
  "reportCategory?": reportCategory,
  "cashFlowCategory?": cashFlowCategory,
  "description?": "string",
  "notes?": "string",
});

export const accountQuery = type({
  "accountType?": accountType,
  "isGroup?": "boolean",
  "isActive?": "boolean",
  "parentAccountId?": uuid,
  "isBankAccount?": "boolean",
  "isCashAccount?": "boolean",
  "search?": "string",
});

// ═══════════════════════════════════════════════════════════════════════════
// FISCAL YEARS & PERIODS
// ═══════════════════════════════════════════════════════════════════════════

export const fiscalYear = type({
  id: uuid,
  tenantId: uuid,
  year: "number >= 1900",
  name: "string >= 1",
  startDate: "string",
  endDate: "string",
  status: "'active' | 'closed'",
  "closedAt?": timestamp,
  "closedBy?": uuid,
  insertedAt: timestamp,
  updatedAt: timestamp,
});

export const createFiscalYearRequest = type({
  year: "number >= 1900",
  "name?": "string >= 1",
  startDate: "string",
  endDate: "string",
});

export const fiscalPeriod = type({
  id: uuid,
  fiscalYearId: uuid,
  tenantId: uuid,
  periodNumber: "number >= 1",
  periodType: "'monthly' | 'quarterly'",
  name: "string >= 1",
  startDate: "string",
  endDate: "string",
  status: fiscalPeriodStatus,
  "closedAt?": timestamp,
  "closedBy?": uuid,
  "lockedAt?": timestamp,
  insertedAt: timestamp,
  updatedAt: timestamp,
});

// ═══════════════════════════════════════════════════════════════════════════
// TAX MANAGEMENT
// ═══════════════════════════════════════════════════════════════════════════

export const taxTemplate = type({
  id: uuid,
  country: "string >= 2",
  code: "string >= 1",
  name: "string >= 1",
  insertedAt: timestamp,
});

export const taxRate = type({
  id: uuid,
  tenantId: uuid,
  code: "string >= 1",
  name: "string >= 1",
  taxType: taxType,
  rate: "number >= 0",
  "taxAccountId?": uuid,
  "validFrom?": "string",
  "validTo?": "string",
  isDefault: "boolean",
  isActive: "boolean",
  insertedAt: timestamp,
  updatedAt: timestamp,
});

export const createTaxRateRequest = type({
  code: "string >= 1",
  name: "string >= 1",
  taxType: taxType,
  rate: "number >= 0",
  "taxAccountId?": uuid,
  "validFrom?": "string",
  "validTo?": "string",
  "isDefault?": "boolean",
});

export const updateTaxRateRequest = type({
  "code?": "string >= 1",
  "name?": "string >= 1",
  "taxType?": taxType,
  "rate?": "number >= 0",
  "taxAccountId?": uuid,
  "validFrom?": "string",
  "validTo?": "string",
  "isDefault?": "boolean",
  "isActive?": "boolean",
});

// ═══════════════════════════════════════════════════════════════════════════
// JOURNAL ENTRIES
// ═══════════════════════════════════════════════════════════════════════════

export const journalEntry = type({
  id: uuid,
  tenantId: uuid,
  entryNumber: "string >= 1",
  entryDate: "string",
  postingDate: "string",

  "reference?": "string",
  description: "string >= 1",

  status: journalEntryStatus,
  entryType: journalEntryType,
  "sourceModule?": "string",
  "sourceDocumentId?": uuid,

  // Totals
  debitTotal: "number >= 0",
  creditTotal: "number >= 0",
  currency: "string >= 3",

  // Reversal
  "reversedEntryId?": uuid,
  "reversalReason?": "string",

  // Recurring
  isRecurring: "boolean",
  "recurringScheduleId?": uuid,

  // Approval (optional workflow)
  "approvalStatus?": "'pending' | 'approved' | 'rejected'",
  "approvedBy?": uuid,
  "approvedAt?": timestamp,

  // Sardis-ready: hash for integrity
  "entryHash?": "string",

  // Audit
  createdBy: uuid,
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const journalEntryLine = type({
  id: uuid,
  journalEntryId: uuid,
  lineNumber: "number >= 1",

  accountId: uuid,
  debit: "number >= 0",
  credit: "number >= 0",

  "description?": "string",

  // Dimensions
  "costCenterId?": uuid,
  "projectId?": uuid,
  "departmentId?": uuid,

  // Currency
  currency: "string >= 3",
  "exchangeRate?": "number > 0",

  // Reconciliation
  isReconciled: "boolean",
  "reconciledAt?": timestamp,

  insertedAt: timestamp,
  updatedAt: timestamp,
});

export const createJournalEntryRequest = type({
  entryDate: "string",
  "postingDate?": "string",
  "reference?": "string",
  description: "string >= 1",
  "entryType?": journalEntryType,
  "sourceModule?": "string",
  "sourceDocumentId?": uuid,
  "currency?": "string >= 3",
  lines: type({
    accountId: uuid,
    "debit?": "number >= 0",
    "credit?": "number >= 0",
    "description?": "string",
    "costCenterId?": uuid,
    "projectId?": uuid,
    "departmentId?": uuid,
    "exchangeRate?": "number > 0",
  }).array(),
});

export const updateJournalEntryRequest = type({
  "entryDate?": "string",
  "reference?": "string",
  "description?": "string >= 1",
  "lines?": type({
    "id?": uuid,
    accountId: uuid,
    "debit?": "number >= 0",
    "credit?": "number >= 0",
    "description?": "string",
    "costCenterId?": uuid,
    "projectId?": uuid,
    "departmentId?": uuid,
    "exchangeRate?": "number > 0",
  }).array(),
});

export const journalEntryQuery = type({
  "status?": journalEntryStatus,
  "entryType?": journalEntryType,
  "sourceModule?": "string",
  "fromDate?": "string",
  "toDate?": "string",
  "accountId?": uuid,
  "search?": "string",
});

export const postJournalEntryRequest = type({
  "postingDate?": "string",
});

export const reverseJournalEntryRequest = type({
  reversalDate: "string",
  reason: "string >= 1",
});

// ═══════════════════════════════════════════════════════════════════════════
// ACCOUNT BALANCES & LEDGER
// ═══════════════════════════════════════════════════════════════════════════

export const accountBalance = type({
  id: uuid,
  tenantId: uuid,
  accountId: uuid,
  fiscalPeriodId: uuid,

  openingBalance: "number",
  debitTotal: "number >= 0",
  creditTotal: "number >= 0",
  closingBalance: "number",

  currency: "string >= 3",

  calculatedAt: timestamp,
  insertedAt: timestamp,
  updatedAt: timestamp,
});

export const trialBalanceEntry = type({
  accountId: uuid,
  accountCode: "string",
  accountName: "string",
  accountType: accountType,
  level: "number",
  isGroup: "boolean",
  debitBalance: "number >= 0",
  creditBalance: "number >= 0",
});

export const trialBalanceResponse = type({
  period: "string",
  asOfDate: "string",
  entries: trialBalanceEntry.array(),
  totalDebits: "number >= 0",
  totalCredits: "number >= 0",
  isBalanced: "boolean",
});

export const ledgerEntry = type({
  entryId: uuid,
  entryNumber: "string",
  entryDate: "string",
  description: "string",
  debit: "number >= 0",
  credit: "number >= 0",
  balance: "number",
  reference: "string | undefined",
});

export const accountLedgerResponse = type({
  accountId: uuid,
  accountCode: "string",
  accountName: "string",
  openingBalance: "number",
  entries: ledgerEntry.array(),
  closingBalance: "number",
  totalDebits: "number >= 0",
  totalCredits: "number >= 0",
});

// ═══════════════════════════════════════════════════════════════════════════
// ACCOUNTS PAYABLE
// ═══════════════════════════════════════════════════════════════════════════

export const payable = type({
  id: uuid,
  tenantId: uuid,
  supplierId: uuid,
  "invoiceId?": uuid,

  invoiceNumber: "string >= 1",
  invoiceDate: "string",
  dueDate: "string",

  amount: "number >= 0",
  paidAmount: "number >= 0",
  remainingAmount: "number >= 0",

  currency: "string >= 3",
  "exchangeRate?": "number > 0",

  status: payableReceivableStatus,

  "paymentTerms?": "string",
  "notes?": "string",

  insertedAt: timestamp,
  updatedAt: timestamp,
});

export const createPayableRequest = type({
  supplierId: uuid,
  "invoiceId?": uuid,
  invoiceNumber: "string >= 1",
  invoiceDate: "string",
  dueDate: "string",
  amount: "number >= 0",
  "currency?": "string >= 3",
  "exchangeRate?": "number > 0",
  "paymentTerms?": "string",
  "notes?": "string",
});

export const payablePayment = type({
  id: uuid,
  payableId: uuid,
  paymentDate: "string",
  amount: "number >= 0",
  paymentMethod: paymentMethod,
  "referenceNumber?": "string",
  "bankAccountId?": uuid,
  "journalEntryId?": uuid,
  "notes?": "string",
  createdBy: uuid,
  insertedAt: timestamp,
});

export const createPayablePaymentRequest = type({
  paymentDate: "string",
  amount: "number >= 0",
  paymentMethod: paymentMethod,
  "referenceNumber?": "string",
  "bankAccountId?": uuid,
  "notes?": "string",
});

export const payableQuery = type({
  "supplierId?": uuid,
  "status?": payableReceivableStatus,
  "fromDate?": "string",
  "toDate?": "string",
  "overdue?": "boolean",
});

// ═══════════════════════════════════════════════════════════════════════════
// ACCOUNTS RECEIVABLE
// ═══════════════════════════════════════════════════════════════════════════

export const receivable = type({
  id: uuid,
  tenantId: uuid,
  customerId: uuid,
  "invoiceId?": uuid,

  invoiceNumber: "string >= 1",
  invoiceDate: "string",
  dueDate: "string",

  amount: "number >= 0",
  paidAmount: "number >= 0",
  remainingAmount: "number >= 0",

  currency: "string >= 3",
  "exchangeRate?": "number > 0",

  status: payableReceivableStatus,

  "paymentTerms?": "string",
  "notes?": "string",

  insertedAt: timestamp,
  updatedAt: timestamp,
});

export const createReceivableRequest = type({
  customerId: uuid,
  "invoiceId?": uuid,
  invoiceNumber: "string >= 1",
  invoiceDate: "string",
  dueDate: "string",
  amount: "number >= 0",
  "currency?": "string >= 3",
  "exchangeRate?": "number > 0",
  "paymentTerms?": "string",
  "notes?": "string",
});

export const receivablePayment = type({
  id: uuid,
  receivableId: uuid,
  paymentDate: "string",
  amount: "number >= 0",
  paymentMethod: paymentMethod,
  "referenceNumber?": "string",
  "bankAccountId?": uuid,
  "journalEntryId?": uuid,
  "notes?": "string",
  createdBy: uuid,
  insertedAt: timestamp,
});

export const createReceivablePaymentRequest = type({
  paymentDate: "string",
  amount: "number >= 0",
  paymentMethod: paymentMethod,
  "referenceNumber?": "string",
  "bankAccountId?": uuid,
  "notes?": "string",
});

export const receivableQuery = type({
  "customerId?": uuid,
  "status?": payableReceivableStatus,
  "fromDate?": "string",
  "toDate?": "string",
  "overdue?": "boolean",
});

// ═══════════════════════════════════════════════════════════════════════════
// AGING REPORTS
// ═══════════════════════════════════════════════════════════════════════════

export const agingBucket = type({
  current: "number >= 0",
  days1to30: "number >= 0",
  days31to60: "number >= 0",
  days61to90: "number >= 0",
  over90: "number >= 0",
  total: "number >= 0",
});

export const agingReportEntry = type({
  partyId: uuid,
  partyName: "string",
  partyCode: "string | undefined",
  buckets: agingBucket,
});

export const agingReportResponse = type({
  reportType: "'payables' | 'receivables'",
  asOfDate: "string",
  entries: agingReportEntry.array(),
  totals: agingBucket,
});

// ═══════════════════════════════════════════════════════════════════════════
// BANK ACCOUNTS & RECONCILIATION
// ═══════════════════════════════════════════════════════════════════════════

export const bankAccount = type({
  id: uuid,
  tenantId: uuid,
  accountId: uuid, // Link to GL account

  bankName: "string >= 1",
  accountNumber: "string >= 1",
  "iban?": "string",
  "swiftCode?": "string",

  currency: "string >= 3",

  currentBalance: "number",
  bookBalance: "number",

  isActive: "boolean",

  insertedAt: timestamp,
  updatedAt: timestamp,
});

export const createBankAccountRequest = type({
  accountId: uuid,
  bankName: "string >= 1",
  accountNumber: "string >= 1",
  "iban?": "string",
  "swiftCode?": "string",
  currency: "string >= 3",
  "currentBalance?": "number",
});

export const updateBankAccountRequest = type({
  "bankName?": "string >= 1",
  "accountNumber?": "string >= 1",
  "iban?": "string",
  "swiftCode?": "string",
  "currentBalance?": "number",
  "isActive?": "boolean",
});

export const bankStatement = type({
  id: uuid,
  bankAccountId: uuid,
  statementDate: "string",
  "statementNumber?": "string",
  openingBalance: "number",
  closingBalance: "number",
  status: "'imported' | 'reconciled'",
  "importedAt?": timestamp,
  "reconciledAt?": timestamp,
  "reconciledBy?": uuid,
});

export const bankStatementLine = type({
  id: uuid,
  bankStatementId: uuid,
  transactionDate: "string",
  description: "string",
  "debit?": "number",
  "credit?": "number",
  balance: "number",
  "referenceNumber?": "string",
  isReconciled: "boolean",
  "matchedJournalEntryLineId?": uuid,
  "reconciledAt?": timestamp,
  insertedAt: timestamp,
});

export const bankReconciliation = type({
  id: uuid,
  bankAccountId: uuid,
  reconciliationDate: "string",
  bookBalance: "number",
  bankBalance: "number",
  unreconciledDeposits: "number",
  unreconciledWithdrawals: "number",
  bankCharges: "number",
  finalBalance: "number",
  "notes?": "string",
  reconciledBy: uuid,
  reconciledAt: timestamp,
});

export const importBankStatementRequest = type({
  bankAccountId: uuid,
  statementDate: "string",
  "statementNumber?": "string",
  openingBalance: "number",
  closingBalance: "number",
  lines: type({
    transactionDate: "string",
    description: "string",
    "debit?": "number",
    "credit?": "number",
    balance: "number",
    "referenceNumber?": "string",
  }).array(),
});

export const matchTransactionRequest = type({
  bankStatementLineId: uuid,
  journalEntryLineId: uuid,
});

// ═══════════════════════════════════════════════════════════════════════════
// COST CENTERS
// ═══════════════════════════════════════════════════════════════════════════

export const costCenter = type({
  id: uuid,
  tenantId: uuid,
  code: "string >= 1",
  name: "string >= 1",
  "parentCostCenterId?": uuid,
  level: "number >= 1",
  isActive: "boolean",
  insertedAt: timestamp,
  updatedAt: timestamp,
});

export const createCostCenterRequest = type({
  code: "string >= 1",
  name: "string >= 1",
  "parentCostCenterId?": uuid,
});

export const updateCostCenterRequest = type({
  "code?": "string >= 1",
  "name?": "string >= 1",
  "parentCostCenterId?": uuid,
  "isActive?": "boolean",
});

// ═══════════════════════════════════════════════════════════════════════════
// FIXED ASSETS & DEPRECIATION
// ═══════════════════════════════════════════════════════════════════════════

export const fixedAssetAccount = type({
  id: uuid,
  tenantId: uuid,
  assetId: uuid, // Link to existing asset table

  // Accounting
  assetAccountId: uuid, // GL account for asset
  depreciationAccountId: uuid, // GL account for accumulated depreciation
  expenseAccountId: uuid, // GL account for depreciation expense

  // Cost
  acquisitionCost: "number >= 0",
  "residualValue?": "number >= 0",
  usefulLifeMonths: "number >= 1",

  // Depreciation
  depreciationMethod: depreciationMethod,
  depreciationStartDate: "string",
  "lastDepreciationDate?": "string",

  // Calculated
  accumulatedDepreciation: "number >= 0",
  bookValue: "number >= 0",

  // Status
  status: "'active' | 'fully_depreciated' | 'disposed'",
  "disposalDate?": "string",
  "disposalAmount?": "number",
  "disposalJournalEntryId?": uuid,

  insertedAt: timestamp,
  updatedAt: timestamp,
});

export const createFixedAssetAccountRequest = type({
  assetId: uuid,
  assetAccountId: uuid,
  depreciationAccountId: uuid,
  expenseAccountId: uuid,
  acquisitionCost: "number >= 0",
  "residualValue?": "number >= 0",
  usefulLifeMonths: "number >= 1",
  depreciationMethod: depreciationMethod,
  depreciationStartDate: "string",
});

export const depreciationSchedule = type({
  id: uuid,
  fixedAssetAccountId: uuid,
  periodNumber: "number >= 1",
  periodDate: "string",
  depreciationAmount: "number >= 0",
  accumulatedDepreciation: "number >= 0",
  bookValue: "number >= 0",
  "journalEntryId?": uuid,
  status: "'scheduled' | 'posted'",
  insertedAt: timestamp,
});

export const runDepreciationRequest = type({
  "asOfDate?": "string",
  "fixedAssetAccountIds?": uuid.array(),
});

export const disposeAssetRequest = type({
  disposalDate: "string",
  disposalAmount: "number >= 0",
  "notes?": "string",
});

// ═══════════════════════════════════════════════════════════════════════════
// FINANCIAL REPORTS
// ═══════════════════════════════════════════════════════════════════════════

export const incomeStatementRequest = type({
  startDate: "string",
  endDate: "string",
  "comparative?": "boolean",
  "format?": "'json' | 'pdf' | 'excel'",
});

export const balanceSheetRequest = type({
  asOfDate: "string",
  "comparative?": "boolean",
  "format?": "'json' | 'pdf' | 'excel'",
});

export const cashFlowRequest = type({
  startDate: "string",
  endDate: "string",
  "method?": "'direct' | 'indirect'",
  "format?": "'json' | 'pdf' | 'excel'",
});

export const financialReportLine = type({
  accountId: "string | undefined",
  code: "string | undefined",
  name: "string",
  level: "number",
  isGroup: "boolean",
  amount: "number",
  "previousAmount?": "number",
  "percentChange?": "number",
});

export const incomeStatementResponse = type({
  startDate: "string",
  endDate: "string",
  revenue: financialReportLine.array(),
  costOfGoodsSold: financialReportLine.array(),
  grossProfit: "number",
  operatingExpenses: financialReportLine.array(),
  operatingIncome: "number",
  otherIncomeExpenses: financialReportLine.array(),
  incomeBeforeTax: "number",
  taxExpense: "number",
  netIncome: "number",
});

export const balanceSheetResponse = type({
  asOfDate: "string",
  assets: type({
    currentAssets: financialReportLine.array(),
    totalCurrentAssets: "number",
    fixedAssets: financialReportLine.array(),
    totalFixedAssets: "number",
    otherAssets: financialReportLine.array(),
    totalOtherAssets: "number",
    totalAssets: "number",
  }),
  liabilities: type({
    currentLiabilities: financialReportLine.array(),
    totalCurrentLiabilities: "number",
    longTermLiabilities: financialReportLine.array(),
    totalLongTermLiabilities: "number",
    totalLiabilities: "number",
  }),
  equity: type({
    items: financialReportLine.array(),
    totalEquity: "number",
  }),
  totalLiabilitiesAndEquity: "number",
});

// ═══════════════════════════════════════════════════════════════════════════
// RECURRING JOURNAL ENTRIES
// ═══════════════════════════════════════════════════════════════════════════

export const recurringJournalEntry = type({
  id: uuid,
  tenantId: uuid,
  name: "string >= 1",
  "description?": "string",
  frequency: "'daily' | 'weekly' | 'monthly' | 'quarterly' | 'yearly'",
  startDate: "string",
  "endDate?": "string",
  nextRunDate: "string",
  templateData: "unknown", // JSON of journal entry template
  isActive: "boolean",
  "lastRunAt?": timestamp,
  insertedAt: timestamp,
  updatedAt: timestamp,
});

export const createRecurringJournalEntryRequest = type({
  name: "string >= 1",
  "description?": "string",
  frequency: "'daily' | 'weekly' | 'monthly' | 'quarterly' | 'yearly'",
  startDate: "string",
  "endDate?": "string",
  templateData: "unknown",
});

// ═══════════════════════════════════════════════════════════════════════════
// TYPE EXPORTS
// ═══════════════════════════════════════════════════════════════════════════

export type AccountType = typeof accountType.infer;
export type AccountingStandard = typeof accountingStandard.infer;
export type JournalEntryStatus = typeof journalEntryStatus.infer;
export type JournalEntryType = typeof journalEntryType.infer;
export type FiscalPeriodStatus = typeof fiscalPeriodStatus.infer;
export type PayableReceivableStatus = typeof payableReceivableStatus.infer;
export type PaymentMethod = typeof paymentMethod.infer;
export type TaxType = typeof taxType.infer;
export type DepreciationMethod = typeof depreciationMethod.infer;
export type ReportCategory = typeof reportCategory.infer;
export type CashFlowCategory = typeof cashFlowCategory.infer;

export type AccountingSettings = typeof accountingSettings.infer;
export type CreateAccountingSettingsRequest = typeof createAccountingSettingsRequest.infer;
export type UpdateAccountingSettingsRequest = typeof updateAccountingSettingsRequest.infer;

export type CoaTemplate = typeof coaTemplate.infer;
export type CoaTemplateAccount = typeof coaTemplateAccount.infer;

export type Account = typeof account.infer;
export type CreateAccountRequest = typeof createAccountRequest.infer;
export type UpdateAccountRequest = typeof updateAccountRequest.infer;
export type AccountQuery = typeof accountQuery.infer;

export type FiscalYear = typeof fiscalYear.infer;
export type CreateFiscalYearRequest = typeof createFiscalYearRequest.infer;
export type FiscalPeriod = typeof fiscalPeriod.infer;

export type TaxTemplate = typeof taxTemplate.infer;
export type TaxRate = typeof taxRate.infer;
export type CreateTaxRateRequest = typeof createTaxRateRequest.infer;
export type UpdateTaxRateRequest = typeof updateTaxRateRequest.infer;

export type JournalEntry = typeof journalEntry.infer;
export type JournalEntryLine = typeof journalEntryLine.infer;
export type CreateJournalEntryRequest = typeof createJournalEntryRequest.infer;
export type UpdateJournalEntryRequest = typeof updateJournalEntryRequest.infer;
export type JournalEntryQuery = typeof journalEntryQuery.infer;
export type PostJournalEntryRequest = typeof postJournalEntryRequest.infer;
export type ReverseJournalEntryRequest = typeof reverseJournalEntryRequest.infer;

export type AccountBalance = typeof accountBalance.infer;
export type TrialBalanceEntry = typeof trialBalanceEntry.infer;
export type TrialBalanceResponse = typeof trialBalanceResponse.infer;
export type LedgerEntry = typeof ledgerEntry.infer;
export type AccountLedgerResponse = typeof accountLedgerResponse.infer;

export type Payable = typeof payable.infer;
export type CreatePayableRequest = typeof createPayableRequest.infer;
export type PayablePayment = typeof payablePayment.infer;
export type CreatePayablePaymentRequest = typeof createPayablePaymentRequest.infer;
export type PayableQuery = typeof payableQuery.infer;

export type Receivable = typeof receivable.infer;
export type CreateReceivableRequest = typeof createReceivableRequest.infer;
export type ReceivablePayment = typeof receivablePayment.infer;
export type CreateReceivablePaymentRequest = typeof createReceivablePaymentRequest.infer;
export type ReceivableQuery = typeof receivableQuery.infer;

export type AgingBucket = typeof agingBucket.infer;
export type AgingReportEntry = typeof agingReportEntry.infer;
export type AgingReportResponse = typeof agingReportResponse.infer;

export type BankAccount = typeof bankAccount.infer;
export type CreateBankAccountRequest = typeof createBankAccountRequest.infer;
export type UpdateBankAccountRequest = typeof updateBankAccountRequest.infer;
export type BankStatement = typeof bankStatement.infer;
export type BankStatementLine = typeof bankStatementLine.infer;
export type BankReconciliation = typeof bankReconciliation.infer;
export type ImportBankStatementRequest = typeof importBankStatementRequest.infer;
export type MatchTransactionRequest = typeof matchTransactionRequest.infer;

export type CostCenter = typeof costCenter.infer;
export type CreateCostCenterRequest = typeof createCostCenterRequest.infer;
export type UpdateCostCenterRequest = typeof updateCostCenterRequest.infer;

export type FixedAssetAccount = typeof fixedAssetAccount.infer;
export type CreateFixedAssetAccountRequest = typeof createFixedAssetAccountRequest.infer;
export type DepreciationSchedule = typeof depreciationSchedule.infer;
export type RunDepreciationRequest = typeof runDepreciationRequest.infer;
export type DisposeAssetRequest = typeof disposeAssetRequest.infer;

export type IncomeStatementRequest = typeof incomeStatementRequest.infer;
export type BalanceSheetRequest = typeof balanceSheetRequest.infer;
export type CashFlowRequest = typeof cashFlowRequest.infer;
export type FinancialReportLine = typeof financialReportLine.infer;
export type IncomeStatementResponse = typeof incomeStatementResponse.infer;
export type BalanceSheetResponse = typeof balanceSheetResponse.infer;

export type RecurringJournalEntry = typeof recurringJournalEntry.infer;
export type CreateRecurringJournalEntryRequest = typeof createRecurringJournalEntryRequest.infer;
