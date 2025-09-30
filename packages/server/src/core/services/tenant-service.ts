import type { Database } from "@prodobit/database";
import { tenants as tenantsTable, createDefaultTenantRoles } from "@prodobit/database";
import { eq } from "drizzle-orm";

export interface CreateTenantData {
  name: string;
  subscriptionPlan?: string;
  settings?: Record<string, any>;
}

export interface TenantFilters {
  page?: number;
  limit?: number;
  status?: string;
}

export class TenantService {
  constructor(private db: Database) {}

  /**
   * Get all tenants with pagination
   */
  async getTenants(filters: TenantFilters = {}) {
    const { page = 1, limit = 10, status } = filters;
    
    const baseQuery = this.db.select().from(tenantsTable);
    
    const result = await (status
      ? baseQuery.where(eq(tenantsTable.status, status)).offset((page - 1) * limit).limit(limit)
      : baseQuery.offset((page - 1) * limit).limit(limit)
    );
    
    // Get total count for pagination
    const totalQuery = this.db.select({ count: tenantsTable.id }).from(tenantsTable);
    const totalResult = await (status ? 
      totalQuery.where(eq(tenantsTable.status, status)) : 
      totalQuery
    );
    
    const total = totalResult.length;

    return {
      data: result,
      pagination: {
        page,
        limit,
        total,
        totalPages: Math.ceil(total / limit),
      },
    };
  }

  /**
   * Get tenant by ID
   */
  async getTenantById(id: string) {
    const [tenant] = await this.db
      .select()
      .from(tenantsTable)
      .where(eq(tenantsTable.id, id));

    return tenant;
  }

  /**
   * Create new tenant
   */
  async createTenant(data: CreateTenantData) {
    const newTenant = {
      name: data.name,
      status: "active" as const,
      subscriptionPlan: data.subscriptionPlan || "basic",
      settings: data.settings || {},
    };

    const [tenant] = await this.db
      .insert(tenantsTable)
      .values(newTenant)
      .returning();

    // Create default roles for new tenant
    await createDefaultTenantRoles(this.db, tenant.id);

    return tenant;
  }

  /**
   * Update tenant
   */
  async updateTenant(id: string, data: Partial<CreateTenantData>) {
    const [tenant] = await this.db
      .update(tenantsTable)
      .set({
        ...data,
        updatedAt: new Date(),
      })
      .where(eq(tenantsTable.id, id))
      .returning();

    return tenant;
  }

  /**
   * Delete tenant (soft delete)
   */
  async deleteTenant(id: string) {
    const [tenant] = await this.db
      .update(tenantsTable)
      .set({
        status: "inactive" as const,
        updatedAt: new Date(),
      })
      .where(eq(tenantsTable.id, id))
      .returning();

    return tenant;
  }

  /**
   * Check if tenant exists and is active
   */
  async isActiveTenant(id: string): Promise<boolean> {
    const [tenant] = await this.db
      .select({ status: tenantsTable.status })
      .from(tenantsTable)
      .where(eq(tenantsTable.id, id));

    return tenant?.status === "active";
  }
}