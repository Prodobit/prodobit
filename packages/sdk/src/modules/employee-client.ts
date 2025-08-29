import type {
  EmployeeEntity,
  CreateEmployeeRequest,
  UpdateEmployeeRequest,
  Response,
  User,
} from "@prodobit/types";
import {
  createEmployeeRequest,
  updateEmployeeRequest,
} from "@prodobit/types";
import type { RequestConfig } from "../types";
import { BaseClient } from "./base-client";
import { validateRequest } from "../utils/validation";

export class EmployeeClient extends BaseClient {
  async getEmployees(
    config?: RequestConfig
  ): Promise<Response<{ employees: EmployeeEntity[] }>> {
    return this.request("GET", "/api/v1/employees", undefined, config);
  }

  async getEmployeeById(
    id: string,
    config?: RequestConfig
  ): Promise<Response<{ employee: EmployeeEntity }>> {
    return this.request("GET", `/api/v1/employees/${id}`, undefined, config);
  }

  async createEmployee(
    data: CreateEmployeeRequest,
    config?: RequestConfig
  ): Promise<Response<{ employee: EmployeeEntity; user: User; message: string }>> {
    const validatedData = validateRequest(createEmployeeRequest, data);
    return this.request("POST", "/api/v1/employees", validatedData, config);
  }

  async updateEmployee(
    id: string,
    data: UpdateEmployeeRequest,
    config?: RequestConfig
  ): Promise<Response<{ employee: EmployeeEntity }>> {
    const validatedData = validateRequest(updateEmployeeRequest, data);
    return this.request("PUT", `/api/v1/employees/${id}`, validatedData, config);
  }

  async deleteEmployee(
    id: string,
    config?: RequestConfig
  ): Promise<Response<{ message: string }>> {
    return this.request("DELETE", `/api/v1/employees/${id}`, undefined, config);
  }
}