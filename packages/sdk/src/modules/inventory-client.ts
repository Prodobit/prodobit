import type {
  StockReservation,
  CreateStockReservationRequest,
  UpdateStockReservationRequest,
  StockReservationFilters,
  StockMovement,
  CreateStockMovementRequest,
  StockMovementFilters,
  PhysicalInventory,
  PhysicalInventoryItem,
  CreatePhysicalInventoryRequest,
  UpdatePhysicalInventoryRequest,
  UpdatePhysicalInventoryItemRequest,
  PhysicalInventoryFilters,
  StockAdjustment,
  StockAdjustmentItem,
  CreateStockAdjustmentRequest,
  UpdateStockAdjustmentRequest,
  StockAdjustmentFilters,
  LotGenealogy,
  CreateLotGenealogyRequest,
  LotTracking,
  Response,
  PaginatedResponse,
} from "@prodobit/types";
import type { RequestConfig } from "../types";
import { BaseClient } from "./base-client";

export class InventoryClient extends BaseClient {
  // Stock Reservations
  async getStockReservations(
    filters?: StockReservationFilters,
    config?: RequestConfig
  ): Promise<PaginatedResponse<StockReservation>> {
    const params = new URLSearchParams();
    if (filters) {
      Object.entries(filters).forEach(([key, value]) => {
        if (value !== undefined && value !== null) {
          if (Array.isArray(value)) {
            value.forEach((v) => params.append(key, String(v)));
          } else {
            params.append(key, String(value));
          }
        }
      });
    }

    const queryString = params.toString();
    const url = queryString ? `/api/v1/stock-reservations?${queryString}` : "/api/v1/stock-reservations";

    return this.request("GET", url, undefined, config);
  }

  async getStockReservation(
    id: string,
    config?: RequestConfig
  ): Promise<Response<StockReservation>> {
    return this.request("GET", `/api/v1/stock-reservations/${id}`, undefined, config);
  }

  async createStockReservation(
    data: CreateStockReservationRequest,
    config?: RequestConfig
  ): Promise<Response<StockReservation>> {
    return this.request("POST", "/api/v1/stock-reservations", data, config);
  }

  async updateStockReservation(
    id: string,
    data: UpdateStockReservationRequest,
    config?: RequestConfig
  ): Promise<Response<StockReservation>> {
    return this.request("PUT", `/api/v1/stock-reservations/${id}`, data, config);
  }

  async deleteStockReservation(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.request("DELETE", `/api/v1/stock-reservations/${id}`, undefined, config);
  }

  async consumeStockReservation(
    id: string,
    data: { quantity: number; notes?: string },
    config?: RequestConfig
  ): Promise<Response<StockReservation>> {
    return this.request("POST", `/api/v1/stock-reservations/${id}/consume`, data, config);
  }

  async releaseStockReservation(
    id: string,
    config?: RequestConfig
  ): Promise<Response<StockReservation>> {
    return this.request("POST", `/api/v1/stock-reservations/${id}/release`, undefined, config);
  }

  // Stock Movements
  async getStockMovements(
    filters?: StockMovementFilters,
    config?: RequestConfig
  ): Promise<PaginatedResponse<StockMovement>> {
    const params = new URLSearchParams();
    if (filters) {
      Object.entries(filters).forEach(([key, value]) => {
        if (value !== undefined && value !== null) {
          if (Array.isArray(value)) {
            value.forEach((v) => params.append(key, String(v)));
          } else {
            params.append(key, String(value));
          }
        }
      });
    }

    const queryString = params.toString();
    const url = queryString ? `/api/v1/stock-movements?${queryString}` : "/api/v1/stock-movements";

    return this.request("GET", url, undefined, config);
  }

  async getStockMovement(
    id: string,
    config?: RequestConfig
  ): Promise<Response<StockMovement>> {
    return this.request("GET", `/api/v1/stock-movements/${id}`, undefined, config);
  }

  async createStockMovement(
    data: CreateStockMovementRequest,
    config?: RequestConfig
  ): Promise<Response<StockMovement>> {
    return this.request("POST", "/api/v1/stock-movements", data, config);
  }

