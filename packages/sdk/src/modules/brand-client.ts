import type {
  Brand,
  CreateBrandRequest,
  UpdateBrandRequest,
  BrandQuery,
  Response,
} from "@prodobit/types";
import {
  createBrandRequest,
  updateBrandRequest,
} from "@prodobit/types";
import type { RequestConfig } from "../types";
import { BaseClient } from "./base-client";
import { buildQuery } from "../utils/query-builder";
import { validateRequest } from "../utils/validation";

export class BrandClient extends BaseClient {
  /**
   * Get all brands with optional filters
   */
  async getBrands(
    filters?: Partial<BrandQuery>,
    config?: RequestConfig
  ): Promise<Response<Brand[]>> {
    const query = buildQuery(filters);
    return this.request("GET", `/api/v1/brands${query ? `?${query}` : ''}`, undefined, config);
  }

  /**
   * Get a single brand by ID
   */
  async getBrand(
    id: string,
    config?: RequestConfig
  ): Promise<Response<Brand>> {
    return this.request("GET", `/api/v1/brands/${id}`, undefined, config);
  }

  /**
   * Create a new brand
   */
  async createBrand(
    data: CreateBrandRequest,
    config?: RequestConfig
  ): Promise<Response<Brand>> {
    const validatedData = validateRequest(createBrandRequest, data);
    return this.request("POST", "/api/v1/brands", validatedData, config);
  }

  /**
   * Update an existing brand
   */
  async updateBrand(
    id: string,
    data: UpdateBrandRequest,
    config?: RequestConfig
  ): Promise<Response<Brand>> {
    const validatedData = validateRequest(updateBrandRequest, data);
    return this.request("PUT", `/api/v1/brands/${id}`, validatedData, config);
  }

  /**
   * Delete a brand (soft delete)
   */
  async deleteBrand(
    id: string,
    config?: RequestConfig
  ): Promise<Response<Brand>> {
    return this.request("DELETE", `/api/v1/brands/${id}`, undefined, config);
  }
}
