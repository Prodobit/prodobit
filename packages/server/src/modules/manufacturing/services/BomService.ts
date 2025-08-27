import type { Database } from "@prodobit/database";
import {
  bomComponents,
  boms,
  bomVersionHistory,
  engineeringChangeOrders,
  items,
  type Bom,
  type BomComponent,
  type EngineeringChangeOrder,
  type NewBom,
  type NewBomComponent,
  type NewEngineeringChangeOrder,
} from "@prodobit/database";
import { and, asc, desc, eq, ilike, isNull, sql } from "drizzle-orm";

export interface BomFilters {
  itemId?: string;
  status?: string;
  isCurrentVersion?: boolean;
  isPhantomBom?: boolean;
  manufacturingPolicy?: string;
  search?: string;
}

export interface BomComponentFilters {
  bomId?: string;
  componentType?: string;
  sourcingType?: string;
  isOptional?: boolean;
  isCritical?: boolean;
}

export interface EcoFilters {
  status?: string;
  changeType?: string;
  priority?: string;
  assignedTo?: string;
  requestedBy?: string;
}

export interface BomExplosionItem {
  componentId: string;
  itemId: string;
  itemName: string;
  quantity: number;
  unit: string;
  level: number;
  path: string;
  isPhantom: boolean;
  sourcingType: string;
  explodedFromPhantom: boolean;
}

export interface MrpRequirement {
  itemId: string;
  itemName: string;
  requiredQty: number;
  unit: string;
  requiredDate: Date;
  sourcingType: string;
  isPurchased: boolean;
}

export class BomService {
  constructor(private db: Database, private tenantId: string) {}

  // BOM Operations
  async createBom(data: Omit<NewBom, "tenantId">): Promise<Bom> {
    // Validate that the item can have a BOM (only product and component types)
    const [item] = await this.db
      .select()
      .from(items)
      .where(and(
        eq(items.id, data.itemId),
        eq(items.tenantId, this.tenantId)
      ));

    if (!item) {
      throw new Error("Item not found");
    }

    if (item.itemType !== 'product' && item.itemType !== 'component') {
      throw new Error(`BOM cannot be created for item type '${item.itemType}'. Only products and components can have BOMs.`);
    }

    const [bom] = await this.db
      .insert(boms)
      .values({ ...data, tenantId: this.tenantId })
      .returning();

    return bom;
  }

  async getBoms(filters: BomFilters = {}): Promise<Bom[]> {
    // Build conditions array starting with base conditions
    const conditions = [
      eq(boms.tenantId, this.tenantId),
      isNull(boms.deletedAt)
    ];

    // Add all filter conditions
    if (filters.itemId) {
      conditions.push(eq(boms.itemId, filters.itemId));
    }

    if (filters.status) {
      conditions.push(eq(boms.status, filters.status));
    }

    if (filters.isCurrentVersion !== undefined) {
      conditions.push(eq(boms.isCurrentVersion, filters.isCurrentVersion));
    }

    if (filters.isPhantomBom !== undefined) {
      conditions.push(eq(boms.isPhantomBom, filters.isPhantomBom));
    }

    if (filters.manufacturingPolicy) {
      conditions.push(eq(boms.manufacturingPolicy, filters.manufacturingPolicy));
    }

    if (filters.search) {
      conditions.push(ilike(boms.name, `%${filters.search}%`));
    }

    // Apply all conditions with AND logic
    const query = this.db
      .select()
      .from(boms)
      .where(and(...conditions));

    return query.orderBy(desc(boms.insertedAt));
  }

  async getBomById(bomId: string): Promise<Bom | null> {
    const [bom] = await this.db
      .select()
      .from(boms)
      .where(
        and(
          eq(boms.id, bomId),
          eq(boms.tenantId, this.tenantId),
          isNull(boms.deletedAt)
        )
      );

    return bom || null;
  }

  async updateBom(bomId: string, data: Partial<NewBom>): Promise<Bom> {
    const [bom] = await this.db
      .update(boms)
      .set({ ...data, updatedAt: new Date() })
      .where(and(eq(boms.id, bomId), eq(boms.tenantId, this.tenantId)))
      .returning();

    return bom;
  }

  async deleteBom(bomId: string): Promise<void> {
    await this.db
      .update(boms)
      .set({
        deletedAt: new Date(),
        updatedAt: new Date(),
      })
      .where(and(eq(boms.id, bomId), eq(boms.tenantId, this.tenantId)));
  }

  // BOM Component Operations
  async createBomComponent(
    data: Omit<NewBomComponent, "tenantId">
  ): Promise<BomComponent> {
    const [component] = await this.db
      .insert(bomComponents)
      .values({
        ...data,
        tenantId: this.tenantId,
      })
      .returning();

    return component;
  }

