import type { CreateTenantRequest, PaginatedResponse, Response, Tenant, TenantMembership, TenantQuery, UpdateTenantRequest, Pagination } from "@prodobit/types";
import type { RequestConfig, CreateInvitationRequest, UpdateMembershipRequest } from "../types";
import { BaseClient } from "./base-client";
export declare class TenantClient extends BaseClient {
    getTenants(query?: TenantQuery & Pagination, config?: RequestConfig): Promise<PaginatedResponse<Tenant[]>>;
    getTenant(id: string, config?: RequestConfig): Promise<Response<Tenant>>;
    createTenant(data: CreateTenantRequest, config?: RequestConfig): Promise<Response<Tenant>>;
    updateTenant(id: string, data: UpdateTenantRequest, config?: RequestConfig): Promise<Response<Tenant>>;
    deleteTenant(id: string, config?: RequestConfig): Promise<Response<void>>;
    getTenantMembers(tenantId: string, config?: RequestConfig): Promise<Response<TenantMembership[]>>;
    getTenantRoles(tenantId: string, config?: RequestConfig): Promise<Response<{
        id: string;
        name: string;
        description?: string;
    }[]>>;
    getTenantInvitations(tenantId: string, config?: RequestConfig): Promise<Response<{
        id: string;
        email: string;
        status: string;
        expiresAt: string;
    }[]>>;
    createInvitation(tenantId: string, data: CreateInvitationRequest, config?: RequestConfig): Promise<Response<unknown>>;
    getInvitationByToken(token: string, config?: RequestConfig): Promise<Response<unknown>>;
    acceptInvitation(token: string, config?: RequestConfig): Promise<Response<unknown>>;
    updateMembership(tenantId: string, membershipId: string, data: UpdateMembershipRequest, config?: RequestConfig): Promise<Response<unknown>>;
    removeMember(tenantId: string, membershipId: string, config?: RequestConfig): Promise<Response<unknown>>;
}
//# sourceMappingURL=tenant-client.d.ts.map