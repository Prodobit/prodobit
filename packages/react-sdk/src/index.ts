export { ProdobitProvider, useProdobitClient, useAuthState } from './providers/ProdobitProvider';
export { ProdobitClient, getProdobitClientSingleton } from '@prodobit/sdk';

export { useAuth, useCurrentUser } from './hooks/useAuth';
export {
  useSessions,
  useRevokeSession,
  useRevokeAllSessions,
  useLogoutOtherDevices,
  useLogoutAllDevices
} from './hooks/useSessions';
export {
  useTenants,
  useTenant,
  useCreateTenant,
  useUpdateTenant,
  useDeleteTenant,
  useTenantMembers,
  useTenantInvitations,
  useCreateInvitation,
  useUpdateMembership,
  useRemoveMember,
  useTenantRoles,
  useAcceptInvitation
} from './hooks/useTenants';
export { 
  useParties, 
  useParty, 
  useCreatePerson,
  useCreateOrganization, 
  useUpdateParty, 
  useDeleteParty,
  useCustomers,
  useSuppliers,
  useEmployees 
} from './hooks/useParties';
export { 
  useItems, 
  useItem, 
  useCreateItem, 
  useUpdateItem,
  useDeleteItem 
} from './hooks/useItems';
export {
  useAssets,
  useAsset,
  useCreateAsset,
  useUpdateAsset,
  useDeleteAsset,
  useAssetIssuesNested,
  useAssetMaintenancePlansNested,
  useAssetMaintenanceRecordsNested,
  useAssetCalibrationPlansNested,
  useAssetCalibrationRecordsNested
} from './hooks/useAssets';
export {
  useAssetTypes,
  useAssetType,
  useCreateAssetType,
  useUpdateAssetType,
  useDeleteAssetType
} from './hooks/useAssetTypes';
export { 
  useStocks, 
  useStock, 
  useStockMovements, 
  useCreateStock,
  useUpdateStock 
} from './hooks/useStocks';
export {
  useLocations,
  useLocation,
  useCreateLocation,
  useUpdateLocation,
  useDeleteLocation
} from './hooks/useLocations';
export {
  useLocationTypes,
  useLocationType,
  useCreateLocationType,
  useUpdateLocationType,
  useDeleteLocationType
} from './hooks/useLocationTypes';
export { 
  useAttributes, 
  useAttribute, 
  useCreateAttribute, 
  useUpdateAttribute, 
  useDeleteAttribute 
} from './hooks/useAttributes';
export {
  useBoms,
  useBom,
  useCreateBom,
  useUpdateBom,
  useDeleteBom,
  useBomComponents,
  useCreateBomComponent,
  useUpdateBomComponent,
  useDeleteBomComponent
} from './hooks/useBoms';
export {
  useEcos,
  useEco,
  useCreateEco,
  useUpdateEco,
  useApproveEco,
  useRejectEco
} from './hooks/useEcos';
export {
  useBrands,
  useBrand,
  useCreateBrand,
  useUpdateBrand,
  useDeleteBrand
} from './hooks/useBrands';
export {
  useItemImages,
  useItemImage,
  useUploadItemImage,
  useDeleteItemImage,
  useSetPrimaryImage,
  useReorderImages,
  useUpdateAltText,
  useStorageStats
} from './hooks/useMedia';
export {
  useAssetImages,
  useUploadAssetImage,
  useUpdateAssetImage,
  useDeleteAssetImage
} from './hooks/useAssetImages';
export {
  useSalesOrders,
  useSalesOrder,
  useCreateSalesOrder,
  useUpdateSalesOrder,
  useDeleteSalesOrder,
  useUpdateSalesOrderStatus,
  useAddSalesOrderItem,
  useUpdateSalesOrderItem,
  useRemoveSalesOrderItem,
  useSalesOrderHistory
} from './hooks/useSalesOrders';
export {
  useWarranties,
  useWarranty,
  useAssetWarranties,
  useActiveAssetWarranty,
  useExpiringWarranties,
  useCreateWarranty,
  useUpdateWarranty,
  useDeleteWarranty
} from './hooks/useWarranties';
export {
  useAssignments,
  useAssignment,
  useAssetAssignmentHistory,
  useActiveAssignments,
  useCreateAssignment,
  useReturnAssignment,
  useTransferAssignment,
  useUpdateAssignment,
  useDeleteAssignment
} from './hooks/useAssignments';
export {
  useAssetPurchases,
  useAssetPurchase,
  useAssetPurchasesByAsset,
  useCreateAssetPurchase,
  useUpdateAssetPurchase,
  useDeleteAssetPurchase
} from './hooks/useAssetPurchases';
export {
  useDepartments,
  useDepartment,
  useDepartmentHierarchy,
  useCreateDepartment,
  useUpdateDepartment,
  useDeleteDepartment,
  useDepartmentMembers,
  useAddDepartmentMember,
  useUpdateDepartmentMember,
  useRemoveDepartmentMember
} from './hooks/useDepartments';
export {
  useRoleBasedAccess,
  usePermissionCheck,
  useCanManageUsers,
  useCanManageTenants,
  useIsSystemAdmin,
  useIsTenantAdmin
} from './hooks/useRoleBasedAccess';
export {
  useAssetIssues,
  useAssetIssue,
  useAssetIssuesByAsset,
  useCriticalAssetIssues,
  useAssetIssueStatistics,
  useCreateAssetIssue,
  useUpdateAssetIssue,
  useDeleteAssetIssue
} from './hooks/useAssetIssues';
export {
  useTasks,
  useTask,
  useSubtasks,
  useTaskDependencies,
  useTasksByAssignee,
  useOverdueTasks,
  useTaskStatistics,
  useCreateTask,
  useUpdateTask,
  useDeleteTask,
  useCreateTaskDependency,
  useDeleteTaskDependency
} from './hooks/useTasks';
export {
  useMaintenancePlans,
  useMaintenancePlan,
  useUpcomingMaintenance,
  useCreateMaintenancePlan,
  useUpdateMaintenancePlan,
  useDeleteMaintenancePlan,
  useMaintenanceRecords,
  useMaintenanceRecord,
  useCreateMaintenanceRecord,
  useUpdateMaintenanceRecord
} from './hooks/useMaintenance';
export {
  useCalibrationPlans,
  useCalibrationPlan,
  useUpcomingCalibrations,
  useExpiringCertificates,
  useCreateCalibrationPlan,
  useUpdateCalibrationPlan,
  useDeleteCalibrationPlan,
  useCalibrationRecords,
  useCalibrationRecord,
  useCreateCalibrationRecord,
  useUpdateCalibrationRecord
} from './hooks/useCalibration';
export {
  useAssetStockUsages,
  useAssetStockUsage,
  useAssetStockUsagesByAsset,
  useAssetStockUsagesByItem,
  useAssetUsageStats,
  useCreateAssetStockUsage,
  useBulkCreateAssetStockUsages,
  useUpdateAssetStockUsage,
  useDeleteAssetStockUsage,
  useSpareParts,
  useCreateSparePart,
  useConsumables,
  useCreateConsumable
} from './hooks/useAssetStockUsages';
export {
  useAssetMeters,
  useAssetMeter,
  useAssetMetersByAsset,
  useMeterStats,
  useCreateAssetMeter,
  useUpdateAssetMeter,
  useDeleteAssetMeter,
  useMeterReadings,
  useCreateMeterReading
} from './hooks/useAssetMeters';
export {
  useAssetStatusHistory,
  useAssetStatusHistoryById,
  useAssetStatusHistoryByAsset,
  useAssetLifecycleSummary,
  useAssetsByStatus,
  useUpdateAssetStatus
} from './hooks/useAssetStatusHistory';
export {
  useMaintenancePlanTriggers,
  useMaintenancePlanTrigger,
  useDueTriggers,
  useCreateMaintenancePlanTrigger,
  useUpdateMaintenancePlanTrigger,
  useDeleteMaintenancePlanTrigger,
  useMarkTriggerTriggered
} from './hooks/useMaintenancePlanTriggers';
export {
  useServiceContracts,
  useServiceContract,
  useServiceContractsByCustomer,
  useServiceContractsForAsset,
  useExpiringServiceContracts,
  useCreateServiceContract,
  useUpdateServiceContract,
  useDeleteServiceContract,
  useServiceContractAssets,
  useAddServiceContractAsset,
  useRemoveServiceContractAsset
} from './hooks/useServiceContracts';
export {
  useServiceTickets,
  useServiceTicket,
  useServiceTicketsByContract,
  useServiceTicketsByAsset,
  useOpenServiceTickets,
  useOverdueServiceTickets,
  useServiceTicketStatistics,
  useCreateServiceTicket,
  useUpdateServiceTicket,
  useDeleteServiceTicket,
  useServiceTicketComments,
  useAddServiceTicketComment,
  useServiceTicketStatusHistory
} from './hooks/useServiceTickets';
export {
  // Settings
  useAccountingSettings,
  useUpdateAccountingSettings,
  useInitializeAccountingFromTemplate,
  // Chart of Accounts
  useAccounts,
  useAccountsTree,
  useAccount,
  useCreateAccount,
  useUpdateAccount,
  useDeleteAccount,
  // Journal Entries
  useJournalEntries,
  useJournalEntry,
  useCreateJournalEntry,
  useUpdateJournalEntry,
  usePostJournalEntry,
  useReverseJournalEntry,
  useDeleteJournalEntry,
  // Ledger & Reports
  useAccountLedger,
  useTrialBalance,
  useIncomeStatement,
  useBalanceSheet,
  // Fiscal Years & Periods
  useFiscalYears,
  useFiscalYear,
  useCreateFiscalYear,
  useFiscalPeriods,
  useCreateFiscalPeriod,
  useCloseFiscalPeriod,
  useReopenFiscalPeriod,
  // Tax Rates
  useTaxRates,
  useTaxRate,
  useCreateTaxRate,
  useUpdateTaxRate,
  useDeleteTaxRate,
  // Accounts Payable
  usePayables,
  usePayable,
  useCreatePayable,
  useUpdatePayable,
  usePayPayable,
  useDeletePayable,
  // Accounts Receivable
  useReceivables,
  useReceivable,
  useCreateReceivable,
  useUpdateReceivable,
  useReceivePayment,
  useDeleteReceivable,
  // Bank Accounts
  useBankAccounts,
  useBankAccount,
  useCreateBankAccount,
  useUpdateBankAccount,
  useDeleteBankAccount,
  // Cost Centers
  useCostCenters,
  useCostCenter,
  useCreateCostCenter,
  useUpdateCostCenter,
  useDeleteCostCenter,
  // Fixed Assets
  useFixedAssets,
  useFixedAsset,
  useCreateFixedAsset,
  useUpdateFixedAsset,
  useDepreciateAsset,
  useDeleteFixedAsset
} from './hooks/useAccounting';

export * from './types';
export { queryKeys } from './utils/query-keys';