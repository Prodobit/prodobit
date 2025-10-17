import { type } from "arktype";
import { uuid, timestamp } from "./common";

// Department schemas
export const department = type({
  id: uuid,
  tenantId: uuid,
  "parentDepartmentId?": uuid,
  name: "string >= 1",
  code: "string >= 1",
  "description?": "string",
  "locationId?": uuid,
  "managerId?": uuid,
  "isActive?": "boolean",
  insertedAt: timestamp,
  updatedAt: timestamp,
  "deletedAt?": timestamp,
});

export const createDepartmentRequest = type({
  name: "string >= 1",
  "code?": "string",
  "description?": "string",
  "parentDepartmentId?": uuid,
  "locationId?": uuid,
  "managerId?": uuid,
  "isActive?": "boolean",
});

export const updateDepartmentRequest = type({
  "name?": "string >= 1",
  "code?": "string",
  "description?": "string",
  "parentDepartmentId?": uuid,
  "locationId?": uuid,
  "managerId?": uuid,
  "isActive?": "boolean",
});

export const departmentQuery = type({
  "parentDepartmentId?": uuid,
  "locationId?": uuid,
  "isActive?": "boolean",
  "search?": "string",
});

// Department Member schemas
export const departmentMember = type({
  id: uuid,
  tenantId: uuid,
  departmentId: uuid,
  userId: uuid,
  role: "'member' | 'manager' | 'viewer'",
  joinedAt: timestamp,
  "leftAt?": timestamp,
  insertedAt: timestamp,
  updatedAt: timestamp,
});

export const createDepartmentMemberRequest = type({
  departmentId: uuid,
  userId: uuid,
  "role?": "'member' | 'manager' | 'viewer'",
});

export const updateDepartmentMemberRequest = type({
  "role?": "'member' | 'manager' | 'viewer'",
  "leftAt?": timestamp,
});

export const departmentMemberQuery = type({
  "departmentId?": uuid,
  "userId?": uuid,
  "role?": "'member' | 'manager' | 'viewer'",
});

// Type exports
export type Department = typeof department.infer;
export type CreateDepartmentRequest = typeof createDepartmentRequest.infer;
export type UpdateDepartmentRequest = typeof updateDepartmentRequest.infer;
export type DepartmentQuery = typeof departmentQuery.infer;

export type DepartmentMember = typeof departmentMember.infer;
export type CreateDepartmentMemberRequest = typeof createDepartmentMemberRequest.infer;
export type UpdateDepartmentMemberRequest = typeof updateDepartmentMemberRequest.infer;
export type DepartmentMemberQuery = typeof departmentMemberQuery.infer;
