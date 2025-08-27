import { Hono } from "hono";
import { authMiddleware } from "../../core/middleware/auth.js";
import { requirePermission } from "../../core/middleware/rbac.js";
import { PartyService } from "../../core/services/PartyService.js";

export const customerRoutes = new Hono();

// Apply auth middleware to all routes
customerRoutes.use("*", authMiddleware);

// GET / - List all customers
customerRoutes.get("/", requirePermission("customer", "read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");

    const partyService = new PartyService(db);
    const customers = await partyService.listPartiesByType(
      user.tenantId,
      undefined, // any party type (person/organization)
      "customer"
    );

    return c.json({
      success: true,
      data: customers,
    });
  } catch (error) {
    console.error("List customers error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list customers",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /:id - Get customer by ID
customerRoutes.get("/:id", requirePermission("customer", "read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const customerId = c.req.param("id");

    const partyService = new PartyService(db);
    const customer = await partyService.getPartyWithDetails(customerId, user.tenantId);

    if (!customer) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Customer not found",
          },
        },
        404
      );
    }

    // Verify this party has customer role
    const hasCustomerRole = customer.roles?.some((role: { roleType: string }) => role.roleType === "customer");
    if (!hasCustomerRole) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Customer not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: customer,
    });
  } catch (error) {
    console.error("Get customer error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get customer",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST / - Create new customer
customerRoutes.post("/", requirePermission("customer", "create"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();

    const partyService = new PartyService(db);
    
    // Create customer based on party type
    let customer;
    if (body.partyType === "person") {
      customer = await partyService.createPerson({
        tenantId: user.tenantId,
        firstName: body.firstName,
        lastName: body.lastName,
        code: body.code,
        roles: ["customer"], // Always add customer role
        addresses: body.addresses,
        contacts: body.contacts,
        customerCode: body.customerCode,
      });
    } else {
      customer = await partyService.createOrganization({
        tenantId: user.tenantId,
        name: body.name,
        code: body.code,
        roles: ["customer"], // Always add customer role
        addresses: body.addresses,
        contacts: body.contacts,
        customerCode: body.customerCode,
      });
    }

    return c.json(
      {
        success: true,
        data: customer,
        message: "Customer created successfully",
      },
      201
    );
  } catch (error) {
    console.error("Create customer error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create customer",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// PUT /:id - Update customer
customerRoutes.put("/:id", requirePermission("customer", "update"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const customerId = c.req.param("id");
    const body = await c.req.json();

    const partyService = new PartyService(db);
    const customer = await partyService.updateParty(customerId, user.tenantId, body);

    return c.json({
      success: true,
      data: customer,
      message: "Customer updated successfully",
    });
  } catch (error) {
    console.error("Update customer error:", error);

    if (error instanceof Error && error.message === "Party not found") {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Customer not found",
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
          message: "Failed to update customer",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// DELETE /:id - Soft delete customer
customerRoutes.delete("/:id", requirePermission("customer", "delete"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const customerId = c.req.param("id");

    const partyService = new PartyService(db);
    await partyService.deleteParty(customerId, user.tenantId);

    return c.json({
      success: true,
      message: "Customer deleted successfully",
    });
  } catch (error) {
    console.error("Delete customer error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to delete customer",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});