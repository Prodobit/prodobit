import type { ProdobitClient } from '@prodobit/sdk';
import type {
  ItemFilters,
  AssetFilters,
  LocationFilters,
  PartyFilters,
  StockFilters,
  LotFilters,
  SalesOrderFilters,
  AttributeQuery,
  TenantQuery,
  Pagination
} from '@prodobit/sdk';
import type { BomQuery, EcoQuery, BrandQuery } from '@prodobit/types';

export interface ProdobitProviderProps {
  children: React.ReactNode;
  client?: ProdobitClient;
}

export interface QueryOptions {
  enabled?: boolean;
  refetchOnWindowFocus?: boolean;
  refetchOnMount?: boolean;
  staleTime?: number;
  gcTime?: number;
}

export interface MutationOptions {
  onSuccess?: (data: unknown) => void;
  onError?: (error: unknown) => void;
}

// Re-export filter types from SDK
export type {
  ItemFilters,
  AssetFilters,
  LocationFilters,
  PartyFilters,
  StockFilters,
  LotFilters,
  SalesOrderFilters,
  AttributeQuery,
  TenantQuery,
  Pagination,
  BomQuery,
  EcoQuery,
  BrandQuery
};