  async getBomComponents(
    filters: BomComponentFilters = {}
  ): Promise<BomComponent[]> {
    // Build conditions array starting with base conditions
    const conditions = [
      eq(bomComponents.tenantId, this.tenantId),
      isNull(bomComponents.deletedAt)
    ];

    // Add all filter conditions
    if (filters.bomId) {
      conditions.push(eq(bomComponents.bomId, filters.bomId));
    }

    if (filters.componentType) {
      conditions.push(eq(bomComponents.componentType, filters.componentType));
    }

    if (filters.sourcingType) {
      conditions.push(eq(bomComponents.sourcingType, filters.sourcingType));
    }

    if (filters.isOptional !== undefined) {
      conditions.push(eq(bomComponents.isOptional, filters.isOptional));
    }

    if (filters.isCritical !== undefined) {
      conditions.push(eq(bomComponents.isCritical, filters.isCritical));
    }

    // Apply all conditions with AND logic
    const query = this.db
      .select()
      .from(bomComponents)
      .where(and(...conditions));

    return query.orderBy(asc(bomComponents.insertedAt));
  }

  async updateBomComponent(
    componentId: string,
    data: Partial<NewBomComponent>
  ): Promise<BomComponent> {
    const [component] = await this.db
      .update(bomComponents)
      .set({
        ...data,
        updatedAt: new Date(),
      })
      .where(
        and(
          eq(bomComponents.id, componentId),
          eq(bomComponents.tenantId, this.tenantId)
        )
      )
      .returning();

    return component;
  }

  async deleteBomComponent(componentId: string): Promise<void> {
    await this.db
      .update(bomComponents)
      .set({
        deletedAt: new Date(),
        updatedAt: new Date(),
      })
      .where(
        and(
          eq(bomComponents.id, componentId),
          eq(bomComponents.tenantId, this.tenantId)
        )
      );
  }

  // Engineering Change Order Operations
  async createEco(
    data: Omit<NewEngineeringChangeOrder, "tenantId">
  ): Promise<EngineeringChangeOrder> {
    const [eco] = await this.db
      .insert(engineeringChangeOrders)
      .values({ ...data, tenantId: this.tenantId })
      .returning();

    return eco;
  }

  async getEcos(filters: EcoFilters = {}): Promise<EngineeringChangeOrder[]> {
    // Build conditions array starting with base conditions
    const conditions = [
      eq(engineeringChangeOrders.tenantId, this.tenantId),
      isNull(engineeringChangeOrders.deletedAt)
    ];

    // Add all filter conditions
    if (filters.status) {
      conditions.push(eq(engineeringChangeOrders.status, filters.status));
    }

    if (filters.changeType) {
      conditions.push(eq(engineeringChangeOrders.changeType, filters.changeType));
    }

    if (filters.priority) {
      conditions.push(eq(engineeringChangeOrders.priority, filters.priority));
    }

    if (filters.assignedTo) {
      conditions.push(eq(engineeringChangeOrders.assignedTo, filters.assignedTo));
    }

    if (filters.requestedBy) {
      conditions.push(eq(engineeringChangeOrders.requestedBy, filters.requestedBy));
    }

    // Apply all conditions with AND logic
    const query = this.db
      .select()
      .from(engineeringChangeOrders)
      .where(and(...conditions));

    return query.orderBy(desc(engineeringChangeOrders.insertedAt));
  }

  async updateEco(
    ecoId: string,
    data: Partial<NewEngineeringChangeOrder>
  ): Promise<EngineeringChangeOrder> {
    const [eco] = await this.db
      .update(engineeringChangeOrders)
      .set({ ...data, updatedAt: new Date() })
      .where(
        and(
          eq(engineeringChangeOrders.id, ecoId),
          eq(engineeringChangeOrders.tenantId, this.tenantId)
        )
      )
      .returning();

    return eco;
  }

  // Approve ECO
  async approveEco(
    ecoId: string,
    approvedBy: string
  ): Promise<EngineeringChangeOrder> {
    return this.updateEco(ecoId, {
      status: "approved",
      approvedBy,
      approvedAt: new Date(),
    });
  }

  // Reject ECO
  async rejectEco(
    ecoId: string,
    rejectedBy: string,
    rejectionReason: string
  ): Promise<EngineeringChangeOrder> {
    return this.updateEco(ecoId, {
      status: "rejected",
      rejectedBy,
      rejectedAt: new Date(),
      rejectionReason,
    });
  }

