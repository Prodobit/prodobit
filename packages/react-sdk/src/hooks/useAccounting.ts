import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";
import { useProdobitClient } from "../providers/ProdobitProvider";

export interface QueryOptions {
  enabled?: boolean;
  refetchInterval?: number;
  refetchOnWindowFocus?: boolean;
  staleTime?: number;
  cacheTime?: number;
}

export interface MutationOptions<T = any> {
  onSuccess?: (data: T) => void;
  onError?: (error: Error) => void;
}

// ============ ACCOUNTING SETTINGS ============

export const useAccountingSettings = (options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ["accounting", "settings"],
    queryFn: () => client.accountingClient.getSettings(),
    ...options,
  });
};

export const useUpdateAccountingSettings = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (data: any) => client.accountingClient.updateSettings(data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ["accounting", "settings"] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useInitializeAccountingFromTemplate = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (templateCode: string) =>
      client.accountingClient.initializeFromTemplate(templateCode),
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ["accounting"] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

// ============ CHART OF ACCOUNTS ============

export const useAccounts = (filters?: any, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ["accounting", "accounts", filters],
    queryFn: () => client.accountingClient.getAccounts(filters),
    ...options,
  });
};

export const useAccountsTree = (options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ["accounting", "accounts", "tree"],
    queryFn: () => client.accountingClient.getAccountsTree(),
    ...options,
  });
};

