import type {
  LocationType,
  CreateLocationTypeRequest,
  UpdateLocationTypeRequest,
} from "@prodobit/types";
import { BaseClient } from "./base-client.js";
import type { Response, RequestConfig } from "../types.js";

export class LocationTypeClient extends BaseClient {
  /**
   * Get all location types
   */
  async list(
    params?: { category?: string },
    config?: RequestConfig
  ): Promise<Response<LocationType[]>> {
    const query = new URLSearchParams();
    if (params?.category) {
      query.append("category", params.category);
    }

    const queryString = query.toString();
    const url = `/api/v1/location-types${queryString ? `?${queryString}` : ""}`;

    return this.request<Response<LocationType[]>>("GET", url, undefined, config);
  }

  /**
   * Get a location type by ID
   */
  async get(
    id: string,
    config?: RequestConfig
  ): Promise<Response<LocationType>> {
    return this.request<Response<LocationType>>("GET", `/api/v1/location-types/${id}`, undefined, config);
  }

  /**
   * Create a new location type
   */
  async create(
    data: CreateLocationTypeRequest,
    config?: RequestConfig
  ): Promise<Response<LocationType>> {
    return this.request<Response<LocationType>>("POST", "/api/v1/location-types", data, config);
  }

  /**
   * Update an existing location type
   */
  async update(
    id: string,
    data: UpdateLocationTypeRequest,
    config?: RequestConfig
  ): Promise<Response<LocationType>> {
    return this.request<Response<LocationType>>("PUT", `/api/v1/location-types/${id}`, data, config);
  }

  /**
   * Delete a location type
   */
  async delete(id: string, config?: RequestConfig): Promise<Response<void>> {
    return this.request<Response<void>>("DELETE", `/api/v1/location-types/${id}`, undefined, config);
  }
}
