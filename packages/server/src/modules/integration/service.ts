import { and, desc, eq, gte, lte, sql } from "drizzle-orm";
import type { createDatabase } from "@prodobit/database";
import {
  integrationKeys,
  integrationLogs,
  integrationRateLimits,
  integrationScopes,
} from "@prodobit/database";
import type {
  CreateIntegrationKeyRequest,
  UpdateIntegrationKeyRequest,
  IntegrationKeyQuery,
  UsageStatsQuery,
  SetRateLimitRequest,
} from "@prodobit/types";
import { nanoid } from "nanoid";
import { scrypt, randomBytes, timingSafeEqual } from "crypto";
import { promisify } from "util";

const scryptAsync = promisify(scrypt);

/**
 * Hash an API key using scrypt
 */
async function hashApiKey(apiKey: string): Promise<string> {
  const salt = randomBytes(16).toString("hex");
  const derivedKey = (await scryptAsync(apiKey, salt, 64)) as Buffer;
  return `${salt}:${derivedKey.toString("hex")}`;
}

/**
 * Verify an API key against its hash
 */
async function verifyApiKey(
  apiKey: string,
  storedHash: string
): Promise<boolean> {
  const [salt, key] = storedHash.split(":");
  if (!salt || !key) return false;

  const keyBuffer = Buffer.from(key, "hex");
  const derivedKey = (await scryptAsync(apiKey, salt, 64)) as Buffer;

  return timingSafeEqual(keyBuffer, derivedKey);
}

/**
 * Integration Service
 * Manages API keys, scopes, rate limits, and usage logging
 */
export class IntegrationService {
  constructor(private db: ReturnType<typeof createDatabase>) {}

  /**
   * Generate a new API key
   */
  private generateApiKey(environment: "test" | "live"): string {
    const prefix = environment === "live" ? "pd_live_" : "pd_test_";
    const randomPart = nanoid(32);
    return `${prefix}${randomPart}`;
  }

  /**
   * Create a new API key for a tenant
   */
  async createApiKey(
    tenantId: string,
    data: CreateIntegrationKeyRequest,
    createdBy?: string
  ) {
    // Validate scopes exist and are public
    const validScopes = await this.validateScopes(data.scopes);
    if (!validScopes) {
      throw new Error("Invalid scopes provided");
    }

    // Generate API key
    const rawKey = this.generateApiKey(data.environment);
    const keyHash = await hashApiKey(rawKey);
    const keyPrefix = rawKey.substring(0, 10);

    // Insert key
    const [key] = await this.db
      .insert(integrationKeys)
      .values({
        tenantId,
        name: data.name,
        key: keyHash,
        keyPrefix,
        environment: data.environment,
        scopes: data.scopes,
        metadata: data.metadata as Record<string, unknown> | undefined,
        expiresAt: data.expiresAt ? new Date(data.expiresAt) : undefined,
        createdBy,
        status: "active",
      })
      .returning();

    // Create default rate limits
    await this.createDefaultRateLimits(key.id);

    // Return key with raw API key (ONLY TIME IT'S VISIBLE)
    return {
      id: key.id,
      tenantId: key.tenantId,
      name: key.name,
      apiKey: rawKey, // Raw key - save this!
      keyPrefix: key.keyPrefix,
      environment: key.environment,
      status: key.status,
      scopes: key.scopes as string[],
      metadata: key.metadata as Record<string, unknown> | undefined,
      expiresAt: key.expiresAt,
      insertedAt: key.insertedAt,
      updatedAt: key.updatedAt,
    };
  }

