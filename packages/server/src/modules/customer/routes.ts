import { Hono } from "hono";
import { authMiddleware } from "../../core/middleware/auth.js";
import { requirePermission } from "../../core/middleware/rbac.js";
import { PartyService } from "../../core/services/PartyService.js";

export const customerRoutes = new Hono();

// Apply auth middleware to all routes
customerRoutes.use("*", authMiddleware);

// GET / - List all customers
customerRoutes.get("/", requirePermission("customer", "read"), async (c) => {
  const log = c.get("logger");

  try {
    const db = c.get("db");
    const user = c.get("user");

    const partyService = new PartyService(db);
    const customers = await partyService.listPartiesByType(
      user.tenantId,
      undefined, // any party type (person/organization)
      "customer"
    );

    log.info({ count: customers.length }, "Customers listed successfully");

    return c.json({
      success: true,
      data: customers,
    });
  } catch (error) {
    log.error({ err: error }, "Failed to list customers");
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
  const log = c.get("logger");

  try {
    const db = c.get("db");
    const user = c.get("user");
    const customerId = c.req.param("id");

    const partyService = new PartyService(db);
    const customer = await partyService.getPartyWithDetails(customerId, user.tenantId);

    if (!customer) {
      log.warn({ customerId }, "Customer not found");
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
      log.warn({ customerId }, "Party does not have customer role");
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
    log.error({ err: error, customerId: c.req.param("id") }, "Failed to get customer");
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
    const log = c.get("logger");
    log.error({ err: error, partyType: (await c.req.json()).partyType }, "Failed to create customer");
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
    const log = c.get("logger");
    const customerId = c.req.param("id");

    if (error instanceof Error && error.message === "Party not found") {
      log.warn({ customerId }, "Customer not found for update");
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

    log.error({ err: error, customerId }, "Failed to update customer");
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
    const log = c.get("logger");
    const customerId = c.req.param("id");
    log.error({ err: error, customerId }, "Failed to delete customer");
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