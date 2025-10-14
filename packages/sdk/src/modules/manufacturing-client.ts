import type {
  Bom,
  CreateBomRequest,
  UpdateBomRequest,
  CreateBomComponentRequest,
  Eco,
  CreateEcoRequest,
  UpdateEcoRequest,
  RejectEcoRequest,
  CloneBomRequest,
  MrpRequirementsRequest,
  BomQuery,
  EcoQuery,
  Response,
} from "@prodobit/types";
import {
  createBomRequest,
  updateBomRequest,
  createBomComponentRequest,
  createEcoRequest,
  updateEcoRequest,
  rejectEcoRequest,
  cloneBomRequest,
  mrpRequirementsRequest,
} from "@prodobit/types";
import type { RequestConfig } from "../types";
import { BaseClient } from "./base-client";
import { validateRequest } from "../utils/validation";
import { buildQuery } from "../utils/query-builder";

export class ManufacturingClient extends BaseClient {
  // BOM Methods
  async getBoms(
    filters?: Partial<BomQuery>,
    config?: RequestConfig
  ): Promise<Response<Bom[]>> {
    const query = buildQuery(filters);
    return this.request("GET", `/api/v1/boms${query ? `?${query}` : ''}`, undefined, config);
  }

  async getBomById(
    id: string,
    config?: RequestConfig
  ): Promise<Response<Bom>> {
    return this.request("GET", `/api/v1/boms/${id}`, undefined, config);
  }

  async createBom(
    data: CreateBomRequest,
    config?: RequestConfig
  ): Promise<Response<Bom>> {
    const validatedData = validateRequest(createBomRequest, data);
    return this.request("POST", "/api/v1/boms", validatedData, config);
  }

  async updateBom(
    id: string,
    data: UpdateBomRequest,
    config?: RequestConfig
  ): Promise<Response<Bom>> {
    const validatedData = validateRequest(updateBomRequest, data);
    return this.request("PUT", `/api/v1/boms/${id}`, validatedData, config);
  }

  async deleteBom(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.request("DELETE", `/api/v1/boms/${id}`, undefined, config);
  }

  async getBomExplosion(
    id: string,
    explodePhantoms = true,
    config?: RequestConfig
  ): Promise<Response<any[]>> {
    const query = explodePhantoms ? "?explodePhantoms=true" : "?explodePhantoms=false";
    return this.request("GET", `/api/v1/boms/${id}/explosion${query}`, undefined, config);
  }

  async cloneBom(
    id: string,
    data: CloneBomRequest,
    config?: RequestConfig
  ): Promise<Response<Bom>> {
    const validatedData = validateRequest(cloneBomRequest, data);
    return this.request("POST", `/api/v1/boms/${id}/clone`, validatedData, config);
  }

  // BOM Component Methods
  async addBomComponent(
    data: CreateBomComponentRequest,
    config?: RequestConfig
  ): Promise<Response<any>> {
    const validatedData = validateRequest(createBomComponentRequest, data);
    return this.request("POST", "/api/v1/bom-components", validatedData, config);
  }

  async getBomComponents(
    filters?: { bomId?: string; itemId?: string; page?: number; limit?: number },
    config?: RequestConfig
  ): Promise<Response<any[]>> {
    const query = buildQuery(filters);
    return this.request("GET", `/api/v1/bom-components${query ? `?${query}` : ''}`, undefined, config);
  }

  async updateBomComponent(
    id: string,
    data: {
      quantity?: number;
      scrapRate?: number;
      operationSequence?: number;
      notes?: string;
      isOptional?: boolean;
    },
    config?: RequestConfig
  ): Promise<Response<any>> {
    return this.request("PUT", `/api/v1/bom-components/${id}`, data, config);
  }

  async deleteBomComponent(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.request("DELETE", `/api/v1/bom-components/${id}`, undefined, config);
  }

  // ECO Methods
  async getEcos(
    filters?: Partial<EcoQuery>,
    config?: RequestConfig
  ): Promise<Response<Eco[]>> {
    const query = buildQuery(filters);
    return this.request("GET", `/api/v1/ecos${query ? `?${query}` : ''}`, undefined, config);
  }

  async getEcoById(
    id: string,
    config?: RequestConfig
  ): Promise<Response<Eco>> {
    return this.request("GET", `/api/v1/ecos/${id}`, undefined, config);
  }

  async createEco(
    data: CreateEcoRequest,
    config?: RequestConfig
  ): Promise<Response<Eco>> {
    const validatedData = validateRequest(createEcoRequest, data);
    return this.request("POST", "/api/v1/ecos", validatedData, config);
  }

  async updateEco(
    id: string,
    data: UpdateEcoRequest,
    config?: RequestConfig
  ): Promise<Response<Eco>> {
    const validatedData = validateRequest(updateEcoRequest, data);
    return this.request("PUT", `/api/v1/ecos/${id}`, validatedData, config);
  }

  async approveEco(
    id: string,
    config?: RequestConfig
  ): Promise<Response<Eco>> {
    return this.request("POST", `/api/v1/ecos/${id}/approve`, undefined, config);
  }

  async rejectEco(
    id: string,
    data: RejectEcoRequest,
    config?: RequestConfig
  ): Promise<Response<Eco>> {
    const validatedData = validateRequest(rejectEcoRequest, data);
    return this.request("POST", `/api/v1/ecos/${id}/reject`, validatedData, config);
  }

  // MRP Methods
  async runMrpRequirements(
    data: MrpRequirementsRequest,
    config?: RequestConfig
  ): Promise<Response<any[]>> {
    const validatedData = validateRequest(mrpRequirementsRequest, data);
    return this.request("POST", "/api/v1/mrp/requirements", validatedData, config);
  }

  // BOM Analytics Methods
  async getBomLeadTime(
    bomId: string,
    config?: RequestConfig
  ): Promise<Response<{ leadTime: number; criticalPath: any[] }>> {
    return this.request("GET", `/api/v1/boms/${bomId}/lead-time`, undefined, config);
  }

  async getBomStats(
    filters?: { itemId?: string; dateFrom?: string; dateTo?: string },
    config?: RequestConfig
  ): Promise<Response<{
    totalBoms: number;
    activeBoms: number;
    draftBoms: number;
    mostUsedComponents: any[];
    costAnalysis: any;
  }>> {
    const query = buildQuery(filters);
    return this.request("GET", `/api/v1/boms/stats${query ? `?${query}` : ''}`, undefined, config);
  }

  // BOM Quick Creation
  async createBomQuick(
    data: {
      itemId: string;
      bomCode: string;
      name: string;
      components: Array<{
        itemId: string;
        quantity: number;
        unit?: string;
      }>;
    },
    config?: RequestConfig
  ): Promise<Response<Bom>> {
    return this.request("POST", "/api/v1/boms/quick", data, config);
  }
}