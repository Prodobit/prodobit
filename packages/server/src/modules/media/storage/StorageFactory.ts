/**
 * Storage Provider Factory
 * Creates storage provider instances based on configuration
 */

import type { StorageProvider } from "./StorageProvider.js";
import { R2Provider, type R2Config } from "./R2Provider.js";
import { S3Provider, type S3Config } from "./S3Provider.js";
import { DOSpacesProvider, type DOSpacesConfig } from "./DOSpacesProvider.js";

export type StorageProviderType = "r2" | "s3" | "do_spaces";

export interface StorageConfig {
  provider: StorageProviderType;
  r2?: R2Config;
  s3?: S3Config;
  doSpaces?: DOSpacesConfig;
}

export class StorageFactory {
  static create(config: StorageConfig): StorageProvider {
    switch (config.provider) {
      case "r2":
        if (!config.r2) {
          throw new Error("R2 configuration is required");
        }
        return new R2Provider(config.r2);

      case "s3":
        if (!config.s3) {
          throw new Error("S3 configuration is required");
        }
        return new S3Provider(config.s3);

      case "do_spaces":
        if (!config.doSpaces) {
          throw new Error("DigitalOcean Spaces configuration is required");
        }
        return new DOSpacesProvider(config.doSpaces);

      default:
        throw new Error(`Unsupported storage provider: ${config.provider}`);
    }
  }

  static createFromEnv(): StorageProvider {
    const provider = (process.env.STORAGE_PROVIDER || "r2") as StorageProviderType;

    const config: StorageConfig = {
      provider,
    };

    switch (provider) {
      case "r2":
        config.r2 = {
          accountId: process.env.R2_ACCOUNT_ID!,
          accessKeyId: process.env.R2_ACCESS_KEY_ID!,
          secretAccessKey: process.env.R2_SECRET_ACCESS_KEY!,
          bucket: process.env.R2_BUCKET!,
          publicUrl: process.env.R2_PUBLIC_URL,
        };
        break;

      case "s3":
        config.s3 = {
          region: process.env.S3_REGION!,
          accessKeyId: process.env.S3_ACCESS_KEY_ID!,
          secretAccessKey: process.env.S3_SECRET_ACCESS_KEY!,
          bucket: process.env.S3_BUCKET!,
          endpoint: process.env.S3_ENDPOINT,
          cdnUrl: process.env.S3_CDN_URL,
        };
        break;

      case "do_spaces":
        config.doSpaces = {
          region: process.env.DO_SPACES_REGION!,
          accessKeyId: process.env.DO_SPACES_ACCESS_KEY_ID!,
          secretAccessKey: process.env.DO_SPACES_SECRET_ACCESS_KEY!,
          bucket: process.env.DO_SPACES_BUCKET!,
          cdnUrl: process.env.DO_SPACES_CDN_URL,
        };
        break;
    }

    return StorageFactory.create(config);
  }
}
