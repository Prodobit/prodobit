/**
 * Storage Provider Interface
 * Abstracts cloud storage operations for different providers (S3, R2, DO Spaces)
 */

export interface UploadOptions {
  file: Buffer;
  key: string;
  contentType: string;
  metadata?: Record<string, string>;
  cacheControl?: string;
}

export interface UploadResult {
  url: string;
  key: string;
  bucket: string;
  size: number;
  etag?: string;
}

export interface DeleteOptions {
  key: string;
}

export interface GetSignedUrlOptions {
  key: string;
  expiresIn?: number; // seconds
  operation?: 'getObject' | 'putObject';
}

export interface ListOptions {
  prefix?: string;
  maxKeys?: number;
  startAfter?: string;
}

export interface ListResult {
  keys: string[];
  isTruncated: boolean;
  nextStartAfter?: string;
}

export interface StorageProvider {
  /**
   * Storage provider name
   */
  readonly name: string;

  /**
   * Upload a file to storage
   */
  upload(options: UploadOptions): Promise<UploadResult>;

  /**
   * Delete a file from storage
   */
  delete(options: DeleteOptions): Promise<void>;

  /**
   * Get a signed URL for accessing a file
   */
  getSignedUrl(options: GetSignedUrlOptions): Promise<string>;

  /**
   * Check if a file exists
   */
  exists(key: string): Promise<boolean>;

  /**
   * List files with prefix
   */
  list(options: ListOptions): Promise<ListResult>;

  /**
   * Get public URL for a file (if bucket is public)
   */
  getPublicUrl(key: string): string;
}
