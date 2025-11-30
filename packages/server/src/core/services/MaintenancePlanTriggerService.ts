import type { Database } from "@prodobit/database";
import {
  maintenancePlanTriggers,
  maintenancePlans,
  assetMeters,
} from "@prodobit/database";
import type {
  CreateMaintenancePlanTriggerRequest,
  UpdateMaintenancePlanTriggerRequest,
  MaintenancePlanTriggerQuery,
} from "@prodobit/types";
import { and, desc, eq, isNull, SQL } from "drizzle-orm";

export class MaintenancePlanTriggerService {
  constructor(private db: Database) {}

  async createTrigger(
    data: CreateMaintenancePlanTriggerRequest,
    tenantId: string
  ): Promise<any> {
    // Verify maintenance plan exists
    const [plan] = await this.db
      .select()
      .from(maintenancePlans)
      .where(
        and(
          eq(maintenancePlans.id, data.maintenancePlanId),
          eq(maintenancePlans.tenantId, tenantId),
          isNull(maintenancePlans.deletedAt)
        )
      )
      .limit(1);

    if (!plan) {
      throw new Error("Maintenance plan not found");
    }

    // If meter-based, verify meter exists
    if (data.meterId) {
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
    }

    // Calculate next due date/reading
    const now = new Date();
    let nextDueDate: Date | null = null;
    let nextDueReading: string | null = null;

    if (data.triggerType === "time" || data.triggerType === "both") {
      if (data.intervalDays) {
        nextDueDate = new Date(now.getTime() + data.intervalDays * 24 * 60 * 60 * 1000);
      } else if (data.intervalMonths) {
        nextDueDate = new Date(now);
        nextDueDate.setMonth(nextDueDate.getMonth() + data.intervalMonths);
      }
    }

    if (
      (data.triggerType === "meter" || data.triggerType === "both") &&
      data.meterId &&
      data.meterInterval
    ) {
      // Get current meter reading
      const [meter] = await this.db
        .select()
        .from(assetMeters)
        .where(eq(assetMeters.id, data.meterId))
        .limit(1);

      if (meter) {
        const currentReading = parseFloat(meter.currentReading);
        nextDueReading = (currentReading + data.meterInterval).toString();
      }
    }

    const [trigger] = await this.db
      .insert(maintenancePlanTriggers)
      .values({
        tenantId,
        maintenancePlanId: data.maintenancePlanId,
        triggerType: data.triggerType,
        triggerMode: data.triggerMode || "first",
        name: data.name,
        description: data.description,
        intervalDays: data.intervalDays?.toString(),
        intervalMonths: data.intervalMonths?.toString(),
        meterId: data.meterId,
        meterInterval: data.meterInterval?.toString(),
        meterThreshold: data.meterThreshold?.toString(),
        nextDueDate,
        nextDueReading,
        priority: data.priority?.toString() || "1",
      })
      .returning();

    return trigger;
  }

  async getTriggers(
    tenantId: string,
    filters?: MaintenancePlanTriggerQuery
  ): Promise<any[]> {
    const conditions: SQL<unknown>[] = [
      eq(maintenancePlanTriggers.tenantId, tenantId),
      isNull(maintenancePlanTriggers.deletedAt),
    ];

    if (filters?.maintenancePlanId) {
      conditions.push(
        eq(maintenancePlanTriggers.maintenancePlanId, filters.maintenancePlanId)
      );
    }

    if (filters?.triggerType) {
      conditions.push(
        eq(maintenancePlanTriggers.triggerType, filters.triggerType)
      );
    }

    if (filters?.meterId) {
      conditions.push(eq(maintenancePlanTriggers.meterId, filters.meterId));
    }

    if (filters?.isActive !== undefined) {
      conditions.push(eq(maintenancePlanTriggers.isActive, filters.isActive));
    }

    const result = await this.db
      .select({
        trigger: maintenancePlanTriggers,
        plan: {
          id: maintenancePlans.id,
          name: maintenancePlans.name,
          type: maintenancePlans.type,
        },
        meter: {
          id: assetMeters.id,
          name: assetMeters.name,
          meterType: assetMeters.meterType,
          unit: assetMeters.unit,
          currentReading: assetMeters.currentReading,
        },
      })
      .from(maintenancePlanTriggers)
      .leftJoin(
        maintenancePlans,
        eq(maintenancePlanTriggers.maintenancePlanId, maintenancePlans.id)
      )
      .leftJoin(assetMeters, eq(maintenancePlanTriggers.meterId, assetMeters.id))
      .where(and(...conditions))
      .orderBy(desc(maintenancePlanTriggers.insertedAt));

    return result.map((row) => ({
      ...row.trigger,
      plan: row.plan,
      meter: row.meter,
    }));
  }

  async getTriggerById(triggerId: string, tenantId: string): Promise<any | null> {
    const [result] = await this.db
      .select({
        trigger: maintenancePlanTriggers,
        plan: {
          id: maintenancePlans.id,
          name: maintenancePlans.name,
          type: maintenancePlans.type,
        },
        meter: {
          id: assetMeters.id,
          name: assetMeters.name,
          meterType: assetMeters.meterType,
          unit: assetMeters.unit,
          currentReading: assetMeters.currentReading,
        },
      })
      .from(maintenancePlanTriggers)
      .leftJoin(
        maintenancePlans,
        eq(maintenancePlanTriggers.maintenancePlanId, maintenancePlans.id)
      )
      .leftJoin(assetMeters, eq(maintenancePlanTriggers.meterId, assetMeters.id))
      .where(
        and(
          eq(maintenancePlanTriggers.id, triggerId),
          eq(maintenancePlanTriggers.tenantId, tenantId),
          isNull(maintenancePlanTriggers.deletedAt)
        )
      )
      .limit(1);

    if (!result) return null;

    return {
      ...result.trigger,
      plan: result.plan,
      meter: result.meter,
    };
  }

