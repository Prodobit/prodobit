import type {
  AssetWarranty,
  CreateAssetWarrantyRequest,
  UpdateAssetWarrantyRequest,
  AssetWarrantyQuery,
  Response,
} from "@prodobit/types";
import type { RequestConfig } from "../types";
import { BaseClient } from "./base-client";
import { buildQuery } from "../utils/query-builder";

export class WarrantyClient extends BaseClient {
  /**
   * Get all warranties with optional filters
   */
  async getAll(
    query?: AssetWarrantyQuery,
    config?: RequestConfig
  ): Promise<Response<AssetWarranty[]>> {
    const queryString = buildQuery(query);
    return this.request("GET", `/api/v1/warranties${queryString ? `?${queryString}` : ""}`, undefined, config);
  }

  /**
   * Get a single warranty by ID
   */
  async getById(
    id: string,
    config?: RequestConfig
  ): Promise<Response<AssetWarranty>> {
    return this.request("GET", `/api/v1/warranties/${id}`, undefined, config);
  }

  /**
   * Get warranties for a specific asset
   */
  async getByAsset(
    assetId: string,
    config?: RequestConfig
  ): Promise<Response<AssetWarranty[]>> {
    return this.request("GET", `/api/v1/warranties/asset/${assetId}`, undefined, config);
  }

  /**
   * Get active warranty for a specific asset
   */
  async getActiveByAsset(
    assetId: string,
    config?: RequestConfig
  ): Promise<Response<AssetWarranty | null>> {
    return this.request("GET", `/api/v1/warranties/asset/${assetId}/active`, undefined, config);
  }

  /**
   * Get warranties expiring within specified days
   */
  async getExpiring(
    days: number = 30,
    config?: RequestConfig
  ): Promise<Response<AssetWarranty[]>> {
    return this.request("GET", `/api/v1/warranties/expiring?days=${days}`, undefined, config);
  }

  /**
   * Create a new warranty
   */
  async create(
    data: CreateAssetWarrantyRequest,
    config?: RequestConfig
  ): Promise<Response<AssetWarranty>> {
    return this.request("POST", "/api/v1/warranties", data, config);
  }

  /**
   * Update an existing warranty
   */
  async update(
    id: string,
    data: UpdateAssetWarrantyRequest,
    config?: RequestConfig
  ): Promise<Response<AssetWarranty>> {
    return this.request("PUT", `/api/v1/warranties/${id}`, data, config);
  }

  /**
   * Delete a warranty
   */
  async delete(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.request("DELETE", `/api/v1/warranties/${id}`, undefined, config);
  }
}