  async getItemStockMovements(
    itemId: string,
    filters?: Omit<StockMovementFilters, 'itemId'>,
    config?: RequestConfig
  ): Promise<PaginatedResponse<StockMovement>> {
    const params = new URLSearchParams();
    if (filters) {
      Object.entries(filters).forEach(([key, value]) => {
        if (value !== undefined && value !== null) {
          if (Array.isArray(value)) {
            value.forEach((v) => params.append(key, String(v)));
          } else {
            params.append(key, String(value));
          }
        }
      });
    }

    const queryString = params.toString();
    const url = queryString ? `/api/v1/items/${itemId}/stock-movements?${queryString}` : `/api/v1/items/${itemId}/stock-movements`;

    return this.request("GET", url, undefined, config);
  }

  // Physical Inventory
  async getPhysicalInventories(
    filters?: PhysicalInventoryFilters,
    config?: RequestConfig
  ): Promise<PaginatedResponse<PhysicalInventory>> {
    const params = new URLSearchParams();
    if (filters) {
      Object.entries(filters).forEach(([key, value]) => {
        if (value !== undefined && value !== null) {
          if (Array.isArray(value)) {
            value.forEach((v) => params.append(key, String(v)));
          } else {
            params.append(key, String(value));
          }
        }
      });
    }

    const queryString = params.toString();
    const url = queryString ? `/api/v1/physical-inventories?${queryString}` : "/api/v1/physical-inventories";

    return this.request("GET", url, undefined, config);
  }

  async getPhysicalInventory(
    id: string,
    config?: RequestConfig
  ): Promise<Response<PhysicalInventory>> {
    return this.request("GET", `/api/v1/physical-inventories/${id}`, undefined, config);
  }

  async createPhysicalInventory(
    data: CreatePhysicalInventoryRequest,
    config?: RequestConfig
  ): Promise<Response<PhysicalInventory>> {
    return this.request("POST", "/api/v1/physical-inventories", data, config);
  }

  async updatePhysicalInventory(
    id: string,
    data: UpdatePhysicalInventoryRequest,
    config?: RequestConfig
  ): Promise<Response<PhysicalInventory>> {
    return this.request("PUT", `/api/v1/physical-inventories/${id}`, data, config);
  }

  async deletePhysicalInventory(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.request("DELETE", `/api/v1/physical-inventories/${id}`, undefined, config);
  }

  async startPhysicalInventory(
    id: string,
    config?: RequestConfig
  ): Promise<Response<PhysicalInventory>> {
    return this.request("POST", `/api/v1/physical-inventories/${id}/start`, undefined, config);
  }

  async completePhysicalInventory(
    id: string,
    config?: RequestConfig
  ): Promise<Response<PhysicalInventory>> {
    return this.request("POST", `/api/v1/physical-inventories/${id}/complete`, undefined, config);
  }

  async cancelPhysicalInventory(
    id: string,
    config?: RequestConfig
  ): Promise<Response<PhysicalInventory>> {
    return this.request("POST", `/api/v1/physical-inventories/${id}/cancel`, undefined, config);
  }

  // Physical Inventory Items
  async getPhysicalInventoryItems(
    physicalInventoryId: string,
    config?: RequestConfig
  ): Promise<PaginatedResponse<PhysicalInventoryItem>> {
    return this.request("GET", `/api/v1/physical-inventories/${physicalInventoryId}/items`, undefined, config);
  }

  async updatePhysicalInventoryItem(
    physicalInventoryId: string,
    itemId: string,
    data: UpdatePhysicalInventoryItemRequest,
    config?: RequestConfig
  ): Promise<Response<PhysicalInventoryItem>> {
    return this.request("PUT", `/api/v1/physical-inventories/${physicalInventoryId}/items/${itemId}`, data, config);
  }

  async generatePhysicalInventoryAdjustments(
    id: string,
    config?: RequestConfig
  ): Promise<Response<StockAdjustment>> {
    return this.request("POST", `/api/v1/physical-inventories/${id}/generate-adjustments`, undefined, config);
  }