  async getTriggersByPlan(
    maintenancePlanId: string,
    tenantId: string
  ): Promise<any[]> {
    return this.getTriggers(tenantId, { maintenancePlanId });
  }

  async getTriggersByMeter(meterId: string, tenantId: string): Promise<any[]> {
    return this.getTriggers(tenantId, { meterId });
  }

  async updateTrigger(
    triggerId: string,
    tenantId: string,
    data: UpdateMaintenancePlanTriggerRequest
  ): Promise<any | null> {
    const updateData: Record<string, any> = {
      updatedAt: new Date(),
    };

    if (data.triggerType !== undefined) updateData.triggerType = data.triggerType;
    if (data.triggerMode !== undefined) updateData.triggerMode = data.triggerMode;
    if (data.name !== undefined) updateData.name = data.name;
    if (data.description !== undefined) updateData.description = data.description;
    if (data.intervalDays !== undefined)
      updateData.intervalDays = data.intervalDays?.toString();
    if (data.intervalMonths !== undefined)
      updateData.intervalMonths = data.intervalMonths?.toString();
    if (data.meterId !== undefined) updateData.meterId = data.meterId;
    if (data.meterInterval !== undefined)
      updateData.meterInterval = data.meterInterval?.toString();
    if (data.meterThreshold !== undefined)
      updateData.meterThreshold = data.meterThreshold?.toString();
    if (data.isActive !== undefined) updateData.isActive = data.isActive;
    if (data.priority !== undefined)
      updateData.priority = data.priority?.toString();

    const [trigger] = await this.db
      .update(maintenancePlanTriggers)
      .set(updateData)
      .where(
        and(
          eq(maintenancePlanTriggers.id, triggerId),
          eq(maintenancePlanTriggers.tenantId, tenantId),
          isNull(maintenancePlanTriggers.deletedAt)
        )
      )
      .returning();

    return trigger || null;
  }

  async deleteTrigger(triggerId: string, tenantId: string): Promise<boolean> {
    const [deleted] = await this.db
      .update(maintenancePlanTriggers)
      .set({ deletedAt: new Date() })
      .where(
        and(
          eq(maintenancePlanTriggers.id, triggerId),
          eq(maintenancePlanTriggers.tenantId, tenantId),
          isNull(maintenancePlanTriggers.deletedAt)
        )
      )
      .returning();

    return !!deleted;
  }

  /**
   * Mark trigger as triggered and calculate next due
   */
  async markTriggered(
    triggerId: string,
    tenantId: string,
    currentMeterReading?: number
  ): Promise<any | null> {
    const trigger = await this.getTriggerById(triggerId, tenantId);
    if (!trigger) return null;

    const now = new Date();
    let nextDueDate: Date | null = null;
    let nextDueReading: string | null = null;

    // Calculate next due date
    if (
      trigger.triggerType === "time" ||
      trigger.triggerType === "both"
    ) {
      if (trigger.intervalDays) {
        nextDueDate = new Date(
          now.getTime() + parseInt(trigger.intervalDays) * 24 * 60 * 60 * 1000
        );
      } else if (trigger.intervalMonths) {
        nextDueDate = new Date(now);
        nextDueDate.setMonth(
          nextDueDate.getMonth() + parseInt(trigger.intervalMonths)
        );
      }
    }

    // Calculate next due reading
    if (
      (trigger.triggerType === "meter" || trigger.triggerType === "both") &&
      trigger.meterInterval &&
      currentMeterReading !== undefined
    ) {
      nextDueReading = (
        currentMeterReading + parseFloat(trigger.meterInterval)
      ).toString();
    }

    const [updated] = await this.db
      .update(maintenancePlanTriggers)
      .set({
        lastTriggeredAt: now,
        lastTriggeredReading: currentMeterReading?.toString(),
        nextDueDate,
        nextDueReading,
        updatedAt: now,
      })
      .where(eq(maintenancePlanTriggers.id, triggerId))
      .returning();

    return updated;
  }

  /**
   * Check if any triggers are due
   */
  async checkDueTriggers(tenantId: string): Promise<any[]> {
    const now = new Date();
    const triggers = await this.getTriggers(tenantId, { isActive: true });

    const dueTriggers: any[] = [];

    for (const trigger of triggers) {
      let isDue = false;

      // Check time-based
      if (
        (trigger.triggerType === "time" || trigger.triggerType === "both") &&
        trigger.nextDueDate
      ) {
        const dueDate = new Date(trigger.nextDueDate);
        if (dueDate <= now) {
          isDue = true;
        }
      }

      // Check meter-based
      if (
        (trigger.triggerType === "meter" || trigger.triggerType === "both") &&
        trigger.meter &&
        trigger.nextDueReading
      ) {
        const currentReading = parseFloat(trigger.meter.currentReading);
        const dueReading = parseFloat(trigger.nextDueReading);
        if (currentReading >= dueReading) {
          isDue = true;
        }
      }

      // Check threshold
      if (trigger.meterThreshold && trigger.meter) {
        const currentReading = parseFloat(trigger.meter.currentReading);
        const threshold = parseFloat(trigger.meterThreshold);
        if (currentReading >= threshold) {
          isDue = true;
        }
      }

      if (isDue) {
        dueTriggers.push(trigger);
      }
    }

    return dueTriggers;
  }
}
