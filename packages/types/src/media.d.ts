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
export interface UploadItemImageOptions {
    file: File | Blob | ArrayBuffer;
    filename: string;
    mimeType: string;
    altText?: string;
    isPrimary?: boolean;
    displayOrder?: number;
}
export interface UploadItemImageResult {
    itemImage: ItemImage;
    media: Media;
    variants: {
        thumbnail: string;
        medium: string;
        large: string;
    };
}
export interface StorageStats {
    totalFiles: number;
    totalSize: number;
    averageSize: number;
    byMimeType: Record<string, {
        count: number;
        size: number;
    }>;
}
export declare const uploadItemImageRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    altText: string | undefined;
    isPrimary: boolean | undefined;
    displayOrder: number | undefined;
}, {}>;
export declare const updateAltTextRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    altText: string;
}, {}>;
export declare const reorderImagesRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    imageIds: string[];
}, {}>;
export type UploadItemImageRequest = typeof uploadItemImageRequest.infer;
export type UpdateAltTextRequest = typeof updateAltTextRequest.infer;
export type ReorderImagesRequest = typeof reorderImagesRequest.infer;
//# sourceMappingURL=media.d.ts.map