/**
 * Cloudflare R2 Storage Provider
 * R2 is S3-compatible with zero egress fees
 */

import {
  S3Client,
  PutObjectCommand,
  DeleteObjectCommand,
  HeadObjectCommand,
  ListObjectsV2Command,
  GetObjectCommand,
} from "@aws-sdk/client-s3";
import { getSignedUrl } from "@aws-sdk/s3-request-presigner";
import type {
  StorageProvider,
  UploadOptions,
  UploadResult,
  DeleteOptions,
  GetSignedUrlOptions,
  ListOptions,
  ListResult,
} from "./StorageProvider.js";

export interface R2Config {
  accountId: string;
  accessKeyId: string;
  secretAccessKey: string;
  bucket: string;
  publicUrl?: string; // Custom domain or R2.dev URL
}

export class R2Provider implements StorageProvider {
  readonly name = "r2";
  private client: S3Client;
  private bucket: string;
  private publicUrl?: string;

  constructor(config: R2Config) {
    this.bucket = config.bucket;
    this.publicUrl = config.publicUrl;

    // R2 endpoint format: https://<account_id>.r2.cloudflarestorage.com
    const endpoint = `https://${config.accountId}.r2.cloudflarestorage.com`;

    this.client = new S3Client({
      region: "auto",
      endpoint,
      credentials: {
        accessKeyId: config.accessKeyId,
        secretAccessKey: config.secretAccessKey,
      },
    });
  }

  async upload(options: UploadOptions): Promise<UploadResult> {
    const command = new PutObjectCommand({
      Bucket: this.bucket,
      Key: options.key,
      Body: options.file,
      ContentType: options.contentType,
      Metadata: options.metadata,
      CacheControl: options.cacheControl || "public, max-age=31536000, immutable",
    });

    const response = await this.client.send(command);

    return {
      url: this.getPublicUrl(options.key),
      key: options.key,
      bucket: this.bucket,
      size: options.file.length,
      etag: response.ETag,
    };
  }

  async delete(options: DeleteOptions): Promise<void> {
    const command = new DeleteObjectCommand({
      Bucket: this.bucket,
      Key: options.key,
    });

    await this.client.send(command);
  }

  async getSignedUrl(options: GetSignedUrlOptions): Promise<string> {
    const command =
      options.operation === "putObject"
        ? new PutObjectCommand({
            Bucket: this.bucket,
            Key: options.key,
          })
        : new GetObjectCommand({
            Bucket: this.bucket,
            Key: options.key,
          });

    return getSignedUrl(this.client, command, {
      expiresIn: options.expiresIn || 3600,
    });
  }

  async exists(key: string): Promise<boolean> {
    try {
      const command = new HeadObjectCommand({
        Bucket: this.bucket,
        Key: key,
      });
      await this.client.send(command);
      return true;
    } catch (error: any) {
      if (error.name === "NotFound" || error.$metadata?.httpStatusCode === 404) {
        return false;
      }
      throw error;
    }
  }

  async list(options: ListOptions): Promise<ListResult> {
    const command = new ListObjectsV2Command({
      Bucket: this.bucket,
      Prefix: options.prefix,
      MaxKeys: options.maxKeys || 1000,
      StartAfter: options.startAfter,
    });

    const response = await this.client.send(command);

    return {
      keys: response.Contents?.map((item) => item.Key!).filter(Boolean) || [],
      isTruncated: response.IsTruncated || false,
      nextStartAfter: response.NextContinuationToken,
    };
  }

  getPublicUrl(key: string): string {
    if (this.publicUrl) {
      return `${this.publicUrl}/${key}`;
    }
    // Default R2.dev URL (if public access is enabled)
    return `https://${this.bucket}.r2.dev/${key}`;
  }
}
