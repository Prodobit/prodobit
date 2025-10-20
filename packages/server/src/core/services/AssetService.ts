import type { Database } from "@prodobit/database";
import { assets, assetTypes, locations } from "@prodobit/database";
import type {
  AssetQuery,
  CreateAssetRequest,
  CreateAssetTypeRequest,
} from "@prodobit/types";
import { and, eq, isNull, like, or, SQL } from "drizzle-orm";

export class AssetService {
  constructor(private db: Database) {}

  // Create asset
  async createAsset(data: CreateAssetRequest, tenantId: string): Promise<any> {
    // Verify location exists
    const [location] = await this.db
      .select()
      .from(locations)
      .where(
        and(
          eq(locations.id, data.locationId),
          eq(locations.tenantId, tenantId),
          isNull(locations.deletedAt)
        )
      )
      .limit(1);

    if (!location) {
      throw new Error("Location not found");
    }

    // Generate code if not provided
    const code =
      data.code || this.generateAssetCode(tenantId);

    const [asset] = await this.db
      .insert(assets)
      .values({
        tenantId: tenantId,
        locationId: data.locationId,
        name: data.name,
        code,
        assetTypeId: data.assetTypeId,
        status: data.status || "active",
        parentAssetId: data.parentAssetId,
        serialNumber: data.serialNumber,
        qrCode: data.qrCode,
      })
      .returning();

    return asset;
  }

  // Get all assets with optional filtering
  async getAssets(params: { tenantId: string } & AssetQuery): Promise<any[]> {
    const { tenantId, ...filters } = params;
    const conditions = [
      eq(assets.tenantId, tenantId),
      isNull(assets.deletedAt),
    ];

    if (filters?.locationId) {
      conditions.push(eq(assets.locationId, filters.locationId));
    }

    if (filters?.assetTypeId) {
      conditions.push(eq(assets.assetTypeId, filters.assetTypeId));
    }

    if (filters?.status) {
      conditions.push(eq(assets.status, filters.status));
    }

    if (filters?.parentAssetId) {
      conditions.push(eq(assets.parentAssetId, filters.parentAssetId));
    } else if (filters?.parentAssetId === null) {
      conditions.push(isNull(assets.parentAssetId));
    }

    if (filters?.serialNumber) {
      conditions.push(eq(assets.serialNumber, filters.serialNumber));
    }

    if (filters?.qrCode) {
      conditions.push(eq(assets.qrCode, filters.qrCode));
    }

    if (filters?.search) {
      conditions.push(
        or(
          like(assets.name, `%${filters.search}%`),
          like(assets.code, `%${filters.search}%`),
          like(assets.serialNumber, `%${filters.search}%`),
          like(assets.qrCode, `%${filters.search}%`)
        ) as SQL<unknown>
      );
    }

    const result = await this.db
      .select({
        asset: assets,
        location: {
          id: locations.id,
          name: locations.name,
          code: locations.code,
          locationTypeId: locations.locationTypeId,
        },
      })
      .from(assets)
      .leftJoin(locations, eq(assets.locationId, locations.id))
      .where(and(...conditions))
      .orderBy(assets.name);

    return result.map((row) => ({
      ...row.asset,
      location: row.location,
    }));
  }

  // Get asset by ID
  async getAssetById(assetId: string, tenantId: string): Promise<any | null> {
    const [result] = await this.db
      .select({
        asset: assets,
        location: {
          id: locations.id,
          name: locations.name,
          code: locations.code,
          locationTypeId: locations.locationTypeId,
        },
      })
      .from(assets)
      .leftJoin(locations, eq(assets.locationId, locations.id))
      .where(
        and(
          eq(assets.id, assetId),
          eq(assets.tenantId, tenantId),
          isNull(assets.deletedAt)
        )
      )
      .limit(1);

    if (!result) return null;

    return {
      ...result.asset,
      location: result.location,
    };
  }

  // Get assets by location
  async getAssetsByLocation(
    locationId: string,
    tenantId: string
  ): Promise<any[]> {
    return this.getAssets({ tenantId, locationId });
  }

  // Get child assets
  async getChildAssets(
    parentAssetId: string,
    tenantId: string
  ): Promise<any[]> {
    return this.getAssets({ tenantId, parentAssetId });
  }

  // Get asset hierarchy (all parents up to root)
  async getAssetHierarchy(assetId: string, tenantId: string): Promise<any[]> {
    const hierarchy: any[] = [];
    let currentAssetId: string | null = assetId;

    while (currentAssetId) {
      const asset = await this.getAssetById(currentAssetId, tenantId);
      if (!asset) break;

      hierarchy.unshift(asset);
      currentAssetId = asset.parentAssetId;
    }

    return hierarchy;
  }

  // Update asset
  async updateAsset(
    assetId: string,
    tenantId: string,
    data: Partial<CreateAssetRequest>
  ): Promise<any | null> {
    // If location is being updated, verify it exists
    if (data.locationId) {
      const [location] = await this.db
        .select()
        .from(locations)
        .where(
          and(
            eq(locations.id, data.locationId),
            eq(locations.tenantId, tenantId),
            isNull(locations.deletedAt)
          )
        )
        .limit(1);

      if (!location) {
        throw new Error("Location not found");
      }
    }

    const [asset] = await this.db
      .update(assets)
      .set({
        ...data,
        updatedAt: new Date(),
      })
      .where(
        and(
          eq(assets.id, assetId),
          eq(assets.tenantId, tenantId),
          isNull(assets.deletedAt)
        )
      )
      .returning();

    return asset || null;
  }

