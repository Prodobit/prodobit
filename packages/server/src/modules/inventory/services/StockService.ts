import type { Database } from "@prodobit/database";
import {
  lots,
  stocks,
  stockTransactions,
  stockTransactionSources,
  lotSources,
  items,
  locations,
  type Lot,
  type Stock,
  type StockTransaction,
  type StockTransactionSource,
  type LotSource,
  type NewLot,
  type NewStock,
  type NewStockTransaction,
  type NewStockTransactionSource,
  type NewLotSource,
} from "@prodobit/database";
import { and, asc, desc, eq, ilike, isNull, sum, sql } from "drizzle-orm";

export interface LotFilters {
  lotNumber?: string;
  locationId?: string;
  parentLotId?: string;
  search?: string;
}

export interface StockFilters {
  itemId?: string;
  lotId?: string;
  locationId?: string;
  status?: string;
  search?: string;
}

export interface StockTransactionFilters {
  stockId?: string;
  lotId?: string;
  itemId?: string;
  transactionType?: string;
  sourceLocationId?: string;
  destinationLocationId?: string;
  status?: string;
  createdBy?: string;
  dateFrom?: Date;
  dateTo?: Date;
}

export interface StockLevel {
  itemId: string;
  itemName: string;
  itemCode: string;
  locationId: string;
  locationName: string;
  totalQuantity: number;
  availableQuantity: number;
  reservedQuantity: number;
  lotCount: number;
}

export interface LotInfo {
  lotId: string;
  lotNumber: string;
  itemId: string;
  itemName: string;
  quantity: number;
  locationId: string;
  locationName: string;
  status: string;
}

export class StockService {
  constructor(private db: Database, private tenantId: string) {}

  // Lot Operations
  async createLot(data: Omit<NewLot, "tenantId">): Promise<Lot> {
    // Validate location exists
    if (data.locationId) {
      const [location] = await this.db
        .select()
        .from(locations)
        .where(and(
          eq(locations.id, data.locationId),
          eq(locations.tenantId, this.tenantId)
        ));

      if (!location) {
        throw new Error("Location not found");
      }
    }

    const [lot] = await this.db
      .insert(lots)
      .values({
        ...data,
        tenantId: this.tenantId,
      })
      .returning();

    return lot;
  }

  async getLots(filters: LotFilters = {}): Promise<Lot[]> {
    // Build conditions array starting with base conditions
    const conditions = [
      eq(lots.tenantId, this.tenantId),
      isNull(lots.deletedAt)
    ];

    // Add all filter conditions
    if (filters.lotNumber) {
      conditions.push(ilike(lots.lotNumber, `%${filters.lotNumber}%`));
    }

    if (filters.locationId) {
      conditions.push(eq(lots.locationId, filters.locationId));
    }

    if (filters.parentLotId) {
      conditions.push(eq(lots.parentLotId, filters.parentLotId));
    }

    if (filters.search) {
      conditions.push(ilike(lots.lotNumber, `%${filters.search}%`));
    }

    // Apply all conditions with AND logic
    const query = this.db
      .select()
      .from(lots)
      .where(and(...conditions));

    return query.orderBy(desc(lots.insertedAt));
  }

  async getLotById(lotId: string): Promise<Lot | null> {
    const [lot] = await this.db
      .select()
      .from(lots)
      .where(
        and(
          eq(lots.id, lotId),
          eq(lots.tenantId, this.tenantId),
          isNull(lots.deletedAt)
        )
      );

    return lot || null;
  }

  async updateLot(lotId: string, data: Partial<NewLot>): Promise<Lot> {
    const [lot] = await this.db
      .update(lots)
      .set({
        ...data,
        updatedAt: new Date(),
      })
      .where(and(eq(lots.id, lotId), eq(lots.tenantId, this.tenantId)))
      .returning();

    return lot;
  }

  async deleteLot(lotId: string): Promise<void> {
    await this.db
      .update(lots)
      .set({
        deletedAt: new Date(),
        updatedAt: new Date(),
      })
      .where(and(eq(lots.id, lotId), eq(lots.tenantId, this.tenantId)));
  }

