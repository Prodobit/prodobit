export declare const department: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    tenantId: string;
    name: string;
    code: string;
    insertedAt: string;
    updatedAt: string;
    parentDepartmentId?: string | undefined;
    description?: string | undefined;
    locationId?: string | undefined;
    managerId?: string | undefined;
    isActive?: boolean | undefined;
    deletedAt?: string | undefined;
}, {}>;
export declare const createDepartmentRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    name: string;
    code?: string | undefined;
    description?: string | undefined;
    parentDepartmentId?: string | undefined;
    locationId?: string | undefined;
    managerId?: string | undefined;
    isActive?: boolean | undefined;
}, {}>;
export declare const updateDepartmentRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    name?: string | undefined;
    code?: string | undefined;
    description?: string | undefined;
    parentDepartmentId?: string | undefined;
    locationId?: string | undefined;
    managerId?: string | undefined;
    isActive?: boolean | undefined;
}, {}>;
export declare const departmentQuery: import("arktype/internal/methods/object.ts").ObjectType<{
    parentDepartmentId?: string | undefined;
    locationId?: string | undefined;
    isActive?: boolean | undefined;
    search?: string | undefined;
}, {}>;
export declare const departmentMember: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    tenantId: string;
    departmentId: string;
    userId: string;
    role: "member" | "manager" | "viewer";
    joinedAt: string;
    insertedAt: string;
    updatedAt: string;
    leftAt?: string | undefined;
}, {}>;
export declare const createDepartmentMemberRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    departmentId: string;
    userId: string;
    role?: "member" | "manager" | "viewer" | undefined;
}, {}>;
export declare const updateDepartmentMemberRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    role?: "member" | "manager" | "viewer" | undefined;
    leftAt?: string | undefined;
}, {}>;
export declare const departmentMemberQuery: import("arktype/internal/methods/object.ts").ObjectType<{
    departmentId?: string | undefined;
    userId?: string | undefined;
    role?: "member" | "manager" | "viewer" | undefined;
}, {}>;
export type Department = typeof department.infer;
export type CreateDepartmentRequest = typeof createDepartmentRequest.infer;
export type UpdateDepartmentRequest = typeof updateDepartmentRequest.infer;
export type DepartmentQuery = typeof departmentQuery.infer;
export type DepartmentMember = typeof departmentMember.infer;
export type CreateDepartmentMemberRequest = typeof createDepartmentMemberRequest.infer;
export type UpdateDepartmentMemberRequest = typeof updateDepartmentMemberRequest.infer;
export type DepartmentMemberQuery = typeof departmentMemberQuery.infer;
//# sourceMappingURL=department.d.ts.map