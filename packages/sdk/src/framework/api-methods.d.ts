import type { ProdobitClient } from '../client';
import type { Response, PaginatedResponse, RequestConfig, TenantQuery, CreateTenantRequest, UpdateTenantRequest, Party, CreatePersonRequest, CreateOrganizationRequest, UpdatePartyRequest, Pagination, FrameworkPartyFilters, FrameworkLotFilters, ItemFilters, LocationFilters, AssetFilters, ItemType } from '../types';
/**
 * Framework Integration API - Exposed methods for use with React Query, SWR, etc.
 * Each method returns the raw promise for framework wrappers to consume
 */
export declare class FrameworkAPI {
    private client;
    constructor(client: ProdobitClient);
    auth: {
        getCurrentUser: (config?: RequestConfig) => Promise<Response<{
            id: string;
            twoFactorEnabled: boolean;
            status: "active" | "inactive" | "suspended" | "deleted";
            insertedAt: string;
            updatedAt: string;
            displayName?: string | undefined;
            twoFactorSecret?: string | undefined;
            deletedAt?: string | undefined;
        }>>;
        requestOTP: (email: string, tenantId?: string, config?: RequestConfig) => Promise<{
            success: boolean;
            message: string;
            expiresAt?: string | undefined;
            requiresTenantSelection?: boolean | undefined;
            isNewUser?: boolean | undefined;
            defaultTenantId?: string | undefined;
            defaultTenantName?: string | undefined;
            selectedTenantId?: string | undefined;
            selectedTenantName?: string | undefined;
            tenants?: {
                id: string;
                name: string;
                role: string;
            }[] | undefined;
        }>;
        verifyOTP: (email: string, code: string, tenantId?: string, config?: RequestConfig) => Promise<{
            success: boolean;
            data: {
                user: {
                    id: string;
                    twoFactorEnabled: boolean;
                    status: "active" | "inactive" | "suspended" | "deleted";
                    insertedAt: string;
                    updatedAt: string;
                    displayName?: string | undefined;
                    twoFactorSecret?: string | undefined;
                    deletedAt?: string | undefined;
                };
                session: {
                    accessToken: string;
                    expiresAt: string;
                    refreshToken?: string | undefined;
                };
                isNewUser: boolean;
                tenantMemberships?: {
                    id: string;
                    userId: string;
                    tenantId: string;
                    role: "external" | "admin" | "manager" | "user" | "viewer";
                    status: "active" | "inactive" | "suspended" | "invited";
                    permissions: object;
                    accessLevel: "full" | "limited" | "read_only";
                    resourceRestrictions: object;
                    insertedAt: string;
                    updatedAt: string;
                    ipRestrictions?: object | undefined;
                    timeRestrictions?: object | undefined;
                    expiresAt?: string | undefined;
                    invitedBy?: string | undefined;
                    invitedAt?: string | undefined;
                    joinedAt?: string | undefined;
                    lastLoginAt?: string | undefined;
                    deletedAt?: string | undefined;
                }[] | undefined;
            };
            message?: string | undefined;
        }>;
        refreshToken: (refreshToken?: string, config?: RequestConfig) => Promise<{
            success: boolean;
            data: {
                user: {
                    id: string;
                    twoFactorEnabled: boolean;
                    status: "active" | "inactive" | "suspended" | "deleted";
                    insertedAt: string;
                    updatedAt: string;
                    displayName?: string | undefined;
                    twoFactorSecret?: string | undefined;
                    deletedAt?: string | undefined;
                };
                session: {
                    accessToken: string;
                    expiresAt: string;
                    refreshToken?: string | undefined;
                };
                isNewUser: boolean;
                tenantMemberships?: {
                    id: string;
                    userId: string;
                    tenantId: string;
                    role: "external" | "admin" | "manager" | "user" | "viewer";
                    status: "active" | "inactive" | "suspended" | "invited";
                    permissions: object;
                    accessLevel: "full" | "limited" | "read_only";
                    resourceRestrictions: object;
                    insertedAt: string;
                    updatedAt: string;
                    ipRestrictions?: object | undefined;
                    timeRestrictions?: object | undefined;
                    expiresAt?: string | undefined;
                    invitedBy?: string | undefined;
                    invitedAt?: string | undefined;
                    joinedAt?: string | undefined;
                    lastLoginAt?: string | undefined;
                    deletedAt?: string | undefined;
                }[] | undefined;
            };
            message?: string | undefined;
        }>;
        logout: (allDevices?: boolean, config?: RequestConfig) => Promise<Response<void>>;
    };
    tenants: {
        list: (query?: TenantQuery & Pagination, config?: RequestConfig) => Promise<PaginatedResponse<{
            id: string;
            name: string;
            status: "active" | "inactive" | "suspended" | "deleted";
            subscriptionPlan: "basic" | "pro" | "enterprise";
            settings: object;
            insertedAt: string;
            updatedAt: string;
            deletedAt?: string | undefined;
        }[]>>;
        get: (id: string, config?: RequestConfig) => Promise<Response<{
            id: string;
            name: string;
            status: "active" | "inactive" | "suspended" | "deleted";
            subscriptionPlan: "basic" | "pro" | "enterprise";
            settings: object;
            insertedAt: string;
            updatedAt: string;
            deletedAt?: string | undefined;
        }>>;
        create: (data: CreateTenantRequest, config?: RequestConfig) => Promise<Response<{
            id: string;
            name: string;
            status: "active" | "inactive" | "suspended" | "deleted";
            subscriptionPlan: "basic" | "pro" | "enterprise";
            settings: object;
            insertedAt: string;
            updatedAt: string;
            deletedAt?: string | undefined;
        }>>;
        update: (id: string, data: UpdateTenantRequest, config?: RequestConfig) => Promise<Response<{
            id: string;
            name: string;
            status: "active" | "inactive" | "suspended" | "deleted";
            subscriptionPlan: "basic" | "pro" | "enterprise";
            settings: object;
            insertedAt: string;
            updatedAt: string;
            deletedAt?: string | undefined;
        }>>;
        delete: (id: string, config?: RequestConfig) => Promise<Response<void>>;
        members: (tenantId: string, config?: RequestConfig) => Promise<Response<{
            id: string;
            userId: string;
            tenantId: string;
            role: "external" | "admin" | "manager" | "user" | "viewer";
            status: "active" | "inactive" | "suspended" | "invited";
            permissions: object;
            accessLevel: "full" | "limited" | "read_only";
            resourceRestrictions: object;
            insertedAt: string;
            updatedAt: string;
            ipRestrictions?: object | undefined;
            timeRestrictions?: object | undefined;
            expiresAt?: string | undefined;
            invitedBy?: string | undefined;
            invitedAt?: string | undefined;
            joinedAt?: string | undefined;
            lastLoginAt?: string | undefined;
            deletedAt?: string | undefined;
        }[]>>;
        roles: (tenantId: string, config?: RequestConfig) => Promise<Response<{
            id: string;
            name: string;
            description?: string;
        }[]>>;
    };
    parties: {
        list: (filters?: FrameworkPartyFilters, config?: RequestConfig) => Promise<Response<{
            id: string;
            tenantId: string;
            partyType: "person" | "organization";
            code: string;
            status: "active" | "inactive" | "suspended" | "deleted";
            insertedAt: string;
            updatedAt: string;
            deletedAt?: string | undefined;
        }[]>>;
        get: (id: string, config?: RequestConfig) => Promise<Response<{
            party: Party;
            specificData: import("@prodobit/types").Person | import("@prodobit/types").Organization;
            roles: import("@prodobit/types").PartyRole[];
            addresses: import("@prodobit/types").Address[];
            contacts: import("@prodobit/types").ContactMechanism[];
        }>>;
        createPerson: (data: CreatePersonRequest, config?: RequestConfig) => Promise<Response<{
            party: Party;
            person: import("@prodobit/types").Person;
            roles: import("@prodobit/types").PartyRole[];
        }>>;
        createOrganization: (data: CreateOrganizationRequest, config?: RequestConfig) => Promise<Response<{
            party: Party;
            organization: import("@prodobit/types").Organization;
            roles: import("@prodobit/types").PartyRole[];
        }>>;
        update: (id: string, data: UpdatePartyRequest, config?: RequestConfig) => Promise<Response<{
            party: Party;
            specificData: import("@prodobit/types").Person | import("@prodobit/types").Organization;
            roles: import("@prodobit/types").PartyRole[];
            addresses: import("@prodobit/types").Address[];
            contacts: import("@prodobit/types").ContactMechanism[];
        }>>;
        delete: (id: string, config?: RequestConfig) => Promise<Response<void>>;
        search: (searchTerm: string, partyType?: "person" | "organization", roleType?: "customer" | "supplier" | "employee", config?: RequestConfig) => Promise<Response<{
            id: string;
            tenantId: string;
            partyType: "person" | "organization";
            code: string;
            status: "active" | "inactive" | "suspended" | "deleted";
            insertedAt: string;
            updatedAt: string;
            deletedAt?: string | undefined;
        }[]>>;
        customers: (config?: RequestConfig) => Promise<Response<{
            id: string;
            tenantId: string;
            partyType: "person" | "organization";
            code: string;
            status: "active" | "inactive" | "suspended" | "deleted";
            insertedAt: string;
            updatedAt: string;
            deletedAt?: string | undefined;
        }[]>>;
        suppliers: (config?: RequestConfig) => Promise<Response<{
            id: string;
            tenantId: string;
            partyType: "person" | "organization";
            code: string;
            status: "active" | "inactive" | "suspended" | "deleted";
            insertedAt: string;
            updatedAt: string;
            deletedAt?: string | undefined;
        }[]>>;
        employees: (config?: RequestConfig) => Promise<Response<{
            id: string;
            tenantId: string;
            partyType: "person" | "organization";
            code: string;
            status: "active" | "inactive" | "suspended" | "deleted";
            insertedAt: string;
            updatedAt: string;
            deletedAt?: string | undefined;
        }[]>>;
    };
    items: {
        list: (filters?: ItemFilters, config?: RequestConfig) => Promise<Response<any[]>>;
        get: (id: string, config?: RequestConfig) => Promise<Response<any>>;
        create: (data: any, config?: RequestConfig) => Promise<Response<any>>;
        update: (id: string, data: any, config?: RequestConfig) => Promise<unknown>;
        delete: (id: string, config?: RequestConfig) => Promise<Response<void>>;
        search: (searchTerm: string, filters?: {
            itemType?: "product" | "service" | "raw_material" | "component";
        }, config?: RequestConfig) => Promise<Response<any[]>>;
        products: (config?: RequestConfig) => Promise<Response<any[]>>;
        services: (config?: RequestConfig) => Promise<Response<any[]>>;
        rawMaterials: (config?: RequestConfig) => Promise<Response<any[]>>;
        components: (config?: RequestConfig) => Promise<Response<any[]>>;
        categories: (itemType?: ItemType, config?: RequestConfig) => Promise<Response<any[]>>;
    };
    locations: {
        list: (filters?: LocationFilters, config?: RequestConfig) => Promise<Response<any[]>>;
        get: (id: string, config?: RequestConfig) => Promise<Response<any>>;
        create: (data: any, config?: RequestConfig) => Promise<unknown>;
        update: (id: string, data: any, config?: RequestConfig) => Promise<unknown>;
        delete: (id: string, config?: RequestConfig) => Promise<unknown>;
        children: (parentId: string, config?: RequestConfig) => Promise<unknown>;
        hierarchy: (id: string, config?: RequestConfig) => Promise<unknown>;
        stats: (config?: RequestConfig) => Promise<unknown>;
        types: (category?: string, config?: RequestConfig) => Promise<unknown>;
    };
    assets: {
        list: (filters?: AssetFilters, config?: RequestConfig) => Promise<Response<any[]>>;
        get: (id: string, config?: RequestConfig) => Promise<Response<any>>;
        create: (data: any, config?: RequestConfig) => Promise<unknown>;
        update: (id: string, data: any, config?: RequestConfig) => Promise<unknown>;
        delete: (id: string, config?: RequestConfig) => Promise<unknown>;
        search: (searchTerm: string, filters?: Record<string, unknown>, config?: RequestConfig) => Promise<Response<any[]>>;
        byLocation: (locationId: string, config?: RequestConfig) => Promise<unknown>;
        children: (parentId: string, config?: RequestConfig) => Promise<unknown>;
        hierarchy: (id: string, config?: RequestConfig) => Promise<unknown>;
        stats: (config?: RequestConfig) => Promise<unknown>;
        types: (category?: string, config?: RequestConfig) => Promise<unknown>;
    };
    stocks: {
        list: (filters?: {
            itemId?: string;
            lotId?: string;
            locationId?: string;
            status?: "available" | "reserved" | "quarantined" | "damaged" | "blocked";
            search?: string;
        }, config?: RequestConfig) => Promise<Response<any[]>>;
        get: (id: string, config?: RequestConfig) => Promise<Response<any>>;
        create: (data: any, config?: RequestConfig) => Promise<unknown>;
        update: (id: string, data: any, config?: RequestConfig) => Promise<unknown>;
        delete: (id: string, config?: RequestConfig) => Promise<unknown>;
        levels: (locationId?: string, config?: RequestConfig) => Promise<unknown>;
        transactions: (filters?: any, config?: RequestConfig) => Promise<unknown>;
        createTransaction: (data: any, config?: RequestConfig) => Promise<unknown>;
        stats: (config?: RequestConfig) => Promise<unknown>;
    };
    lots: {
        list: (filters?: FrameworkLotFilters, config?: RequestConfig) => Promise<Response<any[]>>;
        get: (id: string, config?: RequestConfig) => Promise<Response<any>>;
        create: (data: any, config?: RequestConfig) => Promise<unknown>;
        update: (id: string, data: any, config?: RequestConfig) => Promise<unknown>;
        delete: (id: string, config?: RequestConfig) => Promise<unknown>;
        info: (itemId?: string, config?: RequestConfig) => Promise<unknown>;
    };
    features: {
        list: (config?: RequestConfig) => Promise<Response<any>>;
    };
}
export declare function createFrameworkAPI(client: ProdobitClient): FrameworkAPI;
//# sourceMappingURL=api-methods.d.ts.map