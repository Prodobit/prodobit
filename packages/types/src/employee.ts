import { type } from "arktype";
import { uuid, timestamp } from "./common";

// Employee related types
export const authType = type("'email' | 'phone'");

export const employeeEntity = type({
  id: uuid,
  tenantId: uuid,
  firstName: "string >= 1",
  lastName: "string >= 1",
  "middleName?": "string",
  "employeeCode?": "string",
  "position?": "string",
  "department?": "string",
  "hireDate?": timestamp,
  "terminationDate?": timestamp,
  "isActive?": "boolean",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createEmployeeRequest = type({
  firstName: "string >= 1",
  lastName: "string >= 1",
  "middleName?": "string",
  authType: authType,
  authValue: "string >= 1",
  "employeeCode?": "string",
  "role?": "string",
});

export const updateEmployeeRequest = type({
  "position?": "string",
  "department?": "string",
  "terminationDate?": timestamp,
  "isActive?": "boolean",
});

// Type exports
export type AuthType = typeof authType.infer;
export type EmployeeEntity = typeof employeeEntity.infer;
export type CreateEmployeeRequest = typeof createEmployeeRequest.infer;
export type UpdateEmployeeRequest = typeof updateEmployeeRequest.infer;