  // BOM Explosion with Raw SQL for complex operations
  async getBomExplosion(
    bomId: string,
    explodePhantoms: boolean = true
  ): Promise<BomExplosionItem[]> {
    const result = await this.db.execute(
      sql`SELECT * FROM get_bom_explosion_with_phantoms(${bomId}, ${explodePhantoms}, 0)`
    );

    return result.map((row) => ({
      componentId: row.component_id as string,
      itemId: row.item_id as string,
      itemName: row.item_name as string,
      quantity: parseFloat(row.quantity as string),
      unit: row.unit as string,
      level: row.level as number,
      path: row.path as string,
      isPhantom: row.is_phantom as boolean,
      sourcingType: row.sourcing_type as string,
      explodedFromPhantom: row.exploded_from_phantom as boolean,
    }));
  }

  // MRP Requirements Calculation
  async getMrpRequirements(
    bomId: string,
    requiredQuantity: number,
    requiredDate: Date,
    sourcingFilter?: string
  ): Promise<MrpRequirement[]> {
    const result = await this.db.execute(
      sql`SELECT * FROM get_mrp_requirements(${bomId}, ${requiredQuantity}, ${requiredDate}, ${sourcingFilter || null})`
    );

    return result.map((row) => ({
      itemId: row.item_id as string,
      itemName: row.item_name as string,
      requiredQty: parseFloat(row.required_qty as string),
      unit: row.unit as string,
      requiredDate: new Date(row.required_date as string),
      sourcingType: row.sourcing_type as string,
      isPurchased: row.is_purchased as boolean,
    }));
  }

  // Calculate effective lead time
  async calculateEffectiveLeadTime(bomId: string): Promise<number> {
    const result = await this.db.execute(
      sql`SELECT calculate_effective_lead_time(${bomId}) as lead_time`
    );

    return (result[0]?.lead_time as number) || 0;
  }

  // Get BOM statistics
  async getBomStats(): Promise<{
    totalBoms: number;
    activeBoms: number;
    phantomBoms: number;
    draftBoms: number;
    bomsByManufacturingPolicy: Record<string, number>;
    bomsByComponentType: Record<string, number>;
  }> {
    const [bomStats] = await this.db.execute(
      sql`
      SELECT 
        COUNT(*) as total_boms,
        COUNT(*) FILTER (WHERE status = 'active') as active_boms,
        COUNT(*) FILTER (WHERE is_phantom_bom = true) as phantom_boms,
        COUNT(*) FILTER (WHERE status = 'draft') as draft_boms
      FROM boms 
      WHERE tenant_id = ${this.tenantId} AND deleted_at IS NULL
    `
    );

    const manufacturingPolicyStats = await this.db.execute(
      sql`
      SELECT manufacturing_policy, COUNT(*) as count
      FROM boms 
      WHERE tenant_id = ${this.tenantId} AND deleted_at IS NULL
      GROUP BY manufacturing_policy
    `
    );

    const componentTypeStats = await this.db.execute(
      sql`
      SELECT component_type, COUNT(*) as count
      FROM bom_components 
      WHERE tenant_id = ${this.tenantId} AND deleted_at IS NULL
      GROUP BY component_type
    `
    );

    return {
      totalBoms: parseInt(bomStats.total_boms as string) || 0,
      activeBoms: parseInt(bomStats.active_boms as string) || 0,
      phantomBoms: parseInt(bomStats.phantom_boms as string) || 0,
      draftBoms: parseInt(bomStats.draft_boms as string) || 0,
      bomsByManufacturingPolicy: manufacturingPolicyStats.reduce((acc: Record<string, number>, row: any) => {
        acc[row.manufacturing_policy as string] = parseInt(row.count as string);
        return acc;
      }, {}),
      bomsByComponentType: componentTypeStats.reduce((acc: Record<string, number>, row: any) => {
        acc[row.component_type as string] = parseInt(row.count as string);
        return acc;
      }, {}),
    };
  }

  // Clone BOM with new version
  async cloneBomWithNewVersion(
    bomId: string,
    newVersion: string,
    changedBy: string
  ): Promise<Bom> {
    const originalBom = await this.getBomById(bomId);
    if (!originalBom) {
      throw new Error("BOM not found");
    }

    // Set original BOM as not current
    await this.updateBom(bomId, { isCurrentVersion: false });

    // Create new BOM version
    const newBom = await this.createBom({
      ...originalBom,
      id: undefined,
      version: newVersion,
      isCurrentVersion: true,
      status: "draft",
    });

    // Copy all components
    const components = await this.getBomComponents({ bomId });
    for (const component of components) {
      await this.createBomComponent({
        ...component,
        id: undefined,
        bomId: newBom.id,
      });
    }

    // Record version history
    await this.db.insert(bomVersionHistory).values({
      tenantId: this.tenantId,
      bomId: newBom.id,
      oldVersion: originalBom.version,
      newVersion,
      changeSummary: `Cloned from version ${originalBom.version}`,
      changedBy,
    });

    return newBom;
  }
}
