import { type } from "arktype";
import {
  createSalesOrderRequest,
  updateSalesOrderRequest,
} from "@prodobit/types";
import {
  createPublicRouter,
  getIntegrationTenantId,
} from "../integration/public-routes-helper.js";
import { requireScope } from "../integration/middleware/index.js";
import { SalesOrderService } from "./services/SalesOrderService.js";

const publicSalesRoutes = createPublicRouter();

/**
 * GET /public/sales/orders - List sales orders
 * Requires: sales:read scope
 */
publicSalesRoutes.get("/orders", requireScope("sales:read"), async (c) => {
  const db = c.get("db");
  const tenantId = getIntegrationTenantId(c);

  if (!tenantId) {
    return c.json(
      {
        success: false,
        error: {
          code: "TENANT_REQUIRED",
          message: "Tenant ID required",
        },
      },
      400
    );
  }

  try {
    // Get query parameters
    const status = c.req.query("status");
    const customerId = c.req.query("customerId");
    const orderDateFrom = c.req.query("orderDateFrom");
    const orderDateTo = c.req.query("orderDateTo");
    const search = c.req.query("search");
    const page = parseInt(c.req.query("page") || "1");
    const limit = parseInt(c.req.query("limit") || "10");

    const salesOrderService = new SalesOrderService(db);
    const result = await salesOrderService.getSalesOrders(tenantId, {
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
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to fetch sales orders",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

/**
 * GET /public/sales/orders/:id - Get a specific sales order
 * Requires: sales:read scope
 */
publicSalesRoutes.get(
  "/orders/:id",
  requireScope("sales:read"),
  async (c) => {
    const db = c.get("db");
    const tenantId = getIntegrationTenantId(c);
    const orderId = c.req.param("id");

    if (!tenantId) {
      return c.json(
        {
          success: false,
          error: {
            code: "TENANT_REQUIRED",
            message: "Tenant ID required",
          },
        },
        400
      );
    }

    try {
      const salesOrderService = new SalesOrderService(db);
      const order = await salesOrderService.getSalesOrderById(
        tenantId,
        orderId
      );

      if (!order) {
        return c.json(
          {
            success: false,
            error: {
              code: "NOT_FOUND",
              message: "Sales order not found",
            },
          },
          404
        );
      }

      return c.json({
        success: true,
        data: order,
      });
    } catch (error) {
      console.error("Error fetching sales order:", error);
      return c.json(
        {
          success: false,
          error: {
            code: "INTERNAL_ERROR",
            message: "Failed to fetch sales order",
            details: error instanceof Error ? error.message : "Unknown error",
          },
        },
        500
      );
    }
  }
);

/**
 * POST /public/sales/orders - Create a new sales order
 * Requires: sales:write scope
 */
publicSalesRoutes.post(
  "/orders",
  requireScope("sales:write"),
  async (c) => {
    const db = c.get("db");
    const tenantId = getIntegrationTenantId(c);

    if (!tenantId) {
      return c.json(
        {
          success: false,
          error: {
            code: "TENANT_REQUIRED",
            message: "Tenant ID required",
          },
        },
        400
      );
    }

    try {
      const body = await c.req.json();
      const validation = createSalesOrderRequest(body);

      if (validation instanceof type.errors) {
        return c.json(
          {
            success: false,
            error: {
              code: "VALIDATION_ERROR",
              message: "Invalid request data",
              details: validation.summary,
            },
          },
          400
        );
      }

      const integrationKey = c.get("integrationKey");
      const createdBy = integrationKey?.id || "integration-api";

      const salesOrderService = new SalesOrderService(db);
      const order = await salesOrderService.createSalesOrder(
        tenantId,
        createdBy,
        validation
      );

      return c.json(
        {
          success: true,
          data: order,
        },
        201
      );
    } catch (error) {
      console.error("Error creating sales order:", error);
      return c.json(
        {
          success: false,
          error: {
            code: "INTERNAL_ERROR",
            message: "Failed to create sales order",
            details: error instanceof Error ? error.message : "Unknown error",
          },
        },
        500
      );
    }
  }
);

/**
 * PATCH /public/sales/orders/:id - Update a sales order
 * Requires: sales:write scope
 */
publicSalesRoutes.patch(
  "/orders/:id",
  requireScope("sales:write"),
  async (c) => {
    const db = c.get("db");
    const tenantId = getIntegrationTenantId(c);
    const orderId = c.req.param("id");

    if (!tenantId) {
      return c.json(
        {
          success: false,
          error: {
            code: "TENANT_REQUIRED",
            message: "Tenant ID required",
          },
        },
        400
      );
    }

    try {
      const body = await c.req.json();
      const validation = updateSalesOrderRequest(body);

      if (validation instanceof type.errors) {
        return c.json(
          {
            success: false,
            error: {
              code: "VALIDATION_ERROR",
              message: "Invalid request data",
              details: validation.summary,
            },
          },
          400
        );
      }

      const salesOrderService = new SalesOrderService(db);
      const order = await salesOrderService.updateSalesOrder(
        tenantId,
        orderId,
        validation
      );

      if (!order) {
        return c.json(
          {
            success: false,
            error: {
              code: "NOT_FOUND",
              message: "Sales order not found",
            },
          },
          404
        );
      }

      return c.json({
        success: true,
        data: order,
      });
    } catch (error) {
      console.error("Error updating sales order:", error);
      return c.json(
        {
          success: false,
          error: {
            code: "INTERNAL_ERROR",
            message: "Failed to update sales order",
            details: error instanceof Error ? error.message : "Unknown error",
          },
        },
        500
      );
    }
  }
);

export { publicSalesRoutes };
