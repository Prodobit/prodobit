# Accounting Modülü - Detaylı Kapsam ve Gereksinimler

> **Modül**: Accounting & Finance
> **Öncelik**: 🔴 Critical
> **Tahmini Süre**: 12 hafta
> **Versiyon**: 1.0 (MVP)

---

## 📋 Executive Summary

Accounting modülü, Prodobit platformunun **finansal kalbi** olacak. Tüm iş modülleri (Sales, Purchase, Inventory, Payroll) bu modüle finansal transaction'ları kaydedecek. Modül, Türkiye muhasebe standartlarına ve vergi mevzuatına uyumlu olacak.

**Ana Hedef**: KOBIDEN büyük şirketlere kadar kullanılabilir, ancak karmaşık holding muhasebesi kapsam dışı.

---

## ✅ KAPSAM İÇİ - MVP (v1.0)

### 1. Chart of Accounts (Hesap Planı)

**Özellikler**:
- ✅ Türk Tekdüzen Hesap Planı (TDHP) desteği
- ✅ Özelleştirilebilir hesap planı
- ✅ Hierarchical account structure (ana hesap → alt hesap)
- ✅ Account types: Asset, Liability, Equity, Revenue, Expense
- ✅ Account status: Active, Inactive, Archived
- ✅ Account attributes: Bank account, Cash account, Reconcilable
- ✅ Multi-level hierarchy (max 6 level önerilir)
- ✅ Account import/export (Excel)

**Database Schema**:
```typescript
accounts {
  id: uuid
  tenantId: uuid
  code: string          // "100.01.001" format
  name: string
  nameEn?: string       // International support
  parentAccountId?: uuid
  accountType: enum     // asset, liability, equity, revenue, expense
  level: integer        // 1-6
  isGroup: boolean      // Group account vs detail account
  isActive: boolean
  currency: string      // TRY, USD, EUR

  // Attributes
  isBankAccount: boolean
  isCashAccount: boolean
  isReconcilable: boolean
  requiresCostCenter: boolean
  requiresProject: boolean

  // Tax
  defaultTaxRateId?: uuid

  // Metadata
  description?: text
  notes?: text
  insertedAt: timestamp
  updatedAt: timestamp
  deletedAt?: timestamp
}

// Relations
account_hierarchy {
  accountId: uuid
  ancestorId: uuid
  depth: integer
}
```

**Tekdüzen Hesap Planı Seed Data**:
```typescript
// Örnek hesaplar
100 - KASa
100.01 - Merkez Kasası
100.01.001 - TL Kasası
100.01.002 - USD Kasası

102 - Bankalar
102.01 - İş Bankası
102.01.001 - İş Bankası TL Hesabı

120 - Alıcılar (Ticari Alacaklar)
320 - Satıcılar (Ticari Borçlar)
600 - Yurtiçi Satışlar
621 - Satılan Ticari Mallar Maliyeti
```

---

### 2. Journal Entries (Yevmiye Kayıtları)

**Özellikler**:
- ✅ Manual journal entries
- ✅ Automated journal entries (from sales, purchase, payroll)
- ✅ Multi-line entries (debit/credit)
- ✅ Entry validation (debit = credit)
- ✅ Entry reversals (Ters kayıt)
- ✅ Entry status: Draft, Posted, Reversed
- ✅ Entry approval workflow (optional)
- ✅ Batch entry creation
- ✅ Recurring journal entries (monthly depreciation, etc.)
- ✅ Foreign currency entries
- ✅ Exchange rate tracking
- ✅ Entry attachments (invoices, receipts)

