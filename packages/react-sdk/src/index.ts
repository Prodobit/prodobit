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
  useDeleteAsset 
} from './hooks/useAssets';
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

export * from './types';
export { queryKeys } from './utils/query-keys';