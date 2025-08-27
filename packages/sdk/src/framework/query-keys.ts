// Query Key Generation Helpers for React Query, SWR, etc.

import type { Pagination } from '../types';

/**
 * Standardized query key generation for consistent caching across frameworks
 * Compatible with React Query, SWR, Apollo Client, etc.
 */

// Base query key factory
const createQueryKey = (scope: string, ...segments: (string | number | object | undefined)[]): readonly unknown[] => {
  const filtered = segments.filter(segment => segment !== undefined && segment !== null);
  return [scope, ...filtered] as const;
};

// Utility to normalize filters/pagination for consistent keys
const normalizeParams = (params?: object): object | undefined => {
  if (!params) return undefined;
  
  // Sort keys for consistent cache keys
  const sorted = Object.keys(params)
    .sort()
    .reduce((acc, key) => {
      const value = (params as any)[key];
      if (value !== undefined && value !== null && value !== '') {
        acc[key] = value;
      }
      return acc;
    }, {} as any);
  
  return Object.keys(sorted).length > 0 ? sorted : undefined;
};

/**
 * Query Keys Factory - Provides consistent query keys for all resources
 */
export const queryKeys = {
  // Auth keys
  auth: {
    all: () => createQueryKey('auth'),
    currentUser: () => createQueryKey('auth', 'current-user'),
    features: () => createQueryKey('auth', 'features'),
  },

  // Tenant keys
  tenants: {
    all: () => createQueryKey('tenants'),
    lists: () => createQueryKey('tenants', 'list'),
    list: (filters?: any) => createQueryKey('tenants', 'list', normalizeParams(filters)),
    details: () => createQueryKey('tenants', 'detail'),
    detail: (id: string) => createQueryKey('tenants', 'detail', id),
    members: (tenantId: string) => createQueryKey('tenants', 'detail', tenantId, 'members'),
    roles: (tenantId: string) => createQueryKey('tenants', 'detail', tenantId, 'roles'),
    invitations: (tenantId: string) => createQueryKey('tenants', 'detail', tenantId, 'invitations'),
  },

  // Party keys
  parties: {
    all: () => createQueryKey('parties'),
    lists: () => createQueryKey('parties', 'list'),
    list: (filters?: any) => createQueryKey('parties', 'list', normalizeParams(filters)),
    details: () => createQueryKey('parties', 'detail'),
    detail: (id: string) => createQueryKey('parties', 'detail', id),
    search: (searchTerm: string, filters?: any) => 
      createQueryKey('parties', 'search', searchTerm, normalizeParams(filters)),
    customers: () => createQueryKey('parties', 'customers'),
    suppliers: () => createQueryKey('parties', 'suppliers'),
    employees: () => createQueryKey('parties', 'employees'),
  },

  // Item keys
  items: {
    all: () => createQueryKey('items'),
    lists: () => createQueryKey('items', 'list'),
    list: (filters?: any) => createQueryKey('items', 'list', normalizeParams(filters)),
    details: () => createQueryKey('items', 'detail'),
    detail: (id: string) => createQueryKey('items', 'detail', id),
    search: (searchTerm: string, filters?: any) => 
      createQueryKey('items', 'search', searchTerm, normalizeParams(filters)),
    products: () => createQueryKey('items', 'products'),
    services: () => createQueryKey('items', 'services'),
    rawMaterials: () => createQueryKey('items', 'raw-materials'),
    components: () => createQueryKey('items', 'components'),
    categories: (itemType?: string) => createQueryKey('items', 'categories', itemType),
    variants: (parentId: string) => createQueryKey('items', 'detail', parentId, 'variants'),
  },

  // Location keys
  locations: {
    all: () => createQueryKey('locations'),
    lists: () => createQueryKey('locations', 'list'),
    list: (filters?: any) => createQueryKey('locations', 'list', normalizeParams(filters)),
    details: () => createQueryKey('locations', 'detail'),
    detail: (id: string) => createQueryKey('locations', 'detail', id),
    children: (parentId: string) => createQueryKey('locations', 'detail', parentId, 'children'),
    hierarchy: (id: string) => createQueryKey('locations', 'detail', id, 'hierarchy'),
    stats: () => createQueryKey('locations', 'stats'),
    types: (category?: string) => createQueryKey('locations', 'types', category),
  },

  // Asset keys
  assets: {
    all: () => createQueryKey('assets'),
    lists: () => createQueryKey('assets', 'list'),
    list: (filters?: any) => createQueryKey('assets', 'list', normalizeParams(filters)),
    details: () => createQueryKey('assets', 'detail'),
    detail: (id: string) => createQueryKey('assets', 'detail', id),
    search: (searchTerm: string, filters?: any) => 
      createQueryKey('assets', 'search', searchTerm, normalizeParams(filters)),
    byLocation: (locationId: string) => createQueryKey('assets', 'by-location', locationId),
    children: (parentId: string) => createQueryKey('assets', 'detail', parentId, 'children'),
    hierarchy: (id: string) => createQueryKey('assets', 'detail', id, 'hierarchy'),
    stats: () => createQueryKey('assets', 'stats'),
    types: (category?: string) => createQueryKey('assets', 'types', category),
  },

  // Stock keys
  stocks: {
    all: () => createQueryKey('stocks'),
    lists: () => createQueryKey('stocks', 'list'),
    list: (filters?: any) => createQueryKey('stocks', 'list', normalizeParams(filters)),
    details: () => createQueryKey('stocks', 'detail'),
    detail: (id: string) => createQueryKey('stocks', 'detail', id),
    levels: (locationId?: string) => createQueryKey('stocks', 'levels', locationId),
    transactions: (filters?: any) => createQueryKey('stocks', 'transactions', normalizeParams(filters)),
    transaction: (id: string) => createQueryKey('stocks', 'transaction', id),
    stats: () => createQueryKey('stocks', 'stats'),
  },

  // Lot keys
  lots: {
    all: () => createQueryKey('lots'),
    lists: () => createQueryKey('lots', 'list'),
    list: (filters?: any) => createQueryKey('lots', 'list', normalizeParams(filters)),
    details: () => createQueryKey('lots', 'detail'),
    detail: (id: string) => createQueryKey('lots', 'detail', id),
    info: (itemId?: string) => createQueryKey('lots', 'info', itemId),
  },

  // BOM keys
  boms: {
    all: () => createQueryKey('boms'),
    lists: () => createQueryKey('boms', 'list'),
    list: (filters?: any) => createQueryKey('boms', 'list', normalizeParams(filters)),
    details: () => createQueryKey('boms', 'detail'),
    detail: (id: string) => createQueryKey('boms', 'detail', id),
    components: (bomId: string) => createQueryKey('boms', 'detail', bomId, 'components'),
    explosion: (bomId: string, explodePhantoms?: boolean) => 
      createQueryKey('boms', 'detail', bomId, 'explosion', explodePhantoms ? 'true' : 'false'),
    mrpRequirements: (bomId: string, quantity: number, date: string, filter?: string) =>
      createQueryKey('boms', 'detail', bomId, 'mrp', { quantity, date, filter }),
    leadTime: (bomId: string) => createQueryKey('boms', 'detail', bomId, 'lead-time'),
    stats: () => createQueryKey('boms', 'stats'),
  },

  // Sales Order keys
  salesOrders: {
    all: () => createQueryKey('sales-orders'),
    lists: () => createQueryKey('sales-orders', 'list'),
    list: (filters?: any) => createQueryKey('sales-orders', 'list', normalizeParams(filters)),
    details: () => createQueryKey('sales-orders', 'detail'),
    detail: (id: string) => createQueryKey('sales-orders', 'detail', id),
    history: (id: string) => createQueryKey('sales-orders', 'detail', id, 'history'),
  },

  // Employee keys
  employees: {
    all: () => createQueryKey('employees'),
    lists: () => createQueryKey('employees', 'list'),
    list: (filters?: any) => createQueryKey('employees', 'list', normalizeParams(filters)),
    details: () => createQueryKey('employees', 'detail'),
    detail: (id: string) => createQueryKey('employees', 'detail', id),
  },

  // Attribute keys
  attributes: {
    all: () => createQueryKey('attributes'),
    lists: () => createQueryKey('attributes', 'list'),
    list: (filters?: any) => createQueryKey('attributes', 'list', normalizeParams(filters)),
    details: () => createQueryKey('attributes', 'detail'),
    detail: (id: string) => createQueryKey('attributes', 'detail', id),
  },

  // ECO keys (Engineering Change Orders)
  ecos: {
    all: () => createQueryKey('ecos'),
    lists: () => createQueryKey('ecos', 'list'),
    list: (filters?: any) => createQueryKey('ecos', 'list', normalizeParams(filters)),
    details: () => createQueryKey('ecos', 'detail'),
    detail: (id: string) => createQueryKey('ecos', 'detail', id),
  },
} as const;