**Database Schema**:
```typescript
journal_entries {
  id: uuid
  tenantId: uuid
  entryNumber: string       // "JE-2025-00001"
  entryDate: date
  postingDate: date

  reference?: string        // External reference
  description: text

  status: enum              // draft, posted, reversed
  entryType: enum           // manual, automated, reversal, recurring
  sourceModule?: string     // sales, purchase, payroll, inventory
  sourceDocumentId?: uuid   // salesOrderId, invoiceId, etc.

  // Totals
  debitTotal: decimal
  creditTotal: decimal
  currency: string

  // Reversal
  reversedEntryId?: uuid
  reversalReason?: text

  // Recurring
  isRecurring: boolean
  recurringScheduleId?: uuid

  // Approval
  approvalStatus?: enum     // pending, approved, rejected
  approvedBy?: uuid
  approvedAt?: timestamp

  // Audit
  createdBy: uuid
  insertedAt: timestamp
  updatedAt: timestamp
  deletedAt?: timestamp
}

journal_entry_lines {
  id: uuid
  journalEntryId: uuid
  lineNumber: integer

  accountId: uuid
  debit: decimal
  credit: decimal

  description?: text

  // Dimensions
  costCenterId?: uuid
  projectId?: uuid
  departmentId?: uuid

  // Currency
  currency: string
  exchangeRate?: decimal

  // Reconciliation
  isReconciled: boolean
  reconciledAt?: timestamp

  insertedAt: timestamp
  updatedAt: timestamp
}

// Recurring Entries
recurring_journal_entries {
  id: uuid
  tenantId: uuid
  name: string
  description?: text

  frequency: enum           // monthly, quarterly, yearly
  startDate: date
  endDate?: date
  nextRunDate: date

  templateData: jsonb       // Journal entry template

  isActive: boolean
  lastRunAt?: timestamp
}

// Attachments
journal_entry_attachments {
  id: uuid
  journalEntryId: uuid
  fileId: uuid              // Reference to media module
  description?: text
  uploadedAt: timestamp
}
```

**Business Rules**:
```typescript
// Validation rules
1. Debit total MUST equal Credit total
2. At least 2 lines required (1 debit, 1 credit)
3. Posted entries cannot be edited (only reversed)
4. Entry date cannot be in closed fiscal period
5. Foreign currency entries must have exchange rate
```

---

### 3. General Ledger (Genel Muhasebe Defteri)

**Özellikler**:
- ✅ Account balances (opening, debits, credits, closing)
- ✅ Period-based balances (monthly, quarterly, yearly)
- ✅ Trial balance report
- ✅ Account ledger (hesap ekstresi)
- ✅ Account balance history
- ✅ Multi-currency support
- ✅ Comparative period analysis

**Database Schema**:
```typescript
account_balances {
  id: uuid
  tenantId: uuid
  accountId: uuid
  fiscalPeriodId: uuid

  openingBalance: decimal
  debitTotal: decimal
  creditTotal: decimal
  closingBalance: decimal

  currency: string

  calculatedAt: timestamp
  insertedAt: timestamp
  updatedAt: timestamp
}

// Denormalized for performance
account_balance_summary {
  tenantId: uuid
  accountId: uuid
  year: integer
  month: integer

  openingBalance: decimal
  debitTotal: decimal
  creditTotal: decimal
  closingBalance: decimal

  PRIMARY KEY (tenantId, accountId, year, month)
}
```

**API Endpoints**:
```typescript
GET    /api/v1/accounting/ledger/:accountId
GET    /api/v1/accounting/trial-balance?period=2025-01
GET    /api/v1/accounting/account-balances/:accountId/history
POST   /api/v1/accounting/recalculate-balances
```

---

### 4. Accounts Payable (Borç Hesapları)

**Özellikler**:
- ✅ Supplier invoice management
- ✅ Payment terms tracking
- ✅ Due date tracking
- ✅ Aging report (30/60/90/90+ days)
- ✅ Payment scheduling
- ✅ Partial payments
- ✅ Payment history
- ✅ Vendor statement

