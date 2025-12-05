import { eq, and, desc, sql, isNull } from "drizzle-orm";
import type { createDatabase } from "@prodobit/database";
import { maintenancePlans, maintenanceRecords } from "@prodobit/database";
import type {
  CreateMaintenancePlanRequest,
  UpdateMaintenancePlanRequest,
  MaintenancePlanQuery,
  CreateMaintenanceRecordRequest,
  UpdateMaintenanceRecordRequest,
  MaintenanceRecordQuery,
} from "@prodobit/types";

export class MaintenanceService {
  constructor(private db: ReturnType<typeof createDatabase>) {}

  // ============ MAINTENANCE PLANS ============

  /**
   * Get all maintenance plans for a tenant with optional filters
   */
  async getMaintenancePlans(
    tenantId: string,
    query?: MaintenancePlanQuery
  ) {
    let conditions = [
      eq(maintenancePlans.tenantId, tenantId),
      isNull(maintenancePlans.deletedAt),
    ];

    if (query?.assetId) {
      conditions.push(eq(maintenancePlans.assetId, query.assetId));
    }
    if (query?.type) {
      conditions.push(eq(maintenancePlans.type, query.type));
    }
    if (query?.frequency) {
      conditions.push(eq(maintenancePlans.frequency, query.frequency));
    }
    if (query?.status) {
      conditions.push(eq(maintenancePlans.status, query.status));
    }
    if (query?.assignedTeamId) {
      conditions.push(
        eq(maintenancePlans.assignedTeamId, query.assignedTeamId)
      );
    }
    if (query?.defaultAssigneeId) {
      conditions.push(
        eq(maintenancePlans.defaultAssigneeId, query.defaultAssigneeId)
      );
    }
    if (query?.search) {
      conditions.push(
        sql`(${maintenancePlans.name} ILIKE ${"%" + query.search + "%"} OR ${maintenancePlans.description} ILIKE ${"%" + query.search + "%"})`
      );
    }

    const plans = await this.db
      .select()
      .from(maintenancePlans)
      .where(and(...conditions))
      .orderBy(desc(maintenancePlans.nextScheduledDate));

    return plans;
  }

  /**
   * Get a single maintenance plan by ID
   */
  async getMaintenancePlanById(id: string, tenantId: string) {
    const [plan] = await this.db
      .select()
      .from(maintenancePlans)
      .where(
        and(
          eq(maintenancePlans.id, id),
          eq(maintenancePlans.tenantId, tenantId),
          isNull(maintenancePlans.deletedAt)
        )
      );

    return plan;
  }

  /**
   * Get maintenance plans by asset ID
   */
  async getMaintenancePlansByAsset(assetId: string, tenantId: string) {
    const plans = await this.db
      .select()
      .from(maintenancePlans)
      .where(
        and(
          eq(maintenancePlans.assetId, assetId),
          eq(maintenancePlans.tenantId, tenantId),
          isNull(maintenancePlans.deletedAt)
        )
      )
      .orderBy(desc(maintenancePlans.insertedAt));

    return plans;
  }

  /**
   * Create a new maintenance plan
   */
  async createMaintenancePlan(
    data: CreateMaintenancePlanRequest,
    tenantId: string
  ) {
    // Calculate next scheduled date based on frequency
    const nextScheduledDate = this.calculateNextScheduledDate(
      new Date(data.startDate),
      data.frequency,
      data.intervalDays
    );

    const [plan] = await this.db
      .insert(maintenancePlans)
      .values({
        ...data,
        startDate: new Date(data.startDate),
        endDate: data.endDate ? new Date(data.endDate) : undefined,
        tenantId,
        status: "active",
        nextScheduledDate,
      })
      .returning();

    return plan;
  }

