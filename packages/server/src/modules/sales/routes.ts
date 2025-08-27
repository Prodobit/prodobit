import { Hono } from "hono";
import { type } from "arktype";
import {
  createSalesOrderRequest,
  updateSalesOrderRequest,
  updateSalesOrderStatusRequest,
  createSalesOrderItemRequest,
  updateSalesOrderItemRequest
} from "@prodobit/types";
import { authMiddleware } from "../../core/middleware/auth.js";
import { requirePermission } from "../../core/middleware/rbac.js";
import { SalesOrderService } from "./services/SalesOrderService.js";

export const salesRoutes = new Hono();


// Apply auth middleware to all routes
salesRoutes.use("*", authMiddleware);

// GET / - List sales orders with filtering
salesRoutes.get("/", requirePermission("sales_orders", "read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");

    // Get query parameters
    const status = c.req.query("status");
    const customerId = c.req.query("customerId");
    const orderDateFrom = c.req.query("orderDateFrom");
    const orderDateTo = c.req.query("orderDateTo");
    const search = c.req.query("search");
    const page = parseInt(c.req.query("page") || "1");
    const limit = parseInt(c.req.query("limit") || "10");

    const salesOrderService = new SalesOrderService(db);
    const result = await salesOrderService.getSalesOrders(user.tenantId, {
      status,
      customerId,
      orderDateFrom,
      orderDateTo,
      search,
      page,
      limit,
    });

    return c.json({
      success: true,
      data: result.data,
      pagination: result.pagination,
    });
  } catch (error) {
    console.error("Error fetching sales orders:", error);
    return c.json(
      {
        success: false,
        error: "Failed to fetch sales orders",
      },
      500
    );
  }
});

// GET /:id - Get sales order by ID
salesRoutes.get("/:id", requirePermission("sales_orders", "read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const id = c.req.param("id");

    const salesOrderService = new SalesOrderService(db);
    const result = await salesOrderService.getSalesOrderById(user.tenantId, id);

    if (!result) {
      return c.json(
        {
          success: false,
          error: "Sales order not found",
        },
        404
      );
    }

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("Error fetching sales order:", error);
    return c.json(
      {
        success: false,
        error: "Failed to fetch sales order",
      },
      500
    );
  }
});

// POST / - Create new sales order
salesRoutes.post("/", requirePermission("sales_orders", "create"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();

    // Validate request body with arkType
    const validated = createSalesOrderRequest(body);
    if (validated instanceof type.errors) {
      return c.json(
        {
          success: false,
          error: "Invalid request data",
          details: validated.summary,
        },
        400
      );
    }

    const salesOrderService = new SalesOrderService(db);
    const result = await salesOrderService.createSalesOrder(user.tenantId, user.id, validated);

    return c.json(
      {
        success: true,
        data: result,
      },
      201
    );
  } catch (error) {
    console.error("Error creating sales order:", error);
    return c.json(
      {
        success: false,
        error: error instanceof Error ? error.message : "Failed to create sales order",
      },
      500
    );
  }
});

// PUT /:id - Update sales order
salesRoutes.put("/:id", requirePermission("sales_orders", "update"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const id = c.req.param("id");
    const body = await c.req.json();

    // Validate request body with arkType
    const validated = updateSalesOrderRequest(body);
    if (validated instanceof type.errors) {
      return c.json(
        {
          success: false,
          error: "Invalid request data",
          details: validated.summary,
        },
        400
      );
    }

    const salesOrderService = new SalesOrderService(db);
    const result = await salesOrderService.updateSalesOrder(user.tenantId, id, validated);

    if (!result) {
      return c.json(
        {
          success: false,
          error: "Sales order not found",
        },
        404
      );
    }

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("Error updating sales order:", error);
    return c.json(
      {
        success: false,
        error: error instanceof Error ? error.message : "Failed to update sales order",
      },
      500
    );
  }
});

