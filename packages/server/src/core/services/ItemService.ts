import type { Database } from "@prodobit/database";
import {
  components,
  consumables,
  itemCategories,
  itemPrices,
  items,
  itemVariants,
  products,
  rawMaterials,
  services,
  spareParts,
} from "@prodobit/database";
import { ItemType } from "@prodobit/types";
import { and, desc, eq, isNull, like, or, SQL } from "drizzle-orm";

export interface CreateItemRequest {
  tenantId: string;
  name: string;
  code?: string;
  itemType: "product" | "service" | "raw_material" | "component" | "spare_part" | "consumable";
  status?: string;

  // Flags
  isInventoryItem?: boolean;
  isStockItem?: boolean;
  isVariant?: boolean;
  isAbstract?: boolean;
  referenceItemId?: string;

  // Type-specific data
  specificData?: ProductData | ServiceData | RawMaterialData | ComponentData | SparePartData | ConsumableData;

  // Categories and pricing
  categoryId?: string;
  prices?: ItemPriceData[];

  // Variant data (if isVariant = true)
  variantAttributes?: Record<string, any>;
}

export interface ProductData {
  unit?: string;
  productType?: "manufactured" | "trading";
}

export interface ServiceData {
  description?: string;
  unit: string;
}

export interface RawMaterialData {
  unit?: string;
}

export interface ComponentData {
  unit?: string;
}

export interface SparePartData {
  unit?: string;
  partNumber?: string;
  manufacturer?: string;
  warrantyPeriodDays?: number;
  isCritical?: boolean;
  leadTimeDays?: number;
}

export interface ConsumableData {
  unit?: string;
  shelfLifeDays?: number;
  storageConditions?: string;
  hazardClass?: string;
  isHazardous?: boolean;
}

export interface ItemPriceData {
  priceType: "buy_price" | "sale_price" | "list_price" | "cost_price";
  price: number;
  currency?: string;
  validFrom?: Date;
  validTo?: Date;
}

export interface CreateCategoryRequest {
  tenantId: string;
  name: string;
  code?: string;
  description?: string;
  itemType: "product" | "service" | "raw_material" | "component" | "spare_part" | "consumable";
  parentCategoryId?: string;
}

export class ItemService {
  constructor(private db: Database) {}

  // Smart item creation - Creates base item + specific type record + categories + pricing
  async createItem(data: CreateItemRequest): Promise<any> {
    // 1. Create base item
    const [item] = await this.db
      .insert(items)
      .values({
        tenantId: data.tenantId,
        itemType: data.itemType,
        code:
          data.code ||
          this.generateCode(data.tenantId, this.getItemPrefix(data.itemType)),
        name: data.name,
        status: data.status || "active",
        isInventoryItem: data.isInventoryItem ?? true,
        isStockItem: data.isStockItem ?? true,
        isVariant: data.isVariant ?? false,
        isAbstract: data.isAbstract ?? false,
        referenceItemId: data.referenceItemId,
      })
      .returning();

    // 2. Create type-specific record
    let specificRecord;
    switch (data.itemType) {
      case "product":
        specificRecord = await this.createProductRecord(
          item.id,
          data.tenantId,
          data.specificData as ProductData,
          data.categoryId
        );
        break;
      case "service":
        specificRecord = await this.createServiceRecord(
          item.id,
          data.tenantId,
          data.specificData as ServiceData
        );
        break;
      case "raw_material":
        specificRecord = await this.createRawMaterialRecord(
          item.id,
          data.tenantId,
          data.specificData as RawMaterialData,
          data.categoryId
        );
        break;
      case "component":
        specificRecord = await this.createComponentRecord(
          item.id,
          data.tenantId,
          data.specificData as ComponentData,
          data.categoryId
        );
        break;
      case "spare_part":
        specificRecord = await this.createSparePartRecord(
          item.id,
          data.tenantId,
          data.specificData as SparePartData,
          data.categoryId
        );
        break;
      case "consumable":
        specificRecord = await this.createConsumableRecord(
          item.id,
          data.tenantId,
          data.specificData as ConsumableData,
          data.categoryId
        );
        break;
    }

    // 3. Add pricing if provided
    if (data.prices && data.prices.length > 0) {
      await this.addItemPricing(item.id, data.tenantId, data.prices);
    }

    // 4. Add variant data if this is a variant
    if (data.isVariant && data.referenceItemId && data.variantAttributes) {
      await this.createVariant(
        item.id,
        data.referenceItemId,
        data.tenantId,
        data.variantAttributes
      );
    }

    return {
      item,
      specificRecord,
    };
  }

