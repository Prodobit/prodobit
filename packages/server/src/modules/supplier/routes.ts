import { Hono } from "hono";
import { authMiddleware } from "../../core/middleware/auth.js";
import { requirePermission } from "../../core/middleware/rbac.js";
import { PartyService } from "../../core/services/PartyService.js";

export const supplierRoutes = new Hono();

// Apply auth middleware to all routes
supplierRoutes.use("*", authMiddleware);

// GET / - List all suppliers
supplierRoutes.get("/", requirePermission("supplier", "read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");

    const partyService = new PartyService(db);
    const suppliers = await partyService.listPartiesByType(
      user.tenantId,
      undefined, // any party type (person/organization)
      "supplier"
    );

    return c.json({
      success: true,
      data: suppliers,
    });
  } catch (error) {
    console.error("List suppliers error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list suppliers",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /:id - Get supplier by ID
supplierRoutes.get("/:id", requirePermission("supplier", "read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const supplierId = c.req.param("id");

    const partyService = new PartyService(db);
    const supplier = await partyService.getPartyWithDetails(supplierId, user.tenantId);

    if (!supplier) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Supplier not found",
          },
        },
        404
      );
    }

    // Verify this party has supplier role
    const hasSupplierRole = supplier.roles?.some((role: { roleType: string }) => role.roleType === "supplier");
    if (!hasSupplierRole) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Supplier not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: supplier,
    });
  } catch (error) {
    console.error("Get supplier error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get supplier",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST / - Create new supplier
supplierRoutes.post("/", requirePermission("supplier", "create"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();

    const partyService = new PartyService(db);
    
    // Create supplier based on party type
    let supplier;
    if (body.partyType === "person") {
      supplier = await partyService.createPerson({
        tenantId: user.tenantId,
        firstName: body.firstName,
        lastName: body.lastName,
        code: body.code,
        roles: ["supplier"], // Always add supplier role
        addresses: body.addresses,
        contacts: body.contacts,
        supplierCode: body.supplierCode,
      });
    } else {
      supplier = await partyService.createOrganization({
        tenantId: user.tenantId,
        name: body.name,
        code: body.code,
        roles: ["supplier"], // Always add supplier role
        addresses: body.addresses,
        contacts: body.contacts,
        supplierCode: body.supplierCode,
      });
    }

    return c.json(
      {
        success: true,
        data: supplier,
        message: "Supplier created successfully",
      },
      201
    );
  } catch (error) {
    console.error("Create supplier error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create supplier",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// PUT /:id - Update supplier
supplierRoutes.put("/:id", requirePermission("supplier", "update"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const supplierId = c.req.param("id");
    const body = await c.req.json();

    const partyService = new PartyService(db);
    const supplier = await partyService.updateParty(supplierId, user.tenantId, body);

    return c.json({
      success: true,
      data: supplier,
      message: "Supplier updated successfully",
    });
  } catch (error) {
    console.error("Update supplier error:", error);

    if (error instanceof Error && error.message === "Party not found") {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Supplier not found",
          },
        },
        404
      );
    }

    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to update supplier",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// DELETE /:id - Soft delete supplier
supplierRoutes.delete("/:id", requirePermission("supplier", "delete"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const supplierId = c.req.param("id");

    const partyService = new PartyService(db);
    await partyService.deleteParty(supplierId, user.tenantId);

    return c.json({
      success: true,
      message: "Supplier deleted successfully",
    });
  } catch (error) {
    console.error("Delete supplier error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to delete supplier",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});