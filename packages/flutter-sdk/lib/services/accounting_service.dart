import 'package:prodobit_flutter_sdk/core/api_client.dart';
import 'package:prodobit_flutter_sdk/models/accounting/accounting_models.dart';

/// Service for accounting operations
class AccountingService {
  const AccountingService(this._apiClient);

  final ApiClient _apiClient;

  // ========== SETTINGS ==========

  /// Get accounting settings
  Future<AccountingSettings> getSettings() async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/accounting/settings',
    );
    return AccountingSettings.fromJson(response);
  }

  /// Update accounting settings
  Future<AccountingSettings> updateSettings(
    UpdateAccountingSettingsRequest request,
  ) async {
    final response = await _apiClient.patch<Map<String, dynamic>>(
      '/api/v1/accounting/settings',
      data: request.toJson(),
    );
    return AccountingSettings.fromJson(response);
  }

  /// Initialize chart of accounts from template
  Future<void> initializeFromTemplate(String templateCode) async {
    await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/accounting/accounts/initialize',
      data: {'templateCode': templateCode},
    );
  }

  // ========== CHART OF ACCOUNTS ==========

  /// Get all accounts
  Future<List<Account>> getAccounts([AccountQuery? query]) async {
    final response = await _apiClient.get<List<dynamic>>(
      '/api/v1/accounting/accounts',
      queryParameters: query?.toJson(),
    );
    return response.map((e) => Account.fromJson(e as Map<String, dynamic>)).toList();
  }

  /// Get accounts as tree structure
  Future<List<Account>> getAccountsTree() async {
    final response = await _apiClient.get<List<dynamic>>(
      '/api/v1/accounting/accounts/tree',
    );
    return response.map((e) => Account.fromJson(e as Map<String, dynamic>)).toList();
  }

  /// Get account by ID
  Future<Account> getAccount(String id) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/accounting/accounts/$id',
    );
    return Account.fromJson(response);
  }

  /// Create new account
  Future<Account> createAccount(CreateAccountRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/accounting/accounts',
      data: request.toJson(),
    );
    return Account.fromJson(response);
  }

  /// Update account
  Future<Account> updateAccount(String id, UpdateAccountRequest request) async {
    final response = await _apiClient.patch<Map<String, dynamic>>(
      '/api/v1/accounting/accounts/$id',
      data: request.toJson(),
    );
    return Account.fromJson(response);
  }

  /// Delete account
  Future<void> deleteAccount(String id) async {
    await _apiClient.delete('/api/v1/accounting/accounts/$id');
  }

  // ========== JOURNAL ENTRIES ==========

  /// Get all journal entries
  Future<List<JournalEntry>> getJournalEntries([JournalEntryQuery? query]) async {
    final response = await _apiClient.get<List<dynamic>>(
      '/api/v1/accounting/journal-entries',
      queryParameters: query?.toJson(),
    );
    return response.map((e) => JournalEntry.fromJson(e as Map<String, dynamic>)).toList();
  }

  /// Get journal entry by ID
  Future<JournalEntry> getJournalEntry(String id) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/accounting/journal-entries/$id',
    );
    return JournalEntry.fromJson(response);
  }

  /// Create new journal entry
  Future<JournalEntry> createJournalEntry(CreateJournalEntryRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/accounting/journal-entries',
      data: request.toJson(),
    );
    return JournalEntry.fromJson(response);
  }

  /// Update journal entry
  Future<JournalEntry> updateJournalEntry(
    String id,
    UpdateJournalEntryRequest request,
  ) async {
    final response = await _apiClient.patch<Map<String, dynamic>>(
      '/api/v1/accounting/journal-entries/$id',
      data: request.toJson(),
    );
    return JournalEntry.fromJson(response);
  }

  /// Post journal entry
  Future<JournalEntry> postJournalEntry(
    String id, [
    PostJournalEntryRequest? request,
  ]) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/accounting/journal-entries/$id/post',
      data: request?.toJson(),
    );
    return JournalEntry.fromJson(response);
  }

  /// Reverse journal entry
  Future<JournalEntry> reverseJournalEntry(
    String id,
    ReverseJournalEntryRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/accounting/journal-entries/$id/reverse',
      data: request.toJson(),
    );
    return JournalEntry.fromJson(response);
  }

  /// Delete journal entry
  Future<void> deleteJournalEntry(String id) async {
    await _apiClient.delete('/api/v1/accounting/journal-entries/$id');
  }

  // ========== LEDGER & REPORTS ==========

  /// Get account ledger
  Future<AccountLedger> getAccountLedger(
    String accountId,
    String startDate,
    String endDate,
  ) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/accounting/ledger/$accountId',
      queryParameters: {
        'startDate': startDate,
        'endDate': endDate,
      },
    );
    return AccountLedger.fromJson(response);
  }

  /// Get trial balance
  Future<TrialBalance> getTrialBalance(String asOfDate) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/accounting/reports/trial-balance',
      queryParameters: {'asOfDate': asOfDate},
    );
    return TrialBalance.fromJson(response);
  }

  /// Get income statement
  Future<IncomeStatement> getIncomeStatement(
    String startDate,
    String endDate,
  ) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/accounting/reports/income-statement',
      queryParameters: {
        'startDate': startDate,
        'endDate': endDate,
      },
    );
    return IncomeStatement.fromJson(response);
  }

  /// Get balance sheet
  Future<BalanceSheet> getBalanceSheet(String asOfDate) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/accounting/reports/balance-sheet',
      queryParameters: {'asOfDate': asOfDate},
    );
    return BalanceSheet.fromJson(response);
  }

  // ========== FISCAL YEARS & PERIODS ==========

  /// Get all fiscal years
  Future<List<FiscalYear>> getFiscalYears() async {
    final response = await _apiClient.get<List<dynamic>>(
      '/api/v1/accounting/fiscal-years',
    );
    return response.map((e) => FiscalYear.fromJson(e as Map<String, dynamic>)).toList();
  }

  /// Get fiscal year by ID
  Future<FiscalYear> getFiscalYear(String id) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/accounting/fiscal-years/$id',
    );
    return FiscalYear.fromJson(response);
  }

  /// Create fiscal year
  Future<FiscalYear> createFiscalYear(CreateFiscalYearRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/accounting/fiscal-years',
      data: request.toJson(),
    );
    return FiscalYear.fromJson(response);
  }

  /// Get all fiscal periods
  Future<List<FiscalPeriod>> getFiscalPeriods([String? fiscalYearId]) async {
    final response = await _apiClient.get<List<dynamic>>(
      '/api/v1/accounting/fiscal-periods',
      queryParameters: fiscalYearId != null ? {'fiscalYearId': fiscalYearId} : null,
    );
    return response.map((e) => FiscalPeriod.fromJson(e as Map<String, dynamic>)).toList();
  }

  /// Create fiscal period
  Future<FiscalPeriod> createFiscalPeriod(CreateFiscalPeriodRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/accounting/fiscal-periods',
      data: request.toJson(),
    );
    return FiscalPeriod.fromJson(response);
  }

  /// Close fiscal period
  Future<FiscalPeriod> closeFiscalPeriod(String id, [Map<String, dynamic>? data]) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/accounting/fiscal-periods/$id/close',
      data: data,
    );
    return FiscalPeriod.fromJson(response);
  }

  /// Reopen fiscal period
  Future<FiscalPeriod> reopenFiscalPeriod(String id) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/accounting/fiscal-periods/$id/reopen',
    );
    return FiscalPeriod.fromJson(response);
  }

  // ========== TAX RATES ==========

  /// Get all tax rates
  Future<List<TaxRate>> getTaxRates() async {
    final response = await _apiClient.get<List<dynamic>>(
      '/api/v1/accounting/tax-rates',
    );
    return response.map((e) => TaxRate.fromJson(e as Map<String, dynamic>)).toList();
  }

  /// Get tax rate by ID
  Future<TaxRate> getTaxRate(String id) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/accounting/tax-rates/$id',
    );
    return TaxRate.fromJson(response);
  }

  /// Create tax rate
  Future<TaxRate> createTaxRate(CreateTaxRateRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/accounting/tax-rates',
      data: request.toJson(),
    );
    return TaxRate.fromJson(response);
  }

  /// Update tax rate
  Future<TaxRate> updateTaxRate(String id, UpdateTaxRateRequest request) async {
    final response = await _apiClient.patch<Map<String, dynamic>>(
      '/api/v1/accounting/tax-rates/$id',
      data: request.toJson(),
    );
    return TaxRate.fromJson(response);
  }

  /// Delete tax rate
  Future<void> deleteTaxRate(String id) async {
    await _apiClient.delete('/api/v1/accounting/tax-rates/$id');
  }

  // ========== ACCOUNTS PAYABLE ==========

  /// Get all payables
  Future<List<Payable>> getPayables([PayableQuery? query]) async {
    final response = await _apiClient.get<List<dynamic>>(
      '/api/v1/accounting/payables',
      queryParameters: query?.toJson(),
    );
    return response.map((e) => Payable.fromJson(e as Map<String, dynamic>)).toList();
  }

  /// Get payable by ID
  Future<Payable> getPayable(String id) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/accounting/payables/$id',
    );
    return Payable.fromJson(response);
  }

  /// Create payable
  Future<Payable> createPayable(CreatePayableRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/accounting/payables',
      data: request.toJson(),
    );
    return Payable.fromJson(response);
  }

  /// Update payable
  Future<Payable> updatePayable(String id, UpdatePayableRequest request) async {
    final response = await _apiClient.patch<Map<String, dynamic>>(
      '/api/v1/accounting/payables/$id',
      data: request.toJson(),
    );
    return Payable.fromJson(response);
  }

  /// Pay payable
  Future<Payable> payPayable(String id, PayPayableRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/accounting/payables/$id/pay',
      data: request.toJson(),
    );
    return Payable.fromJson(response);
  }

  /// Delete payable
  Future<void> deletePayable(String id) async {
    await _apiClient.delete('/api/v1/accounting/payables/$id');
  }

  // ========== ACCOUNTS RECEIVABLE ==========

  /// Get all receivables
  Future<List<Receivable>> getReceivables([ReceivableQuery? query]) async {
    final response = await _apiClient.get<List<dynamic>>(
      '/api/v1/accounting/receivables',
      queryParameters: query?.toJson(),
    );
    return response.map((e) => Receivable.fromJson(e as Map<String, dynamic>)).toList();
  }

  /// Get receivable by ID
  Future<Receivable> getReceivable(String id) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/accounting/receivables/$id',
    );
    return Receivable.fromJson(response);
  }

  /// Create receivable
  Future<Receivable> createReceivable(CreateReceivableRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/accounting/receivables',
      data: request.toJson(),
    );
    return Receivable.fromJson(response);
  }

  /// Update receivable
  Future<Receivable> updateReceivable(
    String id,
    UpdateReceivableRequest request,
  ) async {
    final response = await _apiClient.patch<Map<String, dynamic>>(
      '/api/v1/accounting/receivables/$id',
      data: request.toJson(),
    );
    return Receivable.fromJson(response);
  }

  /// Receive payment
  Future<Receivable> receivePayment(
    String id,
    ReceivePaymentRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/accounting/receivables/$id/receive',
      data: request.toJson(),
    );
    return Receivable.fromJson(response);
  }

  /// Delete receivable
  Future<void> deleteReceivable(String id) async {
    await _apiClient.delete('/api/v1/accounting/receivables/$id');
  }

  // ========== BANK ACCOUNTS ==========

  /// Get all bank accounts
  Future<List<BankAccount>> getBankAccounts() async {
    final response = await _apiClient.get<List<dynamic>>(
      '/api/v1/accounting/bank-accounts',
    );
    return response.map((e) => BankAccount.fromJson(e as Map<String, dynamic>)).toList();
  }

  /// Get bank account by ID
  Future<BankAccount> getBankAccount(String id) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/accounting/bank-accounts/$id',
    );
    return BankAccount.fromJson(response);
  }

  /// Create bank account
  Future<BankAccount> createBankAccount(CreateBankAccountRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/accounting/bank-accounts',
      data: request.toJson(),
    );
    return BankAccount.fromJson(response);
  }

  /// Update bank account
  Future<BankAccount> updateBankAccount(
    String id,
    UpdateBankAccountRequest request,
  ) async {
    final response = await _apiClient.patch<Map<String, dynamic>>(
      '/api/v1/accounting/bank-accounts/$id',
      data: request.toJson(),
    );
    return BankAccount.fromJson(response);
  }

  /// Delete bank account
  Future<void> deleteBankAccount(String id) async {
    await _apiClient.delete('/api/v1/accounting/bank-accounts/$id');
  }

  // ========== COST CENTERS ==========

  /// Get all cost centers
  Future<List<CostCenter>> getCostCenters() async {
    final response = await _apiClient.get<List<dynamic>>(
      '/api/v1/accounting/cost-centers',
    );
    return response.map((e) => CostCenter.fromJson(e as Map<String, dynamic>)).toList();
  }

  /// Get cost center by ID
  Future<CostCenter> getCostCenter(String id) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/accounting/cost-centers/$id',
    );
    return CostCenter.fromJson(response);
  }

  /// Create cost center
  Future<CostCenter> createCostCenter(CreateCostCenterRequest request) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/accounting/cost-centers',
      data: request.toJson(),
    );
    return CostCenter.fromJson(response);
  }

  /// Update cost center
  Future<CostCenter> updateCostCenter(
    String id,
    UpdateCostCenterRequest request,
  ) async {
    final response = await _apiClient.patch<Map<String, dynamic>>(
      '/api/v1/accounting/cost-centers/$id',
      data: request.toJson(),
    );
    return CostCenter.fromJson(response);
  }

  /// Delete cost center
  Future<void> deleteCostCenter(String id) async {
    await _apiClient.delete('/api/v1/accounting/cost-centers/$id');
  }

  // ========== FIXED ASSETS ==========

  /// Get all fixed assets
  Future<List<FixedAssetAccount>> getFixedAssets() async {
    final response = await _apiClient.get<List<dynamic>>(
      '/api/v1/accounting/fixed-assets',
    );
    return response.map((e) => FixedAssetAccount.fromJson(e as Map<String, dynamic>)).toList();
  }

  /// Get fixed asset by ID
  Future<FixedAssetAccount> getFixedAsset(String id) async {
    final response = await _apiClient.get<Map<String, dynamic>>(
      '/api/v1/accounting/fixed-assets/$id',
    );
    return FixedAssetAccount.fromJson(response);
  }

  /// Create fixed asset
  Future<FixedAssetAccount> createFixedAsset(
    CreateFixedAssetAccountRequest request,
  ) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/accounting/fixed-assets',
      data: request.toJson(),
    );
    return FixedAssetAccount.fromJson(response);
  }

  /// Update fixed asset
  Future<FixedAssetAccount> updateFixedAsset(
    String id,
    UpdateFixedAssetAccountRequest request,
  ) async {
    final response = await _apiClient.patch<Map<String, dynamic>>(
      '/api/v1/accounting/fixed-assets/$id',
      data: request.toJson(),
    );
    return FixedAssetAccount.fromJson(response);
  }

  /// Run depreciation on fixed asset
  Future<FixedAssetAccount> depreciateAsset(
    String id, [
    DepreciateAssetRequest? request,
  ]) async {
    final response = await _apiClient.post<Map<String, dynamic>>(
      '/api/v1/accounting/fixed-assets/$id/depreciate',
      data: request?.toJson(),
    );
    return FixedAssetAccount.fromJson(response);
  }

  /// Delete fixed asset
  Future<void> deleteFixedAsset(String id) async {
    await _apiClient.delete('/api/v1/accounting/fixed-assets/$id');
  }
}
