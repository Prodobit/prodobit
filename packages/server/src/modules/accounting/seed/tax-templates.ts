/**
 * Tax Rate Templates for different countries
 */

export interface TaxTemplateRate {
  code: string;
  name: string;
  taxType: "vat" | "sales_tax" | "withholding" | "excise" | "other";
  rate: string;
  isDefault: boolean;
}

export interface TaxTemplate {
  country: string;
  rates: TaxTemplateRate[];
}

// Turkey VAT Rates (KDV)
export const TURKEY_TAX_TEMPLATE: TaxTemplate = {
  country: "TR",
  rates: [
    { code: "KDV_20", name: "KDV %20 (Genel)", taxType: "vat", rate: "20", isDefault: true },
    { code: "KDV_10", name: "KDV %10 (İndirimli)", taxType: "vat", rate: "10", isDefault: false },
    { code: "KDV_1", name: "KDV %1 (Özel)", taxType: "vat", rate: "1", isDefault: false },
    { code: "KDV_0", name: "KDV %0 (İstisna)", taxType: "vat", rate: "0", isDefault: false },
    { code: "STOPAJ_20", name: "Stopaj %20", taxType: "withholding", rate: "20", isDefault: false },
    { code: "STOPAJ_15", name: "Stopaj %15", taxType: "withholding", rate: "15", isDefault: false },
    { code: "STOPAJ_10", name: "Stopaj %10", taxType: "withholding", rate: "10", isDefault: false },
  ],
};

// US Sales Tax Rates (by state - common rates)
export const US_TAX_TEMPLATE: TaxTemplate = {
  country: "US",
  rates: [
    { code: "SALES_0", name: "No Sales Tax", taxType: "sales_tax", rate: "0", isDefault: false },
    { code: "SALES_4", name: "Sales Tax 4%", taxType: "sales_tax", rate: "4", isDefault: false },
    { code: "SALES_5", name: "Sales Tax 5%", taxType: "sales_tax", rate: "5", isDefault: false },
    { code: "SALES_6", name: "Sales Tax 6%", taxType: "sales_tax", rate: "6", isDefault: true },
    { code: "SALES_7", name: "Sales Tax 7%", taxType: "sales_tax", rate: "7", isDefault: false },
    { code: "SALES_8", name: "Sales Tax 8%", taxType: "sales_tax", rate: "8", isDefault: false },
    { code: "FEDERAL_21", name: "Federal Corporate Tax 21%", taxType: "other", rate: "21", isDefault: false },
    { code: "FEDERAL_10", name: "Federal Income Tax 10%", taxType: "withholding", rate: "10", isDefault: false },
    { code: "FEDERAL_12", name: "Federal Income Tax 12%", taxType: "withholding", rate: "12", isDefault: false },
    { code: "FEDERAL_22", name: "Federal Income Tax 22%", taxType: "withholding", rate: "22", isDefault: false },
    { code: "FEDERAL_24", name: "Federal Income Tax 24%", taxType: "withholding", rate: "24", isDefault: false },
  ],
};

// UK VAT Rates
export const UK_TAX_TEMPLATE: TaxTemplate = {
  country: "GB",
  rates: [
    { code: "VAT_20", name: "Standard VAT 20%", taxType: "vat", rate: "20", isDefault: true },
    { code: "VAT_5", name: "Reduced VAT 5%", taxType: "vat", rate: "5", isDefault: false },
    { code: "VAT_0", name: "Zero Rate VAT 0%", taxType: "vat", rate: "0", isDefault: false },
    { code: "VAT_EXEMPT", name: "VAT Exempt", taxType: "vat", rate: "0", isDefault: false },
    { code: "CORP_25", name: "Corporation Tax 25%", taxType: "other", rate: "25", isDefault: false },
    { code: "CORP_19", name: "Corporation Tax 19% (Small Profits)", taxType: "other", rate: "19", isDefault: false },
  ],
};

// Germany VAT Rates (Umsatzsteuer/MwSt)
export const GERMANY_TAX_TEMPLATE: TaxTemplate = {
  country: "DE",
  rates: [
    { code: "MWST_19", name: "MwSt 19% (Standard)", taxType: "vat", rate: "19", isDefault: true },
    { code: "MWST_7", name: "MwSt 7% (Ermäßigt)", taxType: "vat", rate: "7", isDefault: false },
    { code: "MWST_0", name: "MwSt 0% (Steuerfrei)", taxType: "vat", rate: "0", isDefault: false },
    { code: "CORP_15", name: "Körperschaftsteuer 15%", taxType: "other", rate: "15", isDefault: false },
    { code: "TRADE_14", name: "Gewerbesteuer ~14%", taxType: "other", rate: "14", isDefault: false },
  ],
};

// France VAT Rates (TVA)
export const FRANCE_TAX_TEMPLATE: TaxTemplate = {
  country: "FR",
  rates: [
    { code: "TVA_20", name: "TVA 20% (Normal)", taxType: "vat", rate: "20", isDefault: true },
    { code: "TVA_10", name: "TVA 10% (Intermédiaire)", taxType: "vat", rate: "10", isDefault: false },
    { code: "TVA_5_5", name: "TVA 5.5% (Réduit)", taxType: "vat", rate: "5.5", isDefault: false },
    { code: "TVA_2_1", name: "TVA 2.1% (Super Réduit)", taxType: "vat", rate: "2.1", isDefault: false },
    { code: "TVA_0", name: "TVA 0% (Exonéré)", taxType: "vat", rate: "0", isDefault: false },
    { code: "IS_25", name: "Impôt sur les Sociétés 25%", taxType: "other", rate: "25", isDefault: false },
  ],
};

// Netherlands VAT Rates (BTW)
export const NETHERLANDS_TAX_TEMPLATE: TaxTemplate = {
  country: "NL",
  rates: [
    { code: "BTW_21", name: "BTW 21% (Standaard)", taxType: "vat", rate: "21", isDefault: true },
    { code: "BTW_9", name: "BTW 9% (Verlaagd)", taxType: "vat", rate: "9", isDefault: false },
    { code: "BTW_0", name: "BTW 0% (Vrijgesteld)", taxType: "vat", rate: "0", isDefault: false },
    { code: "VPB_25_8", name: "Vennootschapsbelasting 25.8%", taxType: "other", rate: "25.8", isDefault: false },
    { code: "VPB_19", name: "Vennootschapsbelasting 19% (Low)", taxType: "other", rate: "19", isDefault: false },
  ],
};

// Canada GST/HST Rates
export const CANADA_TAX_TEMPLATE: TaxTemplate = {
  country: "CA",
  rates: [
    { code: "GST_5", name: "GST 5%", taxType: "vat", rate: "5", isDefault: true },
    { code: "HST_13", name: "HST 13% (Ontario)", taxType: "vat", rate: "13", isDefault: false },
    { code: "HST_15", name: "HST 15% (Atlantic)", taxType: "vat", rate: "15", isDefault: false },
    { code: "PST_7", name: "PST 7% (BC/Manitoba)", taxType: "sales_tax", rate: "7", isDefault: false },
    { code: "QST_9_975", name: "QST 9.975% (Quebec)", taxType: "sales_tax", rate: "9.975", isDefault: false },
    { code: "GST_0", name: "GST Exempt", taxType: "vat", rate: "0", isDefault: false },
  ],
};

// Australia GST Rates
export const AUSTRALIA_TAX_TEMPLATE: TaxTemplate = {
  country: "AU",
  rates: [
    { code: "GST_10", name: "GST 10%", taxType: "vat", rate: "10", isDefault: true },
    { code: "GST_0", name: "GST Free", taxType: "vat", rate: "0", isDefault: false },
    { code: "GST_EXEMPT", name: "Input Taxed (Exempt)", taxType: "vat", rate: "0", isDefault: false },
    { code: "CORP_30", name: "Company Tax 30%", taxType: "other", rate: "30", isDefault: false },
    { code: "CORP_25", name: "Company Tax 25% (Base Rate)", taxType: "other", rate: "25", isDefault: false },
  ],
};

// Japan Consumption Tax
export const JAPAN_TAX_TEMPLATE: TaxTemplate = {
  country: "JP",
  rates: [
    { code: "CT_10", name: "消費税 10% (Standard)", taxType: "vat", rate: "10", isDefault: true },
    { code: "CT_8", name: "消費税 8% (Reduced)", taxType: "vat", rate: "8", isDefault: false },
    { code: "CT_0", name: "消費税 0% (Exempt)", taxType: "vat", rate: "0", isDefault: false },
    { code: "CORP_23_2", name: "法人税 23.2%", taxType: "other", rate: "23.2", isDefault: false },
  ],
};

