import type { Database } from "@prodobit/database";
import {
  assetMeters,
  assetMeterReadings,
  assets,
} from "@prodobit/database";
import type {
  CreateAssetMeterRequest,
  UpdateAssetMeterRequest,
  CreateMeterReadingRequest,
  AssetMeterQuery,
  MeterReadingQuery,
} from "@prodobit/types";
import { and, desc, eq, gte, isNull, lte, SQL } from "drizzle-orm";

export class AssetMeterService {
  constructor(private db: Database) {}

  // ============ ASSET METERS ============

  async createAssetMeter(
    data: CreateAssetMeterRequest,
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

    const [meter] = await this.db
      .insert(assetMeters)
      .values({
        tenantId,
        assetId: data.assetId,
        meterType: data.meterType,
        name: data.name,
        unit: data.unit,
        description: data.description,
        initialReading: data.initialReading?.toString() || "0",
        currentReading: data.initialReading?.toString() || "0",
        installationDate: data.installationDate
          ? new Date(data.installationDate)
          : new Date(),
        rolloverValue: data.rolloverValue?.toString(),
        hasRollover: data.hasRollover || false,
      })
      .returning();

    return meter;
  }

  async getAssetMeters(
    tenantId: string,
    filters?: AssetMeterQuery
  ): Promise<any[]> {
    const conditions: SQL<unknown>[] = [
      eq(assetMeters.tenantId, tenantId),
      isNull(assetMeters.deletedAt),
    ];

    if (filters?.assetId) {
      conditions.push(eq(assetMeters.assetId, filters.assetId));
    }

    if (filters?.meterType) {
      conditions.push(eq(assetMeters.meterType, filters.meterType));
    }

    if (filters?.isActive !== undefined) {
      conditions.push(eq(assetMeters.isActive, filters.isActive));
    }

    const result = await this.db
      .select({
        meter: assetMeters,
        asset: {
          id: assets.id,
          name: assets.name,
          code: assets.code,
        },
      })
      .from(assetMeters)
      .leftJoin(assets, eq(assetMeters.assetId, assets.id))
      .where(and(...conditions))
      .orderBy(desc(assetMeters.insertedAt));

    return result.map((row) => ({
      ...row.meter,
      asset: row.asset,
    }));
  }

  async getAssetMeterById(meterId: string, tenantId: string): Promise<any | null> {
    const [result] = await this.db
      .select({
        meter: assetMeters,
        asset: {
          id: assets.id,
          name: assets.name,
          code: assets.code,
        },
      })
      .from(assetMeters)
      .leftJoin(assets, eq(assetMeters.assetId, assets.id))
      .where(
        and(
          eq(assetMeters.id, meterId),
          eq(assetMeters.tenantId, tenantId),
          isNull(assetMeters.deletedAt)
        )
      )
      .limit(1);

    if (!result) return null;

    return {
      ...result.meter,
      asset: result.asset,
    };
  }

  async getMetersByAsset(assetId: string, tenantId: string): Promise<any[]> {
    return this.getAssetMeters(tenantId, { assetId });
  }

  async updateAssetMeter(
    meterId: string,
    tenantId: string,
    data: UpdateAssetMeterRequest
  ): Promise<any | null> {
    const updateData: Record<string, any> = {
      updatedAt: new Date(),
    };

    if (data.name !== undefined) updateData.name = data.name;
    if (data.unit !== undefined) updateData.unit = data.unit;
    if (data.description !== undefined) updateData.description = data.description;
    if (data.rolloverValue !== undefined)
      updateData.rolloverValue = data.rolloverValue?.toString();
    if (data.hasRollover !== undefined) updateData.hasRollover = data.hasRollover;
    if (data.isActive !== undefined) updateData.isActive = data.isActive;

    const [meter] = await this.db
      .update(assetMeters)
      .set(updateData)
      .where(
        and(
          eq(assetMeters.id, meterId),
          eq(assetMeters.tenantId, tenantId),
          isNull(assetMeters.deletedAt)
        )
      )
      .returning();

    return meter || null;
  }

  async deleteAssetMeter(meterId: string, tenantId: string): Promise<boolean> {
    const [deleted] = await this.db
      .update(assetMeters)
      .set({ deletedAt: new Date() })
      .where(
        and(
          eq(assetMeters.id, meterId),
          eq(assetMeters.tenantId, tenantId),
          isNull(assetMeters.deletedAt)
        )
      )
      .returning();

    return !!deleted;
  }

  // ============ METER READINGS ============