**Database Schema**:
```typescript
payables {
  id: uuid
  tenantId: uuid
  supplierId: uuid
  invoiceId?: uuid          // Link to purchase invoice

  invoiceNumber: string
  invoiceDate: date
  dueDate: date

  amount: decimal
  paidAmount: decimal
  remainingAmount: decimal

  currency: string
  exchangeRate?: decimal

  status: enum              // unpaid, partial, paid, overdue

  paymentTerms?: string

  insertedAt: timestamp
  updatedAt: timestamp
}

payable_payments {
  id: uuid
  payableId: uuid

  paymentDate: date
  amount: decimal

  paymentMethod: enum       // bank_transfer, cash, check, credit_card
  referenceNumber?: string

  bankAccountId?: uuid

  journalEntryId?: uuid     // Auto-created JE

  notes?: text
  createdBy: uuid
  insertedAt: timestamp
}
```

**Reports**:
```typescript
// Accounts Payable Aging
┌─────────────┬──────────┬──────────┬──────────┬──────────┬───────────┐
│ Supplier    │ Current  │ 1-30 days│ 31-60    │ 61-90    │ 90+ days  │
├─────────────┼──────────┼──────────┼──────────┼──────────┼───────────┤
│ Supplier A  │ 10,000   │ 5,000    │ 2,000    │ 0        │ 1,000     │
│ Supplier B  │ 15,000   │ 0        │ 0        │ 0        │ 0         │
└─────────────┴──────────┴──────────┴──────────┴──────────┴───────────┘
```

---

### 5. Accounts Receivable (Alacak Hesapları)

**Özellikler**:
- ✅ Customer invoice management
- ✅ Payment tracking
- ✅ Aging report
- ✅ Collection management
- ✅ Customer statement
- ✅ Credit limit tracking
- ✅ Overdue notifications

**Database Schema**:
```typescript
receivables {
  id: uuid
  tenantId: uuid
  customerId: uuid
  invoiceId?: uuid          // Link to sales invoice

  invoiceNumber: string
  invoiceDate: date
  dueDate: date

  amount: decimal
  paidAmount: decimal
  remainingAmount: decimal

  currency: string
  status: enum              // unpaid, partial, paid, overdue, written_off

  insertedAt: timestamp
  updatedAt: timestamp
}

receivable_payments {
  id: uuid
  receivableId: uuid

  paymentDate: date
  amount: decimal

  paymentMethod: enum
  referenceNumber?: string

  bankAccountId?: uuid
  journalEntryId?: uuid

  createdBy: uuid
  insertedAt: timestamp
}

customer_credit_limits {
  id: uuid
  tenantId: uuid
  customerId: uuid

  creditLimit: decimal
  currentBalance: decimal
  availableCredit: decimal

  updatedAt: timestamp
}
```

---

### 6. Fiscal Periods (Mali Dönemler)

**Özellikler**:
- ✅ Fiscal year definition
- ✅ Period management (monthly/quarterly)
- ✅ Period opening/closing
- ✅ Period lock (prevent changes)
- ✅ Period adjustments
- ✅ Year-end closing

**Database Schema**:
```typescript
fiscal_years {
  id: uuid
  tenantId: uuid

  year: integer
  startDate: date
  endDate: date

  status: enum              // active, closed
  closedAt?: timestamp
  closedBy?: uuid

  insertedAt: timestamp
}

fiscal_periods {
  id: uuid
  fiscalYearId: uuid
  tenantId: uuid

  periodNumber: integer     // 1-12 for months
  periodType: enum          // monthly, quarterly

  startDate: date
  endDate: date

  status: enum              // open, closed, locked

  closedAt?: timestamp
  closedBy?: uuid
  lockedAt?: timestamp

  insertedAt: timestamp
}
```

**Business Rules**:
```typescript
1. Cannot post entries to closed periods
2. Cannot delete fiscal year if it has posted entries
3. Must close periods in sequence (cannot close Dec before Nov)
4. Year-end closing creates opening balance entries for next year
```

---

### 7. Tax Management (Vergi Yönetimi)

**Özellikler**:
- ✅ Tax rate definitions (KDV: %1, %10, %20)
- ✅ Tax categories (KDV, ÖTV, Stopaj)
- ✅ Tax calculation rules
- ✅ Tax reports
- ✅ Withholding tax (Stopaj) calculation
- ✅ VAT declaration support