  /**
   * Create default rate limits for a new key
   */
  private async createDefaultRateLimits(keyId: string) {
    const now = new Date();
    const limits = [
      {
        keyId,
        limitType: "per_minute" as const,
        maxRequests: 60,
        currentCount: 0,
        resetAt: new Date(now.getTime() + 60 * 1000),
      },
      {
        keyId,
        limitType: "per_hour" as const,
        maxRequests: 1000,
        currentCount: 0,
        resetAt: new Date(now.getTime() + 60 * 60 * 1000),
      },
      {
        keyId,
        limitType: "per_day" as const,
        maxRequests: 10000,
        currentCount: 0,
        resetAt: new Date(now.getTime() + 24 * 60 * 60 * 1000),
      },
    ];

    await this.db.insert(integrationRateLimits).values(limits);
  }

  /**
   * Validate that scopes exist and are public
   */
  private async validateScopes(scopes: string[]): Promise<boolean> {
    const validScopes = await this.db
      .select({ scope: integrationScopes.scope })
      .from(integrationScopes)
      .where(
        and(
          sql`${integrationScopes.scope} = ANY(${scopes})`,
          eq(integrationScopes.isPublic, true)
        )
      );

    return validScopes.length === scopes.length;
  }

  /**
   * List API keys for a tenant
   */
  async listApiKeys(tenantId: string, query?: IntegrationKeyQuery) {
    const conditions = [eq(integrationKeys.tenantId, tenantId)];

    if (query?.environment) {
      conditions.push(eq(integrationKeys.environment, query.environment));
    }

    if (query?.status) {
      conditions.push(eq(integrationKeys.status, query.status));
    }

    if (query?.search) {
      conditions.push(
        sql`${integrationKeys.name} ILIKE ${"%" + query.search + "%"}`
      );
    }

    const keys = await this.db.query.integrationKeys.findMany({
      where: and(...conditions),
      columns: {
        key: false, // Never return hashed key
      },
      orderBy: desc(integrationKeys.insertedAt),
    });

    return keys;
  }

  /**
   * Get a single API key by ID
   */
  async getApiKeyById(keyId: string, tenantId: string) {
    const key = await this.db.query.integrationKeys.findFirst({
      where: and(
        eq(integrationKeys.id, keyId),
        eq(integrationKeys.tenantId, tenantId)
      ),
      columns: {
        key: false, // Never return hashed key
      },
    });

    return key;
  }

  /**
   * Update an API key
   */
  async updateApiKey(
    keyId: string,
    tenantId: string,
    data: UpdateIntegrationKeyRequest
  ) {
    // If updating scopes, validate them
    if (data.scopes) {
      const validScopes = await this.validateScopes(data.scopes);
      if (!validScopes) {
        throw new Error("Invalid scopes provided");
      }
    }

    const updateData: any = {
      ...data,
      updatedAt: new Date(),
    };

    if (data.metadata) {
      updateData.metadata = data.metadata as Record<string, unknown>;
    }

    const [updated] = await this.db
      .update(integrationKeys)
      .set(updateData)
      .where(
        and(
          eq(integrationKeys.id, keyId),
          eq(integrationKeys.tenantId, tenantId)
        )
      )
      .returning();

    return updated;
  }

  /**
   * Revoke an API key
   */
  async revokeApiKey(keyId: string, tenantId: string) {
    const [revoked] = await this.db
      .update(integrationKeys)
      .set({
        status: "revoked",
        updatedAt: new Date(),
      })
      .where(
        and(
          eq(integrationKeys.id, keyId),
          eq(integrationKeys.tenantId, tenantId)
        )
      )
      .returning();

    return revoked;
  }

  /**
   * Delete an API key
   */
  async deleteApiKey(keyId: string, tenantId: string) {
    await this.db
      .delete(integrationKeys)
      .where(
        and(
          eq(integrationKeys.id, keyId),
          eq(integrationKeys.tenantId, tenantId)
        )
      );
  }

