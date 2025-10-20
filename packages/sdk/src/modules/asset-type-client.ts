import type {
  AssetType,
  CreateAssetTypeRequest,
  UpdateAssetTypeRequest,
} from "@prodobit/types";
import { BaseClient } from "./base-client.js";
import type { Response, RequestConfig } from "../types.js";

export class AssetTypeClient extends BaseClient {
  /**
   * Get all asset types
   */
  async list(
    params?: { category?: string },
    config?: RequestConfig
  ): Promise<Response<AssetType[]>> {
    const query = new URLSearchParams();
    if (params?.category) {
      query.append("category", params.category);
    }

    const queryString = query.toString();
    const url = `/api/v1/asset-types${queryString ? `?${queryString}` : ""}`;

    return this.request<Response<AssetType[]>>("GET", url, undefined, config);
  }

  /**
   * Get an asset type by ID
   */
  async get(id: string, config?: RequestConfig): Promise<Response<AssetType>> {
    return this.request<Response<AssetType>>("GET", `/api/v1/asset-types/${id}`, undefined, config);
  }

  /**
   * Create a new asset type
   */
  async create(
    data: CreateAssetTypeRequest,
    config?: RequestConfig
  ): Promise<Response<AssetType>> {
    return this.request<Response<AssetType>>("POST", "/api/v1/asset-types", data, config);
  }

  /**
   * Update an existing asset type
   */
  async update(
    id: string,
    data: UpdateAssetTypeRequest,
    config?: RequestConfig
  ): Promise<Response<AssetType>> {
    return this.request<Response<AssetType>>("PUT", `/api/v1/asset-types/${id}`, data, config);
  }

  /**
   * Delete an asset type
   */
  async delete(id: string, config?: RequestConfig): Promise<Response<void>> {
    return this.request<Response<void>>("DELETE", `/api/v1/asset-types/${id}`, undefined, config);
  }
}
