import { Hono } from "hono";
import { type } from "arktype";
import { 
  createBomRequest,
  updateBomRequest,
  createBomComponentRequest,
  createEcoRequest,
  updateEcoRequest,
  rejectEcoRequest,
  cloneBomRequest,
  mrpRequirementsRequest
} from "@prodobit/types";
import { authMiddleware } from "../../core/middleware/auth.js";
import { requirePermission } from "../../core/middleware/rbac.js";
import { BomService } from "./services/BomService.js";
import Decimal from "decimal.js";

// BOM Routes
export const bomRoutes = new Hono();

// BOM Components Routes
export const bomComponentRoutes = new Hono();

// ECO Routes
export const ecoRoutes = new Hono();

// Routing Routes (for future work centers and routings)
export const routingRoutes = new Hono();


// Apply auth middleware to all routes
bomRoutes.use("*", authMiddleware);
bomComponentRoutes.use("*", authMiddleware);
ecoRoutes.use("*", authMiddleware);
routingRoutes.use("*", authMiddleware);

// ===================
// BOM ROUTES
// ===================

// GET / - List BOMs with filtering
bomRoutes.get("/", requirePermission("bom", "read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");

    // Get query parameters
    const itemId = c.req.query("itemId");
    const status = c.req.query("status");
    const isCurrentVersion = c.req.query("isCurrentVersion") === "true";
    const isPhantomBom = c.req.query("isPhantomBom") === "true";
    const manufacturingPolicy = c.req.query("manufacturingPolicy");
    const search = c.req.query("search");

    const bomService = new BomService(db, user.tenantId);
    const boms = await bomService.getBoms({
      itemId,
      status,
      isCurrentVersion: c.req.query("isCurrentVersion") ? isCurrentVersion : undefined,
      isPhantomBom: c.req.query("isPhantomBom") ? isPhantomBom : undefined,
      manufacturingPolicy,
      search,
    });

    return c.json({
      success: true,
      data: boms,
    });
  } catch (error) {
    console.error("List BOMs error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list BOMs",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST / - Create new BOM
bomRoutes.post("/", requirePermission("bom", "create"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();

    const validation = createBomRequest(body);

    if (validation instanceof type.errors) {
      return c.json(
        {
          success: false,
          error: {
            code: "VALIDATION_ERROR",
            message: "Validation failed",
            details: validation,
          },
        },
        400
      );
    }

    const bomData = {
      ...validation,
      productionQuantity: validation.productionQuantity ? new Decimal(validation.productionQuantity) : undefined
    };

    const bomService = new BomService(db, user.tenantId);
    const bom = await bomService.createBom(bomData);

    return c.json({
      success: true,
      data: bom,
      message: "BOM created successfully",
    });
  } catch (error) {
    console.error("Create BOM error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create BOM",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /:id - Get BOM by ID
bomRoutes.get("/:id", requirePermission("bom", "read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const bomId = c.req.param("id");

    const bomService = new BomService(db, user.tenantId);
    const bom = await bomService.getBomById(bomId);

    if (!bom) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "BOM not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: bom,
    });
  } catch (error) {
    console.error("Get BOM error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get BOM",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// PUT /:id - Update BOM
bomRoutes.put("/:id", requirePermission("bom", "update"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const bomId = c.req.param("id");
    const body = await c.req.json();

    const validation = updateBomRequest(body);

    if (validation instanceof type.errors) {
      return c.json(
        {
          success: false,
          error: {
            code: "VALIDATION_ERROR",
            message: "Validation failed",
            details: validation,
          },
        },
        400
      );
    }

    const bomData = {
      ...validation,
      productionQuantity: validation.productionQuantity ? new Decimal(validation.productionQuantity) : undefined
    };

    const bomService = new BomService(db, user.tenantId);
    const bom = await bomService.updateBom(bomId, bomData);

    return c.json({
      success: true,
      data: bom,
      message: "BOM updated successfully",
    });
  } catch (error) {
    console.error("Update BOM error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to update BOM",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// DELETE /:id - Delete BOM
bomRoutes.delete("/:id", requirePermission("bom", "delete"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const bomId = c.req.param("id");

    const bomService = new BomService(db, user.tenantId);
    await bomService.deleteBom(bomId);

    return c.json({
      success: true,
      message: "BOM deleted successfully",
    });
  } catch (error) {
    console.error("Delete BOM error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to delete BOM",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /:id/explosion - Get BOM explosion
bomRoutes.get("/:id/explosion", requirePermission("bom", "read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const bomId = c.req.param("id");
    const explodePhantoms = c.req.query("explodePhantoms") !== "false";

    const bomService = new BomService(db, user.tenantId);
    const explosion = await bomService.getBomExplosion(bomId, explodePhantoms);

    return c.json({
      success: true,
      data: explosion,
    });
  } catch (error) {
    console.error("BOM explosion error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get BOM explosion",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /:id/clone - Clone BOM with new version
bomRoutes.post("/:id/clone", requirePermission("bom", "create"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const bomId = c.req.param("id");
    const body = await c.req.json();

    const validation = cloneBomRequest(body);

    if (validation instanceof type.errors) {
      return c.json(
        {
          success: false,
          error: {
            code: "VALIDATION_ERROR",
            message: "Validation failed",
            details: validation,
          },
        },
        400
      );
    }

    const data = validation;

    const bomService = new BomService(db, user.tenantId);
    const newBom = await bomService.cloneBomWithNewVersion(
      bomId,
      data.newVersion,
      user.id
    );

    return c.json({
      success: true,
      data: newBom,
      message: "BOM cloned successfully",
    });
  } catch (error) {
    console.error("Clone BOM error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: error instanceof Error ? error.message : "Failed to clone BOM",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// ===================
// ECO ROUTES  
// ===================

// GET / - List ECOs with filtering
ecoRoutes.get("/", requirePermission("eco", "read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");

    const status = c.req.query("status");
    const changeType = c.req.query("changeType");
    const priority = c.req.query("priority");
    const assignedTo = c.req.query("assignedTo");
    const requestedBy = c.req.query("requestedBy");

    const bomService = new BomService(db, user.tenantId);
    const ecos = await bomService.getEcos({
      status,
      changeType,
      priority,
      assignedTo,
      requestedBy,
    });

    return c.json({
      success: true,
      data: ecos,
    });
  } catch (error) {
    console.error("List ECOs error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list ECOs",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST / - Create new ECO
ecoRoutes.post("/", requirePermission("eco", "create"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();

    const validation = createEcoRequest(body);

    if (validation instanceof type.errors) {
      return c.json(
        {
          success: false,
          error: {
            code: "VALIDATION_ERROR",
            message: "Validation failed",
            details: validation,
          },
        },
        400
      );
    }

    const ecoData = {
      ...validation,
      estimatedCostImpact: validation.estimatedCostImpact ? new Decimal(validation.estimatedCostImpact) : undefined
    };

    const bomService = new BomService(db, user.tenantId);
    const eco = await bomService.createEco(ecoData);

    return c.json({
      success: true,
      data: eco,
      message: "ECO created successfully",
    });
  } catch (error) {
    console.error("Create ECO error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create ECO",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// PUT /:id - Update ECO
ecoRoutes.put("/:id", requirePermission("eco", "update"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const ecoId = c.req.param("id");
    const body = await c.req.json();

    const bomService = new BomService(db, user.tenantId);
    const eco = await bomService.updateEco(ecoId, body);

    return c.json({
      success: true,
      data: eco,
      message: "ECO updated successfully",
    });
  } catch (error) {
    console.error("Update ECO error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to update ECO",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /:id/approve - Approve ECO
ecoRoutes.post("/:id/approve", requirePermission("eco", "approve"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const ecoId = c.req.param("id");

    const bomService = new BomService(db, user.tenantId);
    const eco = await bomService.approveEco(ecoId, user.id);

    return c.json({
      success: true,
      data: eco,
      message: "ECO approved successfully",
    });
  } catch (error) {
    console.error("Approve ECO error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to approve ECO",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /:id/reject - Reject ECO
ecoRoutes.post("/:id/reject", requirePermission("eco", "update"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const ecoId = c.req.param("id");
    const body = await c.req.json();

    const validation = rejectEcoRequest(body);

    if (validation instanceof type.errors) {
      return c.json(
        {
          success: false,
          error: {
            code: "VALIDATION_ERROR",
            message: "Validation failed",
            details: validation,
          },
        },
        400
      );
    }

    const data = validation;

    const bomService = new BomService(db, user.tenantId);
    const eco = await bomService.rejectEco(ecoId, user.id, data.reason);

    return c.json({
      success: true,
      data: eco,
      message: "ECO rejected successfully",
    });
  } catch (error) {
    console.error("Reject ECO error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to reject ECO",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// ===================
// BOM COMPONENT ROUTES
// ===================

// GET / - List BOM components with filtering
bomComponentRoutes.get("/", requirePermission("bom", "read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");

    const bomId = c.req.query("bomId");
    const componentType = c.req.query("componentType");
    const sourcingType = c.req.query("sourcingType");
    const isOptional = c.req.query("isOptional") === "true";
    const isCritical = c.req.query("isCritical") === "true";

    const bomService = new BomService(db, user.tenantId);
    const components = await bomService.getBomComponents({
      bomId,
      componentType,
      sourcingType,
      isOptional: c.req.query("isOptional") ? isOptional : undefined,
      isCritical: c.req.query("isCritical") ? isCritical : undefined,
    });

    return c.json({
      success: true,
      data: components,
    });
  } catch (error) {
    console.error("List BOM components error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list BOM components",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST / - Add component to BOM
bomComponentRoutes.post("/", requirePermission("bom", "create"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();

    const validation = createBomComponentRequest(body);

    if (validation instanceof type.errors) {
      return c.json(
        {
          success: false,
          error: {
            code: "VALIDATION_ERROR",
            message: "Validation failed",
            details: validation,
          },
        },
        400
      );
    }

    const componentData: any = {
      ...validation,
      quantity: new Decimal(validation.quantity),
      setupTimeMinutes: validation.setupTimeMinutes ? new Decimal(validation.setupTimeMinutes) : undefined,
      runTimePerUnitSeconds: validation.runTimePerUnitSeconds ? new Decimal(validation.runTimePerUnitSeconds) : undefined,
    };

    const bomService = new BomService(db, user.tenantId);
    const component = await bomService.createBomComponent(componentData);

    return c.json({
      success: true,
      data: component,
      message: "BOM component added successfully",
    });
  } catch (error) {
    console.error("Add BOM component error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to add BOM component",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// PUT /:id - Update BOM component
bomComponentRoutes.put("/:id", requirePermission("bom", "update"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const componentId = c.req.param("id");
    const body = await c.req.json();

    const updateData = {
      ...body,
      quantity: body.quantity ? new Decimal(body.quantity) : undefined,
      setupTimeMinutes: body.setupTimeMinutes ? new Decimal(body.setupTimeMinutes) : undefined,
      runTimePerUnitSeconds: body.runTimePerUnitSeconds ? new Decimal(body.runTimePerUnitSeconds) : undefined,
    };

    const bomService = new BomService(db, user.tenantId);
    const component = await bomService.updateBomComponent(componentId, updateData);

    return c.json({
      success: true,
      data: component,
      message: "BOM component updated successfully",
    });
  } catch (error) {
    console.error("Update BOM component error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to update BOM component",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// DELETE /:id - Delete BOM component
bomComponentRoutes.delete("/:id", requirePermission("bom", "delete"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const componentId = c.req.param("id");

    const bomService = new BomService(db, user.tenantId);
    await bomService.deleteBomComponent(componentId);

    return c.json({
      success: true,
      message: "BOM component deleted successfully",
    });
  } catch (error) {
    console.error("Delete BOM component error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to delete BOM component",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// ===================
// ROUTING ROUTES (Placeholder for future work centers)
// ===================

// GET / - List routings
routingRoutes.get("/", requirePermission("routing", "read"), async (c) => {
  return c.json({
    success: true,
    data: [],
    message: "Routing management coming soon",
  });
});

// Export all routes as a single object
export const manufacturingRoutes = {
  boms: bomRoutes,
  bomComponents: bomComponentRoutes,
  ecos: ecoRoutes,
  routings: routingRoutes,
};