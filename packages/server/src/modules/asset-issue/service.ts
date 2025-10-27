import { eq, and, desc, sql, inArray } from "drizzle-orm";
import type { createDatabase } from "@prodobit/database";
import { assetIssues } from "@prodobit/database";
import type {
  CreateAssetIssueRequest,
  UpdateAssetIssueRequest,
  AssetIssueQuery,
} from "@prodobit/types";

export class AssetIssueService {
  constructor(private db: ReturnType<typeof createDatabase>) {}

  /**
   * Get all asset issues for a tenant with optional filters
   */
  async getAssetIssues(tenantId: string, query?: AssetIssueQuery) {
    let conditions = [eq(assetIssues.tenantId, tenantId)];

    if (query?.assetId) {
      conditions.push(eq(assetIssues.assetId, query.assetId));
    }
    if (query?.category) {
      conditions.push(eq(assetIssues.category, query.category));
    }
    if (query?.severity) {
      conditions.push(eq(assetIssues.severity, query.severity));
    }
    if (query?.status) {
      conditions.push(eq(assetIssues.status, query.status));
    }
    if (query?.reportedBy) {
      conditions.push(eq(assetIssues.reportedBy, query.reportedBy));
    }
    if (query?.assignedTo) {
      conditions.push(eq(assetIssues.assignedTo, query.assignedTo));
    }
    if (query?.downtime !== undefined) {
      conditions.push(eq(assetIssues.downtime, query.downtime));
    }
    if (query?.reportedAfter) {
      conditions.push(
        sql`${assetIssues.reportedAt} >= ${new Date(query.reportedAfter)}`
      );
    }
    if (query?.reportedBefore) {
      conditions.push(
        sql`${assetIssues.reportedAt} <= ${new Date(query.reportedBefore)}`
      );
    }
    if (query?.search) {
      conditions.push(
        sql`(${assetIssues.title} ILIKE ${"%" + query.search + "%"} OR ${assetIssues.description} ILIKE ${"%" + query.search + "%"})`
      );
    }

    const issues = await this.db
      .select()
      .from(assetIssues)
      .where(and(...conditions))
      .orderBy(desc(assetIssues.reportedAt));

    return issues;
  }

  /**
   * Get a single asset issue by ID
   */
  async getAssetIssueById(id: string, tenantId: string) {
    const [issue] = await this.db
      .select()
      .from(assetIssues)
      .where(
        and(eq(assetIssues.id, id), eq(assetIssues.tenantId, tenantId))
      );

    return issue;
  }

  /**
   * Create a new asset issue
   */
  async createAssetIssue(
    data: CreateAssetIssueRequest,
    tenantId: string,
    reportedBy: string
  ) {
    const [issue] = await this.db
      .insert(assetIssues)
      .values({
        ...data,
        tenantId,
        reportedBy,
        reportedAt: new Date(),
        status: "reported",
      })
      .returning();

    return issue;
  }

  /**
   * Update an asset issue
   */
  async updateAssetIssue(
    id: string,
    tenantId: string,
    data: UpdateAssetIssueRequest
  ) {
    // Auto-set timestamps based on status changes
    const updateData: any = { ...data };

    if (data.status === "acknowledged" && !updateData.acknowledgedAt) {
      updateData.acknowledgedAt = new Date();
    }
    if (data.status === "resolved" && !updateData.resolvedAt) {
      updateData.resolvedAt = new Date();
    }
    if (data.status === "closed" && !updateData.closedAt) {
      updateData.closedAt = new Date();
    }

    const [issue] = await this.db
      .update(assetIssues)
      .set({
        ...updateData,
        updatedAt: new Date(),
      })
      .where(
        and(eq(assetIssues.id, id), eq(assetIssues.tenantId, tenantId))
      )
      .returning();

    return issue;
  }

  /**
   * Delete (soft delete) an asset issue
   */
  async deleteAssetIssue(id: string, tenantId: string) {
    const [issue] = await this.db
      .update(assetIssues)
      .set({
        deletedAt: new Date(),
        updatedAt: new Date(),
      })
      .where(
        and(eq(assetIssues.id, id), eq(assetIssues.tenantId, tenantId))
      )
      .returning();

    return issue;
  }

  /**
   * Get issues by asset ID
   */
  async getIssuesByAsset(assetId: string, tenantId: string) {
    const issues = await this.db
      .select()
      .from(assetIssues)
      .where(
        and(
          eq(assetIssues.assetId, assetId),
          eq(assetIssues.tenantId, tenantId)
        )
      )
      .orderBy(desc(assetIssues.reportedAt));

    return issues;
  }

  /**
   * Get critical/high severity open issues
   */
  async getCriticalIssues(tenantId: string) {
    const issues = await this.db
      .select()
      .from(assetIssues)
      .where(
        and(
          eq(assetIssues.tenantId, tenantId),
          inArray(assetIssues.severity, ["critical", "high"]),
          inArray(assetIssues.status, [
            "reported",
            "acknowledged",
            "in_progress",
          ])
        )
      )
      .orderBy(desc(assetIssues.reportedAt));

    return issues;
  }

  /**
   * Get issue statistics for a tenant
   */
  async getIssueStatistics(tenantId: string) {
    const stats = await this.db
      .select({
        status: assetIssues.status,
        severity: assetIssues.severity,
        count: sql<number>`count(*)::int`,
      })
      .from(assetIssues)
      .where(eq(assetIssues.tenantId, tenantId))
      .groupBy(assetIssues.status, assetIssues.severity);

    return stats;
  }
}
