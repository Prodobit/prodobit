import type { Response, Pagination } from "@prodobit/types";
import type {
  LocationBase,
  AssetBase,
  LocationFilters,
  AssetFilters,
  RequestConfig,
  CreateLocationRequest,
  UpdateLocationRequest,
  CreateAssetRequest,
  UpdateAssetRequest,
  CreateLocationTypeRequest,
  CreateAssetTypeRequest,
} from "../types";
import { BaseClient } from "./base-client";
import { buildQuery } from "../utils/query-builder";

export class LocationAssetClient extends BaseClient {
  // Location management methods

  // Get all locations
  async getLocations(
    filters?: LocationFilters,
    config?: RequestConfig
  ): Promise<Response<LocationBase[]>> {
    const queryString = buildQuery(filters);
    const path = `/api/v1/locations${queryString ? `?${queryString}` : ""}`;
    return this.request("GET", path, undefined, config);
  }

  // Get location by ID
  async getLocation(
    locationId: string,
    config?: RequestConfig
  ): Promise<Response<LocationBase>> {
    return this.request(
      "GET",
      `/api/v1/locations/${locationId}`,
      undefined,
      config
    );
  }

  // @deprecated Use getLocation instead
  async getLocationById(
    locationId: string,
    config?: RequestConfig
  ): Promise<Response<LocationBase>> {
    return this.getLocation(locationId, config);
  }

  // Get child locations
  async getChildLocations(
    parentLocationId: string,
    config?: RequestConfig
  ): Promise<Response<LocationBase[]>> {
    return this.request(
      "GET",
      `/api/v1/locations/${parentLocationId}/children`,
      undefined,
      config
    );
  }

  // Get location hierarchy
  async getLocationHierarchy(
    locationId: string,
    config?: RequestConfig
  ): Promise<Response<LocationBase[]>> {
    return this.request(
      "GET",
      `/api/v1/locations/${locationId}/hierarchy`,
      undefined,
      config
    );
  }

  // Create location
  async createLocation(
    data: CreateLocationRequest,
    config?: RequestConfig
  ): Promise<Response<unknown>> {
    return this.request("POST", "/api/v1/locations", data, config);
  }

  // Update location
  async updateLocation(
    locationId: string,
    data: UpdateLocationRequest,
    config?: RequestConfig
  ): Promise<Response<unknown>> {
    return this.request("PUT", `/api/v1/locations/${locationId}`, data, config);
  }

  // Delete location
  async deleteLocation(
    locationId: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.request(
      "DELETE",
      `/api/v1/locations/${locationId}`,
      undefined,
      config
    );
  }

  // Get location statistics
  async getLocationStats(config?: RequestConfig): Promise<
    Response<{
      totalLocations: number;
      locationsByType: Record<string, number>;
      locationsByStatus: Record<string, number>;
    }>
  > {
    return this.request("GET", "/api/v1/locations/stats", undefined, config);
  }

  // Get location types
  async getLocationTypes(
    category?: string,
    config?: RequestConfig
  ): Promise<Response<{ id: string; name: string; code?: string; category?: string; isActive: boolean }[]>> {
    const queryString = category ? `?category=${category}` : "";
    return this.request(
      "GET",
      `/api/v1/locations/types${queryString}`,
      undefined,
      config
    );
  }

  // Create location type
  async createLocationType(
    data: CreateLocationTypeRequest,
    config?: RequestConfig
  ): Promise<Response<unknown>> {
    return this.request("POST", "/api/v1/locations/types", data, config);
  }

  // Asset management methods

  // Get all assets
  async getAssets(
    filters?: AssetFilters,
    config?: RequestConfig
  ): Promise<Response<AssetBase[]>> {
    const queryString = buildQuery(filters);
    const path = `/api/v1/assets${queryString ? `?${queryString}` : ""}`;
    return this.request("GET", path, undefined, config);
  }

