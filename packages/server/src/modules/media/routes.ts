/**
 * Media Routes
 * API endpoints for media management
 */

import { Hono } from "hono";
import { authMiddleware } from "../../core/middleware/auth.js";
import { requirePermission } from "../../core/middleware/rbac.js";
import { MediaService } from "./MediaService.js";
import type { ServerContext } from "../../framework/types.js";

export const mediaRoutes = new Hono<{ Variables: ServerContext }>();

// Apply auth middleware to all routes
mediaRoutes.use("*", authMiddleware);

/**
 * POST /items/:itemId/images
 * Upload an image for an item
 */
mediaRoutes.post(
  "/items/:itemId/images",
  requirePermission("item", "update"),
  async (c) => {
    try {
      const db = c.get("db");
      const user = c.get("user");
      const storage = c.get("storage");
      const itemId = c.req.param("itemId");

      if (!storage) {
        return c.json(
          {
            success: false,
            error: {
              code: "STORAGE_NOT_CONFIGURED",
              message: "Storage provider not configured",
            },
          },
          500
        );
      }

      // Parse multipart form data
      const formData = await c.req.formData();
      const file = formData.get("image") as File;
      const altText = formData.get("altText") as string | null;
      const isPrimary = formData.get("isPrimary") === "true";
      const displayOrder = formData.get("displayOrder")
        ? parseInt(formData.get("displayOrder") as string)
        : undefined;

      if (!file) {
        return c.json(
          {
            success: false,
            error: {
              code: "NO_FILE",
              message: "No image file provided",
            },
          },
          400
        );
      }

      // Convert File to Buffer
      const arrayBuffer = await file.arrayBuffer();
      const buffer = Buffer.from(arrayBuffer);

      const mediaService = new MediaService(db, storage, user.tenantId);

      const result = await mediaService.uploadItemImage({
        itemId,
        file: buffer,
        filename: file.name,
        mimeType: file.type,
        altText: altText || undefined,
        isPrimary,
        displayOrder,
      });

      return c.json(
        {
          success: true,
          data: result,
        },
        201
      );
    } catch (error) {
      console.error("Upload item image error:", error);
      return c.json(
        {
          success: false,
          error: {
            code: "UPLOAD_FAILED",
            message: "Failed to upload image",
            details: error instanceof Error ? error.message : "Unknown error",
          },
        },
        500
      );
    }
  }
);

/**
 * GET /items/:itemId/images
 * List all images for an item
 */
mediaRoutes.get(
  "/items/:itemId/images",
  requirePermission("item", "read"),
  async (c) => {
    try {
      const db = c.get("db");
      const user = c.get("user");
      const storage = c.get("storage");
      const itemId = c.req.param("itemId");

      if (!storage) {
        return c.json(
          {
            success: false,
            error: {
              code: "STORAGE_NOT_CONFIGURED",
              message: "Storage provider not configured",
            },
          },
          500
        );
      }

      const mediaService = new MediaService(db, storage, user.tenantId);
      const images = await mediaService.listItemImages(itemId);

      return c.json({
        success: true,
        data: images,
      });
    } catch (error) {
      console.error("List item images error:", error);
      return c.json(
        {
          success: false,
          error: {
            code: "LIST_FAILED",
            message: "Failed to list images",
            details: error instanceof Error ? error.message : "Unknown error",
          },
        },
        500
      );
    }
  }
);

/**
 * GET /images/:imageId
 * Get a single image
 */