  // Create category
  async createCategory(data: CreateCategoryRequest): Promise<any> {
    const [category] = await this.db
      .insert(itemCategories)
      .values({
        tenantId: data.tenantId,
        name: data.name,
        code: data.code || this.generateCode(data.tenantId, "CAT"),
        description: data.description,
        itemType: data.itemType,
        parentCategoryId: data.parentCategoryId,
      })
      .returning();

    return category;
  }

  // Get items with filtering
  async getItems(
    tenantId: string,
    filters?: {
      itemType?: string;
      categoryId?: string;
      status?: string;
      search?: string;
    }
  ): Promise<any[]> {
    // Apply filters
    const conditions = [eq(items.tenantId, tenantId), isNull(items.deletedAt)];

    if (filters?.itemType) {
      conditions.push(eq(items.itemType, filters.itemType));
    }

    if (filters?.status) {
      conditions.push(eq(items.status, filters.status));
    }

    if (filters?.search) {
      conditions.push(
        or(
          like(items.name, `%${filters.search}%`),
          like(items.code, `%${filters.search}%`),
          like(items.nameSearchTrimmed, `%${filters.search}%`)
        ) as SQL<unknown>
      );
    }

    const query = this.db
      .select({
        id: items.id,
        tenantId: items.tenantId,
        itemType: items.itemType,
        code: items.code,
        name: items.name,
        status: items.status,
        isInventoryItem: items.isInventoryItem,
        isStockItem: items.isStockItem,
        isVariant: items.isVariant,
        isAbstract: items.isAbstract,
        referenceItemId: items.referenceItemId,
        insertedAt: items.insertedAt,
        updatedAt: items.updatedAt,
      })
      .from(items)
      .where(and(...conditions))
      .orderBy(desc(items.insertedAt));

    return await query.execute();
  }

  // Get item with full details
  async getItemWithDetails(itemId: string, tenantId: string): Promise<any> {
    // Get base item
    const [item] = await this.db
      .select()
      .from(items)
      .where(and(eq(items.id, itemId), eq(items.tenantId, tenantId)))
      .limit(1);

    if (!item) {
      throw new Error("Item not found");
    }

    // Get type-specific data
    let specificData;
    switch (item.itemType) {
      case "product":
        specificData = await this.db
          .select()
          .from(products)
          .where(eq(products.itemId, itemId))
          .limit(1);
        break;
      case "service":
        specificData = await this.db
          .select()
          .from(services)
          .where(eq(services.itemId, itemId))
          .limit(1);
        break;
      case "raw_material":
        specificData = await this.db
          .select()
          .from(rawMaterials)
          .where(eq(rawMaterials.itemId, itemId))
          .limit(1);
        break;
      case "component":
        specificData = await this.db
          .select()
          .from(components)
          .where(eq(components.itemId, itemId))
          .limit(1);
        break;
      case "spare_part":
        specificData = await this.db
          .select()
          .from(spareParts)
          .where(eq(spareParts.itemId, itemId))
          .limit(1);
        break;
      case "consumable":
        specificData = await this.db
          .select()
          .from(consumables)
          .where(eq(consumables.itemId, itemId))
          .limit(1);
        break;
    }

    // Get pricing
    const pricing = await this.db
      .select()
      .from(itemPrices)
      .where(and(eq(itemPrices.itemId, itemId), eq(itemPrices.isActive, true)));

    // Get variant data if applicable
    let variantData;
    if (item.isVariant) {
      variantData = await this.db
        .select()
        .from(itemVariants)
        .where(eq(itemVariants.itemId, itemId))
        .limit(1);
    }

    return {
      item,
      specificData: specificData?.[0],
      pricing,
      variantData: variantData?.[0],
    };
  }

  // Get categories
  async getCategories(tenantId: string, itemType?: string): Promise<any[]> {
    const conditions = [eq(itemCategories.tenantId, tenantId)];

    if (itemType) {
      conditions.push(eq(itemCategories.itemType, itemType));
    }

    let query = this.db
      .select()
      .from(itemCategories)
      .where(and(...conditions));

    return await query.execute();
  }