**Database Schema**:
```typescript
tax_rates {
  id: uuid
  tenantId: uuid

  code: string              // "KDV20", "KDV10", "KDV1"
  name: string              // "KDV %20"
  taxType: enum             // vat, withholding, special_consumption

  rate: decimal             // 20.00, 10.00, 1.00

  // Accounting
  taxAccountId: uuid        // 391.01 - Hesaplanan KDV

  validFrom: date
  validTo?: date

  isDefault: boolean
  isActive: boolean

  insertedAt: timestamp
  updatedAt: timestamp
}

tax_transactions {
  id: uuid
  tenantId: uuid

  transactionDate: date
  documentType: enum        // sales_invoice, purchase_invoice
  documentId: uuid

  taxRateId: uuid
  taxableAmount: decimal
  taxAmount: decimal

  journalEntryLineId?: uuid

  insertedAt: timestamp
}
```

**Türkiye-Specific Tax Rates**:
```typescript
// KDV Oranları (2025)
- %20: Genel oran
- %10: Gıda, kitap, eğitim
- %1: Temel gıda, tarım
- %0: İhracat, transit ticaret

// Stopaj Oranları
- %20: Kira geliri
- %15: Menkul sermaye iradı
- %10: Ücret (bazı istisnalar)
```

---

### 8. Bank Reconciliation (Banka Mutabakatı)

**Özellikler**:
- ✅ Bank account management
- ✅ Bank statement import (Excel, CSV)
- ✅ Transaction matching (automatic + manual)
- ✅ Unreconciled items tracking
- ✅ Reconciliation reports
- ✅ Bank fees recording

**Database Schema**:
```typescript
bank_accounts {
  id: uuid
  tenantId: uuid

  accountId: uuid           // Link to GL account (102.01.001)

  bankName: string
  accountNumber: string
  iban?: string
  swiftCode?: string

  currency: string

  currentBalance: decimal
  bookBalance: decimal      // Balance as per books

  isActive: boolean

  insertedAt: timestamp
  updatedAt: timestamp
}

bank_statements {
  id: uuid
  bankAccountId: uuid

  statementDate: date
  statementNumber?: string

  openingBalance: decimal
  closingBalance: decimal

  status: enum              // imported, reconciled

  importedAt: timestamp
  reconciledAt?: timestamp
  reconciledBy?: uuid
}

bank_statement_lines {
  id: uuid
  bankStatementId: uuid

  transactionDate: date
  description: text

  debit?: decimal
  credit?: decimal
  balance: decimal

  referenceNumber?: string

  // Matching
  isReconciled: boolean
  matchedJournalEntryLineId?: uuid
  reconciledAt?: timestamp

  insertedAt: timestamp
}

bank_reconciliations {
  id: uuid
  bankAccountId: uuid

  reconciliationDate: date

  bookBalance: decimal
  bankBalance: decimal

  // Adjustments
  unreconciledDeposits: decimal
  unreconciledWithdrawals: decimal
  bankCharges: decimal

  finalBalance: decimal

  notes?: text

  reconciledBy: uuid
  reconciledAt: timestamp
}
```

**Reconciliation Logic**:
```typescript
Adjusted Book Balance =
  Book Balance
  + Deposits in transit (not yet in bank)
  - Outstanding checks (not yet cleared)
  - Bank charges not recorded

Should equal: Bank Statement Balance
```

---

### 9. Financial Reports (Mali Raporlar)

**Özellikler**:
- ✅ Income Statement (Gelir Tablosu)
- ✅ Balance Sheet (Bilanço)
- ✅ Cash Flow Statement (Nakit Akış Tablosu)
- ✅ Trial Balance (Mizan)
- ✅ Profit & Loss by Period
- ✅ Comparative statements (YoY, MoM)
- ✅ Export to Excel/PDF

**Report Formats**:

