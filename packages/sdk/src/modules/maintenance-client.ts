import type {
  CreateMaintenancePlanRequest,
  CreateMaintenanceRecordRequest,
  CreateCorrectiveMaintenanceRecordRequest,
  CreatePreventiveMaintenanceRecordRequest,
  MaintenancePlan,
  MaintenancePlanQuery,
  MaintenanceRecord,
  MaintenanceRecordQuery,
  MaintenanceType,
  MaintenanceRecordSource,
  Response,
  UpdateMaintenancePlanRequest,
  UpdateMaintenanceRecordRequest,
} from "@prodobit/types";
import type { RequestConfig } from "../types";
import { buildQuery } from "../utils/query-builder";
import { BaseClient } from "./base-client";

export class MaintenanceClient extends BaseClient {
  // ==========================================
  // MAINTENANCE PLANS (Sadece Preventive)
  // ==========================================

  /**
   * Get all maintenance plans with optional filters
   * Not: Planlar sadece preventive bakım için oluşturulabilir
   */
  async getPlans(
    query?: MaintenancePlanQuery,
    config?: RequestConfig
  ): Promise<Response<MaintenancePlan[]>> {
    const queryString = buildQuery(query);
    return this.request(
      "GET",
      `/api/v1/maintenance/plans${queryString ? `?${queryString}` : ""}`,
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
    return this.request("GET", `/api/v1/maintenance/plans/${id}`, undefined, config);
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
      `/api/v1/maintenance/plans/asset/${assetId}`,
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
      `/api/v1/maintenance/plans/upcoming?days=${days}`,
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
    return this.request("POST", "/api/v1/maintenance/plans", data, config);
  }

  /**
   * Update an existing maintenance plan
   */
  async updatePlan(
    id: string,
    data: UpdateMaintenancePlanRequest,
    config?: RequestConfig
  ): Promise<Response<MaintenancePlan>> {
    return this.request("PUT", `/api/v1/maintenance/plans/${id}`, data, config);
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
      `/api/v1/maintenance/plans/${id}`,
      undefined,
      config
    );
  }

  // ==========================================
  // MAINTENANCE RECORDS (Tüm Bakım Tipleri)
  // ==========================================

  /**
   * Get all maintenance records with optional filters
   * Filtreleme: type, source, assetId, issueId, maintenancePlanId
   */
  async getRecords(
    query?: MaintenanceRecordQuery,
    config?: RequestConfig
  ): Promise<Response<MaintenanceRecord[]>> {
    const queryString = buildQuery(query);
    return this.request(
      "GET",
      `/api/v1/maintenance/records${queryString ? `?${queryString}` : ""}`,
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
      `/api/v1/maintenance/records/${id}`,
      undefined,
      config
    );
  }

  /**
   * Get maintenance records by plan ID (preventive bakımlar)
   */
  async getRecordsByPlan(
    planId: string,
    config?: RequestConfig
  ): Promise<Response<MaintenanceRecord[]>> {
    return this.request(
      "GET",
      `/api/v1/maintenance/records/plan/${planId}`,
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
      `/api/v1/maintenance/records/asset/${assetId}`,
      undefined,
      config
    );
  }

  /**
   * Get maintenance records by issue ID (corrective bakımlar)
   */
  async getRecordsByIssue(
    issueId: string,
    config?: RequestConfig
  ): Promise<Response<MaintenanceRecord[]>> {
    return this.request(
      "GET",
      `/api/v1/maintenance/records?issueId=${issueId}`,
      undefined,
      config
    );
  }

  /**
   * Get maintenance records by type
   */
  async getRecordsByType(
    type: MaintenanceType,
    config?: RequestConfig
  ): Promise<Response<MaintenanceRecord[]>> {
    return this.request(
      "GET",
      `/api/v1/maintenance/records?type=${type}`,
      undefined,
      config
    );
  }

  /**
   * Get maintenance records by source
   */
  async getRecordsBySource(
    source: MaintenanceRecordSource,
    config?: RequestConfig
  ): Promise<Response<MaintenanceRecord[]>> {
    return this.request(
      "GET",
      `/api/v1/maintenance/records?source=${source}`,
      undefined,
      config
    );
  }

  /**
   * Create a new maintenance record (generic)
   * Kullanım: Tüm bakım tipleri için genel metod
   */
  async createRecord(
    data: CreateMaintenanceRecordRequest,
    config?: RequestConfig
  ): Promise<Response<MaintenanceRecord>> {
    return this.request("POST", "/api/v1/maintenance/records", data, config);
  }

  /**
   * Create a preventive maintenance record from a plan
   * Kullanım: Plan'dan otomatik veya manuel bakım kaydı oluşturma
   */
  async createPreventiveRecord(
    data: CreatePreventiveMaintenanceRecordRequest,
    config?: RequestConfig
  ): Promise<Response<MaintenanceRecord>> {
    return this.request("POST", "/api/v1/maintenance/records", {
      ...data,
      type: "preventive",
      source: "plan",
      assetId: data.maintenancePlanId, // Plan'dan asset bilgisi alınacak (server tarafında)
    }, config);
  }

  /**
   * Create a corrective maintenance record from an issue
   * Kullanım: Arıza/Issue'dan düzeltici bakım kaydı oluşturma
   */
  async createCorrectiveRecord(
    data: CreateCorrectiveMaintenanceRecordRequest,
    config?: RequestConfig
  ): Promise<Response<MaintenanceRecord>> {
    return this.request("POST", "/api/v1/maintenance/records", {
      ...data,
      type: "corrective",
      source: "issue",
    }, config);
  }

  /**
   * Create a manual maintenance record
   * Kullanım: Herhangi bir tip için manuel bakım kaydı oluşturma
   */
  async createManualRecord(
    data: {
      assetId: string;
      type: MaintenanceType;
      scheduledDate?: string;
      notes?: string;
      priority?: "critical" | "high" | "medium" | "low";
    },
    config?: RequestConfig
  ): Promise<Response<MaintenanceRecord>> {
    return this.request("POST", "/api/v1/maintenance/records", {
      ...data,
      source: "manual",
    }, config);
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
      `/api/v1/maintenance/records/${id}`,
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
      `/api/v1/maintenance/records/${id}`,
      undefined,
      config
    );
  }
}
