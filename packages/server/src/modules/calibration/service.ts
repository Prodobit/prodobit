import { eq, and, desc, sql, isNull } from "drizzle-orm";
import type { createDatabase } from "@prodobit/database";
import { calibrationPlans, calibrationRecords } from "@prodobit/database";
import type {
  CreateCalibrationPlanRequest,
  UpdateCalibrationPlanRequest,
  CalibrationPlanQuery,
  CreateCalibrationRecordRequest,
  UpdateCalibrationRecordRequest,
  CalibrationRecordQuery,
} from "@prodobit/types";

export class CalibrationService {
  constructor(private db: ReturnType<typeof createDatabase>) {}

  // ============ CALIBRATION PLANS ============

  /**
   * Get all calibration plans for a tenant with optional filters
   */
  async getCalibrationPlans(
    tenantId: string,
    query?: CalibrationPlanQuery
  ) {
    let conditions = [
      eq(calibrationPlans.tenantId, tenantId),
      isNull(calibrationPlans.deletedAt),
    ];

    if (query?.assetId) {
      conditions.push(eq(calibrationPlans.assetId, query.assetId));
    }
    if (query?.type) {
      conditions.push(eq(calibrationPlans.type, query.type));
    }
    if (query?.frequency) {
      conditions.push(eq(calibrationPlans.frequency, query.frequency));
    }
    if (query?.status) {
      conditions.push(eq(calibrationPlans.status, query.status));
    }
    if (query?.defaultAssigneeId) {
      conditions.push(
        eq(calibrationPlans.defaultAssigneeId, query.defaultAssigneeId)
      );
    }
    if (query?.externalProviderId) {
      conditions.push(
        eq(calibrationPlans.externalProviderId, query.externalProviderId)
      );
    }
    if (query?.search) {
      conditions.push(
        sql`(${calibrationPlans.name} ILIKE ${"%" + query.search + "%"} OR ${calibrationPlans.description} ILIKE ${"%" + query.search + "%"})`
      );
    }

    const plans = await this.db
      .select()
      .from(calibrationPlans)
      .where(and(...conditions))
      .orderBy(desc(calibrationPlans.nextCalibrationDate));

    return plans;
  }

  /**
   * Get a single calibration plan by ID
   */
  async getCalibrationPlanById(id: string, tenantId: string) {
    const [plan] = await this.db
      .select()
      .from(calibrationPlans)
      .where(
        and(
          eq(calibrationPlans.id, id),
          eq(calibrationPlans.tenantId, tenantId),
          isNull(calibrationPlans.deletedAt)
        )
      );

    return plan;
  }

  /**
   * Create a new calibration plan
   */
  async createCalibrationPlan(
    data: CreateCalibrationPlanRequest,
    tenantId: string
  ) {
    // Calculate next calibration date based on frequency
    const nextCalibrationDate = this.calculateNextCalibrationDate(
      new Date(data.startDate),
      data.frequency,
      data.intervalDays,
      data.intervalMonths
    );

    const [plan] = await this.db
      .insert(calibrationPlans)
      .values({
        ...data,
        startDate: new Date(data.startDate),
        endDate: data.endDate ? new Date(data.endDate) : undefined,
        tenantId,
        status: "active",
        nextCalibrationDate,
      })
      .returning();

    return plan;
  }

  /**
   * Update a calibration plan
   */
  async updateCalibrationPlan(
    id: string,
    tenantId: string,
    data: UpdateCalibrationPlanRequest
  ) {
    const updateData: any = { ...data };
    if (data.startDate) updateData.startDate = new Date(data.startDate);
    if (data.endDate) updateData.endDate = new Date(data.endDate);
    if (data.nextCalibrationDate) updateData.nextCalibrationDate = new Date(data.nextCalibrationDate);

    const [plan] = await this.db
      .update(calibrationPlans)
      .set({
        ...updateData,
        updatedAt: new Date(),
      })
      .where(
        and(
          eq(calibrationPlans.id, id),
          eq(calibrationPlans.tenantId, tenantId),
          isNull(calibrationPlans.deletedAt)
        )
      )
      .returning();

    return plan;
  }

  /**
   * Delete (soft delete) a calibration plan
   */
  async deleteCalibrationPlan(id: string, tenantId: string) {
    const [plan] = await this.db
      .update(calibrationPlans)
      .set({
        deletedAt: new Date(),
        updatedAt: new Date(),
      })
      .where(
        and(
          eq(calibrationPlans.id, id),
          eq(calibrationPlans.tenantId, tenantId),
          isNull(calibrationPlans.deletedAt)
        )
      )
      .returning();

    return plan;
  }

  /**
   * Get upcoming calibrations (next 60 days by default)
   */
  async getUpcomingCalibrations(tenantId: string, days: number = 60) {
    const futureDate = new Date();
    futureDate.setDate(futureDate.getDate() + days);

    const plans = await this.db
      .select()
      .from(calibrationPlans)
      .where(
        and(
          eq(calibrationPlans.tenantId, tenantId),
          eq(calibrationPlans.status, "active"),
          sql`${calibrationPlans.nextCalibrationDate} <= ${futureDate}`,
          isNull(calibrationPlans.deletedAt)
        )
      )
      .orderBy(calibrationPlans.nextCalibrationDate);

    return plans;
  }

  /**
   * Get calibrations with expiring certificates
   */
  async getExpiringCertificates(tenantId: string, days: number = 30) {
    const futureDate = new Date();
    futureDate.setDate(futureDate.getDate() + days);

    const records = await this.db
      .select()
      .from(calibrationRecords)
      .where(
        and(
          eq(calibrationRecords.tenantId, tenantId),
          sql`${calibrationRecords.certificateExpiryDate} <= ${futureDate}`,
          sql`${calibrationRecords.certificateExpiryDate} >= ${new Date()}`
        )
      )
      .orderBy(calibrationRecords.certificateExpiryDate);

    return records;
  }

