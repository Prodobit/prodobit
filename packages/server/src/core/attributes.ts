import type { Database } from "@prodobit/database";
import { Hono } from "hono";

const attributes = new Hono<{ Variables: { db: Database } }>();

// GET /api/v1/attributes
attributes.get("/", async (c) => {
  const db = c.get("db");

  try {
    return c.json({
      success: true,
      data: [],
      pagination: {
        page: 1,
        limit: 10,
        total: 0,
        totalPages: 0,
      },
    });
  } catch (error) {
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to fetch attributes",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /api/v1/attributes/:id
attributes.get("/:id", async (c) => {
  const id = c.req.param("id");

  return c.json({
    success: true,
    data: {
      id,
      tenantId: crypto.randomUUID(),
      entityType: "party",
      name: "email",
      displayName: "Email Address",
      description: "Primary email address",
      dataType: "string",
      isRequired: true,
      defaultValue: null,
      validationRules: { pattern: "^[^@]+@[^@]+\\.[^@]+$" },
      options: null,
      insertedAt: new Date().toISOString(),
      updatedAt: new Date().toISOString(),
    },
  });
});

// POST /api/v1/attributes
attributes.post("/", async (c) => {
  const body = await c.req.json();

  return c.json(
    {
      success: true,
      data: {
        id: crypto.randomUUID(),
        tenantId: crypto.randomUUID(),
        entityType: body.entityType || "party",
        name: body.name || "new_attribute",
        displayName: body.displayName || "New Attribute",
        description: body.description || "",
        dataType: body.dataType || "string",
        isRequired: body.isRequired || false,
        defaultValue: body.defaultValue || null,
        validationRules: body.validationRules || {},
        options: body.options || null,
        insertedAt: new Date().toISOString(),
        updatedAt: new Date().toISOString(),
      },
    },
    201
  );
});

// PUT /api/v1/attributes/:id
attributes.put("/:id", async (c) => {
  const id = c.req.param("id");
  const body = await c.req.json();

  return c.json({
    success: true,
    data: {
      id,
      tenantId: crypto.randomUUID(),
      entityType: "party",
      name: "email",
      displayName: body.displayName || "Email Address",
      description: body.description || "Primary email address",
      dataType: "string",
      isRequired: body.isRequired ?? true,
      defaultValue: body.defaultValue || null,
      validationRules: body.validationRules || {
        pattern: "^[^@]+@[^@]+\\.[^@]+$",
      },
      options: body.options || null,
      insertedAt: new Date().toISOString(),
      updatedAt: new Date().toISOString(),
    },
  });
});

// DELETE /api/v1/attributes/:id
attributes.delete("/:id", async (c) => {
  const id = c.req.param("id");

  return c.json({
    success: true,
    data: null,
    message: `Attribute ${id} deleted successfully`,
  });
});

export { attributes };
