/**
 * Media Service
 * Handles media upload, storage, and management
 */

import { eq, and, isNull, desc, asc, count, sum } from "drizzle-orm";
import type { Database } from "@prodobit/database";
import { media, itemImages } from "@prodobit/database";
import type { StorageProvider } from "./storage/StorageProvider.js";
import { ImageProcessor } from "./image/ImageProcessor.js";
import { nanoid } from "nanoid";

export interface UploadItemImageOptions {
  itemId: string;
  file: Buffer;
  filename: string;
  mimeType: string;
  altText?: string;
  isPrimary?: boolean;
  displayOrder?: number;
}

export interface UploadItemImageResult {
  mediaId: string;
  itemImageId: string;
  url: string;
  thumbnailUrl?: string;
  mediumUrl?: string;
  largeUrl?: string;
  width: number;
  height: number;
  size: number;
}

export class MediaService {
  private imageProcessor: ImageProcessor;

  constructor(
    private db: Database,
    private storage: StorageProvider,
    private tenantId: string
  ) {
    this.imageProcessor = new ImageProcessor();
  }

  /**
   * Upload an image for an item
   */
  async uploadItemImage(
    options: UploadItemImageOptions
  ): Promise<UploadItemImageResult> {
    // Validate image
    const validation = await this.imageProcessor.validate(options.file);
    if (!validation.valid) {
      throw new Error(validation.error || "Invalid image");
    }

    // Get metadata
    const metadata = await this.imageProcessor.getMetadata(options.file);

    // Generate unique ID and base key
    const mediaId = nanoid();
    const ext = this.getExtensionFromMimeType(options.mimeType);
    const baseKey = `items/${this.tenantId}/${options.itemId}/${mediaId}`;

    // Process image variants
    const variants = await this.imageProcessor.processVariants(options.file);

    // Upload original
    const originalKey = `${baseKey}/original.${ext}`;
    const originalResult = await this.storage.upload({
      file: options.file,
      key: originalKey,
      contentType: options.mimeType,
      metadata: {
        tenantId: this.tenantId,
        itemId: options.itemId,
        originalFilename: options.filename,
      },
    });

    // Upload variants
    const variantUrls: Record<string, string> = {};
    for (const [variantName, processedImage] of variants) {
      const variantKey = `${baseKey}/${variantName}.webp`;
      const variantResult = await this.storage.upload({
        file: processedImage.buffer,
        key: variantKey,
        contentType: "image/webp",
        metadata: {
          tenantId: this.tenantId,
          itemId: options.itemId,
          variant: variantName,
        },
      });
      variantUrls[variantName] = variantResult.url;
    }

    // Save media record
    const [mediaRecord] = await this.db
      .insert(media)
      .values({
        tenantId: this.tenantId,
        storageProvider: this.storage.name,
        bucket: originalResult.bucket,
        key: baseKey,
        filename: `${mediaId}.${ext}`,
        originalFilename: options.filename,
        mimeType: options.mimeType,
        size: options.file.length,
        width: metadata.width,
        height: metadata.height,
        url: originalResult.url,
        entityType: "item",
        entityId: options.itemId,
        altText: options.altText,
      })
      .returning();

    // If this is primary, unset other primaries
    if (options.isPrimary) {
      await this.db
        .update(itemImages)
        .set({ isPrimary: false })
        .where(
          and(
            eq(itemImages.itemId, options.itemId),
            eq(itemImages.tenantId, this.tenantId),
            isNull(itemImages.deletedAt)
          )
        );
    }

    // Save item image record
    const [itemImage] = await this.db
      .insert(itemImages)
      .values({
        tenantId: this.tenantId,
        itemId: options.itemId,
        mediaId: mediaRecord.id,
        displayOrder: options.displayOrder || 0,
        isPrimary: options.isPrimary || false,
        thumbnailUrl: variantUrls.thumbnail,
        mediumUrl: variantUrls.medium,
        largeUrl: variantUrls.large,
      })
      .returning();

    return {
      mediaId: mediaRecord.id,
      itemImageId: itemImage.id,
      url: originalResult.url,
      thumbnailUrl: variantUrls.thumbnail,
      mediumUrl: variantUrls.medium,
      largeUrl: variantUrls.large,
      width: metadata.width,
      height: metadata.height,
      size: options.file.length,
    };
  }

  /**
   * List all images for an item
   */
  async listItemImages(itemId: string) {
    const images = await this.db
      .select({
        id: itemImages.id,
        mediaId: itemImages.mediaId,
        displayOrder: itemImages.displayOrder,
        isPrimary: itemImages.isPrimary,
        thumbnailUrl: itemImages.thumbnailUrl,
        mediumUrl: itemImages.mediumUrl,
        largeUrl: itemImages.largeUrl,
        insertedAt: itemImages.insertedAt,
        updatedAt: itemImages.updatedAt,
        // Media fields
        url: media.url,
        filename: media.filename,
        originalFilename: media.originalFilename,
        mimeType: media.mimeType,
        size: media.size,
        width: media.width,
        height: media.height,
        altText: media.altText,
      })
      .from(itemImages)
      .innerJoin(media, eq(itemImages.mediaId, media.id))
      .where(
        and(
          eq(itemImages.itemId, itemId),
          eq(itemImages.tenantId, this.tenantId),
          isNull(itemImages.deletedAt),
          isNull(media.deletedAt)
        )
      )
      .orderBy(desc(itemImages.isPrimary), asc(itemImages.displayOrder));

    return images;
  }

