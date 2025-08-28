/**
 * Query Keys Factory - Provides consistent query keys for all resources
 */
export declare const queryKeys: {
    readonly auth: {
        readonly all: () => readonly unknown[];
        readonly currentUser: () => readonly unknown[];
        readonly features: () => readonly unknown[];
    };
    readonly tenants: {
        readonly all: () => readonly unknown[];
        readonly lists: () => readonly unknown[];
        readonly list: (filters?: any) => readonly unknown[];
        readonly details: () => readonly unknown[];
        readonly detail: (id: string) => readonly unknown[];
        readonly members: (tenantId: string) => readonly unknown[];
        readonly roles: (tenantId: string) => readonly unknown[];
        readonly invitations: (tenantId: string) => readonly unknown[];
    };
    readonly parties: {
        readonly all: () => readonly unknown[];
        readonly lists: () => readonly unknown[];
        readonly list: (filters?: any) => readonly unknown[];
        readonly details: () => readonly unknown[];
        readonly detail: (id: string) => readonly unknown[];
        readonly search: (searchTerm: string, filters?: any) => readonly unknown[];
        readonly customers: () => readonly unknown[];
        readonly suppliers: () => readonly unknown[];
        readonly employees: () => readonly unknown[];
    };
    readonly items: {
        readonly all: () => readonly unknown[];
        readonly lists: () => readonly unknown[];
        readonly list: (filters?: any) => readonly unknown[];
        readonly details: () => readonly unknown[];
        readonly detail: (id: string) => readonly unknown[];
        readonly search: (searchTerm: string, filters?: any) => readonly unknown[];
        readonly products: () => readonly unknown[];
        readonly services: () => readonly unknown[];
        readonly rawMaterials: () => readonly unknown[];
        readonly components: () => readonly unknown[];
        readonly categories: (itemType?: string) => readonly unknown[];
        readonly variants: (parentId: string) => readonly unknown[];
    };
    readonly locations: {
        readonly all: () => readonly unknown[];
        readonly lists: () => readonly unknown[];
        readonly list: (filters?: any) => readonly unknown[];
        readonly details: () => readonly unknown[];
        readonly detail: (id: string) => readonly unknown[];
        readonly children: (parentId: string) => readonly unknown[];
        readonly hierarchy: (id: string) => readonly unknown[];
        readonly stats: () => readonly unknown[];
        readonly types: (category?: string) => readonly unknown[];
    };
    readonly assets: {
        readonly all: () => readonly unknown[];
        readonly lists: () => readonly unknown[];
        readonly list: (filters?: any) => readonly unknown[];
        readonly details: () => readonly unknown[];
        readonly detail: (id: string) => readonly unknown[];
        readonly search: (searchTerm: string, filters?: any) => readonly unknown[];
        readonly byLocation: (locationId: string) => readonly unknown[];
        readonly children: (parentId: string) => readonly unknown[];
        readonly hierarchy: (id: string) => readonly unknown[];
        readonly stats: () => readonly unknown[];
        readonly types: (category?: string) => readonly unknown[];
    };
    readonly stocks: {
        readonly all: () => readonly unknown[];
        readonly lists: () => readonly unknown[];
        readonly list: (filters?: any) => readonly unknown[];
        readonly details: () => readonly unknown[];
        readonly detail: (id: string) => readonly unknown[];
        readonly levels: (locationId?: string) => readonly unknown[];
        readonly transactions: (filters?: any) => readonly unknown[];
        readonly transaction: (id: string) => readonly unknown[];
        readonly stats: () => readonly unknown[];
    };
    readonly lots: {
        readonly all: () => readonly unknown[];
        readonly lists: () => readonly unknown[];
        readonly list: (filters?: any) => readonly unknown[];
        readonly details: () => readonly unknown[];
        readonly detail: (id: string) => readonly unknown[];
        readonly info: (itemId?: string) => readonly unknown[];
    };
    readonly boms: {
        readonly all: () => readonly unknown[];
        readonly lists: () => readonly unknown[];
        readonly list: (filters?: any) => readonly unknown[];
        readonly details: () => readonly unknown[];
        readonly detail: (id: string) => readonly unknown[];
        readonly components: (bomId: string) => readonly unknown[];
        readonly explosion: (bomId: string, explodePhantoms?: boolean) => readonly unknown[];
        readonly mrpRequirements: (bomId: string, quantity: number, date: string, filter?: string) => readonly unknown[];
        readonly leadTime: (bomId: string) => readonly unknown[];
        readonly stats: () => readonly unknown[];
    };
    readonly salesOrders: {
        readonly all: () => readonly unknown[];
        readonly lists: () => readonly unknown[];
        readonly list: (filters?: any) => readonly unknown[];
        readonly details: () => readonly unknown[];
        readonly detail: (id: string) => readonly unknown[];
        readonly history: (id: string) => readonly unknown[];
    };
    readonly employees: {
        readonly all: () => readonly unknown[];
        readonly lists: () => readonly unknown[];
        readonly list: (filters?: any) => readonly unknown[];
        readonly details: () => readonly unknown[];
        readonly detail: (id: string) => readonly unknown[];
    };
    readonly attributes: {
        readonly all: () => readonly unknown[];
        readonly lists: () => readonly unknown[];
        readonly list: (filters?: any) => readonly unknown[];
        readonly details: () => readonly unknown[];
        readonly detail: (id: string) => readonly unknown[];
    };
    readonly ecos: {
        readonly all: () => readonly unknown[];
        readonly lists: () => readonly unknown[];
        readonly list: (filters?: any) => readonly unknown[];
        readonly details: () => readonly unknown[];
        readonly detail: (id: string) => readonly unknown[];
    };
};
/**
 * Query Key Utilities
 */
export declare const queryKeyUtils: {
    readonly matches: (queryKey: readonly unknown[], pattern: readonly unknown[]) => boolean;
    readonly getInvalidationKeys: (resource: string, operation: "create" | "update" | "delete", id?: string) => any[];
    readonly getMutationKey: (resource: string, operation: "create" | "update" | "delete", id?: string) => readonly unknown[];
};
/**
 * Type-safe query key builders for popular frameworks
 */
export type ReactQueryKey = readonly unknown[];
export type SWRKey = string | readonly unknown[] | null;
export declare const toSWRKey: (queryKey: readonly unknown[]) => string;
export declare const toStringKey: (queryKey: readonly unknown[]) => string;
//# sourceMappingURL=query-keys.d.ts.map