  /**
   * Update a maintenance plan
   */
  async updateMaintenancePlan(
    id: string,
    tenantId: string,
    data: UpdateMaintenancePlanRequest
  ) {
    const updateData: any = { ...data };
    if (data.startDate) updateData.startDate = new Date(data.startDate);
    if (data.endDate) updateData.endDate = new Date(data.endDate);
    if (data.nextScheduledDate) updateData.nextScheduledDate = new Date(data.nextScheduledDate);

    const [plan] = await this.db
      .update(maintenancePlans)
      .set({
        ...updateData,
        updatedAt: new Date(),
      })
      .where(
        and(
          eq(maintenancePlans.id, id),
          eq(maintenancePlans.tenantId, tenantId),
          isNull(maintenancePlans.deletedAt)
        )
      )
      .returning();

    return plan;
  }

  /**
   * Delete (soft delete) a maintenance plan
   */
  async deleteMaintenancePlan(id: string, tenantId: string) {
    const [plan] = await this.db
      .update(maintenancePlans)
      .set({
        deletedAt: new Date(),
        updatedAt: new Date(),
      })
      .where(
        and(
          eq(maintenancePlans.id, id),
          eq(maintenancePlans.tenantId, tenantId),
          isNull(maintenancePlans.deletedAt)
        )
      )
      .returning();

    return plan;
  }

  /**
   * Get upcoming maintenance plans (next 30 days)
   */
  async getUpcomingMaintenance(tenantId: string, days: number = 30) {
    const futureDate = new Date();
    futureDate.setDate(futureDate.getDate() + days);

    const plans = await this.db
      .select()
      .from(maintenancePlans)
      .where(
        and(
          eq(maintenancePlans.tenantId, tenantId),
          eq(maintenancePlans.status, "active"),
          sql`${maintenancePlans.nextScheduledDate} <= ${futureDate}`,
          isNull(maintenancePlans.deletedAt)
        )
      )
      .orderBy(maintenancePlans.nextScheduledDate);

    return plans;
  }

  // ============ MAINTENANCE RECORDS ============

  /**
   * Get all maintenance records for a tenant with optional filters
   */
  async getMaintenanceRecords(
    tenantId: string,
    query?: MaintenanceRecordQuery
  ) {
    let conditions = [eq(maintenanceRecords.tenantId, tenantId)];

    if (query?.maintenancePlanId) {
      conditions.push(
        eq(maintenanceRecords.maintenancePlanId, query.maintenancePlanId)
      );
    }
    if (query?.assetId) {
      conditions.push(eq(maintenanceRecords.assetId, query.assetId));
    }
    if (query?.taskId) {
      conditions.push(eq(maintenanceRecords.taskId, query.taskId));
    }
    if (query?.performedBy) {
      conditions.push(eq(maintenanceRecords.performedBy, query.performedBy));
    }
    if (query?.status) {
      conditions.push(eq(maintenanceRecords.status, query.status));
    }
    if (query?.scheduledAfter) {
      conditions.push(
        sql`${maintenanceRecords.scheduledDate} >= ${new Date(query.scheduledAfter)}`
      );
    }
    if (query?.scheduledBefore) {
      conditions.push(
        sql`${maintenanceRecords.scheduledDate} <= ${new Date(query.scheduledBefore)}`
      );
    }

    const records = await this.db
      .select()
      .from(maintenanceRecords)
      .where(and(...conditions))
      .orderBy(desc(maintenanceRecords.scheduledDate));

    return records;
  }

  /**
   * Get a single maintenance record by ID
   */
  async getMaintenanceRecordById(id: string, tenantId: string) {
    const [record] = await this.db
      .select()
      .from(maintenanceRecords)
      .where(
        and(
          eq(maintenanceRecords.id, id),
          eq(maintenanceRecords.tenantId, tenantId)
        )
      );

    return record;
  }

  /**
   * Get maintenance records by plan ID
   */
  async getMaintenanceRecordsByPlan(planId: string, tenantId: string) {
    const records = await this.db
      .select()
      .from(maintenanceRecords)
      .where(
        and(
          eq(maintenanceRecords.maintenancePlanId, planId),
          eq(maintenanceRecords.tenantId, tenantId)
        )
      )
      .orderBy(desc(maintenanceRecords.scheduledDate));

    return records;
  }

