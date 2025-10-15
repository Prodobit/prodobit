import { eq, and, desc, or, ilike, sql, isNull } from "drizzle-orm";
import type { BrandQuery, CreateBrandRequest, UpdateBrandRequest } from "@prodobit/types";
import { brands } from "@prodobit/database";
import type { Database } from "@prodobit/database";

export class BrandService {
  constructor(private db: Database) {}

  /**
   * List brands with filters
   */
  async listBrands(tenantId: string, filters?: Partial<BrandQuery>) {
    const conditions: any[] = [
      eq(brands.tenantId, tenantId),
      isNull(brands.deletedAt),
    ];

    if (filters?.status) {
      conditions.push(eq(brands.status, filters.status));
    }

    if (filters?.search) {
      conditions.push(
        or(
          ilike(brands.name, `%${filters.search}%`),
          ilike(brands.code, `%${filters.search}%`)
        )
      );
    }

    const brandsList = await this.db
      .select()
      .from(brands)
      .where(and(...conditions))
      .orderBy(desc(brands.insertedAt));

    return brandsList;
  }

  /**
   * Get a single brand by ID
   */
  async getBrand(brandId: string, tenantId: string) {
    const [brand] = await this.db
      .select()
      .from(brands)
      .where(
        and(
          eq(brands.id, brandId),
          eq(brands.tenantId, tenantId),
          isNull(brands.deletedAt)
        )
      );

    return brand || null;
  }

  /**
   * Create a new brand
   */
  async createBrand(tenantId: string, data: CreateBrandRequest) {
    const [brand] = await this.db
      .insert(brands)
      .values({
        tenantId,
        name: data.name,
        code: data.code,
        description: data.description,
        logo: data.logo,
        website: data.website,
        status: data.status || "active",
      })
      .returning();

    return brand;
  }

  /**
   * Update an existing brand
   */
  async updateBrand(brandId: string, tenantId: string, data: UpdateBrandRequest) {
    const [brand] = await this.db
      .update(brands)
      .set({
        ...data,
        updatedAt: new Date(),
      })
      .where(
        and(
          eq(brands.id, brandId),
          eq(brands.tenantId, tenantId),
          isNull(brands.deletedAt)
        )
      )
      .returning();

    return brand || null;
  }

  /**
   * Delete a brand (soft delete)
   */
  async deleteBrand(brandId: string, tenantId: string) {
    const [brand] = await this.db
      .update(brands)
      .set({
        deletedAt: new Date(),
        updatedAt: new Date(),
      })
      .where(
        and(
          eq(brands.id, brandId),
          eq(brands.tenantId, tenantId),
          isNull(brands.deletedAt)
        )
      )
      .returning();

    return brand || null;
  }

  /**
   * Check if brand exists by name
   */
  async brandExistsByName(tenantId: string, name: string, excludeBrandId?: string) {
    const conditions: any[] = [
      eq(brands.tenantId, tenantId),
      eq(brands.name, name),
      isNull(brands.deletedAt),
    ];

    if (excludeBrandId) {
      conditions.push(sql`${brands.id} != ${excludeBrandId}`);
    }

    const [brand] = await this.db
      .select()
      .from(brands)
      .where(and(...conditions))
      .limit(1);

    return !!brand;
  }
}
