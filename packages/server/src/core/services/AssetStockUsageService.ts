import type { Database } from "@prodobit/database";
import {
  assetStockUsages,
  assets,
  items,
  maintenanceRecords,
  calibrationRecords,
  users,
} from "@prodobit/database";
import type {
  CreateAssetStockUsageRequest,
  UpdateAssetStockUsageRequest,
  AssetStockUsageQuery,
} from "@prodobit/types";
import { and, desc, eq, gte, isNull, lte, like, or, SQL } from "drizzle-orm";

export class AssetStockUsageService {
  constructor(private db: Database) {}

  // Create asset stock usage
  async createAssetStockUsage(
    data: CreateAssetStockUsageRequest,
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

    // Verify item exists and is spare_part or consumable
    const [item] = await this.db
      .select()
      .from(items)
      .where(
        and(
          eq(items.id, data.itemId),
          eq(items.tenantId, tenantId),
          isNull(items.deletedAt)
        )
      )
      .limit(1);

    if (!item) {
      throw new Error("Item not found");
    }

    if (item.itemType !== "spare_part" && item.itemType !== "consumable") {
      throw new Error("Item must be a spare_part or consumable");
    }

    // Calculate total cost if unit cost provided
    const totalCost = data.unitCost
      ? (data.unitCost * data.quantity).toString()
      : data.totalCost?.toString();

    const [usage] = await this.db
      .insert(assetStockUsages)
      .values({
        tenantId,
        assetId: data.assetId,
        itemId: data.itemId,
        stockTransactionId: data.stockTransactionId,
        maintenanceRecordId: data.maintenanceRecordId,
        calibrationRecordId: data.calibrationRecordId,
        usageType: data.usageType,
        quantity: data.quantity.toString(),
        unit: data.unit,
        usedAt: data.usedAt ? new Date(data.usedAt) : new Date(),
        usedById: data.usedById,
        unitCost: data.unitCost?.toString(),
        totalCost,
        currency: data.currency || "TRY",
        notes: data.notes,
        lotNumber: data.lotNumber,
        serialNumber: data.serialNumber,
      })
      .returning();

    return usage;
  }

  // Get all asset stock usages with filtering
  async getAssetStockUsages(
    tenantId: string,
    filters?: AssetStockUsageQuery
  ): Promise<any[]> {
    const conditions: SQL<unknown>[] = [
      eq(assetStockUsages.tenantId, tenantId),
      isNull(assetStockUsages.deletedAt),
    ];

    if (filters?.assetId) {
      conditions.push(eq(assetStockUsages.assetId, filters.assetId));
    }

    if (filters?.itemId) {
      conditions.push(eq(assetStockUsages.itemId, filters.itemId));
    }

    if (filters?.usageType) {
      conditions.push(eq(assetStockUsages.usageType, filters.usageType));
    }

    if (filters?.maintenanceRecordId) {
      conditions.push(
        eq(assetStockUsages.maintenanceRecordId, filters.maintenanceRecordId)
      );
    }

    if (filters?.calibrationRecordId) {
      conditions.push(
        eq(assetStockUsages.calibrationRecordId, filters.calibrationRecordId)
      );
    }

    if (filters?.usedById) {
      conditions.push(eq(assetStockUsages.usedById, filters.usedById));
    }

    if (filters?.fromDate) {
      conditions.push(gte(assetStockUsages.usedAt, new Date(filters.fromDate)));
    }

    if (filters?.toDate) {
      conditions.push(lte(assetStockUsages.usedAt, new Date(filters.toDate)));
    }

    const result = await this.db
      .select({
        usage: assetStockUsages,
        asset: {
          id: assets.id,
          name: assets.name,
          code: assets.code,
        },
        item: {
          id: items.id,
          name: items.name,
          code: items.code,
          itemType: items.itemType,
        },
      })
      .from(assetStockUsages)
      .leftJoin(assets, eq(assetStockUsages.assetId, assets.id))
      .leftJoin(items, eq(assetStockUsages.itemId, items.id))
      .where(and(...conditions))
      .orderBy(desc(assetStockUsages.usedAt));

    return result.map((row) => ({
      ...row.usage,
      asset: row.asset,
      item: row.item,
    }));
  }

  // Get asset stock usage by ID
  async getAssetStockUsageById(
    usageId: string,
    tenantId: string
  ): Promise<any | null> {
    const [result] = await this.db
      .select({
        usage: assetStockUsages,
        asset: {
          id: assets.id,
          name: assets.name,
          code: assets.code,
        },
        item: {
          id: items.id,
          name: items.name,
          code: items.code,
          itemType: items.itemType,
        },
      })
      .from(assetStockUsages)
      .leftJoin(assets, eq(assetStockUsages.assetId, assets.id))
      .leftJoin(items, eq(assetStockUsages.itemId, items.id))
      .where(
        and(
          eq(assetStockUsages.id, usageId),
          eq(assetStockUsages.tenantId, tenantId),
          isNull(assetStockUsages.deletedAt)
        )
      )
      .limit(1);

    if (!result) return null;

    return {
      ...result.usage,
      asset: result.asset,
      item: result.item,
    };
  }

