import { pgTable, text, timestamp, integer, boolean, uuid } from "drizzle-orm/pg-core";
import { relations } from "drizzle-orm";

export const employees = pgTable("employees", {
  id: uuid("id").primaryKey().defaultRandom(),
  partyRoleId: uuid("party_role_id").notNull(),
  tenantId: uuid("tenant_id").notNull(),
  employeeCode: text("employee_code").notNull(),
  insertedAt: timestamp("inserted_at", { withTimezone: true, precision: 6 }).defaultNow().notNull(),
  updatedAt: timestamp("updated_at", { withTimezone: true, precision: 6 }).defaultNow().notNull(),
  deletedAt: timestamp("deleted_at", { withTimezone: true, precision: 6 })
});

export const employeeRelations = relations(employees, ({ one }) => ({
  // Relations would be defined here if needed
  // partyRole: one(partyRoles, { fields: [employees.partyRoleId], references: [partyRoles.id] }),
  // tenant: one(tenants, { fields: [employees.tenantId], references: [tenants.id] })
}));