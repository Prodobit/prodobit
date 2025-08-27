// Cache Management Utilities for Framework Integration

import { queryKeys, queryKeyUtils } from './query-keys';
import type { ProdobitClient } from '../client';
import type { CacheConfig } from '../types';

/**
 * Default cache configuration
 */
export const defaultCacheConfig: CacheConfig = {
  defaultStaleTime: 5 * 60 * 1000, // 5 minutes
  defaultCacheTime: 10 * 60 * 1000, // 10 minutes
  
  resourceStaleTime: {
    auth: 15 * 60 * 1000, // 15 minutes - auth info changes less frequently
    tenants: 30 * 60 * 1000, // 30 minutes - tenant info is very stable
    parties: 10 * 60 * 1000, // 10 minutes - party info is moderately stable
    items: 15 * 60 * 1000, // 15 minutes - item info is fairly stable
    locations: 30 * 60 * 1000, // 30 minutes - locations change rarely
    assets: 15 * 60 * 1000, // 15 minutes - assets change occasionally
    stocks: 30 * 1000, // 30 seconds - stock levels change frequently
    lots: 2 * 60 * 1000, // 2 minutes - lot info changes moderately
    boms: 15 * 60 * 1000, // 15 minutes - BOMs are fairly stable
    salesOrders: 5 * 60 * 1000, // 5 minutes - sales orders change regularly
    employees: 10 * 60 * 1000, // 10 minutes - employee info is moderately stable
    attributes: 20 * 60 * 1000, // 20 minutes - attributes change rarely
    ecos: 5 * 60 * 1000, // 5 minutes - ECOs are active during development
  },
  
  refetchOnWindowFocus: true,
  refetchOnReconnect: true,
  refetchInterval: false,
  
  retry: 3,
  retryDelay: 1000,
};

/**
 * Cache Strategy Definitions
 */
export const cacheStrategies = {
  // Read-heavy data that changes infrequently
  static: {
    staleTime: 30 * 60 * 1000, // 30 minutes
    cacheTime: 60 * 60 * 1000, // 1 hour
    refetchOnWindowFocus: false,
    refetchInterval: false,
  },
  
  // Data that changes moderately
  standard: {
    staleTime: 5 * 60 * 1000, // 5 minutes
    cacheTime: 10 * 60 * 1000, // 10 minutes
    refetchOnWindowFocus: true,
    refetchInterval: false,
  },
  
  // Data that changes frequently
  dynamic: {
    staleTime: 30 * 1000, // 30 seconds
    cacheTime: 2 * 60 * 1000, // 2 minutes
    refetchOnWindowFocus: true,
    refetchInterval: 60 * 1000, // 1 minute
  },
  
  // Real-time data
  realtime: {
    staleTime: 0, // Always stale
    cacheTime: 30 * 1000, // 30 seconds
    refetchOnWindowFocus: true,
    refetchInterval: 10 * 1000, // 10 seconds
  },
} as const;

/**
 * Resource to Strategy Mapping
 */
export const resourceCacheStrategies = {
  auth: 'standard',
  tenants: 'static',
  parties: 'standard',
  items: 'standard',
  locations: 'static',
  assets: 'standard',
  stocks: 'dynamic',
  lots: 'dynamic',
  boms: 'standard',
  salesOrders: 'dynamic',
  employees: 'standard',
  attributes: 'static',
  ecos: 'dynamic',
} as const;

/**
 * Cache Invalidation Utilities
 */
export class CacheManager {
  constructor(private client: ProdobitClient) {}

  /**
   * Get cache settings for a resource
   */
  getCacheSettings(resource: keyof typeof resourceCacheStrategies) {
    const strategy = resourceCacheStrategies[resource];
    return cacheStrategies[strategy as keyof typeof cacheStrategies];
  }

  /**
   * Get query key for a resource operation
   */
  getQueryKey(resource: string, operation: string, ...params: any[]) {
    const resourceKeys = (queryKeys as any)[resource];
    if (!resourceKeys || !resourceKeys[operation]) {
      throw new Error(`Invalid resource "${resource}" or operation "${operation}"`);
    }
    return resourceKeys[operation](...params);
  }

  /**
   * Get invalidation keys after mutation
   */
  getInvalidationKeys(resource: string, operation: 'create' | 'update' | 'delete', id?: string) {
    return queryKeyUtils.getInvalidationKeys(resource, operation, id);
  }

  /**
   * Optimistic update helpers
   */
  getOptimisticUpdateKeys(resource: string, id?: string) {
    const resourceKeys = (queryKeys as any)[resource];
    if (!resourceKeys) return [];

    const keys = [resourceKeys.lists()];
    if (id && resourceKeys.detail) {
      keys.push(resourceKeys.detail(id));
    }
    return keys;
  }

  /**
   * Background sync configuration
   */
  getBackgroundSyncConfig(resource: keyof typeof resourceCacheStrategies) {
    const settings = this.getCacheSettings(resource);
    return {
      enabled: settings.refetchInterval !== false,
      interval: typeof settings.refetchInterval === 'number' ? settings.refetchInterval : undefined,
    };
  }
}