  async createMeterReading(
    data: CreateMeterReadingRequest,
    tenantId: string,
    recordedById?: string
  ): Promise<any> {
    // Get the meter
    const [meter] = await this.db
      .select()
      .from(assetMeters)
      .where(
        and(
          eq(assetMeters.id, data.meterId),
          eq(assetMeters.tenantId, tenantId),
          isNull(assetMeters.deletedAt)
        )
      )
      .limit(1);

    if (!meter) {
      throw new Error("Meter not found");
    }

    // Calculate delta
    const previousReading = parseFloat(meter.currentReading);
    const newReading = data.reading;
    let usageSinceLastReading = newReading - previousReading;
    let isRollover = false;
    let rolloverCount = 0;

    // Handle rollover
    if (meter.hasRollover && meter.rolloverValue && usageSinceLastReading < 0) {
      const rolloverValue = parseFloat(meter.rolloverValue);
      usageSinceLastReading = rolloverValue - previousReading + newReading;
      isRollover = true;
      rolloverCount = 1;
    }

    const readingDate = data.readingDate ? new Date(data.readingDate) : new Date();

    // Insert reading
    const [reading] = await this.db
      .insert(assetMeterReadings)
      .values({
        tenantId,
        meterId: data.meterId,
        assetId: meter.assetId,
        reading: newReading.toString(),
        readingDate,
        readingSource: data.readingSource || "manual",
        previousReading: previousReading.toString(),
        usageSinceLastReading: usageSinceLastReading.toString(),
        isRollover,
        rolloverCount: rolloverCount.toString(),
        recordedById,
        notes: data.notes,
        externalId: data.externalId,
        rawValue: data.rawValue,
      })
      .returning();

    // Update meter current reading
    await this.db
      .update(assetMeters)
      .set({
        currentReading: newReading.toString(),
        lastReadingDate: readingDate,
        updatedAt: new Date(),
      })
      .where(eq(assetMeters.id, data.meterId));

    return reading;
  }

  async getMeterReadings(
    tenantId: string,
    filters?: MeterReadingQuery
  ): Promise<any[]> {
    const conditions: SQL<unknown>[] = [
      eq(assetMeterReadings.tenantId, tenantId),
      isNull(assetMeterReadings.deletedAt),
    ];

    if (filters?.meterId) {
      conditions.push(eq(assetMeterReadings.meterId, filters.meterId));
    }

    if (filters?.assetId) {
      conditions.push(eq(assetMeterReadings.assetId, filters.assetId));
    }

    if (filters?.readingSource) {
      conditions.push(eq(assetMeterReadings.readingSource, filters.readingSource));
    }

    if (filters?.fromDate) {
      conditions.push(
        gte(assetMeterReadings.readingDate, new Date(filters.fromDate))
      );
    }

    if (filters?.toDate) {
      conditions.push(
        lte(assetMeterReadings.readingDate, new Date(filters.toDate))
      );
    }

    const result = await this.db
      .select({
        reading: assetMeterReadings,
        meter: {
          id: assetMeters.id,
          name: assetMeters.name,
          meterType: assetMeters.meterType,
          unit: assetMeters.unit,
        },
      })
      .from(assetMeterReadings)
      .leftJoin(assetMeters, eq(assetMeterReadings.meterId, assetMeters.id))
      .where(and(...conditions))
      .orderBy(desc(assetMeterReadings.readingDate));

    return result.map((row) => ({
      ...row.reading,
      meter: row.meter,
    }));
  }

  async getMeterReadingById(
    readingId: string,
    tenantId: string
  ): Promise<any | null> {
    const [result] = await this.db
      .select({
        reading: assetMeterReadings,
        meter: {
          id: assetMeters.id,
          name: assetMeters.name,
          meterType: assetMeters.meterType,
          unit: assetMeters.unit,
        },
      })
      .from(assetMeterReadings)
      .leftJoin(assetMeters, eq(assetMeterReadings.meterId, assetMeters.id))
      .where(
        and(
          eq(assetMeterReadings.id, readingId),
          eq(assetMeterReadings.tenantId, tenantId),
          isNull(assetMeterReadings.deletedAt)
        )
      )
      .limit(1);

    if (!result) return null;

    return {
      ...result.reading,
      meter: result.meter,
    };
  }

  async getReadingsByMeter(meterId: string, tenantId: string): Promise<any[]> {
    return this.getMeterReadings(tenantId, { meterId });
  }

  async getReadingsByAsset(assetId: string, tenantId: string): Promise<any[]> {
    return this.getMeterReadings(tenantId, { assetId });
  }

  async deleteMeterReading(
    readingId: string,
    tenantId: string
  ): Promise<boolean> {
    const [deleted] = await this.db
      .update(assetMeterReadings)
      .set({ deletedAt: new Date() })
      .where(
        and(
          eq(assetMeterReadings.id, readingId),
          eq(assetMeterReadings.tenantId, tenantId),
          isNull(assetMeterReadings.deletedAt)
        )
      )
      .returning();

    return !!deleted;
  }

  // ============ STATISTICS ============

  async getMeterStats(
    meterId: string,
    tenantId: string
  ): Promise<{
    totalReadings: number;
    totalUsage: number;
    averageUsagePerReading: number;
    lastReading: any | null;
    firstReading: any | null;
  }> {
    const readings = await this.getReadingsByMeter(meterId, tenantId);

    let totalUsage = 0;
    readings.forEach((r) => {
      if (r.usageSinceLastReading) {
        totalUsage += parseFloat(r.usageSinceLastReading);
      }
    });

    return {
      totalReadings: readings.length,
      totalUsage,
      averageUsagePerReading:
        readings.length > 0 ? totalUsage / readings.length : 0,
      lastReading: readings[0] || null,
      firstReading: readings[readings.length - 1] || null,
    };
  }
}
