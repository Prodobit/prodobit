/**
 * Chart of Accounts Templates for different accounting standards
 * TDHP (Turkey), US GAAP, IFRS
 */

export interface CoaTemplateAccount {
  code: string;
  name: string;
  nameEn: string;
  accountType: "asset" | "liability" | "equity" | "revenue" | "expense";
  parentCode: string | null;
  level: number;
  isGroup: boolean;
  reportCategory?: string;
}

export interface CoaTemplate {
  code: string;
  name: string;
  country: string | null;
  description: string;
  accounts: CoaTemplateAccount[];
}

// ═══════════════════════════════════════════════════════════════════════════
// TDHP - Türkiye Tekdüzen Hesap Planı (Turkey Uniform Chart of Accounts)
// ═══════════════════════════════════════════════════════════════════════════

export const TDHP_TEMPLATE: CoaTemplate = {
  code: "TDHP",
  name: "Türkiye Tekdüzen Hesap Planı",
  country: "TR",
  description: "Türkiye'de kullanılan resmi tekdüzen hesap planı",
  accounts: [
    // ═══════════════════════════════════════════════════════════════════════════
    // 1 - DÖNEN VARLIKLAR (Current Assets)
    // ═══════════════════════════════════════════════════════════════════════════
    { code: "1", name: "DÖNEN VARLIKLAR", nameEn: "Current Assets", accountType: "asset", parentCode: null, level: 1, isGroup: true, reportCategory: "current_assets" },

    // 10 - Hazır Değerler
    { code: "10", name: "HAZIR DEĞERLER", nameEn: "Cash and Cash Equivalents", accountType: "asset", parentCode: "1", level: 2, isGroup: true, reportCategory: "current_assets" },
    { code: "100", name: "KASA", nameEn: "Cash on Hand", accountType: "asset", parentCode: "10", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "101", name: "ALINAN ÇEKLER", nameEn: "Checks Received", accountType: "asset", parentCode: "10", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "102", name: "BANKALAR", nameEn: "Banks", accountType: "asset", parentCode: "10", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "103", name: "VERİLEN ÇEKLER VE ÖDEME EMİRLERİ (-)", nameEn: "Checks Given and Payment Orders", accountType: "asset", parentCode: "10", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "108", name: "DİĞER HAZIR DEĞERLER", nameEn: "Other Cash Equivalents", accountType: "asset", parentCode: "10", level: 3, isGroup: false, reportCategory: "current_assets" },

    // 11 - Menkul Kıymetler
    { code: "11", name: "MENKUL KIYMETLER", nameEn: "Marketable Securities", accountType: "asset", parentCode: "1", level: 2, isGroup: true, reportCategory: "current_assets" },
    { code: "110", name: "HİSSE SENETLERİ", nameEn: "Stocks", accountType: "asset", parentCode: "11", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "111", name: "ÖZEL KESİM TAHVİL, SENET VE BONOLARI", nameEn: "Private Sector Bonds", accountType: "asset", parentCode: "11", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "112", name: "KAMU KESİMİ TAHVİL, SENET VE BONOLARI", nameEn: "Public Sector Bonds", accountType: "asset", parentCode: "11", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "118", name: "DİĞER MENKUL KIYMETLER", nameEn: "Other Securities", accountType: "asset", parentCode: "11", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "119", name: "MENKUL KIYMETLER DEĞER DÜŞÜKLÜĞÜ KARŞILIĞI (-)", nameEn: "Allowance for Securities", accountType: "asset", parentCode: "11", level: 3, isGroup: false, reportCategory: "current_assets" },

    // 12 - Ticari Alacaklar
    { code: "12", name: "TİCARİ ALACAKLAR", nameEn: "Trade Receivables", accountType: "asset", parentCode: "1", level: 2, isGroup: true, reportCategory: "current_assets" },
    { code: "120", name: "ALICILAR", nameEn: "Customers", accountType: "asset", parentCode: "12", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "121", name: "ALACAK SENETLERİ", nameEn: "Notes Receivable", accountType: "asset", parentCode: "12", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "122", name: "ALACAK SENETLERİ REESKONTU (-)", nameEn: "Discount on Notes Receivable", accountType: "asset", parentCode: "12", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "126", name: "VERİLEN DEPOZİTO VE TEMİNATLAR", nameEn: "Deposits and Guarantees Given", accountType: "asset", parentCode: "12", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "128", name: "ŞÜPHELİ TİCARİ ALACAKLAR", nameEn: "Doubtful Trade Receivables", accountType: "asset", parentCode: "12", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "129", name: "ŞÜPHELİ TİCARİ ALACAKLAR KARŞILIĞI (-)", nameEn: "Allowance for Doubtful Receivables", accountType: "asset", parentCode: "12", level: 3, isGroup: false, reportCategory: "current_assets" },

    // 13 - Diğer Alacaklar
    { code: "13", name: "DİĞER ALACAKLAR", nameEn: "Other Receivables", accountType: "asset", parentCode: "1", level: 2, isGroup: true, reportCategory: "current_assets" },
    { code: "131", name: "ORTAKLARDAN ALACAKLAR", nameEn: "Receivables from Shareholders", accountType: "asset", parentCode: "13", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "132", name: "İŞTİRAKLERDEN ALACAKLAR", nameEn: "Receivables from Affiliates", accountType: "asset", parentCode: "13", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "133", name: "BAĞLI ORTAKLIKLARDAN ALACAKLAR", nameEn: "Receivables from Subsidiaries", accountType: "asset", parentCode: "13", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "135", name: "PERSONELDEN ALACAKLAR", nameEn: "Receivables from Personnel", accountType: "asset", parentCode: "13", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "136", name: "DİĞER ÇEŞİTLİ ALACAKLAR", nameEn: "Other Miscellaneous Receivables", accountType: "asset", parentCode: "13", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "138", name: "ŞÜPHELİ DİĞER ALACAKLAR", nameEn: "Doubtful Other Receivables", accountType: "asset", parentCode: "13", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "139", name: "ŞÜPHELİ DİĞER ALACAKLAR KARŞILIĞI (-)", nameEn: "Allowance for Doubtful Other Receivables", accountType: "asset", parentCode: "13", level: 3, isGroup: false, reportCategory: "current_assets" },

    // 15 - Stoklar
    { code: "15", name: "STOKLAR", nameEn: "Inventories", accountType: "asset", parentCode: "1", level: 2, isGroup: true, reportCategory: "current_assets" },
    { code: "150", name: "İLK MADDE VE MALZEME", nameEn: "Raw Materials", accountType: "asset", parentCode: "15", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "151", name: "YARI MAMULLER - ÜRETİM", nameEn: "Work in Process", accountType: "asset", parentCode: "15", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "152", name: "MAMULLER", nameEn: "Finished Goods", accountType: "asset", parentCode: "15", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "153", name: "TİCARİ MALLAR", nameEn: "Merchandise", accountType: "asset", parentCode: "15", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "157", name: "DİĞER STOKLAR", nameEn: "Other Inventories", accountType: "asset", parentCode: "15", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "158", name: "STOK DEĞER DÜŞÜKLÜĞÜ KARŞILIĞI (-)", nameEn: "Allowance for Inventory Obsolescence", accountType: "asset", parentCode: "15", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "159", name: "VERİLEN SİPARİŞ AVANSLARI", nameEn: "Advances for Purchase Orders", accountType: "asset", parentCode: "15", level: 3, isGroup: false, reportCategory: "current_assets" },

    // 17 - Yıllara Yaygın İnşaat
    { code: "17", name: "YILLARA YAYGIN İNŞAAT VE ONARIM MALİYETLERİ", nameEn: "Construction in Progress", accountType: "asset", parentCode: "1", level: 2, isGroup: true, reportCategory: "current_assets" },
    { code: "170", name: "YILLARA YAYGIN İNŞAAT VE ONARIM MALİYETLERİ", nameEn: "Construction Costs", accountType: "asset", parentCode: "17", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "178", name: "YILLARA YAYGIN İNŞAAT ENFLASYON DÜZELTMESİ", nameEn: "Inflation Adjustment - Construction", accountType: "asset", parentCode: "17", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "179", name: "TAMAMLANMİŞ YILLARA YAYGIN İNŞAAT MALİYETLERİ", nameEn: "Completed Construction Costs", accountType: "asset", parentCode: "17", level: 3, isGroup: false, reportCategory: "current_assets" },

    // 18 - Gelecek Aylara Ait Giderler
    { code: "18", name: "GELECEK AYLARA AİT GİDERLER VE GELİR TAHAKKUKLARI", nameEn: "Prepaid Expenses and Accrued Income", accountType: "asset", parentCode: "1", level: 2, isGroup: true, reportCategory: "current_assets" },
    { code: "180", name: "GELECEK AYLARA AİT GİDERLER", nameEn: "Prepaid Expenses", accountType: "asset", parentCode: "18", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "181", name: "GELİR TAHAKKUKLARI", nameEn: "Accrued Income", accountType: "asset", parentCode: "18", level: 3, isGroup: false, reportCategory: "current_assets" },

    // 19 - Diğer Dönen Varlıklar
    { code: "19", name: "DİĞER DÖNEN VARLIKLAR", nameEn: "Other Current Assets", accountType: "asset", parentCode: "1", level: 2, isGroup: true, reportCategory: "current_assets" },
    { code: "190", name: "DEVREDEN KDV", nameEn: "VAT Carried Forward", accountType: "asset", parentCode: "19", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "191", name: "İNDİRİLECEK KDV", nameEn: "VAT Deductible", accountType: "asset", parentCode: "19", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "192", name: "DİĞER KDV", nameEn: "Other VAT", accountType: "asset", parentCode: "19", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "193", name: "PEŞİN ÖDENEN VERGİLER VE FONLAR", nameEn: "Prepaid Taxes", accountType: "asset", parentCode: "19", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "195", name: "İŞ AVANSLARI", nameEn: "Work Advances", accountType: "asset", parentCode: "19", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "196", name: "PERSONEL AVANSLARI", nameEn: "Personnel Advances", accountType: "asset", parentCode: "19", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "197", name: "SAYIM VE TESELLÜM NOKSANLARI", nameEn: "Inventory Shortages", accountType: "asset", parentCode: "19", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "198", name: "DİĞER ÇEŞİTLİ DÖNEN VARLIKLAR", nameEn: "Other Miscellaneous Current Assets", accountType: "asset", parentCode: "19", level: 3, isGroup: false, reportCategory: "current_assets" },
    { code: "199", name: "DİĞER DÖNEN VARLIKLAR KARŞILIĞI (-)", nameEn: "Allowance for Other Current Assets", accountType: "asset", parentCode: "19", level: 3, isGroup: false, reportCategory: "current_assets" },

    // ═══════════════════════════════════════════════════════════════════════════
    // 2 - DURAN VARLIKLAR (Non-Current Assets)
    // ═══════════════════════════════════════════════════════════════════════════
    { code: "2", name: "DURAN VARLIKLAR", nameEn: "Non-Current Assets", accountType: "asset", parentCode: null, level: 1, isGroup: true, reportCategory: "fixed_assets" },

    // 22 - Ticari Alacaklar (Uzun Vadeli)
    { code: "22", name: "TİCARİ ALACAKLAR", nameEn: "Long-term Trade Receivables", accountType: "asset", parentCode: "2", level: 2, isGroup: true, reportCategory: "fixed_assets" },
    { code: "220", name: "ALICILAR", nameEn: "Long-term Customers", accountType: "asset", parentCode: "22", level: 3, isGroup: false, reportCategory: "fixed_assets" },
    { code: "221", name: "ALACAK SENETLERİ", nameEn: "Long-term Notes Receivable", accountType: "asset", parentCode: "22", level: 3, isGroup: false, reportCategory: "fixed_assets" },
    { code: "222", name: "ALACAK SENETLERİ REESKONTU (-)", nameEn: "Discount on Long-term Notes", accountType: "asset", parentCode: "22", level: 3, isGroup: false, reportCategory: "fixed_assets" },
    { code: "226", name: "VERİLEN DEPOZİTO VE TEMİNATLAR", nameEn: "Long-term Deposits Given", accountType: "asset", parentCode: "22", level: 3, isGroup: false, reportCategory: "fixed_assets" },

    // 24 - Mali Duran Varlıklar
    { code: "24", name: "MALİ DURAN VARLIKLAR", nameEn: "Financial Fixed Assets", accountType: "asset", parentCode: "2", level: 2, isGroup: true, reportCategory: "fixed_assets" },
    { code: "240", name: "BAĞLI MENKUL KIYMETLER", nameEn: "Long-term Securities", accountType: "asset", parentCode: "24", level: 3, isGroup: false, reportCategory: "fixed_assets" },
    { code: "241", name: "BAĞLI MENKUL KIYMETLER DEĞER DÜŞÜKLÜĞÜ KARŞILIĞI (-)", nameEn: "Allowance for Long-term Securities", accountType: "asset", parentCode: "24", level: 3, isGroup: false, reportCategory: "fixed_assets" },
    { code: "242", name: "İŞTİRAKLER", nameEn: "Investments in Affiliates", accountType: "asset", parentCode: "24", level: 3, isGroup: false, reportCategory: "fixed_assets" },
    { code: "243", name: "İŞTİRAKLERE SERMAYE TAAHHÜTLERİ (-)", nameEn: "Capital Commitments to Affiliates", accountType: "asset", parentCode: "24", level: 3, isGroup: false, reportCategory: "fixed_assets" },
    { code: "244", name: "İŞTİRAKLER SERMAYE PAYLARI DEĞER DÜŞÜKLÜĞÜ KARŞILIĞI (-)", nameEn: "Allowance for Affiliates", accountType: "asset", parentCode: "24", level: 3, isGroup: false, reportCategory: "fixed_assets" },
    { code: "245", name: "BAĞLI ORTAKLIKLAR", nameEn: "Subsidiaries", accountType: "asset", parentCode: "24", level: 3, isGroup: false, reportCategory: "fixed_assets" },
    { code: "246", name: "BAĞLI ORTAKLIKLARA SERMAYE TAAHHÜTLERİ (-)", nameEn: "Capital Commitments to Subsidiaries", accountType: "asset", parentCode: "24", level: 3, isGroup: false, reportCategory: "fixed_assets" },
    { code: "247", name: "BAĞLI ORTAKLIKLAR SERMAYE PAYLARI DEĞER DÜŞÜKLÜĞÜ KARŞILIĞI (-)", nameEn: "Allowance for Subsidiaries", accountType: "asset", parentCode: "24", level: 3, isGroup: false, reportCategory: "fixed_assets" },
    { code: "248", name: "DİĞER MALİ DURAN VARLIKLAR", nameEn: "Other Financial Fixed Assets", accountType: "asset", parentCode: "24", level: 3, isGroup: false, reportCategory: "fixed_assets" },
    { code: "249", name: "DİĞER MALİ DURAN VARLIKLAR KARŞILIĞI (-)", nameEn: "Allowance for Other Financial Fixed Assets", accountType: "asset", parentCode: "24", level: 3, isGroup: false, reportCategory: "fixed_assets" },

    // 25 - Maddi Duran Varlıklar
    { code: "25", name: "MADDİ DURAN VARLIKLAR", nameEn: "Property, Plant and Equipment", accountType: "asset", parentCode: "2", level: 2, isGroup: true, reportCategory: "fixed_assets" },
    { code: "250", name: "ARAZİ VE ARSALAR", nameEn: "Land", accountType: "asset", parentCode: "25", level: 3, isGroup: false, reportCategory: "fixed_assets" },
    { code: "251", name: "YER ALTI VE YER ÜSTÜ DÜZENLERİ", nameEn: "Land Improvements", accountType: "asset", parentCode: "25", level: 3, isGroup: false, reportCategory: "fixed_assets" },
    { code: "252", name: "BİNALAR", nameEn: "Buildings", accountType: "asset", parentCode: "25", level: 3, isGroup: false, reportCategory: "fixed_assets" },
    { code: "253", name: "TESİS, MAKİNA VE CİHAZLAR", nameEn: "Machinery and Equipment", accountType: "asset", parentCode: "25", level: 3, isGroup: false, reportCategory: "fixed_assets" },
    { code: "254", name: "TAŞITLAR", nameEn: "Vehicles", accountType: "asset", parentCode: "25", level: 3, isGroup: false, reportCategory: "fixed_assets" },
    { code: "255", name: "DEMİRBAŞLAR", nameEn: "Furniture and Fixtures", accountType: "asset", parentCode: "25", level: 3, isGroup: false, reportCategory: "fixed_assets" },
    { code: "256", name: "DİĞER MADDİ DURAN VARLIKLAR", nameEn: "Other Tangible Assets", accountType: "asset", parentCode: "25", level: 3, isGroup: false, reportCategory: "fixed_assets" },
    { code: "257", name: "BİRİKMİŞ AMORTİSMANLAR (-)", nameEn: "Accumulated Depreciation", accountType: "asset", parentCode: "25", level: 3, isGroup: false, reportCategory: "fixed_assets" },
    { code: "258", name: "YAPILMAKTA OLAN YATIRIMLAR", nameEn: "Construction in Progress", accountType: "asset", parentCode: "25", level: 3, isGroup: false, reportCategory: "fixed_assets" },
    { code: "259", name: "VERİLEN AVANSLAR", nameEn: "Advances for Fixed Assets", accountType: "asset", parentCode: "25", level: 3, isGroup: false, reportCategory: "fixed_assets" },

    // 26 - Maddi Olmayan Duran Varlıklar
    { code: "26", name: "MADDİ OLMAYAN DURAN VARLIKLAR", nameEn: "Intangible Assets", accountType: "asset", parentCode: "2", level: 2, isGroup: true, reportCategory: "intangible_assets" },
    { code: "260", name: "HAKLAR", nameEn: "Rights", accountType: "asset", parentCode: "26", level: 3, isGroup: false, reportCategory: "intangible_assets" },
    { code: "261", name: "ŞEREFİYE", nameEn: "Goodwill", accountType: "asset", parentCode: "26", level: 3, isGroup: false, reportCategory: "intangible_assets" },
    { code: "262", name: "KURULUŞ VE ÖRGÜTLENME GİDERLERİ", nameEn: "Organization Costs", accountType: "asset", parentCode: "26", level: 3, isGroup: false, reportCategory: "intangible_assets" },
    { code: "263", name: "ARAŞTIRMA VE GELİŞTİRME GİDERLERİ", nameEn: "Research and Development", accountType: "asset", parentCode: "26", level: 3, isGroup: false, reportCategory: "intangible_assets" },
    { code: "264", name: "ÖZEL MALİYETLER", nameEn: "Special Costs", accountType: "asset", parentCode: "26", level: 3, isGroup: false, reportCategory: "intangible_assets" },
    { code: "267", name: "DİĞER MADDİ OLMAYAN DURAN VARLIKLAR", nameEn: "Other Intangible Assets", accountType: "asset", parentCode: "26", level: 3, isGroup: false, reportCategory: "intangible_assets" },
    { code: "268", name: "BİRİKMİŞ AMORTİSMANLAR (-)", nameEn: "Accumulated Amortization", accountType: "asset", parentCode: "26", level: 3, isGroup: false, reportCategory: "intangible_assets" },
    { code: "269", name: "VERİLEN AVANSLAR", nameEn: "Advances for Intangible Assets", accountType: "asset", parentCode: "26", level: 3, isGroup: false, reportCategory: "intangible_assets" },

    // 28 - Gelecek Yıllara Ait Giderler
    { code: "28", name: "GELECEK YILLARA AİT GİDERLER VE GELİR TAHAKKUKLARI", nameEn: "Long-term Prepaid Expenses", accountType: "asset", parentCode: "2", level: 2, isGroup: true, reportCategory: "fixed_assets" },
    { code: "280", name: "GELECEK YILLARA AİT GİDERLER", nameEn: "Long-term Prepaid Expenses", accountType: "asset", parentCode: "28", level: 3, isGroup: false, reportCategory: "fixed_assets" },
    { code: "281", name: "GELİR TAHAKKUKLARI", nameEn: "Long-term Accrued Income", accountType: "asset", parentCode: "28", level: 3, isGroup: false, reportCategory: "fixed_assets" },

    // ═══════════════════════════════════════════════════════════════════════════
    // 3 - KISA VADELİ YABANCI KAYNAKLAR (Current Liabilities)
    // ═══════════════════════════════════════════════════════════════════════════
    { code: "3", name: "KISA VADELİ YABANCI KAYNAKLAR", nameEn: "Current Liabilities", accountType: "liability", parentCode: null, level: 1, isGroup: true, reportCategory: "current_liabilities" },

    // 30 - Mali Borçlar
    { code: "30", name: "MALİ BORÇLAR", nameEn: "Financial Liabilities", accountType: "liability", parentCode: "3", level: 2, isGroup: true, reportCategory: "current_liabilities" },
    { code: "300", name: "BANKA KREDİLERİ", nameEn: "Bank Loans", accountType: "liability", parentCode: "30", level: 3, isGroup: false, reportCategory: "current_liabilities" },
    { code: "303", name: "UZUN VADELİ KREDİLERİN ANAPARA TAKSİTLERİ VE FAİZLERİ", nameEn: "Current Portion of Long-term Loans", accountType: "liability", parentCode: "30", level: 3, isGroup: false, reportCategory: "current_liabilities" },
    { code: "304", name: "TAHVİL ANAPARA BORÇ TAKSİT VE FAİZLERİ", nameEn: "Bond Principal and Interest", accountType: "liability", parentCode: "30", level: 3, isGroup: false, reportCategory: "current_liabilities" },
    { code: "305", name: "ÇIKARILMIŞ BONOLAR VE SENETLER", nameEn: "Commercial Papers Issued", accountType: "liability", parentCode: "30", level: 3, isGroup: false, reportCategory: "current_liabilities" },
    { code: "306", name: "ÇIKARILMIŞ DİĞER MENKUL KIYMETLER", nameEn: "Other Securities Issued", accountType: "liability", parentCode: "30", level: 3, isGroup: false, reportCategory: "current_liabilities" },
    { code: "308", name: "MENKUL KIYMETLER İHRAÇ FARKI (-)", nameEn: "Discount on Securities", accountType: "liability", parentCode: "30", level: 3, isGroup: false, reportCategory: "current_liabilities" },
    { code: "309", name: "DİĞER MALİ BORÇLAR", nameEn: "Other Financial Liabilities", accountType: "liability", parentCode: "30", level: 3, isGroup: false, reportCategory: "current_liabilities" },

    // 32 - Ticari Borçlar
    { code: "32", name: "TİCARİ BORÇLAR", nameEn: "Trade Payables", accountType: "liability", parentCode: "3", level: 2, isGroup: true, reportCategory: "current_liabilities" },
    { code: "320", name: "SATICILAR", nameEn: "Suppliers", accountType: "liability", parentCode: "32", level: 3, isGroup: false, reportCategory: "current_liabilities" },
    { code: "321", name: "BORÇ SENETLERİ", nameEn: "Notes Payable", accountType: "liability", parentCode: "32", level: 3, isGroup: false, reportCategory: "current_liabilities" },
    { code: "322", name: "BORÇ SENETLERİ REESKONTU (-)", nameEn: "Discount on Notes Payable", accountType: "liability", parentCode: "32", level: 3, isGroup: false, reportCategory: "current_liabilities" },
    { code: "326", name: "ALINAN DEPOZİTO VE TEMİNATLAR", nameEn: "Deposits and Guarantees Received", accountType: "liability", parentCode: "32", level: 3, isGroup: false, reportCategory: "current_liabilities" },
    { code: "329", name: "DİĞER TİCARİ BORÇLAR", nameEn: "Other Trade Payables", accountType: "liability", parentCode: "32", level: 3, isGroup: false, reportCategory: "current_liabilities" },

    // 33 - Diğer Borçlar
    { code: "33", name: "DİĞER BORÇLAR", nameEn: "Other Payables", accountType: "liability", parentCode: "3", level: 2, isGroup: true, reportCategory: "current_liabilities" },
    { code: "331", name: "ORTAKLARA BORÇLAR", nameEn: "Payables to Shareholders", accountType: "liability", parentCode: "33", level: 3, isGroup: false, reportCategory: "current_liabilities" },
    { code: "332", name: "İŞTİRAKLERE BORÇLAR", nameEn: "Payables to Affiliates", accountType: "liability", parentCode: "33", level: 3, isGroup: false, reportCategory: "current_liabilities" },
    { code: "333", name: "BAĞLI ORTAKLIKLARA BORÇLAR", nameEn: "Payables to Subsidiaries", accountType: "liability", parentCode: "33", level: 3, isGroup: false, reportCategory: "current_liabilities" },
    { code: "335", name: "PERSONELE BORÇLAR", nameEn: "Payables to Personnel", accountType: "liability", parentCode: "33", level: 3, isGroup: false, reportCategory: "current_liabilities" },
    { code: "336", name: "DİĞER ÇEŞİTLİ BORÇLAR", nameEn: "Other Miscellaneous Payables", accountType: "liability", parentCode: "33", level: 3, isGroup: false, reportCategory: "current_liabilities" },
    { code: "337", name: "DİĞER BORÇ SENETLERİ REESKONTU (-)", nameEn: "Discount on Other Notes", accountType: "liability", parentCode: "33", level: 3, isGroup: false, reportCategory: "current_liabilities" },

    // 34 - Alınan Avanslar
    { code: "34", name: "ALINAN AVANSLAR", nameEn: "Advances Received", accountType: "liability", parentCode: "3", level: 2, isGroup: true, reportCategory: "current_liabilities" },
    { code: "340", name: "ALINAN SİPARİŞ AVANSLARI", nameEn: "Customer Advances", accountType: "liability", parentCode: "34", level: 3, isGroup: false, reportCategory: "current_liabilities" },
    { code: "349", name: "ALINAN DİĞER AVANSLAR", nameEn: "Other Advances Received", accountType: "liability", parentCode: "34", level: 3, isGroup: false, reportCategory: "current_liabilities" },

    // 36 - Ödenecek Vergi ve Fonlar
    { code: "36", name: "ÖDENECEK VERGİ VE DİĞER YÜKÜMLÜLÜKLER", nameEn: "Taxes and Other Obligations Payable", accountType: "liability", parentCode: "3", level: 2, isGroup: true, reportCategory: "current_liabilities" },
    { code: "360", name: "ÖDENECEK VERGİ VE FONLAR", nameEn: "Taxes Payable", accountType: "liability", parentCode: "36", level: 3, isGroup: false, reportCategory: "current_liabilities" },
    { code: "361", name: "ÖDENECEK SOSYAL GÜVENLİK KESİNTİLERİ", nameEn: "Social Security Payable", accountType: "liability", parentCode: "36", level: 3, isGroup: false, reportCategory: "current_liabilities" },
    { code: "368", name: "VADESİ GEÇMİŞ, ERTELENMİŞ VEYA TAKSİTLENDİRİLMİŞ VERGİ VE DİĞER YÜKÜMLÜLÜKLER", nameEn: "Deferred Taxes", accountType: "liability", parentCode: "36", level: 3, isGroup: false, reportCategory: "current_liabilities" },
    { code: "369", name: "ÖDENECEK DİĞER YÜKÜMLÜLÜKLER", nameEn: "Other Obligations Payable", accountType: "liability", parentCode: "36", level: 3, isGroup: false, reportCategory: "current_liabilities" },

    // 37 - Borç ve Gider Karşılıkları
    { code: "37", name: "BORÇ VE GİDER KARŞILIKLARI", nameEn: "Provisions", accountType: "liability", parentCode: "3", level: 2, isGroup: true, reportCategory: "current_liabilities" },
    { code: "370", name: "DÖNEM KARI VERGİ VE DİĞER YASAL YÜKÜMLÜLÜK KARŞILIKLARI", nameEn: "Current Tax Provision", accountType: "liability", parentCode: "37", level: 3, isGroup: false, reportCategory: "current_liabilities" },
    { code: "371", name: "DÖNEM KARININ PEŞİN ÖDENEN VERGİ VE DİĞER YÜKÜMLÜLÜKLERİ (-)", nameEn: "Prepaid Taxes on Current Income", accountType: "liability", parentCode: "37", level: 3, isGroup: false, reportCategory: "current_liabilities" },
    { code: "372", name: "KIDEM TAZMİNATI KARŞILIĞI", nameEn: "Severance Pay Provision", accountType: "liability", parentCode: "37", level: 3, isGroup: false, reportCategory: "current_liabilities" },
    { code: "373", name: "MALİYET GİDERLERİ KARŞILIĞI", nameEn: "Accrued Expenses", accountType: "liability", parentCode: "37", level: 3, isGroup: false, reportCategory: "current_liabilities" },
    { code: "379", name: "DİĞER BORÇ VE GİDER KARŞILIKLARI", nameEn: "Other Provisions", accountType: "liability", parentCode: "37", level: 3, isGroup: false, reportCategory: "current_liabilities" },

    // 38 - Gelecek Aylara Ait Gelirler
    { code: "38", name: "GELECEK AYLARA AİT GELİRLER VE GİDER TAHAKKUKLARI", nameEn: "Deferred Income and Accrued Expenses", accountType: "liability", parentCode: "3", level: 2, isGroup: true, reportCategory: "current_liabilities" },
    { code: "380", name: "GELECEK AYLARA AİT GELİRLER", nameEn: "Deferred Income", accountType: "liability", parentCode: "38", level: 3, isGroup: false, reportCategory: "current_liabilities" },
    { code: "381", name: "GİDER TAHAKKUKLARI", nameEn: "Accrued Expenses", accountType: "liability", parentCode: "38", level: 3, isGroup: false, reportCategory: "current_liabilities" },

    // 39 - Diğer Kısa Vadeli Yabancı Kaynaklar
    { code: "39", name: "DİĞER KISA VADELİ YABANCI KAYNAKLAR", nameEn: "Other Current Liabilities", accountType: "liability", parentCode: "3", level: 2, isGroup: true, reportCategory: "current_liabilities" },
    { code: "391", name: "HESAPLANAN KDV", nameEn: "VAT Payable", accountType: "liability", parentCode: "39", level: 3, isGroup: false, reportCategory: "current_liabilities" },
    { code: "392", name: "DİĞER KDV", nameEn: "Other VAT", accountType: "liability", parentCode: "39", level: 3, isGroup: false, reportCategory: "current_liabilities" },
    { code: "397", name: "SAYIM VE TESELLÜM FAZLALARI", nameEn: "Inventory Overages", accountType: "liability", parentCode: "39", level: 3, isGroup: false, reportCategory: "current_liabilities" },
    { code: "399", name: "DİĞER ÇEŞİTLİ YABANCI KAYNAKLAR", nameEn: "Other Miscellaneous Current Liabilities", accountType: "liability", parentCode: "39", level: 3, isGroup: false, reportCategory: "current_liabilities" },

    // ═══════════════════════════════════════════════════════════════════════════
    // 4 - UZUN VADELİ YABANCI KAYNAKLAR (Long-term Liabilities)
    // ═══════════════════════════════════════════════════════════════════════════
    { code: "4", name: "UZUN VADELİ YABANCI KAYNAKLAR", nameEn: "Long-term Liabilities", accountType: "liability", parentCode: null, level: 1, isGroup: true, reportCategory: "long_term_liabilities" },

    // 40 - Mali Borçlar
    { code: "40", name: "MALİ BORÇLAR", nameEn: "Long-term Financial Liabilities", accountType: "liability", parentCode: "4", level: 2, isGroup: true, reportCategory: "long_term_liabilities" },
    { code: "400", name: "BANKA KREDİLERİ", nameEn: "Long-term Bank Loans", accountType: "liability", parentCode: "40", level: 3, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "405", name: "ÇIKARILMIŞ TAHVİLLER", nameEn: "Bonds Issued", accountType: "liability", parentCode: "40", level: 3, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "407", name: "ÇIKARILMIŞ DİĞER MENKUL KIYMETLER", nameEn: "Other Long-term Securities Issued", accountType: "liability", parentCode: "40", level: 3, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "408", name: "MENKUL KIYMETLER İHRAÇ FARKI (-)", nameEn: "Discount on Long-term Securities", accountType: "liability", parentCode: "40", level: 3, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "409", name: "DİĞER MALİ BORÇLAR", nameEn: "Other Long-term Financial Liabilities", accountType: "liability", parentCode: "40", level: 3, isGroup: false, reportCategory: "long_term_liabilities" },

    // 42 - Ticari Borçlar
    { code: "42", name: "TİCARİ BORÇLAR", nameEn: "Long-term Trade Payables", accountType: "liability", parentCode: "4", level: 2, isGroup: true, reportCategory: "long_term_liabilities" },
    { code: "420", name: "SATICILAR", nameEn: "Long-term Suppliers", accountType: "liability", parentCode: "42", level: 3, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "421", name: "BORÇ SENETLERİ", nameEn: "Long-term Notes Payable", accountType: "liability", parentCode: "42", level: 3, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "422", name: "BORÇ SENETLERİ REESKONTU (-)", nameEn: "Discount on Long-term Notes Payable", accountType: "liability", parentCode: "42", level: 3, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "426", name: "ALINAN DEPOZİTO VE TEMİNATLAR", nameEn: "Long-term Deposits Received", accountType: "liability", parentCode: "42", level: 3, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "429", name: "DİĞER TİCARİ BORÇLAR", nameEn: "Other Long-term Trade Payables", accountType: "liability", parentCode: "42", level: 3, isGroup: false, reportCategory: "long_term_liabilities" },

    // 43 - Diğer Borçlar
    { code: "43", name: "DİĞER BORÇLAR", nameEn: "Other Long-term Payables", accountType: "liability", parentCode: "4", level: 2, isGroup: true, reportCategory: "long_term_liabilities" },
    { code: "431", name: "ORTAKLARA BORÇLAR", nameEn: "Long-term Payables to Shareholders", accountType: "liability", parentCode: "43", level: 3, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "432", name: "İŞTİRAKLERE BORÇLAR", nameEn: "Long-term Payables to Affiliates", accountType: "liability", parentCode: "43", level: 3, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "433", name: "BAĞLI ORTAKLIKLARA BORÇLAR", nameEn: "Long-term Payables to Subsidiaries", accountType: "liability", parentCode: "43", level: 3, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "436", name: "DİĞER ÇEŞİTLİ BORÇLAR", nameEn: "Other Long-term Miscellaneous Payables", accountType: "liability", parentCode: "43", level: 3, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "437", name: "DİĞER BORÇ SENETLERİ REESKONTU (-)", nameEn: "Discount on Other Long-term Notes", accountType: "liability", parentCode: "43", level: 3, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "438", name: "KAMUYA OLAN ERTELENMİŞ VEYA TAKSİTLENDİRİLMİŞ BORÇLAR", nameEn: "Deferred Public Debts", accountType: "liability", parentCode: "43", level: 3, isGroup: false, reportCategory: "long_term_liabilities" },

    // 44 - Alınan Avanslar
    { code: "44", name: "ALINAN AVANSLAR", nameEn: "Long-term Advances Received", accountType: "liability", parentCode: "4", level: 2, isGroup: true, reportCategory: "long_term_liabilities" },
    { code: "440", name: "ALINAN SİPARİŞ AVANSLARI", nameEn: "Long-term Customer Advances", accountType: "liability", parentCode: "44", level: 3, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "449", name: "ALINAN DİĞER AVANSLAR", nameEn: "Other Long-term Advances", accountType: "liability", parentCode: "44", level: 3, isGroup: false, reportCategory: "long_term_liabilities" },

    // 47 - Borç ve Gider Karşılıkları
    { code: "47", name: "BORÇ VE GİDER KARŞILIKLARI", nameEn: "Long-term Provisions", accountType: "liability", parentCode: "4", level: 2, isGroup: true, reportCategory: "long_term_liabilities" },
    { code: "472", name: "KIDEM TAZMİNATI KARŞILIĞI", nameEn: "Long-term Severance Pay Provision", accountType: "liability", parentCode: "47", level: 3, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "479", name: "DİĞER BORÇ VE GİDER KARŞILIKLARI", nameEn: "Other Long-term Provisions", accountType: "liability", parentCode: "47", level: 3, isGroup: false, reportCategory: "long_term_liabilities" },

    // 48 - Gelecek Yıllara Ait Gelirler
    { code: "48", name: "GELECEK YILLARA AİT GELİRLER VE GİDER TAHAKKUKLARI", nameEn: "Long-term Deferred Income", accountType: "liability", parentCode: "4", level: 2, isGroup: true, reportCategory: "long_term_liabilities" },
    { code: "480", name: "GELECEK YILLARA AİT GELİRLER", nameEn: "Long-term Deferred Income", accountType: "liability", parentCode: "48", level: 3, isGroup: false, reportCategory: "long_term_liabilities" },
    { code: "481", name: "GİDER TAHAKKUKLARI", nameEn: "Long-term Accrued Expenses", accountType: "liability", parentCode: "48", level: 3, isGroup: false, reportCategory: "long_term_liabilities" },

    // ═══════════════════════════════════════════════════════════════════════════
    // 5 - ÖZ KAYNAKLAR (Equity)
    // ═══════════════════════════════════════════════════════════════════════════
    { code: "5", name: "ÖZ KAYNAKLAR", nameEn: "Equity", accountType: "equity", parentCode: null, level: 1, isGroup: true, reportCategory: "equity" },

    // 50 - Ödenmiş Sermaye
    { code: "50", name: "ÖDENMİŞ SERMAYE", nameEn: "Paid-in Capital", accountType: "equity", parentCode: "5", level: 2, isGroup: true, reportCategory: "equity" },
    { code: "500", name: "SERMAYE", nameEn: "Capital Stock", accountType: "equity", parentCode: "50", level: 3, isGroup: false, reportCategory: "equity" },
    { code: "501", name: "ÖDENMEMİŞ SERMAYE (-)", nameEn: "Unpaid Capital", accountType: "equity", parentCode: "50", level: 3, isGroup: false, reportCategory: "equity" },

    // 52 - Sermaye Yedekleri
    { code: "52", name: "SERMAYE YEDEKLERİ", nameEn: "Capital Reserves", accountType: "equity", parentCode: "5", level: 2, isGroup: true, reportCategory: "equity" },
    { code: "520", name: "HİSSE SENETLERİ İHRAÇ PRİMLERİ", nameEn: "Share Premium", accountType: "equity", parentCode: "52", level: 3, isGroup: false, reportCategory: "equity" },
    { code: "521", name: "HİSSE SENEDİ İPTAL KARLARI", nameEn: "Gains from Cancelled Shares", accountType: "equity", parentCode: "52", level: 3, isGroup: false, reportCategory: "equity" },
    { code: "522", name: "M.D.V. YENİDEN DEĞERLEME ARTIŞLARI", nameEn: "Revaluation Surplus - PPE", accountType: "equity", parentCode: "52", level: 3, isGroup: false, reportCategory: "equity" },
    { code: "523", name: "İŞTİRAKLER YENİDEN DEĞERLEME ARTIŞLARI", nameEn: "Revaluation Surplus - Affiliates", accountType: "equity", parentCode: "52", level: 3, isGroup: false, reportCategory: "equity" },
    { code: "524", name: "MALİYET ARTIŞLARI FONU", nameEn: "Cost Increase Fund", accountType: "equity", parentCode: "52", level: 3, isGroup: false, reportCategory: "equity" },
    { code: "529", name: "DİĞER SERMAYE YEDEKLERİ", nameEn: "Other Capital Reserves", accountType: "equity", parentCode: "52", level: 3, isGroup: false, reportCategory: "equity" },

    // 54 - Kar Yedekleri
    { code: "54", name: "KAR YEDEKLERİ", nameEn: "Retained Earnings Reserves", accountType: "equity", parentCode: "5", level: 2, isGroup: true, reportCategory: "equity" },
    { code: "540", name: "YASAL YEDEKLER", nameEn: "Legal Reserves", accountType: "equity", parentCode: "54", level: 3, isGroup: false, reportCategory: "equity" },
    { code: "541", name: "STATÜ YEDEKLERİ", nameEn: "Statutory Reserves", accountType: "equity", parentCode: "54", level: 3, isGroup: false, reportCategory: "equity" },
    { code: "542", name: "OLAĞANÜSTÜ YEDEKLER", nameEn: "Extraordinary Reserves", accountType: "equity", parentCode: "54", level: 3, isGroup: false, reportCategory: "equity" },
    { code: "548", name: "DİĞER KAR YEDEKLERİ", nameEn: "Other Profit Reserves", accountType: "equity", parentCode: "54", level: 3, isGroup: false, reportCategory: "equity" },
    { code: "549", name: "ÖZEL FONLAR", nameEn: "Special Funds", accountType: "equity", parentCode: "54", level: 3, isGroup: false, reportCategory: "equity" },

    // 57 - Geçmiş Yıllar Karları
    { code: "57", name: "GEÇMİŞ YILLAR KARLARI", nameEn: "Retained Earnings", accountType: "equity", parentCode: "5", level: 2, isGroup: true, reportCategory: "equity" },
    { code: "570", name: "GEÇMİŞ YILLAR KARLARI", nameEn: "Prior Years' Profits", accountType: "equity", parentCode: "57", level: 3, isGroup: false, reportCategory: "equity" },

    // 58 - Geçmiş Yıllar Zararları
    { code: "58", name: "GEÇMİŞ YILLAR ZARARLARI (-)", nameEn: "Accumulated Deficit", accountType: "equity", parentCode: "5", level: 2, isGroup: true, reportCategory: "equity" },
    { code: "580", name: "GEÇMİŞ YILLAR ZARARLARI", nameEn: "Prior Years' Losses", accountType: "equity", parentCode: "58", level: 3, isGroup: false, reportCategory: "equity" },

    // 59 - Dönem Net Karı/Zararı
    { code: "59", name: "DÖNEM NET KARI (ZARARI)", nameEn: "Current Year Net Income (Loss)", accountType: "equity", parentCode: "5", level: 2, isGroup: true, reportCategory: "equity" },
    { code: "590", name: "DÖNEM NET KARI", nameEn: "Current Year Net Income", accountType: "equity", parentCode: "59", level: 3, isGroup: false, reportCategory: "equity" },
    { code: "591", name: "DÖNEM NET ZARARI (-)", nameEn: "Current Year Net Loss", accountType: "equity", parentCode: "59", level: 3, isGroup: false, reportCategory: "equity" },

    // ═══════════════════════════════════════════════════════════════════════════
    // 6 - GELİR TABLOSU HESAPLARI (Income Statement)
    // ═══════════════════════════════════════════════════════════════════════════
    { code: "6", name: "GELİR TABLOSU HESAPLARI", nameEn: "Income Statement Accounts", accountType: "revenue", parentCode: null, level: 1, isGroup: true, reportCategory: "operating_revenue" },

    // 60 - Brüt Satışlar
    { code: "60", name: "BRÜT SATIŞLAR", nameEn: "Gross Sales", accountType: "revenue", parentCode: "6", level: 2, isGroup: true, reportCategory: "operating_revenue" },
    { code: "600", name: "YURTİÇİ SATIŞLAR", nameEn: "Domestic Sales", accountType: "revenue", parentCode: "60", level: 3, isGroup: false, reportCategory: "operating_revenue" },
    { code: "601", name: "YURTDIŞI SATIŞLAR", nameEn: "Export Sales", accountType: "revenue", parentCode: "60", level: 3, isGroup: false, reportCategory: "operating_revenue" },
    { code: "602", name: "DİĞER GELİRLER", nameEn: "Other Revenue", accountType: "revenue", parentCode: "60", level: 3, isGroup: false, reportCategory: "operating_revenue" },

    // 61 - Satış İndirimleri
    { code: "61", name: "SATIŞ İNDİRİMLERİ (-)", nameEn: "Sales Deductions", accountType: "revenue", parentCode: "6", level: 2, isGroup: true, reportCategory: "operating_revenue" },
    { code: "610", name: "SATIŞTAN İADELER (-)", nameEn: "Sales Returns", accountType: "revenue", parentCode: "61", level: 3, isGroup: false, reportCategory: "operating_revenue" },
    { code: "611", name: "SATIŞ İSKONTOLARI (-)", nameEn: "Sales Discounts", accountType: "revenue", parentCode: "61", level: 3, isGroup: false, reportCategory: "operating_revenue" },
    { code: "612", name: "DİĞER İNDİRİMLER (-)", nameEn: "Other Deductions", accountType: "revenue", parentCode: "61", level: 3, isGroup: false, reportCategory: "operating_revenue" },

    // 62 - Satışların Maliyeti
    { code: "62", name: "SATIŞLARIN MALİYETİ (-)", nameEn: "Cost of Sales", accountType: "expense", parentCode: "6", level: 2, isGroup: true, reportCategory: "cost_of_goods" },
    { code: "620", name: "SATILAN MAMULLER MALİYETİ (-)", nameEn: "Cost of Goods Manufactured Sold", accountType: "expense", parentCode: "62", level: 3, isGroup: false, reportCategory: "cost_of_goods" },
    { code: "621", name: "SATILAN TİCARİ MALLAR MALİYETİ (-)", nameEn: "Cost of Merchandise Sold", accountType: "expense", parentCode: "62", level: 3, isGroup: false, reportCategory: "cost_of_goods" },
    { code: "622", name: "SATILAN HİZMET MALİYETİ (-)", nameEn: "Cost of Services Sold", accountType: "expense", parentCode: "62", level: 3, isGroup: false, reportCategory: "cost_of_goods" },
    { code: "623", name: "DİĞER SATIŞLARIN MALİYETİ (-)", nameEn: "Other Cost of Sales", accountType: "expense", parentCode: "62", level: 3, isGroup: false, reportCategory: "cost_of_goods" },

    // 63 - Faaliyet Giderleri
    { code: "63", name: "FAALİYET GİDERLERİ (-)", nameEn: "Operating Expenses", accountType: "expense", parentCode: "6", level: 2, isGroup: true, reportCategory: "operating_expenses" },
    { code: "630", name: "ARAŞTIRMA VE GELİŞTİRME GİDERLERİ (-)", nameEn: "Research and Development Expenses", accountType: "expense", parentCode: "63", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "631", name: "PAZARLAMA SATIŞ VE DAĞITIM GİDERLERİ (-)", nameEn: "Marketing, Selling and Distribution Expenses", accountType: "expense", parentCode: "63", level: 3, isGroup: false, reportCategory: "operating_expenses" },
    { code: "632", name: "GENEL YÖNETİM GİDERLERİ (-)", nameEn: "General and Administrative Expenses", accountType: "expense", parentCode: "63", level: 3, isGroup: false, reportCategory: "operating_expenses" },

    // 64 - Diğer Faaliyetlerden Gelirler
    { code: "64", name: "DİĞER FAALİYETLERDEN OLAĞAN GELİR VE KARLAR", nameEn: "Other Operating Income", accountType: "revenue", parentCode: "6", level: 2, isGroup: true, reportCategory: "other_revenue" },
    { code: "640", name: "İŞTİRAKLERDEN TEMETTÜ GELİRLERİ", nameEn: "Dividend Income from Affiliates", accountType: "revenue", parentCode: "64", level: 3, isGroup: false, reportCategory: "other_revenue" },
    { code: "641", name: "BAĞLI ORTAKLIKLARDAN TEMETTÜ GELİRLERİ", nameEn: "Dividend Income from Subsidiaries", accountType: "revenue", parentCode: "64", level: 3, isGroup: false, reportCategory: "other_revenue" },
    { code: "642", name: "FAİZ GELİRLERİ", nameEn: "Interest Income", accountType: "revenue", parentCode: "64", level: 3, isGroup: false, reportCategory: "other_revenue" },
    { code: "643", name: "KOMİSYON GELİRLERİ", nameEn: "Commission Income", accountType: "revenue", parentCode: "64", level: 3, isGroup: false, reportCategory: "other_revenue" },
    { code: "644", name: "KONUSU KALMAYAN KARŞILIKLAR", nameEn: "Provisions No Longer Required", accountType: "revenue", parentCode: "64", level: 3, isGroup: false, reportCategory: "other_revenue" },
    { code: "645", name: "MENKUL KIYMET SATIŞ KARLARI", nameEn: "Gains on Sale of Securities", accountType: "revenue", parentCode: "64", level: 3, isGroup: false, reportCategory: "other_revenue" },
    { code: "646", name: "KAMBİYO KARLARI", nameEn: "Foreign Exchange Gains", accountType: "revenue", parentCode: "64", level: 3, isGroup: false, reportCategory: "other_revenue" },
    { code: "647", name: "REESKONT FAİZ GELİRLERİ", nameEn: "Discount Interest Income", accountType: "revenue", parentCode: "64", level: 3, isGroup: false, reportCategory: "other_revenue" },
    { code: "648", name: "ENFLASYON DÜZELTMESİ KARLARI", nameEn: "Inflation Adjustment Gains", accountType: "revenue", parentCode: "64", level: 3, isGroup: false, reportCategory: "other_revenue" },
    { code: "649", name: "DİĞER OLAĞAN GELİR VE KARLAR", nameEn: "Other Ordinary Income", accountType: "revenue", parentCode: "64", level: 3, isGroup: false, reportCategory: "other_revenue" },

    // 65 - Diğer Faaliyetlerden Giderler
    { code: "65", name: "DİĞER FAALİYETLERDEN OLAĞAN GİDER VE ZARARLAR (-)", nameEn: "Other Operating Expenses", accountType: "expense", parentCode: "6", level: 2, isGroup: true, reportCategory: "other_expenses" },
    { code: "653", name: "KOMİSYON GİDERLERİ (-)", nameEn: "Commission Expenses", accountType: "expense", parentCode: "65", level: 3, isGroup: false, reportCategory: "other_expenses" },
    { code: "654", name: "KARŞILIK GİDERLERİ (-)", nameEn: "Provision Expenses", accountType: "expense", parentCode: "65", level: 3, isGroup: false, reportCategory: "other_expenses" },
    { code: "655", name: "MENKUL KIYMET SATIŞ ZARARLARI (-)", nameEn: "Loss on Sale of Securities", accountType: "expense", parentCode: "65", level: 3, isGroup: false, reportCategory: "other_expenses" },
    { code: "656", name: "KAMBİYO ZARARLARI (-)", nameEn: "Foreign Exchange Losses", accountType: "expense", parentCode: "65", level: 3, isGroup: false, reportCategory: "other_expenses" },
    { code: "657", name: "REESKONT FAİZ GİDERLERİ (-)", nameEn: "Discount Interest Expenses", accountType: "expense", parentCode: "65", level: 3, isGroup: false, reportCategory: "other_expenses" },
    { code: "658", name: "ENFLASYON DÜZELTMESİ ZARARLARI (-)", nameEn: "Inflation Adjustment Losses", accountType: "expense", parentCode: "65", level: 3, isGroup: false, reportCategory: "other_expenses" },
    { code: "659", name: "DİĞER OLAĞAN GİDER VE ZARARLAR (-)", nameEn: "Other Ordinary Expenses", accountType: "expense", parentCode: "65", level: 3, isGroup: false, reportCategory: "other_expenses" },

    // 66 - Finansman Giderleri
    { code: "66", name: "FİNANSMAN GİDERLERİ (-)", nameEn: "Finance Costs", accountType: "expense", parentCode: "6", level: 2, isGroup: true, reportCategory: "other_expenses" },
    { code: "660", name: "KISA VADELİ BORÇLANMA GİDERLERİ (-)", nameEn: "Short-term Borrowing Costs", accountType: "expense", parentCode: "66", level: 3, isGroup: false, reportCategory: "other_expenses" },
    { code: "661", name: "UZUN VADELİ BORÇLANMA GİDERLERİ (-)", nameEn: "Long-term Borrowing Costs", accountType: "expense", parentCode: "66", level: 3, isGroup: false, reportCategory: "other_expenses" },

    // 67 - Olağandışı Gelirler
    { code: "67", name: "OLAĞANDIŞI GELİR VE KARLAR", nameEn: "Extraordinary Income", accountType: "revenue", parentCode: "6", level: 2, isGroup: true, reportCategory: "other_revenue" },
    { code: "671", name: "ÖNCEKİ DÖNEM GELİR VE KARLARI", nameEn: "Prior Period Income", accountType: "revenue", parentCode: "67", level: 3, isGroup: false, reportCategory: "other_revenue" },
    { code: "679", name: "DİĞER OLAĞANDIŞI GELİR VE KARLAR", nameEn: "Other Extraordinary Income", accountType: "revenue", parentCode: "67", level: 3, isGroup: false, reportCategory: "other_revenue" },

    // 68 - Olağandışı Giderler
    { code: "68", name: "OLAĞANDIŞI GİDER VE ZARARLAR (-)", nameEn: "Extraordinary Expenses", accountType: "expense", parentCode: "6", level: 2, isGroup: true, reportCategory: "other_expenses" },
    { code: "680", name: "ÇALIŞMAYAN KISIM GİDER VE ZARARLARI (-)", nameEn: "Idle Capacity Costs", accountType: "expense", parentCode: "68", level: 3, isGroup: false, reportCategory: "other_expenses" },
    { code: "681", name: "ÖNCEKİ DÖNEM GİDER VE ZARARLARI (-)", nameEn: "Prior Period Expenses", accountType: "expense", parentCode: "68", level: 3, isGroup: false, reportCategory: "other_expenses" },
    { code: "689", name: "DİĞER OLAĞANDIŞI GİDER VE ZARARLAR (-)", nameEn: "Other Extraordinary Expenses", accountType: "expense", parentCode: "68", level: 3, isGroup: false, reportCategory: "other_expenses" },

    // 69 - Dönem Net Karı/Zararı
    { code: "69", name: "DÖNEM NET KARI VEYA ZARARI", nameEn: "Net Income or Loss", accountType: "equity", parentCode: "6", level: 2, isGroup: true, reportCategory: "equity" },
    { code: "690", name: "DÖNEM KARI VEYA ZARARI", nameEn: "Income or Loss Before Tax", accountType: "equity", parentCode: "69", level: 3, isGroup: false, reportCategory: "equity" },
    { code: "691", name: "DÖNEM KARI VERGİ VE DİĞER YASAL YÜKÜMLÜLÜK KARŞILIKLARI (-)", nameEn: "Income Tax Expense", accountType: "expense", parentCode: "69", level: 3, isGroup: false, reportCategory: "other_expenses" },
    { code: "692", name: "DÖNEM NET KARI VEYA ZARARI", nameEn: "Net Income or Loss", accountType: "equity", parentCode: "69", level: 3, isGroup: false, reportCategory: "equity" },
  ],
};
