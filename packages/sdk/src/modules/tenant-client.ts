import type {
  CreateTenantRequest,
  PaginatedResponse,
  Response,
  Tenant,
  TenantMembership,
  TenantQuery,
  UpdateTenantRequest,
  Pagination,
} from "@prodobit/types";
import type { 
  RequestConfig, 
  CreateInvitationRequest,
  UpdateMembershipRequest 
} from "../types";
import { BaseClient } from "./base-client";
import { buildQuery } from "../utils/query-builder";

export class TenantClient extends BaseClient {
  async getTenants(
    query?: TenantQuery & Pagination,
    config?: RequestConfig
  ): Promise<PaginatedResponse<Tenant[]>> {
    const queryString = buildQuery(query);
    const path = `/api/v1/tenants${queryString ? `?${queryString}` : ""}`;
    return this.request("GET", path, undefined, config);
  }

  async getTenant(
    id: string,
    config?: RequestConfig
  ): Promise<Response<Tenant>> {
    return this.request("GET", `/api/v1/tenants/${id}`, undefined, config);
  }

  async createTenant(
    data: CreateTenantRequest,
    config?: RequestConfig
  ): Promise<Response<Tenant>> {
    return this.request("POST", "/api/v1/tenants", data, config);
  }

  async updateTenant(
    id: string,
    data: UpdateTenantRequest,
    config?: RequestConfig
  ): Promise<Response<Tenant>> {
    return this.request("PUT", `/api/v1/tenants/${id}`, data, config);
  }

  async deleteTenant(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.request("DELETE", `/api/v1/tenants/${id}`, undefined, config);
  }

  // User Management methods
  async getTenantMembers(
    tenantId: string,
    config?: RequestConfig
  ): Promise<Response<TenantMembership[]>> {
    return this.request(
      "GET",
      `/api/v1/tenants/${tenantId}/members`,
      undefined,
      config
    );
  }

  async getTenantRoles(
    tenantId: string,
    config?: RequestConfig
  ): Promise<Response<{ id: string; name: string; description?: string }[]>> {
    return this.request(
      "GET",
      `/api/v1/tenants/${tenantId}/roles`,
      undefined,
      config
    );
  }

  async getTenantInvitations(
    tenantId: string,
    config?: RequestConfig
  ): Promise<Response<{ id: string; email: string; status: string; expiresAt: string }[]>> {
    return this.request(
      "GET",
      `/api/v1/tenants/${tenantId}/invitations`,
      undefined,
      config
    );
  }

  async createInvitation(
    tenantId: string,
    data: CreateInvitationRequest,
    config?: RequestConfig
  ): Promise<Response<unknown>> {
    return this.request(
      "POST",
      `/api/v1/tenants/${tenantId}/invitations`,
      data,
      config
    );
  }

  async getInvitationByToken(
    token: string,
    config?: RequestConfig
  ): Promise<Response<unknown>> {
    return this.request(
      "GET",
      `/api/v1/invitations/${token}`,
      undefined,
      config
    );
  }

  async acceptInvitation(
    token: string,
    config?: RequestConfig
  ): Promise<Response<unknown>> {
    return this.request(
      "POST",
      `/api/v1/invitations/${token}/accept`,
      undefined,
      config
    );
  }

  async updateMembership(
    tenantId: string,
    membershipId: string,
    data: UpdateMembershipRequest,
    config?: RequestConfig
  ): Promise<Response<unknown>> {
    return this.request(
      "PATCH",
      `/api/v1/tenants/${tenantId}/members/${membershipId}`,
      data,
      config
    );
  }

  async removeMember(
    tenantId: string,
    membershipId: string,
    config?: RequestConfig
  ): Promise<Response<unknown>> {
    return this.request(
      "DELETE",
      `/api/v1/tenants/${tenantId}/members/${membershipId}`,
      undefined,
      config
    );
  }
}