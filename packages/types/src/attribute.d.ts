export declare const attribute: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    tenantId: string;
    entityType: string;
    name: string;
    dataType: "string" | "boolean" | "date" | "integer" | "json" | "decimal";
    isRequired: boolean;
    insertedAt: string;
    updatedAt: string;
    displayName?: string | undefined;
    description?: string | undefined;
    defaultValue?: unknown;
    validationRules?: object | undefined;
    options?: unknown[] | undefined;
    deletedAt?: string | undefined;
}, {}>;
export declare const attributeValue: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    tenantId: string;
    entityId: string;
    entityType: string;
    attributeId: string;
    insertedAt: string;
    updatedAt: string;
    value?: unknown;
    deletedAt?: string | undefined;
}, {}>;
export declare const createAttributeRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    entityType: string;
    name: string;
    dataType: "string" | "boolean" | "date" | "integer" | "json" | "decimal";
    displayName?: string | undefined;
    description?: string | undefined;
    isRequired?: boolean | undefined;
    defaultValue?: unknown;
    validationRules?: object | undefined;
    options?: unknown[] | undefined;
}, {}>;
export declare const updateAttributeRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    displayName?: string | undefined;
    description?: string | undefined;
    isRequired?: boolean | undefined;
    defaultValue?: unknown;
    validationRules?: object | undefined;
    options?: unknown[] | undefined;
}, {}>;
export declare const setAttributeValueRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    entityId: string;
    entityType: string;
    attributeId: string;
    value?: unknown;
}, {}>;
export declare const attributeQuery: import("arktype/internal/methods/object.ts").ObjectType<{
    entityType?: string | undefined;
    dataType?: "string" | "boolean" | "date" | "integer" | "json" | "decimal" | undefined;
    isRequired?: boolean | undefined;
}, {}>;
export type Attribute = typeof attribute.infer;
export type AttributeValue = typeof attributeValue.infer;
export type CreateAttributeRequest = typeof createAttributeRequest.infer;
export type UpdateAttributeRequest = typeof updateAttributeRequest.infer;
export type SetAttributeValueRequest = typeof setAttributeValueRequest.infer;
export type AttributeQuery = typeof attributeQuery.infer;
//# sourceMappingURL=attribute.d.ts.map