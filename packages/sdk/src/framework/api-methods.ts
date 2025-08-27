// Framework-friendly API methods exposure
import type { ProdobitClient } from '../client';
import type { 
  Response, 
  PaginatedResponse, 
  RequestConfig,
  Tenant, 
  TenantQuery,
  CreateTenantRequest,
  UpdateTenantRequest,
  Party,
  CreatePersonRequest,
  CreateOrganizationRequest,
  UpdatePartyRequest,
  ItemBase,
  LocationBase,
  AssetBase,
  StockBase,
  LotBase,
  User,
  Pagination,
  FrameworkPartyFilters,
  FrameworkSearchParams,
  FrameworkEmployeeFilters,
  FrameworkCustomerFilters,
  FrameworkSupplierFilters,
  FrameworkStockFilters,
  FrameworkLotFilters,
  FrameworkBomFilters,
  FrameworkBomComponentFilters,
  ItemFilters,
  LocationFilters,
  AssetFilters,
  ItemType
} from '../types';

/**
 * Framework Integration API - Exposed methods for use with React Query, SWR, etc.
 * Each method returns the raw promise for framework wrappers to consume
 */
export class FrameworkAPI {
  constructor(private client: ProdobitClient) {}

  // Auth API
  auth = {
    getCurrentUser: (config?: RequestConfig) => 
      this.client.getCurrentUser(config),
    
    requestOTP: (email: string, tenantId?: string, config?: RequestConfig) =>
      this.client.requestOTP({ email, tenantId }, config),
    
    verifyOTP: (email: string, code: string, tenantId?: string, config?: RequestConfig) =>
      this.client.verifyOTP({ email, code, tenantId }, config),
    
    refreshToken: (refreshToken?: string, config?: RequestConfig) =>
      this.client.refreshToken(refreshToken ? { refreshToken } : undefined, config),
    
    logout: (allDevices = false, config?: RequestConfig) =>
      this.client.logout({ allDevices }, config),
  };

  // Tenant API
  tenants = {
    list: (query?: TenantQuery & Pagination, config?: RequestConfig) =>
      this.client.getTenants(query, config),
    
    get: (id: string, config?: RequestConfig) =>
      this.client.getTenant(id, config),
    
    create: (data: CreateTenantRequest, config?: RequestConfig) =>
      this.client.createTenant(data, config),
    
    update: (id: string, data: UpdateTenantRequest, config?: RequestConfig) =>
      this.client.updateTenant(id, data, config),
    
    delete: (id: string, config?: RequestConfig) =>
      this.client.deleteTenant(id, config),
    
    members: (tenantId: string, config?: RequestConfig) =>
      this.client.getTenantMembers(tenantId, config),
    
    roles: (tenantId: string, config?: RequestConfig) =>
      this.client.getTenantRoles(tenantId, config),
  };

  // Party API
  parties = {
    list: (filters?: FrameworkPartyFilters, config?: RequestConfig) => {
      return this.client.getParties(filters as any, config);
    },
    
    get: (id: string, config?: RequestConfig) =>
      this.client.getParty(id, config),
    
    createPerson: (data: CreatePersonRequest, config?: RequestConfig) =>
      this.client.createPerson(data, config),
    
    createOrganization: (data: CreateOrganizationRequest, config?: RequestConfig) =>
      this.client.createOrganization(data, config),
    
    update: (id: string, data: UpdatePartyRequest, config?: RequestConfig) =>
      this.client.updateParty(id, data, config),
    
    delete: (id: string, config?: RequestConfig) =>
      this.client.deleteParty(id, config),
    
    search: (searchTerm: string, partyType?: 'person' | 'organization', roleType?: 'customer' | 'supplier' | 'employee', config?: RequestConfig) =>
      this.client.searchParties(searchTerm, partyType, roleType, config),
    
    // Role-specific endpoints
    customers: (config?: RequestConfig) =>
      this.client.getCustomers(config),
    
    suppliers: (config?: RequestConfig) =>
      this.client.getSuppliers(config),
    
    employees: (config?: RequestConfig) =>
      this.client.getEmployeeParties(config),
  };

  // Item API
  items = {
    list: (filters?: ItemFilters, config?: RequestConfig) => {
      return this.client.getItems(filters as any, config);
    },
    
    get: (id: string, config?: RequestConfig) =>
      this.client.getItem(id, config),
    
    create: (data: any, config?: RequestConfig) =>
      this.client.createItem(data, config),
    
    update: (id: string, data: any, config?: RequestConfig) =>
      this.client.makeRequest('PUT', `/api/v1/items/${id}`, data, config),
    
    delete: (id: string, config?: RequestConfig) =>
      this.client.deleteItem(id, config),
    
    search: (searchTerm: string, filters?: { itemType?: 'product' | 'service' | 'raw_material' | 'component' }, config?: RequestConfig) =>
      this.client.searchItems(searchTerm, filters, config),
    
    // Type-specific endpoints
    products: (config?: RequestConfig) =>
      this.client.getProducts(config),
    
    services: (config?: RequestConfig) =>
      this.client.getServices(config),
    
    rawMaterials: (config?: RequestConfig) =>
      this.client.getRawMaterials(config),
    
    components: (config?: RequestConfig) =>
      this.client.getComponents(config),
    
    categories: (itemType?: ItemType, config?: RequestConfig) =>
      this.client.getItemCategories(itemType, config),
  };

