import type {
  CalibrationPlan,
  CalibrationPlanQuery,
  CalibrationRecord,
  CalibrationRecordQuery,
  CreateCalibrationPlanRequest,
  CreateCalibrationRecordRequest,
  Response,
  UpdateCalibrationPlanRequest,
  UpdateCalibrationRecordRequest,
} from "@prodobit/types";
import type { RequestConfig } from "../types";
import { buildQuery } from "../utils/query-builder";
import { BaseClient } from "./base-client";

export class CalibrationClient extends BaseClient {
  /**
   * Get all calibration plans with optional filters
   */
  async getPlans(
    query?: CalibrationPlanQuery,
    config?: RequestConfig
  ): Promise<Response<CalibrationPlan[]>> {
    const queryString = buildQuery(query);
    return this.request(
      "GET",
      `/api/v1/calibration${queryString ? `?${queryString}` : ""}`,
      undefined,
      config
    );
  }

  /**
   * Get a single calibration plan by ID
   */
  async getPlanById(
    id: string,
    config?: RequestConfig
  ): Promise<Response<CalibrationPlan>> {
    return this.request("GET", `/api/v1/calibration/${id}`, undefined, config);
  }

  /**
   * Get calibration plans by asset ID
   */
  async getPlansByAsset(
    assetId: string,
    config?: RequestConfig
  ): Promise<Response<CalibrationPlan[]>> {
    return this.request(
      "GET",
      `/api/v1/calibration/asset/${assetId}`,
      undefined,
      config
    );
  }

  /**
   * Get upcoming calibration plans
   */
  async getUpcomingPlans(
    days: number,
    config?: RequestConfig
  ): Promise<Response<CalibrationPlan[]>> {
    return this.request(
      "GET",
      `/api/v1/calibration/upcoming?days=${days}`,
      undefined,
      config
    );
  }

  /**
   * Get overdue calibration plans
   */
  async getOverduePlans(
    config?: RequestConfig
  ): Promise<Response<CalibrationPlan[]>> {
    return this.request(
      "GET",
      "/api/v1/calibration/overdue",
      undefined,
      config
    );
  }

  /**
   * Create a new calibration plan
   */
  async createPlan(
    data: CreateCalibrationPlanRequest,
    config?: RequestConfig
  ): Promise<Response<CalibrationPlan>> {
    return this.request("POST", "/api/v1/calibration", data, config);
  }

  /**
   * Update an existing calibration plan
   */
  async updatePlan(
    id: string,
    data: UpdateCalibrationPlanRequest,
    config?: RequestConfig
  ): Promise<Response<CalibrationPlan>> {
    return this.request("PUT", `/api/v1/calibration/${id}`, data, config);
  }

  /**
   * Delete a calibration plan
   */
  async deletePlan(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.request(
      "DELETE",
      `/api/v1/calibration/${id}`,
      undefined,
      config
    );
  }

  // Calibration Records

  /**
   * Get all calibration records with optional filters
   */
  async getRecords(
    query?: CalibrationRecordQuery,
    config?: RequestConfig
  ): Promise<Response<CalibrationRecord[]>> {
    const queryString = buildQuery(query);
    return this.request(
      "GET",
      `/api/v1/calibration-records${queryString ? `?${queryString}` : ""}`,
      undefined,
      config
    );
  }

  /**
   * Get a single calibration record by ID
   */
  async getRecordById(
    id: string,
    config?: RequestConfig
  ): Promise<Response<CalibrationRecord>> {
    return this.request(
      "GET",
      `/api/v1/calibration-records/${id}`,
      undefined,
      config
    );
  }

  /**
   * Get calibration records by plan ID
   */
  async getRecordsByPlan(
    planId: string,
    config?: RequestConfig
  ): Promise<Response<CalibrationRecord[]>> {
    return this.request(
      "GET",
      `/api/v1/calibration-records/plan/${planId}`,
      undefined,
      config
    );
  }

  /**
   * Get calibration records by asset ID
   */
  async getRecordsByAsset(
    assetId: string,
    config?: RequestConfig
  ): Promise<Response<CalibrationRecord[]>> {
    return this.request(
      "GET",
      `/api/v1/calibration-records/asset/${assetId}`,
      undefined,
      config
    );
  }

  /**
   * Get expiring certificates
   */
  async getExpiringCertificates(
    days: number,
    config?: RequestConfig
  ): Promise<Response<CalibrationRecord[]>> {
    return this.request(
      "GET",
      `/api/v1/calibration-records/expiring-certificates?days=${days}`,
      undefined,
      config
    );
  }

  /**
   * Create a new calibration record
   */
  async createRecord(
    data: CreateCalibrationRecordRequest,
    config?: RequestConfig
  ): Promise<Response<CalibrationRecord>> {
    return this.request("POST", "/api/v1/calibration-records", data, config);
  }

  /**
   * Update an existing calibration record
   */
  async updateRecord(
    id: string,
    data: UpdateCalibrationRecordRequest,
    config?: RequestConfig
  ): Promise<Response<CalibrationRecord>> {
    return this.request(
      "PUT",
      `/api/v1/calibration-records/${id}`,
      data,
      config
    );
  }

  /**
   * Delete a calibration record
   */
  async deleteRecord(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.request(
      "DELETE",
      `/api/v1/calibration-records/${id}`,
      undefined,
      config
    );
  }
}