/**
 * Query Key Utilities
 */
export const queryKeyUtils = {
  // Check if a query key matches a pattern
  matches: (queryKey: readonly unknown[], pattern: readonly unknown[]): boolean => {
    if (pattern.length > queryKey.length) return false;
    return pattern.every((segment, index) => queryKey[index] === segment);
  },

  // Get invalidation patterns for mutations
  getInvalidationKeys: (resource: string, operation: 'create' | 'update' | 'delete', id?: string) => {
    const baseKey = (queryKeys as any)[resource];
    if (!baseKey) return [];

    switch (operation) {
      case 'create':
        return [
          baseKey.all(),
          baseKey.lists(),
        ];
      
      case 'update':
        return [
          baseKey.all(),
          baseKey.lists(),
          ...(id ? [baseKey.detail(id)] : []),
        ];
      
      case 'delete':
        return [
          baseKey.all(),
          baseKey.lists(),
          baseKey.details(),
        ];
      
      default:
        return [baseKey.all()];
    }
  },

  // Generate mutation keys for optimistic updates
  getMutationKey: (resource: string, operation: 'create' | 'update' | 'delete', id?: string) => {
    return createQueryKey('mutation', resource, operation, id);
  },
} as const;

/**
 * Type-safe query key builders for popular frameworks
 */

// React Query compatible
export type ReactQueryKey = readonly unknown[];

// SWR compatible  
export type SWRKey = string | readonly unknown[] | null;

// Convert query key to SWR format
export const toSWRKey = (queryKey: readonly unknown[]): string => {
  return JSON.stringify(queryKey);
};

// Convert query key to simple string (for basic caching)
export const toStringKey = (queryKey: readonly unknown[]): string => {
  return queryKey
    .map(segment => 
      typeof segment === 'object' && segment !== null 
        ? JSON.stringify(segment)
        : String(segment)
    )
    .join(':');
};