  /**
   * Get a single item image
   */
  async getItemImage(itemImageId: string) {
    const [image] = await this.db
      .select({
        id: itemImages.id,
        itemId: itemImages.itemId,
        mediaId: itemImages.mediaId,
        displayOrder: itemImages.displayOrder,
        isPrimary: itemImages.isPrimary,
        thumbnailUrl: itemImages.thumbnailUrl,
        mediumUrl: itemImages.mediumUrl,
        largeUrl: itemImages.largeUrl,
        insertedAt: itemImages.insertedAt,
        updatedAt: itemImages.updatedAt,
        // Media fields
        url: media.url,
        filename: media.filename,
        originalFilename: media.originalFilename,
        mimeType: media.mimeType,
        size: media.size,
        width: media.width,
        height: media.height,
        altText: media.altText,
      })
      .from(itemImages)
      .innerJoin(media, eq(itemImages.mediaId, media.id))
      .where(
        and(
          eq(itemImages.id, itemImageId),
          eq(itemImages.tenantId, this.tenantId),
          isNull(itemImages.deletedAt)
        )
      );

    return image || null;
  }

  /**
   * Delete an item image (soft delete + storage cleanup)
   */
  async deleteItemImage(itemImageId: string): Promise<void> {
    // Get image info
    const image = await this.getItemImage(itemImageId);
    if (!image) {
      throw new Error("Image not found");
    }

    // Get media record for storage keys
    const [mediaRecord] = await this.db
      .select()
      .from(media)
      .where(eq(media.id, image.mediaId));

    if (!mediaRecord) {
      throw new Error("Media record not found");
    }

    // Delete from storage (original + variants)
    const keysToDelete = [
      `${mediaRecord.key}/original.${this.getExtensionFromMimeType(mediaRecord.mimeType)}`,
      `${mediaRecord.key}/thumbnail.webp`,
      `${mediaRecord.key}/medium.webp`,
      `${mediaRecord.key}/large.webp`,
    ];

    for (const key of keysToDelete) {
      try {
        await this.storage.delete({ key });
      } catch (error) {
        console.error(`Failed to delete ${key} from storage:`, error);
        // Continue even if storage deletion fails
      }
    }

    // Soft delete item image
    await this.db
      .update(itemImages)
      .set({ deletedAt: new Date(), updatedAt: new Date() })
      .where(eq(itemImages.id, itemImageId));

    // Soft delete media record
    await this.db
      .update(media)
      .set({ deletedAt: new Date(), updatedAt: new Date() })
      .where(eq(media.id, image.mediaId));
  }

  /**
   * Set an image as primary for an item
   */
  async setPrimaryImage(itemImageId: string, itemId: string): Promise<void> {
    // Verify image belongs to item
    const image = await this.getItemImage(itemImageId);
    if (!image || image.itemId !== itemId) {
      throw new Error("Image not found or does not belong to this item");
    }

    // Unset all primaries for this item
    await this.db
      .update(itemImages)
      .set({ isPrimary: false, updatedAt: new Date() })
      .where(
        and(
          eq(itemImages.itemId, itemId),
          eq(itemImages.tenantId, this.tenantId),
          isNull(itemImages.deletedAt)
        )
      );

    // Set new primary
    await this.db
      .update(itemImages)
      .set({ isPrimary: true, updatedAt: new Date() })
      .where(eq(itemImages.id, itemImageId));
  }

  /**
   * Reorder images for an item
   */
  async reorderImages(itemId: string, imageIds: string[]): Promise<void> {
    // Update display order for each image
    for (let i = 0; i < imageIds.length; i++) {
      await this.db
        .update(itemImages)
        .set({ displayOrder: i, updatedAt: new Date() })
        .where(
          and(
            eq(itemImages.id, imageIds[i]),
            eq(itemImages.itemId, itemId),
            eq(itemImages.tenantId, this.tenantId),
            isNull(itemImages.deletedAt)
          )
        );
    }
  }

  /**
   * Update image alt text
   */
  async updateAltText(itemImageId: string, altText: string): Promise<void> {
    const image = await this.getItemImage(itemImageId);
    if (!image) {
      throw new Error("Image not found");
    }

    // Update media record
    await this.db
      .update(media)
      .set({ altText, updatedAt: new Date() })
      .where(eq(media.id, image.mediaId));
  }

  /**
   * Get storage usage stats for tenant
   */
  async getStorageStats() {
    const [stats] = await this.db
      .select({
        totalFiles: count(media.id),
        totalSize: sum(media.size),
      })
      .from(media)
      .where(
        and(eq(media.tenantId, this.tenantId), isNull(media.deletedAt))
      );

    return {
      totalFiles: Number(stats?.totalFiles || 0),
      totalSize: Number(stats?.totalSize || 0),
      totalSizeMB: Math.round(Number(stats?.totalSize || 0) / 1024 / 1024),
    };
  }

  /**
   * Helper: Get file extension from MIME type
   */
  private getExtensionFromMimeType(mimeType: string): string {
    const map: Record<string, string> = {
      "image/jpeg": "jpg",
      "image/jpg": "jpg",
      "image/png": "png",
      "image/webp": "webp",
      "image/gif": "gif",
      "image/avif": "avif",
    };
    return map[mimeType] || "jpg";
  }
}
