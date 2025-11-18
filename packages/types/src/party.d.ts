export declare const party: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    tenantId: string;
    partyType: "person" | "organization";
    code: string;
    status: "active" | "inactive" | "suspended" | "deleted";
    insertedAt: string;
    updatedAt: string;
    deletedAt?: string | undefined;
}, {}>;
export declare const person: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    partyId: string;
    tenantId: string;
    firstName: string;
    lastName: string;
    insertedAt: string;
    updatedAt: string;
    deletedAt?: string | undefined;
}, {}>;
export declare const organization: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    partyId: string;
    tenantId: string;
    name: string;
    insertedAt: string;
    updatedAt: string;
    deletedAt?: string | undefined;
}, {}>;
export declare const address: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    partyId: string;
    tenantId: string;
    addressType: "billing" | "shipping" | "office" | "home";
    line1: string;
    country: string;
    isPrimary: boolean;
    insertedAt: string;
    updatedAt: string;
    line2?: string | undefined;
    city?: string | undefined;
    deletedAt?: string | undefined;
}, {}>;
export declare const contactMechanism: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    partyId: string;
    tenantId: string;
    contactType: "email" | "phone" | "fax" | "website";
    contactValue: string;
    isPrimary: boolean;
    insertedAt: string;
    updatedAt: string;
    deletedAt?: string | undefined;
}, {}>;
export declare const partyRole: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    partyId: string;
    tenantId: string;
    roleType: "customer" | "supplier" | "employee" | "partner";
    status: "active" | "inactive" | "suspended" | "deleted";
    startDate: string;
    insertedAt: string;
    updatedAt: string;
    endDate?: string | undefined;
    deletedAt?: string | undefined;
}, {}>;
export declare const customer: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    partyRoleId: string;
    tenantId: string;
    customerCode: string;
    insertedAt: string;
    updatedAt: string;
    deletedAt?: string | undefined;
}, {}>;
export declare const supplier: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    partyRoleId: string;
    tenantId: string;
    supplierCode: string;
    insertedAt: string;
    updatedAt: string;
    deletedAt?: string | undefined;
}, {}>;
export declare const employee: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    partyRoleId: string;
    tenantId: string;
    employeeCode: string;
    insertedAt: string;
    updatedAt: string;
    deletedAt?: string | undefined;
}, {}>;
export declare const createPersonRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    firstName: string;
    lastName: string;
    roles: ("customer" | "supplier" | "employee")[];
    code?: string | undefined;
    addresses?: {
        addressType: "billing" | "shipping" | "office" | "home";
        line1: string;
        country: string;
        isPrimary: boolean;
        line2?: string | undefined;
        city?: string | undefined;
    }[] | undefined;
    contacts?: {
        contactType: "email" | "phone" | "fax" | "website";
        contactValue: string;
        isPrimary: boolean;
    }[] | undefined;
    customerCode?: string | undefined;
    supplierCode?: string | undefined;
    employeeCode?: string | undefined;
}, {}>;
export declare const createOrganizationRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    name: string;
    roles: ("customer" | "supplier")[];
    code?: string | undefined;
    addresses?: {
        addressType: "billing" | "shipping" | "office" | "home";
        line1: string;
        country: string;
        isPrimary: boolean;
        line2?: string | undefined;
        city?: string | undefined;
    }[] | undefined;
    contacts?: {
        contactType: "email" | "phone" | "fax" | "website";
        contactValue: string;
        isPrimary: boolean;
    }[] | undefined;
    customerCode?: string | undefined;
    supplierCode?: string | undefined;
}, {}>;
export declare const updatePartyRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    firstName?: string | undefined;
    lastName?: string | undefined;
    name?: string | undefined;
    code?: string | undefined;
}, {}>;
export declare const createPartyRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    partyType: "person" | "organization";
    code: string;
    person: {
        firstName: string;
        lastName: string;
    };
    organization: {
        name: string;
    };
    status?: "active" | "inactive" | "suspended" | "deleted" | undefined;
    addresses?: {
        addressType: "billing" | "shipping" | "office" | "home";
        line1: string;
        country: string;
        isPrimary: boolean;
        line2?: string | undefined;
        city?: string | undefined;
    }[] | undefined;
    contactMechanisms?: {
        contactType: "email" | "phone" | "fax" | "website";
        contactValue: string;
        isPrimary: boolean;
    }[] | undefined;
    roles?: {
        roleType: "customer" | "supplier" | "employee" | "partner";
        status: "active" | "inactive" | "suspended" | "deleted";
        startDate: string;
        endDate?: string | undefined;
    }[] | undefined;
}, {}>;
export type Party = typeof party.infer;
export type Person = typeof person.infer;
export type Organization = typeof organization.infer;
export type Address = typeof address.infer;
export type ContactMechanism = typeof contactMechanism.infer;
export type PartyRole = typeof partyRole.infer;
export type Customer = typeof customer.infer;
export type Supplier = typeof supplier.infer;
export type Employee = typeof employee.infer;
export type CreatePersonRequest = typeof createPersonRequest.infer;
export type CreateOrganizationRequest = typeof createOrganizationRequest.infer;
export type UpdatePartyRequest = typeof updatePartyRequest.infer;
export type CreatePartyRequest = typeof createPartyRequest.infer;
export declare const getPartyResponse: import("arktype/internal/methods/object.ts").ObjectType<{
    party: {
        id: string;
        tenantId: string;
        partyType: "person" | "organization";
        code: string;
        status: "active" | "inactive" | "suspended" | "deleted";
        insertedAt: string;
        updatedAt: string;
        deletedAt?: string | undefined;
    };
    specificData: {
        id: string;
        partyId: string;
        tenantId: string;
        firstName: string;
        lastName: string;
        insertedAt: string;
        updatedAt: string;
        deletedAt?: string | undefined;
    } | {
        id: string;
        partyId: string;
        tenantId: string;
        name: string;
        insertedAt: string;
        updatedAt: string;
        deletedAt?: string | undefined;
    };
    roles: {
        id: string;
        partyId: string;
        tenantId: string;
        roleType: "customer" | "supplier" | "employee" | "partner";
        status: "active" | "inactive" | "suspended" | "deleted";
        startDate: string;
        insertedAt: string;
        updatedAt: string;
        endDate?: string | undefined;
        deletedAt?: string | undefined;
    }[];
    addresses: {
        id: string;
        partyId: string;
        tenantId: string;
        addressType: "billing" | "shipping" | "office" | "home";
        line1: string;
        country: string;
        isPrimary: boolean;
        insertedAt: string;
        updatedAt: string;
        line2?: string | undefined;
        city?: string | undefined;
        deletedAt?: string | undefined;
    }[];
    contacts: {
        id: string;
        partyId: string;
        tenantId: string;
        contactType: "email" | "phone" | "fax" | "website";
        contactValue: string;
        isPrimary: boolean;
        insertedAt: string;
        updatedAt: string;
        deletedAt?: string | undefined;
    }[];
}, {}>;
export type GetPartyResponse = typeof getPartyResponse.infer;
export declare const customerListItem: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    partyId: string;
    name: string;
    partyType: "person" | "organization";
    customerCode: string;
    code: string;
    insertedAt: string;
    updatedAt: string;
}, {}>;
export declare const supplierListItem: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    partyId: string;
    name: string;
    partyType: "person" | "organization";
    supplierCode: string;
    code: string;
    insertedAt: string;
    updatedAt: string;
}, {}>;
export declare const employeeListItem: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    partyId: string;
    name: string;
    partyType: "person" | "organization";
    employeeCode: string;
    code: string;
    insertedAt: string;
    updatedAt: string;
}, {}>;
export type CustomerListItem = typeof customerListItem.infer;
export type SupplierListItem = typeof supplierListItem.infer;
export type EmployeeListItem = typeof employeeListItem.infer;
//# sourceMappingURL=party.d.ts.map