export const useAccount = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ["accounting", "accounts", id],
    queryFn: () => client.accountingClient.getAccount(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useCreateAccount = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (data: any) => client.accountingClient.createAccount(data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ["accounting", "accounts"] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useUpdateAccount = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({ id, data }: { id: string; data: any }) =>
      client.accountingClient.updateAccount(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: ["accounting", "accounts"] });
      queryClient.invalidateQueries({
        queryKey: ["accounting", "accounts", variables.id],
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useDeleteAccount = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (id: string) => client.accountingClient.deleteAccount(id),
    onSuccess: (data, id) => {
      queryClient.invalidateQueries({ queryKey: ["accounting", "accounts"] });
      queryClient.invalidateQueries({
        queryKey: ["accounting", "accounts", id],
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

// ============ JOURNAL ENTRIES ============

export const useJournalEntries = (filters?: any, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ["accounting", "journal-entries", filters],
    queryFn: () => client.accountingClient.getJournalEntries(filters),
    ...options,
  });
};

export const useJournalEntry = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ["accounting", "journal-entries", id],
    queryFn: () => client.accountingClient.getJournalEntry(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useCreateJournalEntry = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (data: any) => client.accountingClient.createJournalEntry(data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({
        queryKey: ["accounting", "journal-entries"],
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useUpdateJournalEntry = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({ id, data }: { id: string; data: any }) =>
      client.accountingClient.updateJournalEntry(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({
        queryKey: ["accounting", "journal-entries"],
      });
      queryClient.invalidateQueries({
        queryKey: ["accounting", "journal-entries", variables.id],
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const usePostJournalEntry = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({ id, data }: { id: string; data?: any }) =>
      client.accountingClient.postJournalEntry(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({
        queryKey: ["accounting", "journal-entries"],
      });
      queryClient.invalidateQueries({
        queryKey: ["accounting", "journal-entries", variables.id],
      });
      queryClient.invalidateQueries({ queryKey: ["accounting", "ledger"] });
      queryClient.invalidateQueries({ queryKey: ["accounting", "reports"] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useReverseJournalEntry = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({ id, data }: { id: string; data: any }) =>
      client.accountingClient.reverseJournalEntry(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({
        queryKey: ["accounting", "journal-entries"],
      });
      queryClient.invalidateQueries({
        queryKey: ["accounting", "journal-entries", variables.id],
      });
      queryClient.invalidateQueries({ queryKey: ["accounting", "ledger"] });
      queryClient.invalidateQueries({ queryKey: ["accounting", "reports"] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useDeleteJournalEntry = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (id: string) => client.accountingClient.deleteJournalEntry(id),
    onSuccess: (data, id) => {
      queryClient.invalidateQueries({
        queryKey: ["accounting", "journal-entries"],
      });
      queryClient.invalidateQueries({
        queryKey: ["accounting", "journal-entries", id],
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

// ============ LEDGER & REPORTS ============

export const useAccountLedger = (
  accountId: string,
  startDate: string,
  endDate: string,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ["accounting", "ledger", accountId, startDate, endDate],
    queryFn: () =>
      client.accountingClient.getAccountLedger(accountId, startDate, endDate),
    enabled:
      !!accountId && !!startDate && !!endDate && options?.enabled !== false,
    ...options,
  });
};

export const useTrialBalance = (asOfDate: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ["accounting", "reports", "trial-balance", asOfDate],
    queryFn: () => client.accountingClient.getTrialBalance(asOfDate),
    enabled: !!asOfDate && options?.enabled !== false,
    ...options,
  });
};

export const useIncomeStatement = (
  startDate: string,
  endDate: string,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ["accounting", "reports", "income-statement", startDate, endDate],
    queryFn: () =>
      client.accountingClient.getIncomeStatement(startDate, endDate),
    enabled: !!startDate && !!endDate && options?.enabled !== false,
    ...options,
  });
};

export const useBalanceSheet = (asOfDate: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ["accounting", "reports", "balance-sheet", asOfDate],
    queryFn: () => client.accountingClient.getBalanceSheet(asOfDate),
    enabled: !!asOfDate && options?.enabled !== false,
    ...options,
  });
};

// ============ FISCAL YEARS & PERIODS ============

export const useFiscalYears = (options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ["accounting", "fiscal-years"],
    queryFn: () => client.accountingClient.getFiscalYears(),
    ...options,
  });
};

export const useFiscalYear = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ["accounting", "fiscal-years", id],
    queryFn: () => client.accountingClient.getFiscalYear(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useCreateFiscalYear = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (data: any) => client.accountingClient.createFiscalYear(data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({
        queryKey: ["accounting", "fiscal-years"],
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useFiscalPeriods = (
  fiscalYearId?: string,
  options?: QueryOptions
) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ["accounting", "fiscal-periods", fiscalYearId],
    queryFn: () => client.accountingClient.getFiscalPeriods(fiscalYearId),
    ...options,
  });
};

export const useCreateFiscalPeriod = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (data: any) => client.accountingClient.createFiscalPeriod(data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({
        queryKey: ["accounting", "fiscal-periods"],
      });
      queryClient.invalidateQueries({
        queryKey: ["accounting", "fiscal-years"],
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useCloseFiscalPeriod = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({ id, data }: { id: string; data?: any }) =>
      client.accountingClient.closeFiscalPeriod(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({
        queryKey: ["accounting", "fiscal-periods"],
      });
      queryClient.invalidateQueries({
        queryKey: ["accounting", "fiscal-periods", variables.id],
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useReopenFiscalPeriod = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (id: string) => client.accountingClient.reopenFiscalPeriod(id),
    onSuccess: (data, id) => {
      queryClient.invalidateQueries({
        queryKey: ["accounting", "fiscal-periods"],
      });
      queryClient.invalidateQueries({
        queryKey: ["accounting", "fiscal-periods", id],
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

// ============ TAX RATES ============

export const useTaxRates = (options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ["accounting", "tax-rates"],
    queryFn: () => client.accountingClient.getTaxRates(),
    ...options,
  });
};

export const useTaxRate = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ["accounting", "tax-rates", id],
    queryFn: () => client.accountingClient.getTaxRate(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useCreateTaxRate = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (data: any) => client.accountingClient.createTaxRate(data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ["accounting", "tax-rates"] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useUpdateTaxRate = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({ id, data }: { id: string; data: any }) =>
      client.accountingClient.updateTaxRate(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: ["accounting", "tax-rates"] });
      queryClient.invalidateQueries({
        queryKey: ["accounting", "tax-rates", variables.id],
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useDeleteTaxRate = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (id: string) => client.accountingClient.deleteTaxRate(id),
    onSuccess: (data, id) => {
      queryClient.invalidateQueries({ queryKey: ["accounting", "tax-rates"] });
      queryClient.invalidateQueries({
        queryKey: ["accounting", "tax-rates", id],
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

// ============ ACCOUNTS PAYABLE ============

export const usePayables = (filters?: any, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ["accounting", "payables", filters],
    queryFn: () => client.accountingClient.getPayables(filters),
    ...options,
  });
};

export const usePayable = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ["accounting", "payables", id],
    queryFn: () => client.accountingClient.getPayable(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useCreatePayable = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (data: any) => client.accountingClient.createPayable(data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ["accounting", "payables"] });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useUpdatePayable = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({ id, data }: { id: string; data: any }) =>
      client.accountingClient.updatePayable(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: ["accounting", "payables"] });
      queryClient.invalidateQueries({
        queryKey: ["accounting", "payables", variables.id],
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const usePayPayable = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({ id, data }: { id: string; data: any }) =>
      client.accountingClient.payPayable(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({ queryKey: ["accounting", "payables"] });
      queryClient.invalidateQueries({
        queryKey: ["accounting", "payables", variables.id],
      });
      queryClient.invalidateQueries({
        queryKey: ["accounting", "journal-entries"],
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useDeletePayable = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (id: string) => client.accountingClient.deletePayable(id),
    onSuccess: (data, id) => {
      queryClient.invalidateQueries({ queryKey: ["accounting", "payables"] });
      queryClient.invalidateQueries({
        queryKey: ["accounting", "payables", id],
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

// ============ ACCOUNTS RECEIVABLE ============

export const useReceivables = (filters?: any, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ["accounting", "receivables", filters],
    queryFn: () => client.accountingClient.getReceivables(filters),
    ...options,
  });
};

export const useReceivable = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ["accounting", "receivables", id],
    queryFn: () => client.accountingClient.getReceivable(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useCreateReceivable = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (data: any) => client.accountingClient.createReceivable(data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({
        queryKey: ["accounting", "receivables"],
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useUpdateReceivable = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({ id, data }: { id: string; data: any }) =>
      client.accountingClient.updateReceivable(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({
        queryKey: ["accounting", "receivables"],
      });
      queryClient.invalidateQueries({
        queryKey: ["accounting", "receivables", variables.id],
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useReceivePayment = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({ id, data }: { id: string; data: any }) =>
      client.accountingClient.receivePayment(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({
        queryKey: ["accounting", "receivables"],
      });
      queryClient.invalidateQueries({
        queryKey: ["accounting", "receivables", variables.id],
      });
      queryClient.invalidateQueries({
        queryKey: ["accounting", "journal-entries"],
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useDeleteReceivable = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (id: string) => client.accountingClient.deleteReceivable(id),
    onSuccess: (data, id) => {
      queryClient.invalidateQueries({
        queryKey: ["accounting", "receivables"],
      });
      queryClient.invalidateQueries({
        queryKey: ["accounting", "receivables", id],
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

// ============ BANK ACCOUNTS ============

export const useBankAccounts = (options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ["accounting", "bank-accounts"],
    queryFn: () => client.accountingClient.getBankAccounts(),
    ...options,
  });
};

export const useBankAccount = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ["accounting", "bank-accounts", id],
    queryFn: () => client.accountingClient.getBankAccount(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useCreateBankAccount = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (data: any) => client.accountingClient.createBankAccount(data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({
        queryKey: ["accounting", "bank-accounts"],
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useUpdateBankAccount = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({ id, data }: { id: string; data: any }) =>
      client.accountingClient.updateBankAccount(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({
        queryKey: ["accounting", "bank-accounts"],
      });
      queryClient.invalidateQueries({
        queryKey: ["accounting", "bank-accounts", variables.id],
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useDeleteBankAccount = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (id: string) => client.accountingClient.deleteBankAccount(id),
    onSuccess: (data, id) => {
      queryClient.invalidateQueries({
        queryKey: ["accounting", "bank-accounts"],
      });
      queryClient.invalidateQueries({
        queryKey: ["accounting", "bank-accounts", id],
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

// ============ COST CENTERS ============

export const useCostCenters = (options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ["accounting", "cost-centers"],
    queryFn: () => client.accountingClient.getCostCenters(),
    ...options,
  });
};

export const useCostCenter = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ["accounting", "cost-centers", id],
    queryFn: () => client.accountingClient.getCostCenter(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useCreateCostCenter = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (data: any) => client.accountingClient.createCostCenter(data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({
        queryKey: ["accounting", "cost-centers"],
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useUpdateCostCenter = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({ id, data }: { id: string; data: any }) =>
      client.accountingClient.updateCostCenter(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({
        queryKey: ["accounting", "cost-centers"],
      });
      queryClient.invalidateQueries({
        queryKey: ["accounting", "cost-centers", variables.id],
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useDeleteCostCenter = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (id: string) => client.accountingClient.deleteCostCenter(id),
    onSuccess: (data, id) => {
      queryClient.invalidateQueries({
        queryKey: ["accounting", "cost-centers"],
      });
      queryClient.invalidateQueries({
        queryKey: ["accounting", "cost-centers", id],
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

// ============ FIXED ASSETS ============

export const useFixedAssets = (options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ["accounting", "fixed-assets"],
    queryFn: () => client.accountingClient.getFixedAssets(),
    ...options,
  });
};

export const useFixedAsset = (id: string, options?: QueryOptions) => {
  const client = useProdobitClient();

  return useQuery({
    queryKey: ["accounting", "fixed-assets", id],
    queryFn: () => client.accountingClient.getFixedAsset(id),
    enabled: !!id && options?.enabled !== false,
    ...options,
  });
};

export const useCreateFixedAsset = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (data: any) => client.accountingClient.createFixedAsset(data),
    onSuccess: (data) => {
      queryClient.invalidateQueries({
        queryKey: ["accounting", "fixed-assets"],
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useUpdateFixedAsset = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({ id, data }: { id: string; data: any }) =>
      client.accountingClient.updateFixedAsset(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({
        queryKey: ["accounting", "fixed-assets"],
      });
      queryClient.invalidateQueries({
        queryKey: ["accounting", "fixed-assets", variables.id],
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useDepreciateAsset = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: ({ id, data }: { id: string; data: any }) =>
      client.accountingClient.depreciateAsset(id, data),
    onSuccess: (data, variables) => {
      queryClient.invalidateQueries({
        queryKey: ["accounting", "fixed-assets"],
      });
      queryClient.invalidateQueries({
        queryKey: ["accounting", "fixed-assets", variables.id],
      });
      queryClient.invalidateQueries({
        queryKey: ["accounting", "journal-entries"],
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};

export const useDeleteFixedAsset = (options?: MutationOptions) => {
  const client = useProdobitClient();
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: (id: string) => client.accountingClient.deleteFixedAsset(id),
    onSuccess: (data, id) => {
      queryClient.invalidateQueries({
        queryKey: ["accounting", "fixed-assets"],
      });
      queryClient.invalidateQueries({
        queryKey: ["accounting", "fixed-assets", id],
      });
      options?.onSuccess?.(data);
    },
    onError: options?.onError,
  });
};
