import {
  addresses,
  contactMechanisms,
  customers,
  employees,
  organizations,
  parties,
  partyRoles,
  persons,
  suppliers,
} from "@prodobit/database";
import { and, eq, sql } from "drizzle-orm";

export type CreatePersonRequest = {
  tenantId: string;
  firstName: string;
  lastName: string;
  code?: string;
  roles: string[]; // ["customer", "supplier", "employee"]
  addresses?: Array<{
    addressType: string;
    line1: string;
    line2?: string;
    city?: string;
    country?: string;
    isPrimary?: boolean;
  }>;
  contacts?: Array<{
    contactType: string;
    contactValue: string;
    isPrimary?: boolean;
  }>;
  customerCode?: string;
  supplierCode?: string;
  employeeCode?: string;
};

export type CreateOrganizationRequest = {
  tenantId: string;
  name: string;
  code?: string;
  roles: string[]; // ["customer", "supplier"]
  addresses?: Array<{
    addressType: string;
    line1: string;
    line2?: string;
    city?: string;
    country?: string;
    isPrimary?: boolean;
  }>;
  contacts?: Array<{
    contactType: string;
    contactValue: string;
    isPrimary?: boolean;
  }>;
  customerCode?: string;
  supplierCode?: string;
};

export type Database = any;

export class PartyService {
  private db: Database;

  constructor(db: Database) {
    this.db = db;
  }

  private generateCode(tenantId: string, prefix: string): string {
    // Simple code generation - can be enhanced later
    const timestamp = Date.now().toString().slice(-6);
    const random = Math.random().toString(36).substring(2, 4).toUpperCase();
    return `${prefix}${timestamp}${random}`;
  }

  private async createPartyRoles(
    partyId: string,
    tenantId: string,
    roles: string[]
  ): Promise<any[]> {
    const roleInserts = roles.map((role) => ({
      partyId,
      tenantId,
      roleType: role,
      status: "active",
    }));

    return await this.db.insert(partyRoles).values(roleInserts).returning();
  }

  private async createRoleSpecificRecords(
    partyRoleId: string,
    tenantId: string,
    roleType: string,
    codes: {
      customerCode?: string;
      supplierCode?: string;
      employeeCode?: string;
    }
  ): Promise<void> {
    switch (roleType) {
      case "customer":
        await this.db.insert(customers).values({
          partyRoleId,
          tenantId,
          customerCode: codes.customerCode || this.generateCode(tenantId, "CUST"),
        });
        break;

      case "supplier":
        await this.db.insert(suppliers).values({
          partyRoleId,
          tenantId,
          supplierCode: codes.supplierCode || this.generateCode(tenantId, "SUPP"),
        });
        break;

      case "employee":
        await this.db.insert(employees).values({
          partyRoleId,
          tenantId,
          employeeCode: codes.employeeCode || this.generateCode(tenantId, "EMP"),
        });
        break;
    }
  }

  private async addAddresses(
    partyId: string,
    tenantId: string,
    addressList: CreatePersonRequest["addresses"]
  ): Promise<void> {
    if (!addressList || addressList.length === 0) return;

    const addressInserts = addressList.map((addr) => ({
      partyId,
      tenantId,
      addressType: addr.addressType,
      line1: addr.line1,
      line2: addr.line2,
      city: addr.city,
      country: addr.country || "TR",
      isPrimary: addr.isPrimary || false,
    }));

    await this.db.insert(addresses).values(addressInserts);
  }

  private async addContacts(
    partyId: string,
    tenantId: string,
    contactList: CreatePersonRequest["contacts"]
  ): Promise<void> {
    if (!contactList || contactList.length === 0) return;

    const contactInserts = contactList.map((contact) => ({
      partyId,
      tenantId,
      contactType: contact.contactType,
      contactValue: contact.contactValue,
      isPrimary: contact.isPrimary || false,
    }));

    await this.db.insert(contactMechanisms).values(contactInserts);
  }

  async createPerson(data: CreatePersonRequest): Promise<any> {
    // 1. Create base party
    const [party] = await this.db
      .insert(parties)
      .values({
        tenantId: data.tenantId,
        partyType: "person",
        code: data.code || this.generateCode(data.tenantId, "PER"),
        status: "active",
      })
      .returning();

    // 2. Create person record
    const [person] = await this.db
      .insert(persons)
      .values({
        partyId: party.id,
        tenantId: data.tenantId,
        firstName: data.firstName,
        lastName: data.lastName,
      })
      .returning();

    // 3. Create party roles
    const createdRoles = await this.createPartyRoles(
      party.id,
      data.tenantId,
      data.roles
    );

    // 4. Create role-specific records
    const codes = {
      customerCode: data.customerCode,
      supplierCode: data.supplierCode,
      employeeCode: data.employeeCode,
    };

    for (const role of createdRoles) {
      await this.createRoleSpecificRecords(
        role.id,
        data.tenantId,
        role.roleType,
        codes
      );
    }

    // 5. Add addresses if provided
    await this.addAddresses(party.id, data.tenantId, data.addresses);

    // 6. Add contacts if provided
    await this.addContacts(party.id, data.tenantId, data.contacts);

    return {
      party,
      person,
      roles: createdRoles,
    };
  }

