import type {
  AssetIssue,
  CreateAssetIssueRequest,
  UpdateAssetIssueRequest,
  AssetIssueQuery,
  AssetIssueStatistics,
  Response,
} from "@prodobit/types";
import type { RequestConfig } from "../types";
import { BaseClient } from "./base-client";
import { buildQuery } from "../utils/query-builder";

export class AssetIssueClient extends BaseClient {
  /**
   * Get all asset issues with optional filters
   */
  async getAll(
    query?: AssetIssueQuery,
    config?: RequestConfig
  ): Promise<Response<AssetIssue[]>> {
    const queryString = buildQuery(query);
    return this.request("GET", `/api/v1/asset-issues${queryString ? `?${queryString}` : ""}`, undefined, config);
  }

  /**
   * Get a single asset issue by ID
   */
  async getById(
    id: string,
    config?: RequestConfig
  ): Promise<Response<AssetIssue>> {
    return this.request("GET", `/api/v1/asset-issues/${id}`, undefined, config);
  }

  /**
   * Get asset issues by asset ID
   */
  async getByAsset(
    assetId: string,
    config?: RequestConfig
  ): Promise<Response<AssetIssue[]>> {
    return this.request("GET", `/api/v1/asset-issues/asset/${assetId}`, undefined, config);
  }

  /**
   * Get critical asset issues
   */
  async getCritical(
    config?: RequestConfig
  ): Promise<Response<AssetIssue[]>> {
    return this.request("GET", "/api/v1/asset-issues/critical", undefined, config);
  }

  /**
   * Get asset issue statistics
   */
  async getStatistics(
    config?: RequestConfig
  ): Promise<Response<AssetIssueStatistics>> {
    return this.request("GET", "/api/v1/asset-issues/statistics", undefined, config);
  }

  /**
   * Create a new asset issue
   */
  async create(
    data: CreateAssetIssueRequest,
    config?: RequestConfig
  ): Promise<Response<AssetIssue>> {
    return this.request("POST", "/api/v1/asset-issues", data, config);
  }

  /**
   * Update an existing asset issue
   */
  async update(
    id: string,
    data: UpdateAssetIssueRequest,
    config?: RequestConfig
  ): Promise<Response<AssetIssue>> {
    return this.request("PUT", `/api/v1/asset-issues/${id}`, data, config);
  }

  /**
   * Delete an asset issue
   */
  async delete(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.request("DELETE", `/api/v1/asset-issues/${id}`, undefined, config);
  }
}
