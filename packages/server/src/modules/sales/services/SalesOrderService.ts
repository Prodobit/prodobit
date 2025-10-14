import { eq, and, desc, asc, sql, isNull, ilike, gte, lte, count, or } from "drizzle-orm";
import type { Database } from "@prodobit/database";
import {
  salesOrders,
  salesOrderItems,
  salesOrderStatusHistory,
  customers,
  parties,
  partyRoles,
  organizations,
  persons,
  addresses,
  items,
  users,
} from "@prodobit/database";
import Decimal from "decimal.js";

export interface SalesOrderFilters {
  status?: string;
  customerId?: string;
  orderDateFrom?: string;
  orderDateTo?: string;
  search?: string;
  page?: number;
  limit?: number;
}

export interface CreateSalesOrderData {
  customerId: string;
  orderDate: string;
  requestedDeliveryDate?: string;
  shippingAddressId?: string;
  shippingInstructions?: string;
  notes?: string;
  items: CreateSalesOrderItemData[];
}

export interface CreateSalesOrderItemData {
  itemId: string;
  quantity: number;
  unitPrice: number;
  unit?: string;
  requestedDeliveryDate?: string;
  itemNotes?: string;
}

export interface UpdateSalesOrderData {
  customerId?: string;
  requestedDeliveryDate?: string;
  confirmedDeliveryDate?: string;
  shippingAddressId?: string;
  shippingInstructions?: string;
  notes?: string;
}

export interface UpdateSalesOrderItemData {
  quantity?: number;
  unitPrice?: number;
  unit?: string;
  requestedDeliveryDate?: string;
  confirmedDeliveryDate?: string;
  itemNotes?: string;
}

export class SalesOrderService {
  constructor(private db: Database) {}

