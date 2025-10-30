import type {
  ItemImage,
  UploadItemImageRequest,
  UpdateAltTextRequest,
  ReorderImagesRequest,
  UploadItemImageResult,
  StorageStats,
  Response,
} from "@prodobit/types";
import {
  uploadItemImageRequest,
  updateAltTextRequest,
  reorderImagesRequest,
} from "@prodobit/types";
import type { RequestConfig } from "../types";
import { BaseClient } from "./base-client";
import { validateRequest } from "../utils/validation";

export class MediaClient extends BaseClient {
  /**
   * Upload an image for an item
   */
  async uploadItemImage(
    itemId: string,
    file: File | Blob,
    metadata?: Partial<UploadItemImageRequest>,
    config?: RequestConfig
  ): Promise<Response<UploadItemImageResult>> {
    // Validate metadata if provided
    let validatedMetadata;
    if (metadata) {
      validatedMetadata = validateRequest(uploadItemImageRequest, metadata);
    }

    // Create FormData for file upload
    const formData = new FormData();
    formData.append("image", file); // Server expects "image" field
    if (validatedMetadata?.altText) {
      formData.append("altText", validatedMetadata.altText);
    }
    if (validatedMetadata?.isPrimary !== undefined) {
      formData.append("isPrimary", String(validatedMetadata.isPrimary));
    }
    if (validatedMetadata?.displayOrder !== undefined) {
      formData.append("displayOrder", String(validatedMetadata.displayOrder));
    }

    return this.request(
      "POST",
      `/api/v1/media/items/${itemId}/images`,
      formData,
      {
        ...config,
        headers: {
          ...config?.headers,
          // Don't set Content-Type, let the browser set it with boundary
        },
      }
    );
  }

  /**
   * List all images for an item
   */
  async listItemImages(
    itemId: string,
    config?: RequestConfig
  ): Promise<Response<ItemImage[]>> {
    return this.request("GET", `/api/v1/media/items/${itemId}/images`, undefined, config);
  }

  /**
   * Get a single item image by ID
   */
  async getItemImage(
    imageId: string,
    config?: RequestConfig
  ): Promise<Response<ItemImage>> {
    return this.request("GET", `/api/v1/media/images/${imageId}`, undefined, config);
  }

  /**
   * Delete an item image
   */
  async deleteItemImage(
    imageId: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.request("DELETE", `/api/v1/media/images/${imageId}`, undefined, config);
  }

  /**
   * Set an image as primary for an item
   */
  async setPrimaryImage(
    imageId: string,
    itemId: string,
    config?: RequestConfig
  ): Promise<Response<ItemImage>> {
    return this.request("PUT", `/api/v1/media/images/${imageId}/primary`, { itemId }, config);
  }

  /**
   * Reorder images for an item
   */
  async reorderImages(
    itemId: string,
    imageIds: string[],
    config?: RequestConfig
  ): Promise<Response<ItemImage[]>> {
    const validatedData = validateRequest(reorderImagesRequest, { imageIds });
    return this.request(
      "PUT",
      `/api/v1/media/items/${itemId}/images/reorder`,
      validatedData,
      config
    );
  }

  /**
   * Update alt text for an image
   */
  async updateAltText(
    imageId: string,
    altText: string,
    config?: RequestConfig
  ): Promise<Response<ItemImage>> {
    const validatedData = validateRequest(updateAltTextRequest, { altText });
    return this.request("PUT", `/api/v1/media/images/${imageId}/alt-text`, validatedData, config);
  }

  /**
   * Get storage statistics
   */
  async getStorageStats(config?: RequestConfig): Promise<Response<StorageStats>> {
    return this.request("GET", "/api/v1/media/storage/stats", undefined, config);
  }

  // ==================== ASSET IMAGE METHODS ====================

  /**
   * Upload an image for an asset
   */
  async uploadAssetImage(
    assetId: string,
    file: File | Blob,
    metadata?: Partial<UploadItemImageRequest>,
    config?: RequestConfig
  ): Promise<Response<UploadItemImageResult>> {
    // Validate metadata if provided
    let validatedMetadata;
    if (metadata) {
      validatedMetadata = validateRequest(uploadItemImageRequest, metadata);
    }

    // Create FormData for file upload
    const formData = new FormData();
    formData.append("image", file);
    if (validatedMetadata?.altText) {
      formData.append("altText", validatedMetadata.altText);
    }
    if (validatedMetadata?.isPrimary !== undefined) {
      formData.append("isPrimary", String(validatedMetadata.isPrimary));
    }
    if (validatedMetadata?.displayOrder !== undefined) {
      formData.append("displayOrder", String(validatedMetadata.displayOrder));
    }

    return this.request(
      "POST",
      `/api/v1/media/assets/${assetId}/images`,
      formData,
      {
        ...config,
        headers: {
          ...config?.headers,
        },
      }
    );
  }

  /**
   * List all images for an asset
   */
  async listAssetImages(
    assetId: string,
    config?: RequestConfig
  ): Promise<Response<ItemImage[]>> {
    return this.request("GET", `/api/v1/media/assets/${assetId}/images`, undefined, config);
  }

  /**
   * Update an asset image
   */
  async updateAssetImage(
    imageId: string,
    updates: {
      displayOrder?: number;
      isPrimary?: boolean;
      altText?: string;
    },
    config?: RequestConfig
  ): Promise<Response<ItemImage>> {
    return this.request("PUT", `/api/v1/media/asset-images/${imageId}`, updates, config);
  }

  /**
   * Delete an asset image
   */
  async deleteAssetImage(
    imageId: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.request("DELETE", `/api/v1/media/asset-images/${imageId}`, undefined, config);
  }
}
