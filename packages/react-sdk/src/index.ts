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
  useRoleBasedAccess, 
  usePermissionCheck,
  useCanManageUsers,
  useCanManageTenants,
  useIsSystemAdmin,
  useIsTenantAdmin
} from './hooks/useRoleBasedAccess';

export * from './types';
export { queryKeys } from './utils/query-keys';