  async createOrganization(data: CreateOrganizationRequest): Promise<any> {
    // 1. Create base party
    const [party] = await this.db
      .insert(parties)
      .values({
        tenantId: data.tenantId,
        partyType: "organization",
        code: data.code || this.generateCode(data.tenantId, "ORG"),
        status: "active",
      })
      .returning();

    // 2. Create organization record
    const [organization] = await this.db
      .insert(organizations)
      .values({
        partyId: party.id,
        tenantId: data.tenantId,
        name: data.name,
      })
      .returning();

    // 3. Create party roles
    const createdRoles = await this.createPartyRoles(
      party.id,
      data.tenantId,
      data.roles
    );

    // 4. Create role-specific records
    const codes = {
      customerCode: data.customerCode,
      supplierCode: data.supplierCode,
    };

    for (const role of createdRoles) {
      await this.createRoleSpecificRecords(
        role.id,
        data.tenantId,
        role.roleType,
        codes
      );
    }

    // 5. Add addresses if provided
    await this.addAddresses(party.id, data.tenantId, data.addresses);

    // 6. Add contacts if provided
    await this.addContacts(party.id, data.tenantId, data.contacts);

    return {
      party,
      organization,
      roles: createdRoles,
    };
  }

  async getPartyWithDetails(partyId: string, tenantId: string): Promise<any> {
    // Get base party
    const [party] = await this.db
      .select()
      .from(parties)
      .where(and(eq(parties.id, partyId), eq(parties.tenantId, tenantId)))
      .limit(1);

    if (!party) {
      throw new Error("Party not found");
    }

    let specificData = null;

    // Get specific party data based on type
    if (party.partyType === "person") {
      const [person] = await this.db
        .select()
        .from(persons)
        .where(eq(persons.partyId, partyId))
        .limit(1);
      specificData = person;
    } else if (party.partyType === "organization") {
      const [organization] = await this.db
        .select()
        .from(organizations)
        .where(eq(organizations.partyId, partyId))
        .limit(1);
      specificData = organization;
    }

    // Get party roles with role-specific data
    const roles = await this.db
      .select()
      .from(partyRoles)
      .where(
        and(
          eq(partyRoles.partyId, partyId),
          eq(partyRoles.tenantId, tenantId),
          eq(partyRoles.status, "active")
        )
      );

    const rolesWithDetails = [];
    for (const role of roles) {
      let roleDetails = null;

      switch (role.roleType) {
        case "customer":
          const [customer] = await this.db
            .select()
            .from(customers)
            .where(eq(customers.partyRoleId, role.id))
            .limit(1);
          roleDetails = customer;
          break;

        case "supplier":
          const [supplier] = await this.db
            .select()
            .from(suppliers)
            .where(eq(suppliers.partyRoleId, role.id))
            .limit(1);
          roleDetails = supplier;
          break;

        case "employee":
          const [employee] = await this.db
            .select()
            .from(employees)
            .where(eq(employees.partyRoleId, role.id))
            .limit(1);
          roleDetails = employee;
          break;
      }

      rolesWithDetails.push({
        ...role,
        details: roleDetails,
      });
    }

    // Get addresses
    const partyAddresses = await this.db
      .select()
      .from(addresses)
      .where(eq(addresses.partyId, partyId));

    // Get contacts
    const partyContacts = await this.db
      .select()
      .from(contactMechanisms)
      .where(eq(contactMechanisms.partyId, partyId));

    return {
      party,
      specificData,
      roles: rolesWithDetails,
      addresses: partyAddresses,
      contacts: partyContacts,
    };
  }

  async updateParty(
    partyId: string,
    tenantId: string,
    updates: Partial<CreatePersonRequest & CreateOrganizationRequest>
  ): Promise<any> {
    // Update base party if needed
    if (updates.code) {
      await this.db
        .update(parties)
        .set({ code: updates.code, updatedAt: new Date() })
        .where(and(eq(parties.id, partyId), eq(parties.tenantId, tenantId)));
    }

    // Update specific party data
    const [party] = await this.db
      .select()
      .from(parties)
      .where(and(eq(parties.id, partyId), eq(parties.tenantId, tenantId)))
      .limit(1);

    if (!party) {
      throw new Error("Party not found");
    }

    if (party.partyType === "person" && (updates.firstName || updates.lastName)) {
      await this.db
        .update(persons)
        .set({
          ...(updates.firstName && { firstName: updates.firstName }),
          ...(updates.lastName && { lastName: updates.lastName }),
          updatedAt: new Date(),
        })
        .where(eq(persons.partyId, partyId));
    } else if (party.partyType === "organization" && updates.name) {
      await this.db
        .update(organizations)
        .set({
          name: updates.name,
          updatedAt: new Date(),
        })
        .where(eq(organizations.partyId, partyId));
    }

    return await this.getPartyWithDetails(partyId, tenantId);
  }

