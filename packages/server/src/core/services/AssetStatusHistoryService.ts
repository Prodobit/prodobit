import type { Database } from "@prodobit/database";
import { assetStatusHistory, assets, users } from "@prodobit/database";
import type {
  CreateAssetStatusHistoryRequest,
  UpdateAssetStatusRequest,
  AssetStatusHistoryQuery,
} from "@prodobit/types";
import { and, desc, eq, gte, isNull, lte, SQL } from "drizzle-orm";

export class AssetStatusHistoryService {
  constructor(private db: Database) {}

  /**
   * Record a status change (internal use)
   */
  async recordStatusChange(
    data: CreateAssetStatusHistoryRequest,
    tenantId: string,
    changedById?: string
  ): Promise<any> {
    // Update duration of previous status
    await this.updatePreviousStatusDuration(data.assetId, tenantId);

    const [history] = await this.db
      .insert(assetStatusHistory)
      .values({
        tenantId,
        assetId: data.assetId,
        previousStatus: data.previousStatus,
        newStatus: data.newStatus,
        changeReason: data.changeReason,
        reasonDetails: data.reasonDetails,
        maintenanceRecordId: data.maintenanceRecordId,
        calibrationRecordId: data.calibrationRecordId,
        issueId: data.issueId,
        workOrderId: data.workOrderId,
        locationId: data.locationId,
        notes: data.notes,
        metadata: data.metadata,
        externalReference: data.externalReference,
        changedById,
        changedAt: new Date(),
      })
      .returning();

    return history;
  }

  /**
   * Update asset status with history tracking
   */
  async updateAssetStatus(
    assetId: string,
    tenantId: string,
    data: UpdateAssetStatusRequest,
    changedById?: string
  ): Promise<{ asset: any; history: any }> {
    // Get current asset
    const [asset] = await this.db
      .select()
      .from(assets)
      .where(
        and(
          eq(assets.id, assetId),
          eq(assets.tenantId, tenantId),
          isNull(assets.deletedAt)
        )
      )
      .limit(1);

    if (!asset) {
      throw new Error("Asset not found");
    }

    const previousStatus = asset.status;

    // Don't record if status hasn't changed
    if (previousStatus === data.status) {
      return { asset, history: null };
    }

    // Record history
    const history = await this.recordStatusChange(
      {
        assetId,
        previousStatus,
        newStatus: data.status,
        changeReason: data.changeReason,
        reasonDetails: data.reasonDetails,
        maintenanceRecordId: data.maintenanceRecordId,
        calibrationRecordId: data.calibrationRecordId,
        issueId: data.issueId,
        notes: data.notes,
      },
      tenantId,
      changedById
    );

    // Update asset status
    const [updatedAsset] = await this.db
      .update(assets)
      .set({
        status: data.status,
        updatedAt: new Date(),
      })
      .where(eq(assets.id, assetId))
      .returning();

    return { asset: updatedAsset, history };
  }

  /**
   * Get status history for an asset
   */
  async getAssetStatusHistory(
    tenantId: string,
    filters?: AssetStatusHistoryQuery
  ): Promise<any[]> {
    const conditions: SQL<unknown>[] = [eq(assetStatusHistory.tenantId, tenantId)];

    if (filters?.assetId) {
      conditions.push(eq(assetStatusHistory.assetId, filters.assetId));
    }

    if (filters?.status) {
      conditions.push(eq(assetStatusHistory.newStatus, filters.status));
    }

    if (filters?.changeReason) {
      conditions.push(eq(assetStatusHistory.changeReason, filters.changeReason));
    }

    if (filters?.changedById) {
      conditions.push(eq(assetStatusHistory.changedById, filters.changedById));
    }

    if (filters?.fromDate) {
      conditions.push(
        gte(assetStatusHistory.changedAt, new Date(filters.fromDate))
      );
    }

    if (filters?.toDate) {
      conditions.push(
        lte(assetStatusHistory.changedAt, new Date(filters.toDate))
      );
    }

    const result = await this.db
      .select({
        history: assetStatusHistory,
        asset: {
          id: assets.id,
          name: assets.name,
          code: assets.code,
        },
        changedBy: {
          id: users.id,
          displayName: users.displayName,
        },
      })
      .from(assetStatusHistory)
      .leftJoin(assets, eq(assetStatusHistory.assetId, assets.id))
      .leftJoin(users, eq(assetStatusHistory.changedById, users.id))
      .where(and(...conditions))
      .orderBy(desc(assetStatusHistory.changedAt));

    return result.map((row) => ({
      ...row.history,
      asset: row.asset,
      changedBy: row.changedBy,
    }));
  }

