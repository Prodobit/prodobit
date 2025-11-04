import type {
  CreateMaintenancePlanRequest,
  CreateMaintenanceRecordRequest,
  MaintenancePlan,
  MaintenancePlanQuery,
  MaintenanceRecord,
  MaintenanceRecordQuery,
  Response,
  UpdateMaintenancePlanRequest,
  UpdateMaintenanceRecordRequest,
} from "@prodobit/types";
import type { RequestConfig } from "../types";
import { buildQuery } from "../utils/query-builder";
import { BaseClient } from "./base-client";

export class MaintenanceClient extends BaseClient {
  /**
   * Get all maintenance plans with optional filters
   */
  async getPlans(
    query?: MaintenancePlanQuery,
    config?: RequestConfig
  ): Promise<Response<MaintenancePlan[]>> {
    const queryString = buildQuery(query);
    return this.request(
      "GET",
      `/api/v1/maintenance${queryString ? `?${queryString}` : ""}`,
      undefined,
      config
    );
  }

  /**
   * Get a single maintenance plan by ID
   */
  async getPlanById(
    id: string,
    config?: RequestConfig
  ): Promise<Response<MaintenancePlan>> {
    return this.request("GET", `/api/v1/maintenance/${id}`, undefined, config);
  }

  /**
   * Get maintenance plans by asset ID
   */
  async getPlansByAsset(
    assetId: string,
    config?: RequestConfig
  ): Promise<Response<MaintenancePlan[]>> {
    return this.request(
      "GET",
      `/api/v1/maintenance/asset/${assetId}`,
      undefined,
      config
    );
  }

  /**
   * Get upcoming maintenance plans
   */
  async getUpcomingPlans(
    days: number,
    config?: RequestConfig
  ): Promise<Response<MaintenancePlan[]>> {
    return this.request(
      "GET",
      `/api/v1/maintenance/upcoming?days=${days}`,
      undefined,
      config
    );
  }

  /**
   * Create a new maintenance plan
   */
  async createPlan(
    data: CreateMaintenancePlanRequest,
    config?: RequestConfig
  ): Promise<Response<MaintenancePlan>> {
    return this.request("POST", "/api/v1/maintenance", data, config);
  }

  /**
   * Update an existing maintenance plan
   */
  async updatePlan(
    id: string,
    data: UpdateMaintenancePlanRequest,
    config?: RequestConfig
  ): Promise<Response<MaintenancePlan>> {
    return this.request("PUT", `/api/v1/maintenance/${id}`, data, config);
  }

  /**
   * Delete a maintenance plan
   */
  async deletePlan(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.request(
      "DELETE",
      `/api/v1/maintenance/${id}`,
      undefined,
      config
    );
  }

  // Maintenance Records

  /**
   * Get all maintenance records with optional filters
   */
  async getRecords(
    query?: MaintenanceRecordQuery,
    config?: RequestConfig
  ): Promise<Response<MaintenanceRecord[]>> {
    const queryString = buildQuery(query);
    return this.request(
      "GET",
      `/api/v1/maintenance-records${queryString ? `?${queryString}` : ""}`,
      undefined,
      config
    );
  }

  /**
   * Get a single maintenance record by ID
   */
  async getRecordById(
    id: string,
    config?: RequestConfig
  ): Promise<Response<MaintenanceRecord>> {
    return this.request(
      "GET",
      `/api/v1/maintenance-records/${id}`,
      undefined,
      config
    );
  }

  /**
   * Get maintenance records by plan ID
   */
  async getRecordsByPlan(
    planId: string,
    config?: RequestConfig
  ): Promise<Response<MaintenanceRecord[]>> {
    return this.request(
      "GET",
      `/api/v1/maintenance-records/plan/${planId}`,
      undefined,
      config
    );
  }

  /**
   * Get maintenance records by asset ID
   */
  async getRecordsByAsset(
    assetId: string,
    config?: RequestConfig
  ): Promise<Response<MaintenanceRecord[]>> {
    return this.request(
      "GET",
      `/api/v1/maintenance-records/asset/${assetId}`,
      undefined,
      config
    );
  }

  /**
   * Create a new maintenance record
   */
  async createRecord(
    data: CreateMaintenanceRecordRequest,
    config?: RequestConfig
  ): Promise<Response<MaintenanceRecord>> {
    return this.request("POST", "/api/v1/maintenance-records", data, config);
  }

  /**
   * Update an existing maintenance record
   */
  async updateRecord(
    id: string,
    data: UpdateMaintenanceRecordRequest,
    config?: RequestConfig
  ): Promise<Response<MaintenanceRecord>> {
    return this.request(
      "PUT",
      `/api/v1/maintenance-records/${id}`,
      data,
      config
    );
  }

  /**
   * Delete a maintenance record
   */
  async deleteRecord(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.request(
      "DELETE",
      `/api/v1/maintenance-records/${id}`,
      undefined,
      config
    );
  }
}