  async getSalesOrders(tenantId: string, filters: SalesOrderFilters = {}) {
    const {
      status,
      customerId,
      orderDateFrom,
      orderDateTo,
      search,
      page = 1,
      limit = 10,
    } = filters;

    const offset = (page - 1) * limit;

    // Build where conditions
    const whereConditions = [
      eq(salesOrders.tenantId, tenantId),
      isNull(salesOrders.deletedAt),
    ];

    if (status) {
      whereConditions.push(eq(salesOrders.status, status));
    }

    if (customerId) {
      whereConditions.push(eq(salesOrders.customerId, customerId));
    }

    if (orderDateFrom) {
      whereConditions.push(gte(salesOrders.orderDate, orderDateFrom));
    }

    if (orderDateTo) {
      whereConditions.push(lte(salesOrders.orderDate, orderDateTo));
    }

    // Add search condition using proper Drizzle methods
    if (search) {
      whereConditions.push(
        or(
          ilike(salesOrders.orderNumber, `%${search}%`),
          ilike(organizations.name, `%${search}%`),
          ilike(sql`${persons.firstName} || ' ' || ${persons.lastName}`, `%${search}%`),
          ilike(customers.customerCode, `%${search}%`)
        )!
      );
    }

    // Main query with joins
    let query = this.db
      .select({
        // Sales order fields
        id: salesOrders.id,
        orderNumber: salesOrders.orderNumber,
        orderDate: salesOrders.orderDate,
        requestedDeliveryDate: salesOrders.requestedDeliveryDate,
        confirmedDeliveryDate: salesOrders.confirmedDeliveryDate,
        status: salesOrders.status,
        totalAmount: salesOrders.totalAmount,
        currency: salesOrders.currency,
        shippingInstructions: salesOrders.shippingInstructions,
        notes: salesOrders.notes,
        approvedAt: salesOrders.approvedAt,
        insertedAt: salesOrders.insertedAt,
        updatedAt: salesOrders.updatedAt,
        // Customer info
        customerId: customers.id,
        customerCode: customers.customerCode,
        // Customer party info (person or organization)
        partyId: parties.id,
        partyType: parties.partyType,
        // Organization name if customer is organization
        organizationName: organizations.name,
        // Person name if customer is person
        personFirstName: persons.firstName,
        personLastName: persons.lastName,
        // Created by user
        createdByName: users.displayName,
        approvedByName: sql<string>`approved_user.display_name`,
      })
      .from(salesOrders)
      .innerJoin(customers, eq(salesOrders.customerId, customers.id))
      .innerJoin(partyRoles, eq(customers.partyRoleId, partyRoles.id))
      .innerJoin(parties, eq(partyRoles.partyId, parties.id))
      .leftJoin(organizations, eq(parties.id, organizations.partyId))
      .leftJoin(persons, eq(parties.id, persons.partyId))
      .innerJoin(users, eq(salesOrders.createdBy, users.id))
      .leftJoin(
        sql`${users} as approved_user`,
        eq(salesOrders.approvedBy, sql`approved_user.id`)
      )
      .where(and(...whereConditions));

    // Get total count for pagination
    const [totalResult] = await this.db
      .select({ count: count() })
      .from(salesOrders)
      .innerJoin(customers, eq(salesOrders.customerId, customers.id))
      .innerJoin(partyRoles, eq(customers.partyRoleId, partyRoles.id))
      .innerJoin(parties, eq(partyRoles.partyId, parties.id))
      .leftJoin(organizations, eq(parties.id, organizations.partyId))
      .leftJoin(persons, eq(parties.id, persons.partyId))
      .where(and(...whereConditions));

    // Execute main query with pagination
    const results = await query
      .orderBy(desc(salesOrders.insertedAt))
      .limit(limit)
      .offset(offset);

    // Format results
    const formattedResults = results.map((row) => ({
      id: row.id,
      orderNumber: row.orderNumber,
      orderDate: row.orderDate,
      requestedDeliveryDate: row.requestedDeliveryDate,
      confirmedDeliveryDate: row.confirmedDeliveryDate,
      status: row.status,
      totalAmount: row.totalAmount,
      currency: row.currency,
      shippingInstructions: row.shippingInstructions,
      notes: row.notes,
      approvedAt: row.approvedAt,
      insertedAt: row.insertedAt,
      updatedAt: row.updatedAt,
      customer: {
        id: row.customerId,
        customerCode: row.customerCode,
        name:
          row.partyType === "organization"
            ? row.organizationName
            : `${row.personFirstName} ${row.personLastName}`,
        partyType: row.partyType,
      },
      createdBy: {
        name: row.createdByName,
      },
      approvedBy: row.approvedByName
        ? {
            name: row.approvedByName,
          }
        : null,
    }));

    return {
      data: formattedResults,
      pagination: {
        page,
        limit,
        total: totalResult.count,
        totalPages: Math.ceil(totalResult.count / limit),
      },
    };
  }