#### Income Statement (Gelir Tablosu)
```
ABC Şirketi
Gelir Tablosu
Dönem: 01.01.2025 - 31.12.2025

Net Satışlar                        1,000,000 TL
  - Satışların Maliyeti              (600,000)
──────────────────────────────────────────────
Brüt Kar                              400,000

Faaliyet Giderleri
  Pazarlama Giderleri                 (50,000)
  Genel Yönetim Giderleri             (80,000)
  Ar-Ge Giderleri                     (30,000)
──────────────────────────────────────────────
Faaliyet Karı                         240,000

Finansman Giderleri                   (20,000)
──────────────────────────────────────────────
Vergi Öncesi Kar                      220,000

Kurumlar Vergisi (%25)                (55,000)
──────────────────────────────────────────────
Net Dönem Karı                        165,000
══════════════════════════════════════════════
```

#### Balance Sheet (Bilanço)
```
ABC Şirketi
Bilanço
Tarih: 31.12.2025

AKTİFLER
  Dönen Varlıklar
    Kasa                               10,000
    Bankalar                          200,000
    Ticari Alacaklar                  150,000
    Stoklar                           300,000
  ────────────────────────────────────────
  Toplam Dönen Varlıklar              660,000

  Duran Varlıklar
    Maddi Duran Varlıklar             500,000
    Birikmiş Amortisman              (100,000)
  ────────────────────────────────────────
  Toplam Duran Varlıklar              400,000
────────────────────────────────────────────
TOPLAM AKTİFLER                     1,060,000
════════════════════════════════════════════

PASİFLER
  Kısa Vadeli Yükümlülükler
    Ticari Borçlar                    120,000
    Ödenecek Vergiler                  55,000
  ────────────────────────────────────────
  Toplam KV Yükümlülükler             175,000

  Özkaynaklar
    Sermaye                           500,000
    Geçmiş Yıl Karları                220,000
    Dönem Net Karı                    165,000
  ────────────────────────────────────────
  Toplam Özkaynaklar                  885,000
────────────────────────────────────────────
TOPLAM PASİFLER                     1,060,000
════════════════════════════════════════════
```

**API Endpoints**:
```typescript
GET /api/v1/accounting/reports/income-statement
  ?startDate=2025-01-01
  &endDate=2025-12-31
  &format=json|pdf|excel

GET /api/v1/accounting/reports/balance-sheet
  ?asOfDate=2025-12-31
  &comparative=true  // Shows previous period

GET /api/v1/accounting/reports/cash-flow
  ?startDate=2025-01-01
  &endDate=2025-12-31
  &method=direct|indirect

GET /api/v1/accounting/reports/trial-balance
  ?period=2025-01
```

---

### 10. Cost Centers (Masraf Merkezleri) - OPTIONAL MVP

**Özellikler**:
- ✅ Cost center definitions
- ✅ Hierarchical cost centers (Company → Department → Team)
- ✅ Cost allocation
- ✅ Cost center reports
- ✅ Budget vs Actual

**Database Schema**:
```typescript
cost_centers {
  id: uuid
  tenantId: uuid

  code: string              // "CC-100"
  name: string              // "Satış Departmanı"

  parentCostCenterId?: uuid
  level: integer

  isActive: boolean

  insertedAt: timestamp
  updatedAt: timestamp
}

// Already in journal_entry_lines
journal_entry_lines {
  ...
  costCenterId?: uuid       // Optional dimension
  ...
}
```

---

## 🚫 KAPSAM DIŞI - MVP (v1.0)

Bu özellikler **gelecek versiyonlarda** eklenecek:

### 1. ❌ Fixed Assets & Depreciation
**Neden**: Karmaşık, ayrı modül gerektirir
- Asset register
- Depreciation calculation
- Asset disposal
- Revaluation

**Alternatif**: Manuel amortisman journal entry'leri

---

### 2. ❌ Budget Management
**Neden**: Reporting modülü ile birlikte daha mantıklı
- Budget creation
- Budget approval
- Budget vs Actual analysis
- Variance analysis

**Alternatif**: Excel ile budget takibi

