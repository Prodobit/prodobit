import {
  boolean,
  index,
  integer,
  jsonb,
  pgTable,
  text,
  timestamp,
  uniqueIndex,
  uuid,
} from "drizzle-orm/pg-core";
import { relations } from "drizzle-orm";
import { tenants } from "./tenants.js";

/**
 * Integration API Keys
 * Stores API keys for external integrations and partner applications
 */
export const integrationKeys = pgTable(
  "integration_keys",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    name: text("name").notNull(), // Human-readable name: "Mobile App", "Partner X"
    key: text("key").notNull(), // Hashed API key
    keyPrefix: text("key_prefix").notNull(), // First 10 chars for lookup: "pd_live_ab"
    environment: text("environment").notNull().default("test"), // "test" | "live"
    status: text("status").notNull().default("active"), // "active" | "revoked" | "expired"
    scopes: jsonb("scopes").notNull().$type<string[]>().default([]), // ["asset-issue:read", "inventory:write"]
    metadata: jsonb("metadata").$type<Record<string, unknown>>(), // Custom data
    lastUsedAt: timestamp("last_used_at", { withTimezone: true, precision: 6 }),
    expiresAt: timestamp("expires_at", { withTimezone: true, precision: 6 }), // Optional expiration
    createdBy: uuid("created_by"), // User who created the key
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    tenantIdx: index("integration_keys_tenant_idx").on(table.tenantId),
    prefixIdx: uniqueIndex("integration_keys_prefix_idx").on(table.keyPrefix),
    statusIdx: index("integration_keys_status_idx").on(table.status),
    tenantStatusIdx: index("integration_keys_tenant_status_idx").on(
      table.tenantId,
      table.status
    ),
  })
);

/**
 * Integration Scopes
 * Defines available scopes that can be granted to API keys
 */
export const integrationScopes = pgTable(
  "integration_scopes",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    module: text("module").notNull(), // "asset-issue", "inventory", "sales"
    resource: text("resource").notNull(), // "asset-issues", "items", "orders"
    action: text("action").notNull(), // "read", "write", "delete"
    scope: text("scope").notNull().unique(), // "asset-issue:read", "inventory:write"
    endpoint: text("endpoint"), // "/api/v1/public/asset-issues" (optional)
    description: text("description").notNull(),
    isPublic: boolean("is_public").notNull().default(true), // Can be exposed via integration?
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    moduleIdx: index("integration_scopes_module_idx").on(table.module),
    scopeIdx: uniqueIndex("integration_scopes_scope_idx").on(table.scope),
    publicIdx: index("integration_scopes_public_idx").on(table.isPublic),
  })
);

/**
 * Integration API Usage Logs
 * Audit trail for all API key usage
 */
export const integrationLogs = pgTable(
  "integration_logs",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    keyId: uuid("key_id")
      .notNull()
      .references(() => integrationKeys.id, { onDelete: "cascade" }),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    method: text("method").notNull(), // "GET", "POST", "PUT", "DELETE"
    path: text("path").notNull(), // "/api/v1/public/asset-issues"
    statusCode: integer("status_code").notNull(), // 200, 401, 403, 500, etc.
    responseTime: integer("response_time"), // milliseconds
    ipAddress: text("ip_address"),
    userAgent: text("user_agent"),
    errorMessage: text("error_message"), // If request failed
    metadata: jsonb("metadata").$type<Record<string, unknown>>(), // Additional context
    requestedAt: timestamp("requested_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    keyIdx: index("integration_logs_key_idx").on(table.keyId),
    tenantIdx: index("integration_logs_tenant_idx").on(table.tenantId),
    requestedAtIdx: index("integration_logs_requested_at_idx").on(
      table.requestedAt
    ),
    keyRequestedAtIdx: index("integration_logs_key_requested_at_idx").on(
      table.keyId,
      table.requestedAt
    ),
  })
);

/**
 * Integration Rate Limits
 * Track and enforce rate limits per API key
 */
export const integrationRateLimits = pgTable(
  "integration_rate_limits",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    keyId: uuid("key_id")
      .notNull()
      .references(() => integrationKeys.id, { onDelete: "cascade" }),
    limitType: text("limit_type").notNull(), // "per_minute" | "per_hour" | "per_day" | "per_month"
    maxRequests: integer("max_requests").notNull(), // Maximum allowed requests
    currentCount: integer("current_count").notNull().default(0), // Current count
    resetAt: timestamp("reset_at", { withTimezone: true, precision: 6 }).notNull(), // When counter resets
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    keyLimitTypeIdx: uniqueIndex("integration_rate_limits_key_limit_type_idx").on(
      table.keyId,
      table.limitType
    ),
    resetAtIdx: index("integration_rate_limits_reset_at_idx").on(table.resetAt),
  })
);

/**
 * Relations
 */
export const integrationKeysRelations = relations(integrationKeys, ({ one, many }) => ({
  tenant: one(tenants, {
    fields: [integrationKeys.tenantId],
    references: [tenants.id],
  }),
  logs: many(integrationLogs),
  rateLimits: many(integrationRateLimits),
}));

export const integrationLogsRelations = relations(integrationLogs, ({ one }) => ({
  key: one(integrationKeys, {
    fields: [integrationLogs.keyId],
    references: [integrationKeys.id],
  }),
  tenant: one(tenants, {
    fields: [integrationLogs.tenantId],
    references: [tenants.id],
  }),
}));

export const integrationRateLimitsRelations = relations(
  integrationRateLimits,
  ({ one }) => ({
    key: one(integrationKeys, {
      fields: [integrationRateLimits.keyId],
      references: [integrationKeys.id],
    }),
  })
);