  async getSalesOrderById(tenantId: string, id: string) {
    // Get sales order with customer and shipping address info
    const salesOrderResult = await this.db
      .select({
        // Sales order fields
        id: salesOrders.id,
        orderNumber: salesOrders.orderNumber,
        orderDate: salesOrders.orderDate,
        requestedDeliveryDate: salesOrders.requestedDeliveryDate,
        confirmedDeliveryDate: salesOrders.confirmedDeliveryDate,
        status: salesOrders.status,
        totalAmount: salesOrders.totalAmount,
        currency: salesOrders.currency,
        shippingInstructions: salesOrders.shippingInstructions,
        notes: salesOrders.notes,
        approvedAt: salesOrders.approvedAt,
        insertedAt: salesOrders.insertedAt,
        updatedAt: salesOrders.updatedAt,
        // Customer info
        customerId: customers.id,
        customerCode: customers.customerCode,
        // Customer party info
        partyId: parties.id,
        partyType: parties.partyType,
        organizationName: organizations.name,
        personFirstName: persons.firstName,
        personLastName: persons.lastName,
        // Shipping address
        shippingAddressId: addresses.id,
        shippingAddressLine1: addresses.line1,
        shippingAddressLine2: addresses.line2,
        shippingAddressCity: addresses.city,
        shippingAddressCountry: addresses.country,
        // Created/approved by
        createdByName: users.displayName,
        approvedByName: sql<string>`approved_user.display_name`,
      })
      .from(salesOrders)
      .innerJoin(customers, eq(salesOrders.customerId, customers.id))
      .innerJoin(partyRoles, eq(customers.partyRoleId, partyRoles.id))
      .innerJoin(parties, eq(partyRoles.partyId, parties.id))
      .leftJoin(organizations, eq(parties.id, organizations.partyId))
      .leftJoin(persons, eq(parties.id, persons.partyId))
      .leftJoin(addresses, eq(salesOrders.shippingAddressId, addresses.id))
      .innerJoin(users, eq(salesOrders.createdBy, users.id))
      .leftJoin(
        sql`${users} as approved_user`,
        eq(salesOrders.approvedBy, sql`approved_user.id`)
      )
      .where(
        and(
          eq(salesOrders.tenantId, tenantId),
          eq(salesOrders.id, id),
          isNull(salesOrders.deletedAt)
        )
      )
      .limit(1);

    if (salesOrderResult.length === 0) {
      return null;
    }

    const salesOrder = salesOrderResult[0];

    // Get sales order items
    const itemsResult = await this.db
      .select({
        id: salesOrderItems.id,
        itemId: salesOrderItems.itemId,
        quantity: salesOrderItems.quantity,
        unit: salesOrderItems.unit,
        unitPrice: salesOrderItems.unitPrice,
        totalPrice: salesOrderItems.totalPrice,
        currency: salesOrderItems.currency,
        requestedDeliveryDate: salesOrderItems.requestedDeliveryDate,
        confirmedDeliveryDate: salesOrderItems.confirmedDeliveryDate,
        actualDeliveryDate: salesOrderItems.actualDeliveryDate,
        shippedQuantity: salesOrderItems.shippedQuantity,
        remainingQuantity: salesOrderItems.remainingQuantity,
        lineStatus: salesOrderItems.lineStatus,
        itemNotes: salesOrderItems.itemNotes,
        insertedAt: salesOrderItems.insertedAt,
        updatedAt: salesOrderItems.updatedAt,
        // Item info
        itemCode: items.code,
        itemName: items.name,
      })
      .from(salesOrderItems)
      .innerJoin(items, eq(salesOrderItems.itemId, items.id))
      .where(
        and(
          eq(salesOrderItems.tenantId, tenantId),
          eq(salesOrderItems.salesOrderId, id),
          isNull(salesOrderItems.deletedAt)
        )
      )
      .orderBy(asc(salesOrderItems.insertedAt));

    return {
      id: salesOrder.id,
      orderNumber: salesOrder.orderNumber,
      orderDate: salesOrder.orderDate,
      requestedDeliveryDate: salesOrder.requestedDeliveryDate,
      confirmedDeliveryDate: salesOrder.confirmedDeliveryDate,
      status: salesOrder.status,
      totalAmount: salesOrder.totalAmount,
      currency: salesOrder.currency,
      shippingInstructions: salesOrder.shippingInstructions,
      notes: salesOrder.notes,
      approvedAt: salesOrder.approvedAt,
      insertedAt: salesOrder.insertedAt,
      updatedAt: salesOrder.updatedAt,
      customer: {
        id: salesOrder.customerId,
        customerCode: salesOrder.customerCode,
        name:
          salesOrder.partyType === "organization"
            ? salesOrder.organizationName
            : `${salesOrder.personFirstName} ${salesOrder.personLastName}`,
        partyType: salesOrder.partyType,
      },
      shippingAddress: salesOrder.shippingAddressId
        ? {
            id: salesOrder.shippingAddressId,
            line1: salesOrder.shippingAddressLine1,
            line2: salesOrder.shippingAddressLine2,
            city: salesOrder.shippingAddressCity,
            country: salesOrder.shippingAddressCountry,
          }
        : null,
      createdBy: {
        name: salesOrder.createdByName,
      },
      approvedBy: salesOrder.approvedByName
        ? {
            name: salesOrder.approvedByName,
          }
        : null,
      items: itemsResult.map((item) => ({
        id: item.id,
        itemId: item.itemId,
        quantity: item.quantity,
        unit: item.unit,
        unitPrice: item.unitPrice,
        totalPrice: item.totalPrice,
        currency: item.currency,
        requestedDeliveryDate: item.requestedDeliveryDate,
        confirmedDeliveryDate: item.confirmedDeliveryDate,
        actualDeliveryDate: item.actualDeliveryDate,
        shippedQuantity: item.shippedQuantity,
        remainingQuantity: item.remainingQuantity,
        lineStatus: item.lineStatus,
        itemNotes: item.itemNotes,
        insertedAt: item.insertedAt,
        updatedAt: item.updatedAt,
        item: {
          id: item.itemId,
          code: item.itemCode,
          name: item.itemName,
          // description field doesn't exist in items table
        },
      })),
    };
  }

