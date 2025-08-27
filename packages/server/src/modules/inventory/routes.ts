import type { Database } from "@prodobit/database";
import { Hono } from "hono";
import { authMiddleware } from "../../core/middleware/auth.js";
import { requirePermission } from "../../core/middleware/rbac.js";
import { StockService } from "./services/StockService.js";

// Create route handlers for stock management
export const stockRoutes = new Hono<{ Variables: { db: Database } }>();

// Apply auth middleware to all routes
stockRoutes.use("*", authMiddleware);

// ===================
// STOCK ROUTES
// ===================

// GET / - List stock levels
stockRoutes.get("/", requirePermission("stock", "read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    
    const stockService = new StockService(db, user.tenantId);
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
});

// GET /:id - Get stock by ID
stockRoutes.get("/:id", requirePermission("stock", "read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const stockId = c.req.param("id");
    
    const stockService = new StockService(db, user.tenantId);
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
});

// POST / - Create stock entry
stockRoutes.post("/", requirePermission("stock", "create"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();
    
    const stockService = new StockService(db, user.tenantId);
    const stock = await stockService.createStock(body);

    return c.json(
      {
        success: true,
        data: stock,
        message: "Stock created successfully",
      },
      201
    );
  } catch (error) {
    console.error("Create stock error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create stock",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// PUT /:id - Update stock
stockRoutes.put("/:id", requirePermission("stock", "update"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const stockId = c.req.param("id");
    const body = await c.req.json();
    
    const stockService = new StockService(db, user.tenantId);
    const stock = await stockService.updateStock(stockId, body);

    return c.json({
      success: true,
      data: stock,
      message: "Stock updated successfully",
    });
  } catch (error) {
    console.error("Update stock error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to update stock",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// DELETE /:id - Delete stock
stockRoutes.delete("/:id", requirePermission("stock", "delete"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const stockId = c.req.param("id");
    
    const stockService = new StockService(db, user.tenantId);
    await stockService.deleteStock(stockId);

    return c.json({
      success: true,
      message: "Stock deleted successfully",
    });
  } catch (error) {
    console.error("Delete stock error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to delete stock",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// ===================
// LOT ROUTES
// ===================

export const lotRoutes = new Hono<{ Variables: { db: Database } }>();
lotRoutes.use("*", authMiddleware);

// GET / - List lots
lotRoutes.get("/", requirePermission("lot", "read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    
    const stockService = new StockService(db, user.tenantId);
    const result = await stockService.getLots({});

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("List lots error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list lots",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /:id - Get lot by ID
lotRoutes.get("/:id", requirePermission("lot", "read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const lotId = c.req.param("id");
    
    const stockService = new StockService(db, user.tenantId);
    const lot = await stockService.getLotById(lotId);

    if (!lot) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Lot not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: lot,
    });
  } catch (error) {
    console.error("Get lot error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get lot",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST / - Create lot
lotRoutes.post("/", requirePermission("lot", "create"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();
    
    const stockService = new StockService(db, user.tenantId);
    const lot = await stockService.createLot(body);

    return c.json(
      {
        success: true,
        data: lot,
        message: "Lot created successfully",
      },
      201
    );
  } catch (error) {
    console.error("Create lot error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create lot",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// PUT /:id - Update lot
lotRoutes.put("/:id", requirePermission("lot", "update"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const lotId = c.req.param("id");
    const body = await c.req.json();
    
    const stockService = new StockService(db, user.tenantId);
    const lot = await stockService.updateLot(lotId, body);

    return c.json({
      success: true,
      data: lot,
      message: "Lot updated successfully",
    });
  } catch (error) {
    console.error("Update lot error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to update lot",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// DELETE /:id - Delete lot
lotRoutes.delete("/:id", requirePermission("lot", "delete"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const lotId = c.req.param("id");
    
    const stockService = new StockService(db, user.tenantId);
    await stockService.deleteLot(lotId);

    return c.json({
      success: true,
      message: "Lot deleted successfully",
    });
  } catch (error) {
    console.error("Delete lot error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to delete lot",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// ===================
// STOCK LEVEL ROUTES
// ===================

export const stockLevelRoutes = new Hono<{ Variables: { db: Database } }>();
stockLevelRoutes.use("*", authMiddleware);

// GET / - Get stock levels
stockLevelRoutes.get("/", requirePermission("stock", "read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const locationId = c.req.query("locationId");
    
    const stockService = new StockService(db, user.tenantId);
    const result = await stockService.getStockLevels(locationId || undefined);

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("Get stock levels error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get stock levels",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// ===================
// STOCK ITEM ROUTES
// ===================

export const stockItemRoutes = new Hono<{ Variables: { db: Database } }>();
stockItemRoutes.use("*", authMiddleware);

// GET / - Get stock items
stockItemRoutes.get("/", requirePermission("stock", "read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const search = c.req.query("search");
    
    const stockService = new StockService(db, user.tenantId);
    const result = await stockService.getStockItems(search || undefined);

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("Get stock items error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get stock items",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// ===================
// STOCK STATS ROUTES
// ===================

export const stockStatsRoutes = new Hono<{ Variables: { db: Database } }>();
stockStatsRoutes.use("*", authMiddleware);

// GET / - Get stock statistics
stockStatsRoutes.get("/", requirePermission("stock", "read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    
    const stockService = new StockService(db, user.tenantId);
    const result = await stockService.getStockStats();

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("Get stock stats error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get stock stats",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// Export routes object
export const inventoryRoutes = {
  stocks: stockRoutes,
  lots: lotRoutes,
  stockLevels: stockLevelRoutes,
  stockItems: stockItemRoutes,
  stockStats: stockStatsRoutes,
};