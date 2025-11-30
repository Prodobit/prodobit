import type {
  AddContractAssetRequest,
  CreateServiceContractRequest,
  CreateServiceTicketRequest,
  CreateTicketCommentRequest,
  Response,
  ServiceContract,
  ServiceContractAsset,
  ServiceContractQuery,
  ServiceTicket,
  ServiceTicketComment,
  ServiceTicketQuery,
  UpdateServiceContractRequest,
  UpdateServiceTicketRequest,
} from "@prodobit/types";
import type { RequestConfig } from "../types";
import { buildQuery } from "../utils/query-builder";
import { BaseClient } from "./base-client";

export class ServiceClient extends BaseClient {
  // ============================================================================
  // SERVICE CONTRACTS
  // ============================================================================

  /**
   * Get all service contracts with optional filters
   */
  async getContracts(
    query?: ServiceContractQuery,
    config?: RequestConfig
  ): Promise<Response<ServiceContract[]>> {
    const queryString = buildQuery(query);
    return this.request(
      "GET",
      `/api/v1/service/contracts${queryString ? `?${queryString}` : ""}`,
      undefined,
      config
    );
  }

  /**
   * Get a single service contract by ID
   */
  async getContractById(
    id: string,
    config?: RequestConfig
  ): Promise<Response<ServiceContract>> {
    return this.request("GET", `/api/v1/service/contracts/${id}`, undefined, config);
  }

  /**
   * Get service contracts by customer ID
   */
  async getContractsByCustomer(
    customerId: string,
    config?: RequestConfig
  ): Promise<Response<ServiceContract[]>> {
    return this.request(
      "GET",
      `/api/v1/service/contracts/customer/${customerId}`,
      undefined,
      config
    );
  }

  /**
   * Get expiring contracts within specified days
   */
  async getExpiringContracts(
    days: number = 30,
    config?: RequestConfig
  ): Promise<Response<ServiceContract[]>> {
    return this.request(
      "GET",
      `/api/v1/service/contracts/expiring?days=${days}`,
      undefined,
      config
    );
  }

  /**
   * Create a new service contract
   */
  async createContract(
    data: CreateServiceContractRequest,
    config?: RequestConfig
  ): Promise<Response<ServiceContract>> {
    return this.request("POST", "/api/v1/service/contracts", data, config);
  }

  /**
   * Update an existing service contract
   */
  async updateContract(
    id: string,
    data: UpdateServiceContractRequest,
    config?: RequestConfig
  ): Promise<Response<ServiceContract>> {
    return this.request("PUT", `/api/v1/service/contracts/${id}`, data, config);
  }

  /**
   * Delete a service contract
   */
  async deleteContract(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.request(
      "DELETE",
      `/api/v1/service/contracts/${id}`,
      undefined,
      config
    );
  }

  // ============================================================================
  // SERVICE CONTRACT ASSETS
  // ============================================================================

  /**
   * Get assets included in a contract
   */
  async getContractAssets(
    contractId: string,
    config?: RequestConfig
  ): Promise<Response<ServiceContractAsset[]>> {
    return this.request(
      "GET",
      `/api/v1/service/contracts/${contractId}/assets`,
      undefined,
      config
    );
  }

  /**
   * Add an asset to a contract
   */
  async addContractAsset(
    contractId: string,
    data: AddContractAssetRequest,
    config?: RequestConfig
  ): Promise<Response<ServiceContractAsset>> {
    return this.request(
      "POST",
      `/api/v1/service/contracts/${contractId}/assets`,
      data,
      config
    );
  }

  /**
   * Remove an asset from a contract
   */
  async removeContractAsset(
    contractId: string,
    assetId: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.request(
      "DELETE",
      `/api/v1/service/contracts/${contractId}/assets/${assetId}`,
      undefined,
      config
    );
  }

  /**
   * Get contracts that cover a specific asset
   */
  async getContractsForAsset(
    assetId: string,
    config?: RequestConfig
  ): Promise<Response<ServiceContract[]>> {
    return this.request(
      "GET",
      `/api/v1/service/contracts/asset/${assetId}`,
      undefined,
      config
    );
  }

  // ============================================================================
  // SERVICE TICKETS
  // ============================================================================