  // Get usages by asset ID
  async getUsagesByAsset(assetId: string, tenantId: string): Promise<any[]> {
    return this.getAssetStockUsages(tenantId, { assetId });
  }

  // Get usages by maintenance record
  async getUsagesByMaintenanceRecord(
    maintenanceRecordId: string,
    tenantId: string
  ): Promise<any[]> {
    return this.getAssetStockUsages(tenantId, { maintenanceRecordId });
  }

  // Get usages by calibration record
  async getUsagesByCalibrationRecord(
    calibrationRecordId: string,
    tenantId: string
  ): Promise<any[]> {
    return this.getAssetStockUsages(tenantId, { calibrationRecordId });
  }

  // Update asset stock usage
  async updateAssetStockUsage(
    usageId: string,
    tenantId: string,
    data: UpdateAssetStockUsageRequest
  ): Promise<any | null> {
    const updateData: Record<string, any> = {
      updatedAt: new Date(),
    };

    if (data.usageType !== undefined) updateData.usageType = data.usageType;
    if (data.quantity !== undefined)
      updateData.quantity = data.quantity.toString();
    if (data.unit !== undefined) updateData.unit = data.unit;
    if (data.usedAt !== undefined) updateData.usedAt = new Date(data.usedAt);
    if (data.usedById !== undefined) updateData.usedById = data.usedById;
    if (data.unitCost !== undefined)
      updateData.unitCost = data.unitCost?.toString();
    if (data.totalCost !== undefined)
      updateData.totalCost = data.totalCost?.toString();
    if (data.currency !== undefined) updateData.currency = data.currency;
    if (data.notes !== undefined) updateData.notes = data.notes;
    if (data.lotNumber !== undefined) updateData.lotNumber = data.lotNumber;
    if (data.serialNumber !== undefined)
      updateData.serialNumber = data.serialNumber;
    if (data.maintenanceRecordId !== undefined)
      updateData.maintenanceRecordId = data.maintenanceRecordId;
    if (data.calibrationRecordId !== undefined)
      updateData.calibrationRecordId = data.calibrationRecordId;
    if (data.stockTransactionId !== undefined)
      updateData.stockTransactionId = data.stockTransactionId;

    const [usage] = await this.db
      .update(assetStockUsages)
      .set(updateData)
      .where(
        and(
          eq(assetStockUsages.id, usageId),
          eq(assetStockUsages.tenantId, tenantId),
          isNull(assetStockUsages.deletedAt)
        )
      )
      .returning();

    return usage || null;
  }

  // Delete asset stock usage (soft delete)
  async deleteAssetStockUsage(
    usageId: string,
    tenantId: string
  ): Promise<boolean> {
    const [deleted] = await this.db
      .update(assetStockUsages)
      .set({
        deletedAt: new Date(),
      })
      .where(
        and(
          eq(assetStockUsages.id, usageId),
          eq(assetStockUsages.tenantId, tenantId),
          isNull(assetStockUsages.deletedAt)
        )
      )
      .returning();

    return !!deleted;
  }

  // Get usage statistics for an asset
  async getAssetUsageStats(
    assetId: string,
    tenantId: string
  ): Promise<{
    totalUsages: number;
    usagesByType: Record<string, number>;
    totalCost: number;
    recentUsages: any[];
  }> {
    const usages = await this.getUsagesByAsset(assetId, tenantId);

    const usagesByType: Record<string, number> = {};
    let totalCost = 0;

    usages.forEach((usage) => {
      // Count by type
      const type = usage.usageType;
      usagesByType[type] = (usagesByType[type] || 0) + 1;

      // Sum costs
      if (usage.totalCost) {
        totalCost += parseFloat(usage.totalCost);
      }
    });

    return {
      totalUsages: usages.length,
      usagesByType,
      totalCost,
      recentUsages: usages.slice(0, 10),
    };
  }

  // Bulk create usages (for maintenance/calibration completion)
  async bulkCreateUsages(
    usages: (CreateAssetStockUsageRequest & { tenantId?: string })[],
    tenantId: string
  ): Promise<any[]> {
    const results: any[] = [];

    for (const usage of usages) {
      const created = await this.createAssetStockUsage(usage, tenantId);
      results.push(created);
    }

    return results;
  }
}
