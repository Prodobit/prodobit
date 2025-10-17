import type { Database } from "@prodobit/database";
import { assetPurchases, assets } from "@prodobit/database";
import type {
  CreateAssetPurchaseRequest,
  UpdateAssetPurchaseRequest,
  AssetPurchaseQuery,
} from "@prodobit/types";
import { and, eq, isNull, desc } from "drizzle-orm";

export class AssetPurchaseService {
  constructor(private db: Database) {}

  // Create purchase record
  async createPurchase(
    data: CreateAssetPurchaseRequest,
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

    const [purchase] = await this.db
      .insert(assetPurchases)
      .values({
        tenantId,
        assetId: data.assetId,
        purchaseDate: data.purchaseDate,
        purchasePrice: data.purchasePrice,
        currency: data.currency || "TRY",
        vendorId: data.vendorId,
        invoiceNumber: data.invoiceNumber,
        poNumber: data.poNumber,
        purchaseType: data.purchaseType || "new",
        leaseInfo: data.leaseInfo,
        notes: data.notes,
      })
      .returning();

    return purchase;
  }

  // Get all purchases with optional filtering
  async getPurchases(
    params: { tenantId: string } & AssetPurchaseQuery
  ): Promise<any[]> {
    const { tenantId, ...filters } = params;
    const conditions = [
      eq(assetPurchases.tenantId, tenantId),
      isNull(assetPurchases.deletedAt),
    ];

    if (filters?.assetId) {
      conditions.push(eq(assetPurchases.assetId, filters.assetId));
    }

    if (filters?.vendorId) {
      conditions.push(eq(assetPurchases.vendorId, filters.vendorId));
    }

    if (filters?.purchaseType) {
      conditions.push(eq(assetPurchases.purchaseType, filters.purchaseType));
    }

    const result = await this.db
      .select({
        purchase: assetPurchases,
        asset: {
          id: assets.id,
          name: assets.name,
          code: assets.code,
        },
      })
      .from(assetPurchases)
      .leftJoin(assets, eq(assetPurchases.assetId, assets.id))
      .where(and(...conditions))
      .orderBy(desc(assetPurchases.purchaseDate));

    return result.map((row) => ({
      ...row.purchase,
      asset: row.asset,
    }));
  }

  // Get purchase by ID
  async getPurchaseById(
    purchaseId: string,
    tenantId: string
  ): Promise<any | null> {
    const [result] = await this.db
      .select({
        purchase: assetPurchases,
        asset: {
          id: assets.id,
          name: assets.name,
          code: assets.code,
        },
      })
      .from(assetPurchases)
      .leftJoin(assets, eq(assetPurchases.assetId, assets.id))
      .where(
        and(
          eq(assetPurchases.id, purchaseId),
          eq(assetPurchases.tenantId, tenantId),
          isNull(assetPurchases.deletedAt)
        )
      )
      .limit(1);

    if (!result) return null;

    return {
      ...result.purchase,
      asset: result.asset,
    };
  }

  // Get purchases by asset
  async getPurchasesByAsset(
    assetId: string,
    tenantId: string
  ): Promise<any[]> {
    return this.getPurchases({ tenantId, assetId });
  }

  // Get purchases by vendor
  async getPurchasesByVendor(
    vendorId: string,
    tenantId: string
  ): Promise<any[]> {
    return this.getPurchases({ tenantId, vendorId });
  }

  // Update purchase
  async updatePurchase(
    purchaseId: string,
    tenantId: string,
    data: UpdateAssetPurchaseRequest
  ): Promise<any | null> {
    const [purchase] = await this.db
      .update(assetPurchases)
      .set({
        ...data,
        updatedAt: new Date(),
      })
      .where(
        and(
          eq(assetPurchases.id, purchaseId),
          eq(assetPurchases.tenantId, tenantId),
          isNull(assetPurchases.deletedAt)
        )
      )
      .returning();

    return purchase || null;
  }

  // Delete purchase (soft delete)
  async deletePurchase(
    purchaseId: string,
    tenantId: string
  ): Promise<boolean> {
    const [deleted] = await this.db
      .update(assetPurchases)
      .set({
        deletedAt: new Date(),
      })
      .where(
        and(
          eq(assetPurchases.id, purchaseId),
          eq(assetPurchases.tenantId, tenantId),
          isNull(assetPurchases.deletedAt)
        )
      )
      .returning();

    return !!deleted;
  }
}
