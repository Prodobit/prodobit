import type { Database } from "@prodobit/database";
import { departments, departmentMembers, locations } from "@prodobit/database";
import type {
  CreateDepartmentRequest,
  UpdateDepartmentRequest,
  DepartmentQuery,
  CreateDepartmentMemberRequest,
  UpdateDepartmentMemberRequest,
  DepartmentMemberQuery,
} from "@prodobit/types";
import { and, eq, isNull, like, or, SQL } from "drizzle-orm";

export class DepartmentService {
  constructor(private db: Database) {}

  // Create department
  async createDepartment(
    data: CreateDepartmentRequest,
    tenantId: string
  ): Promise<any> {
    // Verify parent department exists if provided
    if (data.parentDepartmentId) {
      const [parent] = await this.db
        .select()
        .from(departments)
        .where(
          and(
            eq(departments.id, data.parentDepartmentId),
            eq(departments.tenantId, tenantId),
            isNull(departments.deletedAt)
          )
        )
        .limit(1);

      if (!parent) {
        throw new Error("Parent department not found");
      }
    }

    // Verify location exists if provided
    if (data.locationId) {
      const [location] = await this.db
        .select()
        .from(locations)
        .where(
          and(
            eq(locations.id, data.locationId),
            eq(locations.tenantId, tenantId),
            isNull(locations.deletedAt)
          )
        )
        .limit(1);

      if (!location) {
        throw new Error("Location not found");
      }
    }

    // Generate code if not provided
    const code =
      data.code || this.generateDepartmentCode(tenantId, data.name);

    const [department] = await this.db
      .insert(departments)
      .values({
        tenantId,
        name: data.name,
        code,
        description: data.description,
        parentDepartmentId: data.parentDepartmentId,
        locationId: data.locationId,
        managerId: data.managerId,
        isActive: data.isActive ?? true,
      })
      .returning();

    return department;
  }

  // Get all departments with optional filtering
  async getDepartments(
    params: { tenantId: string } & DepartmentQuery
  ): Promise<any[]> {
    const { tenantId, ...filters } = params;
    const conditions = [
      eq(departments.tenantId, tenantId),
      isNull(departments.deletedAt),
    ];

    if (filters?.parentDepartmentId !== undefined) {
      if (filters.parentDepartmentId === null) {
        conditions.push(isNull(departments.parentDepartmentId));
      } else {
        conditions.push(
          eq(departments.parentDepartmentId, filters.parentDepartmentId)
        );
      }
    }

    if (filters?.locationId) {
      conditions.push(eq(departments.locationId, filters.locationId));
    }

    if (filters?.isActive !== undefined) {
      conditions.push(eq(departments.isActive, filters.isActive));
    }

    if (filters?.search) {
      conditions.push(
        or(
          like(departments.name, `%${filters.search}%`),
          like(departments.code, `%${filters.search}%`)
        ) as SQL<unknown>
      );
    }

    const result = await this.db
      .select({
        department: departments,
        location: {
          id: locations.id,
          name: locations.name,
          code: locations.code,
        },
      })
      .from(departments)
      .leftJoin(locations, eq(departments.locationId, locations.id))
      .where(and(...conditions))
      .orderBy(departments.name);

    return result.map((row) => ({
      ...row.department,
      location: row.location,
    }));
  }

  // Get department by ID
  async getDepartmentById(
    departmentId: string,
    tenantId: string
  ): Promise<any | null> {
    const [result] = await this.db
      .select({
        department: departments,
        location: {
          id: locations.id,
          name: locations.name,
          code: locations.code,
        },
      })
      .from(departments)
      .leftJoin(locations, eq(departments.locationId, locations.id))
      .where(
        and(
          eq(departments.id, departmentId),
          eq(departments.tenantId, tenantId),
          isNull(departments.deletedAt)
        )
      )
      .limit(1);

    if (!result) return null;

    return {
      ...result.department,
      location: result.location,
    };
  }

  // Get child departments
  async getChildDepartments(
    parentDepartmentId: string,
    tenantId: string
  ): Promise<any[]> {
    return this.getDepartments({ tenantId, parentDepartmentId });
  }

  // Get department hierarchy
  async getDepartmentHierarchy(
    departmentId: string,
    tenantId: string
  ): Promise<any[]> {
    const hierarchy: any[] = [];
    let currentDepartmentId: string | null = departmentId;

    while (currentDepartmentId) {
      const department = await this.getDepartmentById(
        currentDepartmentId,
        tenantId
      );
      if (!department) break;

      hierarchy.unshift(department);
      currentDepartmentId = department.parentDepartmentId;
    }

    return hierarchy;
  }

