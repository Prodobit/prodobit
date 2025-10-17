import type { Database } from "@prodobit/database";
import { assetWarranties, assets } from "@prodobit/database";
import type {
  CreateAssetWarrantyRequest,
  UpdateAssetWarrantyRequest,
  AssetWarrantyQuery,
} from "@prodobit/types";
import { and, eq, isNull, or, gte, lte, SQL } from "drizzle-orm";

export class WarrantyService {
  constructor(private db: Database) {}

  // Create warranty
  async createWarranty(
    data: CreateAssetWarrantyRequest,
    tenantId: string
  ): Promise<any> {
    // Verify asset exists
    const [asset] = await this.db
      .select()
      .from(assets)
      .where(
        and(
          eq(assets.id, data.assetId),
          eq(assets.tenantId, tenantId),
          isNull(assets.deletedAt)
        )
      )
      .limit(1);

    if (!asset) {
      throw new Error("Asset not found");
    }

    const [warranty] = await this.db
      .insert(assetWarranties)
      .values({
        tenantId,
        assetId: data.assetId,
        warrantyType: data.warrantyType,
        providerId: data.providerId,
        startDate: data.startDate,
        expiryDate: data.expiryDate,
        cost: data.cost,
        currency: data.currency || "TRY",
        contractNumber: data.contractNumber,
        coverageDetails: data.coverageDetails,
        isActive: data.isActive ?? true,
        notes: data.notes,
      })
      .returning();

    return warranty;
  }

  // Get all warranties with optional filtering
  async getWarranties(
    params: { tenantId: string } & AssetWarrantyQuery
  ): Promise<any[]> {
    const { tenantId, ...filters } = params;
    const conditions = [
      eq(assetWarranties.tenantId, tenantId),
      isNull(assetWarranties.deletedAt),
    ];

    if (filters?.assetId) {
      conditions.push(eq(assetWarranties.assetId, filters.assetId));
    }

    if (filters?.warrantyType) {
      conditions.push(eq(assetWarranties.warrantyType, filters.warrantyType));
    }

    if (filters?.isActive !== undefined) {
      conditions.push(eq(assetWarranties.isActive, filters.isActive));
    }

    if (filters?.providerId) {
      conditions.push(eq(assetWarranties.providerId, filters.providerId));
    }

    const result = await this.db
      .select({
        warranty: assetWarranties,
        asset: {
          id: assets.id,
          name: assets.name,
          code: assets.code,
        },
      })
      .from(assetWarranties)
      .leftJoin(assets, eq(assetWarranties.assetId, assets.id))
      .where(and(...conditions))
      .orderBy(assetWarranties.expiryDate);

    return result.map((row) => ({
      ...row.warranty,
      asset: row.asset,
    }));
  }

  // Get warranty by ID
  async getWarrantyById(
    warrantyId: string,
    tenantId: string
  ): Promise<any | null> {
    const [result] = await this.db
      .select({
        warranty: assetWarranties,
        asset: {
          id: assets.id,
          name: assets.name,
          code: assets.code,
        },
      })
      .from(assetWarranties)
      .leftJoin(assets, eq(assetWarranties.assetId, assets.id))
      .where(
        and(
          eq(assetWarranties.id, warrantyId),
          eq(assetWarranties.tenantId, tenantId),
          isNull(assetWarranties.deletedAt)
        )
      )
      .limit(1);

    if (!result) return null;

    return {
      ...result.warranty,
      asset: result.asset,
    };
  }

  // Get warranties by asset
  async getWarrantiesByAsset(
    assetId: string,
    tenantId: string
  ): Promise<any[]> {
    return this.getWarranties({ tenantId, assetId });
  }

  // Get expiring warranties
  async getExpiringWarranties(
    tenantId: string,
    daysThreshold: number = 30
  ): Promise<any[]> {
    const today = new Date();
    const thresholdDate = new Date();
    thresholdDate.setDate(today.getDate() + daysThreshold);

    const result = await this.db
      .select({
        warranty: assetWarranties,
        asset: {
          id: assets.id,
          name: assets.name,
          code: assets.code,
        },
      })
      .from(assetWarranties)
      .leftJoin(assets, eq(assetWarranties.assetId, assets.id))
      .where(
        and(
          eq(assetWarranties.tenantId, tenantId),
          eq(assetWarranties.isActive, true),
          isNull(assetWarranties.deletedAt),
          gte(assetWarranties.expiryDate, today.toISOString().split("T")[0]),
          lte(
            assetWarranties.expiryDate,
            thresholdDate.toISOString().split("T")[0]
          )
        )
      )
      .orderBy(assetWarranties.expiryDate);

    return result.map((row) => ({
      ...row.warranty,
      asset: row.asset,
    }));
  }

  // Update warranty
  async updateWarranty(
    warrantyId: string,
    tenantId: string,
    data: UpdateAssetWarrantyRequest
  ): Promise<any | null> {
    const [warranty] = await this.db
      .update(assetWarranties)
      .set({
        ...data,
        updatedAt: new Date(),
      })
      .where(
        and(
          eq(assetWarranties.id, warrantyId),
          eq(assetWarranties.tenantId, tenantId),
          isNull(assetWarranties.deletedAt)
        )
      )
      .returning();

    return warranty || null;
  }

  // Delete warranty (soft delete)
  async deleteWarranty(warrantyId: string, tenantId: string): Promise<boolean> {
    const [deleted] = await this.db
      .update(assetWarranties)
      .set({
        deletedAt: new Date(),
      })
      .where(
        and(
          eq(assetWarranties.id, warrantyId),
          eq(assetWarranties.tenantId, tenantId),
          isNull(assetWarranties.deletedAt)
        )
      )
      .returning();

    return !!deleted;
  }

  // Get active warranty for asset
  async getActiveWarranty(
    assetId: string,
    tenantId: string
  ): Promise<any | null> {
    const today = new Date().toISOString().split("T")[0];

    const [result] = await this.db
      .select({
        warranty: assetWarranties,
        asset: {
          id: assets.id,
          name: assets.name,
          code: assets.code,
        },
      })
      .from(assetWarranties)
      .leftJoin(assets, eq(assetWarranties.assetId, assets.id))
      .where(
        and(
          eq(assetWarranties.assetId, assetId),
          eq(assetWarranties.tenantId, tenantId),
          eq(assetWarranties.isActive, true),
          isNull(assetWarranties.deletedAt),
          gte(assetWarranties.expiryDate, today)
        )
      )
      .orderBy(assetWarranties.expiryDate)
      .limit(1);

    if (!result) return null;

    return {
      ...result.warranty,
      asset: result.asset,
    };
  }
}