mediaRoutes.get(
  "/images/:imageId",
  requirePermission("item", "read"),
  async (c) => {
    try {
      const db = c.get("db");
      const user = c.get("user");
      const storage = c.get("storage");
      const imageId = c.req.param("imageId");

      if (!storage) {
        return c.json(
          {
            success: false,
            error: {
              code: "STORAGE_NOT_CONFIGURED",
              message: "Storage provider not configured",
            },
          },
          500
        );
      }

      const mediaService = new MediaService(db, storage, user.tenantId);
      const image = await mediaService.getItemImage(imageId);

      if (!image) {
        return c.json(
          {
            success: false,
            error: {
              code: "NOT_FOUND",
              message: "Image not found",
            },
          },
          404
        );
      }

      return c.json({
        success: true,
        data: image,
      });
    } catch (error) {
      console.error("Get image error:", error);
      return c.json(
        {
          success: false,
          error: {
            code: "GET_FAILED",
            message: "Failed to get image",
            details: error instanceof Error ? error.message : "Unknown error",
          },
        },
        500
      );
    }
  }
);

/**
 * DELETE /images/:imageId
 * Delete an image
 */
mediaRoutes.delete(
  "/images/:imageId",
  requirePermission("item", "update"),
  async (c) => {
    try {
      const db = c.get("db");
      const user = c.get("user");
      const storage = c.get("storage");
      const imageId = c.req.param("imageId");

      if (!storage) {
        return c.json(
          {
            success: false,
            error: {
              code: "STORAGE_NOT_CONFIGURED",
              message: "Storage provider not configured",
            },
          },
          500
        );
      }

      const mediaService = new MediaService(db, storage, user.tenantId);
      await mediaService.deleteItemImage(imageId);

      return c.json({
        success: true,
        message: "Image deleted successfully",
      });
    } catch (error) {
      console.error("Delete image error:", error);
      return c.json(
        {
          success: false,
          error: {
            code: "DELETE_FAILED",
            message: "Failed to delete image",
            details: error instanceof Error ? error.message : "Unknown error",
          },
        },
        500
      );
    }
  }
);

/**
 * PUT /images/:imageId/primary
 * Set an image as primary for its item
 */
mediaRoutes.put(
  "/images/:imageId/primary",
  requirePermission("item", "update"),
  async (c) => {
    try {
      const db = c.get("db");
      const user = c.get("user");
      const storage = c.get("storage");
      const imageId = c.req.param("imageId");

      if (!storage) {
        return c.json(
          {
            success: false,
            error: {
              code: "STORAGE_NOT_CONFIGURED",
              message: "Storage provider not configured",
            },
          },
          500
        );
      }

      const body = await c.req.json();
      const { itemId } = body;

      if (!itemId) {
        return c.json(
          {
            success: false,
            error: {
              code: "MISSING_ITEM_ID",
              message: "itemId is required",
            },
          },
          400
        );
      }

      const mediaService = new MediaService(db, storage, user.tenantId);
      await mediaService.setPrimaryImage(imageId, itemId);

      return c.json({
        success: true,
        message: "Image set as primary",
      });
    } catch (error) {
      console.error("Set primary image error:", error);
      return c.json(
        {
          success: false,
          error: {
            code: "SET_PRIMARY_FAILED",
            message: "Failed to set primary image",
            details: error instanceof Error ? error.message : "Unknown error",
          },
        },
        500
      );
    }
  }
);

/**
 * PUT /items/:itemId/images/reorder
 * Reorder images for an item
 */
mediaRoutes.put(
  "/items/:itemId/images/reorder",
  requirePermission("item", "update"),
  async (c) => {
    try {
      const db = c.get("db");
      const user = c.get("user");
      const storage = c.get("storage");
      const itemId = c.req.param("itemId");

      if (!storage) {
        return c.json(
          {
            success: false,
            error: {
              code: "STORAGE_NOT_CONFIGURED",
              message: "Storage provider not configured",
            },
          },
          500
        );
      }

      const body = await c.req.json();
      const { imageIds } = body;

      if (!Array.isArray(imageIds)) {
        return c.json(
          {
            success: false,
            error: {
              code: "INVALID_IMAGE_IDS",
              message: "imageIds must be an array",
            },
          },
          400
        );
      }

      const mediaService = new MediaService(db, storage, user.tenantId);
      await mediaService.reorderImages(itemId, imageIds);

      return c.json({
        success: true,
        message: "Images reordered successfully",
      });
    } catch (error) {
      console.error("Reorder images error:", error);
      return c.json(
        {
          success: false,
          error: {
            code: "REORDER_FAILED",
            message: "Failed to reorder images",
            details: error instanceof Error ? error.message : "Unknown error",
          },
        },
        500
      );
    }
  }
);

