import type { SalesOrder, SalesOrderItem, CreateSalesOrderRequest, UpdateSalesOrderRequest, UpdateSalesOrderStatusRequest, CreateSalesOrderItemRequest, UpdateSalesOrderItemRequest, Response } from "@prodobit/types";
import type { RequestConfig, SalesOrderQuery } from "../types";
import { BaseClient } from "./base-client";
export declare class SalesClient extends BaseClient {
    getSalesOrders(filters?: Partial<SalesOrderQuery>, config?: RequestConfig): Promise<Response<{
        data: SalesOrder[];
        pagination: any;
    }>>;
    getSalesOrderById(id: string, config?: RequestConfig): Promise<Response<SalesOrder>>;
    createSalesOrder(data: CreateSalesOrderRequest, config?: RequestConfig): Promise<Response<SalesOrder>>;
    updateSalesOrder(id: string, data: UpdateSalesOrderRequest, config?: RequestConfig): Promise<Response<SalesOrder>>;
    updateSalesOrderStatus(id: string, data: UpdateSalesOrderStatusRequest, config?: RequestConfig): Promise<Response<SalesOrder>>;
    deleteSalesOrder(id: string, config?: RequestConfig): Promise<Response<void>>;
    addSalesOrderItem(salesOrderId: string, data: CreateSalesOrderItemRequest, config?: RequestConfig): Promise<Response<SalesOrderItem>>;
    updateSalesOrderItem(salesOrderId: string, itemId: string, data: UpdateSalesOrderItemRequest, config?: RequestConfig): Promise<Response<SalesOrderItem>>;
    removeSalesOrderItem(salesOrderId: string, itemId: string, config?: RequestConfig): Promise<Response<void>>;
    getSalesOrderHistory(id: string, config?: RequestConfig): Promise<Response<any[]>>;
}
//# sourceMappingURL=sales-client.d.ts.map