// Estonia VAT Rates (Käibemaks)
export const ESTONIA_TAX_TEMPLATE: TaxTemplate = {
  country: "EE",
  rates: [
    { code: "KM_22", name: "Käibemaks 22% (Standard)", taxType: "vat", rate: "22", isDefault: true },
    { code: "KM_9", name: "Käibemaks 9% (Reduced)", taxType: "vat", rate: "9", isDefault: false },
    { code: "KM_5", name: "Käibemaks 5% (Super Reduced)", taxType: "vat", rate: "5", isDefault: false },
    { code: "KM_0", name: "Käibemaks 0% (Exempt)", taxType: "vat", rate: "0", isDefault: false },
    { code: "CORP_20", name: "Tulumaks 20% (Corporate)", taxType: "other", rate: "20", isDefault: false },
  ],
};

// Italy VAT Rates (IVA)
export const ITALY_TAX_TEMPLATE: TaxTemplate = {
  country: "IT",
  rates: [
    { code: "IVA_22", name: "IVA 22% (Ordinaria)", taxType: "vat", rate: "22", isDefault: true },
    { code: "IVA_10", name: "IVA 10% (Ridotta)", taxType: "vat", rate: "10", isDefault: false },
    { code: "IVA_5", name: "IVA 5% (Ridotta)", taxType: "vat", rate: "5", isDefault: false },
    { code: "IVA_4", name: "IVA 4% (Minima)", taxType: "vat", rate: "4", isDefault: false },
    { code: "IVA_0", name: "IVA 0% (Esente)", taxType: "vat", rate: "0", isDefault: false },
    { code: "IRES_24", name: "IRES 24% (Corporate)", taxType: "other", rate: "24", isDefault: false },
  ],
};

// Spain VAT Rates (IVA)
export const SPAIN_TAX_TEMPLATE: TaxTemplate = {
  country: "ES",
  rates: [
    { code: "IVA_21", name: "IVA 21% (General)", taxType: "vat", rate: "21", isDefault: true },
    { code: "IVA_10", name: "IVA 10% (Reducido)", taxType: "vat", rate: "10", isDefault: false },
    { code: "IVA_4", name: "IVA 4% (Superreducido)", taxType: "vat", rate: "4", isDefault: false },
    { code: "IVA_0", name: "IVA 0% (Exento)", taxType: "vat", rate: "0", isDefault: false },
    { code: "IS_25", name: "Impuesto de Sociedades 25%", taxType: "other", rate: "25", isDefault: false },
  ],
};

// Portugal VAT Rates (IVA)
export const PORTUGAL_TAX_TEMPLATE: TaxTemplate = {
  country: "PT",
  rates: [
    { code: "IVA_23", name: "IVA 23% (Normal)", taxType: "vat", rate: "23", isDefault: true },
    { code: "IVA_13", name: "IVA 13% (Intermédio)", taxType: "vat", rate: "13", isDefault: false },
    { code: "IVA_6", name: "IVA 6% (Reduzido)", taxType: "vat", rate: "6", isDefault: false },
    { code: "IVA_0", name: "IVA 0% (Isento)", taxType: "vat", rate: "0", isDefault: false },
    { code: "IRC_21", name: "IRC 21% (Corporate)", taxType: "other", rate: "21", isDefault: false },
  ],
};

// Belgium VAT Rates (BTW/TVA)
export const BELGIUM_TAX_TEMPLATE: TaxTemplate = {
  country: "BE",
  rates: [
    { code: "BTW_21", name: "BTW 21% (Standaard)", taxType: "vat", rate: "21", isDefault: true },
    { code: "BTW_12", name: "BTW 12% (Verlaagd)", taxType: "vat", rate: "12", isDefault: false },
    { code: "BTW_6", name: "BTW 6% (Verlaagd)", taxType: "vat", rate: "6", isDefault: false },
    { code: "BTW_0", name: "BTW 0% (Vrijgesteld)", taxType: "vat", rate: "0", isDefault: false },
    { code: "ISOC_25", name: "Vennootschapsbelasting 25%", taxType: "other", rate: "25", isDefault: false },
  ],
};

// Austria VAT Rates (USt)
export const AUSTRIA_TAX_TEMPLATE: TaxTemplate = {
  country: "AT",
  rates: [
    { code: "UST_20", name: "USt 20% (Normal)", taxType: "vat", rate: "20", isDefault: true },
    { code: "UST_13", name: "USt 13% (Ermäßigt)", taxType: "vat", rate: "13", isDefault: false },
    { code: "UST_10", name: "USt 10% (Ermäßigt)", taxType: "vat", rate: "10", isDefault: false },
    { code: "UST_0", name: "USt 0% (Befreit)", taxType: "vat", rate: "0", isDefault: false },
    { code: "KOST_25", name: "Körperschaftsteuer 25%", taxType: "other", rate: "25", isDefault: false },
  ],
};

// Switzerland VAT Rates (MwSt/TVA)
export const SWITZERLAND_TAX_TEMPLATE: TaxTemplate = {
  country: "CH",
  rates: [
    { code: "MWST_8_1", name: "MwSt 8.1% (Normal)", taxType: "vat", rate: "8.1", isDefault: true },
    { code: "MWST_2_6", name: "MwSt 2.6% (Reduziert)", taxType: "vat", rate: "2.6", isDefault: false },
    { code: "MWST_3_8", name: "MwSt 3.8% (Beherbergung)", taxType: "vat", rate: "3.8", isDefault: false },
    { code: "MWST_0", name: "MwSt 0% (Befreit)", taxType: "vat", rate: "0", isDefault: false },
    { code: "GEWINN_14", name: "Gewinnsteuer ~14%", taxType: "other", rate: "14", isDefault: false },
  ],
};

// Poland VAT Rates (PTU/VAT)
export const POLAND_TAX_TEMPLATE: TaxTemplate = {
  country: "PL",
  rates: [
    { code: "VAT_23", name: "VAT 23% (Podstawowy)", taxType: "vat", rate: "23", isDefault: true },
    { code: "VAT_8", name: "VAT 8% (Obniżony)", taxType: "vat", rate: "8", isDefault: false },
    { code: "VAT_5", name: "VAT 5% (Obniżony)", taxType: "vat", rate: "5", isDefault: false },
    { code: "VAT_0", name: "VAT 0% (Zwolniony)", taxType: "vat", rate: "0", isDefault: false },
    { code: "CIT_19", name: "CIT 19% (Corporate)", taxType: "other", rate: "19", isDefault: false },
    { code: "CIT_9", name: "CIT 9% (Mały podatnik)", taxType: "other", rate: "9", isDefault: false },
  ],
};

// Czech Republic VAT Rates (DPH)
export const CZECH_TAX_TEMPLATE: TaxTemplate = {
  country: "CZ",
  rates: [
    { code: "DPH_21", name: "DPH 21% (Základní)", taxType: "vat", rate: "21", isDefault: true },
    { code: "DPH_12", name: "DPH 12% (Snížená)", taxType: "vat", rate: "12", isDefault: false },
    { code: "DPH_0", name: "DPH 0% (Osvobozeno)", taxType: "vat", rate: "0", isDefault: false },
    { code: "DPPO_21", name: "Daň z příjmů PO 21%", taxType: "other", rate: "21", isDefault: false },
  ],
};

// Hungary VAT Rates (ÁFA)
export const HUNGARY_TAX_TEMPLATE: TaxTemplate = {
  country: "HU",
  rates: [
    { code: "AFA_27", name: "ÁFA 27% (Általános)", taxType: "vat", rate: "27", isDefault: true },
    { code: "AFA_18", name: "ÁFA 18% (Kedvezményes)", taxType: "vat", rate: "18", isDefault: false },
    { code: "AFA_5", name: "ÁFA 5% (Kedvezményes)", taxType: "vat", rate: "5", isDefault: false },
    { code: "AFA_0", name: "ÁFA 0% (Mentes)", taxType: "vat", rate: "0", isDefault: false },
    { code: "TAO_9", name: "Társasági adó 9%", taxType: "other", rate: "9", isDefault: false },
  ],
};

// Romania VAT Rates (TVA)
export const ROMANIA_TAX_TEMPLATE: TaxTemplate = {
  country: "RO",
  rates: [
    { code: "TVA_19", name: "TVA 19% (Standard)", taxType: "vat", rate: "19", isDefault: true },
    { code: "TVA_9", name: "TVA 9% (Redus)", taxType: "vat", rate: "9", isDefault: false },
    { code: "TVA_5", name: "TVA 5% (Redus)", taxType: "vat", rate: "5", isDefault: false },
    { code: "TVA_0", name: "TVA 0% (Scutit)", taxType: "vat", rate: "0", isDefault: false },
    { code: "IMPOZIT_16", name: "Impozit pe profit 16%", taxType: "other", rate: "16", isDefault: false },
  ],
};

// Bulgaria VAT Rates (ДДС)
export const BULGARIA_TAX_TEMPLATE: TaxTemplate = {
  country: "BG",
  rates: [
    { code: "DDS_20", name: "ДДС 20% (Стандартна)", taxType: "vat", rate: "20", isDefault: true },
    { code: "DDS_9", name: "ДДС 9% (Намалена)", taxType: "vat", rate: "9", isDefault: false },
    { code: "DDS_0", name: "ДДС 0% (Освободена)", taxType: "vat", rate: "0", isDefault: false },
    { code: "CORP_10", name: "Корпоративен данък 10%", taxType: "other", rate: "10", isDefault: false },
  ],
};