  // ============ CALIBRATION RECORDS ============

  /**
   * Get all calibration records for a tenant with optional filters
   */
  async getCalibrationRecords(
    tenantId: string,
    query?: CalibrationRecordQuery
  ) {
    let conditions = [eq(calibrationRecords.tenantId, tenantId)];

    if (query?.calibrationPlanId) {
      conditions.push(
        eq(calibrationRecords.calibrationPlanId, query.calibrationPlanId)
      );
    }
    if (query?.assetId) {
      conditions.push(eq(calibrationRecords.assetId, query.assetId));
    }
    if (query?.taskId) {
      conditions.push(eq(calibrationRecords.taskId, query.taskId));
    }
    if (query?.type) {
      conditions.push(eq(calibrationRecords.type, query.type));
    }
    if (query?.status) {
      conditions.push(eq(calibrationRecords.status, query.status));
    }
    if (query?.performedBy) {
      conditions.push(eq(calibrationRecords.performedBy, query.performedBy));
    }
    if (query?.externalProviderId) {
      conditions.push(
        eq(calibrationRecords.externalProviderId, query.externalProviderId)
      );
    }
    if (query?.calibrationResult) {
      conditions.push(
        eq(calibrationRecords.calibrationResult, query.calibrationResult)
      );
    }
    if (query?.scheduledAfter) {
      conditions.push(
        sql`${calibrationRecords.scheduledDate} >= ${new Date(query.scheduledAfter)}`
      );
    }
    if (query?.scheduledBefore) {
      conditions.push(
        sql`${calibrationRecords.scheduledDate} <= ${new Date(query.scheduledBefore)}`
      );
    }
    if (query?.certificateExpiresBefore) {
      conditions.push(
        sql`${calibrationRecords.certificateExpiryDate} <= ${new Date(query.certificateExpiresBefore)}`
      );
    }

    const records = await this.db
      .select()
      .from(calibrationRecords)
      .where(and(...conditions))
      .orderBy(desc(calibrationRecords.scheduledDate));

    return records;
  }

  /**
   * Get a single calibration record by ID
   */
  async getCalibrationRecordById(id: string, tenantId: string) {
    const [record] = await this.db
      .select()
      .from(calibrationRecords)
      .where(
        and(
          eq(calibrationRecords.id, id),
          eq(calibrationRecords.tenantId, tenantId)
        )
      );

    return record;
  }

  /**
   * Create a new calibration record
   */
  async createCalibrationRecord(
    data: CreateCalibrationRecordRequest,
    tenantId: string,
    assetId: string
  ) {
    const [record] = await this.db
      .insert(calibrationRecords)
      .values({
        ...data,
        scheduledDate: new Date(data.scheduledDate),
        tenantId,
        assetId,
        status: "pending",
      })
      .returning();

    return record;
  }

  /**
   * Update a calibration record
   */
  async updateCalibrationRecord(
    id: string,
    tenantId: string,
    data: UpdateCalibrationRecordRequest
  ) {
    const updateData: any = { ...data };

    // If status changed to passed/failed, update the calibration plan
    if (
      data.status === "passed" ||
      data.status === "failed" ||
      data.calibrationResult
    ) {
      const record = await this.getCalibrationRecordById(id, tenantId);
      if (record) {
        await this.updateCalibrationPlanAfterCompletion(
          record.calibrationPlanId,
          tenantId,
          data.calibrationResult === "pass"
        );
      }
    }

    const [record] = await this.db
      .update(calibrationRecords)
      .set({
        ...updateData,
        updatedAt: new Date(),
      })
      .where(
        and(
          eq(calibrationRecords.id, id),
          eq(calibrationRecords.tenantId, tenantId)
        )
      )
      .returning();

    return record;
  }

  /**
   * Update calibration plan metrics after completion
   */
  private async updateCalibrationPlanAfterCompletion(
    planId: string,
    tenantId: string,
    passed: boolean
  ) {
    const plan = await this.getCalibrationPlanById(planId, tenantId);
    if (!plan) return;

    // Calculate next calibration date
    const nextCalibrationDate = this.calculateNextCalibrationDate(
      new Date(),
      plan.frequency,
      plan.intervalDays || undefined,
      plan.intervalMonths || undefined
    );

    const updateFields: any = {
      lastCalibrationDate: new Date(),
      nextCalibrationDate,
      totalCalibrationCount: sql`${calibrationPlans.totalCalibrationCount} + 1`,
      updatedAt: new Date(),
    };

    if (passed) {
      updateFields.passedCalibrationCount = sql`${calibrationPlans.passedCalibrationCount} + 1`;
    } else {
      updateFields.failedCalibrationCount = sql`${calibrationPlans.failedCalibrationCount} + 1`;
    }

    await this.db
      .update(calibrationPlans)
      .set(updateFields)
      .where(eq(calibrationPlans.id, planId));
  }

  /**
   * Calculate next calibration date based on frequency
   */
  private calculateNextCalibrationDate(
    baseDate: Date,
    frequency: string,
    customDays?: number,
    customMonths?: number
  ): Date {
    const date = new Date(baseDate);

    switch (frequency) {
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
      case "biannually":
        date.setFullYear(date.getFullYear() + 2);
        break;
      case "custom":
        if (customMonths) {
          date.setMonth(date.getMonth() + customMonths);
        } else if (customDays) {
          date.setDate(date.getDate() + customDays);
        }
        break;
    }

    return date;
  }
}
