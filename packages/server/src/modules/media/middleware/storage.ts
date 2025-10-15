/**
 * Storage Middleware
 * Injects storage provider into request context
 */

import type { Context, Next } from "hono";
import { StorageFactory } from "../storage/StorageFactory.js";
import type { StorageProvider } from "../storage/StorageProvider.js";

let storageInstance: StorageProvider | null = null;

/**
 * Get or create storage provider instance (singleton)
 */
export function getStorageProvider(): StorageProvider | null {
  if (storageInstance) {
    return storageInstance;
  }

  try {
    storageInstance = StorageFactory.createFromEnv();
    return storageInstance;
  } catch (error) {
    console.warn("Storage provider not configured:", error);
    return null;
  }
}

/**
 * Storage middleware - injects storage provider into context
 */
export async function storageMiddleware(c: Context, next: Next) {
  const storage = getStorageProvider();
  if (storage) {
    c.set("storage", storage);
  }
  await next();
}