  /**
   * Verify an API key and return key data
   */
  async verifyApiKey(rawKey: string) {
    const keyPrefix = rawKey.substring(0, 10);

    const key = await this.db.query.integrationKeys.findFirst({
      where: and(
        eq(integrationKeys.keyPrefix, keyPrefix),
        eq(integrationKeys.status, "active")
      ),
    });

    if (!key) {
      return null;
    }

    // Verify the full key
    const isValid = await verifyApiKey(rawKey, key.key);
    if (!isValid) {
      return null;
    }

    // Check expiration
    if (key.expiresAt && new Date() > key.expiresAt) {
      // Auto-expire the key
      await this.db
        .update(integrationKeys)
        .set({ status: "expired" })
        .where(eq(integrationKeys.id, key.id));
      return null;
    }

    // Update last used timestamp
    await this.db
      .update(integrationKeys)
      .set({ lastUsedAt: new Date() })
      .where(eq(integrationKeys.id, key.id));

    return {
      id: key.id,
      tenantId: key.tenantId,
      scopes: key.scopes as string[],
      environment: key.environment,
    };
  }

  /**
   * Get available scopes (public scopes that can be granted)
   */
  async getAvailableScopes() {
    return await this.db.query.integrationScopes.findMany({
      where: eq(integrationScopes.isPublic, true),
      orderBy: [integrationScopes.module, integrationScopes.action],
    });
  }

  /**
   * Create or update scopes (admin function)
   */
  async upsertScope(data: {
    module: string;
    resource: string;
    action: string;
    scope: string;
    endpoint?: string;
    description: string;
    isPublic?: boolean;
  }) {
    const [scope] = await this.db
      .insert(integrationScopes)
      .values({
        ...data,
        isPublic: data.isPublic ?? true,
      })
      .onConflictDoUpdate({
        target: integrationScopes.scope,
        set: {
          description: data.description,
          endpoint: data.endpoint,
          isPublic: data.isPublic ?? true,
          updatedAt: new Date(),
        },
      })
      .returning();

    return scope;
  }

  /**
   * Log API usage
   */
  async logUsage(data: {
    keyId: string;
    tenantId: string;
    method: string;
    path: string;
    statusCode: number;
    responseTime?: number;
    ipAddress?: string;
    userAgent?: string;
    errorMessage?: string;
    metadata?: Record<string, unknown>;
  }) {
    await this.db.insert(integrationLogs).values({
      ...data,
      requestedAt: new Date(),
    });
  }

  /**
   * Get usage statistics for a key
   */
  async getUsageStats(query: UsageStatsQuery) {
    const { keyId, range = "day", startDate, endDate } = query;

    // Calculate time range
    let start: Date;
    let end = endDate ? new Date(endDate) : new Date();

    if (startDate) {
      start = new Date(startDate);
    } else {
      const now = new Date();
      switch (range) {
        case "hour":
          start = new Date(now.getTime() - 60 * 60 * 1000);
          break;
        case "day":
          start = new Date(now.getTime() - 24 * 60 * 60 * 1000);
          break;
        case "week":
          start = new Date(now.getTime() - 7 * 24 * 60 * 60 * 1000);
          break;
        case "month":
          start = new Date(now.getTime() - 30 * 24 * 60 * 60 * 1000);
          break;
        default:
          start = new Date(now.getTime() - 24 * 60 * 60 * 1000);
      }
    }

    // Get logs in range
    const logs = await this.db
      .select()
      .from(integrationLogs)
      .where(
        and(
          eq(integrationLogs.keyId, keyId),
          gte(integrationLogs.requestedAt, start),
          lte(integrationLogs.requestedAt, end)
        )
      );

    // Calculate statistics
    const totalRequests = logs.length;
    const successfulRequests = logs.filter(
      (log) => log.statusCode >= 200 && log.statusCode < 300
    ).length;
    const failedRequests = totalRequests - successfulRequests;

    const totalResponseTime = logs.reduce(
      (sum, log) => sum + (log.responseTime || 0),
      0
    );
    const averageResponseTime =
      totalRequests > 0 ? totalResponseTime / totalRequests : 0;

    // Group by status code
    const requestsByStatus: Record<number, number> = {};
    logs.forEach((log) => {
      requestsByStatus[log.statusCode] =
        (requestsByStatus[log.statusCode] || 0) + 1;
    });

    // Group by endpoint
    const requestsByEndpoint: Record<string, number> = {};
    logs.forEach((log) => {
      requestsByEndpoint[log.path] = (requestsByEndpoint[log.path] || 0) + 1;
    });

    return {
      keyId,
      totalRequests,
      successfulRequests,
      failedRequests,
      averageResponseTime: Math.round(averageResponseTime),
      requestsByStatus,
      requestsByEndpoint,
      timeRange: {
        start,
        end,
        range,
      },
    };
  }