/**
 * PUT /images/:imageId/alt-text
 * Update alt text for an image
 */
mediaRoutes.put(
  "/images/:imageId/alt-text",
  requirePermission("item", "update"),
  async (c) => {
    try {
      const db = c.get("db");
      const user = c.get("user");
      const storage = c.get("storage");
      const imageId = c.req.param("imageId");

      if (!storage) {
        return c.json(
          {
            success: false,
            error: {
              code: "STORAGE_NOT_CONFIGURED",
              message: "Storage provider not configured",
            },
          },
          500
        );
      }

      const body = await c.req.json();
      const { altText } = body;

      if (typeof altText !== "string") {
        return c.json(
          {
            success: false,
            error: {
              code: "INVALID_ALT_TEXT",
              message: "altText must be a string",
            },
          },
          400
        );
      }

      const mediaService = new MediaService(db, storage, user.tenantId);
      await mediaService.updateAltText(imageId, altText);

      return c.json({
        success: true,
        message: "Alt text updated successfully",
      });
    } catch (error) {
      console.error("Update alt text error:", error);
      return c.json(
        {
          success: false,
          error: {
            code: "UPDATE_ALT_TEXT_FAILED",
            message: "Failed to update alt text",
            details: error instanceof Error ? error.message : "Unknown error",
          },
        },
        500
      );
    }
  }
);

/**
 * GET /storage/stats
 * Get storage usage statistics for current tenant
 */
mediaRoutes.get("/storage/stats", requirePermission("item", "read"), async (c) => {
  try {
    const db = c.get("db");
    const user = c.get("user");
    const storage = c.get("storage");

    if (!storage) {
      return c.json(
        {
          success: false,
          error: {
            code: "STORAGE_NOT_CONFIGURED",
            message: "Storage provider not configured",
          },
        },
        500
      );
    }

    const mediaService = new MediaService(db, storage, user.tenantId);
    const stats = await mediaService.getStorageStats();

    return c.json({
      success: true,
      data: stats,
    });
  } catch (error) {
    console.error("Get storage stats error:", error);
    return c.json(
      {
        success: false,
        error: {
          code: "STATS_FAILED",
          message: "Failed to get storage stats",
          details: error instanceof Error ? error.message : "Unknown error",
        },
      },
      500
    );
  }
});

// ==================== ASSET IMAGE ROUTES ====================

/**
 * POST /assets/:assetId/images
 * Upload an image for an asset
 */
mediaRoutes.post(
  "/assets/:assetId/images",
  requirePermission("asset", "update"),
  async (c) => {
    try {
      const db = c.get("db");
      const user = c.get("user");
      const storage = c.get("storage");
      const assetId = c.req.param("assetId");

      if (!storage) {
        return c.json(
          {
            success: false,
            error: {
              code: "STORAGE_NOT_CONFIGURED",
              message: "Storage provider not configured",
            },
          },
          500
        );
      }

      // Parse multipart form data
      const formData = await c.req.formData();
      const file = formData.get("image") as File;
      const altText = formData.get("altText") as string | null;
      const isPrimary = formData.get("isPrimary") === "true";
      const displayOrder = formData.get("displayOrder")
        ? parseInt(formData.get("displayOrder") as string)
        : undefined;

      if (!file) {
        return c.json(
          {
            success: false,
            error: {
              code: "NO_FILE",
              message: "No image file provided",
            },
          },
          400
        );
      }

      // Convert File to Buffer
      const arrayBuffer = await file.arrayBuffer();
      const buffer = Buffer.from(arrayBuffer);

      const mediaService = new MediaService(db, storage, user.tenantId);

      const result = await mediaService.uploadAssetImage({
        assetId,
        file: buffer,
        filename: file.name,
        mimeType: file.type,
        altText: altText || undefined,
        isPrimary,
        displayOrder,
      });

      return c.json(
        {
          success: true,
          data: result,
        },
        201
      );
    } catch (error) {
      console.error("Upload asset image error:", error);
      return c.json(
        {
          success: false,
          error: {
            code: "UPLOAD_FAILED",
            message: "Failed to upload image",
            details: error instanceof Error ? error.message : "Unknown error",
          },
        },
        500
      );
    }
  }
);