  /**
   * Get all service tickets with optional filters
   */
  async getTickets(
    query?: ServiceTicketQuery,
    config?: RequestConfig
  ): Promise<Response<ServiceTicket[]>> {
    const queryString = buildQuery(query);
    return this.request(
      "GET",
      `/api/v1/service/tickets${queryString ? `?${queryString}` : ""}`,
      undefined,
      config
    );
  }

  /**
   * Get a single service ticket by ID
   */
  async getTicketById(
    id: string,
    config?: RequestConfig
  ): Promise<Response<ServiceTicket>> {
    return this.request("GET", `/api/v1/service/tickets/${id}`, undefined, config);
  }

  /**
   * Get service tickets by contract ID
   */
  async getTicketsByContract(
    contractId: string,
    config?: RequestConfig
  ): Promise<Response<ServiceTicket[]>> {
    return this.request(
      "GET",
      `/api/v1/service/tickets/contract/${contractId}`,
      undefined,
      config
    );
  }

  /**
   * Get service tickets by asset ID
   */
  async getTicketsByAsset(
    assetId: string,
    config?: RequestConfig
  ): Promise<Response<ServiceTicket[]>> {
    return this.request(
      "GET",
      `/api/v1/service/tickets/asset/${assetId}`,
      undefined,
      config
    );
  }

  /**
   * Get open service tickets
   */
  async getOpenTickets(
    config?: RequestConfig
  ): Promise<Response<ServiceTicket[]>> {
    return this.request(
      "GET",
      "/api/v1/service/tickets/open",
      undefined,
      config
    );
  }

  /**
   * Get overdue service tickets
   */
  async getOverdueTickets(
    config?: RequestConfig
  ): Promise<Response<ServiceTicket[]>> {
    return this.request(
      "GET",
      "/api/v1/service/tickets/overdue",
      undefined,
      config
    );
  }

  /**
   * Get ticket statistics
   */
  async getTicketStatistics(
    config?: RequestConfig
  ): Promise<Response<{
    totalTickets: number;
    openTickets: number;
    closedTickets: number;
    avgResolutionTimeMinutes: number;
    ticketsByPriority: Record<string, number>;
    ticketsByStatus: Record<string, number>;
  }>> {
    return this.request(
      "GET",
      "/api/v1/service/tickets/statistics",
      undefined,
      config
    );
  }

  /**
   * Create a new service ticket
   */
  async createTicket(
    data: CreateServiceTicketRequest,
    config?: RequestConfig
  ): Promise<Response<ServiceTicket>> {
    return this.request("POST", "/api/v1/service/tickets", data, config);
  }

  /**
   * Update an existing service ticket
   */
  async updateTicket(
    id: string,
    data: UpdateServiceTicketRequest,
    config?: RequestConfig
  ): Promise<Response<ServiceTicket>> {
    return this.request("PUT", `/api/v1/service/tickets/${id}`, data, config);
  }

  /**
   * Delete a service ticket
   */
  async deleteTicket(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.request(
      "DELETE",
      `/api/v1/service/tickets/${id}`,
      undefined,
      config
    );
  }

  // ============================================================================
  // TICKET COMMENTS
  // ============================================================================

  /**
   * Get comments for a ticket
   */
  async getTicketComments(
    ticketId: string,
    config?: RequestConfig
  ): Promise<Response<ServiceTicketComment[]>> {
    return this.request(
      "GET",
      `/api/v1/service/tickets/${ticketId}/comments`,
      undefined,
      config
    );
  }

  /**
   * Add a comment to a ticket
   */
  async addTicketComment(
    ticketId: string,
    data: CreateTicketCommentRequest,
    config?: RequestConfig
  ): Promise<Response<ServiceTicketComment>> {
    return this.request(
      "POST",
      `/api/v1/service/tickets/${ticketId}/comments`,
      data,
      config
    );
  }

  // ============================================================================
  // TICKET STATUS HISTORY
  // ============================================================================

  /**
   * Get status history for a ticket
   */
  async getTicketStatusHistory(
    ticketId: string,
    config?: RequestConfig
  ): Promise<Response<unknown[]>> {
    return this.request(
      "GET",
      `/api/v1/service/tickets/${ticketId}/history`,
      undefined,
      config
    );
  }
}
