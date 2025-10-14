import { Hono } from "hono";
import { type } from "arktype";
import { authMiddleware } from "../../core/middleware/auth.js";
import { requirePermission } from "../../core/middleware/rbac.js";
import { BrandService } from "./BrandService.js";
import { createBrandRequest, updateBrandRequest } from "@prodobit/types";

export const brandRoutes = new Hono();

// Apply auth middleware to all routes
brandRoutes.use("*", authMiddleware);

// GET / - List all brands
brandRoutes.get("/", requirePermission("brand", "read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const query = c.req.query();

    const brandService = new BrandService(db);
    const brands = await brandService.listBrands(user.tenantId, query);

    return c.json({
      success: true,
      data: brands,
    });
  } catch (error) {
    console.error("List brands error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list brands",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /:id - Get brand by ID
brandRoutes.get("/:id", requirePermission("brand", "read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const brandId = c.req.param("id");

    const brandService = new BrandService(db);
    const brand = await brandService.getBrand(brandId, user.tenantId);

    if (!brand) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Brand not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: brand,
    });
  } catch (error) {
    console.error("Get brand error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get brand",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST / - Create new brand
brandRoutes.post("/", requirePermission("brand", "create"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();

    // Validate request body
    const validation = createBrandRequest(body);
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

    const brandService = new BrandService(db);

    // Check if brand with same name exists
    const exists = await brandService.brandExistsByName(user.tenantId, validation.name);
    if (exists) {
      return c.json(
        {
          success: false,
          error: {
            code: "DUPLICATE_BRAND",
            message: "Brand with this name already exists",
          },
        },
        400
      );
    }

    const brand = await brandService.createBrand(user.tenantId, validation);

    return c.json(
      {
        success: true,
        data: brand,
      },
      201
    );
  } catch (error) {
    console.error("Create brand error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create brand",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// PUT /:id - Update brand
brandRoutes.put("/:id", requirePermission("brand", "update"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const brandId = c.req.param("id");
    const body = await c.req.json();

    // Validate request body
    const validation = updateBrandRequest(body);
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

    const brandService = new BrandService(db);

    // Check if brand name is being changed and if new name already exists
    if (validation.name) {
      const exists = await brandService.brandExistsByName(
        user.tenantId,
        validation.name,
        brandId
      );
      if (exists) {
        return c.json(
          {
            success: false,
            error: {
              code: "DUPLICATE_BRAND",
              message: "Brand with this name already exists",
            },
          },
          400
        );
      }
    }

    const brand = await brandService.updateBrand(brandId, user.tenantId, validation);

    if (!brand) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Brand not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: brand,
    });
  } catch (error) {
    console.error("Update brand error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to update brand",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// DELETE /:id - Delete brand
brandRoutes.delete("/:id", requirePermission("brand", "delete"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const brandId = c.req.param("id");

    const brandService = new BrandService(db);
    const brand = await brandService.deleteBrand(brandId, user.tenantId);

    if (!brand) {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Brand not found",
          },
        },
        404
      );
    }

    return c.json({
      success: true,
      data: brand,
    });
  } catch (error) {
    console.error("Delete brand error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to delete brand",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});