/**
 * Cache Tags for fine-grained invalidation
 */
export const cacheTags = {
  // Entity tags
  tenant: (id: string) => `tenant:${id}`,
  party: (id: string) => `party:${id}`,
  item: (id: string) => `item:${id}`,
  location: (id: string) => `location:${id}`,
  asset: (id: string) => `asset:${id}`,
  stock: (id: string) => `stock:${id}`,
  lot: (id: string) => `lot:${id}`,
  bom: (id: string) => `bom:${id}`,
  salesOrder: (id: string) => `sales-order:${id}`,
  employee: (id: string) => `employee:${id}`,
  attribute: (id: string) => `attribute:${id}`,
  eco: (id: string) => `eco:${id}`,
  
  // Relationship tags
  tenantMembers: (tenantId: string) => `tenant:${tenantId}:members`,
  partyRoles: (partyId: string) => `party:${partyId}:roles`,
  itemVariants: (parentId: string) => `item:${parentId}:variants`,
  locationChildren: (parentId: string) => `location:${parentId}:children`,
  assetChildren: (parentId: string) => `asset:${parentId}:children`,
  bomComponents: (bomId: string) => `bom:${bomId}:components`,
  
  // Collection tags
  customers: () => 'parties:customers',
  suppliers: () => 'parties:suppliers',
  employees: () => 'parties:employees',
  products: () => 'items:products',
  services: () => 'items:services',
  rawMaterials: () => 'items:raw-materials',
  components: () => 'items:components',
} as const;

/**
 * React Query specific utilities
 */
export const reactQueryUtils = {
  /**
   * Create React Query options for a resource
   */
  createQueryOptions: (resource: keyof typeof resourceCacheStrategies, queryKey: readonly unknown[], queryFn: () => Promise<any>) => {
    const cacheManager = new CacheManager({} as ProdobitClient); // Placeholder
    const settings = cacheManager.getCacheSettings(resource);
    
    return {
      queryKey,
      queryFn,
      staleTime: settings.staleTime,
      cacheTime: settings.cacheTime,
      refetchOnWindowFocus: settings.refetchOnWindowFocus,
      refetchInterval: settings.refetchInterval,
      retry: defaultCacheConfig.retry,
      retryDelay: defaultCacheConfig.retryDelay,
    };
  },

  /**
   * Create mutation options with cache invalidation
   */
  createMutationOptions: (resource: string, operation: 'create' | 'update' | 'delete') => ({
    onSuccess: (data: any, variables: any, context: any) => {
      // This would typically be handled by the consuming application
      // with access to queryClient.invalidateQueries()
      return queryKeyUtils.getInvalidationKeys(resource, operation, variables?.id);
    },
    
    onError: (error: any, variables: any, context: any) => {
      // Error handling and rollback for optimistic updates
      console.error(`${operation} ${resource} failed:`, error);
    },
  }),
};

/**
 * SWR specific utilities
 */
export const swrUtils = {
  /**
   * Create SWR configuration for a resource
   */
  createSWRConfig: (resource: keyof typeof resourceCacheStrategies) => {
    const cacheManager = new CacheManager({} as ProdobitClient); // Placeholder
    const settings = cacheManager.getCacheSettings(resource);
    
    return {
      dedupingInterval: Math.min(settings.staleTime, 2000), // Max 2 seconds deduping
      focusThrottleInterval: 5000, // 5 seconds
      refreshInterval: typeof settings.refetchInterval === 'number' ? settings.refetchInterval : undefined,
      revalidateOnFocus: settings.refetchOnWindowFocus,
      revalidateOnReconnect: true,
      refreshWhenOffline: false,
      refreshWhenHidden: false,
      errorRetryCount: defaultCacheConfig.retry as number,
      errorRetryInterval: defaultCacheConfig.retryDelay,
    };
  },

  /**
   * Get SWR mutate patterns for cache invalidation
   */
  getMutatePatterns: (resource: string, operation: 'create' | 'update' | 'delete', id?: string) => {
    const keys = queryKeyUtils.getInvalidationKeys(resource, operation, id);
    return keys.map(key => JSON.stringify(key));
  },
};

/**
 * Generic cache utilities for any framework
 */
export const cacheUtils = {
  /**
   * Create a cache key fingerprint for debugging
   */
  createFingerprint: (queryKey: readonly unknown[]): string => {
    const str = JSON.stringify(queryKey);
    return btoa(str).substring(0, 8); // Short hash
  },

  /**
   * Check if data should be considered fresh
   */
  isFresh: (lastFetched: Date, staleTime: number): boolean => {
    return Date.now() - lastFetched.getTime() < staleTime;
  },

  /**
   * Calculate next refetch time
   */
  getNextRefetchTime: (lastFetched: Date, interval: number): Date => {
    return new Date(lastFetched.getTime() + interval);
  },

  /**
   * Merge cache configurations
   */
  mergeConfigs: (base: Partial<CacheConfig>, override: Partial<CacheConfig>): Partial<CacheConfig> => {
    return {
      ...base,
      ...override,
      resourceStaleTime: {
        ...base.resourceStaleTime,
        ...override.resourceStaleTime,
      },
    };
  },
};