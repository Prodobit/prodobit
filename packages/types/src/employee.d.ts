export declare const authType: import("arktype/internal/methods/string.ts").StringType<"email" | "phone", {}>;
export declare const employeeEntity: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    tenantId: string;
    firstName: string;
    lastName: string;
    insertedAt: string;
    updatedAt: string;
    middleName?: string | undefined;
    employeeCode?: string | undefined;
    position?: string | undefined;
    department?: string | undefined;
    hireDate?: string | undefined;
    terminationDate?: string | undefined;
    isActive?: boolean | undefined;
    deletedAt?: string | undefined;
}, {}>;
export declare const createEmployeeRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    firstName: string;
    lastName: string;
    authType: "email" | "phone";
    authValue: string;
    middleName?: string | undefined;
    employeeCode?: string | undefined;
    role?: string | undefined;
}, {}>;
export declare const updateEmployeeRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    position?: string | undefined;
    department?: string | undefined;
    terminationDate?: string | undefined;
    isActive?: boolean | undefined;
}, {}>;
export type AuthType = typeof authType.infer;
export type EmployeeEntity = typeof employeeEntity.infer;
export type CreateEmployeeRequest = typeof createEmployeeRequest.infer;
export type UpdateEmployeeRequest = typeof updateEmployeeRequest.infer;
//# sourceMappingURL=employee.d.ts.map