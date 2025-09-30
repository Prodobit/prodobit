import {
  pgTable,
  uuid,
  text,
  timestamp,
  jsonb,
  boolean,
  index,
  uniqueIndex,
  inet,
} from "drizzle-orm/pg-core";
import { sql } from "drizzle-orm";
import { tenants } from "./tenants.js";

export const users = pgTable(
  "users",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    displayName: text("display_name"),
    twoFactorEnabled: boolean("two_factor_enabled").notNull().default(false),
    twoFactorSecret: text("two_factor_secret"),
    status: text("status").notNull().default("active"),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    statusIdx: index("users_status_idx").on(table.status),
  })
);

// Tenant-specific roles - must be defined before tenantMemberships
export const roles = pgTable(
  "roles",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    name: text("name").notNull(), // e.g., "system_admin", "admin", "user", "manager", "viewer"
    description: text("description"),
    isSystem: boolean("is_system").notNull().default(false), // Built-in roles
    isActive: boolean("is_active").notNull().default(true),
    color: text("color"), // UI color for role display
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    tenantNameIdx: uniqueIndex("roles_tenant_name_idx").on(
      table.tenantId,
      table.name
    ),
    tenantActiveIdx: index("roles_tenant_active_idx").on(
      table.tenantId,
      table.isActive
    ),
  })
);

export const authMethods = pgTable(
  "auth_methods",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    userId: uuid("user_id")
      .notNull()
      .references(() => users.id, { onDelete: "cascade" }),
    provider: text("provider").notNull(),
    providerId: text("provider_id").notNull(),
    verified: boolean("verified").notNull().default(false),
    metadata: jsonb("metadata"),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    providerUnique: uniqueIndex("auth_methods_provider_unique").on(
      table.provider,
      table.providerId
    ),
    userIdIdx: index("auth_methods_user_id_idx").on(table.userId),
  })
);

// Note: roles table must be defined before tenantMemberships
// See roles table definition below (line ~219)

export const tenantMemberships = pgTable(
  "tenant_memberships",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    userId: uuid("user_id")
      .notNull()
      .references(() => users.id, { onDelete: "cascade" }),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    roleId: uuid("role_id")
      .notNull()
      .references(() => roles.id, { onDelete: "restrict" }),
    status: text("status").notNull().default("active"),
    permissions: jsonb("permissions").notNull().default({}),
    accessLevel: text("access_level").notNull().default("full"),
    resourceRestrictions: jsonb("resource_restrictions").notNull().default({}),
    ipRestrictions: jsonb("ip_restrictions"),
    timeRestrictions: jsonb("time_restrictions"),
    expiresAt: timestamp("expires_at", { withTimezone: true, precision: 6 }),
    invitedBy: uuid("invited_by").references(() => users.id),
    invitedAt: timestamp("invited_at", { withTimezone: true, precision: 6 }),
    joinedAt: timestamp("joined_at", { withTimezone: true, precision: 6 }),
    lastLoginAt: timestamp("last_login_at", {
      withTimezone: true,
      precision: 6,
    }),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    userTenantUnique: uniqueIndex("tenant_memberships_user_tenant_unique").on(
      table.userId,
      table.tenantId
    ),
    roleIdIdx: index("tenant_memberships_role_id_idx").on(table.roleId),
    tenantRoleIdx: index("tenant_memberships_tenant_role_idx").on(
      table.tenantId,
      table.roleId
    ),
    tenantStatusIdx: index("tenant_memberships_tenant_status_idx").on(
      table.tenantId,
      table.status
    ),
    accessLevelIdx: index("tenant_memberships_access_level_idx").on(
      table.accessLevel
    ),
    expiresAtIdx: index("tenant_memberships_expires_at_idx").on(
      table.expiresAt
    ),
    lastLoginAtIdx: index("tenant_memberships_last_login_at_idx").on(
      table.lastLoginAt
    ),
  })
);