  // Search items
  async searchItems(
    searchTerm: string,
    tenantId: string,
    itemType?: string
  ): Promise<any[]> {
    const conditions = [
      eq(items.tenantId, tenantId),
      or(
        like(items.name, `%${searchTerm}%`),
        like(items.code, `%${searchTerm}%`),
        like(items.nameSearchTrimmed, `%${searchTerm}%`)
      ),
    ];

    if (itemType) {
      conditions.push(eq(items.itemType, itemType));
    }

    return await this.db
      .select({
        id: items.id,
        tenantId: items.tenantId,
        itemType: items.itemType,
        code: items.code,
        name: items.name,
        status: items.status,
        isInventoryItem: items.isInventoryItem,
        isStockItem: items.isStockItem,
        isVariant: items.isVariant,
        isAbstract: items.isAbstract,
      })
      .from(items)
      .where(and(...conditions))
      .orderBy(desc(items.insertedAt))
      .execute();
  }

  // Private helper methods
  private async createProductRecord(
    itemId: string,
    tenantId: string,
    data?: ProductData,
    categoryId?: string
  ): Promise<any> {
    const [product] = await this.db
      .insert(products)
      .values({
        itemId,
        tenantId,
        unit: data?.unit,
        itemCategoryId: categoryId,
      })
      .returning();

    return product;
  }

  private async createServiceRecord(
    itemId: string,
    tenantId: string,
    data?: ServiceData
  ): Promise<any> {
    const [service] = await this.db
      .insert(services)
      .values({
        itemId,
        tenantId,
        description: data?.description,
        unit: data?.unit || "hour",
      })
      .returning();

    return service;
  }

  private async createRawMaterialRecord(
    itemId: string,
    tenantId: string,
    data?: RawMaterialData,
    categoryId?: string
  ): Promise<any> {
    const [rawMaterial] = await this.db
      .insert(rawMaterials)
      .values({
        itemId,
        tenantId,
        unit: data?.unit,
        itemCategoryId: categoryId,
      })
      .returning();

    return rawMaterial;
  }

  private async createComponentRecord(
    itemId: string,
    tenantId: string,
    data?: ComponentData,
    categoryId?: string
  ): Promise<any> {
    const [component] = await this.db
      .insert(components)
      .values({
        itemId,
        tenantId,
        unit: data?.unit,
        itemCategoryId: categoryId,
      })
      .returning();

    return component;
  }

  private async createSparePartRecord(
    itemId: string,
    tenantId: string,
    data?: SparePartData,
    categoryId?: string
  ): Promise<any> {
    const [sparePart] = await this.db
      .insert(spareParts)
      .values({
        itemId,
        tenantId,
        unit: data?.unit,
        itemCategoryId: categoryId,
        partNumber: data?.partNumber,
        manufacturer: data?.manufacturer,
        warrantyPeriodDays: data?.warrantyPeriodDays?.toString(),
        isCritical: data?.isCritical ?? false,
        leadTimeDays: data?.leadTimeDays?.toString(),
      })
      .returning();

    return sparePart;
  }

  private async createConsumableRecord(
    itemId: string,
    tenantId: string,
    data?: ConsumableData,
    categoryId?: string
  ): Promise<any> {
    const [consumable] = await this.db
      .insert(consumables)
      .values({
        itemId,
        tenantId,
        unit: data?.unit,
        itemCategoryId: categoryId,
        shelfLifeDays: data?.shelfLifeDays?.toString(),
        storageConditions: data?.storageConditions,
        hazardClass: data?.hazardClass,
        isHazardous: data?.isHazardous ?? false,
      })
      .returning();

    return consumable;
  }

  private async addItemPricing(
    itemId: string,
    tenantId: string,
    prices: ItemPriceData[]
  ): Promise<void> {
    const priceInserts = prices.map((price) => ({
      itemId,
      tenantId,
      priceType: price.priceType,
      price: price.price.toString(),
      currency: price.currency || "TRY",
      validFrom: price.validFrom?.toISOString(),
      validTo: price.validTo?.toISOString(),
    }));

    await this.db.insert(itemPrices).values(priceInserts);
  }

  private async createVariant(
    itemId: string,
    parentItemId: string,
    tenantId: string,
    variantAttributes: Record<string, any>
  ): Promise<void> {
    await this.db.insert(itemVariants).values({
      itemId,
      parentItemId,
      tenantId,
      variantAttributes,
    });
  }

