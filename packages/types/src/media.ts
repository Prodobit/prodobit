import { type } from "arktype";

// Media entity
export interface Media {
  id: string;
  tenantId: string;
  storageProvider: string;
  bucket: string;
  key: string;
  filename: string;
  originalFilename?: string;
  mimeType: string;
  size: number;
  width?: number;
  height?: number;
  url: string;
  entityType?: string;
  entityId?: string;
  metadata?: string;
  altText?: string;
  insertedAt: Date;
  updatedAt: Date;
  deletedAt?: Date | null;
}

// Item image entity
export interface ItemImage {
  id: string;
  tenantId: string;
  itemId: string;
  mediaId: string;
  displayOrder: number;
  isPrimary: boolean;
  thumbnailUrl?: string;
  mediumUrl?: string;
  largeUrl?: string;
  altText?: string;
  insertedAt: Date;
  updatedAt: Date;
  deletedAt?: Date | null;
  media?: Media;
}

// Upload options (used internally by server)
export interface UploadItemImageOptions {
  file: File | Blob | ArrayBuffer;
  filename: string;
  mimeType: string;
  altText?: string;
  isPrimary?: boolean;
  displayOrder?: number;
}

// Upload result
export interface UploadItemImageResult {
  itemImage: ItemImage;
  media: Media;
  variants: {
    thumbnail: string;
    medium: string;
    large: string;
  };
}

// Storage statistics
export interface StorageStats {
  totalFiles: number;
  totalSize: number;
  averageSize: number;
  byMimeType: Record<string, { count: number; size: number }>;
}

// Validation schemas
export const uploadItemImageRequest = type({
  altText: "string|undefined",
  isPrimary: "boolean|undefined",
  displayOrder: "number|undefined",
});

export const updateAltTextRequest = type({
  altText: "string",
});

export const reorderImagesRequest = type({
  imageIds: "string[]",
});

export type UploadItemImageRequest = typeof uploadItemImageRequest.infer;
export type UpdateAltTextRequest = typeof updateAltTextRequest.infer;
export type ReorderImagesRequest = typeof reorderImagesRequest.infer;
