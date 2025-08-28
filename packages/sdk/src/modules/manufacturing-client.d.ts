import type { Bom, CreateBomRequest, UpdateBomRequest, CreateBomComponentRequest, Eco, CreateEcoRequest, UpdateEcoRequest, RejectEcoRequest, CloneBomRequest, MrpRequirementsRequest, BomQuery, EcoQuery, Response } from "@prodobit/types";
import type { RequestConfig } from "../types";
import { BaseClient } from "./base-client";
export declare class ManufacturingClient extends BaseClient {
    getBoms(filters?: Partial<BomQuery>, config?: RequestConfig): Promise<Response<Bom[]>>;
    getBomById(id: string, config?: RequestConfig): Promise<Response<Bom>>;
    createBom(data: CreateBomRequest, config?: RequestConfig): Promise<Response<Bom>>;
    updateBom(id: string, data: UpdateBomRequest, config?: RequestConfig): Promise<Response<Bom>>;
    deleteBom(id: string, config?: RequestConfig): Promise<Response<void>>;
    getBomExplosion(id: string, explodePhantoms?: boolean, config?: RequestConfig): Promise<Response<any[]>>;
    cloneBom(id: string, data: CloneBomRequest, config?: RequestConfig): Promise<Response<Bom>>;
    addBomComponent(data: CreateBomComponentRequest, config?: RequestConfig): Promise<Response<any>>;
    getBomComponents(filters?: {
        bomId?: string;
        itemId?: string;
        page?: number;
        limit?: number;
    }, config?: RequestConfig): Promise<Response<any[]>>;
    updateBomComponent(id: string, data: {
        quantity?: number;
        scrapRate?: number;
        operationSequence?: number;
        notes?: string;
        isOptional?: boolean;
    }, config?: RequestConfig): Promise<Response<any>>;
    deleteBomComponent(id: string, config?: RequestConfig): Promise<Response<void>>;
    getEcos(filters?: Partial<EcoQuery>, config?: RequestConfig): Promise<Response<Eco[]>>;
    getEcoById(id: string, config?: RequestConfig): Promise<Response<Eco>>;
    createEco(data: CreateEcoRequest, config?: RequestConfig): Promise<Response<Eco>>;
    updateEco(id: string, data: UpdateEcoRequest, config?: RequestConfig): Promise<Response<Eco>>;
    approveEco(id: string, config?: RequestConfig): Promise<Response<Eco>>;
    rejectEco(id: string, data: RejectEcoRequest, config?: RequestConfig): Promise<Response<Eco>>;
    runMrpRequirements(data: MrpRequirementsRequest, config?: RequestConfig): Promise<Response<any[]>>;
    getBomLeadTime(bomId: string, config?: RequestConfig): Promise<Response<{
        leadTime: number;
        criticalPath: any[];
    }>>;
    getBomStats(filters?: {
        itemId?: string;
        dateFrom?: string;
        dateTo?: string;
    }, config?: RequestConfig): Promise<Response<{
        totalBoms: number;
        activeBoms: number;
        draftBoms: number;
        mostUsedComponents: any[];
        costAnalysis: any;
    }>>;
    createBomQuick(data: {
        itemId: string;
        bomCode: string;
        name: string;
        components: Array<{
            itemId: string;
            quantity: number;
            unit?: string;
        }>;
    }, config?: RequestConfig): Promise<Response<Bom>>;
}
//# sourceMappingURL=manufacturing-client.d.ts.map