  // Delete asset (soft delete)
  async deleteAsset(assetId: string, tenantId: string): Promise<boolean> {
    // Check if asset has child assets
    const childAssets = await this.getChildAssets(assetId, tenantId);
    if (childAssets.length > 0) {
      throw new Error("Cannot delete asset with child assets");
    }

    const [deleted] = await this.db
      .update(assets)
      .set({
        deletedAt: new Date(),
      })
      .where(
        and(
          eq(assets.id, assetId),
          eq(assets.tenantId, tenantId),
          isNull(assets.deletedAt)
        )
      )
      .returning();

    return !!deleted;
  }

  // Move asset to different location
  async moveAsset(
    assetId: string,
    tenantId: string,
    newLocationId: string
  ): Promise<any | null> {
    return this.updateAsset(assetId, tenantId, { locationId: newLocationId });
  }

  // Asset Types methods
  async createAssetType(data: CreateAssetTypeRequest, tenantId: string): Promise<any> {
    const [assetType] = await this.db
      .insert(assetTypes)
      .values({
        tenantId: tenantId,
        name: data.name,
        code: data.code || this.generateAssetTypeCode(tenantId, data.name),
        description: data.description,
        category: data.category,
        isActive: data.isActive ?? true,
      })
      .returning();

    return assetType;
  }

  async getAssetTypes(tenantId: string, category?: string): Promise<any[]> {
    const conditions = [eq(assetTypes.tenantId, tenantId)];

    if (category) {
      conditions.push(eq(assetTypes.category, category));
    }

    const result = await this.db
      .select()
      .from(assetTypes)
      .where(and(...conditions))
      .orderBy(assetTypes.name);

    return result;
  }

  async getAssetTypeById(
    assetTypeId: string,
    tenantId: string
  ): Promise<any | null> {
    const [assetType] = await this.db
      .select()
      .from(assetTypes)
      .where(
        and(eq(assetTypes.id, assetTypeId), eq(assetTypes.tenantId, tenantId))
      )
      .limit(1);

    return assetType || null;
  }

  async updateAssetType(
    assetTypeId: string,
    tenantId: string,
    data: Partial<CreateAssetTypeRequest>
  ): Promise<any | null> {
    const [assetType] = await this.db
      .update(assetTypes)
      .set({
        ...data,
        updatedAt: new Date(),
      })
      .where(
        and(eq(assetTypes.id, assetTypeId), eq(assetTypes.tenantId, tenantId))
      )
      .returning();

    return assetType || null;
  }

  async deleteAssetType(
    assetTypeId: string,
    tenantId: string
  ): Promise<boolean> {
    const [deleted] = await this.db
      .delete(assetTypes)
      .where(
        and(eq(assetTypes.id, assetTypeId), eq(assetTypes.tenantId, tenantId))
      )
      .returning();

    return !!deleted;
  }

  // Helper methods
  private generateAssetCode(tenantId: string): string {
    const prefix = "AST";
    const timestamp = Date.now().toString().slice(-6);
    const random = Math.random().toString(36).substring(2, 4).toUpperCase();
    return `${prefix}${timestamp}${random}`;
  }

  private generateAssetTypeCode(tenantId: string, name: string): string {
    const prefix = name.substring(0, 3).toUpperCase();
    const timestamp = Date.now().toString().slice(-4);
    return `${prefix}${timestamp}`;
  }

  // Get asset statistics
  async getAssetStats(tenantId: string): Promise<{
    totalAssets: number;
    assetsByType: Record<string, number>;
    assetsByStatus: Record<string, number>;
    assetsByLocation: Record<string, number>;
  }> {
    const allAssets = await this.getAssets({ tenantId });

    const assetsByType: Record<string, number> = {};
    const assetsByStatus: Record<string, number> = {};
    const assetsByLocation: Record<string, number> = {};

    allAssets.forEach((asset) => {
      // Count by type
      const type = asset.assetTypeId || "unspecified";
      assetsByType[type] = (assetsByType[type] || 0) + 1;

      // Count by status
      const status = asset.status || "unknown";
      assetsByStatus[status] = (assetsByStatus[status] || 0) + 1;

      // Count by location
      const locationName = asset.location?.name || "unknown location";
      assetsByLocation[locationName] =
        (assetsByLocation[locationName] || 0) + 1;
    });

    return {
      totalAssets: allAssets.length,
      assetsByType,
      assetsByStatus,
      assetsByLocation,
    };
  }

  // Search assets across multiple criteria
  async searchAssets(tenantId: string, query: string): Promise<any[]> {
    const conditions = [
      eq(assets.tenantId, tenantId),
      isNull(assets.deletedAt),
      or(
        like(assets.name, `%${query}%`),
        like(assets.code, `%${query}%`),
        like(assets.serialNumber, `%${query}%`),
        like(assets.qrCode, `%${query}%`)
      ),
    ];

    const result = await this.db
      .select({
        asset: assets,
        location: {
          id: locations.id,
          name: locations.name,
          code: locations.code,
          locationTypeId: locations.locationTypeId,
        },
      })
      .from(assets)
      .leftJoin(locations, eq(assets.locationId, locations.id))
      .where(and(...conditions))
      .orderBy(assets.name)
      .limit(50);

    return result.map((row) => ({
      ...row.asset,
      location: row.location,
    }));
  }
}