  /**
   * Get maintenance records by asset ID
   */
  async getMaintenanceRecordsByAsset(assetId: string, tenantId: string) {
    const records = await this.db
      .select()
      .from(maintenanceRecords)
      .where(
        and(
          eq(maintenanceRecords.assetId, assetId),
          eq(maintenanceRecords.tenantId, tenantId)
        )
      )
      .orderBy(desc(maintenanceRecords.scheduledDate));

    return records;
  }

  /**
   * Create a new maintenance record
   */
  async createMaintenanceRecord(
    data: CreateMaintenanceRecordRequest,
    tenantId: string,
    assetId: string,
    taskId?: string
  ) {
    const [record] = await this.db
      .insert(maintenanceRecords)
      .values({
        ...data,
        scheduledDate: data.scheduledDate ? new Date(data.scheduledDate) : undefined,
        tenantId,
        assetId,
        taskId,
        status: "scheduled",
      })
      .returning();

    return record;
  }

  /**
   * Update a maintenance record
   */
  async updateMaintenanceRecord(
    id: string,
    tenantId: string,
    data: UpdateMaintenanceRecordRequest
  ) {
    const updateData: any = { ...data };

    // If status changed to completed, update the maintenance plan (only if it exists)
    if (data.status === "completed") {
      const record = await this.getMaintenanceRecordById(id, tenantId);
      if (record && record.maintenancePlanId) {
        await this.updateMaintenancePlanAfterCompletion(
          record.maintenancePlanId,
          tenantId
        );
      }
    }

    const [record] = await this.db
      .update(maintenanceRecords)
      .set({
        ...updateData,
        updatedAt: new Date(),
      })
      .where(
        and(
          eq(maintenanceRecords.id, id),
          eq(maintenanceRecords.tenantId, tenantId)
        )
      )
      .returning();

    return record;
  }

  /**
   * Delete a maintenance record
   */
  async deleteMaintenanceRecord(id: string, tenantId: string) {
    const [record] = await this.db
      .delete(maintenanceRecords)
      .where(
        and(
          eq(maintenanceRecords.id, id),
          eq(maintenanceRecords.tenantId, tenantId)
        )
      )
      .returning();

    return record;
  }

  /**
   * Update maintenance plan metrics after completion
   */
  private async updateMaintenancePlanAfterCompletion(
    planId: string,
    tenantId: string
  ) {
    const plan = await this.getMaintenancePlanById(planId, tenantId);
    if (!plan) return;

    // Calculate next scheduled date
    const nextScheduledDate = this.calculateNextScheduledDate(
      new Date(),
      plan.frequency,
      plan.intervalDays || undefined
    );

    await this.db
      .update(maintenancePlans)
      .set({
        lastMaintenanceDate: new Date(),
        nextScheduledDate,
        completedMaintenanceCount: sql`${maintenancePlans.completedMaintenanceCount} + 1`,
        totalMaintenanceCount: sql`${maintenancePlans.totalMaintenanceCount} + 1`,
        updatedAt: new Date(),
      })
      .where(eq(maintenancePlans.id, planId));
  }

  /**
   * Calculate next scheduled date based on frequency
   */
  private calculateNextScheduledDate(
    baseDate: Date,
    frequency: string,
    customDays?: number
  ): Date {
    const date = new Date(baseDate);

    switch (frequency) {
      case "daily":
        date.setDate(date.getDate() + 1);
        break;
      case "weekly":
        date.setDate(date.getDate() + 7);
        break;
      case "biweekly":
        date.setDate(date.getDate() + 14);
        break;
      case "monthly":
        date.setMonth(date.getMonth() + 1);
        break;
      case "quarterly":
        date.setMonth(date.getMonth() + 3);
        break;
      case "semi_annually":
        date.setMonth(date.getMonth() + 6);
        break;
      case "annually":
        date.setFullYear(date.getFullYear() + 1);
        break;
      case "custom":
        if (customDays) {
          date.setDate(date.getDate() + customDays);
        }
        break;
    }

    return date;
  }
}