  // Stock Adjustments
  async getStockAdjustments(
    filters?: StockAdjustmentFilters,
    config?: RequestConfig
  ): Promise<PaginatedResponse<StockAdjustment>> {
    const params = new URLSearchParams();
    if (filters) {
      Object.entries(filters).forEach(([key, value]) => {
        if (value !== undefined && value !== null) {
          if (Array.isArray(value)) {
            value.forEach((v) => params.append(key, String(v)));
          } else {
            params.append(key, String(value));
          }
        }
      });
    }

    const queryString = params.toString();
    const url = queryString ? `/api/v1/stock-adjustments?${queryString}` : "/api/v1/stock-adjustments";

    return this.request("GET", url, undefined, config);
  }

  async getStockAdjustment(
    id: string,
    config?: RequestConfig
  ): Promise<Response<StockAdjustment>> {
    return this.request("GET", `/api/v1/stock-adjustments/${id}`, undefined, config);
  }

  async createStockAdjustment(
    data: CreateStockAdjustmentRequest,
    config?: RequestConfig
  ): Promise<Response<StockAdjustment>> {
    return this.request("POST", "/api/v1/stock-adjustments", data, config);
  }

  async updateStockAdjustment(
    id: string,
    data: UpdateStockAdjustmentRequest,
    config?: RequestConfig
  ): Promise<Response<StockAdjustment>> {
    return this.request("PUT", `/api/v1/stock-adjustments/${id}`, data, config);
  }

  async deleteStockAdjustment(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.request("DELETE", `/api/v1/stock-adjustments/${id}`, undefined, config);
  }

  async approveStockAdjustment(
    id: string,
    config?: RequestConfig
  ): Promise<Response<StockAdjustment>> {
    return this.request("POST", `/api/v1/stock-adjustments/${id}/approve`, undefined, config);
  }

  async getStockAdjustmentItems(
    stockAdjustmentId: string,
    config?: RequestConfig
  ): Promise<PaginatedResponse<StockAdjustmentItem>> {
    return this.request("GET", `/api/v1/stock-adjustments/${stockAdjustmentId}/items`, undefined, config);
  }

  // Lot Genealogy
  async getLotGenealogies(
    lotId: string,
    config?: RequestConfig
  ): Promise<PaginatedResponse<LotGenealogy>> {
    return this.request("GET", `/api/v1/lots/${lotId}/genealogy`, undefined, config);
  }

  async createLotGenealogy(
    data: CreateLotGenealogyRequest,
    config?: RequestConfig
  ): Promise<Response<LotGenealogy>> {
    return this.request("POST", "/api/v1/lot-genealogy", data, config);
  }

  async getLotChildren(
    lotId: string,
    config?: RequestConfig
  ): Promise<PaginatedResponse<LotGenealogy>> {
    return this.request("GET", `/api/v1/lots/${lotId}/children`, undefined, config);
  }

  async getLotParents(
    lotId: string,
    config?: RequestConfig
  ): Promise<PaginatedResponse<LotGenealogy>> {
    return this.request("GET", `/api/v1/lots/${lotId}/parents`, undefined, config);
  }

  async getLotTrackingHistory(
    lotId: string,
    config?: RequestConfig
  ): Promise<PaginatedResponse<StockMovement>> {
    return this.request("GET", `/api/v1/lots/${lotId}/tracking-history`, undefined, config);
  }

  // Enhanced Lot Tracking
  async updateLotTracking(
    lotId: string,
    data: Partial<LotTracking>,
    config?: RequestConfig
  ): Promise<Response<LotTracking>> {
    return this.request("PUT", `/api/v1/lots/${lotId}/tracking`, data, config);
  }

  async quarantineLot(
    lotId: string,
    data: { reason: string; notes?: string },
    config?: RequestConfig
  ): Promise<Response<LotTracking>> {
    return this.request("POST", `/api/v1/lots/${lotId}/quarantine`, data, config);
  }