  // Location API
  locations = {
    list: (filters?: LocationFilters, config?: RequestConfig) =>
      this.client.getLocations(filters, config),
    
    get: (id: string, config?: RequestConfig) =>
      this.client.getLocation(id, config),
    
    create: (data: any, config?: RequestConfig) =>
      this.client.makeRequest('POST', '/api/v1/locations', data, config),
    
    update: (id: string, data: any, config?: RequestConfig) =>
      this.client.makeRequest('PUT', `/api/v1/locations/${id}`, data, config),
    
    delete: (id: string, config?: RequestConfig) =>
      this.client.makeRequest('DELETE', `/api/v1/locations/${id}`, undefined, config),
    
    children: (parentId: string, config?: RequestConfig) =>
      this.client.makeRequest('GET', `/api/v1/locations/${parentId}/children`, undefined, config),
    
    hierarchy: (id: string, config?: RequestConfig) =>
      this.client.makeRequest('GET', `/api/v1/locations/${id}/hierarchy`, undefined, config),
    
    stats: (config?: RequestConfig) =>
      this.client.makeRequest('GET', '/api/v1/locations/stats', undefined, config),
    
    types: (category?: string, config?: RequestConfig) => {
      const params = category ? `?category=${category}` : '';
      return this.client.makeRequest('GET', `/api/v1/locations/types${params}`, undefined, config);
    },
  };

  // Asset API
  assets = {
    list: (filters?: AssetFilters, config?: RequestConfig) =>
      this.client.getAssets(filters, config),
    
    get: (id: string, config?: RequestConfig) =>
      this.client.getAsset(id, config),
    
    create: (data: any, config?: RequestConfig) =>
      this.client.makeRequest('POST', '/api/v1/assets', data, config),
    
    update: (id: string, data: any, config?: RequestConfig) =>
      this.client.makeRequest('PUT', `/api/v1/assets/${id}`, data, config),
    
    delete: (id: string, config?: RequestConfig) =>
      this.client.makeRequest('DELETE', `/api/v1/assets/${id}`, undefined, config),
    
    search: (searchTerm: string, filters?: Record<string, unknown>, config?: RequestConfig) =>
      this.client.searchAssets(searchTerm, filters, config),
    
    byLocation: (locationId: string, config?: RequestConfig) =>
      this.client.makeRequest('GET', `/api/v1/assets?location_id=${locationId}`, undefined, config),
    
    children: (parentId: string, config?: RequestConfig) =>
      this.client.makeRequest('GET', `/api/v1/assets/${parentId}/children`, undefined, config),
    
    hierarchy: (id: string, config?: RequestConfig) =>
      this.client.makeRequest('GET', `/api/v1/assets/${id}/hierarchy`, undefined, config),
    
    stats: (config?: RequestConfig) =>
      this.client.makeRequest('GET', '/api/v1/assets/stats', undefined, config),
    
    types: (category?: string, config?: RequestConfig) => {
      const params = category ? `?category=${category}` : '';
      return this.client.makeRequest('GET', `/api/v1/assets/types${params}`, undefined, config);
    },
  };

  // Stock API
  stocks = {
    list: (filters?: {
      itemId?: string;
      lotId?: string;
      locationId?: string;
      status?: 'available' | 'reserved' | 'quarantined' | 'damaged' | 'blocked';
      search?: string;
    }, config?: RequestConfig) =>
      this.client.getStocks(filters, config),
    
    get: (id: string, config?: RequestConfig) =>
      this.client.getStock(id, config),
    
    create: (data: any, config?: RequestConfig) =>
      this.client.makeRequest('POST', '/api/v1/stocks', data, config),
    
    update: (id: string, data: any, config?: RequestConfig) =>
      this.client.makeRequest('PUT', `/api/v1/stocks/${id}`, data, config),
    
    delete: (id: string, config?: RequestConfig) =>
      this.client.makeRequest('DELETE', `/api/v1/stocks/${id}`, undefined, config),
    
    levels: (locationId?: string, config?: RequestConfig) => {
      const params = locationId ? `?locationId=${locationId}` : '';
      return this.client.makeRequest('GET', `/api/v1/stocks/levels${params}`, undefined, config);
    },
    
    transactions: (filters?: any, config?: RequestConfig) => {
      const params = new URLSearchParams();
      if (filters) {
        Object.entries(filters).forEach(([key, value]) => {
          if (value !== undefined) params.append(key, String(value));
        });
      }
      const queryString = params.toString() ? `?${params.toString()}` : '';
      return this.client.makeRequest('GET', `/api/v1/stock-transactions${queryString}`, undefined, config);
    },
    
    createTransaction: (data: any, config?: RequestConfig) =>
      this.client.makeRequest('POST', '/api/v1/stock-transactions', data, config),
    
    stats: (config?: RequestConfig) =>
      this.client.makeRequest('GET', '/api/v1/stocks/stats', undefined, config),
  };

  // Lot API  
  lots = {
    list: (filters?: FrameworkLotFilters, config?: RequestConfig) =>
      this.client.getLots(filters, config),
    
    get: (id: string, config?: RequestConfig) =>
      this.client.getLot(id, config),
    
    create: (data: any, config?: RequestConfig) =>
      this.client.makeRequest('POST', '/api/v1/lots', data, config),
    
    update: (id: string, data: any, config?: RequestConfig) =>
      this.client.makeRequest('PUT', `/api/v1/lots/${id}`, data, config),
    
    delete: (id: string, config?: RequestConfig) =>
      this.client.makeRequest('DELETE', `/api/v1/lots/${id}`, undefined, config),
    
    info: (itemId?: string, config?: RequestConfig) => {
      const params = itemId ? `?itemId=${itemId}` : '';
      return this.client.makeRequest('GET', `/api/v1/lots/info${params}`, undefined, config);
    },
  };

  // Feature API
  features = {
    list: (config?: RequestConfig) =>
      this.client.getFeatures(config),
  };
}

// Helper function to create framework API from client
export function createFrameworkAPI(client: ProdobitClient): FrameworkAPI {
  return new FrameworkAPI(client);
}