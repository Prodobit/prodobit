import type {
  AssetAssignment,
  CreateAssetAssignmentRequest,
  UpdateAssetAssignmentRequest,
  AssetAssignmentQuery,
  Response,
} from "@prodobit/types";
import type { RequestConfig } from "../types";
import { BaseClient } from "./base-client";
import { buildQuery } from "../utils/query-builder";

export class AssignmentClient extends BaseClient {
  /**
   * Get all assignments with optional filters
   */
  async getAll(
    query?: AssetAssignmentQuery,
    config?: RequestConfig
  ): Promise<Response<AssetAssignment[]>> {
    const queryString = buildQuery(query);
    return this.request("GET", `/api/v1/assignments${queryString ? `?${queryString}` : ""}`, undefined, config);
  }

  /**
   * Get a single assignment by ID
   */
  async getById(
    id: string,
    config?: RequestConfig
  ): Promise<Response<AssetAssignment>> {
    return this.request("GET", `/api/v1/assignments/${id}`, undefined, config);
  }

  /**
   * Get assignment history for a specific asset
   */
  async getAssetHistory(
    assetId: string,
    config?: RequestConfig
  ): Promise<Response<AssetAssignment[]>> {
    return this.request("GET", `/api/v1/assignments/asset/${assetId}/history`, undefined, config);
  }

  /**
   * Get active assignments for a user/department/location
   */
  async getActiveAssignments(
    assignedTo: string,
    config?: RequestConfig
  ): Promise<Response<AssetAssignment[]>> {
    return this.request("GET", `/api/v1/assignments/active/${assignedTo}`, undefined, config);
  }

  /**
   * Create a new assignment
   */
  async create(
    data: CreateAssetAssignmentRequest,
    config?: RequestConfig
  ): Promise<Response<AssetAssignment>> {
    return this.request("POST", "/api/v1/assignments", data, config);
  }

  /**
   * Return an assignment
   */
  async return(
    id: string,
    returnCondition?: "good" | "damaged" | "needs_repair",
    config?: RequestConfig
  ): Promise<Response<AssetAssignment>> {
    return this.request("POST", `/api/v1/assignments/${id}/return`, { returnCondition }, config);
  }

  /**
   * Transfer an assignment to a new assignee
   */
  async transfer(
    id: string,
    newAssignedTo: string,
    newAssignedType: "user" | "department" | "location",
    config?: RequestConfig
  ): Promise<Response<AssetAssignment>> {
    return this.request("POST", `/api/v1/assignments/${id}/transfer`, { newAssignedTo, newAssignedType }, config);
  }

  /**
   * Update an existing assignment
   */
  async update(
    id: string,
    data: UpdateAssetAssignmentRequest,
    config?: RequestConfig
  ): Promise<Response<AssetAssignment>> {
    return this.request("PUT", `/api/v1/assignments/${id}`, data, config);
  }

  /**
   * Delete an assignment
   */
  async delete(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.request("DELETE", `/api/v1/assignments/${id}`, undefined, config);
  }
}
