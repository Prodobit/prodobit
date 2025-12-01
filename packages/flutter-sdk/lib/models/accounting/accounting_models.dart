import 'package:freezed_annotation/freezed_annotation.dart';

part 'accounting_models.freezed.dart';
part 'accounting_models.g.dart';

// ============ ENUMS ============

enum AccountType { asset, liability, equity, revenue, expense }

enum AccountingStandard { TDHP, US_GAAP, IFRS, UK_GAAP, SKR03, SKR04, CUSTOM }

enum JournalEntryStatus { draft, posted, reversed }

enum JournalEntryType { manual, automated, reversal, recurring, closing, opening }

enum FiscalPeriodStatus { open, closed, locked }

enum PayableReceivableStatus { unpaid, partial, paid, overdue, written_off }

enum PaymentMethod { bank_transfer, cash, check, credit_card, other }

enum TaxType { vat, sales_tax, withholding, excise, other }

enum DepreciationMethod {
  straight_line,
  declining_balance,
  double_declining,
  sum_of_years,
  units_of_production
}

enum ReportCategory {
  current_assets,
  fixed_assets,
  intangible_assets,
  current_liabilities,
  long_term_liabilities,
  equity,
  operating_revenue,
  other_revenue,
  cost_of_goods,
  operating_expenses,
  other_expenses
}

enum CashFlowCategory { operating, investing, financing }

// ============ ACCOUNTING SETTINGS ============

@freezed
sealed class AccountingSettings with _$AccountingSettings {
  const factory AccountingSettings({
    required String id,
    required String tenantId,
    required String country,
    required String accountingStandard,
    required int fiscalYearStartMonth,
    required int fiscalYearStartDay,
    required String baseCurrency,
    required int decimalPlaces,
    required String thousandsSeparator,
    required String decimalSeparator,
    required bool enableMultiCurrency,
    required bool enableCostCenters,
    required bool enableProjects,
    required bool enableDepartmentTracking,
    required DateTime insertedAt,
    required DateTime updatedAt,
  }) = _AccountingSettings;

  factory AccountingSettings.fromJson(Map<String, dynamic> json) =>
      _$AccountingSettingsFromJson(json);
}

@freezed
sealed class UpdateAccountingSettingsRequest
    with _$UpdateAccountingSettingsRequest {
  const factory UpdateAccountingSettingsRequest({
    String? country,
    String? accountingStandard,
    int? fiscalYearStartMonth,
    int? fiscalYearStartDay,
    String? baseCurrency,
    int? decimalPlaces,
    String? thousandsSeparator,
    String? decimalSeparator,
    bool? enableMultiCurrency,
    bool? enableCostCenters,
    bool? enableProjects,
    bool? enableDepartmentTracking,
  }) = _UpdateAccountingSettingsRequest;

  factory UpdateAccountingSettingsRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateAccountingSettingsRequestFromJson(json);
}

// ============ CHART OF ACCOUNTS ============