  /**
   * Get status history by ID
   */
  async getStatusHistoryById(
    historyId: string,
    tenantId: string
  ): Promise<any | null> {
    const [result] = await this.db
      .select({
        history: assetStatusHistory,
        asset: {
          id: assets.id,
          name: assets.name,
          code: assets.code,
        },
        changedBy: {
          id: users.id,
          displayName: users.displayName,
        },
      })
      .from(assetStatusHistory)
      .leftJoin(assets, eq(assetStatusHistory.assetId, assets.id))
      .leftJoin(users, eq(assetStatusHistory.changedById, users.id))
      .where(
        and(
          eq(assetStatusHistory.id, historyId),
          eq(assetStatusHistory.tenantId, tenantId)
        )
      )
      .limit(1);

    if (!result) return null;

    return {
      ...result.history,
      asset: result.asset,
      changedBy: result.changedBy,
    };
  }

  /**
   * Get history for a specific asset
   */
  async getHistoryByAsset(assetId: string, tenantId: string): Promise<any[]> {
    return this.getAssetStatusHistory(tenantId, { assetId });
  }

  /**
   * Update duration of previous status entry
   */
  private async updatePreviousStatusDuration(
    assetId: string,
    tenantId: string
  ): Promise<void> {
    // Get the most recent status entry for this asset
    const [lastEntry] = await this.db
      .select()
      .from(assetStatusHistory)
      .where(
        and(
          eq(assetStatusHistory.assetId, assetId),
          eq(assetStatusHistory.tenantId, tenantId)
        )
      )
      .orderBy(desc(assetStatusHistory.changedAt))
      .limit(1);

    if (lastEntry && !lastEntry.durationMinutes) {
      const now = new Date();
      const changedAt = new Date(lastEntry.changedAt);
      const durationMinutes = Math.floor(
        (now.getTime() - changedAt.getTime()) / (1000 * 60)
      );

      await this.db
        .update(assetStatusHistory)
        .set({ durationMinutes: durationMinutes.toString() })
        .where(eq(assetStatusHistory.id, lastEntry.id));
    }
  }

  /**
   * Get lifecycle summary for an asset
   */
  async getAssetLifecycleSummary(
    assetId: string,
    tenantId: string
  ): Promise<{
    assetId: string;
    currentStatus: string;
    totalStatusChanges: number;
    statusDurations: Array<{
      status: string;
      totalDurationMinutes: number;
      occurrenceCount: number;
    }>;
    recentChanges: any[];
    firstRecordedAt: string | null;
    lastChangedAt: string | null;
  }> {
    // Get asset
    const [asset] = await this.db
      .select()
      .from(assets)
      .where(
        and(
          eq(assets.id, assetId),
          eq(assets.tenantId, tenantId),
          isNull(assets.deletedAt)
        )
      )
      .limit(1);

    if (!asset) {
      throw new Error("Asset not found");
    }

    // Get all history
    const history = await this.getHistoryByAsset(assetId, tenantId);

    // Calculate status durations
    const statusDurations: Record<
      string,
      { totalDurationMinutes: number; occurrenceCount: number }
    > = {};

    history.forEach((entry) => {
      const status = entry.newStatus;
      if (!statusDurations[status]) {
        statusDurations[status] = { totalDurationMinutes: 0, occurrenceCount: 0 };
      }
      statusDurations[status].occurrenceCount++;
      if (entry.durationMinutes) {
        statusDurations[status].totalDurationMinutes += parseInt(
          entry.durationMinutes
        );
      }
    });

    return {
      assetId,
      currentStatus: asset.status,
      totalStatusChanges: history.length,
      statusDurations: Object.entries(statusDurations).map(([status, data]) => ({
        status,
        ...data,
      })),
      recentChanges: history.slice(0, 10),
      firstRecordedAt: history.length > 0 ? history[history.length - 1].changedAt : null,
      lastChangedAt: history.length > 0 ? history[0].changedAt : null,
    };
  }

  /**
   * Get assets currently in a specific status
   */
  async getAssetsByStatus(
    status: string,
    tenantId: string
  ): Promise<any[]> {
    const result = await this.db
      .select()
      .from(assets)
      .where(
        and(
          eq(assets.tenantId, tenantId),
          eq(assets.status, status),
          isNull(assets.deletedAt)
        )
      );

    return result;
  }
}
