import type { Response } from "@prodobit/types";
import type { LocationBase, AssetBase, LocationFilters, AssetFilters, RequestConfig, CreateLocationRequest, UpdateLocationRequest, CreateAssetRequest, UpdateAssetRequest, CreateLocationTypeRequest, CreateAssetTypeRequest } from "../types";
import { BaseClient } from "./base-client";
export declare class LocationAssetClient extends BaseClient {
    getLocations(filters?: LocationFilters, config?: RequestConfig): Promise<Response<LocationBase[]>>;
    getLocation(locationId: string, config?: RequestConfig): Promise<Response<LocationBase>>;
    getLocationById(locationId: string, config?: RequestConfig): Promise<Response<LocationBase>>;
    getChildLocations(parentLocationId: string, config?: RequestConfig): Promise<Response<LocationBase[]>>;
    getLocationHierarchy(locationId: string, config?: RequestConfig): Promise<Response<LocationBase[]>>;
    createLocation(data: CreateLocationRequest, config?: RequestConfig): Promise<Response<unknown>>;
    updateLocation(locationId: string, data: UpdateLocationRequest, config?: RequestConfig): Promise<Response<unknown>>;
    deleteLocation(locationId: string, config?: RequestConfig): Promise<Response<void>>;
    getLocationStats(config?: RequestConfig): Promise<Response<{
        totalLocations: number;
        locationsByType: Record<string, number>;
        locationsByStatus: Record<string, number>;
    }>>;
    getLocationTypes(category?: string, config?: RequestConfig): Promise<Response<{
        id: string;
        name: string;
        code?: string;
        category?: string;
        isActive: boolean;
    }[]>>;
    createLocationType(data: CreateLocationTypeRequest, config?: RequestConfig): Promise<Response<unknown>>;
    getAssets(filters?: AssetFilters, config?: RequestConfig): Promise<Response<AssetBase[]>>;
    searchAssets(searchTerm: string, filters?: Record<string, unknown>, config?: RequestConfig): Promise<Response<AssetBase[]>>;
    getAsset(assetId: string, config?: RequestConfig): Promise<Response<AssetBase>>;
    getAssetById(assetId: string, config?: RequestConfig): Promise<Response<AssetBase>>;
    getChildAssets(parentAssetId: string, config?: RequestConfig): Promise<Response<AssetBase[]>>;
    getAssetHierarchy(assetId: string, config?: RequestConfig): Promise<Response<AssetBase[]>>;
    getAssetsByLocation(locationId: string, config?: RequestConfig): Promise<Response<AssetBase[]>>;
    createAsset(data: CreateAssetRequest, config?: RequestConfig): Promise<Response<unknown>>;
    updateAsset(assetId: string, data: UpdateAssetRequest, config?: RequestConfig): Promise<Response<unknown>>;
    moveAsset(assetId: string, locationId: string, config?: RequestConfig): Promise<Response<unknown>>;
    deleteAsset(assetId: string, config?: RequestConfig): Promise<Response<void>>;
    getAssetStats(config?: RequestConfig): Promise<Response<{
        totalAssets: number;
        assetsByType: Record<string, number>;
        assetsByStatus: Record<string, number>;
        assetsByLocation: Record<string, number>;
    }>>;
    getAssetTypes(category?: string, config?: RequestConfig): Promise<Response<{
        id: string;
        name: string;
        code?: string;
        category?: string;
        isActive: boolean;
    }[]>>;
    createAssetType(data: CreateAssetTypeRequest, config?: RequestConfig): Promise<Response<unknown>>;
    createLocationQuick(name: string, locationType?: string, parentLocationId?: string, config?: RequestConfig): Promise<Response<unknown>>;
    createAssetQuick(name: string, locationId: string, assetType?: string, config?: RequestConfig): Promise<Response<unknown>>;
}
//# sourceMappingURL=location-asset-client.d.ts.map