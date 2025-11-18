export declare const salesOrderStatus: import("arktype/internal/methods/string.ts").StringType<"closed" | "draft" | "confirmed" | "in_progress" | "shipped" | "delivered" | "cancelled", {}>;
export declare const salesOrderItem: import("arktype/internal/methods/object.ts").ObjectType<{
    itemId: string;
    quantity: number;
    unitPrice: number;
    unit?: string | undefined;
    requestedDeliveryDate?: string | undefined;
    itemNotes?: string | undefined;
}, {}>;
export declare const createSalesOrderItemRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    itemId: string;
    quantity: number;
    unitPrice: number;
    unit?: string | undefined;
    requestedDeliveryDate?: string | undefined;
    itemNotes?: string | undefined;
}, {}>;
export declare const updateSalesOrderItemRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    quantity?: number | undefined;
    unitPrice?: number | undefined;
    unit?: string | undefined;
    requestedDeliveryDate?: string | undefined;
    confirmedDeliveryDate?: string | undefined;
    itemNotes?: string | undefined;
}, {}>;
export declare const salesOrder: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    tenantId: string;
    customerId: string;
    orderDate: string;
    status: "closed" | "draft" | "confirmed" | "in_progress" | "shipped" | "delivered" | "cancelled";
    insertedAt: string;
    updatedAt: string;
    requestedDeliveryDate?: string | undefined;
    confirmedDeliveryDate?: string | undefined;
    shippingAddressId?: string | undefined;
    shippingInstructions?: string | undefined;
    notes?: string | undefined;
    deletedAt?: string | undefined;
}, {}>;
export declare const createSalesOrderRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    customerId: string;
    orderDate: string;
    items: {
        itemId: string;
        quantity: number;
        unitPrice: number;
        unit?: string | undefined;
        requestedDeliveryDate?: string | undefined;
        itemNotes?: string | undefined;
    }[];
    requestedDeliveryDate?: string | undefined;
    shippingAddressId?: string | undefined;
    shippingInstructions?: string | undefined;
    notes?: string | undefined;
}, {}>;
export declare const updateSalesOrderRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    customerId?: string | undefined;
    requestedDeliveryDate?: string | undefined;
    confirmedDeliveryDate?: string | undefined;
    shippingAddressId?: string | undefined;
    shippingInstructions?: string | undefined;
    notes?: string | undefined;
}, {}>;
export declare const updateSalesOrderStatusRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    status: "closed" | "draft" | "confirmed" | "in_progress" | "shipped" | "delivered" | "cancelled";
    changeReason?: string | undefined;
    notes?: string | undefined;
}, {}>;
export type SalesOrderStatus = typeof salesOrderStatus.infer;
export type SalesOrder = typeof salesOrder.infer;
export type SalesOrderItem = typeof salesOrderItem.infer;
export type CreateSalesOrderRequest = typeof createSalesOrderRequest.infer;
export type UpdateSalesOrderRequest = typeof updateSalesOrderRequest.infer;
export type UpdateSalesOrderStatusRequest = typeof updateSalesOrderStatusRequest.infer;
export type CreateSalesOrderItemRequest = typeof createSalesOrderItemRequest.infer;
export type UpdateSalesOrderItemRequest = typeof updateSalesOrderItemRequest.infer;
//# sourceMappingURL=sales.d.ts.map