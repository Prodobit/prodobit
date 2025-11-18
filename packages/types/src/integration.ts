import { type } from "arktype";
import { status, timestamp, uuid } from "./common.js";

/**
 * Integration API Key
 */
export const integrationKey = type({
  id: uuid,
  tenantId: uuid,
  name: "string >= 1",
  key: "string", // Hashed API key
  keyPrefix: "string >= 10", // First 10 chars: "pd_live_ab"
  environment: "'test' | 'live'",
  status: "'active' | 'revoked' | 'expired'",
  scopes: "string[]",
  "metadata?": "object",
  "lastUsedAt?": timestamp,
  "expiresAt?": timestamp,
  "createdBy?": uuid,
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

/**
 * Integration API Key (without sensitive data for responses)
 */
export const integrationKeyPublic = type({
  id: uuid,
  tenantId: uuid,
  name: "string >= 1",
  keyPrefix: "string >= 10",
  environment: "'test' | 'live'",
  status: "'active' | 'revoked' | 'expired'",
  scopes: "string[]",
  "metadata?": "object",
  "lastUsedAt?": timestamp,
  "expiresAt?": timestamp,
  "createdBy?": uuid,
  insertedAt: timestamp,
  updatedAt: timestamp,
});

/**
 * Integration API Key with raw key (only returned on creation)
 */
export const integrationKeyWithRawKey = type({
  id: uuid,
  tenantId: uuid,
  name: "string >= 1",
  apiKey: "string >= 20", // Raw, unhashed key - ONLY shown once
  keyPrefix: "string >= 10",
  environment: "'test' | 'live'",
  status: "'active' | 'revoked' | 'expired'",
  scopes: "string[]",
  "metadata?": "object",
  "expiresAt?": timestamp,
  insertedAt: timestamp,
  updatedAt: timestamp,
});

/**
 * Integration Scope Definition
 */
export const integrationScope = type({
  id: uuid,
  module: "string >= 1",
  resource: "string >= 1",
  action: "string >= 1",
  scope: "string >= 1", // "module:action" format, e.g., "asset-issue:read"
  "endpoint?": "string",
  description: "string >= 1",
  isPublic: "boolean",
  insertedAt: timestamp,
  updatedAt: timestamp,
});

/**
 * Integration Usage Log
 */
export const integrationLog = type({
  id: uuid,
  keyId: uuid,
  tenantId: uuid,
  method: "'GET' | 'POST' | 'PUT' | 'PATCH' | 'DELETE'",
  path: "string >= 1",
  statusCode: "number",
  "responseTime?": "number",
  "ipAddress?": "string",
  "userAgent?": "string",
  "errorMessage?": "string",
  "metadata?": "object",
  requestedAt: timestamp,
});

/**
 * Integration Rate Limit
 */
export const integrationRateLimit = type({
  id: uuid,
  keyId: uuid,
  limitType: "'per_minute' | 'per_hour' | 'per_day' | 'per_month'",
  maxRequests: "number >= 1",
  currentCount: "number >= 0",
  resetAt: timestamp,
  insertedAt: timestamp,
  updatedAt: timestamp,
});

/**
 * Create Integration Key Request
 */
export const createIntegrationKeyRequest = type({
  name: "string >= 1",
  environment: "'test' | 'live'",
  scopes: "string[] >= 1", // At least one scope required
  "metadata?": "object",
  "expiresAt?": timestamp,
});

/**
 * Update Integration Key Request
 */
export const updateIntegrationKeyRequest = type({
  "name?": "string >= 1",
  "scopes?": "string[]",
  "metadata?": "object",
  "status?": "'active' | 'revoked' | 'expired'",
});

/**
 * Integration Key Query/Filter
 */
export const integrationKeyQuery = type({
  "environment?": "'test' | 'live'",
  "status?": "'active' | 'revoked' | 'expired'",
  "search?": "string",
});

/**
 * Usage Statistics Query
 */
export const usageStatsQuery = type({
  keyId: uuid,
  "range?": "'hour' | 'day' | 'week' | 'month'",
  "startDate?": timestamp,
  "endDate?": timestamp,
});

/**
 * Usage Statistics Response
 */
export const usageStatsResponse = type({
  keyId: uuid,
  totalRequests: "number >= 0",
  successfulRequests: "number >= 0",
  failedRequests: "number >= 0",
  averageResponseTime: "number >= 0",
  requestsByStatus: "object",
  requestsByEndpoint: "object",
  "timeRange?": "object",
});

/**
 * Rate Limit Configuration Request
 */
export const setRateLimitRequest = type({
  limitType: "'per_minute' | 'per_hour' | 'per_day' | 'per_month'",
  maxRequests: "number >= 1",
});

// Export inferred TypeScript types
export type IntegrationKey = typeof integrationKey.infer;
export type IntegrationKeyPublic = typeof integrationKeyPublic.infer;
export type IntegrationKeyWithRawKey = typeof integrationKeyWithRawKey.infer;
export type IntegrationScope = typeof integrationScope.infer;
export type IntegrationLog = typeof integrationLog.infer;
export type IntegrationRateLimit = typeof integrationRateLimit.infer;
export type CreateIntegrationKeyRequest =
  typeof createIntegrationKeyRequest.infer;
export type UpdateIntegrationKeyRequest =
  typeof updateIntegrationKeyRequest.infer;
export type IntegrationKeyQuery = typeof integrationKeyQuery.infer;
export type UsageStatsQuery = typeof usageStatsQuery.infer;
export type UsageStatsResponse = typeof usageStatsResponse.infer;
export type SetRateLimitRequest = typeof setRateLimitRequest.infer;
