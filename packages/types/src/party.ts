import { type } from "arktype";
import { uuid, timestamp, status } from "./common";

export const party = type({
  id: uuid,
  tenantId: uuid,
  partyType: "'person' | 'organization'",
  code: "string >= 1",
  status,
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const person = type({
  id: uuid,
  partyId: uuid,
  tenantId: uuid,
  firstName: "string >= 1",
  lastName: "string >= 1",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const organization = type({
  id: uuid,
  partyId: uuid,
  tenantId: uuid,
  name: "string >= 1",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const address = type({
  id: uuid,
  partyId: uuid,
  tenantId: uuid,
  addressType: "'billing' | 'shipping' | 'office' | 'home'",
  line1: "string >= 1",
  "line2?": "string",
  "city?": "string",
  country: "string >= 2",
  isPrimary: "boolean",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const contactMechanism = type({
  id: uuid,
  partyId: uuid,
  tenantId: uuid,
  contactType: "'email' | 'phone' | 'fax' | 'website'",
  contactValue: "string >= 1",
  isPrimary: "boolean",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const partyRole = type({
  id: uuid,
  partyId: uuid,
  tenantId: uuid,
  roleType: "'customer' | 'supplier' | 'employee' | 'partner'",
  status,
  startDate: "string",
  "endDate?": "string",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const customer = type({
  id: uuid,
  partyRoleId: uuid,
  tenantId: uuid,
  customerCode: "string >= 1",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const supplier = type({
  id: uuid,
  partyRoleId: uuid,
  tenantId: uuid,
  supplierCode: "string >= 1",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const employee = type({
  id: uuid,
  partyRoleId: uuid,
  tenantId: uuid,
  employeeCode: "string >= 1",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

// Create Person Request
export const createPersonRequest = type({
  firstName: "string >= 1",
  lastName: "string >= 1",
  "code?": "string >= 1",
  roles: "('customer' | 'supplier' | 'employee')[]",
  "addresses?": address
    .omit("id", "partyId", "tenantId", "insertedAt", "updatedAt", "deletedAt")
    .array(),
  "contacts?": contactMechanism
    .omit("id", "partyId", "tenantId", "insertedAt", "updatedAt", "deletedAt")
    .array(),
  "customerCode?": "string >= 1",
  "supplierCode?": "string >= 1",
  "employeeCode?": "string >= 1",
});

// Create Organization Request
export const createOrganizationRequest = type({
  name: "string >= 1",
  "code?": "string >= 1",
  roles: "('customer' | 'supplier')[]",
  "addresses?": address
    .omit("id", "partyId", "tenantId", "insertedAt", "updatedAt", "deletedAt")
    .array(),
  "contacts?": contactMechanism
    .omit("id", "partyId", "tenantId", "insertedAt", "updatedAt", "deletedAt")
    .array(),
  "customerCode?": "string >= 1",
  "supplierCode?": "string >= 1",
});

// Update Party Request
export const updatePartyRequest = type({
  "firstName?": "string >= 1",
  "lastName?": "string >= 1", 
  "name?": "string >= 1",
  "code?": "string >= 1",
});

// Legacy - keeping for backward compatibility
export const createPartyRequest = type({
  partyType: "'person' | 'organization'",
  code: "string >= 1",
  "status?": status,
  person: person.omit("id", "partyId", "tenantId", "insertedAt", "updatedAt", "deletedAt").or(
    "undefined",
  ),
  organization: organization
    .omit("id", "partyId", "tenantId", "insertedAt", "updatedAt", "deletedAt")
    .or("undefined"),
  "addresses?": address
    .omit("id", "partyId", "tenantId", "insertedAt", "updatedAt", "deletedAt")
    .array(),
  "contactMechanisms?": contactMechanism
    .omit("id", "partyId", "tenantId", "insertedAt", "updatedAt", "deletedAt")
    .array(),
  "roles?": partyRole
    .omit("id", "partyId", "tenantId", "insertedAt", "updatedAt", "deletedAt")
    .array(),
});

export type Party = typeof party.infer;
export type Person = typeof person.infer;
export type Organization = typeof organization.infer;
export type Address = typeof address.infer;
export type ContactMechanism = typeof contactMechanism.infer;
export type PartyRole = typeof partyRole.infer;
export type Customer = typeof customer.infer;
export type Supplier = typeof supplier.infer;
export type Employee = typeof employee.infer;

// New type exports
export type CreatePersonRequest = typeof createPersonRequest.infer;
export type CreateOrganizationRequest = typeof createOrganizationRequest.infer;
export type UpdatePartyRequest = typeof updatePartyRequest.infer;

// Legacy
export type CreatePartyRequest = typeof createPartyRequest.infer;