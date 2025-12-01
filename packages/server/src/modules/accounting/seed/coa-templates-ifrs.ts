/**
 * IFRS Chart of Accounts Template
 */

import type { CoaTemplate } from "./coa-templates";

export const IFRS_TEMPLATE: CoaTemplate = {
  code: "IFRS",
  name: "International Financial Reporting Standards",
  country: null,
  description: "Standard chart of accounts following IFRS guidelines",
  accounts: [
    // ═══════════════════════════════════════════════════════════════════════════
    // 1 - ASSETS
    // ═══════════════════════════════════════════════════════════════════════════
    { code: "1", name: "ASSETS", nameEn: "Assets", accountType: "asset", parentCode: null, level: 1, isGroup: true, reportCategory: "current_assets" },

    // 10 - Non-Current Assets
    { code: "10", name: "NON-CURRENT ASSETS", nameEn: "Non-Current Assets", accountType: "asset", parentCode: "1", level: 2, isGroup: true, reportCategory: "fixed_assets" },

    // 100 - Property, Plant and Equipment
    { code: "100", name: "PROPERTY, PLANT AND EQUIPMENT", nameEn: "Property, Plant and Equipment", accountType: "asset", parentCode: "10", level: 3, isGroup: true, reportCategory: "fixed_assets" },
    { code: "1000", name: "Land", nameEn: "Land", accountType: "asset", parentCode: "100", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1001", name: "Buildings", nameEn: "Buildings", accountType: "asset", parentCode: "100", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1002", name: "Plant and Machinery", nameEn: "Plant and Machinery", accountType: "asset", parentCode: "100", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1003", name: "Motor Vehicles", nameEn: "Motor Vehicles", accountType: "asset", parentCode: "100", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1004", name: "Furniture, Fixtures and Equipment", nameEn: "Furniture, Fixtures and Equipment", accountType: "asset", parentCode: "100", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1005", name: "Office Equipment", nameEn: "Office Equipment", accountType: "asset", parentCode: "100", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1006", name: "Computer Equipment", nameEn: "Computer Equipment", accountType: "asset", parentCode: "100", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1007", name: "Leasehold Improvements", nameEn: "Leasehold Improvements", accountType: "asset", parentCode: "100", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1008", name: "Assets Under Construction", nameEn: "Assets Under Construction", accountType: "asset", parentCode: "100", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1009", name: "Accumulated Depreciation - PPE", nameEn: "Accumulated Depreciation - PPE", accountType: "asset", parentCode: "100", level: 4, isGroup: false, reportCategory: "fixed_assets" },

    // 101 - Investment Property
    { code: "101", name: "INVESTMENT PROPERTY", nameEn: "Investment Property", accountType: "asset", parentCode: "10", level: 3, isGroup: true, reportCategory: "fixed_assets" },
    { code: "1010", name: "Investment Property at Cost", nameEn: "Investment Property at Cost", accountType: "asset", parentCode: "101", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1011", name: "Investment Property at Fair Value", nameEn: "Investment Property at Fair Value", accountType: "asset", parentCode: "101", level: 4, isGroup: false, reportCategory: "fixed_assets" },

    // 102 - Intangible Assets
    { code: "102", name: "INTANGIBLE ASSETS", nameEn: "Intangible Assets", accountType: "asset", parentCode: "10", level: 3, isGroup: true, reportCategory: "intangible_assets" },
    { code: "1020", name: "Goodwill", nameEn: "Goodwill", accountType: "asset", parentCode: "102", level: 4, isGroup: false, reportCategory: "intangible_assets" },
    { code: "1021", name: "Development Costs", nameEn: "Development Costs", accountType: "asset", parentCode: "102", level: 4, isGroup: false, reportCategory: "intangible_assets" },
    { code: "1022", name: "Computer Software", nameEn: "Computer Software", accountType: "asset", parentCode: "102", level: 4, isGroup: false, reportCategory: "intangible_assets" },
    { code: "1023", name: "Patents and Licences", nameEn: "Patents and Licences", accountType: "asset", parentCode: "102", level: 4, isGroup: false, reportCategory: "intangible_assets" },
    { code: "1024", name: "Trademarks and Brands", nameEn: "Trademarks and Brands", accountType: "asset", parentCode: "102", level: 4, isGroup: false, reportCategory: "intangible_assets" },
    { code: "1025", name: "Customer Relationships", nameEn: "Customer Relationships", accountType: "asset", parentCode: "102", level: 4, isGroup: false, reportCategory: "intangible_assets" },
    { code: "1029", name: "Accumulated Amortisation - Intangibles", nameEn: "Accumulated Amortisation - Intangibles", accountType: "asset", parentCode: "102", level: 4, isGroup: false, reportCategory: "intangible_assets" },

    // 103 - Right-of-Use Assets (IFRS 16)
    { code: "103", name: "RIGHT-OF-USE ASSETS", nameEn: "Right-of-Use Assets", accountType: "asset", parentCode: "10", level: 3, isGroup: true, reportCategory: "fixed_assets" },
    { code: "1030", name: "Right-of-Use Assets - Property", nameEn: "Right-of-Use Assets - Property", accountType: "asset", parentCode: "103", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1031", name: "Right-of-Use Assets - Vehicles", nameEn: "Right-of-Use Assets - Vehicles", accountType: "asset", parentCode: "103", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1032", name: "Right-of-Use Assets - Equipment", nameEn: "Right-of-Use Assets - Equipment", accountType: "asset", parentCode: "103", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1039", name: "Accumulated Depreciation - ROU Assets", nameEn: "Accumulated Depreciation - ROU Assets", accountType: "asset", parentCode: "103", level: 4, isGroup: false, reportCategory: "fixed_assets" },

    // 104 - Financial Assets
    { code: "104", name: "FINANCIAL ASSETS (NON-CURRENT)", nameEn: "Financial Assets (Non-Current)", accountType: "asset", parentCode: "10", level: 3, isGroup: true, reportCategory: "fixed_assets" },
    { code: "1040", name: "Investments in Subsidiaries", nameEn: "Investments in Subsidiaries", accountType: "asset", parentCode: "104", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1041", name: "Investments in Associates", nameEn: "Investments in Associates", accountType: "asset", parentCode: "104", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1042", name: "Investments in Joint Ventures", nameEn: "Investments in Joint Ventures", accountType: "asset", parentCode: "104", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1043", name: "Financial Assets at FVOCI", nameEn: "Financial Assets at FVOCI", accountType: "asset", parentCode: "104", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1044", name: "Financial Assets at Amortised Cost", nameEn: "Financial Assets at Amortised Cost", accountType: "asset", parentCode: "104", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1045", name: "Derivative Financial Instruments", nameEn: "Derivative Financial Instruments", accountType: "asset", parentCode: "104", level: 4, isGroup: false, reportCategory: "fixed_assets" },

    // 105 - Other Non-Current Assets
    { code: "105", name: "OTHER NON-CURRENT ASSETS", nameEn: "Other Non-Current Assets", accountType: "asset", parentCode: "10", level: 3, isGroup: true, reportCategory: "fixed_assets" },
    { code: "1050", name: "Deferred Tax Assets", nameEn: "Deferred Tax Assets", accountType: "asset", parentCode: "105", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1051", name: "Long-term Receivables", nameEn: "Long-term Receivables", accountType: "asset", parentCode: "105", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1052", name: "Prepayments (Non-Current)", nameEn: "Prepayments (Non-Current)", accountType: "asset", parentCode: "105", level: 4, isGroup: false, reportCategory: "fixed_assets" },

    // 11 - Current Assets
    { code: "11", name: "CURRENT ASSETS", nameEn: "Current Assets", accountType: "asset", parentCode: "1", level: 2, isGroup: true, reportCategory: "current_assets" },

    // 110 - Inventories
    { code: "110", name: "INVENTORIES", nameEn: "Inventories", accountType: "asset", parentCode: "11", level: 3, isGroup: true, reportCategory: "current_assets" },
    { code: "1100", name: "Raw Materials", nameEn: "Raw Materials", accountType: "asset", parentCode: "110", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1101", name: "Work in Progress", nameEn: "Work in Progress", accountType: "asset", parentCode: "110", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1102", name: "Finished Goods", nameEn: "Finished Goods", accountType: "asset", parentCode: "110", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1103", name: "Goods for Resale", nameEn: "Goods for Resale", accountType: "asset", parentCode: "110", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1104", name: "Consumables and Supplies", nameEn: "Consumables and Supplies", accountType: "asset", parentCode: "110", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1109", name: "Provision for Inventory Obsolescence", nameEn: "Provision for Inventory Obsolescence", accountType: "asset", parentCode: "110", level: 4, isGroup: false, reportCategory: "current_assets" },

    // 111 - Trade and Other Receivables
    { code: "111", name: "TRADE AND OTHER RECEIVABLES", nameEn: "Trade and Other Receivables", accountType: "asset", parentCode: "11", level: 3, isGroup: true, reportCategory: "current_assets" },
    { code: "1110", name: "Trade Receivables", nameEn: "Trade Receivables", accountType: "asset", parentCode: "111", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1111", name: "Other Receivables", nameEn: "Other Receivables", accountType: "asset", parentCode: "111", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1112", name: "Receivables from Related Parties", nameEn: "Receivables from Related Parties", accountType: "asset", parentCode: "111", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1113", name: "Contract Assets", nameEn: "Contract Assets", accountType: "asset", parentCode: "111", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1119", name: "Expected Credit Loss Allowance", nameEn: "Expected Credit Loss Allowance", accountType: "asset", parentCode: "111", level: 4, isGroup: false, reportCategory: "current_assets" },

    // 112 - Current Tax Assets
    { code: "112", name: "CURRENT TAX ASSETS", nameEn: "Current Tax Assets", accountType: "asset", parentCode: "11", level: 3, isGroup: true, reportCategory: "current_assets" },
    { code: "1120", name: "Income Tax Receivable", nameEn: "Income Tax Receivable", accountType: "asset", parentCode: "112", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1121", name: "VAT Receivable", nameEn: "VAT Receivable", accountType: "asset", parentCode: "112", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1122", name: "Other Tax Receivables", nameEn: "Other Tax Receivables", accountType: "asset", parentCode: "112", level: 4, isGroup: false, reportCategory: "current_assets" },

    // 113 - Prepayments
    { code: "113", name: "PREPAYMENTS", nameEn: "Prepayments", accountType: "asset", parentCode: "11", level: 3, isGroup: true, reportCategory: "current_assets" },
    { code: "1130", name: "Prepaid Insurance", nameEn: "Prepaid Insurance", accountType: "asset", parentCode: "113", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1131", name: "Prepaid Rent", nameEn: "Prepaid Rent", accountType: "asset", parentCode: "113", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1132", name: "Advances to Suppliers", nameEn: "Advances to Suppliers", accountType: "asset", parentCode: "113", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1139", name: "Other Prepayments", nameEn: "Other Prepayments", accountType: "asset", parentCode: "113", level: 4, isGroup: false, reportCategory: "current_assets" },

    // 114 - Financial Assets (Current)
    { code: "114", name: "FINANCIAL ASSETS (CURRENT)", nameEn: "Financial Assets (Current)", accountType: "asset", parentCode: "11", level: 3, isGroup: true, reportCategory: "current_assets" },
    { code: "1140", name: "Financial Assets at FVTPL", nameEn: "Financial Assets at FVTPL", accountType: "asset", parentCode: "114", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1141", name: "Short-term Investments", nameEn: "Short-term Investments", accountType: "asset", parentCode: "114", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1142", name: "Derivative Financial Instruments (Current)", nameEn: "Derivative Financial Instruments (Current)", accountType: "asset", parentCode: "114", level: 4, isGroup: false, reportCategory: "current_assets" },

    // 115 - Cash and Cash Equivalents
    { code: "115", name: "CASH AND CASH EQUIVALENTS", nameEn: "Cash and Cash Equivalents", accountType: "asset", parentCode: "11", level: 3, isGroup: true, reportCategory: "current_assets" },
    { code: "1150", name: "Cash on Hand", nameEn: "Cash on Hand", accountType: "asset", parentCode: "115", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1151", name: "Bank Accounts", nameEn: "Bank Accounts", accountType: "asset", parentCode: "115", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1152", name: "Short-term Deposits", nameEn: "Short-term Deposits", accountType: "asset", parentCode: "115", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1153", name: "Cash Equivalents", nameEn: "Cash Equivalents", accountType: "asset", parentCode: "115", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1159", name: "Bank Overdrafts", nameEn: "Bank Overdrafts", accountType: "asset", parentCode: "115", level: 4, isGroup: false, reportCategory: "current_assets" },

    // ═══════════════════════════════════════════════════════════════════════════
    // 2 - EQUITY AND LIABILITIES
    // ═══════════════════════════════════════════════════════════════════════════
    { code: "2", name: "EQUITY AND LIABILITIES", nameEn: "Equity and Liabilities", accountType: "equity", parentCode: null, level: 1, isGroup: true, reportCategory: "equity" },

    // 20 - Equity
    { code: "20", name: "EQUITY", nameEn: "Equity", accountType: "equity", parentCode: "2", level: 2, isGroup: true, reportCategory: "equity" },

    // 200 - Share Capital
    { code: "200", name: "SHARE CAPITAL", nameEn: "Share Capital", accountType: "equity", parentCode: "20", level: 3, isGroup: true, reportCategory: "equity" },
    { code: "2000", name: "Ordinary Shares", nameEn: "Ordinary Shares", accountType: "equity", parentCode: "200", level: 4, isGroup: false, reportCategory: "equity" },
    { code: "2001", name: "Preference Shares", nameEn: "Preference Shares", accountType: "equity", parentCode: "200", level: 4, isGroup: false, reportCategory: "equity" },
    { code: "2002", name: "Share Premium", nameEn: "Share Premium", accountType: "equity", parentCode: "200", level: 4, isGroup: false, reportCategory: "equity" },
    { code: "2003", name: "Treasury Shares", nameEn: "Treasury Shares", accountType: "equity", parentCode: "200", level: 4, isGroup: false, reportCategory: "equity" },

    // 201 - Reserves
    { code: "201", name: "RESERVES", nameEn: "Reserves", accountType: "equity", parentCode: "20", level: 3, isGroup: true, reportCategory: "equity" },
    { code: "2010", name: "Revaluation Reserve", nameEn: "Revaluation Reserve", accountType: "equity", parentCode: "201", level: 4, isGroup: false, reportCategory: "equity" },
    { code: "2011", name: "Fair Value Reserve", nameEn: "Fair Value Reserve", accountType: "equity", parentCode: "201", level: 4, isGroup: false, reportCategory: "equity" },
    { code: "2012", name: "Hedging Reserve", nameEn: "Hedging Reserve", accountType: "equity", parentCode: "201", level: 4, isGroup: false, reportCategory: "equity" },
    { code: "2013", name: "Foreign Currency Translation Reserve", nameEn: "Foreign Currency Translation Reserve", accountType: "equity", parentCode: "201", level: 4, isGroup: false, reportCategory: "equity" },
    { code: "2014", name: "Legal Reserve", nameEn: "Legal Reserve", accountType: "equity", parentCode: "201", level: 4, isGroup: false, reportCategory: "equity" },
    { code: "2019", name: "Other Reserves", nameEn: "Other Reserves", accountType: "equity", parentCode: "201", level: 4, isGroup: false, reportCategory: "equity" },

    // 202 - Retained Earnings
    { code: "202", name: "RETAINED EARNINGS", nameEn: "Retained Earnings", accountType: "equity", parentCode: "20", level: 3, isGroup: true, reportCategory: "equity" },
    { code: "2020", name: "Retained Earnings - Opening Balance", nameEn: "Retained Earnings - Opening Balance", accountType: "equity", parentCode: "202", level: 4, isGroup: false, reportCategory: "equity" },
    { code: "2021", name: "Profit/Loss for the Year", nameEn: "Profit/Loss for the Year", accountType: "equity", parentCode: "202", level: 4, isGroup: false, reportCategory: "equity" },

    // 203 - Non-Controlling Interests
    { code: "203", name: "NON-CONTROLLING INTERESTS", nameEn: "Non-Controlling Interests", accountType: "equity", parentCode: "20", level: 3, isGroup: true, reportCategory: "equity" },
    { code: "2030", name: "Non-Controlling Interests", nameEn: "Non-Controlling Interests", accountType: "equity", parentCode: "203", level: 4, isGroup: false, reportCategory: "equity" },

    // 21 - Non-Current Liabilities
    { code: "21", name: "NON-CURRENT LIABILITIES", nameEn: "Non-Current Liabilities", accountType: "liability", parentCode: "2", level: 2, isGroup: true, reportCategory: "long_term_liabilities" },

    // 210 - Borrowings (Non-Current)
    { code: "210", name: "BORROWINGS (NON-CURRENT)", nameEn: "Borrowings (Non-Current)", accountType: "liability", parentCode: "21", level: 3, isGroup: true, reportCategory: "long_term_liabilities" },
    { code: "2100", name: "Bank Loans", nameEn: "Bank Loans", accountType: "liability", parentCode: "210", level: 4, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "2101", name: "Bonds Payable", nameEn: "Bonds Payable", accountType: "liability", parentCode: "210", level: 4, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "2102", name: "Finance Lease Liabilities", nameEn: "Finance Lease Liabilities", accountType: "liability", parentCode: "210", level: 4, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "2103", name: "Related Party Loans", nameEn: "Related Party Loans", accountType: "liability", parentCode: "210", level: 4, isGroup: false, reportCategory: "long_term_liabilities" },

    // 211 - Lease Liabilities (IFRS 16)
    { code: "211", name: "LEASE LIABILITIES (NON-CURRENT)", nameEn: "Lease Liabilities (Non-Current)", accountType: "liability", parentCode: "21", level: 3, isGroup: true, reportCategory: "long_term_liabilities" },
    { code: "2110", name: "Lease Liabilities - Property", nameEn: "Lease Liabilities - Property", accountType: "liability", parentCode: "211", level: 4, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "2111", name: "Lease Liabilities - Vehicles", nameEn: "Lease Liabilities - Vehicles", accountType: "liability", parentCode: "211", level: 4, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "2112", name: "Lease Liabilities - Equipment", nameEn: "Lease Liabilities - Equipment", accountType: "liability", parentCode: "211", level: 4, isGroup: false, reportCategory: "long_term_liabilities" },

    // 212 - Provisions (Non-Current)
    { code: "212", name: "PROVISIONS (NON-CURRENT)", nameEn: "Provisions (Non-Current)", accountType: "liability", parentCode: "21", level: 3, isGroup: true, reportCategory: "long_term_liabilities" },
    { code: "2120", name: "Provision for Decommissioning", nameEn: "Provision for Decommissioning", accountType: "liability", parentCode: "212", level: 4, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "2121", name: "Provision for Employee Benefits", nameEn: "Provision for Employee Benefits", accountType: "liability", parentCode: "212", level: 4, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "2129", name: "Other Non-Current Provisions", nameEn: "Other Non-Current Provisions", accountType: "liability", parentCode: "212", level: 4, isGroup: false, reportCategory: "long_term_liabilities" },

    // 213 - Deferred Tax Liabilities
    { code: "213", name: "DEFERRED TAX LIABILITIES", nameEn: "Deferred Tax Liabilities", accountType: "liability", parentCode: "21", level: 3, isGroup: true, reportCategory: "long_term_liabilities" },
    { code: "2130", name: "Deferred Tax Liabilities", nameEn: "Deferred Tax Liabilities", accountType: "liability", parentCode: "213", level: 4, isGroup: false, reportCategory: "long_term_liabilities" },

    // 214 - Other Non-Current Liabilities
    { code: "214", name: "OTHER NON-CURRENT LIABILITIES", nameEn: "Other Non-Current Liabilities", accountType: "liability", parentCode: "21", level: 3, isGroup: true, reportCategory: "long_term_liabilities" },
    { code: "2140", name: "Deferred Income (Non-Current)", nameEn: "Deferred Income (Non-Current)", accountType: "liability", parentCode: "214", level: 4, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "2141", name: "Government Grants (Non-Current)", nameEn: "Government Grants (Non-Current)", accountType: "liability", parentCode: "214", level: 4, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "2149", name: "Other Non-Current Liabilities", nameEn: "Other Non-Current Liabilities", accountType: "liability", parentCode: "214", level: 4, isGroup: false, reportCategory: "long_term_liabilities" },

    // 22 - Current Liabilities
    { code: "22", name: "CURRENT LIABILITIES", nameEn: "Current Liabilities", accountType: "liability", parentCode: "2", level: 2, isGroup: true, reportCategory: "current_liabilities" },

    // 220 - Trade and Other Payables
    { code: "220", name: "TRADE AND OTHER PAYABLES", nameEn: "Trade and Other Payables", accountType: "liability", parentCode: "22", level: 3, isGroup: true, reportCategory: "current_liabilities" },
    { code: "2200", name: "Trade Payables", nameEn: "Trade Payables", accountType: "liability", parentCode: "220", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2201", name: "Other Payables", nameEn: "Other Payables", accountType: "liability", parentCode: "220", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2202", name: "Payables to Related Parties", nameEn: "Payables to Related Parties", accountType: "liability", parentCode: "220", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2203", name: "Accrued Expenses", nameEn: "Accrued Expenses", accountType: "liability", parentCode: "220", level: 4, isGroup: false, reportCategory: "current_liabilities" },

    // 221 - Contract Liabilities
    { code: "221", name: "CONTRACT LIABILITIES", nameEn: "Contract Liabilities", accountType: "liability", parentCode: "22", level: 3, isGroup: true, reportCategory: "current_liabilities" },
    { code: "2210", name: "Advances from Customers", nameEn: "Advances from Customers", accountType: "liability", parentCode: "221", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2211", name: "Deferred Revenue", nameEn: "Deferred Revenue", accountType: "liability", parentCode: "221", level: 4, isGroup: false, reportCategory: "current_liabilities" },

    // 222 - Borrowings (Current)
    { code: "222", name: "BORROWINGS (CURRENT)", nameEn: "Borrowings (Current)", accountType: "liability", parentCode: "22", level: 3, isGroup: true, reportCategory: "current_liabilities" },
    { code: "2220", name: "Short-term Bank Loans", nameEn: "Short-term Bank Loans", accountType: "liability", parentCode: "222", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2221", name: "Current Portion of Long-term Borrowings", nameEn: "Current Portion of Long-term Borrowings", accountType: "liability", parentCode: "222", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2222", name: "Bank Overdrafts", nameEn: "Bank Overdrafts", accountType: "liability", parentCode: "222", level: 4, isGroup: false, reportCategory: "current_liabilities" },

    // 223 - Lease Liabilities (Current)
    { code: "223", name: "LEASE LIABILITIES (CURRENT)", nameEn: "Lease Liabilities (Current)", accountType: "liability", parentCode: "22", level: 3, isGroup: true, reportCategory: "current_liabilities" },
    { code: "2230", name: "Lease Liabilities - Current", nameEn: "Lease Liabilities - Current", accountType: "liability", parentCode: "223", level: 4, isGroup: false, reportCategory: "current_liabilities" },

    // 224 - Current Tax Liabilities
    { code: "224", name: "CURRENT TAX LIABILITIES", nameEn: "Current Tax Liabilities", accountType: "liability", parentCode: "22", level: 3, isGroup: true, reportCategory: "current_liabilities" },
    { code: "2240", name: "Income Tax Payable", nameEn: "Income Tax Payable", accountType: "liability", parentCode: "224", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2241", name: "VAT Payable", nameEn: "VAT Payable", accountType: "liability", parentCode: "224", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2242", name: "Withholding Tax Payable", nameEn: "Withholding Tax Payable", accountType: "liability", parentCode: "224", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2243", name: "Payroll Taxes Payable", nameEn: "Payroll Taxes Payable", accountType: "liability", parentCode: "224", level: 4, isGroup: false, reportCategory: "current_liabilities" },

    // 225 - Provisions (Current)
    { code: "225", name: "PROVISIONS (CURRENT)", nameEn: "Provisions (Current)", accountType: "liability", parentCode: "22", level: 3, isGroup: true, reportCategory: "current_liabilities" },
    { code: "2250", name: "Provision for Warranties", nameEn: "Provision for Warranties", accountType: "liability", parentCode: "225", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2251", name: "Provision for Restructuring", nameEn: "Provision for Restructuring", accountType: "liability", parentCode: "225", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2252", name: "Provision for Legal Claims", nameEn: "Provision for Legal Claims", accountType: "liability", parentCode: "225", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2259", name: "Other Current Provisions", nameEn: "Other Current Provisions", accountType: "liability", parentCode: "225", level: 4, isGroup: false, reportCategory: "current_liabilities" },

    // 226 - Employee Benefits
    { code: "226", name: "EMPLOYEE BENEFIT LIABILITIES", nameEn: "Employee Benefit Liabilities", accountType: "liability", parentCode: "22", level: 3, isGroup: true, reportCategory: "current_liabilities" },
    { code: "2260", name: "Salaries and Wages Payable", nameEn: "Salaries and Wages Payable", accountType: "liability", parentCode: "226", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2261", name: "Social Security Contributions Payable", nameEn: "Social Security Contributions Payable", accountType: "liability", parentCode: "226", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2262", name: "Employee Benefits Accrued", nameEn: "Employee Benefits Accrued", accountType: "liability", parentCode: "226", level: 4, isGroup: false, reportCategory: "current_liabilities" },

    // ═══════════════════════════════════════════════════════════════════════════
    // 3 - REVENUE
    // ═══════════════════════════════════════════════════════════════════════════
    { code: "3", name: "REVENUE", nameEn: "Revenue", accountType: "revenue", parentCode: null, level: 1, isGroup: true, reportCategory: "operating_revenue" },

    // 30 - Revenue from Contracts with Customers
    { code: "30", name: "REVENUE FROM CONTRACTS WITH CUSTOMERS", nameEn: "Revenue from Contracts with Customers", accountType: "revenue", parentCode: "3", level: 2, isGroup: true, reportCategory: "operating_revenue" },
    { code: "3000", name: "Revenue from Sale of Goods", nameEn: "Revenue from Sale of Goods", accountType: "revenue", parentCode: "30", level: 3, isGroup: false, reportCategory: "operating_revenue" },
    { code: "3001", name: "Revenue from Rendering of Services", nameEn: "Revenue from Rendering of Services", accountType: "revenue", parentCode: "30", level: 3, isGroup: false, reportCategory: "operating_revenue" },
    { code: "3002", name: "Revenue from Construction Contracts", nameEn: "Revenue from Construction Contracts", accountType: "revenue", parentCode: "30", level: 3, isGroup: false, reportCategory: "operating_revenue" },
    { code: "3003", name: "Royalty Revenue", nameEn: "Royalty Revenue", accountType: "revenue", parentCode: "30", level: 3, isGroup: false, reportCategory: "operating_revenue" },
    { code: "3009", name: "Other Revenue", nameEn: "Other Revenue", accountType: "revenue", parentCode: "30", level: 3, isGroup: false, reportCategory: "operating_revenue" },

    // 31 - Other Operating Income
    { code: "31", name: "OTHER OPERATING INCOME", nameEn: "Other Operating Income", accountType: "revenue", parentCode: "3", level: 2, isGroup: true, reportCategory: "other_revenue" },
    { code: "3100", name: "Rental Income", nameEn: "Rental Income", accountType: "revenue", parentCode: "31", level: 3, isGroup: false, reportCategory: "other_revenue" },
    { code: "3101", name: "Gain on Disposal of PPE", nameEn: "Gain on Disposal of PPE", accountType: "revenue", parentCode: "31", level: 3, isGroup: false, reportCategory: "other_revenue" },
    { code: "3102", name: "Government Grants", nameEn: "Government Grants", accountType: "revenue", parentCode: "31", level: 3, isGroup: false, reportCategory: "other_revenue" },
    { code: "3109", name: "Miscellaneous Operating Income", nameEn: "Miscellaneous Operating Income", accountType: "revenue", parentCode: "31", level: 3, isGroup: false, reportCategory: "other_revenue" },

    // 32 - Finance Income
    { code: "32", name: "FINANCE INCOME", nameEn: "Finance Income", accountType: "revenue", parentCode: "3", level: 2, isGroup: true, reportCategory: "other_revenue" },
    { code: "3200", name: "Interest Income", nameEn: "Interest Income", accountType: "revenue", parentCode: "32", level: 3, isGroup: false, reportCategory: "other_revenue" },
    { code: "3201", name: "Dividend Income", nameEn: "Dividend Income", accountType: "revenue", parentCode: "32", level: 3, isGroup: false, reportCategory: "other_revenue" },
    { code: "3202", name: "Gain on Financial Instruments", nameEn: "Gain on Financial Instruments", accountType: "revenue", parentCode: "32", level: 3, isGroup: false, reportCategory: "other_revenue" },
    { code: "3203", name: "Foreign Exchange Gain", nameEn: "Foreign Exchange Gain", accountType: "revenue", parentCode: "32", level: 3, isGroup: false, reportCategory: "other_revenue" },

    // 33 - Share of Profit of Associates
    { code: "33", name: "SHARE OF PROFIT OF ASSOCIATES", nameEn: "Share of Profit of Associates", accountType: "revenue", parentCode: "3", level: 2, isGroup: true, reportCategory: "other_revenue" },
    { code: "3300", name: "Share of Profit of Associates and JVs", nameEn: "Share of Profit of Associates and JVs", accountType: "revenue", parentCode: "33", level: 3, isGroup: false, reportCategory: "other_revenue" },

    // ═══════════════════════════════════════════════════════════════════════════
    // 4 - EXPENSES
    // ═══════════════════════════════════════════════════════════════════════════
    { code: "4", name: "EXPENSES", nameEn: "Expenses", accountType: "expense", parentCode: null, level: 1, isGroup: true, reportCategory: "operating_expenses" },

    // 40 - Cost of Sales
    { code: "40", name: "COST OF SALES", nameEn: "Cost of Sales", accountType: "expense", parentCode: "4", level: 2, isGroup: true, reportCategory: "cost_of_goods" },
    { code: "4000", name: "Cost of Goods Sold", nameEn: "Cost of Goods Sold", accountType: "expense", parentCode: "40", level: 3, isGroup: false, reportCategory: "cost_of_goods" },
    { code: "4001", name: "Cost of Services Rendered", nameEn: "Cost of Services Rendered", accountType: "expense", parentCode: "40", level: 3, isGroup: false, reportCategory: "cost_of_goods" },
    { code: "4002", name: "Direct Materials", nameEn: "Direct Materials", accountType: "expense", parentCode: "40", level: 3, isGroup: false, reportCategory: "cost_of_goods" },
    { code: "4003", name: "Direct Labour", nameEn: "Direct Labour", accountType: "expense", parentCode: "40", level: 3, isGroup: false, reportCategory: "cost_of_goods" },
    { code: "4004", name: "Manufacturing Overheads", nameEn: "Manufacturing Overheads", accountType: "expense", parentCode: "40", level: 3, isGroup: false, reportCategory: "cost_of_goods" },

    // 41 - Employee Benefits Expense
    { code: "41", name: "EMPLOYEE BENEFITS EXPENSE", nameEn: "Employee Benefits Expense", accountType: "expense", parentCode: "4", level: 2, isGroup: true, reportCategory: "operating_expenses" },
    { code: "4100", name: "Salaries and Wages", nameEn: "Salaries and Wages", accountType: "expense", parentCode: "41", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "4101", name: "Social Security Contributions", nameEn: "Social Security Contributions", accountType: "expense", parentCode: "41", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "4102", name: "Pension Costs", nameEn: "Pension Costs", accountType: "expense", parentCode: "41", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "4103", name: "Staff Benefits", nameEn: "Staff Benefits", accountType: "expense", parentCode: "41", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "4104", name: "Share-Based Payment Expense", nameEn: "Share-Based Payment Expense", accountType: "expense", parentCode: "41", level: 3, isGroup: false, reportCategory: "operating_expenses" },

    // 42 - Depreciation and Amortisation
    { code: "42", name: "DEPRECIATION AND AMORTISATION", nameEn: "Depreciation and Amortisation", accountType: "expense", parentCode: "4", level: 2, isGroup: true, reportCategory: "operating_expenses" },
    { code: "4200", name: "Depreciation - PPE", nameEn: "Depreciation - PPE", accountType: "expense", parentCode: "42", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "4201", name: "Depreciation - ROU Assets", nameEn: "Depreciation - ROU Assets", accountType: "expense", parentCode: "42", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "4202", name: "Amortisation - Intangibles", nameEn: "Amortisation - Intangibles", accountType: "expense", parentCode: "42", level: 3, isGroup: false, reportCategory: "operating_expenses" },

    // 43 - Other Operating Expenses
    { code: "43", name: "OTHER OPERATING EXPENSES", nameEn: "Other Operating Expenses", accountType: "expense", parentCode: "4", level: 2, isGroup: true, reportCategory: "operating_expenses" },
    { code: "4300", name: "Rent and Rates", nameEn: "Rent and Rates", accountType: "expense", parentCode: "43", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "4301", name: "Repairs and Maintenance", nameEn: "Repairs and Maintenance", accountType: "expense", parentCode: "43", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "4302", name: "Utilities", nameEn: "Utilities", accountType: "expense", parentCode: "43", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "4303", name: "Insurance", nameEn: "Insurance", accountType: "expense", parentCode: "43", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "4304", name: "Travel and Entertainment", nameEn: "Travel and Entertainment", accountType: "expense", parentCode: "43", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "4305", name: "Professional Fees", nameEn: "Professional Fees", accountType: "expense", parentCode: "43", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "4306", name: "Audit Fees", nameEn: "Audit Fees", accountType: "expense", parentCode: "43", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "4307", name: "Marketing and Advertising", nameEn: "Marketing and Advertising", accountType: "expense", parentCode: "43", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "4308", name: "Office Expenses", nameEn: "Office Expenses", accountType: "expense", parentCode: "43", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "4309", name: "Loss on Disposal of PPE", nameEn: "Loss on Disposal of PPE", accountType: "expense", parentCode: "43", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "4310", name: "Impairment Losses", nameEn: "Impairment Losses", accountType: "expense", parentCode: "43", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "4311", name: "Expected Credit Losses", nameEn: "Expected Credit Losses", accountType: "expense", parentCode: "43", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "4319", name: "Miscellaneous Operating Expenses", nameEn: "Miscellaneous Operating Expenses", accountType: "expense", parentCode: "43", level: 3, isGroup: false, reportCategory: "operating_expenses" },

    // 44 - Finance Costs
    { code: "44", name: "FINANCE COSTS", nameEn: "Finance Costs", accountType: "expense", parentCode: "4", level: 2, isGroup: true, reportCategory: "other_expenses" },
    { code: "4400", name: "Interest on Bank Loans", nameEn: "Interest on Bank Loans", accountType: "expense", parentCode: "44", level: 3, isGroup: false, reportCategory: "other_expenses" },
    { code: "4401", name: "Interest on Bonds", nameEn: "Interest on Bonds", accountType: "expense", parentCode: "44", level: 3, isGroup: false, reportCategory: "other_expenses" },
    { code: "4402", name: "Interest on Lease Liabilities", nameEn: "Interest on Lease Liabilities", accountType: "expense", parentCode: "44", level: 3, isGroup: false, reportCategory: "other_expenses" },
    { code: "4403", name: "Loss on Financial Instruments", nameEn: "Loss on Financial Instruments", accountType: "expense", parentCode: "44", level: 3, isGroup: false, reportCategory: "other_expenses" },
    { code: "4404", name: "Foreign Exchange Loss", nameEn: "Foreign Exchange Loss", accountType: "expense", parentCode: "44", level: 3, isGroup: false, reportCategory: "other_expenses" },
    { code: "4405", name: "Unwinding of Discount on Provisions", nameEn: "Unwinding of Discount on Provisions", accountType: "expense", parentCode: "44", level: 3, isGroup: false, reportCategory: "other_expenses" },

    // 45 - Income Tax Expense
    { code: "45", name: "INCOME TAX EXPENSE", nameEn: "Income Tax Expense", accountType: "expense", parentCode: "4", level: 2, isGroup: true, reportCategory: "other_expenses" },
    { code: "4500", name: "Current Tax Expense", nameEn: "Current Tax Expense", accountType: "expense", parentCode: "45", level: 3, isGroup: false, reportCategory: "other_expenses" },
    { code: "4501", name: "Deferred Tax Expense", nameEn: "Deferred Tax Expense", accountType: "expense", parentCode: "45", level: 3, isGroup: false, reportCategory: "other_expenses" },
  ],
};