export const sessions = pgTable(
  "sessions",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    userId: uuid("user_id")
      .notNull()
      .references(() => users.id, { onDelete: "cascade" }),
    authMethodId: uuid("auth_method_id").references(() => authMethods.id, {
      onDelete: "cascade",
    }),
    currentTenantId: uuid("current_tenant_id").references(() => tenants.id, {
      onDelete: "set null",
    }),
    accessTokenHash: text("access_token_hash"), // Temporary - to be removed
    refreshTokenHash: text("refresh_token_hash"),
    csrfTokenHash: text("csrf_token_hash").notNull().default(''),
    expiresAt: timestamp("expires_at", {
      withTimezone: true,
      precision: 6,
    }).notNull(),
    refreshExpiresAt: timestamp("refresh_expires_at", {
      withTimezone: true,
      precision: 6,
    }),
    deviceType: text("device_type"),
    deviceName: text("device_name"),
    userAgent: text("user_agent"),
    ipAddress: inet("ip_address"),
    locationData: jsonb("location_data"),
    deviceFingerprint: text("device_fingerprint"),
    status: text("status").notNull().default("active"),
    lastActivityAt: timestamp("last_activity_at", {
      withTimezone: true,
      precision: 6,
    })
      .notNull()
      .defaultNow(),
    revokedAt: timestamp("revoked_at", { withTimezone: true, precision: 6 }),
    revokedReason: text("revoked_reason"),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    userIdIdx: index("sessions_user_id_idx").on(table.userId),
    currentTenantIdIdx: index("sessions_current_tenant_id_idx").on(
      table.currentTenantId
    ),
    refreshTokenHashIdx: index("sessions_refresh_token_hash_idx").on(
      table.refreshTokenHash
    ),
    csrfTokenHashIdx: index("sessions_csrf_token_hash_idx").on(
      table.csrfTokenHash
    ),
    expiresAtIdx: index("sessions_expires_at_idx").on(table.expiresAt),
    statusIdx: index("sessions_status_idx").on(table.status),
    lastActivityAtIdx: index("sessions_last_activity_at_idx").on(
      table.lastActivityAt
    ),
    deviceFingerprintIdx: index("sessions_device_fingerprint_idx").on(
      table.deviceFingerprint
    ),
  })
);

// System-wide permissions - defines what actions can be performed
export const permissions = pgTable(
  "permissions",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    name: text("name").notNull().unique(), // e.g., "users:create", "tenants:read"
    description: text("description"),
    resource: text("resource").notNull(), // e.g., "users", "tenants", "parties"
    action: text("action").notNull(), // e.g., "create", "read", "update", "delete"
    scope: text("scope").notNull().default("tenant"), // "tenant", "global", "own"
    isSystem: boolean("is_system").notNull().default(false), // Built-in permissions
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    resourceActionIdx: index("permissions_resource_action_idx").on(
      table.resource,
      table.action
    ),
    scopeIdx: index("permissions_scope_idx").on(table.scope),
  })
);

// roles table already defined above (line 37) before tenantMemberships

// Role permission assignments (many-to-many)
export const rolePermissions = pgTable(
  "role_permissions",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    roleId: uuid("role_id")
      .notNull()
      .references(() => roles.id, { onDelete: "cascade" }),
    permissionId: uuid("permission_id")
      .notNull()
      .references(() => permissions.id, { onDelete: "cascade" }),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    rolePermissionIdx: uniqueIndex("role_permissions_role_permission_idx").on(
      table.roleId,
      table.permissionId
    ),
  })
);

// User role assignments within tenants (many-to-many)
export const userRoles = pgTable(
  "user_roles",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    userId: uuid("user_id")
      .notNull()
      .references(() => users.id, { onDelete: "cascade" }),
    roleId: uuid("role_id")
      .notNull()
      .references(() => roles.id, { onDelete: "cascade" }),
    assignedBy: uuid("assigned_by").references(() => users.id),
    expiresAt: timestamp("expires_at", { withTimezone: true, precision: 6 }),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    userRoleIdx: uniqueIndex("user_roles_user_role_idx").on(
      table.userId,
      table.roleId
    ),
    roleIdx: index("user_roles_role_idx").on(table.roleId),
    expiresAtIdx: index("user_roles_expires_at_idx").on(table.expiresAt),
  })
);