---

### 3. ❌ Advanced Consolidation
**Neden**: Holding yapısı için çok karmaşık
- Multi-company consolidation
- Intercompany eliminations
- Minority interest
- Goodwill

**Alternatif**: Single company accounting

---

### 4. ❌ Advanced Multi-Currency
**Neden**: Forex accounting çok karmaşık
- Unrealized gain/loss
- Revaluation
- Hedge accounting
- Forward contracts

**MVP'de**: Basic multi-currency (transaction level)

---

### 5. ❌ Project Accounting
**Neden**: Ayrı proje yönetimi modülü gerekli
- Project costing
- WIP (Work in Progress)
- Project budgets
- Project profitability

**Alternatif**: Cost center kullanımı

---

### 6. ❌ Advanced Inventory Costing
**Neden**: Inventory modülü kapsamında
- Standard costing
- Moving average
- Inventory revaluation

**MVP'de**: Inventory module handles this

---

### 7. ❌ Payroll Accounting
**Neden**: HR modülü ile birlikte gelecek
- Payroll journal entries integration
- Employee expense allocation
- Benefits accounting

**MVP'de**: Manuel journal entries

---

### 8. ❌ Advanced Tax Features
**Neden**: v2.0'da eklenecek
- Deferred tax
- Tax provisions
- Advanced transfer pricing
- Tax optimization

**MVP'de**: Basic KDV, Stopaj

---

## 🔗 Integration Points

### Sales Module → Accounting
```typescript
// When sales invoice is created/posted
async function onSalesInvoicePosted(invoice: SalesInvoice) {
  await createJournalEntry({
    entryType: 'automated',
    sourceModule: 'sales',
    sourceDocumentId: invoice.id,
    lines: [
      // Debit: Accounts Receivable
      {
        accountCode: '120.01.001',
        debit: invoice.totalAmount,
        description: `Sales invoice ${invoice.invoiceNumber}`
      },
      // Credit: Sales Revenue
      {
        accountCode: '600.01.001',
        credit: invoice.subtotal,
        description: `Sales revenue - ${invoice.customerName}`
      },
      // Credit: VAT Payable
      {
        accountCode: '391.01.001',
        credit: invoice.taxAmount,
        description: `KDV ${invoice.taxRate}%`
      }
    ]
  });
}
```

### Purchase Module → Accounting
```typescript
// When purchase invoice is received
async function onPurchaseInvoiceReceived(invoice: PurchaseInvoice) {
  await createJournalEntry({
    sourceModule: 'purchase',
    lines: [
      // Debit: Purchases / Inventory
      {
        accountCode: '153.01.001', // or 621.01
        debit: invoice.subtotal
      },
      // Debit: VAT Recoverable
      {
        accountCode: '191.01.001',
        debit: invoice.taxAmount
      },
      // Credit: Accounts Payable
      {
        accountCode: '320.01.001',
        credit: invoice.totalAmount
      }
    ]
  });
}
```

### Inventory Module → Accounting
```typescript
// When goods are received
async function onGoodsReceipt(receipt: GoodsReceipt) {
  await createJournalEntry({
    sourceModule: 'inventory',
    lines: [
      // Debit: Inventory
      {
        accountCode: '153.01.001',
        debit: receipt.totalCost
      },
      // Credit: GRN Clearing / Payables
      {
        accountCode: '320.99.001',
        credit: receipt.totalCost
      }
    ]
  });
}

// When goods are issued
async function onGoodsIssue(issue: StockTransaction) {
  await createJournalEntry({
    sourceModule: 'inventory',
    lines: [
      // Debit: Cost of Goods Sold
      {
        accountCode: '621.01.001',
        debit: issue.cost
      },
      // Credit: Inventory
      {
        accountCode: '153.01.001',
        credit: issue.cost
      }
    ]
  });
}
```