  // Update department
  async updateDepartment(
    departmentId: string,
    tenantId: string,
    data: UpdateDepartmentRequest
  ): Promise<any | null> {
    // If location is being updated, verify it exists
    if (data.locationId) {
      const [location] = await this.db
        .select()
        .from(locations)
        .where(
          and(
            eq(locations.id, data.locationId),
            eq(locations.tenantId, tenantId),
            isNull(locations.deletedAt)
          )
        )
        .limit(1);

      if (!location) {
        throw new Error("Location not found");
      }
    }

    const [department] = await this.db
      .update(departments)
      .set({
        ...data,
        updatedAt: new Date(),
      })
      .where(
        and(
          eq(departments.id, departmentId),
          eq(departments.tenantId, tenantId),
          isNull(departments.deletedAt)
        )
      )
      .returning();

    return department || null;
  }

  // Delete department (soft delete)
  async deleteDepartment(
    departmentId: string,
    tenantId: string
  ): Promise<boolean> {
    // Check if department has child departments
    const childDepartments = await this.getChildDepartments(
      departmentId,
      tenantId
    );
    if (childDepartments.length > 0) {
      throw new Error("Cannot delete department with child departments");
    }

    const [deleted] = await this.db
      .update(departments)
      .set({
        deletedAt: new Date(),
      })
      .where(
        and(
          eq(departments.id, departmentId),
          eq(departments.tenantId, tenantId),
          isNull(departments.deletedAt)
        )
      )
      .returning();

    return !!deleted;
  }

  // Department Members
  async addMember(
    data: CreateDepartmentMemberRequest,
    tenantId: string
  ): Promise<any> {
    // Verify department exists
    const department = await this.getDepartmentById(
      data.departmentId,
      tenantId
    );
    if (!department) {
      throw new Error("Department not found");
    }

    // Check if member already exists
    const existing = await this.db
      .select()
      .from(departmentMembers)
      .where(
        and(
          eq(departmentMembers.departmentId, data.departmentId),
          eq(departmentMembers.userId, data.userId),
          eq(departmentMembers.tenantId, tenantId),
          isNull(departmentMembers.leftAt)
        )
      );

    if (existing.length > 0) {
      throw new Error("User is already a member of this department");
    }

    const [member] = await this.db
      .insert(departmentMembers)
      .values({
        tenantId,
        departmentId: data.departmentId,
        userId: data.userId,
        role: data.role || "member",
      })
      .returning();

    return member;
  }

  async getMembers(
    params: { tenantId: string } & DepartmentMemberQuery
  ): Promise<any[]> {
    const { tenantId, ...filters } = params;
    const conditions = [
      eq(departmentMembers.tenantId, tenantId),
      isNull(departmentMembers.leftAt),
    ];

    if (filters?.departmentId) {
      conditions.push(eq(departmentMembers.departmentId, filters.departmentId));
    }

    if (filters?.userId) {
      conditions.push(eq(departmentMembers.userId, filters.userId));
    }

    if (filters?.role) {
      conditions.push(eq(departmentMembers.role, filters.role));
    }

    return this.db
      .select()
      .from(departmentMembers)
      .where(and(...conditions))
      .orderBy(departmentMembers.joinedAt);
  }

  async updateMember(
    memberId: string,
    tenantId: string,
    data: UpdateDepartmentMemberRequest
  ): Promise<any | null> {
    const updateData: any = {
      ...data,
      updatedAt: new Date(),
    };

    // Convert date strings to Date objects if present
    if (updateData.leftAt) {
      updateData.leftAt = new Date(updateData.leftAt);
    }

    const [member] = await this.db
      .update(departmentMembers)
      .set(updateData)
      .where(
        and(
          eq(departmentMembers.id, memberId),
          eq(departmentMembers.tenantId, tenantId)
        )
      )
      .returning();

    return member || null;
  }

  async removeMember(memberId: string, tenantId: string): Promise<boolean> {
    const [removed] = await this.db
      .update(departmentMembers)
      .set({
        leftAt: new Date(),
        updatedAt: new Date(),
      })
      .where(
        and(
          eq(departmentMembers.id, memberId),
          eq(departmentMembers.tenantId, tenantId),
          isNull(departmentMembers.leftAt)
        )
      )
      .returning();

    return !!removed;
  }

  // Helper methods
  private generateDepartmentCode(tenantId: string, name: string): string {
    const prefix = name.substring(0, 3).toUpperCase();
    const timestamp = Date.now().toString().slice(-6);
    const random = Math.random().toString(36).substring(2, 4).toUpperCase();
    return `${prefix}${timestamp}${random}`;
  }
}
