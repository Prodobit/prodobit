import type { EmployeeEntity, CreateEmployeeRequest, UpdateEmployeeRequest, Response } from "@prodobit/types";
import type { RequestConfig } from "../types";
import { BaseClient } from "./base-client";
export declare class EmployeeClient extends BaseClient {
    getEmployees(config?: RequestConfig): Promise<Response<{
        employees: EmployeeEntity[];
    }>>;
    getEmployeeById(id: string, config?: RequestConfig): Promise<Response<{
        employee: EmployeeEntity;
    }>>;
    createEmployee(data: CreateEmployeeRequest, config?: RequestConfig): Promise<Response<{
        employee: EmployeeEntity;
        user: any;
        message: string;
    }>>;
    updateEmployee(id: string, data: UpdateEmployeeRequest, config?: RequestConfig): Promise<Response<{
        employee: EmployeeEntity;
    }>>;
    deleteEmployee(id: string, config?: RequestConfig): Promise<Response<{
        message: string;
    }>>;
}
//# sourceMappingURL=employee-client.d.ts.map