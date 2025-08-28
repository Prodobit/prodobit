import type { ProdobitClient } from '../client';
import type { CacheConfig } from '../types';
/**
 * Default cache configuration
 */
export declare const defaultCacheConfig: CacheConfig;
/**
 * Cache Strategy Definitions
 */
export declare const cacheStrategies: {
    readonly static: {
        readonly staleTime: number;
        readonly cacheTime: number;
        readonly refetchOnWindowFocus: false;
        readonly refetchInterval: false;
    };
    readonly standard: {
        readonly staleTime: number;
        readonly cacheTime: number;
        readonly refetchOnWindowFocus: true;
        readonly refetchInterval: false;
    };
    readonly dynamic: {
        readonly staleTime: number;
        readonly cacheTime: number;
        readonly refetchOnWindowFocus: true;
        readonly refetchInterval: number;
    };
    readonly realtime: {
        readonly staleTime: 0;
        readonly cacheTime: number;
        readonly refetchOnWindowFocus: true;
        readonly refetchInterval: number;
    };
};
/**
 * Resource to Strategy Mapping
 */
export declare const resourceCacheStrategies: {
    readonly auth: "standard";
    readonly tenants: "static";
    readonly parties: "standard";
    readonly items: "standard";
    readonly locations: "static";
    readonly assets: "standard";
    readonly stocks: "dynamic";
    readonly lots: "dynamic";
    readonly boms: "standard";
    readonly salesOrders: "dynamic";
    readonly employees: "standard";
    readonly attributes: "static";
    readonly ecos: "dynamic";
};
/**
 * Cache Invalidation Utilities
 */
export declare class CacheManager {
    private client;
    constructor(client: ProdobitClient);
    /**
     * Get cache settings for a resource
     */
    getCacheSettings(resource: keyof typeof resourceCacheStrategies): {
        readonly staleTime: number;
        readonly cacheTime: number;
        readonly refetchOnWindowFocus: false;
        readonly refetchInterval: false;
    } | {
        readonly staleTime: number;
        readonly cacheTime: number;
        readonly refetchOnWindowFocus: true;
        readonly refetchInterval: false;
    } | {
        readonly staleTime: number;
        readonly cacheTime: number;
        readonly refetchOnWindowFocus: true;
        readonly refetchInterval: number;
    } | {
        readonly staleTime: 0;
        readonly cacheTime: number;
        readonly refetchOnWindowFocus: true;
        readonly refetchInterval: number;
    };
    /**
     * Get query key for a resource operation
     */
    getQueryKey(resource: string, operation: string, ...params: any[]): any;
    /**
     * Get invalidation keys after mutation
     */
    getInvalidationKeys(resource: string, operation: 'create' | 'update' | 'delete', id?: string): any[];
    /**
     * Optimistic update helpers
     */
    getOptimisticUpdateKeys(resource: string, id?: string): any[];
    /**
     * Background sync configuration
     */
    getBackgroundSyncConfig(resource: keyof typeof resourceCacheStrategies): {
        enabled: boolean;
        interval: number | undefined;
    };
}
/**
 * Cache Tags for fine-grained invalidation
 */
export declare const cacheTags: {
    readonly tenant: (id: string) => string;
    readonly party: (id: string) => string;
    readonly item: (id: string) => string;
    readonly location: (id: string) => string;
    readonly asset: (id: string) => string;
    readonly stock: (id: string) => string;
    readonly lot: (id: string) => string;
    readonly bom: (id: string) => string;
    readonly salesOrder: (id: string) => string;
    readonly employee: (id: string) => string;
    readonly attribute: (id: string) => string;
    readonly eco: (id: string) => string;
    readonly tenantMembers: (tenantId: string) => string;
    readonly partyRoles: (partyId: string) => string;
    readonly itemVariants: (parentId: string) => string;
    readonly locationChildren: (parentId: string) => string;
    readonly assetChildren: (parentId: string) => string;
    readonly bomComponents: (bomId: string) => string;
    readonly customers: () => string;
    readonly suppliers: () => string;
    readonly employees: () => string;
    readonly products: () => string;
    readonly services: () => string;
    readonly rawMaterials: () => string;
    readonly components: () => string;
};
/**
 * React Query specific utilities
 */
export declare const reactQueryUtils: {
    /**
     * Create React Query options for a resource
     */
    createQueryOptions: (resource: keyof typeof resourceCacheStrategies, queryKey: readonly unknown[], queryFn: () => Promise<any>) => {
        queryKey: readonly unknown[];
        queryFn: () => Promise<any>;
        staleTime: number;
        cacheTime: number;
        refetchOnWindowFocus: boolean;
        refetchInterval: number | false;
        retry: number | boolean;
        retryDelay: number;
    };
    /**
     * Create mutation options with cache invalidation
     */
    createMutationOptions: (resource: string, operation: "create" | "update" | "delete") => {
        onSuccess: (data: any, variables: any, context: any) => any[];
        onError: (error: any, variables: any, context: any) => void;
    };
};
/**
 * SWR specific utilities
 */
export declare const swrUtils: {
    /**
     * Create SWR configuration for a resource
     */
    createSWRConfig: (resource: keyof typeof resourceCacheStrategies) => {
        dedupingInterval: number;
        focusThrottleInterval: number;
        refreshInterval: number | undefined;
        revalidateOnFocus: boolean;
        revalidateOnReconnect: boolean;
        refreshWhenOffline: boolean;
        refreshWhenHidden: boolean;
        errorRetryCount: number;
        errorRetryInterval: number;
    };
    /**
     * Get SWR mutate patterns for cache invalidation
     */
    getMutatePatterns: (resource: string, operation: "create" | "update" | "delete", id?: string) => string[];
};
/**
 * Generic cache utilities for any framework
 */
export declare const cacheUtils: {
    /**
     * Create a cache key fingerprint for debugging
     */
    createFingerprint: (queryKey: readonly unknown[]) => string;
    /**
     * Check if data should be considered fresh
     */
    isFresh: (lastFetched: Date, staleTime: number) => boolean;
    /**
     * Calculate next refetch time
     */
    getNextRefetchTime: (lastFetched: Date, interval: number) => Date;
    /**
     * Merge cache configurations
     */
    mergeConfigs: (base: Partial<CacheConfig>, override: Partial<CacheConfig>) => Partial<CacheConfig>;
};
//# sourceMappingURL=cache-utils.d.ts.map