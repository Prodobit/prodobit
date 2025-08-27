import { type } from "arktype";
import { uuid, timestamp, status } from "./common";

export const tenant = type({
  id: uuid,
  name: "string >= 1",
  status,
  subscriptionPlan: "'basic' | 'pro' | 'enterprise'",
  settings: "object",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createTenantRequest = type({
  name: "string >= 1",
  "subscriptionPlan?": "'basic' | 'pro' | 'enterprise'",
  "settings?": "object",
});

export const updateTenantRequest = type({
  "name?": "string >= 1",
  "status?": status,
  "subscriptionPlan?": "'basic' | 'pro' | 'enterprise'",
  "settings?": "object",
});

export const tenantQuery = type({
  "name?": "string",
  "status?": status,
  "subscriptionPlan?": "'basic' | 'pro' | 'enterprise'",
});

export type Tenant = typeof tenant.infer;
export type CreateTenantRequest = typeof createTenantRequest.infer;
export type UpdateTenantRequest = typeof updateTenantRequest.infer;
export type TenantQuery = typeof tenantQuery.infer;