// Greece VAT Rates (ΦΠΑ)
export const GREECE_TAX_TEMPLATE: TaxTemplate = {
  country: "GR",
  rates: [
    { code: "FPA_24", name: "ΦΠΑ 24% (Κανονικός)", taxType: "vat", rate: "24", isDefault: true },
    { code: "FPA_13", name: "ΦΠΑ 13% (Μειωμένος)", taxType: "vat", rate: "13", isDefault: false },
    { code: "FPA_6", name: "ΦΠΑ 6% (Υπερμειωμένος)", taxType: "vat", rate: "6", isDefault: false },
    { code: "FPA_0", name: "ΦΠΑ 0% (Απαλλαγή)", taxType: "vat", rate: "0", isDefault: false },
    { code: "CORP_22", name: "Φόρος εισοδήματος 22%", taxType: "other", rate: "22", isDefault: false },
  ],
};

// Sweden VAT Rates (Moms)
export const SWEDEN_TAX_TEMPLATE: TaxTemplate = {
  country: "SE",
  rates: [
    { code: "MOMS_25", name: "Moms 25% (Normal)", taxType: "vat", rate: "25", isDefault: true },
    { code: "MOMS_12", name: "Moms 12% (Reducerad)", taxType: "vat", rate: "12", isDefault: false },
    { code: "MOMS_6", name: "Moms 6% (Reducerad)", taxType: "vat", rate: "6", isDefault: false },
    { code: "MOMS_0", name: "Moms 0% (Undantag)", taxType: "vat", rate: "0", isDefault: false },
    { code: "BOLAG_20_6", name: "Bolagsskatt 20.6%", taxType: "other", rate: "20.6", isDefault: false },
  ],
};

// Denmark VAT Rates (Moms)
export const DENMARK_TAX_TEMPLATE: TaxTemplate = {
  country: "DK",
  rates: [
    { code: "MOMS_25", name: "Moms 25%", taxType: "vat", rate: "25", isDefault: true },
    { code: "MOMS_0", name: "Moms 0% (Fritaget)", taxType: "vat", rate: "0", isDefault: false },
    { code: "SELSKAB_22", name: "Selskabsskat 22%", taxType: "other", rate: "22", isDefault: false },
  ],
};

// Finland VAT Rates (ALV)
export const FINLAND_TAX_TEMPLATE: TaxTemplate = {
  country: "FI",
  rates: [
    { code: "ALV_25_5", name: "ALV 25.5% (Yleinen)", taxType: "vat", rate: "25.5", isDefault: true },
    { code: "ALV_14", name: "ALV 14% (Alennettu)", taxType: "vat", rate: "14", isDefault: false },
    { code: "ALV_10", name: "ALV 10% (Alennettu)", taxType: "vat", rate: "10", isDefault: false },
    { code: "ALV_0", name: "ALV 0% (Veroton)", taxType: "vat", rate: "0", isDefault: false },
    { code: "YHTEIS_20", name: "Yhteisövero 20%", taxType: "other", rate: "20", isDefault: false },
  ],
};

// Norway VAT Rates (MVA)
export const NORWAY_TAX_TEMPLATE: TaxTemplate = {
  country: "NO",
  rates: [
    { code: "MVA_25", name: "MVA 25% (Alminnelig)", taxType: "vat", rate: "25", isDefault: true },
    { code: "MVA_15", name: "MVA 15% (Næringsmidler)", taxType: "vat", rate: "15", isDefault: false },
    { code: "MVA_12", name: "MVA 12% (Redusert)", taxType: "vat", rate: "12", isDefault: false },
    { code: "MVA_0", name: "MVA 0% (Fritatt)", taxType: "vat", rate: "0", isDefault: false },
    { code: "SKATT_22", name: "Selskapsskatt 22%", taxType: "other", rate: "22", isDefault: false },
  ],
};

// Ireland VAT Rates
export const IRELAND_TAX_TEMPLATE: TaxTemplate = {
  country: "IE",
  rates: [
    { code: "VAT_23", name: "VAT 23% (Standard)", taxType: "vat", rate: "23", isDefault: true },
    { code: "VAT_13_5", name: "VAT 13.5% (Reduced)", taxType: "vat", rate: "13.5", isDefault: false },
    { code: "VAT_9", name: "VAT 9% (Second Reduced)", taxType: "vat", rate: "9", isDefault: false },
    { code: "VAT_4_8", name: "VAT 4.8% (Livestock)", taxType: "vat", rate: "4.8", isDefault: false },
    { code: "VAT_0", name: "VAT 0% (Zero Rate)", taxType: "vat", rate: "0", isDefault: false },
    { code: "CORP_12_5", name: "Corporation Tax 12.5%", taxType: "other", rate: "12.5", isDefault: false },
  ],
};

// Luxembourg VAT Rates (TVA)
export const LUXEMBOURG_TAX_TEMPLATE: TaxTemplate = {
  country: "LU",
  rates: [
    { code: "TVA_17", name: "TVA 17% (Normal)", taxType: "vat", rate: "17", isDefault: true },
    { code: "TVA_14", name: "TVA 14% (Intermédiaire)", taxType: "vat", rate: "14", isDefault: false },
    { code: "TVA_8", name: "TVA 8% (Réduit)", taxType: "vat", rate: "8", isDefault: false },
    { code: "TVA_3", name: "TVA 3% (Super-réduit)", taxType: "vat", rate: "3", isDefault: false },
    { code: "TVA_0", name: "TVA 0% (Exonéré)", taxType: "vat", rate: "0", isDefault: false },
    { code: "IRC_17", name: "IRC 17% (Corporate)", taxType: "other", rate: "17", isDefault: false },
  ],
};

// Latvia VAT Rates (PVN)
export const LATVIA_TAX_TEMPLATE: TaxTemplate = {
  country: "LV",
  rates: [
    { code: "PVN_21", name: "PVN 21% (Standarta)", taxType: "vat", rate: "21", isDefault: true },
    { code: "PVN_12", name: "PVN 12% (Samazināta)", taxType: "vat", rate: "12", isDefault: false },
    { code: "PVN_5", name: "PVN 5% (Samazināta)", taxType: "vat", rate: "5", isDefault: false },
    { code: "PVN_0", name: "PVN 0% (Atbrīvots)", taxType: "vat", rate: "0", isDefault: false },
    { code: "UIN_20", name: "UIN 20% (Corporate)", taxType: "other", rate: "20", isDefault: false },
  ],
};

// Lithuania VAT Rates (PVM)
export const LITHUANIA_TAX_TEMPLATE: TaxTemplate = {
  country: "LT",
  rates: [
    { code: "PVM_21", name: "PVM 21% (Standartinis)", taxType: "vat", rate: "21", isDefault: true },
    { code: "PVM_9", name: "PVM 9% (Lengvatinis)", taxType: "vat", rate: "9", isDefault: false },
    { code: "PVM_5", name: "PVM 5% (Lengvatinis)", taxType: "vat", rate: "5", isDefault: false },
    { code: "PVM_0", name: "PVM 0% (Neapmokestinamas)", taxType: "vat", rate: "0", isDefault: false },
    { code: "PM_15", name: "Pelno mokestis 15%", taxType: "other", rate: "15", isDefault: false },
  ],
};

// Slovakia VAT Rates (DPH)
export const SLOVAKIA_TAX_TEMPLATE: TaxTemplate = {
  country: "SK",
  rates: [
    { code: "DPH_20", name: "DPH 20% (Základná)", taxType: "vat", rate: "20", isDefault: true },
    { code: "DPH_10", name: "DPH 10% (Znížená)", taxType: "vat", rate: "10", isDefault: false },
    { code: "DPH_0", name: "DPH 0% (Oslobodené)", taxType: "vat", rate: "0", isDefault: false },
    { code: "DPPO_21", name: "Daň z príjmov PO 21%", taxType: "other", rate: "21", isDefault: false },
  ],
};

// Slovenia VAT Rates (DDV)
export const SLOVENIA_TAX_TEMPLATE: TaxTemplate = {
  country: "SI",
  rates: [
    { code: "DDV_22", name: "DDV 22% (Splošna)", taxType: "vat", rate: "22", isDefault: true },
    { code: "DDV_9_5", name: "DDV 9.5% (Znižana)", taxType: "vat", rate: "9.5", isDefault: false },
    { code: "DDV_5", name: "DDV 5% (Znižana)", taxType: "vat", rate: "5", isDefault: false },
    { code: "DDV_0", name: "DDV 0% (Oproščeno)", taxType: "vat", rate: "0", isDefault: false },
    { code: "DDPO_19", name: "DDPO 19% (Corporate)", taxType: "other", rate: "19", isDefault: false },
  ],
};

