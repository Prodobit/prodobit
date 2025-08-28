/**
 * Authentication Schemas
 */
export declare const authSchemas: {
    requestOTP: import("./validators").SchemaValidator;
    verifyOTP: import("./validators").SchemaValidator;
    refreshToken: import("./validators").SchemaValidator;
};
/**
 * Tenant Schemas
 */
export declare const tenantSchemas: {
    create: import("./validators").SchemaValidator;
    update: import("./validators").SchemaValidator;
    query: import("./validators").SchemaValidator;
};
/**
 * Party Schemas
 */
export declare const partySchemas: {
    createPerson: import("./validators").SchemaValidator;
    createOrganization: import("./validators").SchemaValidator;
    update: import("./validators").SchemaValidator;
    query: import("./validators").SchemaValidator;
};
/**
 * Item Schemas
 */
export declare const itemSchemas: {
    create: import("./validators").SchemaValidator;
    update: import("./validators").SchemaValidator;
    query: import("./validators").SchemaValidator;
};
/**
 * Location Schemas
 */
export declare const locationSchemas: {
    create: import("./validators").SchemaValidator;
    update: import("./validators").SchemaValidator;
    query: import("./validators").SchemaValidator;
};
/**
 * Asset Schemas
 */
export declare const assetSchemas: {
    create: import("./validators").SchemaValidator;
    update: import("./validators").SchemaValidator;
    query: import("./validators").SchemaValidator;
};
/**
 * Stock Schemas
 */
export declare const stockSchemas: {
    create: import("./validators").SchemaValidator;
    update: import("./validators").SchemaValidator;
    createTransaction: import("./validators").SchemaValidator;
};
/**
 * Lot Schemas
 */
export declare const lotSchemas: {
    create: import("./validators").SchemaValidator;
    update: import("./validators").SchemaValidator;
};
/**
 * BOM Schemas
 */
export declare const bomSchemas: {
    create: import("./validators").SchemaValidator;
    createComponent: import("./validators").SchemaValidator;
};
/**
 * Sales Order Schemas
 */
export declare const salesOrderSchemas: {
    create: import("./validators").SchemaValidator;
    update: import("./validators").SchemaValidator;
    updateStatus: import("./validators").SchemaValidator;
};
/**
 * Employee Schemas
 */
export declare const employeeSchemas: {
    create: import("./validators").SchemaValidator;
    update: import("./validators").SchemaValidator;
};
/**
 * Attribute Schemas
 */
export declare const attributeSchemas: {
    create: import("./validators").SchemaValidator;
    update: import("./validators").SchemaValidator;
};
/**
 * Export all schemas
 */
export declare const validationSchemas: {
    auth: {
        requestOTP: import("./validators").SchemaValidator;
        verifyOTP: import("./validators").SchemaValidator;
        refreshToken: import("./validators").SchemaValidator;
    };
    tenant: {
        create: import("./validators").SchemaValidator;
        update: import("./validators").SchemaValidator;
        query: import("./validators").SchemaValidator;
    };
    party: {
        createPerson: import("./validators").SchemaValidator;
        createOrganization: import("./validators").SchemaValidator;
        update: import("./validators").SchemaValidator;
        query: import("./validators").SchemaValidator;
    };
    item: {
        create: import("./validators").SchemaValidator;
        update: import("./validators").SchemaValidator;
        query: import("./validators").SchemaValidator;
    };
    location: {
        create: import("./validators").SchemaValidator;
        update: import("./validators").SchemaValidator;
        query: import("./validators").SchemaValidator;
    };
    asset: {
        create: import("./validators").SchemaValidator;
        update: import("./validators").SchemaValidator;
        query: import("./validators").SchemaValidator;
    };
    stock: {
        create: import("./validators").SchemaValidator;
        update: import("./validators").SchemaValidator;
        createTransaction: import("./validators").SchemaValidator;
    };
    lot: {
        create: import("./validators").SchemaValidator;
        update: import("./validators").SchemaValidator;
    };
    bom: {
        create: import("./validators").SchemaValidator;
        createComponent: import("./validators").SchemaValidator;
    };
    salesOrder: {
        create: import("./validators").SchemaValidator;
        update: import("./validators").SchemaValidator;
        updateStatus: import("./validators").SchemaValidator;
    };
    employee: {
        create: import("./validators").SchemaValidator;
        update: import("./validators").SchemaValidator;
    };
    attribute: {
        create: import("./validators").SchemaValidator;
        update: import("./validators").SchemaValidator;
    };
};
//# sourceMappingURL=schemas.d.ts.map