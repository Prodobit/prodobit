import type { Database } from "@prodobit/database";
import { assetAssignments, assets } from "@prodobit/database";
import type {
  CreateAssetAssignmentRequest,
  UpdateAssetAssignmentRequest,
  AssetAssignmentQuery,
} from "@prodobit/types";
import { and, eq, isNull, desc } from "drizzle-orm";

export class AssignmentService {
  constructor(private db: Database) {}

  // Create assignment
  async createAssignment(
    data: CreateAssetAssignmentRequest,
    assignedBy: string,
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

    // Check for active assignment
    const activeAssignments = await this.db
      .select()
      .from(assetAssignments)
      .where(
        and(
          eq(assetAssignments.assetId, data.assetId),
          eq(assetAssignments.tenantId, tenantId),
          eq(assetAssignments.status, "active"),
          isNull(assetAssignments.deletedAt)
        )
      );

    if (activeAssignments.length > 0) {
      throw new Error("Asset already has an active assignment");
    }

    const [assignment] = await this.db
      .insert(assetAssignments)
      .values({
        tenantId,
        assetId: data.assetId,
        assignedTo: data.assignedTo,
        assignedType: data.assignedType,
        assignedBy,
        expectedReturnDate: data.expectedReturnDate,
        notes: data.notes,
        assignmentReason: data.assignmentReason,
        signatureImageId: data.signatureImageId,
        status: "active",
      })
      .returning();

    return assignment;
  }

  // Get all assignments with optional filtering
  async getAssignments(
    params: { tenantId: string } & AssetAssignmentQuery
  ): Promise<any[]> {
    const { tenantId, ...filters } = params;
    const conditions = [
      eq(assetAssignments.tenantId, tenantId),
      isNull(assetAssignments.deletedAt),
    ];

    if (filters?.assetId) {
      conditions.push(eq(assetAssignments.assetId, filters.assetId));
    }

    if (filters?.assignedTo) {
      conditions.push(eq(assetAssignments.assignedTo, filters.assignedTo));
    }

    if (filters?.assignedType) {
      conditions.push(eq(assetAssignments.assignedType, filters.assignedType));
    }

    if (filters?.status) {
      conditions.push(eq(assetAssignments.status, filters.status));
    }

    const result = await this.db
      .select({
        assignment: assetAssignments,
        asset: {
          id: assets.id,
          name: assets.name,
          code: assets.code,
          serialNumber: assets.serialNumber,
        },
      })
      .from(assetAssignments)
      .leftJoin(assets, eq(assetAssignments.assetId, assets.id))
      .where(and(...conditions))
      .orderBy(desc(assetAssignments.assignmentDate));

    return result.map((row) => ({
      ...row.assignment,
      asset: row.asset,
    }));
  }

  // Get assignment by ID
  async getAssignmentById(
    assignmentId: string,
    tenantId: string
  ): Promise<any | null> {
    const [result] = await this.db
      .select({
        assignment: assetAssignments,
        asset: {
          id: assets.id,
          name: assets.name,
          code: assets.code,
          serialNumber: assets.serialNumber,
        },
      })
      .from(assetAssignments)
      .leftJoin(assets, eq(assetAssignments.assetId, assets.id))
      .where(
        and(
          eq(assetAssignments.id, assignmentId),
          eq(assetAssignments.tenantId, tenantId),
          isNull(assetAssignments.deletedAt)
        )
      )
      .limit(1);

    if (!result) return null;

    return {
      ...result.assignment,
      asset: result.asset,
    };
  }

  // Get assignment history for an asset
  async getAssetAssignmentHistory(
    assetId: string,
    tenantId: string
  ): Promise<any[]> {
    return this.getAssignments({ tenantId, assetId });
  }

  // Get active assignments for a user/department/location
  async getActiveAssignments(
    assignedTo: string,
    tenantId: string
  ): Promise<any[]> {
    return this.getAssignments({
      tenantId,
      assignedTo,
      status: "active",
    });
  }

  // Return assignment
  async returnAssignment(
    assignmentId: string,
    tenantId: string,
    returnCondition?: "good" | "damaged" | "needs_repair"
  ): Promise<any | null> {
    const [assignment] = await this.db
      .update(assetAssignments)
      .set({
        status: "returned",
        actualReturnDate: new Date(),
        returnCondition,
        updatedAt: new Date(),
      })
      .where(
        and(
          eq(assetAssignments.id, assignmentId),
          eq(assetAssignments.tenantId, tenantId),
          eq(assetAssignments.status, "active"),
          isNull(assetAssignments.deletedAt)
        )
      )
      .returning();

    return assignment || null;
  }

  // Transfer assignment
  async transferAssignment(
    assignmentId: string,
    newAssignedTo: string,
    newAssignedType: "user" | "department" | "location",
    transferredBy: string,
    tenantId: string
  ): Promise<any> {
    // Get current assignment
    const current = await this.getAssignmentById(assignmentId, tenantId);
    if (!current) {
      throw new Error("Assignment not found");
    }

    if (current.status !== "active") {
      throw new Error("Can only transfer active assignments");
    }

    // Create new assignment
    const [newAssignment] = await this.db
      .insert(assetAssignments)
      .values({
        tenantId,
        assetId: current.assetId,
        assignedTo: newAssignedTo,
        assignedType: newAssignedType,
        assignedBy: transferredBy,
        status: "active",
        notes: `Transferred from previous assignment`,
      })
      .returning();

    // Update old assignment
    await this.db
      .update(assetAssignments)
      .set({
        status: "transferred",
        transferredToAssignmentId: newAssignment.id,
        updatedAt: new Date(),
      })
      .where(eq(assetAssignments.id, assignmentId));

    return newAssignment;
  }

  // Update assignment
  async updateAssignment(
    assignmentId: string,
    tenantId: string,
    data: UpdateAssetAssignmentRequest
  ): Promise<any | null> {
    const updateData: any = {
      ...data,
      updatedAt: new Date(),
    };

    // Convert date strings to Date objects if present
    if (updateData.actualReturnDate) {
      updateData.actualReturnDate = new Date(updateData.actualReturnDate);
    }

    const [assignment] = await this.db
      .update(assetAssignments)
      .set(updateData)
      .where(
        and(
          eq(assetAssignments.id, assignmentId),
          eq(assetAssignments.tenantId, tenantId),
          isNull(assetAssignments.deletedAt)
        )
      )
      .returning();

    return assignment || null;
  }

  // Delete assignment (soft delete)
  async deleteAssignment(
    assignmentId: string,
    tenantId: string
  ): Promise<boolean> {
    const [deleted] = await this.db
      .update(assetAssignments)
      .set({
        deletedAt: new Date(),
      })
      .where(
        and(
          eq(assetAssignments.id, assignmentId),
          eq(assetAssignments.tenantId, tenantId),
          isNull(assetAssignments.deletedAt)
        )
      )
      .returning();

    return !!deleted;
  }
}