// Croatia VAT Rates (PDV)
export const CROATIA_TAX_TEMPLATE: TaxTemplate = {
  country: "HR",
  rates: [
    { code: "PDV_25", name: "PDV 25% (Opća)", taxType: "vat", rate: "25", isDefault: true },
    { code: "PDV_13", name: "PDV 13% (Snižena)", taxType: "vat", rate: "13", isDefault: false },
    { code: "PDV_5", name: "PDV 5% (Snižena)", taxType: "vat", rate: "5", isDefault: false },
    { code: "PDV_0", name: "PDV 0% (Oslobođeno)", taxType: "vat", rate: "0", isDefault: false },
    { code: "PD_18", name: "Porez na dobit 18%", taxType: "other", rate: "18", isDefault: false },
  ],
};

// Cyprus VAT Rates (ΦΠΑ)
export const CYPRUS_TAX_TEMPLATE: TaxTemplate = {
  country: "CY",
  rates: [
    { code: "FPA_19", name: "ΦΠΑ 19% (Κανονικός)", taxType: "vat", rate: "19", isDefault: true },
    { code: "FPA_9", name: "ΦΠΑ 9% (Μειωμένος)", taxType: "vat", rate: "9", isDefault: false },
    { code: "FPA_5", name: "ΦΠΑ 5% (Μειωμένος)", taxType: "vat", rate: "5", isDefault: false },
    { code: "FPA_0", name: "ΦΠΑ 0% (Μηδενικός)", taxType: "vat", rate: "0", isDefault: false },
    { code: "CORP_12_5", name: "Φόρος εταιρειών 12.5%", taxType: "other", rate: "12.5", isDefault: false },
  ],
};

// Malta VAT Rates
export const MALTA_TAX_TEMPLATE: TaxTemplate = {
  country: "MT",
  rates: [
    { code: "VAT_18", name: "VAT 18% (Standard)", taxType: "vat", rate: "18", isDefault: true },
    { code: "VAT_7", name: "VAT 7% (Reduced)", taxType: "vat", rate: "7", isDefault: false },
    { code: "VAT_5", name: "VAT 5% (Reduced)", taxType: "vat", rate: "5", isDefault: false },
    { code: "VAT_0", name: "VAT 0% (Zero Rate)", taxType: "vat", rate: "0", isDefault: false },
    { code: "CORP_35", name: "Corporate Tax 35%", taxType: "other", rate: "35", isDefault: false },
  ],
};

// Iceland VAT Rates (VSK)
export const ICELAND_TAX_TEMPLATE: TaxTemplate = {
  country: "IS",
  rates: [
    { code: "VSK_24", name: "VSK 24% (Almennur)", taxType: "vat", rate: "24", isDefault: true },
    { code: "VSK_11", name: "VSK 11% (Lægri)", taxType: "vat", rate: "11", isDefault: false },
    { code: "VSK_0", name: "VSK 0% (Undanþegið)", taxType: "vat", rate: "0", isDefault: false },
    { code: "TEKJU_20", name: "Tekjuskattur 20%", taxType: "other", rate: "20", isDefault: false },
  ],
};

// United Arab Emirates VAT Rates
export const UAE_TAX_TEMPLATE: TaxTemplate = {
  country: "AE",
  rates: [
    { code: "VAT_5", name: "VAT 5% (Standard)", taxType: "vat", rate: "5", isDefault: true },
    { code: "VAT_0", name: "VAT 0% (Zero Rate)", taxType: "vat", rate: "0", isDefault: false },
    { code: "VAT_EXEMPT", name: "VAT Exempt", taxType: "vat", rate: "0", isDefault: false },
  ],
};

// Saudi Arabia VAT Rates
export const SAUDI_ARABIA_TAX_TEMPLATE: TaxTemplate = {
  country: "SA",
  rates: [
    { code: "VAT_15", name: "ضريبة القيمة المضافة 15%", taxType: "vat", rate: "15", isDefault: true },
    { code: "VAT_0", name: "ضريبة صفرية", taxType: "vat", rate: "0", isDefault: false },
    { code: "VAT_EXEMPT", name: "معفى من الضريبة", taxType: "vat", rate: "0", isDefault: false },
    { code: "ZAKAT_2_5", name: "الزكاة 2.5%", taxType: "other", rate: "2.5", isDefault: false },
    { code: "WHT_5", name: "ضريبة الاستقطاع 5%", taxType: "withholding", rate: "5", isDefault: false },
    { code: "WHT_15", name: "ضريبة الاستقطاع 15%", taxType: "withholding", rate: "15", isDefault: false },
    { code: "WHT_20", name: "ضريبة الاستقطاع 20%", taxType: "withholding", rate: "20", isDefault: false },
  ],
};

// Bahrain VAT Rates
export const BAHRAIN_TAX_TEMPLATE: TaxTemplate = {
  country: "BH",
  rates: [
    { code: "VAT_10", name: "VAT 10% (Standard)", taxType: "vat", rate: "10", isDefault: true },
    { code: "VAT_0", name: "VAT 0% (Zero Rate)", taxType: "vat", rate: "0", isDefault: false },
    { code: "VAT_EXEMPT", name: "VAT Exempt", taxType: "vat", rate: "0", isDefault: false },
  ],
};

// Oman VAT Rates
export const OMAN_TAX_TEMPLATE: TaxTemplate = {
  country: "OM",
  rates: [
    { code: "VAT_5", name: "VAT 5% (Standard)", taxType: "vat", rate: "5", isDefault: true },
    { code: "VAT_0", name: "VAT 0% (Zero Rate)", taxType: "vat", rate: "0", isDefault: false },
    { code: "VAT_EXEMPT", name: "VAT Exempt", taxType: "vat", rate: "0", isDefault: false },
    { code: "CORP_15", name: "Corporate Tax 15%", taxType: "other", rate: "15", isDefault: false },
  ],
};

// Qatar (No VAT yet, but has corporate tax)
export const QATAR_TAX_TEMPLATE: TaxTemplate = {
  country: "QA",
  rates: [
    { code: "NO_VAT", name: "No VAT", taxType: "vat", rate: "0", isDefault: true },
    { code: "CORP_10", name: "Corporate Tax 10%", taxType: "other", rate: "10", isDefault: false },
  ],
};

// Kuwait (No VAT yet)
export const KUWAIT_TAX_TEMPLATE: TaxTemplate = {
  country: "KW",
  rates: [
    { code: "NO_VAT", name: "No VAT", taxType: "vat", rate: "0", isDefault: true },
    { code: "CORP_15", name: "Corporate Tax 15%", taxType: "other", rate: "15", isDefault: false },
    { code: "ZAKAT_1", name: "Zakat 1%", taxType: "other", rate: "1", isDefault: false },
  ],
};

// Jordan VAT Rates
export const JORDAN_TAX_TEMPLATE: TaxTemplate = {
  country: "JO",
  rates: [
    { code: "GST_16", name: "ضريبة المبيعات 16%", taxType: "vat", rate: "16", isDefault: true },
    { code: "GST_4", name: "ضريبة المبيعات 4%", taxType: "vat", rate: "4", isDefault: false },
    { code: "GST_0", name: "معفى", taxType: "vat", rate: "0", isDefault: false },
    { code: "CORP_20", name: "ضريبة الدخل 20%", taxType: "other", rate: "20", isDefault: false },
  ],
};

// Lebanon VAT Rates
export const LEBANON_TAX_TEMPLATE: TaxTemplate = {
  country: "LB",
  rates: [
    { code: "TVA_11", name: "TVA 11%", taxType: "vat", rate: "11", isDefault: true },
    { code: "TVA_0", name: "TVA 0% (Exonéré)", taxType: "vat", rate: "0", isDefault: false },
    { code: "CORP_17", name: "Impôt sur les sociétés 17%", taxType: "other", rate: "17", isDefault: false },
  ],
};

// Egypt VAT Rates
export const EGYPT_TAX_TEMPLATE: TaxTemplate = {
  country: "EG",
  rates: [
    { code: "VAT_14", name: "ضريبة القيمة المضافة 14%", taxType: "vat", rate: "14", isDefault: true },
    { code: "VAT_0", name: "معفى من الضريبة", taxType: "vat", rate: "0", isDefault: false },
    { code: "CORP_22_5", name: "ضريبة الشركات 22.5%", taxType: "other", rate: "22.5", isDefault: false },
    { code: "WHT_5", name: "ضريبة الخصم 5%", taxType: "withholding", rate: "5", isDefault: false },
  ],
};

// Morocco VAT Rates
export const MOROCCO_TAX_TEMPLATE: TaxTemplate = {
  country: "MA",
  rates: [
    { code: "TVA_20", name: "TVA 20% (Normal)", taxType: "vat", rate: "20", isDefault: true },
    { code: "TVA_14", name: "TVA 14% (Réduit)", taxType: "vat", rate: "14", isDefault: false },
    { code: "TVA_10", name: "TVA 10% (Réduit)", taxType: "vat", rate: "10", isDefault: false },
    { code: "TVA_7", name: "TVA 7% (Réduit)", taxType: "vat", rate: "7", isDefault: false },
    { code: "TVA_0", name: "TVA 0% (Exonéré)", taxType: "vat", rate: "0", isDefault: false },
    { code: "IS_31", name: "Impôt sur les sociétés 31%", taxType: "other", rate: "31", isDefault: false },
  ],
};