  // Search assets
  async searchAssets(
    searchTerm: string,
    filters?: Record<string, unknown>,
    config?: RequestConfig
  ): Promise<Response<AssetBase[]>> {
    const params = new URLSearchParams();
    params.append("q", searchTerm);
    if (filters) {
      Object.entries(filters).forEach(([key, value]) => {
        if (value !== undefined) {
          params.append(key, String(value));
        }
      });
    }
    return this.request(
      "GET",
      `/api/v1/assets/search?${params.toString()}`,
      undefined,
      config
    );
  }

  // Get asset by ID
  async getAsset(
    assetId: string,
    config?: RequestConfig
  ): Promise<Response<AssetBase>> {
    return this.request("GET", `/api/v1/assets/${assetId}`, undefined, config);
  }

  // @deprecated Use getAsset instead
  async getAssetById(
    assetId: string,
    config?: RequestConfig
  ): Promise<Response<AssetBase>> {
    return this.getAsset(assetId, config);
  }

  // Get child assets
  async getChildAssets(
    parentAssetId: string,
    config?: RequestConfig
  ): Promise<Response<AssetBase[]>> {
    return this.request(
      "GET",
      `/api/v1/assets/${parentAssetId}/children`,
      undefined,
      config
    );
  }

  // Get asset hierarchy
  async getAssetHierarchy(
    assetId: string,
    config?: RequestConfig
  ): Promise<Response<AssetBase[]>> {
    return this.request(
      "GET",
      `/api/v1/assets/${assetId}/hierarchy`,
      undefined,
      config
    );
  }

  // Get assets by location
  async getAssetsByLocation(
    locationId: string,
    config?: RequestConfig
  ): Promise<Response<AssetBase[]>> {
    return this.request(
      "GET",
      `/api/v1/assets/by-location/${locationId}`,
      undefined,
      config
    );
  }

  // Create asset
  async createAsset(
    data: CreateAssetRequest,
    config?: RequestConfig
  ): Promise<Response<unknown>> {
    return this.request("POST", "/api/v1/assets", data, config);
  }

  // Update asset
  async updateAsset(
    assetId: string,
    data: UpdateAssetRequest,
    config?: RequestConfig
  ): Promise<Response<unknown>> {
    return this.request("PUT", `/api/v1/assets/${assetId}`, data, config);
  }

  // Move asset to different location
  async moveAsset(
    assetId: string,
    locationId: string,
    config?: RequestConfig
  ): Promise<Response<unknown>> {
    return this.request(
      "PUT",
      `/api/v1/assets/${assetId}/move`,
      { locationId },
      config
    );
  }

  // Delete asset
  async deleteAsset(
    assetId: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.request(
      "DELETE",
      `/api/v1/assets/${assetId}`,
      undefined,
      config
    );
  }

  // Get asset statistics
  async getAssetStats(config?: RequestConfig): Promise<
    Response<{
      totalAssets: number;
      assetsByType: Record<string, number>;
      assetsByStatus: Record<string, number>;
      assetsByLocation: Record<string, number>;
    }>
  > {
    return this.request("GET", "/api/v1/assets/stats", undefined, config);
  }

  // Get asset types
  async getAssetTypes(
    category?: string,
    config?: RequestConfig
  ): Promise<Response<{ id: string; name: string; code?: string; category?: string; isActive: boolean }[]>> {
    const queryString = category ? `?category=${category}` : "";
    return this.request(
      "GET",
      `/api/v1/assets/types${queryString}`,
      undefined,
      config
    );
  }

  // Create asset type
  async createAssetType(
    data: CreateAssetTypeRequest,
    config?: RequestConfig
  ): Promise<Response<unknown>> {
    return this.request("POST", "/api/v1/assets/types", data, config);
  }

  // Helper methods for quick asset and location creation

  async createLocationQuick(
    name: string,
    locationType: string = "area",
    parentLocationId?: string,
    config?: RequestConfig
  ): Promise<Response<unknown>> {
    const data = {
      name,
      locationType,
      parentLocationId,
    };
    return this.createLocation(data, config);
  }

  async createAssetQuick(
    name: string,
    locationId: string,
    assetType: string = "equipment",
    config?: RequestConfig
  ): Promise<Response<unknown>> {
    const data = {
      name,
      locationId,
      assetType,
    };
    return this.createAsset(data, config);
  }
}