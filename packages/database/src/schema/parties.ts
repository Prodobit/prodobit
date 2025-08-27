import {
  boolean,
  date,
  index,
  pgTable,
  text,
  timestamp,
  uniqueIndex,
  uuid,
} from "drizzle-orm/pg-core";
import { tenants } from "./tenants.js";

export const parties = pgTable(
  "parties",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    partyType: text("party_type").notNull(),
    code: text("code").notNull(),
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
    tenantCodeUnique: uniqueIndex("parties_tenant_code_unique").on(
      table.tenantId,
      table.code
    ),
    tenantPartyTypeIdx: index("parties_tenant_party_type_idx").on(
      table.tenantId,
      table.partyType
    ),
    tenantStatusIdx: index("parties_tenant_status_idx").on(
      table.tenantId,
      table.status
    ),
  })
);

export const persons = pgTable(
  "persons",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    partyId: uuid("party_id")
      .notNull()
      .references(() => parties.id, { onDelete: "cascade" }),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    firstName: text("first_name").notNull(),
    lastName: text("last_name").notNull(),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    partyIdUnique: uniqueIndex("persons_party_id_unique").on(table.partyId),
    tenantIdIdx: index("persons_tenant_id_idx").on(table.tenantId),
  })
);

export const organizations = pgTable(
  "organizations",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    partyId: uuid("party_id")
      .notNull()
      .references(() => parties.id, { onDelete: "cascade" }),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    name: text("name").notNull(),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    partyIdUnique: uniqueIndex("organizations_party_id_unique").on(
      table.partyId
    ),
    tenantIdIdx: index("organizations_tenant_id_idx").on(table.tenantId),
  })
);

export const addresses = pgTable(
  "addresses",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    partyId: uuid("party_id")
      .notNull()
      .references(() => parties.id, { onDelete: "cascade" }),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    addressType: text("address_type").notNull(),
    line1: text("line1").notNull(),
    line2: text("line2"),
    city: text("city"),
    country: text("country").notNull().default("TR"),
    isPrimary: boolean("is_primary").notNull().default(false),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    partyAddressTypeIdx: index("addresses_party_address_type_idx").on(
      table.partyId,
      table.addressType
    ),
    partyPrimaryIdx: index("addresses_party_primary_idx").on(
      table.partyId,
      table.isPrimary
    ),
    tenantIdIdx: index("addresses_tenant_id_idx").on(table.tenantId),
  })
);

export const contactMechanisms = pgTable(
  "contact_mechanisms",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    partyId: uuid("party_id")
      .notNull()
      .references(() => parties.id, { onDelete: "cascade" }),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    contactType: text("contact_type").notNull(),
    contactValue: text("contact_value").notNull(),
    isPrimary: boolean("is_primary").notNull().default(false),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    partyContactTypeIdx: index("contact_mechanisms_party_contact_type_idx").on(
      table.partyId,
      table.contactType
    ),
    partyPrimaryIdx: index("contact_mechanisms_party_primary_idx").on(
      table.partyId,
      table.isPrimary
    ),
    tenantIdIdx: index("contact_mechanisms_tenant_id_idx").on(table.tenantId),
  })
);

export const partyRoles = pgTable(
  "party_roles",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    partyId: uuid("party_id")
      .notNull()
      .references(() => parties.id, { onDelete: "cascade" }),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    roleType: text("role_type").notNull(),
    status: text("status").notNull().default("active"),
    startDate: date("start_date").notNull().defaultNow(),
    endDate: date("end_date"),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    partyTenantRoleUnique: uniqueIndex(
      "party_roles_party_tenant_role_unique"
    ).on(table.partyId, table.tenantId, table.roleType),
    tenantRoleIdx: index("party_roles_tenant_role_idx").on(
      table.tenantId,
      table.roleType
    ),
    tenantStatusIdx: index("party_roles_tenant_status_idx").on(
      table.tenantId,
      table.status
    ),
  })
);

export const customers = pgTable(
  "customers",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    partyRoleId: uuid("party_role_id")
      .notNull()
      .references(() => partyRoles.id, { onDelete: "cascade" }),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    customerCode: text("customer_code").notNull(),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    tenantCustomerCodeUnique: uniqueIndex(
      "customers_tenant_customer_code_unique"
    ).on(table.tenantId, table.customerCode),
    partyRoleIdUnique: uniqueIndex("customers_party_role_id_unique").on(
      table.partyRoleId
    ),
  })
);

export const suppliers = pgTable(
  "suppliers",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    partyRoleId: uuid("party_role_id")
      .notNull()
      .references(() => partyRoles.id, { onDelete: "cascade" }),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    supplierCode: text("supplier_code").notNull(),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    tenantSupplierCodeUnique: uniqueIndex(
      "suppliers_tenant_supplier_code_unique"
    ).on(table.tenantId, table.supplierCode),
    partyRoleIdUnique: uniqueIndex("suppliers_party_role_id_unique").on(
      table.partyRoleId
    ),
  })
);

export const employees = pgTable(
  "employees",
  {
    id: uuid("id").primaryKey().defaultRandom(),
    partyRoleId: uuid("party_role_id")
      .notNull()
      .references(() => partyRoles.id, { onDelete: "cascade" }),
    tenantId: uuid("tenant_id")
      .notNull()
      .references(() => tenants.id, { onDelete: "cascade" }),
    employeeCode: text("employee_code").notNull(),
    insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 })
      .notNull()
      .defaultNow(),
    deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 }),
  },
  (table) => ({
    tenantEmployeeCodeUnique: uniqueIndex(
      "employees_tenant_employee_code_unique"
    ).on(table.tenantId, table.employeeCode),
    partyRoleIdUnique: uniqueIndex("employees_party_role_id_unique").on(
      table.partyRoleId
    ),
  })
);