// Tunisia VAT Rates
export const TUNISIA_TAX_TEMPLATE: TaxTemplate = {
  country: "TN",
  rates: [
    { code: "TVA_19", name: "TVA 19% (Normal)", taxType: "vat", rate: "19", isDefault: true },
    { code: "TVA_13", name: "TVA 13% (Réduit)", taxType: "vat", rate: "13", isDefault: false },
    { code: "TVA_7", name: "TVA 7% (Réduit)", taxType: "vat", rate: "7", isDefault: false },
    { code: "TVA_0", name: "TVA 0% (Exonéré)", taxType: "vat", rate: "0", isDefault: false },
    { code: "IS_25", name: "Impôt sur les sociétés 25%", taxType: "other", rate: "25", isDefault: false },
  ],
};

// Israel VAT Rates
export const ISRAEL_TAX_TEMPLATE: TaxTemplate = {
  country: "IL",
  rates: [
    { code: "VAT_17", name: "מע\"מ 17%", taxType: "vat", rate: "17", isDefault: true },
    { code: "VAT_0", name: "מע\"מ 0% (פטור)", taxType: "vat", rate: "0", isDefault: false },
    { code: "CORP_23", name: "מס חברות 23%", taxType: "other", rate: "23", isDefault: false },
  ],
};

// Pakistan Tax Rates
export const PAKISTAN_TAX_TEMPLATE: TaxTemplate = {
  country: "PK",
  rates: [
    { code: "GST_18", name: "GST 18% (Standard)", taxType: "vat", rate: "18", isDefault: true },
    { code: "GST_0", name: "GST 0% (Exempt)", taxType: "vat", rate: "0", isDefault: false },
    { code: "CORP_29", name: "Corporate Tax 29%", taxType: "other", rate: "29", isDefault: false },
    { code: "WHT_15", name: "Withholding Tax 15%", taxType: "withholding", rate: "15", isDefault: false },
  ],
};

// Russia VAT Rates (НДС)
export const RUSSIA_TAX_TEMPLATE: TaxTemplate = {
  country: "RU",
  rates: [
    { code: "NDS_20", name: "НДС 20% (Основная)", taxType: "vat", rate: "20", isDefault: true },
    { code: "NDS_10", name: "НДС 10% (Пониженная)", taxType: "vat", rate: "10", isDefault: false },
    { code: "NDS_0", name: "НДС 0% (Нулевая)", taxType: "vat", rate: "0", isDefault: false },
    { code: "PROFIT_20", name: "Налог на прибыль 20%", taxType: "other", rate: "20", isDefault: false },
  ],
};

// Kazakhstan VAT Rates (ҚҚС)
export const KAZAKHSTAN_TAX_TEMPLATE: TaxTemplate = {
  country: "KZ",
  rates: [
    { code: "QQS_12", name: "ҚҚС 12% (Стандарт)", taxType: "vat", rate: "12", isDefault: true },
    { code: "QQS_0", name: "ҚҚС 0% (Босатылған)", taxType: "vat", rate: "0", isDefault: false },
    { code: "KPN_20", name: "КПН 20% (Корпоративті)", taxType: "other", rate: "20", isDefault: false },
    { code: "WHT_15", name: "Табыс салығы 15%", taxType: "withholding", rate: "15", isDefault: false },
  ],
};

// Uzbekistan VAT Rates (QQS)
export const UZBEKISTAN_TAX_TEMPLATE: TaxTemplate = {
  country: "UZ",
  rates: [
    { code: "QQS_12", name: "QQS 12% (Standart)", taxType: "vat", rate: "12", isDefault: true },
    { code: "QQS_0", name: "QQS 0% (Ozod)", taxType: "vat", rate: "0", isDefault: false },
    { code: "PROFIT_15", name: "Foyda solig'i 15%", taxType: "other", rate: "15", isDefault: false },
    { code: "WHT_10", name: "Soliq ushlash 10%", taxType: "withholding", rate: "10", isDefault: false },
  ],
};

// Turkmenistan VAT Rates
export const TURKMENISTAN_TAX_TEMPLATE: TaxTemplate = {
  country: "TM",
  rates: [
    { code: "VAT_15", name: "VAT 15% (Standard)", taxType: "vat", rate: "15", isDefault: true },
    { code: "VAT_0", name: "VAT 0% (Exempt)", taxType: "vat", rate: "0", isDefault: false },
    { code: "CORP_8", name: "Corporate Tax 8%", taxType: "other", rate: "8", isDefault: false },
  ],
};

// Kyrgyzstan VAT Rates (КНС)
export const KYRGYZSTAN_TAX_TEMPLATE: TaxTemplate = {
  country: "KG",
  rates: [
    { code: "KNS_12", name: "КНС 12% (Стандарт)", taxType: "vat", rate: "12", isDefault: true },
    { code: "KNS_0", name: "КНС 0% (Бошотулган)", taxType: "vat", rate: "0", isDefault: false },
    { code: "PROFIT_10", name: "Киреше салыгы 10%", taxType: "other", rate: "10", isDefault: false },
  ],
};

// Tajikistan VAT Rates (АИА)
export const TAJIKISTAN_TAX_TEMPLATE: TaxTemplate = {
  country: "TJ",
  rates: [
    { code: "AIA_15", name: "АИА 15% (Стандарт)", taxType: "vat", rate: "15", isDefault: true },
    { code: "AIA_0", name: "АИА 0% (Озод)", taxType: "vat", rate: "0", isDefault: false },
    { code: "PROFIT_18", name: "Андози фоида 18%", taxType: "other", rate: "18", isDefault: false },
  ],
};

// Azerbaijan VAT Rates (ƏDV)
export const AZERBAIJAN_TAX_TEMPLATE: TaxTemplate = {
  country: "AZ",
  rates: [
    { code: "EDV_18", name: "ƏDV 18% (Standart)", taxType: "vat", rate: "18", isDefault: true },
    { code: "EDV_0", name: "ƏDV 0% (Azad)", taxType: "vat", rate: "0", isDefault: false },
    { code: "PROFIT_20", name: "Mənfəət vergisi 20%", taxType: "other", rate: "20", isDefault: false },
    { code: "WHT_10", name: "Vergi tutulması 10%", taxType: "withholding", rate: "10", isDefault: false },
  ],
};

// Georgia VAT Rates (დღგ)
export const GEORGIA_TAX_TEMPLATE: TaxTemplate = {
  country: "GE",
  rates: [
    { code: "DGG_18", name: "დღგ 18% (სტანდარტული)", taxType: "vat", rate: "18", isDefault: true },
    { code: "DGG_0", name: "დღგ 0% (გათავისუფლებული)", taxType: "vat", rate: "0", isDefault: false },
    { code: "PROFIT_15", name: "მოგების გადასახადი 15%", taxType: "other", rate: "15", isDefault: false },
  ],
};

// Armenia VAT Rates (Աdelays)
export const ARMENIA_TAX_TEMPLATE: TaxTemplate = {
  country: "AM",
  rates: [
    { code: "AAH_20", name: "Աdelays 20% (Ստdelays)", taxType: "vat", rate: "20", isDefault: true },
    { code: "AAH_0", name: "ԱAH 0% ( Delays)", taxType: "vat", rate: "0", isDefault: false },
    { code: "PROFIT_18", name: "Շdelays հdelays 18%", taxType: "other", rate: "18", isDefault: false },
  ],
};

// Ukraine VAT Rates (ПДВ)
export const UKRAINE_TAX_TEMPLATE: TaxTemplate = {
  country: "UA",
  rates: [
    { code: "PDV_20", name: "ПДВ 20% (Стандартна)", taxType: "vat", rate: "20", isDefault: true },
    { code: "PDV_7", name: "ПДВ 7% (Пільгова)", taxType: "vat", rate: "7", isDefault: false },
    { code: "PDV_0", name: "ПДВ 0% (Нульова)", taxType: "vat", rate: "0", isDefault: false },
    { code: "PROFIT_18", name: "Податок на прибуток 18%", taxType: "other", rate: "18", isDefault: false },
  ],
};

// Belarus VAT Rates (НДС)
export const BELARUS_TAX_TEMPLATE: TaxTemplate = {
  country: "BY",
  rates: [
    { code: "NDS_20", name: "НДС 20% (Стандартная)", taxType: "vat", rate: "20", isDefault: true },
    { code: "NDS_10", name: "НДС 10% (Пониженная)", taxType: "vat", rate: "10", isDefault: false },
    { code: "NDS_0", name: "НДС 0% (Нулевая)", taxType: "vat", rate: "0", isDefault: false },
    { code: "PROFIT_18", name: "Налог на прибыль 18%", taxType: "other", rate: "18", isDefault: false },
  ],
};