  private generateCode(tenantId: string, prefix: string): string {
    const timestamp = Date.now().toString().slice(-6);
    const random = Math.random().toString(36).substring(2, 4).toUpperCase();
    return `${prefix}${timestamp}${random}`;
  }

  private getItemPrefix(itemType: string): string {
    switch (itemType) {
      case "product":
        return "PRD";
      case "service":
        return "SRV";
      case "raw_material":
        return "RAW";
      case "component":
        return "CMP";
      case "spare_part":
        return "SPR";
      case "consumable":
        return "CNS";
      default:
        return "ITM";
    }
  }

  // Get item variants
  async getItemVariants(
    parentItemId: string,
    tenantId: string
  ): Promise<any[]> {
    const variants = await this.db
      .select()
      .from(itemVariants)
      .leftJoin(items, eq(itemVariants.itemId, items.id))
      .where(
        and(
          eq(itemVariants.parentItemId, parentItemId),
          eq(itemVariants.tenantId, tenantId),
          isNull(items.deletedAt)
        )
      )
      .orderBy(items.name);

    return variants.map((v) => ({
      ...v.items,
      variantId: v.item_variants?.id,
      variantAttributes: v.item_variants?.variantAttributes,
    }));
  }

  // Create item variant
  async createItemVariant(data: {
    tenantId: string;
    parentItemId: string;
    name: string;
    code?: string;
    variantAttributes?: Record<string, any>;
    specificData?: Record<string, any>;
    prices?: Array<{
      priceType: "buy_price" | "sale_price" | "list_price" | "cost_price";
      price: number;
      currency: string;
    }>;
  }): Promise<any> {
    // First get the parent item to copy its type and basic info
    const [parentItem] = await this.db
      .select()
      .from(items)
      .where(
        and(eq(items.id, data.parentItemId), eq(items.tenantId, data.tenantId))
      )
      .limit(1);

    if (!parentItem) {
      throw new Error("Parent item not found");
    }

    // Create the variant item
    const variantData: CreateItemRequest = {
      tenantId: data.tenantId,
      itemType: parentItem.itemType as ItemType,
      name: data.name,
      code:
        data.code ||
        this.generateCode(
          data.tenantId,
          this.getItemPrefix(parentItem.itemType) + "V"
        ),
      isVariant: true,
      referenceItemId: data.parentItemId,
      status: "active" as const,
      isInventoryItem: parentItem.isInventoryItem,
      isStockItem: parentItem.isStockItem,
      specificData: data.specificData,
      prices: data.prices,
    };

    const result = await this.createItem(variantData);

    // Create the variant relationship
    await this.createVariant(
      result.item.id,
      data.parentItemId,
      data.tenantId,
      data.variantAttributes || {}
    );

    return result;
  }

  // Get item categories
  async getItemCategories(filters: {
    tenantId: string;
    itemType?: string;
    parentId?: string;
  }): Promise<any[]> {
    const conditions = [eq(itemCategories.tenantId, filters.tenantId)];

    if (filters.itemType) {
      conditions.push(eq(itemCategories.itemType, filters.itemType));
    }

    if (filters.parentId) {
      conditions.push(eq(itemCategories.parentCategoryId, filters.parentId));
    } else {
      conditions.push(isNull(itemCategories.parentCategoryId));
    }

    const categories = await this.db
      .select()
      .from(itemCategories)
      .where(and(...conditions))
      .orderBy(itemCategories.name);

    return categories;
  }

  // Create item category
  async createItemCategory(data: {
    tenantId: string;
    name: string;
    code?: string;
    description?: string;
    itemType: string;
    parentCategoryId?: string;
  }): Promise<any> {
    const [category] = await this.db
      .insert(itemCategories)
      .values({
        tenantId: data.tenantId,
        name: data.name,
        code: data.code,
        description: data.description,
        itemType: data.itemType,
        parentCategoryId: data.parentCategoryId,
      })
      .returning();

    return category;
  }

  // Delete item (soft delete)
  async deleteItem(itemId: string, tenantId: string): Promise<boolean> {
    const result = await this.db
      .update(items)
      .set({
        deletedAt: new Date(),
      })
      .where(and(eq(items.id, itemId), eq(items.tenantId, tenantId)))
      .returning();

    return result.length > 0;
  }
}
