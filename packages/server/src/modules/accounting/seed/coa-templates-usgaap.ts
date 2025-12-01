/**
 * US GAAP Chart of Accounts Template
 */

import type { CoaTemplate } from "./coa-templates";

export const US_GAAP_TEMPLATE: CoaTemplate = {
  code: "US_GAAP",
  name: "US Generally Accepted Accounting Principles",
  country: "US",
  description: "Standard chart of accounts following US GAAP",
  accounts: [
    // ═══════════════════════════════════════════════════════════════════════════
    // 1000-1999 - ASSETS
    // ═══════════════════════════════════════════════════════════════════════════
    { code: "1000", name: "ASSETS", nameEn: "Assets", accountType: "asset", parentCode: null, level: 1, isGroup: true, reportCategory: "current_assets" },

    // Current Assets (1000-1499)
    { code: "1100", name: "CURRENT ASSETS", nameEn: "Current Assets", accountType: "asset", parentCode: "1000", level: 2, isGroup: true, reportCategory: "current_assets" },

    // Cash and Cash Equivalents
    { code: "1110", name: "CASH AND CASH EQUIVALENTS", nameEn: "Cash and Cash Equivalents", accountType: "asset", parentCode: "1100", level: 3, isGroup: true, reportCategory: "current_assets" },
    { code: "1111", name: "Petty Cash", nameEn: "Petty Cash", accountType: "asset", parentCode: "1110", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1112", name: "Cash in Bank - Operating", nameEn: "Cash in Bank - Operating", accountType: "asset", parentCode: "1110", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1113", name: "Cash in Bank - Payroll", nameEn: "Cash in Bank - Payroll", accountType: "asset", parentCode: "1110", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1114", name: "Cash in Bank - Savings", nameEn: "Cash in Bank - Savings", accountType: "asset", parentCode: "1110", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1115", name: "Cash Equivalents", nameEn: "Cash Equivalents", accountType: "asset", parentCode: "1110", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1116", name: "Undeposited Funds", nameEn: "Undeposited Funds", accountType: "asset", parentCode: "1110", level: 4, isGroup: false, reportCategory: "current_assets" },

    // Short-term Investments
    { code: "1120", name: "SHORT-TERM INVESTMENTS", nameEn: "Short-term Investments", accountType: "asset", parentCode: "1100", level: 3, isGroup: true, reportCategory: "current_assets" },
    { code: "1121", name: "Marketable Securities", nameEn: "Marketable Securities", accountType: "asset", parentCode: "1120", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1122", name: "Trading Securities", nameEn: "Trading Securities", accountType: "asset", parentCode: "1120", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1123", name: "Available-for-Sale Securities", nameEn: "Available-for-Sale Securities", accountType: "asset", parentCode: "1120", level: 4, isGroup: false, reportCategory: "current_assets" },

    // Accounts Receivable
    { code: "1130", name: "ACCOUNTS RECEIVABLE", nameEn: "Accounts Receivable", accountType: "asset", parentCode: "1100", level: 3, isGroup: true, reportCategory: "current_assets" },
    { code: "1131", name: "Accounts Receivable - Trade", nameEn: "Accounts Receivable - Trade", accountType: "asset", parentCode: "1130", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1132", name: "Accounts Receivable - Other", nameEn: "Accounts Receivable - Other", accountType: "asset", parentCode: "1130", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1133", name: "Notes Receivable - Current", nameEn: "Notes Receivable - Current", accountType: "asset", parentCode: "1130", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1139", name: "Allowance for Doubtful Accounts", nameEn: "Allowance for Doubtful Accounts", accountType: "asset", parentCode: "1130", level: 4, isGroup: false, reportCategory: "current_assets" },

    // Inventory
    { code: "1140", name: "INVENTORY", nameEn: "Inventory", accountType: "asset", parentCode: "1100", level: 3, isGroup: true, reportCategory: "current_assets" },
    { code: "1141", name: "Raw Materials", nameEn: "Raw Materials", accountType: "asset", parentCode: "1140", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1142", name: "Work in Process", nameEn: "Work in Process", accountType: "asset", parentCode: "1140", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1143", name: "Finished Goods", nameEn: "Finished Goods", accountType: "asset", parentCode: "1140", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1144", name: "Merchandise Inventory", nameEn: "Merchandise Inventory", accountType: "asset", parentCode: "1140", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1145", name: "Supplies Inventory", nameEn: "Supplies Inventory", accountType: "asset", parentCode: "1140", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1149", name: "Inventory Reserve", nameEn: "Inventory Reserve", accountType: "asset", parentCode: "1140", level: 4, isGroup: false, reportCategory: "current_assets" },

    // Prepaid Expenses
    { code: "1150", name: "PREPAID EXPENSES", nameEn: "Prepaid Expenses", accountType: "asset", parentCode: "1100", level: 3, isGroup: true, reportCategory: "current_assets" },
    { code: "1151", name: "Prepaid Insurance", nameEn: "Prepaid Insurance", accountType: "asset", parentCode: "1150", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1152", name: "Prepaid Rent", nameEn: "Prepaid Rent", accountType: "asset", parentCode: "1150", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1153", name: "Prepaid Interest", nameEn: "Prepaid Interest", accountType: "asset", parentCode: "1150", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1154", name: "Prepaid Taxes", nameEn: "Prepaid Taxes", accountType: "asset", parentCode: "1150", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1159", name: "Other Prepaid Expenses", nameEn: "Other Prepaid Expenses", accountType: "asset", parentCode: "1150", level: 4, isGroup: false, reportCategory: "current_assets" },

    // Other Current Assets
    { code: "1190", name: "OTHER CURRENT ASSETS", nameEn: "Other Current Assets", accountType: "asset", parentCode: "1100", level: 3, isGroup: true, reportCategory: "current_assets" },
    { code: "1191", name: "Employee Advances", nameEn: "Employee Advances", accountType: "asset", parentCode: "1190", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1192", name: "Due from Affiliates", nameEn: "Due from Affiliates", accountType: "asset", parentCode: "1190", level: 4, isGroup: false, reportCategory: "current_assets" },
    { code: "1199", name: "Miscellaneous Current Assets", nameEn: "Miscellaneous Current Assets", accountType: "asset", parentCode: "1190", level: 4, isGroup: false, reportCategory: "current_assets" },

    // Non-Current Assets (1500-1999)
    { code: "1500", name: "NON-CURRENT ASSETS", nameEn: "Non-Current Assets", accountType: "asset", parentCode: "1000", level: 2, isGroup: true, reportCategory: "fixed_assets" },

    // Property, Plant and Equipment
    { code: "1510", name: "PROPERTY, PLANT AND EQUIPMENT", nameEn: "Property, Plant and Equipment", accountType: "asset", parentCode: "1500", level: 3, isGroup: true, reportCategory: "fixed_assets" },
    { code: "1511", name: "Land", nameEn: "Land", accountType: "asset", parentCode: "1510", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1512", name: "Land Improvements", nameEn: "Land Improvements", accountType: "asset", parentCode: "1510", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1513", name: "Buildings", nameEn: "Buildings", accountType: "asset", parentCode: "1510", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1514", name: "Leasehold Improvements", nameEn: "Leasehold Improvements", accountType: "asset", parentCode: "1510", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1515", name: "Machinery and Equipment", nameEn: "Machinery and Equipment", accountType: "asset", parentCode: "1510", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1516", name: "Furniture and Fixtures", nameEn: "Furniture and Fixtures", accountType: "asset", parentCode: "1510", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1517", name: "Vehicles", nameEn: "Vehicles", accountType: "asset", parentCode: "1510", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1518", name: "Computer Equipment", nameEn: "Computer Equipment", accountType: "asset", parentCode: "1510", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1519", name: "Construction in Progress", nameEn: "Construction in Progress", accountType: "asset", parentCode: "1510", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1520", name: "Accumulated Depreciation - Buildings", nameEn: "Accumulated Depreciation - Buildings", accountType: "asset", parentCode: "1510", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1521", name: "Accumulated Depreciation - Machinery", nameEn: "Accumulated Depreciation - Machinery", accountType: "asset", parentCode: "1510", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1522", name: "Accumulated Depreciation - Furniture", nameEn: "Accumulated Depreciation - Furniture", accountType: "asset", parentCode: "1510", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1523", name: "Accumulated Depreciation - Vehicles", nameEn: "Accumulated Depreciation - Vehicles", accountType: "asset", parentCode: "1510", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1524", name: "Accumulated Depreciation - Computer Equipment", nameEn: "Accumulated Depreciation - Computer Equipment", accountType: "asset", parentCode: "1510", level: 4, isGroup: false, reportCategory: "fixed_assets" },

    // Intangible Assets
    { code: "1550", name: "INTANGIBLE ASSETS", nameEn: "Intangible Assets", accountType: "asset", parentCode: "1500", level: 3, isGroup: true, reportCategory: "intangible_assets" },
    { code: "1551", name: "Goodwill", nameEn: "Goodwill", accountType: "asset", parentCode: "1550", level: 4, isGroup: false, reportCategory: "intangible_assets" },
    { code: "1552", name: "Patents", nameEn: "Patents", accountType: "asset", parentCode: "1550", level: 4, isGroup: false, reportCategory: "intangible_assets" },
    { code: "1553", name: "Trademarks", nameEn: "Trademarks", accountType: "asset", parentCode: "1550", level: 4, isGroup: false, reportCategory: "intangible_assets" },
    { code: "1554", name: "Copyrights", nameEn: "Copyrights", accountType: "asset", parentCode: "1550", level: 4, isGroup: false, reportCategory: "intangible_assets" },
    { code: "1555", name: "Franchises", nameEn: "Franchises", accountType: "asset", parentCode: "1550", level: 4, isGroup: false, reportCategory: "intangible_assets" },
    { code: "1556", name: "Software", nameEn: "Software", accountType: "asset", parentCode: "1550", level: 4, isGroup: false, reportCategory: "intangible_assets" },
    { code: "1559", name: "Accumulated Amortization", nameEn: "Accumulated Amortization", accountType: "asset", parentCode: "1550", level: 4, isGroup: false, reportCategory: "intangible_assets" },

    // Long-term Investments
    { code: "1570", name: "LONG-TERM INVESTMENTS", nameEn: "Long-term Investments", accountType: "asset", parentCode: "1500", level: 3, isGroup: true, reportCategory: "fixed_assets" },
    { code: "1571", name: "Investments in Subsidiaries", nameEn: "Investments in Subsidiaries", accountType: "asset", parentCode: "1570", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1572", name: "Investments in Associates", nameEn: "Investments in Associates", accountType: "asset", parentCode: "1570", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1573", name: "Held-to-Maturity Securities", nameEn: "Held-to-Maturity Securities", accountType: "asset", parentCode: "1570", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1579", name: "Other Long-term Investments", nameEn: "Other Long-term Investments", accountType: "asset", parentCode: "1570", level: 4, isGroup: false, reportCategory: "fixed_assets" },

    // Other Non-Current Assets
    { code: "1590", name: "OTHER NON-CURRENT ASSETS", nameEn: "Other Non-Current Assets", accountType: "asset", parentCode: "1500", level: 3, isGroup: true, reportCategory: "fixed_assets" },
    { code: "1591", name: "Security Deposits", nameEn: "Security Deposits", accountType: "asset", parentCode: "1590", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1592", name: "Long-term Receivables", nameEn: "Long-term Receivables", accountType: "asset", parentCode: "1590", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1593", name: "Deferred Tax Assets", nameEn: "Deferred Tax Assets", accountType: "asset", parentCode: "1590", level: 4, isGroup: false, reportCategory: "fixed_assets" },
    { code: "1599", name: "Miscellaneous Non-Current Assets", nameEn: "Miscellaneous Non-Current Assets", accountType: "asset", parentCode: "1590", level: 4, isGroup: false, reportCategory: "fixed_assets" },

    // ═══════════════════════════════════════════════════════════════════════════
    // 2000-2999 - LIABILITIES
    // ═══════════════════════════════════════════════════════════════════════════
    { code: "2000", name: "LIABILITIES", nameEn: "Liabilities", accountType: "liability", parentCode: null, level: 1, isGroup: true, reportCategory: "current_liabilities" },

    // Current Liabilities (2000-2499)
    { code: "2100", name: "CURRENT LIABILITIES", nameEn: "Current Liabilities", accountType: "liability", parentCode: "2000", level: 2, isGroup: true, reportCategory: "current_liabilities" },

    // Accounts Payable
    { code: "2110", name: "ACCOUNTS PAYABLE", nameEn: "Accounts Payable", accountType: "liability", parentCode: "2100", level: 3, isGroup: true, reportCategory: "current_liabilities" },
    { code: "2111", name: "Accounts Payable - Trade", nameEn: "Accounts Payable - Trade", accountType: "liability", parentCode: "2110", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2112", name: "Accounts Payable - Other", nameEn: "Accounts Payable - Other", accountType: "liability", parentCode: "2110", level: 4, isGroup: false, reportCategory: "current_liabilities" },

    // Accrued Liabilities
    { code: "2120", name: "ACCRUED LIABILITIES", nameEn: "Accrued Liabilities", accountType: "liability", parentCode: "2100", level: 3, isGroup: true, reportCategory: "current_liabilities" },
    { code: "2121", name: "Accrued Wages and Salaries", nameEn: "Accrued Wages and Salaries", accountType: "liability", parentCode: "2120", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2122", name: "Accrued Payroll Taxes", nameEn: "Accrued Payroll Taxes", accountType: "liability", parentCode: "2120", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2123", name: "Accrued Benefits", nameEn: "Accrued Benefits", accountType: "liability", parentCode: "2120", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2124", name: "Accrued Interest", nameEn: "Accrued Interest", accountType: "liability", parentCode: "2120", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2125", name: "Accrued Utilities", nameEn: "Accrued Utilities", accountType: "liability", parentCode: "2120", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2129", name: "Other Accrued Liabilities", nameEn: "Other Accrued Liabilities", accountType: "liability", parentCode: "2120", level: 4, isGroup: false, reportCategory: "current_liabilities" },

    // Short-term Debt
    { code: "2130", name: "SHORT-TERM DEBT", nameEn: "Short-term Debt", accountType: "liability", parentCode: "2100", level: 3, isGroup: true, reportCategory: "current_liabilities" },
    { code: "2131", name: "Short-term Bank Loans", nameEn: "Short-term Bank Loans", accountType: "liability", parentCode: "2130", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2132", name: "Current Portion of Long-term Debt", nameEn: "Current Portion of Long-term Debt", accountType: "liability", parentCode: "2130", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2133", name: "Notes Payable - Current", nameEn: "Notes Payable - Current", accountType: "liability", parentCode: "2130", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2134", name: "Line of Credit", nameEn: "Line of Credit", accountType: "liability", parentCode: "2130", level: 4, isGroup: false, reportCategory: "current_liabilities" },

    // Taxes Payable
    { code: "2140", name: "TAXES PAYABLE", nameEn: "Taxes Payable", accountType: "liability", parentCode: "2100", level: 3, isGroup: true, reportCategory: "current_liabilities" },
    { code: "2141", name: "Income Taxes Payable", nameEn: "Income Taxes Payable", accountType: "liability", parentCode: "2140", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2142", name: "Sales Tax Payable", nameEn: "Sales Tax Payable", accountType: "liability", parentCode: "2140", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2143", name: "Payroll Taxes Payable", nameEn: "Payroll Taxes Payable", accountType: "liability", parentCode: "2140", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2144", name: "Property Taxes Payable", nameEn: "Property Taxes Payable", accountType: "liability", parentCode: "2140", level: 4, isGroup: false, reportCategory: "current_liabilities" },

    // Deferred Revenue
    { code: "2150", name: "DEFERRED REVENUE", nameEn: "Deferred Revenue", accountType: "liability", parentCode: "2100", level: 3, isGroup: true, reportCategory: "current_liabilities" },
    { code: "2151", name: "Unearned Revenue", nameEn: "Unearned Revenue", accountType: "liability", parentCode: "2150", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2152", name: "Customer Deposits", nameEn: "Customer Deposits", accountType: "liability", parentCode: "2150", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2153", name: "Gift Cards Outstanding", nameEn: "Gift Cards Outstanding", accountType: "liability", parentCode: "2150", level: 4, isGroup: false, reportCategory: "current_liabilities" },

    // Other Current Liabilities
    { code: "2190", name: "OTHER CURRENT LIABILITIES", nameEn: "Other Current Liabilities", accountType: "liability", parentCode: "2100", level: 3, isGroup: true, reportCategory: "current_liabilities" },
    { code: "2191", name: "Due to Affiliates", nameEn: "Due to Affiliates", accountType: "liability", parentCode: "2190", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2192", name: "Dividends Payable", nameEn: "Dividends Payable", accountType: "liability", parentCode: "2190", level: 4, isGroup: false, reportCategory: "current_liabilities" },
    { code: "2199", name: "Miscellaneous Current Liabilities", nameEn: "Miscellaneous Current Liabilities", accountType: "liability", parentCode: "2190", level: 4, isGroup: false, reportCategory: "current_liabilities" },

    // Long-term Liabilities (2500-2999)
    { code: "2500", name: "LONG-TERM LIABILITIES", nameEn: "Long-term Liabilities", accountType: "liability", parentCode: "2000", level: 2, isGroup: true, reportCategory: "long_term_liabilities" },

    // Long-term Debt
    { code: "2510", name: "LONG-TERM DEBT", nameEn: "Long-term Debt", accountType: "liability", parentCode: "2500", level: 3, isGroup: true, reportCategory: "long_term_liabilities" },
    { code: "2511", name: "Bank Loans - Long-term", nameEn: "Bank Loans - Long-term", accountType: "liability", parentCode: "2510", level: 4, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "2512", name: "Bonds Payable", nameEn: "Bonds Payable", accountType: "liability", parentCode: "2510", level: 4, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "2513", name: "Mortgage Payable", nameEn: "Mortgage Payable", accountType: "liability", parentCode: "2510", level: 4, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "2514", name: "Notes Payable - Long-term", nameEn: "Notes Payable - Long-term", accountType: "liability", parentCode: "2510", level: 4, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "2515", name: "Lease Obligations", nameEn: "Lease Obligations", accountType: "liability", parentCode: "2510", level: 4, isGroup: false, reportCategory: "long_term_liabilities" },

    // Other Long-term Liabilities
    { code: "2550", name: "OTHER LONG-TERM LIABILITIES", nameEn: "Other Long-term Liabilities", accountType: "liability", parentCode: "2500", level: 3, isGroup: true, reportCategory: "long_term_liabilities" },
    { code: "2551", name: "Deferred Tax Liabilities", nameEn: "Deferred Tax Liabilities", accountType: "liability", parentCode: "2550", level: 4, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "2552", name: "Pension Obligations", nameEn: "Pension Obligations", accountType: "liability", parentCode: "2550", level: 4, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "2553", name: "Post-Retirement Benefits", nameEn: "Post-Retirement Benefits", accountType: "liability", parentCode: "2550", level: 4, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "2559", name: "Miscellaneous Long-term Liabilities", nameEn: "Miscellaneous Long-term Liabilities", accountType: "liability", parentCode: "2550", level: 4, isGroup: false, reportCategory: "long_term_liabilities" },

    // ═══════════════════════════════════════════════════════════════════════════
    // 3000-3999 - EQUITY
    // ═══════════════════════════════════════════════════════════════════════════
    { code: "3000", name: "STOCKHOLDERS' EQUITY", nameEn: "Stockholders' Equity", accountType: "equity", parentCode: null, level: 1, isGroup: true, reportCategory: "equity" },

    // Capital Stock
    { code: "3100", name: "CAPITAL STOCK", nameEn: "Capital Stock", accountType: "equity", parentCode: "3000", level: 2, isGroup: true, reportCategory: "equity" },
    { code: "3110", name: "Common Stock", nameEn: "Common Stock", accountType: "equity", parentCode: "3100", level: 3, isGroup: false, reportCategory: "equity" },
    { code: "3120", name: "Preferred Stock", nameEn: "Preferred Stock", accountType: "equity", parentCode: "3100", level: 3, isGroup: false, reportCategory: "equity" },
    { code: "3130", name: "Additional Paid-in Capital", nameEn: "Additional Paid-in Capital", accountType: "equity", parentCode: "3100", level: 3, isGroup: false, reportCategory: "equity" },
    { code: "3140", name: "Treasury Stock", nameEn: "Treasury Stock", accountType: "equity", parentCode: "3100", level: 3, isGroup: false, reportCategory: "equity" },

    // Retained Earnings
    { code: "3200", name: "RETAINED EARNINGS", nameEn: "Retained Earnings", accountType: "equity", parentCode: "3000", level: 2, isGroup: true, reportCategory: "equity" },
    { code: "3210", name: "Retained Earnings - Prior Years", nameEn: "Retained Earnings - Prior Years", accountType: "equity", parentCode: "3200", level: 3, isGroup: false, reportCategory: "equity" },
    { code: "3220", name: "Current Year Earnings", nameEn: "Current Year Earnings", accountType: "equity", parentCode: "3200", level: 3, isGroup: false, reportCategory: "equity" },

    // Other Comprehensive Income
    { code: "3300", name: "ACCUMULATED OTHER COMPREHENSIVE INCOME", nameEn: "Accumulated Other Comprehensive Income", accountType: "equity", parentCode: "3000", level: 2, isGroup: true, reportCategory: "equity" },
    { code: "3310", name: "Foreign Currency Translation", nameEn: "Foreign Currency Translation", accountType: "equity", parentCode: "3300", level: 3, isGroup: false, reportCategory: "equity" },
    { code: "3320", name: "Unrealized Gains/Losses on Securities", nameEn: "Unrealized Gains/Losses on Securities", accountType: "equity", parentCode: "3300", level: 3, isGroup: false, reportCategory: "equity" },
    { code: "3330", name: "Pension Adjustments", nameEn: "Pension Adjustments", accountType: "equity", parentCode: "3300", level: 3, isGroup: false, reportCategory: "equity" },

    // ═══════════════════════════════════════════════════════════════════════════
    // 4000-4999 - REVENUE
    // ═══════════════════════════════════════════════════════════════════════════
    { code: "4000", name: "REVENUE", nameEn: "Revenue", accountType: "revenue", parentCode: null, level: 1, isGroup: true, reportCategory: "operating_revenue" },

    // Operating Revenue
    { code: "4100", name: "OPERATING REVENUE", nameEn: "Operating Revenue", accountType: "revenue", parentCode: "4000", level: 2, isGroup: true, reportCategory: "operating_revenue" },
    { code: "4110", name: "Product Sales", nameEn: "Product Sales", accountType: "revenue", parentCode: "4100", level: 3, isGroup: false, reportCategory: "operating_revenue" },
    { code: "4120", name: "Service Revenue", nameEn: "Service Revenue", accountType: "revenue", parentCode: "4100", level: 3, isGroup: false, reportCategory: "operating_revenue" },
    { code: "4130", name: "Rental Income", nameEn: "Rental Income", accountType: "revenue", parentCode: "4100", level: 3, isGroup: false, reportCategory: "operating_revenue" },
    { code: "4140", name: "Commission Revenue", nameEn: "Commission Revenue", accountType: "revenue", parentCode: "4100", level: 3, isGroup: false, reportCategory: "operating_revenue" },

    // Sales Adjustments
    { code: "4200", name: "SALES ADJUSTMENTS", nameEn: "Sales Adjustments", accountType: "revenue", parentCode: "4000", level: 2, isGroup: true, reportCategory: "operating_revenue" },
    { code: "4210", name: "Sales Returns and Allowances", nameEn: "Sales Returns and Allowances", accountType: "revenue", parentCode: "4200", level: 3, isGroup: false, reportCategory: "operating_revenue" },
    { code: "4220", name: "Sales Discounts", nameEn: "Sales Discounts", accountType: "revenue", parentCode: "4200", level: 3, isGroup: false, reportCategory: "operating_revenue" },

    // Other Revenue
    { code: "4300", name: "OTHER REVENUE", nameEn: "Other Revenue", accountType: "revenue", parentCode: "4000", level: 2, isGroup: true, reportCategory: "other_revenue" },
    { code: "4310", name: "Interest Income", nameEn: "Interest Income", accountType: "revenue", parentCode: "4300", level: 3, isGroup: false, reportCategory: "other_revenue" },
    { code: "4320", name: "Dividend Income", nameEn: "Dividend Income", accountType: "revenue", parentCode: "4300", level: 3, isGroup: false, reportCategory: "other_revenue" },
    { code: "4330", name: "Gain on Sale of Assets", nameEn: "Gain on Sale of Assets", accountType: "revenue", parentCode: "4300", level: 3, isGroup: false, reportCategory: "other_revenue" },
    { code: "4340", name: "Foreign Exchange Gains", nameEn: "Foreign Exchange Gains", accountType: "revenue", parentCode: "4300", level: 3, isGroup: false, reportCategory: "other_revenue" },
    { code: "4390", name: "Miscellaneous Income", nameEn: "Miscellaneous Income", accountType: "revenue", parentCode: "4300", level: 3, isGroup: false, reportCategory: "other_revenue" },

    // ═══════════════════════════════════════════════════════════════════════════
    // 5000-5999 - COST OF GOODS SOLD
    // ═══════════════════════════════════════════════════════════════════════════
    { code: "5000", name: "COST OF GOODS SOLD", nameEn: "Cost of Goods Sold", accountType: "expense", parentCode: null, level: 1, isGroup: true, reportCategory: "cost_of_goods" },

    { code: "5100", name: "COST OF PRODUCTS SOLD", nameEn: "Cost of Products Sold", accountType: "expense", parentCode: "5000", level: 2, isGroup: true, reportCategory: "cost_of_goods" },
    { code: "5110", name: "Cost of Goods Manufactured", nameEn: "Cost of Goods Manufactured", accountType: "expense", parentCode: "5100", level: 3, isGroup: false, reportCategory: "cost_of_goods" },
    { code: "5120", name: "Cost of Merchandise Sold", nameEn: "Cost of Merchandise Sold", accountType: "expense", parentCode: "5100", level: 3, isGroup: false, reportCategory: "cost_of_goods" },
    { code: "5130", name: "Freight-In", nameEn: "Freight-In", accountType: "expense", parentCode: "5100", level: 3, isGroup: false, reportCategory: "cost_of_goods" },
    { code: "5140", name: "Purchase Discounts", nameEn: "Purchase Discounts", accountType: "expense", parentCode: "5100", level: 3, isGroup: false, reportCategory: "cost_of_goods" },
    { code: "5150", name: "Purchase Returns and Allowances", nameEn: "Purchase Returns and Allowances", accountType: "expense", parentCode: "5100", level: 3, isGroup: false, reportCategory: "cost_of_goods" },

    { code: "5200", name: "COST OF SERVICES", nameEn: "Cost of Services", accountType: "expense", parentCode: "5000", level: 2, isGroup: true, reportCategory: "cost_of_goods" },
    { code: "5210", name: "Direct Labor - Services", nameEn: "Direct Labor - Services", accountType: "expense", parentCode: "5200", level: 3, isGroup: false, reportCategory: "cost_of_goods" },
    { code: "5220", name: "Subcontractor Costs", nameEn: "Subcontractor Costs", accountType: "expense", parentCode: "5200", level: 3, isGroup: false, reportCategory: "cost_of_goods" },
    { code: "5230", name: "Direct Materials - Services", nameEn: "Direct Materials - Services", accountType: "expense", parentCode: "5200", level: 3, isGroup: false, reportCategory: "cost_of_goods" },

    // ═══════════════════════════════════════════════════════════════════════════
    // 6000-6999 - OPERATING EXPENSES
    // ═══════════════════════════════════════════════════════════════════════════
    { code: "6000", name: "OPERATING EXPENSES", nameEn: "Operating Expenses", accountType: "expense", parentCode: null, level: 1, isGroup: true, reportCategory: "operating_expenses" },

    // Selling Expenses
    { code: "6100", name: "SELLING EXPENSES", nameEn: "Selling Expenses", accountType: "expense", parentCode: "6000", level: 2, isGroup: true, reportCategory: "operating_expenses" },
    { code: "6110", name: "Sales Salaries and Wages", nameEn: "Sales Salaries and Wages", accountType: "expense", parentCode: "6100", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "6120", name: "Sales Commissions", nameEn: "Sales Commissions", accountType: "expense", parentCode: "6100", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "6130", name: "Advertising", nameEn: "Advertising", accountType: "expense", parentCode: "6100", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "6140", name: "Marketing", nameEn: "Marketing", accountType: "expense", parentCode: "6100", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "6150", name: "Travel - Sales", nameEn: "Travel - Sales", accountType: "expense", parentCode: "6100", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "6160", name: "Shipping and Delivery", nameEn: "Shipping and Delivery", accountType: "expense", parentCode: "6100", level: 3, isGroup: false, reportCategory: "operating_expenses" },

    // General and Administrative
    { code: "6200", name: "GENERAL AND ADMINISTRATIVE", nameEn: "General and Administrative", accountType: "expense", parentCode: "6000", level: 2, isGroup: true, reportCategory: "operating_expenses" },
    { code: "6210", name: "Officers' Salaries", nameEn: "Officers' Salaries", accountType: "expense", parentCode: "6200", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "6220", name: "Administrative Salaries", nameEn: "Administrative Salaries", accountType: "expense", parentCode: "6200", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "6230", name: "Employee Benefits", nameEn: "Employee Benefits", accountType: "expense", parentCode: "6200", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "6240", name: "Payroll Taxes", nameEn: "Payroll Taxes", accountType: "expense", parentCode: "6200", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "6250", name: "Rent Expense", nameEn: "Rent Expense", accountType: "expense", parentCode: "6200", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "6260", name: "Utilities", nameEn: "Utilities", accountType: "expense", parentCode: "6200", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "6270", name: "Insurance", nameEn: "Insurance", accountType: "expense", parentCode: "6200", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "6280", name: "Office Supplies", nameEn: "Office Supplies", accountType: "expense", parentCode: "6200", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "6290", name: "Professional Fees", nameEn: "Professional Fees", accountType: "expense", parentCode: "6200", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "6300", name: "Depreciation Expense", nameEn: "Depreciation Expense", accountType: "expense", parentCode: "6200", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "6310", name: "Amortization Expense", nameEn: "Amortization Expense", accountType: "expense", parentCode: "6200", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "6320", name: "Bad Debt Expense", nameEn: "Bad Debt Expense", accountType: "expense", parentCode: "6200", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "6330", name: "Bank Charges", nameEn: "Bank Charges", accountType: "expense", parentCode: "6200", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "6340", name: "Telephone and Internet", nameEn: "Telephone and Internet", accountType: "expense", parentCode: "6200", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "6350", name: "Repairs and Maintenance", nameEn: "Repairs and Maintenance", accountType: "expense", parentCode: "6200", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "6390", name: "Miscellaneous Expense", nameEn: "Miscellaneous Expense", accountType: "expense", parentCode: "6200", level: 3, isGroup: false, reportCategory: "operating_expenses" },

    // ═══════════════════════════════════════════════════════════════════════════
    // 7000-7999 - OTHER EXPENSES
    // ═══════════════════════════════════════════════════════════════════════════
    { code: "7000", name: "OTHER EXPENSES", nameEn: "Other Expenses", accountType: "expense", parentCode: null, level: 1, isGroup: true, reportCategory: "other_expenses" },

    { code: "7100", name: "INTEREST EXPENSE", nameEn: "Interest Expense", accountType: "expense", parentCode: "7000", level: 2, isGroup: true, reportCategory: "other_expenses" },
    { code: "7110", name: "Interest on Bank Loans", nameEn: "Interest on Bank Loans", accountType: "expense", parentCode: "7100", level: 3, isGroup: false, reportCategory: "other_expenses" },
    { code: "7120", name: "Interest on Bonds", nameEn: "Interest on Bonds", accountType: "expense", parentCode: "7100", level: 3, isGroup: false, reportCategory: "other_expenses" },
    { code: "7130", name: "Other Interest Expense", nameEn: "Other Interest Expense", accountType: "expense", parentCode: "7100", level: 3, isGroup: false, reportCategory: "other_expenses" },

    { code: "7200", name: "OTHER NON-OPERATING EXPENSES", nameEn: "Other Non-Operating Expenses", accountType: "expense", parentCode: "7000", level: 2, isGroup: true, reportCategory: "other_expenses" },
    { code: "7210", name: "Loss on Sale of Assets", nameEn: "Loss on Sale of Assets", accountType: "expense", parentCode: "7200", level: 3, isGroup: false, reportCategory: "other_expenses" },
    { code: "7220", name: "Foreign Exchange Losses", nameEn: "Foreign Exchange Losses", accountType: "expense", parentCode: "7200", level: 3, isGroup: false, reportCategory: "other_expenses" },
    { code: "7290", name: "Miscellaneous Non-Operating Expenses", nameEn: "Miscellaneous Non-Operating Expenses", accountType: "expense", parentCode: "7200", level: 3, isGroup: false, reportCategory: "other_expenses" },

    // Income Tax
    { code: "7300", name: "INCOME TAX EXPENSE", nameEn: "Income Tax Expense", accountType: "expense", parentCode: "7000", level: 2, isGroup: true, reportCategory: "other_expenses" },
    { code: "7310", name: "Current Income Tax Expense", nameEn: "Current Income Tax Expense", accountType: "expense", parentCode: "7300", level: 3, isGroup: false, reportCategory: "other_expenses" },
    { code: "7320", name: "Deferred Income Tax Expense", nameEn: "Deferred Income Tax Expense", accountType: "expense", parentCode: "7300", level: 3, isGroup: false, reportCategory: "other_expenses" },
  ],
};