  async createSalesOrder(tenantId: string, createdBy: string, data: CreateSalesOrderData) {
    return this.db.transaction(async (tx) => {
      // Validate customer exists
      const customerExists = await tx
        .select({ id: customers.id })
        .from(customers)
        .where(
          and(
            eq(customers.tenantId, tenantId),
            eq(customers.id, data.customerId)
          )
        )
        .limit(1);

      if (customerExists.length === 0) {
        throw new Error("Customer not found");
      }

      // Generate order number
      const orderNumber = `SO-${Date.now()}-${Math.random().toString(36).substr(2, 6).toUpperCase()}`;

      // Create sales order
      const [salesOrder] = await tx
        .insert(salesOrders)
        .values({
          tenantId,
          orderNumber,
          customerId: data.customerId,
          orderDate: data.orderDate,
          requestedDeliveryDate: data.requestedDeliveryDate || null,
          shippingAddressId: data.shippingAddressId || null,
          shippingInstructions: data.shippingInstructions || null,
          notes: data.notes || null,
          createdBy,
        })
        .returning();

      // Create sales order items
      let totalAmount = 0;

      for (const itemData of data.items) {
        // Validate item exists
        const itemExists = await tx
          .select({ id: items.id })
          .from(items)
          .where(and(eq(items.tenantId, tenantId), eq(items.id, itemData.itemId)))
          .limit(1);

        if (itemExists.length === 0) {
          throw new Error(`Item not found: ${itemData.itemId}`);
        }

        const totalPrice = itemData.quantity * itemData.unitPrice;
        totalAmount += totalPrice;

        await tx.insert(salesOrderItems).values({
          tenantId,
          salesOrderId: salesOrder.id,
          itemId: itemData.itemId,
          quantity: new Decimal(itemData.quantity),
          unit: itemData.unit || null,
          unitPrice: new Decimal(itemData.unitPrice),
          totalPrice: new Decimal(totalPrice),
          requestedDeliveryDate: itemData.requestedDeliveryDate || null,
          remainingQuantity: new Decimal(itemData.quantity),
          itemNotes: itemData.itemNotes || null,
        });
      }

      // Update total amount
      await tx
        .update(salesOrders)
        .set({
          totalAmount: new Decimal(totalAmount),
          updatedAt: new Date(),
        })
        .where(eq(salesOrders.id, salesOrder.id));

      // Create status history entry
      await tx.insert(salesOrderStatusHistory).values({
        tenantId,
        salesOrderId: salesOrder.id,
        oldStatus: null,
        newStatus: "draft",
        changedBy: createdBy,
        changeReason: "Sales order created",
      });

      return this.getSalesOrderById(tenantId, salesOrder.id);
    });
  }

  async updateSalesOrder(tenantId: string, id: string, data: UpdateSalesOrderData) {
    return this.db.transaction(async (tx) => {
      // Check if sales order exists and is modifiable
      const existingOrder = await tx
        .select({ status: salesOrders.status })
        .from(salesOrders)
        .where(
          and(
            eq(salesOrders.tenantId, tenantId),
            eq(salesOrders.id, id),
            isNull(salesOrders.deletedAt)
          )
        )
        .limit(1);

      if (existingOrder.length === 0) {
        return null;
      }

      // Check if order can be modified
      const status = existingOrder[0].status;
      if (status === "shipped" || status === "delivered" || status === "closed") {
        throw new Error("Cannot modify sales order in current status");
      }

      // Validate customer if provided
      if (data.customerId) {
        const customerExists = await tx
          .select({ id: customers.id })
          .from(customers)
          .where(and(eq(customers.tenantId, tenantId), eq(customers.id, data.customerId)))
          .limit(1);

        if (customerExists.length === 0) {
          throw new Error("Customer not found");
        }
      }

      // Update sales order
      await tx
        .update(salesOrders)
        .set({
          ...(data.customerId && { customerId: data.customerId }),
          ...(data.requestedDeliveryDate && { requestedDeliveryDate: data.requestedDeliveryDate }),
          ...(data.confirmedDeliveryDate && { confirmedDeliveryDate: data.confirmedDeliveryDate }),
          ...(data.shippingAddressId && { shippingAddressId: data.shippingAddressId }),
          ...(data.shippingInstructions && { shippingInstructions: data.shippingInstructions }),
          ...(data.notes && { notes: data.notes }),
          updatedAt: new Date(),
        })
        .where(eq(salesOrders.id, id));

      return this.getSalesOrderById(tenantId, id);
    });
  }