  // Stock Operations
  async createStock(data: Omit<NewStock, "tenantId">): Promise<Stock> {
    // Validate item exists
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

    // Validate location exists
    const [location] = await this.db
      .select()
      .from(locations)
      .where(and(
        eq(locations.id, data.locationId),
        eq(locations.tenantId, this.tenantId)
      ));

    if (!location) {
      throw new Error("Location not found");
    }

    // Validate lot exists if provided
    if (data.lotId) {
      const lot = await this.getLotById(data.lotId);
      if (!lot) {
        throw new Error("Lot not found");
      }
    }

    const [stock] = await this.db
      .insert(stocks)
      .values({
        ...data,
        tenantId: this.tenantId,
      })
      .returning();

    return stock;
  }

  async getStocks(filters: StockFilters = {}): Promise<Stock[]> {
    // Build conditions array starting with base conditions
    const conditions = [
      eq(stocks.tenantId, this.tenantId),
      isNull(stocks.deletedAt)
    ];

    // Add all filter conditions
    if (filters.itemId) {
      conditions.push(eq(stocks.itemId, filters.itemId));
    }

    if (filters.lotId) {
      conditions.push(eq(stocks.lotId, filters.lotId));
    }

    if (filters.locationId) {
      conditions.push(eq(stocks.locationId, filters.locationId));
    }

    if (filters.status) {
      conditions.push(eq(stocks.status, filters.status));
    }

    // Apply all conditions with AND logic
    const query = this.db
      .select()
      .from(stocks)
      .where(and(...conditions));

    return query.orderBy(desc(stocks.insertedAt));
  }

  async getStockById(stockId: string): Promise<Stock | null> {
    const [stock] = await this.db
      .select()
      .from(stocks)
      .where(
        and(
          eq(stocks.id, stockId),
          eq(stocks.tenantId, this.tenantId),
          isNull(stocks.deletedAt)
        )
      );

    return stock || null;
  }

  async updateStock(stockId: string, data: Partial<NewStock>): Promise<Stock> {
    const [stock] = await this.db
      .update(stocks)
      .set({
        ...data,
        updatedAt: new Date(),
      })
      .where(and(eq(stocks.id, stockId), eq(stocks.tenantId, this.tenantId)))
      .returning();

    return stock;
  }

  async deleteStock(stockId: string): Promise<void> {
    await this.db
      .update(stocks)
      .set({
        deletedAt: new Date(),
        updatedAt: new Date(),
      })
      .where(and(eq(stocks.id, stockId), eq(stocks.tenantId, this.tenantId)));
  }

  // Stock Transaction Operations
  async createStockTransaction(data: Omit<NewStockTransaction, "tenantId">): Promise<StockTransaction> {
    // Validate stock exists
    const stock = await this.getStockById(data.stockId);
    if (!stock) {
      throw new Error("Stock not found");
    }

    // Validate item matches stock
    if (stock.itemId !== data.itemId) {
      throw new Error("Item ID does not match stock's item ID");
    }

    // Validate lot matches stock if provided
    if (data.lotId && stock.lotId !== data.lotId) {
      throw new Error("Lot ID does not match stock's lot ID");
    }

    const [transaction] = await this.db
      .insert(stockTransactions)
      .values({
        ...data,
        tenantId: this.tenantId,
      })
      .returning();

    return transaction;
  }

  async getStockTransactions(filters: StockTransactionFilters = {}): Promise<StockTransaction[]> {
    // Build conditions array starting with base conditions
    const conditions = [
      eq(stockTransactions.tenantId, this.tenantId),
      isNull(stockTransactions.deletedAt)
    ];

    // Add all filter conditions
    if (filters.stockId) {
      conditions.push(eq(stockTransactions.stockId, filters.stockId));
    }

    if (filters.lotId) {
      conditions.push(eq(stockTransactions.lotId, filters.lotId));
    }

    if (filters.itemId) {
      conditions.push(eq(stockTransactions.itemId, filters.itemId));
    }

    if (filters.transactionType) {
      conditions.push(eq(stockTransactions.transactionType, filters.transactionType));
    }

    if (filters.sourceLocationId) {
      conditions.push(eq(stockTransactions.sourceLocationId, filters.sourceLocationId));
    }

    if (filters.destinationLocationId) {
      conditions.push(eq(stockTransactions.destinationLocationId, filters.destinationLocationId));
    }

    if (filters.status) {
      conditions.push(eq(stockTransactions.status, filters.status));
    }

    if (filters.createdBy) {
      conditions.push(eq(stockTransactions.createdBy, filters.createdBy));
    }

    if (filters.dateFrom) {
      conditions.push(sql`${stockTransactions.transactionDate} >= ${filters.dateFrom}`);
    }

    if (filters.dateTo) {
      conditions.push(sql`${stockTransactions.transactionDate} <= ${filters.dateTo}`);
    }

    // Apply all conditions with AND logic
    const query = this.db
      .select()
      .from(stockTransactions)
      .where(and(...conditions));

    return query.orderBy(desc(stockTransactions.transactionDate));
  }

