import type { Database } from "@prodobit/database";
import { Hono } from "hono";
import { authMiddleware } from "./middleware/auth.js";
import { PartyService } from "./services/PartyService.js";

const parties = new Hono<{ Variables: { db: Database } }>();

// POST /api/v1/parties/persons - Create a new person
parties.post("/persons", authMiddleware, async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();

    const partyService = new PartyService(db);

    const result = await partyService.createPerson({
      tenantId: user.tenantId,
      firstName: body.firstName,
      lastName: body.lastName,
      code: body.code,
      roles: body.roles || [],
      addresses: body.addresses,
      contacts: body.contacts,
      customerCode: body.customerCode,
      supplierCode: body.supplierCode,
      employeeCode: body.employeeCode,
    });

    return c.json({
      success: true,
      data: result,
      message: "Person created successfully",
    });
  } catch (error) {
    console.error("Create person error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create person",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /api/v1/parties/organizations - Create a new organization
parties.post("/organizations", authMiddleware, async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();

    const partyService = new PartyService(db);

    const result = await partyService.createOrganization({
      tenantId: user.tenantId,
      name: body.name,
      code: body.code,
      roles: body.roles || [],
      addresses: body.addresses,
      contacts: body.contacts,
      customerCode: body.customerCode,
      supplierCode: body.supplierCode,
    });

    return c.json({
      success: true,
      data: result,
      message: "Organization created successfully",
    });
  } catch (error) {
    console.error("Create organization error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create organization",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});


// GET /api/v1/parties/:id - Get party with full details
parties.get("/:id", authMiddleware, async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const partyId = c.req.param("id");

    const partyService = new PartyService(db);
    const result = await partyService.getPartyWithDetails(
      partyId,
      user.tenantId
    );

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("Get party error:", error);

    if (error instanceof Error && error.message === "Party not found") {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Party not found",
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
          message: "Failed to get party",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// PUT /api/v1/parties/:id - Update party
parties.put("/:id", authMiddleware, async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const partyId = c.req.param("id");
    const body = await c.req.json();

    const partyService = new PartyService(db);
    const result = await partyService.updateParty(partyId, user.tenantId, body);

    return c.json({
      success: true,
      data: result,
      message: "Party updated successfully",
    });
  } catch (error) {
    console.error("Update party error:", error);

    if (error instanceof Error && error.message === "Party not found") {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Party not found",
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
          message: "Failed to update party",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// DELETE /api/v1/parties/:id - Soft delete party
parties.delete("/:id", authMiddleware, async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const partyId = c.req.param("id");

    const partyService = new PartyService(db);
    await partyService.deleteParty(partyId, user.tenantId);

    return c.json({
      success: true,
      message: "Party deleted successfully",
    });
  } catch (error) {
    console.error("Delete party error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to delete party",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /api/v1/parties - List parties with filtering
parties.get("/", authMiddleware, async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const partyType = c.req.query("partyType"); // person, organization
    const roleType = c.req.query("roleType"); // customer, supplier, employee

    const partyService = new PartyService(db);
    const result = await partyService.listPartiesByType(
      user.tenantId,
      partyType,
      roleType
    );

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("List parties error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list parties",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

export { parties };