  async releaseLot(
    lotId: string,
    data?: { notes?: string },
    config?: RequestConfig
  ): Promise<Response<LotTracking>> {
    return this.request("POST", `/api/v1/lots/${lotId}/release`, data, config);
  }

  async splitLot(
    lotId: string,
    data: {
      splits: Array<{
        quantity: number;
        lotNumber?: string;
        notes?: string;
      }>;
    },
    config?: RequestConfig
  ): Promise<Response<LotTracking[]>> {
    return this.request("POST", `/api/v1/lots/${lotId}/split`, data, config);
  }

  async mergeLots(
    data: {
      parentLotIds: string[];
      newLotNumber?: string;
      notes?: string;
    },
    config?: RequestConfig
  ): Promise<Response<LotTracking>> {
    return this.request("POST", "/api/v1/lots/merge", data, config);
  }

  // Inventory Reports and Analytics
  async getInventoryValuation(
    filters?: {
      locationIds?: string[];
      itemIds?: string[];
      asOfDate?: string;
    },
    config?: RequestConfig
  ): Promise<Response<{
    totalValue: number;
    items: Array<{
      itemId: string;
      itemName: string;
      quantity: number;
      unitCost: number;
      totalValue: number;
    }>;
  }>> {
    const params = new URLSearchParams();
    if (filters) {
      Object.entries(filters).forEach(([key, value]) => {
        if (value !== undefined && value !== null) {
          if (Array.isArray(value)) {
            value.forEach((v) => params.append(key, String(v)));
          } else {
            params.append(key, String(value));
          }
        }
      });
    }

    const queryString = params.toString();
    const url = queryString ? `/api/v1/inventory/valuation?${queryString}` : "/api/v1/inventory/valuation";

    return this.request("GET", url, undefined, config);
  }

  async getStockLevels(
    filters?: {
      locationIds?: string[];
      itemIds?: string[];
      categoryIds?: string[];
      showZeroStock?: boolean;
    },
    config?: RequestConfig
  ): Promise<PaginatedResponse<{
    itemId: string;
    itemName: string;
    locationId: string;
    locationName: string;
    availableQuantity: number;
    reservedQuantity: number;
    totalQuantity: number;
    unitOfMeasure?: string;
  }>> {
    const params = new URLSearchParams();
    if (filters) {
      Object.entries(filters).forEach(([key, value]) => {
        if (value !== undefined && value !== null) {
          if (Array.isArray(value)) {
            value.forEach((v) => params.append(key, String(v)));
          } else {
            params.append(key, String(value));
          }
        }
      });
    }

    const queryString = params.toString();
    const url = queryString ? `/api/v1/inventory/stock-levels?${queryString}` : "/api/v1/inventory/stock-levels";

    return this.request("GET", url, undefined, config);
  }

  async getLowStockItems(
    filters?: {
      locationIds?: string[];
      categoryIds?: string[];
    },
    config?: RequestConfig
  ): Promise<PaginatedResponse<{
    itemId: string;
    itemName: string;
    locationId: string;
    locationName: string;
    currentQuantity: number;
    minimumQuantity: number;
    reorderQuantity: number;
    unitOfMeasure?: string;
  }>> {
    const params = new URLSearchParams();
    if (filters) {
      Object.entries(filters).forEach(([key, value]) => {
        if (value !== undefined && value !== null) {
          if (Array.isArray(value)) {
            value.forEach((v) => params.append(key, String(v)));
          } else {
            params.append(key, String(value));
          }
        }
      });
    }

    const queryString = params.toString();
    const url = queryString ? `/api/v1/inventory/low-stock?${queryString}` : "/api/v1/inventory/low-stock";

    return this.request("GET", url, undefined, config);
  }

