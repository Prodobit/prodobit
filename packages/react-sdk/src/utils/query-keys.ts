import type { 
  TenantQuery,
  PartyFilters,
  ItemFilters,
  AssetFilters,
  StockFilters,
  LocationFilters,
  AttributeQuery,
  BomQuery,
  SalesOrderFilters,
  Pagination
} from '../types';

export const queryKeys = {
  auth: {
    me: () => ['auth', 'me'] as const,
    permissions: () => ['auth', 'permissions'] as const,
  },
  tenants: {
    all: () => ['tenants'] as const,
    list: (query?: TenantQuery & Pagination) => ['tenants', 'list', query] as const,
    detail: (id: string) => ['tenants', 'detail', id] as const,
    members: (id: string) => ['tenants', id, 'members'] as const,
    invitations: (id: string) => ['tenants', id, 'invitations'] as const,
    roles: (id: string) => ['tenants', id, 'roles'] as const,
  },
  parties: {
    all: () => ['parties'] as const,
    list: (query?: PartyFilters & Pagination) => ['parties', 'list', query] as const,
    detail: (id: string) => ['parties', 'detail', id] as const,
    customers: () => ['parties', 'customers'] as const,
    suppliers: () => ['parties', 'suppliers'] as const,
    employees: () => ['parties', 'employees'] as const,
  },
  items: {
    all: () => ['items'] as const,
    list: (query?: ItemFilters & Pagination) => ['items', 'list', query] as const,
    detail: (id: string) => ['items', 'detail', id] as const,
  },
  assets: {
    all: () => ['assets'] as const,
    list: (filters?: AssetFilters) => ['assets', 'list', filters] as const,
    detail: (id: string) => ['assets', 'detail', id] as const,
  },
  stocks: {
    all: () => ['stocks'] as const,
    list: (filters?: StockFilters) => ['stocks', 'list', filters] as const,
    detail: (id: string) => ['stocks', 'detail', id] as const,
    movements: (filters?: StockFilters) => ['stocks', 'movements', filters] as const,
  },
  locations: {
    all: () => ['locations'] as const,
    list: (filters?: LocationFilters) => ['locations', 'list', filters] as const,
    detail: (id: string) => ['locations', 'detail', id] as const,
  },
  attributes: {
    all: () => ['attributes'] as const,
    list: (query?: AttributeQuery & Pagination) => ['attributes', 'list', query] as const,
    detail: (id: string) => ['attributes', 'detail', id] as const,
  },
  boms: {
    all: () => ['boms'] as const,
    list: (filters?: BomQuery) => ['boms', 'list', filters] as const,
    detail: (id: string) => ['boms', 'detail', id] as const,
  },
  salesOrders: {
    all: () => ['sales-orders'] as const,
    list: (filters?: SalesOrderFilters) => ['sales-orders', 'list', filters] as const,
    detail: (id: string) => ['sales-orders', 'detail', id] as const,
    items: (salesOrderId: string) => ['sales-orders', salesOrderId, 'items'] as const,
    history: (salesOrderId: string) => ['sales-orders', salesOrderId, 'history'] as const,
  },
} as const;