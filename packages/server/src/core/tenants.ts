import type { Database } from "@prodobit/database";
import { tenants as tenantsTable } from "@prodobit/database";
import { eq } from "drizzle-orm";
import { Hono } from "hono";

const tenants = new Hono<{ Variables: { db: Database } }>();

// GET /api/v1/tenants
tenants.get("/", async (c) => {
  const db = c.get("db");

  try {
    const result = await db.select().from(tenantsTable);

    return c.json({
      success: true,
      data: result,
      pagination: {
        page: 1,
        limit: 10,
        total: result.length,
        totalPages: Math.ceil(result.length / 10),
      },
    });
  } catch (error) {
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to fetch tenants",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /api/v1/tenants/:id
tenants.get("/:id", async (c) => {
  const db = c.get("db");
  const id = c.req.param("id");

  try {
    const result = await db
      .select()
      .from(tenantsTable)
      .where(eq(tenantsTable.id, id));

    if (result.length === 0) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Tenant not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: result[0],
    });
  } catch (error) {
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to fetch tenant",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /api/v1/tenants
tenants.post("/", async (c) => {
  const db = c.get("db");
  const body = await c.req.json();

  try {
    const newTenant = {
      name: body.name,
      status: "active",
      subscriptionPlan: body.subscriptionPlan || "basic",
      settings: body.settings || {},
    };

    const result = await db.insert(tenantsTable).values(newTenant).returning();

    return c.json(
      {
        success: true,
        data: result[0],
      },
      201
    );
  } catch (error) {
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create tenant",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

export { tenants };