// Moldova VAT Rates (TVA)
export const MOLDOVA_TAX_TEMPLATE: TaxTemplate = {
  country: "MD",
  rates: [
    { code: "TVA_20", name: "TVA 20% (Standard)", taxType: "vat", rate: "20", isDefault: true },
    { code: "TVA_8", name: "TVA 8% (Redus)", taxType: "vat", rate: "8", isDefault: false },
    { code: "TVA_0", name: "TVA 0% (Scutit)", taxType: "vat", rate: "0", isDefault: false },
    { code: "PROFIT_12", name: "Impozit pe venit 12%", taxType: "other", rate: "12", isDefault: false },
  ],
};

// India GST Rates
export const INDIA_TAX_TEMPLATE: TaxTemplate = {
  country: "IN",
  rates: [
    { code: "GST_28", name: "GST 28% (Luxury)", taxType: "vat", rate: "28", isDefault: false },
    { code: "GST_18", name: "GST 18% (Standard)", taxType: "vat", rate: "18", isDefault: true },
    { code: "GST_12", name: "GST 12% (Standard)", taxType: "vat", rate: "12", isDefault: false },
    { code: "GST_5", name: "GST 5% (Low)", taxType: "vat", rate: "5", isDefault: false },
    { code: "GST_0", name: "GST 0% (Exempt)", taxType: "vat", rate: "0", isDefault: false },
    { code: "CORP_30", name: "Corporate Tax 30%", taxType: "other", rate: "30", isDefault: false },
    { code: "CORP_22", name: "Corporate Tax 22% (New Regime)", taxType: "other", rate: "22", isDefault: false },
    { code: "TDS_10", name: "TDS 10%", taxType: "withholding", rate: "10", isDefault: false },
  ],
};

// Bangladesh VAT Rates
export const BANGLADESH_TAX_TEMPLATE: TaxTemplate = {
  country: "BD",
  rates: [
    { code: "VAT_15", name: "VAT 15% (Standard)", taxType: "vat", rate: "15", isDefault: true },
    { code: "VAT_7_5", name: "VAT 7.5% (Reduced)", taxType: "vat", rate: "7.5", isDefault: false },
    { code: "VAT_5", name: "VAT 5% (Reduced)", taxType: "vat", rate: "5", isDefault: false },
    { code: "VAT_0", name: "VAT 0% (Exempt)", taxType: "vat", rate: "0", isDefault: false },
    { code: "CORP_27_5", name: "Corporate Tax 27.5%", taxType: "other", rate: "27.5", isDefault: false },
  ],
};

// Sri Lanka VAT Rates
export const SRI_LANKA_TAX_TEMPLATE: TaxTemplate = {
  country: "LK",
  rates: [
    { code: "VAT_18", name: "VAT 18% (Standard)", taxType: "vat", rate: "18", isDefault: true },
    { code: "VAT_0", name: "VAT 0% (Exempt)", taxType: "vat", rate: "0", isDefault: false },
    { code: "CORP_30", name: "Corporate Tax 30%", taxType: "other", rate: "30", isDefault: false },
    { code: "WHT_14", name: "Withholding Tax 14%", taxType: "withholding", rate: "14", isDefault: false },
  ],
};

// ═══════════════════════════════════════════════════════════════════════════
// EAST ASIA & SOUTHEAST ASIA
// ═══════════════════════════════════════════════════════════════════════════

// China VAT Rates (增值税)
export const CHINA_TAX_TEMPLATE: TaxTemplate = {
  country: "CN",
  rates: [
    { code: "VAT_13", name: "增值税 13% (一般)", taxType: "vat", rate: "13", isDefault: true },
    { code: "VAT_9", name: "增值税 9% (优惠)", taxType: "vat", rate: "9", isDefault: false },
    { code: "VAT_6", name: "增值税 6% (服务)", taxType: "vat", rate: "6", isDefault: false },
    { code: "VAT_0", name: "增值税 0% (免税)", taxType: "vat", rate: "0", isDefault: false },
    { code: "CORP_25", name: "企业所得税 25%", taxType: "other", rate: "25", isDefault: false },
    { code: "CORP_15", name: "企业所得税 15% (高新)", taxType: "other", rate: "15", isDefault: false },
    { code: "WHT_10", name: "预提税 10%", taxType: "withholding", rate: "10", isDefault: false },
  ],
};

// South Korea VAT Rates (부가가치세)
export const SOUTH_KOREA_TAX_TEMPLATE: TaxTemplate = {
  country: "KR",
  rates: [
    { code: "VAT_10", name: "부가가치세 10%", taxType: "vat", rate: "10", isDefault: true },
    { code: "VAT_0", name: "부가가치세 0% (면세)", taxType: "vat", rate: "0", isDefault: false },
    { code: "CORP_25", name: "법인세 25%", taxType: "other", rate: "25", isDefault: false },
    { code: "CORP_10", name: "법인세 10% (중소)", taxType: "other", rate: "10", isDefault: false },
    { code: "WHT_22", name: "원천징수 22%", taxType: "withholding", rate: "22", isDefault: false },
  ],
};

// Taiwan VAT Rates (營業稅)
export const TAIWAN_TAX_TEMPLATE: TaxTemplate = {
  country: "TW",
  rates: [
    { code: "VAT_5", name: "營業稅 5%", taxType: "vat", rate: "5", isDefault: true },
    { code: "VAT_0", name: "營業稅 0% (零稅率)", taxType: "vat", rate: "0", isDefault: false },
    { code: "CORP_20", name: "營利事業所得稅 20%", taxType: "other", rate: "20", isDefault: false },
    { code: "WHT_20", name: "扣繳稅 20%", taxType: "withholding", rate: "20", isDefault: false },
  ],
};

// Hong Kong (No VAT/GST)
export const HONG_KONG_TAX_TEMPLATE: TaxTemplate = {
  country: "HK",
  rates: [
    { code: "NO_VAT", name: "No VAT/GST", taxType: "vat", rate: "0", isDefault: true },
    { code: "PROFIT_16_5", name: "Profits Tax 16.5%", taxType: "other", rate: "16.5", isDefault: false },
    { code: "PROFIT_8_25", name: "Profits Tax 8.25% (2-tier)", taxType: "other", rate: "8.25", isDefault: false },
  ],
};

// Singapore GST Rates
export const SINGAPORE_TAX_TEMPLATE: TaxTemplate = {
  country: "SG",
  rates: [
    { code: "GST_9", name: "GST 9%", taxType: "vat", rate: "9", isDefault: true },
    { code: "GST_0", name: "GST 0% (Zero-rated)", taxType: "vat", rate: "0", isDefault: false },
    { code: "GST_EXEMPT", name: "GST Exempt", taxType: "vat", rate: "0", isDefault: false },
    { code: "CORP_17", name: "Corporate Tax 17%", taxType: "other", rate: "17", isDefault: false },
    { code: "WHT_15", name: "Withholding Tax 15%", taxType: "withholding", rate: "15", isDefault: false },
  ],
};

// Malaysia SST Rates
export const MALAYSIA_TAX_TEMPLATE: TaxTemplate = {
  country: "MY",
  rates: [
    { code: "SST_10", name: "Sales Tax 10%", taxType: "sales_tax", rate: "10", isDefault: true },
    { code: "SST_5", name: "Sales Tax 5%", taxType: "sales_tax", rate: "5", isDefault: false },
    { code: "SERVICE_8", name: "Service Tax 8%", taxType: "vat", rate: "8", isDefault: false },
    { code: "SST_0", name: "Sales Tax 0% (Exempt)", taxType: "sales_tax", rate: "0", isDefault: false },
    { code: "CORP_24", name: "Corporate Tax 24%", taxType: "other", rate: "24", isDefault: false },
    { code: "CORP_17", name: "Corporate Tax 17% (SME)", taxType: "other", rate: "17", isDefault: false },
  ],
};

// Thailand VAT Rates (ภาษีมูลค่าเพิ่ม)
export const THAILAND_TAX_TEMPLATE: TaxTemplate = {
  country: "TH",
  rates: [
    { code: "VAT_7", name: "VAT 7%", taxType: "vat", rate: "7", isDefault: true },
    { code: "VAT_0", name: "VAT 0% (Zero-rated)", taxType: "vat", rate: "0", isDefault: false },
    { code: "VAT_EXEMPT", name: "VAT Exempt", taxType: "vat", rate: "0", isDefault: false },
    { code: "CORP_20", name: "Corporate Tax 20%", taxType: "other", rate: "20", isDefault: false },
    { code: "WHT_15", name: "Withholding Tax 15%", taxType: "withholding", rate: "15", isDefault: false },
    { code: "WHT_3", name: "Withholding Tax 3%", taxType: "withholding", rate: "3", isDefault: false },
  ],
};

// Vietnam VAT Rates (Thuế GTGT)
export const VIETNAM_TAX_TEMPLATE: TaxTemplate = {
  country: "VN",
  rates: [
    { code: "VAT_10", name: "VAT 10% (Standard)", taxType: "vat", rate: "10", isDefault: true },
    { code: "VAT_8", name: "VAT 8% (Reduced)", taxType: "vat", rate: "8", isDefault: false },
    { code: "VAT_5", name: "VAT 5% (Reduced)", taxType: "vat", rate: "5", isDefault: false },
    { code: "VAT_0", name: "VAT 0% (Export)", taxType: "vat", rate: "0", isDefault: false },
    { code: "CORP_20", name: "Corporate Tax 20%", taxType: "other", rate: "20", isDefault: false },
    { code: "WHT_10", name: "Withholding Tax 10%", taxType: "withholding", rate: "10", isDefault: false },
  ],
};

