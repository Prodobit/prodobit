import {
  createPublicRouter,
  getIntegrationTenantId,
} from "../integration/public-routes-helper.js";
import { requireScope } from "../integration/middleware/index.js";
import { StockService } from "./services/StockService.js";

const publicInventoryRoutes = createPublicRouter();

/**
 * GET /public/inventory/stocks - Get all stock levels
 * Requires: inventory:stocks:read scope
 */
publicInventoryRoutes.get(
  "/stocks",
  requireScope("inventory:stocks:read"),
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
      const stockService = new StockService(db, tenantId);
      const result = await stockService.getStocks({});

      return c.json({
        success: true,
        data: result,
      });
    } catch (error) {
      console.error("List stocks error:", error);
      return c.json(
        {
          success: false,
          error: {
            code: "INTERNAL_ERROR",
            message: "Failed to list stocks",
            details: error instanceof Error ? error.message : "Unknown error",
          },
        },
        500
      );
    }
  }
);

/**
 * GET /public/inventory/stocks/:id - Get a specific stock level
 * Requires: inventory:stocks:read scope
 */
publicInventoryRoutes.get(
  "/stocks/:id",
  requireScope("inventory:stocks:read"),
  async (c) => {
    const db = c.get("db");
    const tenantId = getIntegrationTenantId(c);
    const stockId = c.req.param("id");

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
      const stockService = new StockService(db, tenantId);
      const stock = await stockService.getStockById(stockId);

      if (!stock) {
        return c.json(
          {
            success: false,
            error: {
              code: "NOT_FOUND",
              message: "Stock not found",
            },
          },
          404
        );
      }

      return c.json({
        success: true,
        data: stock,
      });
    } catch (error) {
      console.error("Get stock error:", error);
      return c.json(
        {
          success: false,
          error: {
            code: "INTERNAL_ERROR",
            message: "Failed to get stock",
            details: error instanceof Error ? error.message : "Unknown error",
          },
        },
        500
      );
    }
  }
);

/**
 * GET /public/inventory/items - Get all inventory items
 * Requires: inventory:read scope
 */
publicInventoryRoutes.get("/items", requireScope("inventory:read"), async (c) => {
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
    // Note: You would need to implement ItemService similar to StockService
    // For now, returning a placeholder
    return c.json({
      success: true,
      data: [],
      message: "Items endpoint - implement ItemService",
    });
  } catch (error) {
    console.error("List items error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list items",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

export { publicInventoryRoutes };