  async getStockTransactionById(transactionId: string): Promise<StockTransaction | null> {
    const [transaction] = await this.db
      .select()
      .from(stockTransactions)
      .where(
        and(
          eq(stockTransactions.id, transactionId),
          eq(stockTransactions.tenantId, this.tenantId),
          isNull(stockTransactions.deletedAt)
        )
      );

    return transaction || null;
  }

  async updateStockTransaction(transactionId: string, data: Partial<NewStockTransaction>): Promise<StockTransaction> {
    const [transaction] = await this.db
      .update(stockTransactions)
      .set({
        ...data,
        updatedAt: new Date(),
      })
      .where(and(eq(stockTransactions.id, transactionId), eq(stockTransactions.tenantId, this.tenantId)))
      .returning();

    return transaction;
  }

  // Complete stock transaction
  async completeStockTransaction(transactionId: string): Promise<StockTransaction> {
    return this.updateStockTransaction(transactionId, {
      status: 'completed',
    });
  }

  // Cancel stock transaction
  async cancelStockTransaction(transactionId: string): Promise<StockTransaction> {
    return this.updateStockTransaction(transactionId, {
      status: 'cancelled',
    });
  }

  // Transaction Sources
  async createTransactionSource(data: Omit<NewStockTransactionSource, "tenantId">): Promise<StockTransactionSource> {
    const [source] = await this.db
      .insert(stockTransactionSources)
      .values({
        ...data,
        tenantId: this.tenantId,
      })
      .returning();

    return source;
  }

  async getTransactionSources(transactionId: string): Promise<StockTransactionSource[]> {
    return this.db
      .select()
      .from(stockTransactionSources)
      .where(
        and(
          eq(stockTransactionSources.transactionId, transactionId),
          eq(stockTransactionSources.tenantId, this.tenantId),
          isNull(stockTransactionSources.deletedAt)
        )
      )
      .orderBy(asc(stockTransactionSources.insertedAt));
  }

  // Lot Sources
  async createLotSource(data: Omit<NewLotSource, "tenantId">): Promise<LotSource> {
    const [source] = await this.db
      .insert(lotSources)
      .values({
        ...data,
        tenantId: this.tenantId,
      })
      .returning();

    return source;
  }

  async getLotSources(lotId: string): Promise<LotSource[]> {
    return this.db
      .select()
      .from(lotSources)
      .where(
        and(
          eq(lotSources.lotId, lotId),
          eq(lotSources.tenantId, this.tenantId),
          isNull(lotSources.deletedAt)
        )
      )
      .orderBy(asc(lotSources.insertedAt));
  }

  // Advanced Analytics
  async getStockLevels(locationId?: string): Promise<StockLevel[]> {
    const conditions = [
      eq(stocks.tenantId, this.tenantId),
      isNull(stocks.deletedAt)
    ];

    if (locationId) {
      conditions.push(eq(stocks.locationId, locationId));
    }

    const result = await this.db
      .select({
        itemId: items.id,
        itemName: items.name,
        itemCode: items.code,
        locationId: locations.id,
        locationName: locations.name,
        totalQuantity: sum(stocks.quantity).mapWith(Number),
        availableQuantity: sql<number>`SUM(CASE WHEN ${stocks.status} = 'available' THEN ${stocks.quantity} ELSE 0 END)`.mapWith(Number),
        reservedQuantity: sql<number>`SUM(CASE WHEN ${stocks.status} = 'reserved' THEN ${stocks.quantity} ELSE 0 END)`.mapWith(Number),
        lotCount: sql<number>`COUNT(DISTINCT ${stocks.lotId})`.mapWith(Number),
      })
      .from(stocks)
      .innerJoin(items, eq(stocks.itemId, items.id))
      .innerJoin(locations, eq(stocks.locationId, locations.id))
      .where(and(...conditions))
      .groupBy(items.id, items.name, items.code, locations.id, locations.name)
      .orderBy(items.name, locations.name);

    return result.map(row => ({
      itemId: row.itemId,
      itemName: row.itemName,
      itemCode: row.itemCode || '',
      locationId: row.locationId,
      locationName: row.locationName,
      totalQuantity: row.totalQuantity || 0,
      availableQuantity: row.availableQuantity || 0,
      reservedQuantity: row.reservedQuantity || 0,
      lotCount: row.lotCount || 0,
    }));
  }