  async getExpiringLots(
    filters?: {
      locationIds?: string[];
      itemIds?: string[];
      daysToExpiry?: number;
    },
    config?: RequestConfig
  ): Promise<PaginatedResponse<{
    lotId: string;
    lotNumber: string;
    itemId: string;
    itemName: string;
    locationId: string;
    locationName: string;
    quantity: number;
    expirationDate: string;
    daysToExpiry: number;
  }>> {
    const params = new URLSearchParams();
    if (filters) {
      Object.entries(filters).forEach(([key, value]) => {
        if (value !== undefined && value !== null) {
          if (Array.isArray(value)) {
            value.forEach((v) => params.append(key, String(v)));
          } else {
            params.append(key, String(value));
          }
        }
      });
    }

    const queryString = params.toString();
    const url = queryString ? `/api/v1/inventory/expiring-lots?${queryString}` : "/api/v1/inventory/expiring-lots";

    return this.request("GET", url, undefined, config);
  }

  // Stock Transactions
  async getStockTransactions(
    filters?: {
      itemId?: string;
      locationId?: string;
      transactionType?: string;
      dateFrom?: string;
      dateTo?: string;
      page?: number;
      limit?: number;
    },
    config?: RequestConfig
  ): Promise<PaginatedResponse<{
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
  }>> {
    const params = new URLSearchParams();
    if (filters) {
      Object.entries(filters).forEach(([key, value]) => {
        if (value !== undefined && value !== null) {
          params.append(key, String(value));
        }
      });
    }

    const queryString = params.toString();
    const url = queryString ? `/api/v1/stock-transactions?${queryString}` : "/api/v1/stock-transactions";

    return this.request("GET", url, undefined, config);
  }

  // Stock Statistics
  async getStockStats(
    filters?: {
      locationIds?: string[];
      itemIds?: string[];
      dateFrom?: string;
      dateTo?: string;
    },
    config?: RequestConfig
  ): Promise<Response<{
    totalItems: number;
    totalValue: number;
    lowStockItems: number;
    outOfStockItems: number;
    topMovingItems: any[];
    stockTurnover: number;
  }>> {
    const params = new URLSearchParams();
    if (filters) {
      Object.entries(filters).forEach(([key, value]) => {
        if (value !== undefined && value !== null) {
          if (Array.isArray(value)) {
            value.forEach((v) => params.append(key, String(v)));
          } else {
            params.append(key, String(value));
          }
        }
      });
    }

    const queryString = params.toString();
    const url = queryString ? `/api/v1/inventory/stats?${queryString}` : "/api/v1/inventory/stats";

    return this.request("GET", url, undefined, config);
  }

  // Stock Alerts
  async getStockAlerts(
    filters?: {
      type?: 'low_stock' | 'out_of_stock' | 'expiring' | 'overstock';
      locationIds?: string[];
      itemIds?: string[];
      severity?: 'low' | 'medium' | 'high';
      page?: number;
      limit?: number;
    },
    config?: RequestConfig
  ): Promise<PaginatedResponse<{
    id: string;
    type: string;
    severity: string;
    itemId: string;
    locationId?: string;
    currentQuantity: number;
    thresholdQuantity?: number;
    message: string;
    createdAt: string;
  }>> {
    const params = new URLSearchParams();
    if (filters) {
      Object.entries(filters).forEach(([key, value]) => {
        if (value !== undefined && value !== null) {
          if (Array.isArray(value)) {
            value.forEach((v) => params.append(key, String(v)));
          } else {
            params.append(key, String(value));
          }
        }
      });
    }

    const queryString = params.toString();
    const url = queryString ? `/api/v1/stock-alerts?${queryString}` : "/api/v1/stock-alerts";

    return this.request("GET", url, undefined, config);
  }

  // Stock Cycle Count
  async performStockCycleCount(
    data: {
      locationId: string;
      itemIds?: string[];
      countMethod: 'full' | 'partial' | 'abc_analysis';
      scheduledDate?: string;
    },
    config?: RequestConfig
  ): Promise<Response<{
    id: string;
    locationId: string;
    countMethod: string;
    status: 'scheduled' | 'in_progress' | 'completed';
    scheduledDate?: string;
    createdAt: string;
  }>> {
    return this.request("POST", "/api/v1/stock-cycle-counts", data, config);
  }
}