// Indonesia VAT Rates (PPN)
export const INDONESIA_TAX_TEMPLATE: TaxTemplate = {
  country: "ID",
  rates: [
    { code: "PPN_11", name: "PPN 11%", taxType: "vat", rate: "11", isDefault: true },
    { code: "PPN_0", name: "PPN 0% (Export)", taxType: "vat", rate: "0", isDefault: false },
    { code: "PPN_EXEMPT", name: "PPN Exempt", taxType: "vat", rate: "0", isDefault: false },
    { code: "PPH_22", name: "PPh 22% (Corporate)", taxType: "other", rate: "22", isDefault: false },
    { code: "WHT_20", name: "Withholding Tax 20%", taxType: "withholding", rate: "20", isDefault: false },
    { code: "WHT_2", name: "Withholding Tax 2%", taxType: "withholding", rate: "2", isDefault: false },
  ],
};

// Philippines VAT Rates
export const PHILIPPINES_TAX_TEMPLATE: TaxTemplate = {
  country: "PH",
  rates: [
    { code: "VAT_12", name: "VAT 12%", taxType: "vat", rate: "12", isDefault: true },
    { code: "VAT_0", name: "VAT 0% (Zero-rated)", taxType: "vat", rate: "0", isDefault: false },
    { code: "VAT_EXEMPT", name: "VAT Exempt", taxType: "vat", rate: "0", isDefault: false },
    { code: "CORP_25", name: "Corporate Tax 25%", taxType: "other", rate: "25", isDefault: false },
    { code: "CORP_20", name: "Corporate Tax 20% (SME)", taxType: "other", rate: "20", isDefault: false },
    { code: "WHT_15", name: "Withholding Tax 15%", taxType: "withholding", rate: "15", isDefault: false },
  ],
};

// ═══════════════════════════════════════════════════════════════════════════
// LATIN AMERICA
// ═══════════════════════════════════════════════════════════════════════════

// Brazil Tax Rates (complex system)
export const BRAZIL_TAX_TEMPLATE: TaxTemplate = {
  country: "BR",
  rates: [
    { code: "ICMS_18", name: "ICMS 18% (SP)", taxType: "vat", rate: "18", isDefault: true },
    { code: "ICMS_17", name: "ICMS 17% (Other states)", taxType: "vat", rate: "17", isDefault: false },
    { code: "ICMS_12", name: "ICMS 12% (Interstate)", taxType: "vat", rate: "12", isDefault: false },
    { code: "ICMS_7", name: "ICMS 7% (Interstate)", taxType: "vat", rate: "7", isDefault: false },
    { code: "IPI_10", name: "IPI 10% (Industrial)", taxType: "excise", rate: "10", isDefault: false },
    { code: "ISS_5", name: "ISS 5% (Services)", taxType: "vat", rate: "5", isDefault: false },
    { code: "PIS_1_65", name: "PIS 1.65%", taxType: "other", rate: "1.65", isDefault: false },
    { code: "COFINS_7_6", name: "COFINS 7.6%", taxType: "other", rate: "7.6", isDefault: false },
    { code: "IRPJ_15", name: "IRPJ 15% (Corporate)", taxType: "other", rate: "15", isDefault: false },
    { code: "CSLL_9", name: "CSLL 9%", taxType: "other", rate: "9", isDefault: false },
  ],
};

// Mexico VAT Rates (IVA)
export const MEXICO_TAX_TEMPLATE: TaxTemplate = {
  country: "MX",
  rates: [
    { code: "IVA_16", name: "IVA 16%", taxType: "vat", rate: "16", isDefault: true },
    { code: "IVA_8", name: "IVA 8% (Frontera)", taxType: "vat", rate: "8", isDefault: false },
    { code: "IVA_0", name: "IVA 0% (Tasa cero)", taxType: "vat", rate: "0", isDefault: false },
    { code: "IVA_EXEMPT", name: "IVA Exento", taxType: "vat", rate: "0", isDefault: false },
    { code: "ISR_30", name: "ISR 30% (Corporate)", taxType: "other", rate: "30", isDefault: false },
    { code: "ISR_10", name: "ISR 10% (Withholding)", taxType: "withholding", rate: "10", isDefault: false },
  ],
};

// Argentina VAT Rates (IVA)
export const ARGENTINA_TAX_TEMPLATE: TaxTemplate = {
  country: "AR",
  rates: [
    { code: "IVA_21", name: "IVA 21% (General)", taxType: "vat", rate: "21", isDefault: true },
    { code: "IVA_27", name: "IVA 27% (Servicios)", taxType: "vat", rate: "27", isDefault: false },
    { code: "IVA_10_5", name: "IVA 10.5% (Reducido)", taxType: "vat", rate: "10.5", isDefault: false },
    { code: "IVA_0", name: "IVA 0% (Exento)", taxType: "vat", rate: "0", isDefault: false },
    { code: "IIGG_35", name: "Impuesto a las Ganancias 35%", taxType: "other", rate: "35", isDefault: false },
    { code: "RET_3", name: "Retención 3%", taxType: "withholding", rate: "3", isDefault: false },
  ],
};

// Chile VAT Rates (IVA)
export const CHILE_TAX_TEMPLATE: TaxTemplate = {
  country: "CL",
  rates: [
    { code: "IVA_19", name: "IVA 19%", taxType: "vat", rate: "19", isDefault: true },
    { code: "IVA_0", name: "IVA 0% (Exento)", taxType: "vat", rate: "0", isDefault: false },
    { code: "RENTA_27", name: "Impuesto de Primera Categoría 27%", taxType: "other", rate: "27", isDefault: false },
    { code: "RET_35", name: "Retención 35%", taxType: "withholding", rate: "35", isDefault: false },
  ],
};

// Colombia VAT Rates (IVA)
export const COLOMBIA_TAX_TEMPLATE: TaxTemplate = {
  country: "CO",
  rates: [
    { code: "IVA_19", name: "IVA 19% (General)", taxType: "vat", rate: "19", isDefault: true },
    { code: "IVA_5", name: "IVA 5% (Reducido)", taxType: "vat", rate: "5", isDefault: false },
    { code: "IVA_0", name: "IVA 0% (Excluido)", taxType: "vat", rate: "0", isDefault: false },
    { code: "RENTA_35", name: "Impuesto de Renta 35%", taxType: "other", rate: "35", isDefault: false },
    { code: "RETE_11", name: "Retención 11%", taxType: "withholding", rate: "11", isDefault: false },
    { code: "RETE_4", name: "Retención 4%", taxType: "withholding", rate: "4", isDefault: false },
  ],
};

// Peru VAT Rates (IGV)
export const PERU_TAX_TEMPLATE: TaxTemplate = {
  country: "PE",
  rates: [
    { code: "IGV_18", name: "IGV 18%", taxType: "vat", rate: "18", isDefault: true },
    { code: "IGV_0", name: "IGV 0% (Exonerado)", taxType: "vat", rate: "0", isDefault: false },
    { code: "RENTA_29_5", name: "Impuesto a la Renta 29.5%", taxType: "other", rate: "29.5", isDefault: false },
    { code: "RET_8", name: "Retención 8%", taxType: "withholding", rate: "8", isDefault: false },
  ],
};

// ═══════════════════════════════════════════════════════════════════════════
// SUB-SAHARAN AFRICA
// ═══════════════════════════════════════════════════════════════════════════

// South Africa VAT Rates
export const SOUTH_AFRICA_TAX_TEMPLATE: TaxTemplate = {
  country: "ZA",
  rates: [
    { code: "VAT_15", name: "VAT 15%", taxType: "vat", rate: "15", isDefault: true },
    { code: "VAT_0", name: "VAT 0% (Zero-rated)", taxType: "vat", rate: "0", isDefault: false },
    { code: "VAT_EXEMPT", name: "VAT Exempt", taxType: "vat", rate: "0", isDefault: false },
    { code: "CIT_27", name: "Corporate Income Tax 27%", taxType: "other", rate: "27", isDefault: false },
    { code: "DIV_20", name: "Dividends Tax 20%", taxType: "withholding", rate: "20", isDefault: false },
    { code: "WHT_15", name: "Withholding Tax 15%", taxType: "withholding", rate: "15", isDefault: false },
  ],
};

// Nigeria VAT Rates
export const NIGERIA_TAX_TEMPLATE: TaxTemplate = {
  country: "NG",
  rates: [
    { code: "VAT_7_5", name: "VAT 7.5%", taxType: "vat", rate: "7.5", isDefault: true },
    { code: "VAT_0", name: "VAT 0% (Exempt)", taxType: "vat", rate: "0", isDefault: false },
    { code: "CIT_30", name: "Corporate Income Tax 30%", taxType: "other", rate: "30", isDefault: false },
    { code: "CIT_20", name: "Corporate Income Tax 20% (SME)", taxType: "other", rate: "20", isDefault: false },
    { code: "WHT_10", name: "Withholding Tax 10%", taxType: "withholding", rate: "10", isDefault: false },
    { code: "WHT_5", name: "Withholding Tax 5%", taxType: "withholding", rate: "5", isDefault: false },
  ],
};