### Payment Processing
```typescript
// When payment is made
async function onPaymentMade(payment: Payment) {
  await createJournalEntry({
    sourceModule: 'payments',
    lines: [
      // Debit: Accounts Payable
      {
        accountCode: '320.01.001',
        debit: payment.amount
      },
      // Credit: Bank
      {
        accountCode: '102.01.001',
        credit: payment.amount
      }
    ]
  });
}

// When payment is received
async function onPaymentReceived(payment: Payment) {
  await createJournalEntry({
    lines: [
      // Debit: Bank
      {
        accountCode: '102.01.001',
        debit: payment.amount
      },
      // Credit: Accounts Receivable
      {
        accountCode: '120.01.001',
        credit: payment.amount
      }
    ]
  });
}
```

---

## 🇹🇷 Türkiye-Specific Requirements

### 1. Chart of Accounts
- ✅ Türk Tekdüzen Hesap Planı support
- ✅ Standard account codes (100-900)

### 2. Tax Compliance
- ✅ KDV (VAT) rates: %1, %10, %20
- ✅ KDV declaration format
- ✅ Stopaj (Withholding tax) calculation
- ✅ ÖTV (Special Consumption Tax) support

### 3. e-Defter (e-Ledger) - v2.0
**Kapsam dışı** (MVP)
- XML export for GİB
- Digital signature
- e-Defter submission

### 4. Financial Reporting
- ✅ Turkish GAAP format
- ✅ Bilanço format
- ✅ Gelir Tablosu format

### 5. Fiscal Period
- ✅ Calendar year (01 Ocak - 31 Aralık)
- ✅ 12 monthly periods

---

## 🏗️ Architecture & Design

### Service Layer
```typescript
// packages/server/src/modules/accounting/

├── manifest.ts
├── routes.ts
├── service.ts
├── schemas/
│   ├── account.ts
│   ├── journal-entry.ts
│   ├── ledger.ts
│   └── reports.ts
├── services/
│   ├── account.service.ts
│   ├── journal-entry.service.ts
│   ├── ledger.service.ts
│   ├── payables.service.ts
│   ├── receivables.service.ts
│   ├── bank-reconciliation.service.ts
│   └── reports.service.ts
├── utils/
│   ├── posting.ts           // Journal entry posting logic
│   ├── balance-calculator.ts
│   ├── period-validator.ts
│   └── chart-of-accounts-seed.ts
└── __tests__/
    ├── journal-entry.test.ts
    ├── ledger.test.ts
    └── reports.test.ts
```

### API Design
```typescript
// Account Management
GET    /api/v1/accounting/accounts
POST   /api/v1/accounting/accounts
GET    /api/v1/accounting/accounts/:id
PUT    /api/v1/accounting/accounts/:id
DELETE /api/v1/accounting/accounts/:id
GET    /api/v1/accounting/accounts/hierarchy

// Journal Entries
GET    /api/v1/accounting/journal-entries
POST   /api/v1/accounting/journal-entries
GET    /api/v1/accounting/journal-entries/:id
PUT    /api/v1/accounting/journal-entries/:id
POST   /api/v1/accounting/journal-entries/:id/post
POST   /api/v1/accounting/journal-entries/:id/reverse
DELETE /api/v1/accounting/journal-entries/:id

// Ledger
GET    /api/v1/accounting/ledger/:accountId
GET    /api/v1/accounting/trial-balance
GET    /api/v1/accounting/account-balances

// Payables
GET    /api/v1/accounting/payables
GET    /api/v1/accounting/payables/:id
POST   /api/v1/accounting/payables/:id/payment
GET    /api/v1/accounting/payables/aging

// Receivables
GET    /api/v1/accounting/receivables
GET    /api/v1/accounting/receivables/:id
POST   /api/v1/accounting/receivables/:id/payment
GET    /api/v1/accounting/receivables/aging

// Bank Reconciliation
GET    /api/v1/accounting/bank-accounts
POST   /api/v1/accounting/bank-statements/import
GET    /api/v1/accounting/bank-reconciliation/:bankAccountId
POST   /api/v1/accounting/bank-reconciliation/:id/match

// Reports
GET    /api/v1/accounting/reports/income-statement
GET    /api/v1/accounting/reports/balance-sheet
GET    /api/v1/accounting/reports/cash-flow
GET    /api/v1/accounting/reports/trial-balance

// Fiscal Periods
GET    /api/v1/accounting/fiscal-years
POST   /api/v1/accounting/fiscal-years
POST   /api/v1/accounting/fiscal-periods/:id/close
POST   /api/v1/accounting/fiscal-periods/:id/reopen
```