// User invitations - pending invites before user acceptance
export const userInvitations = pgTable(
  "user_invitations",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    email: text("email").notNull(),
    roleId: uuid("role_id")
      .notNull()
      .references(() => roles.id, { onDelete: "cascade" }),
    invitedBy: uuid("invited_by")
      .notNull()
      .references(() => users.id, { onDelete: "cascade" }),
    token: text("token").notNull().unique(), // Secure random token for invitation link
    status: text("status").notNull().default("pending"), // pending, accepted, rejected, expired
    expiresAt: timestamp("expires_at", { withTimezone: true, precision: 6 })
      .notNull()
      .default(sql`now() + interval '7 days'`),
    acceptedAt: timestamp("accepted_at", { withTimezone: true, precision: 6 }),
    rejectedAt: timestamp("rejected_at", { withTimezone: true, precision: 6 }),
    message: text("message"), // Optional welcome message
    permissions: jsonb("permissions").notNull().default({}),
    accessLevel: text("access_level").notNull().default("full"),
    resourceRestrictions: jsonb("resource_restrictions").notNull().default({}),
    membershipExpiresAt: timestamp("membership_expires_at", {
      withTimezone: true,
      precision: 6,
    }),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    tenantEmailIdx: uniqueIndex("user_invitations_tenant_email_idx")
      .on(table.tenantId, table.email)
      .where(sql`status = 'pending' AND deleted_at IS NULL`),
    tokenIdx: uniqueIndex("user_invitations_token_idx").on(table.token),
    tenantStatusIdx: index("user_invitations_tenant_status_idx").on(
      table.tenantId,
      table.status
    ),
    expiresAtIdx: index("user_invitations_expires_at_idx").on(table.expiresAt),
    emailIdx: index("user_invitations_email_idx").on(table.email),
  })
);

// Email verification tokens
export const emailVerificationTokens = pgTable(
  "email_verification_tokens",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    email: text("email").notNull(),
    tokenHash: text("token_hash").notNull().unique(),
    expiresAt: timestamp("expires_at", { withTimezone: true, precision: 6 })
      .notNull()
      .default(sql`now() + interval '24 hours'`),
    usedAt: timestamp("used_at", { withTimezone: true, precision: 6 }),
    createdBy: uuid("created_by").references(() => users.id),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    emailIdx: index("email_verification_tokens_email_idx").on(table.email),
    tokenHashIdx: uniqueIndex("email_verification_tokens_token_hash_idx").on(table.tokenHash),
    expiresAtIdx: index("email_verification_tokens_expires_at_idx").on(table.expiresAt),
    emailUnusedIdx: index("email_verification_tokens_email_unused_idx")
      .on(table.email)
      .where(sql`used_at IS NULL AND expires_at > now()`),
  })
);

// Audit log for security events
export const authAuditLog = pgTable(
  "auth_audit_log",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id").references(() => tenants.id),
    userId: uuid("user_id").references(() => users.id),
    action: text("action").notNull(), // "login", "logout", "failed_login", "password_change", etc.
    resource: text("resource"), // What was accessed
    resourceId: uuid("resource_id"), // ID of the accessed resource
    details: jsonb("details"), // Additional context
    ipAddress: inet("ip_address"),
    userAgent: text("user_agent"),
    success: boolean("success").notNull().default(true),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
  },
  (table) => ({
    tenantActionIdx: index("auth_audit_log_tenant_action_idx").on(
      table.tenantId,
      table.action
    ),
    userActionIdx: index("auth_audit_log_user_action_idx").on(
      table.userId,
      table.action
    ),
    insertedAtIdx: index("auth_audit_log_inserted_at_idx").on(table.insertedAt),
    resourceIdx: index("auth_audit_log_resource_idx").on(
      table.resource,
      table.resourceId
    ),
  })
);