// Kenya VAT Rates
export const KENYA_TAX_TEMPLATE: TaxTemplate = {
  country: "KE",
  rates: [
    { code: "VAT_16", name: "VAT 16%", taxType: "vat", rate: "16", isDefault: true },
    { code: "VAT_8", name: "VAT 8% (Petroleum)", taxType: "vat", rate: "8", isDefault: false },
    { code: "VAT_0", name: "VAT 0% (Zero-rated)", taxType: "vat", rate: "0", isDefault: false },
    { code: "VAT_EXEMPT", name: "VAT Exempt", taxType: "vat", rate: "0", isDefault: false },
    { code: "CIT_30", name: "Corporate Income Tax 30%", taxType: "other", rate: "30", isDefault: false },
    { code: "WHT_15", name: "Withholding Tax 15%", taxType: "withholding", rate: "15", isDefault: false },
    { code: "WHT_5", name: "Withholding Tax 5%", taxType: "withholding", rate: "5", isDefault: false },
  ],
};

// Ghana VAT Rates
export const GHANA_TAX_TEMPLATE: TaxTemplate = {
  country: "GH",
  rates: [
    { code: "VAT_15", name: "VAT 15%", taxType: "vat", rate: "15", isDefault: true },
    { code: "NHIL_2_5", name: "NHIL 2.5%", taxType: "vat", rate: "2.5", isDefault: false },
    { code: "GETFL_2_5", name: "GETFund Levy 2.5%", taxType: "vat", rate: "2.5", isDefault: false },
    { code: "VAT_0", name: "VAT 0% (Exempt)", taxType: "vat", rate: "0", isDefault: false },
    { code: "CIT_25", name: "Corporate Income Tax 25%", taxType: "other", rate: "25", isDefault: false },
    { code: "WHT_15", name: "Withholding Tax 15%", taxType: "withholding", rate: "15", isDefault: false },
  ],
};

// ═══════════════════════════════════════════════════════════════════════════
// OCEANIA
// ═══════════════════════════════════════════════════════════════════════════

// New Zealand GST Rates
export const NEW_ZEALAND_TAX_TEMPLATE: TaxTemplate = {
  country: "NZ",
  rates: [
    { code: "GST_15", name: "GST 15%", taxType: "vat", rate: "15", isDefault: true },
    { code: "GST_0", name: "GST 0% (Zero-rated)", taxType: "vat", rate: "0", isDefault: false },
    { code: "GST_EXEMPT", name: "GST Exempt", taxType: "vat", rate: "0", isDefault: false },
    { code: "CORP_28", name: "Corporate Tax 28%", taxType: "other", rate: "28", isDefault: false },
    { code: "RWT_33", name: "Resident Withholding Tax 33%", taxType: "withholding", rate: "33", isDefault: false },
    { code: "NRWT_15", name: "Non-Resident Withholding Tax 15%", taxType: "withholding", rate: "15", isDefault: false },
  ],
};

// EU Standard VAT Rates (simplified)
export const EU_STANDARD_TAX_TEMPLATE: TaxTemplate = {
  country: "EU",
  rates: [
    { code: "VAT_STANDARD", name: "Standard VAT Rate", taxType: "vat", rate: "21", isDefault: true },
    { code: "VAT_REDUCED", name: "Reduced VAT Rate", taxType: "vat", rate: "10", isDefault: false },
    { code: "VAT_SUPER_REDUCED", name: "Super Reduced VAT Rate", taxType: "vat", rate: "5", isDefault: false },
    { code: "VAT_ZERO", name: "Zero VAT Rate", taxType: "vat", rate: "0", isDefault: false },
  ],
};

// All tax templates
export const ALL_TAX_TEMPLATES: TaxTemplate[] = [
  // Global
  TURKEY_TAX_TEMPLATE,
  US_TAX_TEMPLATE,
  UK_TAX_TEMPLATE,
  CANADA_TAX_TEMPLATE,
  AUSTRALIA_TAX_TEMPLATE,
  JAPAN_TAX_TEMPLATE,
  // Western Europe
  GERMANY_TAX_TEMPLATE,
  FRANCE_TAX_TEMPLATE,
  NETHERLANDS_TAX_TEMPLATE,
  BELGIUM_TAX_TEMPLATE,
  AUSTRIA_TAX_TEMPLATE,
  SWITZERLAND_TAX_TEMPLATE,
  LUXEMBOURG_TAX_TEMPLATE,
  IRELAND_TAX_TEMPLATE,
  // Southern Europe
  ITALY_TAX_TEMPLATE,
  SPAIN_TAX_TEMPLATE,
  PORTUGAL_TAX_TEMPLATE,
  GREECE_TAX_TEMPLATE,
  CYPRUS_TAX_TEMPLATE,
  MALTA_TAX_TEMPLATE,
  // Northern Europe
  SWEDEN_TAX_TEMPLATE,
  DENMARK_TAX_TEMPLATE,
  FINLAND_TAX_TEMPLATE,
  NORWAY_TAX_TEMPLATE,
  ICELAND_TAX_TEMPLATE,
  // Baltic States
  ESTONIA_TAX_TEMPLATE,
  LATVIA_TAX_TEMPLATE,
  LITHUANIA_TAX_TEMPLATE,
  // Central/Eastern Europe
  POLAND_TAX_TEMPLATE,
  CZECH_TAX_TEMPLATE,
  HUNGARY_TAX_TEMPLATE,
  SLOVAKIA_TAX_TEMPLATE,
  SLOVENIA_TAX_TEMPLATE,
  CROATIA_TAX_TEMPLATE,
  ROMANIA_TAX_TEMPLATE,
  BULGARIA_TAX_TEMPLATE,
  // Middle East - GCC
  UAE_TAX_TEMPLATE,
  SAUDI_ARABIA_TAX_TEMPLATE,
  BAHRAIN_TAX_TEMPLATE,
  OMAN_TAX_TEMPLATE,
  QATAR_TAX_TEMPLATE,
  KUWAIT_TAX_TEMPLATE,
  // Middle East - Levant
  JORDAN_TAX_TEMPLATE,
  LEBANON_TAX_TEMPLATE,
  ISRAEL_TAX_TEMPLATE,
  // North Africa
  EGYPT_TAX_TEMPLATE,
  MOROCCO_TAX_TEMPLATE,
  TUNISIA_TAX_TEMPLATE,
  // South Asia
  PAKISTAN_TAX_TEMPLATE,
  INDIA_TAX_TEMPLATE,
  BANGLADESH_TAX_TEMPLATE,
  SRI_LANKA_TAX_TEMPLATE,
  // Russia & CIS
  RUSSIA_TAX_TEMPLATE,
  UKRAINE_TAX_TEMPLATE,
  BELARUS_TAX_TEMPLATE,
  MOLDOVA_TAX_TEMPLATE,
  // Caucasus
  AZERBAIJAN_TAX_TEMPLATE,
  GEORGIA_TAX_TEMPLATE,
  ARMENIA_TAX_TEMPLATE,
  // Central Asia (Turkic Republics)
  KAZAKHSTAN_TAX_TEMPLATE,
  UZBEKISTAN_TAX_TEMPLATE,
  TURKMENISTAN_TAX_TEMPLATE,
  KYRGYZSTAN_TAX_TEMPLATE,
  TAJIKISTAN_TAX_TEMPLATE,
  // East Asia
  CHINA_TAX_TEMPLATE,
  SOUTH_KOREA_TAX_TEMPLATE,
  TAIWAN_TAX_TEMPLATE,
  HONG_KONG_TAX_TEMPLATE,
  // Southeast Asia
  SINGAPORE_TAX_TEMPLATE,
  MALAYSIA_TAX_TEMPLATE,
  THAILAND_TAX_TEMPLATE,
  VIETNAM_TAX_TEMPLATE,
  INDONESIA_TAX_TEMPLATE,
  PHILIPPINES_TAX_TEMPLATE,
  // Latin America
  BRAZIL_TAX_TEMPLATE,
  MEXICO_TAX_TEMPLATE,
  ARGENTINA_TAX_TEMPLATE,
  CHILE_TAX_TEMPLATE,
  COLOMBIA_TAX_TEMPLATE,
  PERU_TAX_TEMPLATE,
  // Sub-Saharan Africa
  SOUTH_AFRICA_TAX_TEMPLATE,
  NIGERIA_TAX_TEMPLATE,
  KENYA_TAX_TEMPLATE,
  GHANA_TAX_TEMPLATE,
  // Oceania
  NEW_ZEALAND_TAX_TEMPLATE,
  // Generic EU
  EU_STANDARD_TAX_TEMPLATE,
];