@freezed
sealed class Account with _$Account {
  const factory Account({
    required String id,
    required String tenantId,
    required String code,
    required String name,
    String? nameEn,
    String? parentAccountId,
    required String accountType,
    required int level,
    required bool isGroup,
    required bool isActive,
    required String currency,
    required bool isBankAccount,
    required bool isCashAccount,
    required bool isReconcilable,
    required bool requiresCostCenter,
    required bool requiresProject,
    String? defaultTaxRateId,
    String? reportCategory,
    String? cashFlowCategory,
    String? description,
    String? notes,
    required DateTime insertedAt,
    required DateTime updatedAt,
    DateTime? deletedAt,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}

@freezed
sealed class CreateAccountRequest with _$CreateAccountRequest {
  const factory CreateAccountRequest({
    required String code,
    required String name,
    String? nameEn,
    String? parentAccountId,
    required String accountType,
    bool? isGroup,
    String? currency,
    bool? isBankAccount,
    bool? isCashAccount,
    bool? isReconcilable,
    bool? requiresCostCenter,
    bool? requiresProject,
    String? defaultTaxRateId,
    String? reportCategory,
    String? cashFlowCategory,
    String? description,
    String? notes,
  }) = _CreateAccountRequest;

  factory CreateAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateAccountRequestFromJson(json);
}

@freezed
sealed class UpdateAccountRequest with _$UpdateAccountRequest {
  const factory UpdateAccountRequest({
    String? code,
    String? name,
    String? nameEn,
    String? parentAccountId,
    String? accountType,
    bool? isGroup,
    bool? isActive,
    String? currency,
    bool? isBankAccount,
    bool? isCashAccount,
    bool? isReconcilable,
    bool? requiresCostCenter,
    bool? requiresProject,
    String? defaultTaxRateId,
    String? reportCategory,
    String? cashFlowCategory,
    String? description,
    String? notes,
  }) = _UpdateAccountRequest;

  factory UpdateAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateAccountRequestFromJson(json);
}

@freezed
sealed class AccountQuery with _$AccountQuery {
  const factory AccountQuery({
    String? accountType,
    bool? isGroup,
    bool? isActive,
    String? parentAccountId,
    bool? isBankAccount,
    bool? isCashAccount,
    String? search,
  }) = _AccountQuery;

  factory AccountQuery.fromJson(Map<String, dynamic> json) =>
      _$AccountQueryFromJson(json);
}

// ============ FISCAL YEARS & PERIODS ============

@freezed
sealed class FiscalYear with _$FiscalYear {
  const factory FiscalYear({
    required String id,
    required String tenantId,
    required int year,
    required String name,
    required String startDate,
    required String endDate,
    required String status,
    DateTime? closedAt,
    String? closedBy,
    required DateTime insertedAt,
    required DateTime updatedAt,
  }) = _FiscalYear;

  factory FiscalYear.fromJson(Map<String, dynamic> json) =>
      _$FiscalYearFromJson(json);
}

@freezed
sealed class CreateFiscalYearRequest with _$CreateFiscalYearRequest {
  const factory CreateFiscalYearRequest({
    required int year,
    String? name,
    required String startDate,
    required String endDate,
  }) = _CreateFiscalYearRequest;

  factory CreateFiscalYearRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateFiscalYearRequestFromJson(json);
}

@freezed
sealed class FiscalPeriod with _$FiscalPeriod {
  const factory FiscalPeriod({
    required String id,
    required String fiscalYearId,
    required String tenantId,
    required int periodNumber,
    required String periodType,
    required String name,
    required String startDate,
    required String endDate,
    required String status,
    DateTime? closedAt,
    String? closedBy,
    DateTime? lockedAt,
    required DateTime insertedAt,
    required DateTime updatedAt,
  }) = _FiscalPeriod;

  factory FiscalPeriod.fromJson(Map<String, dynamic> json) =>
      _$FiscalPeriodFromJson(json);
}

@freezed
sealed class CreateFiscalPeriodRequest with _$CreateFiscalPeriodRequest {
  const factory CreateFiscalPeriodRequest({
    required String fiscalYearId,
    required int periodNumber,
    String? periodType,
    required String name,
    required String startDate,
    required String endDate,
  }) = _CreateFiscalPeriodRequest;

  factory CreateFiscalPeriodRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateFiscalPeriodRequestFromJson(json);
}

// ============ TAX RATES ============

@freezed
sealed class TaxRate with _$TaxRate {
  const factory TaxRate({
    required String id,
    required String tenantId,
    required String code,
    required String name,
    required String taxType,
    required double rate,
    String? taxAccountId,
    String? validFrom,
    String? validTo,
    required bool isDefault,
    required bool isActive,
    required DateTime insertedAt,
    required DateTime updatedAt,
  }) = _TaxRate;

  factory TaxRate.fromJson(Map<String, dynamic> json) =>
      _$TaxRateFromJson(json);
}

@freezed
sealed class CreateTaxRateRequest with _$CreateTaxRateRequest {
  const factory CreateTaxRateRequest({
    required String code,
    required String name,
    required String taxType,
    required double rate,
    String? taxAccountId,
    String? validFrom,
    String? validTo,
    bool? isDefault,
  }) = _CreateTaxRateRequest;

  factory CreateTaxRateRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateTaxRateRequestFromJson(json);
}

@freezed
sealed class UpdateTaxRateRequest with _$UpdateTaxRateRequest {
  const factory UpdateTaxRateRequest({
    String? code,
    String? name,
    String? taxType,
    double? rate,
    String? taxAccountId,
    String? validFrom,
    String? validTo,
    bool? isDefault,
    bool? isActive,
  }) = _UpdateTaxRateRequest;

  factory UpdateTaxRateRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateTaxRateRequestFromJson(json);
}

// ============ JOURNAL ENTRIES ============

@freezed
sealed class JournalEntry with _$JournalEntry {
  const factory JournalEntry({
    required String id,
    required String tenantId,
    required String entryNumber,
    required String entryDate,
    required String postingDate,
    String? reference,
    required String description,
    required String status,
    required String entryType,
    String? sourceModule,
    String? sourceDocumentId,
    required double debitTotal,
    required double creditTotal,
    required String currency,
    String? reversedEntryId,
    String? reversalReason,
    required bool isRecurring,
    String? recurringScheduleId,
    String? approvalStatus,
    String? approvedBy,
    DateTime? approvedAt,
    String? entryHash,
    required String createdBy,
    required DateTime insertedAt,
    required DateTime updatedAt,
    DateTime? deletedAt,
    List<JournalEntryLine>? lines,
  }) = _JournalEntry;

  factory JournalEntry.fromJson(Map<String, dynamic> json) =>
      _$JournalEntryFromJson(json);
}

@freezed
sealed class JournalEntryLine with _$JournalEntryLine {
  const factory JournalEntryLine({
    required String id,
    required String journalEntryId,
    required int lineNumber,
    required String accountId,
    String? accountCode,
    String? accountName,
    required double debit,
    required double credit,
    String? description,
    String? costCenterId,
    String? projectId,
    String? departmentId,
    required String currency,
    double? exchangeRate,
    required bool isReconciled,
    DateTime? reconciledAt,
    required DateTime insertedAt,
    required DateTime updatedAt,
  }) = _JournalEntryLine;

  factory JournalEntryLine.fromJson(Map<String, dynamic> json) =>
      _$JournalEntryLineFromJson(json);
}

@freezed
sealed class JournalEntryLineRequest with _$JournalEntryLineRequest {
  const factory JournalEntryLineRequest({
    required String accountId,
    double? debit,
    double? credit,
    String? description,
    String? costCenterId,
    String? projectId,
    String? departmentId,
    double? exchangeRate,
  }) = _JournalEntryLineRequest;

  factory JournalEntryLineRequest.fromJson(Map<String, dynamic> json) =>
      _$JournalEntryLineRequestFromJson(json);
}

@freezed
sealed class CreateJournalEntryRequest with _$CreateJournalEntryRequest {
  const factory CreateJournalEntryRequest({
    required String entryDate,
    String? postingDate,
    String? reference,
    required String description,
    String? entryType,
    String? sourceModule,
    String? sourceDocumentId,
    String? currency,
    required List<JournalEntryLineRequest> lines,
  }) = _CreateJournalEntryRequest;

  factory CreateJournalEntryRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateJournalEntryRequestFromJson(json);
}

@freezed
sealed class UpdateJournalEntryRequest with _$UpdateJournalEntryRequest {
  const factory UpdateJournalEntryRequest({
    String? entryDate,
    String? reference,
    String? description,
    List<JournalEntryLineRequest>? lines,
  }) = _UpdateJournalEntryRequest;

  factory UpdateJournalEntryRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateJournalEntryRequestFromJson(json);
}

@freezed
sealed class PostJournalEntryRequest with _$PostJournalEntryRequest {
  const factory PostJournalEntryRequest({
    String? postingDate,
  }) = _PostJournalEntryRequest;

  factory PostJournalEntryRequest.fromJson(Map<String, dynamic> json) =>
      _$PostJournalEntryRequestFromJson(json);
}

@freezed
sealed class ReverseJournalEntryRequest with _$ReverseJournalEntryRequest {
  const factory ReverseJournalEntryRequest({
    required String reversalDate,
    required String reason,
  }) = _ReverseJournalEntryRequest;

  factory ReverseJournalEntryRequest.fromJson(Map<String, dynamic> json) =>
      _$ReverseJournalEntryRequestFromJson(json);
}

@freezed
sealed class JournalEntryQuery with _$JournalEntryQuery {
  const factory JournalEntryQuery({
    String? status,
    String? entryType,
    String? sourceModule,
    String? fromDate,
    String? toDate,
    String? accountId,
    String? search,
  }) = _JournalEntryQuery;

  factory JournalEntryQuery.fromJson(Map<String, dynamic> json) =>
      _$JournalEntryQueryFromJson(json);
}

// ============ ACCOUNTS PAYABLE ============

@freezed
sealed class Payable with _$Payable {
  const factory Payable({
    required String id,
    required String tenantId,
    required String supplierId,
    String? invoiceId,
    required String invoiceNumber,
    required String invoiceDate,
    required String dueDate,
    required double amount,
    required double paidAmount,
    required double remainingAmount,
    required String currency,
    double? exchangeRate,
    required String status,
    String? paymentTerms,
    String? notes,
    required DateTime insertedAt,
    required DateTime updatedAt,
  }) = _Payable;

  factory Payable.fromJson(Map<String, dynamic> json) =>
      _$PayableFromJson(json);
}

@freezed
sealed class CreatePayableRequest with _$CreatePayableRequest {
  const factory CreatePayableRequest({
    required String supplierId,
    String? invoiceId,
    required String invoiceNumber,
    required String invoiceDate,
    required String dueDate,
    required double amount,
    String? currency,
    double? exchangeRate,
    String? paymentTerms,
    String? notes,
  }) = _CreatePayableRequest;

  factory CreatePayableRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePayableRequestFromJson(json);
}

@freezed
sealed class UpdatePayableRequest with _$UpdatePayableRequest {
  const factory UpdatePayableRequest({
    String? invoiceNumber,
    String? invoiceDate,
    String? dueDate,
    double? amount,
    String? currency,
    double? exchangeRate,
    String? paymentTerms,
    String? notes,
  }) = _UpdatePayableRequest;

  factory UpdatePayableRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdatePayableRequestFromJson(json);
}

@freezed
sealed class PayPayableRequest with _$PayPayableRequest {
  const factory PayPayableRequest({
    required String paymentDate,
    required double amount,
    required String paymentMethod,
    String? referenceNumber,
    String? bankAccountId,
    String? notes,
  }) = _PayPayableRequest;

  factory PayPayableRequest.fromJson(Map<String, dynamic> json) =>
      _$PayPayableRequestFromJson(json);
}

@freezed
sealed class PayableQuery with _$PayableQuery {
  const factory PayableQuery({
    String? supplierId,
    String? status,
    String? fromDate,
    String? toDate,
    bool? overdue,
  }) = _PayableQuery;

  factory PayableQuery.fromJson(Map<String, dynamic> json) =>
      _$PayableQueryFromJson(json);
}

// ============ ACCOUNTS RECEIVABLE ============

@freezed
sealed class Receivable with _$Receivable {
  const factory Receivable({
    required String id,
    required String tenantId,
    required String customerId,
    String? invoiceId,
    required String invoiceNumber,
    required String invoiceDate,
    required String dueDate,
    required double amount,
    required double paidAmount,
    required double remainingAmount,
    required String currency,
    double? exchangeRate,
    required String status,
    String? paymentTerms,
    String? notes,
    required DateTime insertedAt,
    required DateTime updatedAt,
  }) = _Receivable;

  factory Receivable.fromJson(Map<String, dynamic> json) =>
      _$ReceivableFromJson(json);
}

@freezed
sealed class CreateReceivableRequest with _$CreateReceivableRequest {
  const factory CreateReceivableRequest({
    required String customerId,
    String? invoiceId,
    required String invoiceNumber,
    required String invoiceDate,
    required String dueDate,
    required double amount,
    String? currency,
    double? exchangeRate,
    String? paymentTerms,
    String? notes,
  }) = _CreateReceivableRequest;

  factory CreateReceivableRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateReceivableRequestFromJson(json);
}

@freezed
sealed class UpdateReceivableRequest with _$UpdateReceivableRequest {
  const factory UpdateReceivableRequest({
    String? invoiceNumber,
    String? invoiceDate,
    String? dueDate,
    double? amount,
    String? currency,
    double? exchangeRate,
    String? paymentTerms,
    String? notes,
  }) = _UpdateReceivableRequest;

  factory UpdateReceivableRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateReceivableRequestFromJson(json);
}

@freezed
sealed class ReceivePaymentRequest with _$ReceivePaymentRequest {
  const factory ReceivePaymentRequest({
    required String paymentDate,
    required double amount,
    required String paymentMethod,
    String? referenceNumber,
    String? bankAccountId,
    String? notes,
  }) = _ReceivePaymentRequest;

  factory ReceivePaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$ReceivePaymentRequestFromJson(json);
}

@freezed
sealed class ReceivableQuery with _$ReceivableQuery {
  const factory ReceivableQuery({
    String? customerId,
    String? status,
    String? fromDate,
    String? toDate,
    bool? overdue,
  }) = _ReceivableQuery;

  factory ReceivableQuery.fromJson(Map<String, dynamic> json) =>
      _$ReceivableQueryFromJson(json);
}

// ============ BANK ACCOUNTS ============

@freezed
sealed class BankAccount with _$BankAccount {
  const factory BankAccount({
    required String id,
    required String tenantId,
    required String accountId,
    required String bankName,
    required String accountNumber,
    String? iban,
    String? swiftCode,
    required String currency,
    required double currentBalance,
    required double bookBalance,
    required bool isActive,
    required DateTime insertedAt,
    required DateTime updatedAt,
  }) = _BankAccount;

  factory BankAccount.fromJson(Map<String, dynamic> json) =>
      _$BankAccountFromJson(json);
}

@freezed
sealed class CreateBankAccountRequest with _$CreateBankAccountRequest {
  const factory CreateBankAccountRequest({
    required String accountId,
    required String bankName,
    required String accountNumber,
    String? iban,
    String? swiftCode,
    required String currency,
    double? currentBalance,
  }) = _CreateBankAccountRequest;

  factory CreateBankAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateBankAccountRequestFromJson(json);
}

@freezed
sealed class UpdateBankAccountRequest with _$UpdateBankAccountRequest {
  const factory UpdateBankAccountRequest({
    String? bankName,
    String? accountNumber,
    String? iban,
    String? swiftCode,
    double? currentBalance,
    bool? isActive,
  }) = _UpdateBankAccountRequest;

  factory UpdateBankAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateBankAccountRequestFromJson(json);
}

// ============ COST CENTERS ============

@freezed
sealed class CostCenter with _$CostCenter {
  const factory CostCenter({
    required String id,
    required String tenantId,
    required String code,
    required String name,
    String? parentCostCenterId,
    required int level,
    required bool isActive,
    required DateTime insertedAt,
    required DateTime updatedAt,
  }) = _CostCenter;

  factory CostCenter.fromJson(Map<String, dynamic> json) =>
      _$CostCenterFromJson(json);
}

@freezed
sealed class CreateCostCenterRequest with _$CreateCostCenterRequest {
  const factory CreateCostCenterRequest({
    required String code,
    required String name,
    String? parentCostCenterId,
  }) = _CreateCostCenterRequest;

  factory CreateCostCenterRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateCostCenterRequestFromJson(json);
}

@freezed
sealed class UpdateCostCenterRequest with _$UpdateCostCenterRequest {
  const factory UpdateCostCenterRequest({
    String? code,
    String? name,
    String? parentCostCenterId,
    bool? isActive,
  }) = _UpdateCostCenterRequest;

  factory UpdateCostCenterRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateCostCenterRequestFromJson(json);
}

// ============ FIXED ASSETS ============

@freezed
sealed class FixedAssetAccount with _$FixedAssetAccount {
  const factory FixedAssetAccount({
    required String id,
    required String tenantId,
    required String assetId,
    required String assetAccountId,
    required String depreciationAccountId,
    required String expenseAccountId,
    required double acquisitionCost,
    double? residualValue,
    required int usefulLifeMonths,
    required String depreciationMethod,
    required String depreciationStartDate,
    String? lastDepreciationDate,
    required double accumulatedDepreciation,
    required double bookValue,
    required String status,
    String? disposalDate,
    double? disposalAmount,
    String? disposalJournalEntryId,
    required DateTime insertedAt,
    required DateTime updatedAt,
  }) = _FixedAssetAccount;

  factory FixedAssetAccount.fromJson(Map<String, dynamic> json) =>
      _$FixedAssetAccountFromJson(json);
}

@freezed
sealed class CreateFixedAssetAccountRequest
    with _$CreateFixedAssetAccountRequest {
  const factory CreateFixedAssetAccountRequest({
    required String assetId,
    required String assetAccountId,
    required String depreciationAccountId,
    required String expenseAccountId,
    required double acquisitionCost,
    double? residualValue,
    required int usefulLifeMonths,
    required String depreciationMethod,
    required String depreciationStartDate,
  }) = _CreateFixedAssetAccountRequest;

  factory CreateFixedAssetAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateFixedAssetAccountRequestFromJson(json);
}

@freezed
sealed class UpdateFixedAssetAccountRequest
    with _$UpdateFixedAssetAccountRequest {
  const factory UpdateFixedAssetAccountRequest({
    String? assetAccountId,
    String? depreciationAccountId,
    String? expenseAccountId,
    double? residualValue,
    int? usefulLifeMonths,
    String? depreciationMethod,
  }) = _UpdateFixedAssetAccountRequest;

  factory UpdateFixedAssetAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateFixedAssetAccountRequestFromJson(json);
}

@freezed
sealed class DepreciateAssetRequest with _$DepreciateAssetRequest {
  const factory DepreciateAssetRequest({
    String? asOfDate,
  }) = _DepreciateAssetRequest;

  factory DepreciateAssetRequest.fromJson(Map<String, dynamic> json) =>
      _$DepreciateAssetRequestFromJson(json);
}

// ============ FINANCIAL REPORTS ============

@freezed
sealed class TrialBalanceEntry with _$TrialBalanceEntry {
  const factory TrialBalanceEntry({
    required String accountId,
    required String accountCode,
    required String accountName,
    required String accountType,
    required int level,
    required bool isGroup,
    required double debitBalance,
    required double creditBalance,
  }) = _TrialBalanceEntry;

  factory TrialBalanceEntry.fromJson(Map<String, dynamic> json) =>
      _$TrialBalanceEntryFromJson(json);
}

@freezed
sealed class TrialBalance with _$TrialBalance {
  const factory TrialBalance({
    required String period,
    required String asOfDate,
    required List<TrialBalanceEntry> entries,
    required double totalDebits,
    required double totalCredits,
    required bool isBalanced,
  }) = _TrialBalance;

  factory TrialBalance.fromJson(Map<String, dynamic> json) =>
      _$TrialBalanceFromJson(json);
}

@freezed
sealed class LedgerEntry with _$LedgerEntry {
  const factory LedgerEntry({
    required String entryId,
    required String entryNumber,
    required String entryDate,
    required String description,
    required double debit,
    required double credit,
    required double balance,
    String? reference,
  }) = _LedgerEntry;

  factory LedgerEntry.fromJson(Map<String, dynamic> json) =>
      _$LedgerEntryFromJson(json);
}

@freezed
sealed class AccountLedger with _$AccountLedger {
  const factory AccountLedger({
    required String accountId,
    required String accountCode,
    required String accountName,
    required double openingBalance,
    required List<LedgerEntry> entries,
    required double closingBalance,
    required double totalDebits,
    required double totalCredits,
  }) = _AccountLedger;

  factory AccountLedger.fromJson(Map<String, dynamic> json) =>
      _$AccountLedgerFromJson(json);
}

@freezed
sealed class FinancialReportLine with _$FinancialReportLine {
  const factory FinancialReportLine({
    String? accountId,
    String? code,
    required String name,
    required int level,
    required bool isGroup,
    required double amount,
    double? previousAmount,
    double? percentChange,
  }) = _FinancialReportLine;

  factory FinancialReportLine.fromJson(Map<String, dynamic> json) =>
      _$FinancialReportLineFromJson(json);
}

@freezed
sealed class IncomeStatement with _$IncomeStatement {
  const factory IncomeStatement({
    required String startDate,
    required String endDate,
    required List<FinancialReportLine> revenue,
    required List<FinancialReportLine> costOfGoodsSold,
    required double grossProfit,
    required List<FinancialReportLine> operatingExpenses,
    required double operatingIncome,
    required List<FinancialReportLine> otherIncomeExpenses,
    required double incomeBeforeTax,
    required double taxExpense,
    required double netIncome,
  }) = _IncomeStatement;

  factory IncomeStatement.fromJson(Map<String, dynamic> json) =>
      _$IncomeStatementFromJson(json);
}

@freezed
sealed class BalanceSheetAssets with _$BalanceSheetAssets {
  const factory BalanceSheetAssets({
    required List<FinancialReportLine> currentAssets,
    required double totalCurrentAssets,
    required List<FinancialReportLine> fixedAssets,
    required double totalFixedAssets,
    required List<FinancialReportLine> otherAssets,
    required double totalOtherAssets,
    required double totalAssets,
  }) = _BalanceSheetAssets;

  factory BalanceSheetAssets.fromJson(Map<String, dynamic> json) =>
      _$BalanceSheetAssetsFromJson(json);
}

@freezed
sealed class BalanceSheetLiabilities with _$BalanceSheetLiabilities {
  const factory BalanceSheetLiabilities({
    required List<FinancialReportLine> currentLiabilities,
    required double totalCurrentLiabilities,
    required List<FinancialReportLine> longTermLiabilities,
    required double totalLongTermLiabilities,
    required double totalLiabilities,
  }) = _BalanceSheetLiabilities;

  factory BalanceSheetLiabilities.fromJson(Map<String, dynamic> json) =>
      _$BalanceSheetLiabilitiesFromJson(json);
}

@freezed
sealed class BalanceSheetEquity with _$BalanceSheetEquity {
  const factory BalanceSheetEquity({
    required List<FinancialReportLine> items,
    required double totalEquity,
  }) = _BalanceSheetEquity;

  factory BalanceSheetEquity.fromJson(Map<String, dynamic> json) =>
      _$BalanceSheetEquityFromJson(json);
}

@freezed
sealed class BalanceSheet with _$BalanceSheet {
  const factory BalanceSheet({
    required String asOfDate,
    required BalanceSheetAssets assets,
    required BalanceSheetLiabilities liabilities,
    required BalanceSheetEquity equity,
    required double totalLiabilitiesAndEquity,
  }) = _BalanceSheet;

  factory BalanceSheet.fromJson(Map<String, dynamic> json) =>
      _$BalanceSheetFromJson(json);
}
