import type {
  AssetPurchase,
  CreateAssetPurchaseRequest,
  UpdateAssetPurchaseRequest,
  AssetPurchaseQuery,
  Response,
} from "@prodobit/types";
import type { RequestConfig } from "../types";
import { BaseClient } from "./base-client";
import { buildQuery } from "../utils/query-builder";

export class AssetPurchaseClient extends BaseClient {
  /**
   * Get all asset purchases with optional filters
   */
  async getAll(
    query?: AssetPurchaseQuery,
    config?: RequestConfig
  ): Promise<Response<AssetPurchase[]>> {
    const queryString = buildQuery(query);
    return this.request("GET", `/api/v1/asset-purchases${queryString ? `?${queryString}` : ""}`, undefined, config);
  }

  /**
   * Get a single asset purchase by ID
   */
  async getById(
    id: string,
    config?: RequestConfig
  ): Promise<Response<AssetPurchase>> {
    return this.request("GET", `/api/v1/asset-purchases/${id}`, undefined, config);
  }

  /**
   * Get purchase history for a specific asset
   */
  async getByAsset(
    assetId: string,
    config?: RequestConfig
  ): Promise<Response<AssetPurchase[]>> {
    return this.request("GET", `/api/v1/asset-purchases/asset/${assetId}`, undefined, config);
  }

  /**
   * Create a new asset purchase
   */
  async create(
    data: CreateAssetPurchaseRequest,
    config?: RequestConfig
  ): Promise<Response<AssetPurchase>> {
    return this.request("POST", "/api/v1/asset-purchases", data, config);
  }

  /**
   * Update an existing asset purchase
   */
  async update(
    id: string,
    data: UpdateAssetPurchaseRequest,
    config?: RequestConfig
  ): Promise<Response<AssetPurchase>> {
    return this.request("PUT", `/api/v1/asset-purchases/${id}`, data, config);
  }

  /**
   * Delete an asset purchase
   */
  async delete(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.request("DELETE", `/api/v1/asset-purchases/${id}`, undefined, config);
  }
}
