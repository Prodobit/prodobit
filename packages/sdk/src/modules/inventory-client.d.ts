import type { StockReservation, CreateStockReservationRequest, UpdateStockReservationRequest, StockReservationFilters, StockMovement, CreateStockMovementRequest, StockMovementFilters, PhysicalInventory, PhysicalInventoryItem, CreatePhysicalInventoryRequest, UpdatePhysicalInventoryRequest, UpdatePhysicalInventoryItemRequest, PhysicalInventoryFilters, StockAdjustment, StockAdjustmentItem, CreateStockAdjustmentRequest, UpdateStockAdjustmentRequest, StockAdjustmentFilters, LotGenealogy, CreateLotGenealogyRequest, LotTracking, Response, PaginatedResponse } from "@prodobit/types";
import type { RequestConfig } from "../types";
import { BaseClient } from "./base-client";
export declare class InventoryClient extends BaseClient {
    getStockReservations(filters?: StockReservationFilters, config?: RequestConfig): Promise<PaginatedResponse<StockReservation>>;
    getStockReservation(id: string, config?: RequestConfig): Promise<Response<StockReservation>>;
    createStockReservation(data: CreateStockReservationRequest, config?: RequestConfig): Promise<Response<StockReservation>>;
    updateStockReservation(id: string, data: UpdateStockReservationRequest, config?: RequestConfig): Promise<Response<StockReservation>>;
    deleteStockReservation(id: string, config?: RequestConfig): Promise<Response<void>>;
    consumeStockReservation(id: string, data: {
        quantity: number;
        notes?: string;
    }, config?: RequestConfig): Promise<Response<StockReservation>>;
    releaseStockReservation(id: string, config?: RequestConfig): Promise<Response<StockReservation>>;
    getStockMovements(filters?: StockMovementFilters, config?: RequestConfig): Promise<PaginatedResponse<StockMovement>>;
    getStockMovement(id: string, config?: RequestConfig): Promise<Response<StockMovement>>;
    createStockMovement(data: CreateStockMovementRequest, config?: RequestConfig): Promise<Response<StockMovement>>;
    getItemStockMovements(itemId: string, filters?: Omit<StockMovementFilters, 'itemId'>, config?: RequestConfig): Promise<PaginatedResponse<StockMovement>>;
    getPhysicalInventories(filters?: PhysicalInventoryFilters, config?: RequestConfig): Promise<PaginatedResponse<PhysicalInventory>>;
    getPhysicalInventory(id: string, config?: RequestConfig): Promise<Response<PhysicalInventory>>;
    createPhysicalInventory(data: CreatePhysicalInventoryRequest, config?: RequestConfig): Promise<Response<PhysicalInventory>>;
    updatePhysicalInventory(id: string, data: UpdatePhysicalInventoryRequest, config?: RequestConfig): Promise<Response<PhysicalInventory>>;
    deletePhysicalInventory(id: string, config?: RequestConfig): Promise<Response<void>>;
    startPhysicalInventory(id: string, config?: RequestConfig): Promise<Response<PhysicalInventory>>;
    completePhysicalInventory(id: string, config?: RequestConfig): Promise<Response<PhysicalInventory>>;
    cancelPhysicalInventory(id: string, config?: RequestConfig): Promise<Response<PhysicalInventory>>;
    getPhysicalInventoryItems(physicalInventoryId: string, config?: RequestConfig): Promise<PaginatedResponse<PhysicalInventoryItem>>;
    updatePhysicalInventoryItem(physicalInventoryId: string, itemId: string, data: UpdatePhysicalInventoryItemRequest, config?: RequestConfig): Promise<Response<PhysicalInventoryItem>>;
    generatePhysicalInventoryAdjustments(id: string, config?: RequestConfig): Promise<Response<StockAdjustment>>;
    getStockAdjustments(filters?: StockAdjustmentFilters, config?: RequestConfig): Promise<PaginatedResponse<StockAdjustment>>;
    getStockAdjustment(id: string, config?: RequestConfig): Promise<Response<StockAdjustment>>;
    createStockAdjustment(data: CreateStockAdjustmentRequest, config?: RequestConfig): Promise<Response<StockAdjustment>>;
    updateStockAdjustment(id: string, data: UpdateStockAdjustmentRequest, config?: RequestConfig): Promise<Response<StockAdjustment>>;
    deleteStockAdjustment(id: string, config?: RequestConfig): Promise<Response<void>>;
    approveStockAdjustment(id: string, config?: RequestConfig): Promise<Response<StockAdjustment>>;
    getStockAdjustmentItems(stockAdjustmentId: string, config?: RequestConfig): Promise<PaginatedResponse<StockAdjustmentItem>>;
    getLotGenealogies(lotId: string, config?: RequestConfig): Promise<PaginatedResponse<LotGenealogy>>;
    createLotGenealogy(data: CreateLotGenealogyRequest, config?: RequestConfig): Promise<Response<LotGenealogy>>;
    getLotChildren(lotId: string, config?: RequestConfig): Promise<PaginatedResponse<LotGenealogy>>;
    getLotParents(lotId: string, config?: RequestConfig): Promise<PaginatedResponse<LotGenealogy>>;
    getLotTrackingHistory(lotId: string, config?: RequestConfig): Promise<PaginatedResponse<StockMovement>>;
    updateLotTracking(lotId: string, data: Partial<LotTracking>, config?: RequestConfig): Promise<Response<LotTracking>>;
    quarantineLot(lotId: string, data: {
        reason: string;
        notes?: string;
    }, config?: RequestConfig): Promise<Response<LotTracking>>;
    releaseLot(lotId: string, data?: {
        notes?: string;
    }, config?: RequestConfig): Promise<Response<LotTracking>>;
    splitLot(lotId: string, data: {
        splits: Array<{
            quantity: number;
            lotNumber?: string;
            notes?: string;
        }>;
    }, config?: RequestConfig): Promise<Response<LotTracking[]>>;
    mergeLots(data: {
        parentLotIds: string[];
        newLotNumber?: string;
        notes?: string;
    }, config?: RequestConfig): Promise<Response<LotTracking>>;
    getInventoryValuation(filters?: {
        locationIds?: string[];
        itemIds?: string[];
        asOfDate?: string;
    }, config?: RequestConfig): Promise<Response<{
        totalValue: number;
        items: Array<{
            itemId: string;
            itemName: string;
            quantity: number;
            unitCost: number;
            totalValue: number;
        }>;
    }>>;
    getStockLevels(filters?: {
        locationIds?: string[];
        itemIds?: string[];
        categoryIds?: string[];
        showZeroStock?: boolean;
    }, config?: RequestConfig): Promise<PaginatedResponse<{
        itemId: string;
        itemName: string;
        locationId: string;
        locationName: string;
        availableQuantity: number;
        reservedQuantity: number;
        totalQuantity: number;
        unitOfMeasure?: string;
    }>>;
    getLowStockItems(filters?: {
        locationIds?: string[];
        categoryIds?: string[];
    }, config?: RequestConfig): Promise<PaginatedResponse<{
        itemId: string;
        itemName: string;
        locationId: string;
        locationName: string;
        currentQuantity: number;
        minimumQuantity: number;
        reorderQuantity: number;
        unitOfMeasure?: string;
    }>>;
    getExpiringLots(filters?: {
        locationIds?: string[];
        itemIds?: string[];
        daysToExpiry?: number;
    }, config?: RequestConfig): Promise<PaginatedResponse<{
        lotId: string;
        lotNumber: string;
        itemId: string;
        itemName: string;
        locationId: string;
        locationName: string;
        quantity: number;
        expirationDate: string;
        daysToExpiry: number;
    }>>;
    getStockTransactions(filters?: {
        itemId?: string;
        locationId?: string;
        transactionType?: string;
        dateFrom?: string;
        dateTo?: string;
        page?: number;
        limit?: number;
    }, config?: RequestConfig): Promise<PaginatedResponse<{
        id: string;
        itemId: string;
        locationId: string;
        lotId?: string;
        transactionType: string;
        quantity: number;
        unitCost?: number;
        totalCost?: number;
        reference?: string;
        notes?: string;
        createdAt: string;
    }>>;
    getStockStats(filters?: {
        locationIds?: string[];
        itemIds?: string[];
        dateFrom?: string;
        dateTo?: string;
    }, config?: RequestConfig): Promise<Response<{
        totalItems: number;
        totalValue: number;
        lowStockItems: number;
        outOfStockItems: number;
        topMovingItems: any[];
        stockTurnover: number;
    }>>;
    getStockAlerts(filters?: {
        type?: 'low_stock' | 'out_of_stock' | 'expiring' | 'overstock';
        locationIds?: string[];
        itemIds?: string[];
        severity?: 'low' | 'medium' | 'high';
        page?: number;
        limit?: number;
    }, config?: RequestConfig): Promise<PaginatedResponse<{
        id: string;
        type: string;
        severity: string;
        itemId: string;
        locationId?: string;
        currentQuantity: number;
        thresholdQuantity?: number;
        message: string;
        createdAt: string;
    }>>;
    performStockCycleCount(data: {
        locationId: string;
        itemIds?: string[];
        countMethod: 'full' | 'partial' | 'abc_analysis';
        scheduledDate?: string;
    }, config?: RequestConfig): Promise<Response<{
        id: string;
        locationId: string;
        countMethod: string;
        status: 'scheduled' | 'in_progress' | 'completed';
        scheduledDate?: string;
        createdAt: string;
    }>>;
}
//# sourceMappingURL=inventory-client.d.ts.map