  /**
   * Check and enforce rate limits
   */
  async checkRateLimit(keyId: string): Promise<{
    allowed: boolean;
    limit?: {
      type: string;
      max: number;
      current: number;
      resetAt: Date;
    };
  }> {
    const now = new Date();

    // Get all rate limits for this key
    const limits = await this.db
      .select()
      .from(integrationRateLimits)
      .where(eq(integrationRateLimits.keyId, keyId));

    for (const limit of limits) {
      // Reset if past reset time
      if (now > limit.resetAt) {
        const resetAt = this.calculateNextReset(limit.limitType, now);
        await this.db
          .update(integrationRateLimits)
          .set({
            currentCount: 0,
            resetAt,
            updatedAt: now,
          })
          .where(eq(integrationRateLimits.id, limit.id));

        limit.currentCount = 0;
        limit.resetAt = resetAt;
      }

      // Check if limit exceeded
      if (limit.currentCount >= limit.maxRequests) {
        return {
          allowed: false,
          limit: {
            type: limit.limitType,
            max: limit.maxRequests,
            current: limit.currentCount,
            resetAt: limit.resetAt,
          },
        };
      }
    }

    // Increment all counters
    for (const limit of limits) {
      await this.db
        .update(integrationRateLimits)
        .set({
          currentCount: limit.currentCount + 1,
          updatedAt: now,
        })
        .where(eq(integrationRateLimits.id, limit.id));
    }

    return { allowed: true };
  }

  /**
   * Calculate next reset time based on limit type
   */
  private calculateNextReset(
    limitType: string,
    from: Date = new Date()
  ): Date {
    const reset = new Date(from);

    switch (limitType) {
      case "per_minute":
        reset.setMinutes(reset.getMinutes() + 1);
        reset.setSeconds(0);
        reset.setMilliseconds(0);
        break;
      case "per_hour":
        reset.setHours(reset.getHours() + 1);
        reset.setMinutes(0);
        reset.setSeconds(0);
        reset.setMilliseconds(0);
        break;
      case "per_day":
        reset.setDate(reset.getDate() + 1);
        reset.setHours(0);
        reset.setMinutes(0);
        reset.setSeconds(0);
        reset.setMilliseconds(0);
        break;
      case "per_month":
        reset.setMonth(reset.getMonth() + 1);
        reset.setDate(1);
        reset.setHours(0);
        reset.setMinutes(0);
        reset.setSeconds(0);
        reset.setMilliseconds(0);
        break;
    }

    return reset;
  }

  /**
   * Set or update rate limit for a key
   */
  async setRateLimit(keyId: string, data: SetRateLimitRequest) {
    const now = new Date();
    const resetAt = this.calculateNextReset(data.limitType, now);

    const [limit] = await this.db
      .insert(integrationRateLimits)
      .values({
        keyId,
        limitType: data.limitType,
        maxRequests: data.maxRequests,
        currentCount: 0,
        resetAt,
      })
      .onConflictDoUpdate({
        target: [
          integrationRateLimits.keyId,
          integrationRateLimits.limitType,
        ],
        set: {
          maxRequests: data.maxRequests,
          updatedAt: now,
        },
      })
      .returning();

    return limit;
  }

  /**
   * Get rate limits for a key
   */
  async getRateLimits(keyId: string) {
    return await this.db
      .select()
      .from(integrationRateLimits)
      .where(eq(integrationRateLimits.keyId, keyId));
  }
}
