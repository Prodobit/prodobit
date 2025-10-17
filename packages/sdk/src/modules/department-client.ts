import type {
  Department,
  DepartmentMember,
  CreateDepartmentRequest,
  UpdateDepartmentRequest,
  DepartmentQuery,
  CreateDepartmentMemberRequest,
  UpdateDepartmentMemberRequest,
  DepartmentMemberQuery,
  Response,
} from "@prodobit/types";
import type { RequestConfig } from "../types";
import { BaseClient } from "./base-client";
import { buildQuery } from "../utils/query-builder";

export class DepartmentClient extends BaseClient {
  /**
   * Get all departments with optional filters
   */
  async getAll(
    query?: DepartmentQuery,
    config?: RequestConfig
  ): Promise<Response<Department[]>> {
    const queryString = buildQuery(query);
    return this.request("GET", `/api/v1/departments${queryString ? `?${queryString}` : ""}`, undefined, config);
  }

  /**
   * Get a single department by ID
   */
  async getById(
    id: string,
    config?: RequestConfig
  ): Promise<Response<Department>> {
    return this.request("GET", `/api/v1/departments/${id}`, undefined, config);
  }

  /**
   * Get department hierarchy
   */
  async getHierarchy(
    id: string,
    config?: RequestConfig
  ): Promise<Response<Department[]>> {
    return this.request("GET", `/api/v1/departments/${id}/hierarchy`, undefined, config);
  }

  /**
   * Create a new department
   */
  async create(
    data: CreateDepartmentRequest,
    config?: RequestConfig
  ): Promise<Response<Department>> {
    return this.request("POST", "/api/v1/departments", data, config);
  }

  /**
   * Update an existing department
   */
  async update(
    id: string,
    data: UpdateDepartmentRequest,
    config?: RequestConfig
  ): Promise<Response<Department>> {
    return this.request("PUT", `/api/v1/departments/${id}`, data, config);
  }

  /**
   * Delete a department
   */
  async delete(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.request("DELETE", `/api/v1/departments/${id}`, undefined, config);
  }

  // Department Members

  /**
   * Get members of a department
   */
  async getMembers(
    departmentId: string,
    query?: DepartmentMemberQuery,
    config?: RequestConfig
  ): Promise<Response<DepartmentMember[]>> {
    const queryString = buildQuery(query);
    return this.request("GET", `/api/v1/departments/${departmentId}/members${queryString ? `?${queryString}` : ""}`, undefined, config);
  }

  /**
   * Add a member to a department
   */
  async addMember(
    departmentId: string,
    data: Omit<CreateDepartmentMemberRequest, "departmentId">,
    config?: RequestConfig
  ): Promise<Response<DepartmentMember>> {
    return this.request("POST", `/api/v1/departments/${departmentId}/members`, data, config);
  }

  /**
   * Update a department member
   */
  async updateMember(
    memberId: string,
    data: UpdateDepartmentMemberRequest,
    config?: RequestConfig
  ): Promise<Response<DepartmentMember>> {
    return this.request("PUT", `/api/v1/departments/members/${memberId}`, data, config);
  }

  /**
   * Remove a member from a department
   */
  async removeMember(
    memberId: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.request("DELETE", `/api/v1/departments/members/${memberId}`, undefined, config);
  }
}