  async updateSalesOrderStatus(
    tenantId: string,
    id: string,
    status: string,
    changedBy: string,
    changeReason?: string,
    notes?: string
  ) {
    return this.db.transaction(async (tx) => {
      // Get current status
      const existing = await tx
        .select({ status: salesOrders.status })
        .from(salesOrders)
        .where(
          and(
            eq(salesOrders.tenantId, tenantId),
            eq(salesOrders.id, id),
            isNull(salesOrders.deletedAt)
          )
        )
        .limit(1);

      if (existing.length === 0) {
        return null;
      }

      const oldStatus = existing[0].status;

      // Update status
      await tx
        .update(salesOrders)
        .set({
          status,
          ...(status === "confirmed" && { approvedBy: changedBy, approvedAt: new Date() }),
          updatedAt: new Date(),
        })
        .where(eq(salesOrders.id, id));

      // Create status history entry
      await tx.insert(salesOrderStatusHistory).values({
        tenantId,
        salesOrderId: id,
        oldStatus,
        newStatus: status,
        changedBy,
        changeReason,
        notes,
      });

      return this.getSalesOrderById(tenantId, id);
    });
  }

  async deleteSalesOrder(tenantId: string, id: string) {
    // Check if order can be deleted
    const existing = await this.db
      .select({ status: salesOrders.status })
      .from(salesOrders)
      .where(
        and(
          eq(salesOrders.tenantId, tenantId),
          eq(salesOrders.id, id),
          isNull(salesOrders.deletedAt)
        )
      )
      .limit(1);

    if (existing.length === 0) {
      return null;
    }

    const status = existing[0].status;
    if (status !== "draft") {
      throw new Error("Cannot delete sales order in current status");
    }

    // Soft delete
    await this.db
      .update(salesOrders)
      .set({
        deletedAt: new Date(),
      })
      .where(eq(salesOrders.id, id));

    return { id };
  }

  async addSalesOrderItem(
    tenantId: string,
    salesOrderId: string,
    data: CreateSalesOrderItemData
  ) {
    return this.db.transaction(async (tx) => {
      // Validate sales order exists and is modifiable
      const orderExists = await tx
        .select({ status: salesOrders.status })
        .from(salesOrders)
        .where(
          and(
            eq(salesOrders.tenantId, tenantId),
            eq(salesOrders.id, salesOrderId),
            isNull(salesOrders.deletedAt)
          )
        )
        .limit(1);

      if (orderExists.length === 0) {
        throw new Error("Sales order not found");
      }

      if (orderExists[0].status === "shipped" || orderExists[0].status === "delivered") {
        throw new Error("Cannot modify sales order in current status");
      }

      // Validate item exists
      const itemExists = await tx
        .select({ id: items.id })
        .from(items)
        .where(and(eq(items.tenantId, tenantId), eq(items.id, data.itemId)))
        .limit(1);

      if (itemExists.length === 0) {
        throw new Error("Item not found");
      }

      const totalPrice = data.quantity * data.unitPrice;

      // Create sales order item
      const [item] = await tx
        .insert(salesOrderItems)
        .values({
          tenantId,
          salesOrderId,
          itemId: data.itemId,
          quantity: new Decimal(data.quantity),
          unit: data.unit || null,
          unitPrice: new Decimal(data.unitPrice),
          totalPrice: new Decimal(totalPrice),
          requestedDeliveryDate: data.requestedDeliveryDate || null,
          remainingQuantity: new Decimal(data.quantity),
          itemNotes: data.itemNotes || null,
        })
        .returning();

      // Update sales order total (trigger will handle this)
      return item;
    });
  }

