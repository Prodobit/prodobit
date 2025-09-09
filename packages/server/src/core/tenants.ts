import type { Database } from "@prodobit/database";
import { Hono } from "hono";
import { TenantService } from "./services/tenant-service.js";

const tenants = new Hono<{ Variables: { db: Database } }>();

// GET /api/v1/tenants
tenants.get("/", async (c) => {
  const db = c.get("db");
  const tenantService = new TenantService(db);

  try {
    // Get query parameters
    const page = Number(c.req.query("page")) || 1;
    const limit = Number(c.req.query("limit")) || 10;
    const status = c.req.query("status");

    const result = await tenantService.getTenants({ page, limit, status });

    return c.json({
      success: true,
      data: result.data,
      pagination: result.pagination,
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
  const tenantService = new TenantService(db);
  const id = c.req.param("id");

  try {
    const tenant = await tenantService.getTenantById(id);

    if (!tenant) {
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
      data: tenant,
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
  const tenantService = new TenantService(db);
  const body = await c.req.json();

  try {
    const tenant = await tenantService.createTenant({
      name: body.name,
      subscriptionPlan: body.subscriptionPlan,
      settings: body.settings,
    });

    return c.json(
      {
        success: true,
        data: tenant,
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