  async deleteParty(partyId: string, tenantId: string): Promise<void> {
    await this.db
      .update(parties)
      .set({ deletedAt: new Date() })
      .where(and(eq(parties.id, partyId), eq(parties.tenantId, tenantId)));
  }

  async listPartiesByType(
    tenantId: string,
    partyType?: string,
    roleType?: string
  ): Promise<any[]> {
    if (roleType === "customer") {
      // For customers, get data from customers table with proper JOINs
      const customerQuery = this.db
        .select({
          id: parties.id,
          name: sql<string>`
            CASE 
              WHEN parties.party_type = 'person' THEN 
                CONCAT(persons.first_name, ' ', persons.last_name)
              WHEN parties.party_type = 'organization' THEN 
                organizations.name
            END
          `.as('name'),
          partyType: parties.partyType,
          customerCode: customers.customerCode,
          code: parties.code,
          insertedAt: parties.insertedAt,
          updatedAt: parties.updatedAt,
        })
        .from(parties)
        .innerJoin(partyRoles, eq(partyRoles.partyId, parties.id))
        .innerJoin(customers, eq(customers.partyRoleId, partyRoles.id))
        .leftJoin(persons, eq(persons.partyId, parties.id))
        .leftJoin(organizations, eq(organizations.partyId, parties.id))
        .where(
          and(
            eq(parties.tenantId, tenantId),
            eq(partyRoles.roleType, "customer"),
            eq(partyRoles.status, "active"),
            partyType ? eq(parties.partyType, partyType) : undefined
          )
        );

      return await customerQuery;
    }

    if (roleType === "supplier") {
      // For suppliers, get data from suppliers table with proper JOINs
      const supplierQuery = this.db
        .select({
          id: parties.id,
          name: sql<string>`
            CASE 
              WHEN parties.party_type = 'person' THEN 
                CONCAT(persons.first_name, ' ', persons.last_name)
              WHEN parties.party_type = 'organization' THEN 
                organizations.name
            END
          `.as('name'),
          partyType: parties.partyType,
          supplierCode: suppliers.supplierCode,
          code: parties.code,
          insertedAt: parties.insertedAt,
          updatedAt: parties.updatedAt,
        })
        .from(parties)
        .innerJoin(partyRoles, eq(partyRoles.partyId, parties.id))
        .innerJoin(suppliers, eq(suppliers.partyRoleId, partyRoles.id))
        .leftJoin(persons, eq(persons.partyId, parties.id))
        .leftJoin(organizations, eq(organizations.partyId, parties.id))
        .where(
          and(
            eq(parties.tenantId, tenantId),
            eq(partyRoles.roleType, "supplier"),
            eq(partyRoles.status, "active"),
            partyType ? eq(parties.partyType, partyType) : undefined
          )
        );

      return await supplierQuery;
    }

    if (roleType === "employee") {
      // For employees, get data from employees table with proper JOINs
      const employeeQuery = this.db
        .select({
          id: parties.id,
          name: sql<string>`
            CASE 
              WHEN parties.party_type = 'person' THEN 
                CONCAT(persons.first_name, ' ', persons.last_name)
              WHEN parties.party_type = 'organization' THEN 
                organizations.name
            END
          `.as('name'),
          partyType: parties.partyType,
          employeeCode: employees.employeeCode,
          code: parties.code,
          insertedAt: parties.insertedAt,
          updatedAt: parties.updatedAt,
        })
        .from(parties)
        .innerJoin(partyRoles, eq(partyRoles.partyId, parties.id))
        .innerJoin(employees, eq(employees.partyRoleId, partyRoles.id))
        .leftJoin(persons, eq(persons.partyId, parties.id))
        .leftJoin(organizations, eq(organizations.partyId, parties.id))
        .where(
          and(
            eq(parties.tenantId, tenantId),
            eq(partyRoles.roleType, "employee"),
            eq(partyRoles.status, "active"),
            partyType ? eq(parties.partyType, partyType) : undefined
          )
        );

      return await employeeQuery;
    }

    // Default: get all parties with names from respective tables
    const allPartiesQuery = this.db
      .select({
        id: parties.id,
        name: sql<string>`
          CASE 
            WHEN ${parties.partyType} = 'person' THEN 
              CONCAT(${persons.firstName}, ' ', ${persons.lastName})
            WHEN ${parties.partyType} = 'organization' THEN 
              ${organizations.name}
          END
        `.as('name'),
        partyType: parties.partyType,
        code: parties.code,
        insertedAt: parties.insertedAt,
        updatedAt: parties.updatedAt,
      })
      .from(parties)
      .leftJoin(persons, eq(persons.partyId, parties.id))
      .leftJoin(organizations, eq(organizations.partyId, parties.id))
      .where(
        and(
          eq(parties.tenantId, tenantId),
          partyType ? eq(parties.partyType, partyType) : undefined
        )
      );

    return await allPartiesQuery;
  }
}