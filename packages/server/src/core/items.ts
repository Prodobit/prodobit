import { Hono } from "hono";
import { authMiddleware } from "./middleware/auth.js";
import { ItemService } from "./services/ItemService.js";

const items = new Hono();

// GET /api/v1/items - List all items with filtering
items.get("/", authMiddleware, async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    
    // Get query parameters
    const itemType = c.req.query("itemType");
    const categoryId = c.req.query("categoryId");
    const status = c.req.query("status");
    const search = c.req.query("search");

    const itemService = new ItemService(db);
    const result = await itemService.getItems(user.tenantId, {
      itemType,
      categoryId,
      status,
      search,
    });

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("List items error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list items",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /api/v1/items/products - List all products
items.get("/products", authMiddleware, async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const search = c.req.query("search");

    const itemService = new ItemService(db);
    const result = await itemService.getItems(user.tenantId, {
      itemType: "product",
      search,
    });

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("List products error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list products",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /api/v1/items/services - List all services
items.get("/services", authMiddleware, async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const search = c.req.query("search");

    const itemService = new ItemService(db);
    const result = await itemService.getItems(user.tenantId, {
      itemType: "service",
      search,
    });

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("List services error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list services",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /api/v1/items/raw-materials - List all raw materials
items.get("/raw-materials", authMiddleware, async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const search = c.req.query("search");

    const itemService = new ItemService(db);
    const result = await itemService.getItems(user.tenantId, {
      itemType: "raw_material",
      search,
    });

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("List raw materials error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list raw materials",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /api/v1/items/components - List all components
items.get("/components", authMiddleware, async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const search = c.req.query("search");

    const itemService = new ItemService(db);
    const result = await itemService.getItems(user.tenantId, {
      itemType: "component",
      search,
    });

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("List components error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list components",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /api/v1/items/search - Search items
items.get("/search", authMiddleware, async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    
    const q = c.req.query("q");
    const itemType = c.req.query("itemType");

    if (!q) {
      return c.json(
        {
          success: false,
          error: {
            code: "BAD_REQUEST",
            message: "Search query is required",
          },
        },
        400
      );
    }

    const itemService = new ItemService(db);
    const result = await itemService.searchItems(q, user.tenantId, itemType);

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("Search items error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to search items",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /api/v1/items/:id - Get item with full details
items.get("/:id", authMiddleware, async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const itemId = c.req.param("id");

    const itemService = new ItemService(db);
    const result = await itemService.getItemWithDetails(itemId, user.tenantId);

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("Get item details error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to get item details",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /api/v1/items - Create a new item
items.post("/", authMiddleware, async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();

    const itemService = new ItemService(db);
    const result = await itemService.createItem({
      tenantId: user.tenantId,
      ...body,
    });

    return c.json({
      success: true,
      data: result,
      message: "Item created successfully",
    });
  } catch (error) {
    console.error("Create item error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create item",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /api/v1/items/products - Create a new product
items.post("/products", authMiddleware, async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();

    const itemService = new ItemService(db);
    const result = await itemService.createItem({
      tenantId: user.tenantId,
      itemType: "product",
      ...body,
    });

    return c.json({
      success: true,
      data: result,
      message: "Product created successfully",
    });
  } catch (error) {
    console.error("Create product error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create product",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /api/v1/items/services - Create a new service
items.post("/services", authMiddleware, async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();

    const itemService = new ItemService(db);
    const result = await itemService.createItem({
      tenantId: user.tenantId,
      itemType: "service",
      ...body,
    });

    return c.json({
      success: true,
      data: result,
      message: "Service created successfully",
    });
  } catch (error) {
    console.error("Create service error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create service",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /api/v1/items/raw-materials - Create a new raw material
items.post("/raw-materials", authMiddleware, async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();

    const itemService = new ItemService(db);
    const result = await itemService.createItem({
      tenantId: user.tenantId,
      itemType: "raw_material",
      ...body,
    });

    return c.json({
      success: true,
      data: result,
      message: "Raw material created successfully",
    });
  } catch (error) {
    console.error("Create raw material error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create raw material",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /api/v1/items/components - Create a new component
items.post("/components", authMiddleware, async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();

    const itemService = new ItemService(db);
    const result = await itemService.createItem({
      tenantId: user.tenantId,
      itemType: "component",
      ...body,
    });

    return c.json({
      success: true,
      data: result,
      message: "Component created successfully",
    });
  } catch (error) {
    console.error("Create component error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create component",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /api/v1/items/:id/variants - Get all variants of an item
items.get("/:id/variants", authMiddleware, async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const parentItemId = c.req.param("id");

    const itemService = new ItemService(db);
    const variants = await itemService.getItemVariants(parentItemId, user.tenantId);

    return c.json({
      success: true,
      data: variants,
    });
  } catch (error) {
    console.error("Get item variants error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to fetch item variants",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /api/v1/items/:id/variants - Create a variant of an item
items.post("/:id/variants", authMiddleware, async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const parentItemId = c.req.param("id");
    const body = await c.req.json();

    const itemService = new ItemService(db);
    const variant = await itemService.createItemVariant({
      tenantId: user.tenantId,
      parentItemId,
      ...body,
    });

    return c.json({
      success: true,
      data: variant,
      message: "Item variant created successfully",
    });
  } catch (error) {
    console.error("Create item variant error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create item variant",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// GET /api/v1/item-categories - Get all item categories
items.get("/categories", authMiddleware, async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const { item_type, parent_id } = c.req.query();

    const itemService = new ItemService(db);
    const categories = await itemService.getItemCategories({
      tenantId: user.tenantId,
      itemType: item_type,
      parentId: parent_id,
    });

    return c.json({
      success: true,
      data: categories,
    });
  } catch (error) {
    console.error("Get item categories error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to fetch item categories",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /api/v1/item-categories - Create item category
items.post("/categories", authMiddleware, async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();

    const itemService = new ItemService(db);
    const category = await itemService.createItemCategory({
      tenantId: user.tenantId,
      ...body,
    });

    return c.json({
      success: true,
      data: category,
      message: "Item category created successfully",
    });
  } catch (error) {
    console.error("Create item category error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create item category",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// DELETE /api/v1/items/:id - Soft delete item
items.delete("/:id", authMiddleware, async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const itemId = c.req.param("id");

    const itemService = new ItemService(db);
    const success = await itemService.deleteItem(itemId, user.tenantId);

    if (success) {
      return c.json({
        success: true,
        message: "Item deleted successfully",
      });
    } else {
      return c.json(
        {
          success: false,
          error: {
            code: "NOT_FOUND",
            message: "Item not found",
          },
        },
        404
      );
    }
  } catch (error) {
    console.error("Delete item error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to delete item",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// Categories endpoints

// GET /api/v1/items/categories - List all categories
items.get("/categories", authMiddleware, async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const itemType = c.req.query("itemType");

    const itemService = new ItemService(db);
    const result = await itemService.getCategories(user.tenantId, itemType);

    return c.json({
      success: true,
      data: result,
    });
  } catch (error) {
    console.error("List categories error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to list categories",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// POST /api/v1/items/categories - Create a new category
items.post("/categories", authMiddleware, async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const body = await c.req.json();

    const itemService = new ItemService(db);
    const result = await itemService.createCategory({
      tenantId: user.tenantId,
      ...body,
    });

    return c.json({
      success: true,
      data: result,
      message: "Category created successfully",
    });
  } catch (error) {
    console.error("Create category error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "INTERNAL_ERROR",
          message: "Failed to create category",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

export default items;