  async getLotInfo(itemId?: string): Promise<LotInfo[]> {
    const conditions = [
      eq(stocks.tenantId, this.tenantId),
      isNull(stocks.deletedAt),
      isNull(lots.deletedAt)
    ];

    if (itemId) {
      conditions.push(eq(stocks.itemId, itemId));
    }

    const result = await this.db
      .select({
        lotId: lots.id,
        lotNumber: lots.lotNumber,
        itemId: items.id,
        itemName: items.name,
        quantity: stocks.quantity,
        locationId: locations.id,
        locationName: locations.name,
        status: stocks.status,
      })
      .from(stocks)
      .innerJoin(lots, eq(stocks.lotId, lots.id))
      .innerJoin(items, eq(stocks.itemId, items.id))
      .innerJoin(locations, eq(stocks.locationId, locations.id))
      .where(and(...conditions))
      .orderBy(lots.lotNumber, items.name);

    return result.map(row => ({
      lotId: row.lotId,
      lotNumber: row.lotNumber,
      itemId: row.itemId,
      itemName: row.itemName,
      quantity: parseFloat(row.quantity),
      locationId: row.locationId,
      locationName: row.locationName,
      status: row.status,
    }));
  }

  // Stock Statistics
  async getStockStats(): Promise<{
    totalItems: number;
    totalLots: number;
    totalTransactions: number;
    stockValueByLocation: Record<string, number>;
    stockByStatus: Record<string, number>;
    transactionsByType: Record<string, number>;
  }> {
    const [itemCount] = await this.db
      .select({ count: sql<number>`count(distinct ${stocks.itemId})`.mapWith(Number) })
      .from(stocks)
      .where(and(eq(stocks.tenantId, this.tenantId), isNull(stocks.deletedAt)));

    const [lotCount] = await this.db
      .select({ count: sql<number>`count(distinct ${stocks.lotId})`.mapWith(Number) })
      .from(stocks)
      .where(and(eq(stocks.tenantId, this.tenantId), isNull(stocks.deletedAt)));

    const [transactionCount] = await this.db
      .select({ count: sql<number>`count(*)`.mapWith(Number) })
      .from(stockTransactions)
      .where(and(eq(stockTransactions.tenantId, this.tenantId), isNull(stockTransactions.deletedAt)));

    const stockByStatus = await this.db
      .select({
        status: stocks.status,
        count: sql<number>`count(*)`.mapWith(Number),
      })
      .from(stocks)
      .where(and(eq(stocks.tenantId, this.tenantId), isNull(stocks.deletedAt)))
      .groupBy(stocks.status);

    const transactionsByType = await this.db
      .select({
        type: stockTransactions.transactionType,
        count: sql<number>`count(*)`.mapWith(Number),
      })
      .from(stockTransactions)
      .where(and(eq(stockTransactions.tenantId, this.tenantId), isNull(stockTransactions.deletedAt)))
      .groupBy(stockTransactions.transactionType);

    return {
      totalItems: itemCount.count || 0,
      totalLots: lotCount.count || 0,
      totalTransactions: transactionCount.count || 0,
      stockValueByLocation: {}, // This would require price information
      stockByStatus: stockByStatus.reduce((acc, row) => {
        acc[row.status] = row.count;
        return acc;
      }, {} as Record<string, number>),
      transactionsByType: transactionsByType.reduce((acc, row) => {
        acc[row.type] = row.count;
        return acc;
      }, {} as Record<string, number>),
    };
  }

  // Get only stock-manageable items (excluding services)
  async getStockItems(search?: string) {
    const conditions = [
      eq(items.tenantId, this.tenantId),
      isNull(items.deletedAt),
      eq(items.isStockItem, true), // Only items that can be stocked
      eq(items.status, 'active'), // Only active items
    ];

    if (search) {
      conditions.push(ilike(items.name, `%${search}%`));
    }

    const stockItems = await this.db
      .select({
        id: items.id,
        name: items.name,
        code: items.code,
        itemType: items.itemType,
        isStockItem: items.isStockItem,
        isInventoryItem: items.isInventoryItem,
        status: items.status,
      })
      .from(items)
      .where(and(...conditions))
      .orderBy(asc(items.name));

    return stockItems;
  }
}