// PUT /:id/status - Update sales order status
salesRoutes.put("/:id/status", requirePermission("sales_orders", "update"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const id = c.req.param("id");
    const body = await c.req.json();

    // Validate request body with arkType
    const validated = updateSalesOrderStatusRequest(body);
    if (validated instanceof type.errors) {
      return c.json(
        {
          success: false,
          error: "Invalid request data",
          details: validated.summary,
        },
        400
      );
    }

    const salesOrderService = new SalesOrderService(db);
    const result = await salesOrderService.updateSalesOrderStatus(
      user.tenantId,
      id,
      validated.status,
      user.id,
      validated.changeReason,
      validated.notes
    );

    if (!result) {
      return c.json(
        {
          success: false,
          error: "Sales order not found",
        },
        404
      );
    }

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("Error updating sales order status:", error);
    return c.json(
      {
        success: false,
        error: error instanceof Error ? error.message : "Failed to update sales order status",
      },
      500
    );
  }
});

// DELETE /:id - Soft delete sales order
salesRoutes.delete("/:id", requirePermission("sales_orders", "delete"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const id = c.req.param("id");

    const salesOrderService = new SalesOrderService(db);
    const result = await salesOrderService.deleteSalesOrder(user.tenantId, id);

    if (!result) {
      return c.json(
        {
          success: false,
          error: "Sales order not found",
        },
        404
      );
    }

    return c.json({
      success: true,
      data: { id },
    });
  } catch (error) {
    console.error("Error deleting sales order:", error);
    return c.json(
      {
        success: false,
        error: "Failed to delete sales order",
      },
      500
    );
  }
});

// POST /:id/items - Add item to sales order
salesRoutes.post("/:id/items", requirePermission("sales_orders", "update"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const salesOrderId = c.req.param("id");
    const body = await c.req.json();

    // Validate request body with arkType
    const validated = createSalesOrderItemRequest(body);
    if (validated instanceof type.errors) {
      return c.json(
        {
          success: false,
          error: "Invalid request data",
          details: validated.summary,
        },
        400
      );
    }

    const salesOrderService = new SalesOrderService(db);
    const result = await salesOrderService.addSalesOrderItem(
      user.tenantId,
      salesOrderId,
      validated
    );

    return c.json(
      {
        success: true,
        data: result,
      },
      201
    );
  } catch (error) {
    console.error("Error adding sales order item:", error);
    return c.json(
      {
        success: false,
        error: error instanceof Error ? error.message : "Failed to add sales order item",
      },
      500
    );
  }
});

// PUT /:id/items/:itemId - Update sales order item
salesRoutes.put("/:id/items/:itemId", requirePermission("sales_orders", "update"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const salesOrderId = c.req.param("id");
    const itemId = c.req.param("itemId");
    const body = await c.req.json();

    // Validate request body with arkType
    const validated = updateSalesOrderItemRequest(body);
    if (validated instanceof type.errors) {
      return c.json(
        {
          success: false,
          error: "Invalid request data",
          details: validated.summary,
        },
        400
      );
    }

    const salesOrderService = new SalesOrderService(db);
    const result = await salesOrderService.updateSalesOrderItem(
      user.tenantId,
      salesOrderId,
      itemId,
      validated
    );

    if (!result) {
      return c.json(
        {
          success: false,
          error: "Sales order item not found",
        },
        404
      );
    }

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("Error updating sales order item:", error);
    return c.json(
      {
        success: false,
        error: error instanceof Error ? error.message : "Failed to update sales order item",
      },
      500
    );
  }
});

// DELETE /:id/items/:itemId - Remove item from sales order
salesRoutes.delete("/:id/items/:itemId", requirePermission("sales_orders", "update"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const salesOrderId = c.req.param("id");
    const itemId = c.req.param("itemId");

    const salesOrderService = new SalesOrderService(db);
    const result = await salesOrderService.removeSalesOrderItem(
      user.tenantId,
      salesOrderId,
      itemId
    );

    if (!result) {
      return c.json(
        {
          success: false,
          error: "Sales order item not found",
        },
        404
      );
    }

    return c.json({
      success: true,
      data: { id: itemId },
    });
  } catch (error) {
    console.error("Error removing sales order item:", error);
    return c.json(
      {
        success: false,
        error: "Failed to remove sales order item",
      },
      500
    );
  }
});

// GET /:id/history - Get sales order status history
salesRoutes.get("/:id/history", requirePermission("sales_orders", "read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const id = c.req.param("id");

    const salesOrderService = new SalesOrderService(db);
    const result = await salesOrderService.getSalesOrderHistory(user.tenantId, id);

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("Error fetching sales order history:", error);
    return c.json(
      {
        success: false,
        error: "Failed to fetch sales order history",
      },
      500
    );
  }
});