---

## 📋 Development Roadmap

### Phase 1: Foundation (Week 1-3)
- [ ] Database schema design
- [ ] Account management (CRUD)
- [ ] Chart of Accounts seed data
- [ ] Basic validation rules
- [ ] Unit tests

### Phase 2: Core Accounting (Week 4-6)
- [ ] Journal entry creation
- [ ] Journal entry posting
- [ ] Journal entry reversal
- [ ] General ledger calculation
- [ ] Trial balance report
- [ ] Integration tests

### Phase 3: Payables & Receivables (Week 7-8)
- [ ] Payables management
- [ ] Receivables management
- [ ] Payment processing
- [ ] Aging reports
- [ ] Customer/Supplier statements

### Phase 4: Bank & Tax (Week 9-10)
- [ ] Bank account management
- [ ] Bank reconciliation
- [ ] Tax rate management
- [ ] Tax calculation
- [ ] Tax reports

### Phase 5: Financial Reports (Week 11)
- [ ] Income Statement
- [ ] Balance Sheet
- [ ] Cash Flow Statement (basic)
- [ ] Export functionality (Excel, PDF)

### Phase 6: Integration & Testing (Week 12)
- [ ] Sales → Accounting integration
- [ ] Purchase → Accounting integration
- [ ] End-to-end tests
- [ ] Performance optimization
- [ ] Documentation

---

## ✅ Success Criteria

MVP will be considered successful when:

1. ✅ Users can maintain chart of accounts
2. ✅ System automatically creates journal entries from sales/purchase
3. ✅ Manual journal entries can be created
4. ✅ Trial balance is always balanced
5. ✅ Income statement and balance sheet are accurate
6. ✅ Payables and receivables are tracked correctly
7. ✅ Bank reconciliation can be performed
8. ✅ Tax calculations are correct (KDV)
9. ✅ All financial reports can be exported
10. ✅ Integration with Sales and Purchase modules works seamlessly

---

## 🎯 Performance Targets

- Journal entry posting: < 500ms
- Trial balance generation: < 2s (for 10,000 accounts)
- Financial report generation: < 5s
- Account balance calculation: < 1s
- API response time (P95): < 300ms

---

## 📖 Documentation Requirements

- [ ] User manual (Turkish)
- [ ] API documentation (OpenAPI)
- [ ] Integration guide for other modules
- [ ] Chart of Accounts reference
- [ ] Tax configuration guide
- [ ] Troubleshooting guide

---

## 🔐 Security & Compliance

- [ ] Role-based access (Accountant, Finance Manager, CFO)
- [ ] Audit trail for all changes
- [ ] Period lock enforcement
- [ ] Data encryption at rest
- [ ] GDPR compliance (data retention policies)
- [ ] Türkiye tax law compliance

---

## 💡 Öneriler

1. **İlk başta basit, sonra genişlet**: MVP'de karmaşık özellikleri eklemeyin
2. **Automated testing critical**: Accounting hatası kabul edilemez
3. **Integration test'ler önemli**: Diğer modüllerle entegrasyon sorunsuz olmalı
4. **Performance önemli**: Binlerce journal entry ile de hızlı çalışmalı
5. **User feedback**: Muhasebecilerle test edin, feedback alın

---

## 📞 Sorular ve Destek

Accounting modülü geliştirmesi konusunda sorularınız için:
- GitHub Discussions: https://github.com/prodobit/prodobit/discussions
- Issues: https://github.com/prodobit/prodobit/issues
