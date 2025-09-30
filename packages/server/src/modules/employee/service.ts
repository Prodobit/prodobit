import { eq, and } from "drizzle-orm";
import type { createDatabase } from "@prodobit/database";
import { employees } from "./schema.js";
import {
  users,
  authMethods,
  tenantMemberships,
  roles,
  parties,
  persons,
  partyRoles
} from "@prodobit/database";

export interface CreateEmployeeData {
  // Personal Info
  firstName: string;
  lastName: string;
  middleName?: string;
  
  // Auth Method
  authType: 'email' | 'phone';
  authValue: string; // email or phone number
  
  // Employee Info
  employeeCode?: string; // Optional - will be auto-generated if not provided
  role?: string;
  
  // Tenant Info
  tenantId: string;
  invitedBy?: string; // User ID who created this employee
}

export class EmployeeService {
  constructor(private db: ReturnType<typeof createDatabase>) {}

  /**
   * Generate employee code with EMP prefix
   */
  private generateEmployeeCode(tenantId: string): string {
    const timestamp = Date.now().toString().slice(-6);
    const random = Math.random().toString(36).substring(2, 4).toUpperCase();
    return `EMP${timestamp}${random}`;
  }

  /**
   * Creates a complete employee with all related records
   * Transaction ensures all records are created together
   */
  async createCompleteEmployee(data: CreateEmployeeData) {
    return await this.db.transaction(async (tx) => {
      // 1. Create User
      const [user] = await tx
        .insert(users)
        .values({
          displayName: `${data.firstName} ${data.lastName}`,
          status: 'active',
        })
        .returning();

      // 2. Create Auth Method
      const [authMethod] = await tx
        .insert(authMethods)
        .values({
          userId: user.id,
          provider: data.authType,
          providerId: data.authValue,
          verified: false, // Will be verified when they first login
          metadata: {
            [data.authType]: data.authValue,
            firstName: data.firstName,
            lastName: data.lastName,
          },
        })
        .returning();

      // 3. Create Party
      const [party] = await tx
        .insert(parties)
        .values({
          tenantId: data.tenantId,
          partyType: 'person',
          code: data.employeeCode || this.generateEmployeeCode(data.tenantId), // Auto-generate if not provided
          status: 'active',
        })
        .returning();

      // 4. Create Person
      const [person] = await tx
        .insert(persons)
        .values({
          tenantId: data.tenantId,
          partyId: party.id,
          firstName: data.firstName,
          lastName: data.lastName,
        })
        .returning();

      // 5. Create Party Role (Employee)
      const [partyRole] = await tx
        .insert(partyRoles)
        .values({
          tenantId: data.tenantId,
          partyId: party.id,
          roleType: 'employee',
        })
        .returning();

      // 6. Create Employee
      const [employee] = await tx
        .insert(employees)
        .values({
          partyRoleId: partyRole.id,
          tenantId: data.tenantId,
          employeeCode: data.employeeCode || this.generateEmployeeCode(data.tenantId),
        })
        .returning();

      // 7. Find or create employee role
      const employeeRole = await tx
        .select()
        .from(roles)
        .where(
          and(
            eq(roles.tenantId, data.tenantId),
            eq(roles.name, 'user')
          )
        )
        .limit(1);

      if (employeeRole.length === 0) {
        throw new Error('Default user role not found for tenant');
      }

      // 8. Create Tenant Membership
      const [membership] = await tx
        .insert(tenantMemberships)
        .values({
          userId: user.id,
          tenantId: data.tenantId,
          roleId: employeeRole[0].id,
          status: 'active',
          permissions: {},
          accessLevel: 'full',
          resourceRestrictions: {},
          invitedBy: data.invitedBy,
          joinedAt: new Date(),
        })
        .returning();

      return {
        user,
        authMethod,
        party,
        person,
        partyRole,
        employee,
        membership,
      };
    });
  }

  async createEmployee(data: {
    partyRoleId: string;
    employeeCode: string;
    tenantId: string;
  }) {
    const [employee] = await this.db
      .insert(employees)
      .values(data)
      .returning();
    
    return employee;
  }

  async getEmployeesByTenant(tenantId: string) {
    return await this.db
      .select()
      .from(employees)
      .where(eq(employees.tenantId, tenantId));
  }

  async getEmployeeById(id: string, tenantId: string) {
    const [employee] = await this.db
      .select()
      .from(employees)
      .where(and(
        eq(employees.id, id),
        eq(employees.tenantId, tenantId)
      ));
    
    return employee;
  }

  async updateEmployee(id: string, tenantId: string, data: Partial<{
    employeeCode: string;
    terminationDate: Date;
    position: string;
    department: string;
    isActive: boolean;
  }>) {
    const [employee] = await this.db
      .update(employees)
      .set({
        ...data,
        updatedAt: new Date()
      })
      .where(and(
        eq(employees.id, id),
        eq(employees.tenantId, tenantId)
      ))
      .returning();
    
    return employee;
  }

  async deleteEmployee(id: string, tenantId: string) {
    await this.db
      .update(employees)
      .set({ 
        deletedAt: new Date(),
        updatedAt: new Date()
      })
      .where(and(
        eq(employees.id, id),
        eq(employees.tenantId, tenantId)
      ));
  }
}