/**
 * GET /assets/:assetId/images
 * List all images for an asset
 */
mediaRoutes.get(
  "/assets/:assetId/images",
  requirePermission("asset", "read"),
  async (c) => {
    try {
      const db = c.get("db");
      const user = c.get("user");
      const storage = c.get("storage");
      const assetId = c.req.param("assetId");

      if (!storage) {
        return c.json(
          {
            success: false,
            error: {
              code: "STORAGE_NOT_CONFIGURED",
              message: "Storage provider not configured",
            },
          },
          500
        );
      }

      const mediaService = new MediaService(db, storage, user.tenantId);
      const images = await mediaService.listAssetImages(assetId);

      return c.json({
        success: true,
        data: images,
      });
    } catch (error) {
      console.error("List asset images error:", error);
      return c.json(
        {
          success: false,
          error: {
            code: "LIST_FAILED",
            message: "Failed to list images",
            details: error instanceof Error ? error.message : "Unknown error",
          },
        },
        500
      );
    }
  }
);

/**
 * PUT /asset-images/:imageId
 * Update an asset image
 */
mediaRoutes.put(
  "/asset-images/:imageId",
  requirePermission("asset", "update"),
  async (c) => {
    try {
      const db = c.get("db");
      const user = c.get("user");
      const storage = c.get("storage");
      const imageId = c.req.param("imageId");

      if (!storage) {
        return c.json(
          {
            success: false,
            error: {
              code: "STORAGE_NOT_CONFIGURED",
              message: "Storage provider not configured",
            },
          },
          500
        );
      }

      const body = await c.req.json();
      const { displayOrder, isPrimary, altText } = body;

      const mediaService = new MediaService(db, storage, user.tenantId);
      const updated = await mediaService.updateAssetImage(imageId, {
        displayOrder,
        isPrimary,
        altText,
      });

      return c.json({
        success: true,
        data: updated,
      });
    } catch (error) {
      console.error("Update asset image error:", error);
      return c.json(
        {
          success: false,
          error: {
            code: "UPDATE_FAILED",
            message: "Failed to update image",
            details: error instanceof Error ? error.message : "Unknown error",
          },
        },
        500
      );
    }
  }
);

/**
 * DELETE /asset-images/:imageId
 * Delete an asset image
 */
mediaRoutes.delete(
  "/asset-images/:imageId",
  requirePermission("asset", "update"),
  async (c) => {
    try {
      const db = c.get("db");
      const user = c.get("user");
      const storage = c.get("storage");
      const imageId = c.req.param("imageId");

      if (!storage) {
        return c.json(
          {
            success: false,
            error: {
              code: "STORAGE_NOT_CONFIGURED",
              message: "Storage provider not configured",
            },
          },
          500
        );
      }

      const mediaService = new MediaService(db, storage, user.tenantId);
      await mediaService.deleteAssetImage(imageId);

      return c.json({
        success: true,
        message: "Asset image deleted successfully",
      });
    } catch (error) {
      console.error("Delete asset image error:", error);
      return c.json(
        {
          success: false,
          error: {
            code: "DELETE_FAILED",
            message: "Failed to delete image",
            details: error instanceof Error ? error.message : "Unknown error",
          },
        },
        500
      );
    }
  }
);