  async updateSalesOrderItem(
    tenantId: string,
    salesOrderId: string,
    itemId: string,
    data: UpdateSalesOrderItemData
  ) {
    return this.db.transaction(async (tx) => {
      // Validate item exists
      const existing = await tx
        .select({
          id: salesOrderItems.id,
          quantity: salesOrderItems.quantity,
          unitPrice: salesOrderItems.unitPrice,
        })
        .from(salesOrderItems)
        .innerJoin(salesOrders, eq(salesOrderItems.salesOrderId, salesOrders.id))
        .where(
          and(
            eq(salesOrderItems.tenantId, tenantId),
            eq(salesOrderItems.salesOrderId, salesOrderId),
            eq(salesOrderItems.id, itemId),
            isNull(salesOrderItems.deletedAt),
            isNull(salesOrders.deletedAt)
          )
        )
        .limit(1);

      if (existing.length === 0) {
        return null;
      }

      const currentItem = existing[0];
      const newQuantity = data.quantity ?? (currentItem.quantity ? currentItem.quantity.toNumber() : 0);
      const newUnitPrice = data.unitPrice ?? (currentItem.unitPrice ? currentItem.unitPrice.toNumber() : 0);
      const newTotalPrice = newQuantity * newUnitPrice;

      // Prepare update data
      const updateData: any = {};
      if (data.quantity) {
        updateData.quantity = new Decimal(data.quantity);
        updateData.remainingQuantity = new Decimal(data.quantity);
      }
      if (data.unitPrice) updateData.unitPrice = new Decimal(data.unitPrice);
      if (data.unit) updateData.unit = data.unit;
      if (data.requestedDeliveryDate) updateData.requestedDeliveryDate = data.requestedDeliveryDate;
      if (data.confirmedDeliveryDate) updateData.confirmedDeliveryDate = data.confirmedDeliveryDate;
      if (data.itemNotes) updateData.itemNotes = data.itemNotes;
      
      updateData.totalPrice = new Decimal(newTotalPrice);
      updateData.updatedAt = new Date();

      // Update item
      const [updatedItem] = await tx
        .update(salesOrderItems)
        .set(updateData)
        .where(eq(salesOrderItems.id, itemId))
        .returning();

      return updatedItem;
    });
  }

  async removeSalesOrderItem(tenantId: string, salesOrderId: string, itemId: string) {
    // Validate item exists
    const existing = await this.db
      .select({ id: salesOrderItems.id })
      .from(salesOrderItems)
      .innerJoin(salesOrders, eq(salesOrderItems.salesOrderId, salesOrders.id))
      .where(
        and(
          eq(salesOrderItems.tenantId, tenantId),
          eq(salesOrderItems.salesOrderId, salesOrderId),
          eq(salesOrderItems.id, itemId),
          isNull(salesOrderItems.deletedAt),
          isNull(salesOrders.deletedAt)
        )
      )
      .limit(1);

    if (existing.length === 0) {
      return null;
    }

    // Soft delete item
    await this.db
      .update(salesOrderItems)
      .set({
        deletedAt: new Date(),
      })
      .where(eq(salesOrderItems.id, itemId));

    return { id: itemId };
  }

  async getSalesOrderHistory(tenantId: string, salesOrderId: string) {
    const history = await this.db
      .select({
        id: salesOrderStatusHistory.id,
        oldStatus: salesOrderStatusHistory.oldStatus,
        newStatus: salesOrderStatusHistory.newStatus,
        changeReason: salesOrderStatusHistory.changeReason,
        notes: salesOrderStatusHistory.notes,
        changedAt: salesOrderStatusHistory.changedAt,
        changedBy: users.displayName,
      })
      .from(salesOrderStatusHistory)
      .innerJoin(users, eq(salesOrderStatusHistory.changedBy, users.id))
      .where(
        and(
          eq(salesOrderStatusHistory.tenantId, tenantId),
          eq(salesOrderStatusHistory.salesOrderId, salesOrderId)
        )
      )
      .orderBy(desc(salesOrderStatusHistory.changedAt));

    return history;
  }
}