import type {
  SalesOrder,
  SalesOrderItem,
  CreateSalesOrderRequest,
  UpdateSalesOrderRequest,
  UpdateSalesOrderStatusRequest,
  CreateSalesOrderItemRequest,
  UpdateSalesOrderItemRequest,
  Response,
} from "@prodobit/types";
import {
  createSalesOrderRequest,
  updateSalesOrderRequest,
  updateSalesOrderStatusRequest,
  createSalesOrderItemRequest,
  updateSalesOrderItemRequest,
} from "@prodobit/types";
import type { RequestConfig, SalesOrderQuery } from "../types";
import { BaseClient } from "./base-client";
import { validateRequest } from "../utils/validation";
import { buildQuery } from "../utils/query-builder";

export class SalesClient extends BaseClient {
  // Sales Order Methods
  async getSalesOrders(
    filters?: Partial<SalesOrderQuery>,
    config?: RequestConfig
  ): Promise<Response<{ data: SalesOrder[]; pagination: any }>> {
    const query = buildQuery(filters);
    return this.request("GET", `/api/v1/sales-orders${query}`, undefined, config);
  }

  async getSalesOrderById(
    id: string,
    config?: RequestConfig
  ): Promise<Response<SalesOrder>> {
    return this.request("GET", `/api/v1/sales-orders/${id}`, undefined, config);
  }

  async createSalesOrder(
    data: CreateSalesOrderRequest,
    config?: RequestConfig
  ): Promise<Response<SalesOrder>> {
    const validatedData = validateRequest(createSalesOrderRequest, data);
    return this.request("POST", "/api/v1/sales-orders", validatedData, config);
  }

  async updateSalesOrder(
    id: string,
    data: UpdateSalesOrderRequest,
    config?: RequestConfig
  ): Promise<Response<SalesOrder>> {
    const validatedData = validateRequest(updateSalesOrderRequest, data);
    return this.request("PUT", `/api/v1/sales-orders/${id}`, validatedData, config);
  }

  async updateSalesOrderStatus(
    id: string,
    data: UpdateSalesOrderStatusRequest,
    config?: RequestConfig
  ): Promise<Response<SalesOrder>> {
    const validatedData = validateRequest(updateSalesOrderStatusRequest, data);
    return this.request("PUT", `/api/v1/sales-orders/${id}/status`, validatedData, config);
  }

  async deleteSalesOrder(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.request("DELETE", `/api/v1/sales-orders/${id}`, undefined, config);
  }

  // Sales Order Item Methods
  async addSalesOrderItem(
    salesOrderId: string,
    data: CreateSalesOrderItemRequest,
    config?: RequestConfig
  ): Promise<Response<SalesOrderItem>> {
    const validatedData = validateRequest(createSalesOrderItemRequest, data);
    return this.request("POST", `/api/v1/sales-orders/${salesOrderId}/items`, validatedData, config);
  }

  async updateSalesOrderItem(
    salesOrderId: string,
    itemId: string,
    data: UpdateSalesOrderItemRequest,
    config?: RequestConfig
  ): Promise<Response<SalesOrderItem>> {
    const validatedData = validateRequest(updateSalesOrderItemRequest, data);
    return this.request("PUT", `/api/v1/sales-orders/${salesOrderId}/items/${itemId}`, validatedData, config);
  }

  async removeSalesOrderItem(
    salesOrderId: string,
    itemId: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.request("DELETE", `/api/v1/sales-orders/${salesOrderId}/items/${itemId}`, undefined, config);
  }

  async getSalesOrderHistory(
    id: string,
    config?: RequestConfig
  ): Promise<Response<any[]>> {
    return this.request("GET", `/api/v1/sales-orders/${id}/history`, undefined, config);
  }
}