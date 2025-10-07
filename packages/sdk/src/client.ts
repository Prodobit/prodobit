// Main ProdobitClient that aggregates all functionality from modules
import { AuthClient } from "./modules/auth-client";
import { TenantClient } from "./modules/tenant-client";
import { PartyClient } from "./modules/party-client";
import { LocationAssetClient } from "./modules/location-asset-client";
import { ManufacturingClient } from "./modules/manufacturing-client";
import { SalesClient } from "./modules/sales-client";
import { EmployeeClient } from "./modules/employee-client";
import { InventoryClient } from "./modules/inventory-client";
import { PurchaseClient } from "./modules/purchase-client";
import { buildQuery } from "./utils/query-builder";
import type {
  Attribute,
  AttributeQuery,
  BomQuery,
  BomComponentQuery,
  EcoQuery,
  CreateAttributeRequest,
  CreateOrganizationRequest,
  CreatePartyRequest,
  CreatePersonRequest,
  CreateTenantRequest,
  Employee,
  LogoutRequest,
  PaginatedResponse,
  Pagination,
  PartyRole,
  RefreshTokenRequest,
  RegisterTenantRequest,
  RequestOTPRequest,
  ResendOTPRequest,
  Response,
  TenantQuery,
  TenantMembership,
  UpdateAttributeRequest,
  UpdatePartyRequest,
  UpdateTenantRequest,
  VerifyOTPRequest,
} from "@prodobit/types";
import { AuthStateManager } from "./framework/auth-state";
import type {
  AssetBase,
  CreateItemRequest,
  UpdateItemRequest,
  ItemBase,
  LocationBase,
  LotBase,
  ProdobitClientConfig,
  RequestConfig,
  StockBase,
  TokenInfo,
  ItemFilters,
  LocationFilters,
  AssetFilters,
  PartyFilters,
  SalesOrderFilters,
  LotFilters,
  StockFilters,
  StockTransactionFilters,
  CreateLocationRequest,
  UpdateLocationRequest,
  CreateAssetRequest,
  UpdateAssetRequest,
  CreateStockRequest,
  UpdateStockRequest,
  CreateLotRequest,
  UpdateLotRequest,
  CreateEmployeeRequest,
  UpdateEmployeeRequest,
  CreateLocationTypeRequest,
  CreateAssetTypeRequest,
  CreateItemCategoryRequest,
  CreateInvitationRequest,
  UpdateMembershipRequest,
  ContactInfo,
  AddressInfo,
  ItemType,
  PartyType,
  RoleType,
} from "./types";
import { ProdobitError } from "./types";

export class ProdobitClient {
  public auth: AuthClient;
  private tenant: TenantClient;
  private party: PartyClient;
  private locationAsset: LocationAssetClient;
  private manufacturing: ManufacturingClient;
  private sales: SalesClient;
  private employee: EmployeeClient;
  private inventory: InventoryClient;
  private purchase: PurchaseClient;

  constructor(config: ProdobitClientConfig) {
    this.auth = new AuthClient(config);
    this.tenant = new TenantClient(config);
    this.party = new PartyClient(config);
    this.locationAsset = new LocationAssetClient(config);
    this.manufacturing = new ManufacturingClient(config);
    this.sales = new SalesClient(config);
    this.employee = new EmployeeClient(config);
    this.inventory = new InventoryClient(config);
    this.purchase = new PurchaseClient(config);
  }

  // Public request method for framework integrations
  public async makeRequest<T = unknown>(
    method: string,
    path: string,
    data?: unknown,
    config?: RequestConfig
  ): Promise<T> {
    return this.auth.makeRequest<T>(method, path, data, config);
  }

  // Getter for baseUrl
  get baseUrl(): string {
    return (this.auth as any).baseUrl;
  }

  // Auth method delegations
  async checkUser(data: { email: string }, config?: RequestConfig) {
    return this.auth.checkUser(data, config);
  }

  async registerTenant(data: RegisterTenantRequest, config?: RequestConfig) {
    return this.auth.registerTenant(data, config);
  }

  async requestOTP(data: RequestOTPRequest, config?: RequestConfig) {
    return this.auth.requestOTP(data, config);
  }

  async resendOTP(data: ResendOTPRequest, config?: RequestConfig) {
    return this.auth.resendOTP(data, config);
  }

  async verifyOTP(data: VerifyOTPRequest, config?: RequestConfig) {
    return this.auth.verifyOTP(data, config);
  }

  async refreshToken(data?: RefreshTokenRequest, config?: RequestConfig) {
    return this.auth.refreshToken(data, config);
  }

  async refreshAuthState() {
    return this.auth.refreshAuthState();
  }

  async logout(data?: LogoutRequest, config?: RequestConfig) {
    return this.auth.logout(data, config);
  }

  async getCurrentUser(config?: RequestConfig) {
    return this.auth.getCurrentUser(config);
  }

  // @deprecated Use getCurrentUser instead
  async getMe(config?: RequestConfig) {
    return this.auth.getMe(config);
  }

  async loginWithOTP(email: string, tenantId?: string) {
    return this.auth.loginWithOTP(email, tenantId);
  }

  async completeLogin(email: string, code: string, tenantId?: string) {
    return this.auth.completeLogin(email, code, tenantId);
  }

  async signOut(allDevices = false) {
    return this.auth.signOut(allDevices);
  }

  // Email verification method delegations
  async sendVerificationEmail(data: { email: string }, config?: RequestConfig) {
    return this.auth.sendVerificationEmail(data, config);
  }

  async verifyEmail(data: { token: string }, config?: RequestConfig) {
    return this.auth.verifyEmail(data, config);
  }

  async resendVerificationEmail(data: { email: string }, config?: RequestConfig) {
    return this.auth.resendVerificationEmail(data, config);
  }

  async checkVerificationStatus(data: { email: string }, config?: RequestConfig) {
    return this.auth.checkVerificationStatus(data, config);
  }

  // Tenant method delegations
  async getTenants(query?: TenantQuery & Pagination, config?: RequestConfig) {
    return this.tenant.getTenants(query, config);
  }

  async getTenant(id: string, config?: RequestConfig) {
    return this.tenant.getTenant(id, config);
  }

  async createTenant(data: CreateTenantRequest, config?: RequestConfig) {
    return this.tenant.createTenant(data, config);
  }

  async updateTenant(id: string, data: UpdateTenantRequest, config?: RequestConfig) {
    return this.tenant.updateTenant(id, data, config);
  }

  async deleteTenant(id: string, config?: RequestConfig) {
    return this.tenant.deleteTenant(id, config);
  }

  async getTenantMembers(tenantId: string, config?: RequestConfig) {
    return this.tenant.getTenantMembers(tenantId, config);
  }

  async getTenantRoles(tenantId: string, config?: RequestConfig) {
    return this.tenant.getTenantRoles(tenantId, config);
  }

  async getTenantInvitations(tenantId: string, config?: RequestConfig) {
    return this.tenant.getTenantInvitations(tenantId, config);
  }

  async createInvitation(
    tenantId: string, 
    data: CreateInvitationRequest, 
    config?: RequestConfig
  ) {
    return this.tenant.createInvitation(tenantId, data, config);
  }

  async getInvitationByToken(token: string, config?: RequestConfig) {
    return this.tenant.getInvitationByToken(token, config);
  }

  async acceptInvitation(token: string, config?: RequestConfig) {
    return this.tenant.acceptInvitation(token, config);
  }

  async updateMembership(
    tenantId: string, 
    membershipId: string, 
    data: UpdateMembershipRequest, 
    config?: RequestConfig
  ) {
    return this.tenant.updateMembership(tenantId, membershipId, data, config);
  }

  async removeMember(tenantId: string, membershipId: string, config?: RequestConfig) {
    return this.tenant.removeMember(tenantId, membershipId, config);
  }

  // Party method delegations
  async createPerson(data: CreatePersonRequest, config?: RequestConfig) {
    return this.party.createPerson(data, config);
  }

  async createOrganization(data: CreateOrganizationRequest, config?: RequestConfig) {
    return this.party.createOrganization(data, config);
  }

  async getParties(query?: PartyFilters & Pagination, config?: RequestConfig) {
    return this.party.getParties(query, config);
  }

  async getParty(id: string, config?: RequestConfig) {
    return this.party.getParty(id, config);
  }

  async updateParty(id: string, data: UpdatePartyRequest, config?: RequestConfig) {
    return this.party.updateParty(id, data, config);
  }

  async deleteParty(id: string, config?: RequestConfig) {
    return this.party.deleteParty(id, config);
  }

  async getCustomers(config?: RequestConfig) {
    return this.party.getCustomers(config);
  }

  async getSuppliers(config?: RequestConfig) {
    return this.party.getSuppliers(config);
  }

  async getEmployeeParties(config?: RequestConfig) {
    return this.party.getEmployeeParties(config);
  }

  async createParty(data: CreatePartyRequest, config?: RequestConfig) {
    return this.party.createParty(data, config);
  }

  async createPersonCustomer(firstName: string, lastName: string, email?: string, phone?: string, config?: RequestConfig) {
    return this.party.createPersonCustomer(firstName, lastName, email, phone, config);
  }

  async createPersonSupplier(firstName: string, lastName: string, email?: string, phone?: string, config?: RequestConfig) {
    return this.party.createPersonSupplier(firstName, lastName, email, phone, config);
  }

  async createOrganizationCustomer(name: string, email?: string, phone?: string, address?: string, config?: RequestConfig) {
    return this.party.createOrganizationCustomer(name, email, phone, address, config);
  }

  async createOrganizationSupplier(name: string, email?: string, phone?: string, address?: string, config?: RequestConfig) {
    return this.party.createOrganizationSupplier(name, email, phone, address, config);
  }

  async createPersonWithRoles(
    firstName: string, 
    lastName: string, 
    roles: RoleType[], 
    contacts?: ContactInfo[], 
    addresses?: AddressInfo[], 
    config?: RequestConfig
  ) {
    return this.party.createPersonWithRoles(firstName, lastName, roles, contacts, addresses, config);
  }

  async searchParties(searchTerm: string, partyType?: PartyType, roleType?: RoleType, config?: RequestConfig) {
    return this.party.searchParties(searchTerm, partyType, roleType, config);
  }

  // Location and Asset method delegations
  async getLocations(filters?: LocationFilters, config?: RequestConfig) {
    return this.locationAsset.getLocations(filters, config);
  }

  async getLocation(locationId: string, config?: RequestConfig) {
    return this.locationAsset.getLocation(locationId, config);
  }

  // @deprecated Use getLocation instead
  async getLocationById(locationId: string, config?: RequestConfig) {
    return this.locationAsset.getLocationById(locationId, config);
  }

  async getChildLocations(parentLocationId: string, config?: RequestConfig) {
    return this.locationAsset.getChildLocations(parentLocationId, config);
  }

  async getLocationHierarchy(locationId: string, config?: RequestConfig) {
    return this.locationAsset.getLocationHierarchy(locationId, config);
  }

  async createLocation(
    data: CreateLocationRequest, 
    config?: RequestConfig
  ) {
    return this.locationAsset.createLocation(data, config);
  }

  async updateLocation(
    locationId: string, 
    data: UpdateLocationRequest, 
    config?: RequestConfig
  ) {
    return this.locationAsset.updateLocation(locationId, data, config);
  }

  async deleteLocation(locationId: string, config?: RequestConfig) {
    return this.locationAsset.deleteLocation(locationId, config);
  }

  async getLocationStats(config?: RequestConfig) {
    return this.locationAsset.getLocationStats(config);
  }

  async getLocationTypes(category?: string, config?: RequestConfig) {
    return this.locationAsset.getLocationTypes(category, config);
  }

  async createLocationType(
    data: CreateLocationTypeRequest, 
    config?: RequestConfig
  ) {
    return this.locationAsset.createLocationType(data, config);
  }

  async getAssets(filters?: AssetFilters, config?: RequestConfig) {
    return this.locationAsset.getAssets(filters, config);
  }

  async searchAssets(searchTerm: string, filters?: Record<string, unknown>, config?: RequestConfig) {
    return this.locationAsset.searchAssets(searchTerm, filters, config);
  }

  async getAsset(assetId: string, config?: RequestConfig) {
    return this.locationAsset.getAsset(assetId, config);
  }

  // @deprecated Use getAsset instead
  async getAssetById(assetId: string, config?: RequestConfig) {
    return this.locationAsset.getAssetById(assetId, config);
  }

  async getChildAssets(parentAssetId: string, config?: RequestConfig) {
    return this.locationAsset.getChildAssets(parentAssetId, config);
  }

  async getAssetHierarchy(assetId: string, config?: RequestConfig) {
    return this.locationAsset.getAssetHierarchy(assetId, config);
  }

  async getAssetsByLocation(locationId: string, config?: RequestConfig) {
    return this.locationAsset.getAssetsByLocation(locationId, config);
  }

  async createAsset(
    data: CreateAssetRequest, 
    config?: RequestConfig
  ) {
    return this.locationAsset.createAsset(data, config);
  }

  async updateAsset(
    assetId: string, 
    data: UpdateAssetRequest, 
    config?: RequestConfig
  ) {
    return this.locationAsset.updateAsset(assetId, data, config);
  }

  async moveAsset(assetId: string, locationId: string, config?: RequestConfig) {
    return this.locationAsset.moveAsset(assetId, locationId, config);
  }

  async deleteAsset(assetId: string, config?: RequestConfig) {
    return this.locationAsset.deleteAsset(assetId, config);
  }

  async getAssetStats(config?: RequestConfig) {
    return this.locationAsset.getAssetStats(config);
  }

  async getAssetTypes(category?: string, config?: RequestConfig) {
    return this.locationAsset.getAssetTypes(category, config);
  }

  async createAssetType(
    data: CreateAssetTypeRequest, 
    config?: RequestConfig
  ) {
    return this.locationAsset.createAssetType(data, config);
  }

  async createLocationQuick(name: string, locationType?: string, parentLocationId?: string, config?: RequestConfig) {
    return this.locationAsset.createLocationQuick(name, locationType, parentLocationId, config);
  }

  async createAssetQuick(name: string, locationId: string, assetType?: string, config?: RequestConfig) {
    return this.locationAsset.createAssetQuick(name, locationId, assetType, config);
  }

  // Attribute methods with buildQuery
  async getAttributes(
    query?: AttributeQuery & Pagination,
    config?: RequestConfig
  ): Promise<PaginatedResponse<Attribute[]>> {
    const queryString = buildQuery(query);
    const path = `/api/v1/attributes${queryString ? `?${queryString}` : ""}`;
    return this.auth.makeRequest("GET", path, undefined, config);
  }

  async getAttribute(
    id: string,
    config?: RequestConfig
  ): Promise<Response<Attribute>> {
    return this.auth.makeRequest("GET", `/api/v1/attributes/${id}`, undefined, config);
  }

  async createAttribute(
    data: CreateAttributeRequest,
    config?: RequestConfig
  ): Promise<Response<Attribute>> {
    return this.auth.makeRequest("POST", "/api/v1/attributes", data, config);
  }

  async updateAttribute(
    id: string,
    data: UpdateAttributeRequest,
    config?: RequestConfig
  ): Promise<Response<Attribute>> {
    return this.auth.makeRequest("PUT", `/api/v1/attributes/${id}`, data, config);
  }

  async deleteAttribute(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.auth.makeRequest(
      "DELETE",
      `/api/v1/attributes/${id}`,
      undefined,
      config
    );
  }

  // Features discovery
  async getFeatures(config?: RequestConfig): Promise<Response<any>> {
    return this.auth.makeRequest("GET", "/api/v1/features", undefined, config);
  }

  // Employee methods with buildQuery
  async getEmployees(
    query?: Pagination,
    config?: RequestConfig
  ): Promise<PaginatedResponse<Employee[]>> {
    const queryString = buildQuery(query);
    const path = `/api/v1/employees${queryString ? `?${queryString}` : ""}`;
    return this.auth.makeRequest("GET", path, undefined, config);
  }

  async getEmployee(
    id: string,
    config?: RequestConfig
  ): Promise<Response<unknown>> {
    return this.auth.makeRequest("GET", `/api/v1/employees/${id}`, undefined, config);
  }

  async createEmployee(
    data: CreateEmployeeRequest, 
    config?: RequestConfig
  ): Promise<Response<unknown>> {
    return this.auth.makeRequest("POST", "/api/v1/employees", data, config);
  }

  async updateEmployee(
    id: string, 
    data: UpdateEmployeeRequest, 
    config?: RequestConfig
  ): Promise<Response<unknown>> {
    return this.auth.makeRequest("PUT", `/api/v1/employees/${id}`, data, config);
  }

  async deleteEmployee(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.auth.makeRequest("DELETE", `/api/v1/employees/${id}`, undefined, config);
  }

  // Items methods with buildQuery and typed filters
  async getItems(
    query?: ItemFilters & Pagination,
    config?: RequestConfig
  ): Promise<Response<ItemBase[]>> {
    const queryString = buildQuery(query);
    const path = `/api/v1/items${queryString ? `?${queryString}` : ""}`;
    return this.auth.makeRequest("GET", path, undefined, config);
  }

  async getItem(
    id: string,
    config?: RequestConfig
  ): Promise<Response<ItemBase>> {
    return this.auth.makeRequest("GET", `/api/v1/items/${id}`, undefined, config);
  }

  async createItem(
    data: CreateItemRequest,
    config?: RequestConfig
  ): Promise<Response<ItemBase>> {
    return this.auth.makeRequest("POST", "/api/v1/items", data, config);
  }

  async updateItem(
    id: string,
    data: UpdateItemRequest,
    config?: RequestConfig
  ): Promise<Response<ItemBase>> {
    return this.auth.makeRequest("PUT", `/api/v1/items/${id}`, data, config);
  }

  async createProduct(
    data: CreateItemRequest,
    config?: RequestConfig
  ): Promise<Response<ItemBase>> {
    return this.auth.makeRequest("POST", "/api/v1/items/products", data, config);
  }

  async createService(
    data: CreateItemRequest,
    config?: RequestConfig
  ): Promise<Response<ItemBase>> {
    return this.auth.makeRequest("POST", "/api/v1/items/services", data, config);
  }

  async createRawMaterial(
    data: CreateItemRequest,
    config?: RequestConfig
  ): Promise<Response<unknown>> {
    return this.auth.makeRequest("POST", "/api/v1/items/raw-materials", data, config);
  }

  async createComponent(
    data: CreateItemRequest,
    config?: RequestConfig
  ): Promise<Response<unknown>> {
    return this.auth.makeRequest("POST", "/api/v1/items/components", data, config);
  }

  async getProducts(config?: RequestConfig): Promise<Response<ItemBase[]>> {
    return this.auth.makeRequest("GET", "/api/v1/items/products", undefined, config);
  }

  async getServices(config?: RequestConfig): Promise<Response<ItemBase[]>> {
    return this.auth.makeRequest("GET", "/api/v1/items/services", undefined, config);
  }

  async getRawMaterials(config?: RequestConfig): Promise<Response<ItemBase[]>> {
    return this.auth.makeRequest(
      "GET",
      "/api/v1/items/raw-materials",
      undefined,
      config
    );
  }

  async getComponents(config?: RequestConfig): Promise<Response<ItemBase[]>> {
    return this.auth.makeRequest("GET", "/api/v1/items/components", undefined, config);
  }

  async searchItems(
    searchTerm: string,
    filters?: {
      itemType?: ItemType;
    },
    config?: RequestConfig
  ): Promise<Response<ItemBase[]>> {
    const params = new URLSearchParams();
    params.append("q", searchTerm);
    if (filters?.itemType) {
      params.append("itemType", filters.itemType);
    }
    return this.auth.makeRequest(
      "GET",
      `/api/v1/items/search?${params.toString()}`,
      undefined,
      config
    );
  }

  async deleteItem(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.auth.makeRequest("DELETE", `/api/v1/items/${id}`, undefined, config);
  }

  async getItemCategories(
    itemType?: ItemType,
    config?: RequestConfig
  ): Promise<Response<any[]>> {
    const queryString = itemType ? `?itemType=${itemType}` : "";
    const path = `/api/v1/items/categories${queryString}`;
    return this.auth.makeRequest("GET", path, undefined, config);
  }

  async createItemCategory(
    data: CreateItemCategoryRequest,
    config?: RequestConfig
  ): Promise<Response<unknown>> {
    return this.auth.makeRequest("POST", "/api/v1/items/categories", data, config);
  }

  // Stock methods with buildQuery and typed filters
  async getStocks(
    filters?: StockFilters,
    config?: RequestConfig
  ): Promise<Response<StockBase[]>> {
    const queryString = buildQuery(filters);
    const path = `/api/v1/stocks${queryString ? `?${queryString}` : ""}`;
    return this.auth.makeRequest("GET", path, undefined, config);
  }

  async getStock(
    stockId: string,
    config?: RequestConfig
  ): Promise<Response<StockBase>> {
    return this.auth.makeRequest("GET", `/api/v1/stocks/${stockId}`, undefined, config);
  }

  async createStock(
    data: CreateStockRequest,
    config?: RequestConfig
  ): Promise<Response<unknown>> {
    return this.auth.makeRequest("POST", "/api/v1/stocks", data, config);
  }

  async updateStock(
    stockId: string,
    data: UpdateStockRequest,
    config?: RequestConfig
  ): Promise<Response<unknown>> {
    return this.auth.makeRequest("PUT", `/api/v1/stocks/${stockId}`, data, config);
  }

  async deleteStock(
    stockId: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.auth.makeRequest("DELETE", `/api/v1/stocks/${stockId}`, undefined, config);
  }

  // Lot methods with buildQuery and typed filters
  async getLots(
    filters?: LotFilters,
    config?: RequestConfig
  ): Promise<Response<LotBase[]>> {
    const queryString = buildQuery(filters);
    const path = `/api/v1/lots${queryString ? `?${queryString}` : ""}`;
    return this.auth.makeRequest("GET", path, undefined, config);
  }

  async getLot(
    lotId: string,
    config?: RequestConfig
  ): Promise<Response<LotBase>> {
    return this.auth.makeRequest("GET", `/api/v1/lots/${lotId}`, undefined, config);
  }

  async createLot(
    data: CreateLotRequest,
    config?: RequestConfig
  ): Promise<Response<unknown>> {
    return this.auth.makeRequest("POST", "/api/v1/lots", data, config);
  }

  async updateLot(
    lotId: string,
    data: UpdateLotRequest,
    config?: RequestConfig
  ): Promise<Response<unknown>> {
    return this.auth.makeRequest("PUT", `/api/v1/lots/${lotId}`, data, config);
  }

  async deleteLot(
    lotId: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.auth.makeRequest("DELETE", `/api/v1/lots/${lotId}`, undefined, config);
  }

  // Token and auth state management (delegated)
  setTokenInfo(tokenInfo: TokenInfo): void {
    // Set token on all module clients to ensure synchronization
    this.auth.setTokenInfo(tokenInfo);
    this.tenant.setTokenInfo(tokenInfo);
    this.party.setTokenInfo(tokenInfo);
    this.locationAsset.setTokenInfo(tokenInfo);
    this.manufacturing.setTokenInfo(tokenInfo);
    this.sales.setTokenInfo(tokenInfo);
    this.employee.setTokenInfo(tokenInfo);
    this.inventory.setTokenInfo(tokenInfo);
    this.purchase.setTokenInfo(tokenInfo);
  }

  getTokenInfo(): TokenInfo | undefined {
    return this.auth.getTokenInfo();
  }

  clearTokenInfo(): void {
    // Clear token from all module clients
    this.auth.clearTokenInfo();
    this.tenant.clearTokenInfo();
    this.party.clearTokenInfo();
    this.locationAsset.clearTokenInfo();
    this.manufacturing.clearTokenInfo();
    this.sales.clearTokenInfo();
    this.employee.clearTokenInfo();
    this.inventory.clearTokenInfo();
    this.purchase.clearTokenInfo();
  }

  getCurrentTenantId(): string | undefined {
    return this.auth.getCurrentTenantId();
  }

  isAuthenticated(): boolean {
    return this.auth.isAuthenticated();
  }

  isTokenValid(): boolean {
    return this.auth.isTokenValid();
  }

  getAccessToken(): string | undefined {
    return this.auth.getAccessToken();
  }

  setApiKey(apiKey: string): void {
    this.auth.setApiKey(apiKey);
  }

  removeApiKey(): void {
    this.auth.removeApiKey();
  }

  // Module getters
  get authClient(): AuthClient {
    return this.auth;
  }

  get tenantClient(): TenantClient {
    return this.tenant;
  }

  get partyClient(): PartyClient {
    return this.party;
  }

  get locationAssetClient(): LocationAssetClient {
    return this.locationAsset;
  }

  get manufacturingClient(): ManufacturingClient {
    return this.manufacturing;
  }

  get salesClient(): SalesClient {
    return this.sales;
  }

  get employeeClient(): EmployeeClient {
    return this.employee;
  }

  // Dynamic module support
  async callModuleEndpoint<T>(
    module: string,
    endpoint: string,
    method: "GET" | "POST" | "PUT" | "DELETE" = "GET",
    data?: unknown,
    config?: RequestConfig
  ): Promise<T> {
    const path = `/api/v1/${module}${
      endpoint.startsWith("/") ? endpoint : `/${endpoint}`
    }`;
    return this.auth.makeRequest(method, path, data, config);
  }

  get inventoryClient(): InventoryClient {
    return this.inventory;
  }

  get purchaseClient(): PurchaseClient {
    return this.purchase;
  }

  // Inventory management method delegations
  async getStockReservations(filters?: any, config?: RequestConfig) {
    return this.inventory.getStockReservations(filters, config);
  }

  async getStockReservation(id: string, config?: RequestConfig) {
    return this.inventory.getStockReservation(id, config);
  }

  async createStockReservation(data: any, config?: RequestConfig) {
    return this.inventory.createStockReservation(data, config);
  }

  async updateStockReservation(id: string, data: any, config?: RequestConfig) {
    return this.inventory.updateStockReservation(id, data, config);
  }

  async deleteStockReservation(id: string, config?: RequestConfig) {
    return this.inventory.deleteStockReservation(id, config);
  }

  async consumeStockReservation(id: string, data: { quantity: number; notes?: string }, config?: RequestConfig) {
    return this.inventory.consumeStockReservation(id, data, config);
  }

  async releaseStockReservation(id: string, config?: RequestConfig) {
    return this.inventory.releaseStockReservation(id, config);
  }

  async getStockMovements(filters?: any, config?: RequestConfig) {
    return this.inventory.getStockMovements(filters, config);
  }

  async getStockMovement(id: string, config?: RequestConfig) {
    return this.inventory.getStockMovement(id, config);
  }

  async createStockMovement(data: any, config?: RequestConfig) {
    return this.inventory.createStockMovement(data, config);
  }

  async getItemStockMovements(itemId: string, filters?: any, config?: RequestConfig) {
    return this.inventory.getItemStockMovements(itemId, filters, config);
  }

  async getPhysicalInventories(filters?: any, config?: RequestConfig) {
    return this.inventory.getPhysicalInventories(filters, config);
  }

  async getPhysicalInventory(id: string, config?: RequestConfig) {
    return this.inventory.getPhysicalInventory(id, config);
  }

  async createPhysicalInventory(data: any, config?: RequestConfig) {
    return this.inventory.createPhysicalInventory(data, config);
  }

  async updatePhysicalInventory(id: string, data: any, config?: RequestConfig) {
    return this.inventory.updatePhysicalInventory(id, data, config);
  }

  async deletePhysicalInventory(id: string, config?: RequestConfig) {
    return this.inventory.deletePhysicalInventory(id, config);
  }

  async startPhysicalInventory(id: string, config?: RequestConfig) {
    return this.inventory.startPhysicalInventory(id, config);
  }

  async completePhysicalInventory(id: string, config?: RequestConfig) {
    return this.inventory.completePhysicalInventory(id, config);
  }

  async cancelPhysicalInventory(id: string, config?: RequestConfig) {
    return this.inventory.cancelPhysicalInventory(id, config);
  }

  async getPhysicalInventoryItems(physicalInventoryId: string, config?: RequestConfig) {
    return this.inventory.getPhysicalInventoryItems(physicalInventoryId, config);
  }

  async updatePhysicalInventoryItem(physicalInventoryId: string, itemId: string, data: any, config?: RequestConfig) {
    return this.inventory.updatePhysicalInventoryItem(physicalInventoryId, itemId, data, config);
  }

  async generatePhysicalInventoryAdjustments(id: string, config?: RequestConfig) {
    return this.inventory.generatePhysicalInventoryAdjustments(id, config);
  }

  async getStockAdjustments(filters?: any, config?: RequestConfig) {
    return this.inventory.getStockAdjustments(filters, config);
  }

  async getStockAdjustment(id: string, config?: RequestConfig) {
    return this.inventory.getStockAdjustment(id, config);
  }

  async createStockAdjustment(data: any, config?: RequestConfig) {
    return this.inventory.createStockAdjustment(data, config);
  }

  async updateStockAdjustment(id: string, data: any, config?: RequestConfig) {
    return this.inventory.updateStockAdjustment(id, data, config);
  }

  async deleteStockAdjustment(id: string, config?: RequestConfig) {
    return this.inventory.deleteStockAdjustment(id, config);
  }

  async approveStockAdjustment(id: string, config?: RequestConfig) {
    return this.inventory.approveStockAdjustment(id, config);
  }

  async getStockAdjustmentItems(stockAdjustmentId: string, config?: RequestConfig) {
    return this.inventory.getStockAdjustmentItems(stockAdjustmentId, config);
  }

  async getLotGenealogies(lotId: string, config?: RequestConfig) {
    return this.inventory.getLotGenealogies(lotId, config);
  }

  async createLotGenealogy(data: any, config?: RequestConfig) {
    return this.inventory.createLotGenealogy(data, config);
  }

  async getLotChildren(lotId: string, config?: RequestConfig) {
    return this.inventory.getLotChildren(lotId, config);
  }

  async getLotParents(lotId: string, config?: RequestConfig) {
    return this.inventory.getLotParents(lotId, config);
  }

  async getLotTrackingHistory(lotId: string, config?: RequestConfig) {
    return this.inventory.getLotTrackingHistory(lotId, config);
  }

  async updateLotTracking(lotId: string, data: any, config?: RequestConfig) {
    return this.inventory.updateLotTracking(lotId, data, config);
  }

  async quarantineLot(lotId: string, data: { reason: string; notes?: string }, config?: RequestConfig) {
    return this.inventory.quarantineLot(lotId, data, config);
  }

  async releaseLot(lotId: string, data?: { notes?: string }, config?: RequestConfig) {
    return this.inventory.releaseLot(lotId, data, config);
  }

  async splitLot(lotId: string, data: any, config?: RequestConfig) {
    return this.inventory.splitLot(lotId, data, config);
  }

  async mergeLots(data: any, config?: RequestConfig) {
    return this.inventory.mergeLots(data, config);
  }

  async getInventoryValuation(filters?: any, config?: RequestConfig) {
    return this.inventory.getInventoryValuation(filters, config);
  }

  async getStockLevels(filters?: any, config?: RequestConfig) {
    return this.inventory.getStockLevels(filters, config);
  }

  async getLowStockItems(filters?: any, config?: RequestConfig) {
    return this.inventory.getLowStockItems(filters, config);
  }

  async getExpiringLots(filters?: any, config?: RequestConfig) {
    return this.inventory.getExpiringLots(filters, config);
  }

  async getStockTransactions(filters?: any, config?: RequestConfig) {
    return this.inventory.getStockTransactions(filters, config);
  }

  async getStockStats(filters?: any, config?: RequestConfig) {
    return this.inventory.getStockStats(filters, config);
  }

  async getStockAlerts(filters?: any, config?: RequestConfig) {
    return this.inventory.getStockAlerts(filters, config);
  }

  async performStockCycleCount(data: any, config?: RequestConfig) {
    return this.inventory.performStockCycleCount(data, config);
  }

  // Purchase management method delegations
  async getPurchaseOrders(filters?: any, config?: RequestConfig) {
    return this.purchase.getPurchaseOrders(filters, config);
  }

  async getPurchaseOrder(id: string, config?: RequestConfig) {
    return this.purchase.getPurchaseOrder(id, config);
  }

  async createPurchaseOrder(data: any, config?: RequestConfig) {
    return this.purchase.createPurchaseOrder(data, config);
  }

  async updatePurchaseOrder(id: string, data: any, config?: RequestConfig) {
    return this.purchase.updatePurchaseOrder(id, data, config);
  }

  async deletePurchaseOrder(id: string, config?: RequestConfig) {
    return this.purchase.deletePurchaseOrder(id, config);
  }

  async approvePurchaseOrder(id: string, config?: RequestConfig) {
    return this.purchase.approvePurchaseOrder(id, config);
  }

  async sendPurchaseOrder(id: string, config?: RequestConfig) {
    return this.purchase.sendPurchaseOrder(id, config);
  }

  async acknowledgePurchaseOrder(id: string, notes?: string, config?: RequestConfig) {
    return this.purchase.acknowledgePurchaseOrder(id, notes, config);
  }

  async cancelPurchaseOrder(id: string, reason?: string, config?: RequestConfig) {
    return this.purchase.cancelPurchaseOrder(id, reason, config);
  }

  async closePurchaseOrder(id: string, config?: RequestConfig) {
    return this.purchase.closePurchaseOrder(id, config);
  }

  async getPurchaseRequisitions(filters?: any, config?: RequestConfig) {
    return this.purchase.getPurchaseRequisitions(filters, config);
  }

  async getPurchaseRequisition(id: string, config?: RequestConfig) {
    return this.purchase.getPurchaseRequisition(id, config);
  }

  async createPurchaseRequisition(data: any, config?: RequestConfig) {
    return this.purchase.createPurchaseRequisition(data, config);
  }

  async updatePurchaseRequisition(id: string, data: any, config?: RequestConfig) {
    return this.purchase.updatePurchaseRequisition(id, data, config);
  }

  async deletePurchaseRequisition(id: string, config?: RequestConfig) {
    return this.purchase.deletePurchaseRequisition(id, config);
  }

  async submitPurchaseRequisition(id: string, config?: RequestConfig) {
    return this.purchase.submitPurchaseRequisition(id, config);
  }

  async approvePurchaseRequisition(id: string, config?: RequestConfig) {
    return this.purchase.approvePurchaseRequisition(id, config);
  }

  async rejectPurchaseRequisition(id: string, reason: string, config?: RequestConfig) {
    return this.purchase.rejectPurchaseRequisition(id, reason, config);
  }

  async getSupplierQuotations(filters?: any, config?: RequestConfig) {
    return this.purchase.getSupplierQuotations(filters, config);
  }

  async getSupplierQuotation(id: string, config?: RequestConfig) {
    return this.purchase.getSupplierQuotation(id, config);
  }

  async createSupplierQuotation(data: any, config?: RequestConfig) {
    return this.purchase.createSupplierQuotation(data, config);
  }

  async updateSupplierQuotation(id: string, data: any, config?: RequestConfig) {
    return this.purchase.updateSupplierQuotation(id, data, config);
  }

  async deleteSupplierQuotation(id: string, config?: RequestConfig) {
    return this.purchase.deleteSupplierQuotation(id, config);
  }

  async selectSupplierQuotation(id: string, config?: RequestConfig) {
    return this.purchase.selectSupplierQuotation(id, config);
  }

  async rejectSupplierQuotation(id: string, reason: string, config?: RequestConfig) {
    return this.purchase.rejectSupplierQuotation(id, reason, config);
  }

  async getGoodsReceipts(filters?: any, config?: RequestConfig) {
    return this.purchase.getGoodsReceipts(filters, config);
  }

  async getGoodsReceipt(id: string, config?: RequestConfig) {
    return this.purchase.getGoodsReceipt(id, config);
  }

  async createGoodsReceipt(data: any, config?: RequestConfig) {
    return this.purchase.createGoodsReceipt(data, config);
  }

  async updateGoodsReceipt(id: string, data: any, config?: RequestConfig) {
    return this.purchase.updateGoodsReceipt(id, data, config);
  }

  async deleteGoodsReceipt(id: string, config?: RequestConfig) {
    return this.purchase.deleteGoodsReceipt(id, config);
  }

  async inspectGoodsReceipt(id: string, data: any, config?: RequestConfig) {
    return this.purchase.inspectGoodsReceipt(id, data, config);
  }

  async acceptGoodsReceipt(id: string, config?: RequestConfig) {
    return this.purchase.acceptGoodsReceipt(id, config);
  }

  async rejectGoodsReceipt(id: string, reason: string, config?: RequestConfig) {
    return this.purchase.rejectGoodsReceipt(id, reason, config);
  }

  async postGoodsReceipt(id: string, config?: RequestConfig) {
    return this.purchase.postGoodsReceipt(id, config);
  }

  async getRFQs(filters?: any, config?: RequestConfig) {
    return this.purchase.getRFQs(filters, config);
  }

  async getRFQ(id: string, config?: RequestConfig) {
    return this.purchase.getRFQ(id, config);
  }

  async createRFQ(data: any, config?: RequestConfig) {
    return this.purchase.createRFQ(data, config);
  }

  async updateRFQ(id: string, data: any, config?: RequestConfig) {
    return this.purchase.updateRFQ(id, data, config);
  }

  async deleteRFQ(id: string, config?: RequestConfig) {
    return this.purchase.deleteRFQ(id, config);
  }

  async sendRFQ(id: string, supplierIds?: string[], config?: RequestConfig) {
    return this.purchase.sendRFQ(id, supplierIds, config);
  }

  async cancelRFQ(id: string, reason?: string, config?: RequestConfig) {
    return this.purchase.cancelRFQ(id, reason, config);
  }

  // Sales method delegations
  async getSalesOrders(filters?: any, config?: RequestConfig) {
    return this.sales.getSalesOrders(filters, config);
  }

  async getSalesOrder(id: string, config?: RequestConfig) {
    return this.sales.getSalesOrderById(id, config);
  }

  async createSalesOrder(data: any, config?: RequestConfig) {
    return this.sales.createSalesOrder(data, config);
  }

  async updateSalesOrder(id: string, data: any, config?: RequestConfig) {
    return this.sales.updateSalesOrder(id, data, config);
  }

  async deleteSalesOrder(id: string, config?: RequestConfig) {
    return this.sales.deleteSalesOrder(id, config);
  }

  async updateSalesOrderStatus(id: string, data: any, config?: RequestConfig) {
    return this.sales.updateSalesOrderStatus(id, data, config);
  }

  async addSalesOrderItem(salesOrderId: string, data: any, config?: RequestConfig) {
    return this.sales.addSalesOrderItem(salesOrderId, data, config);
  }

  async updateSalesOrderItem(salesOrderId: string, itemId: string, data: any, config?: RequestConfig) {
    return this.sales.updateSalesOrderItem(salesOrderId, itemId, data, config);
  }

  async removeSalesOrderItem(salesOrderId: string, itemId: string, config?: RequestConfig) {
    return this.sales.removeSalesOrderItem(salesOrderId, itemId, config);
  }

  async getSalesOrderHistory(id: string, config?: RequestConfig) {
    return this.sales.getSalesOrderHistory(id, config);
  }

  // Manufacturing method delegations
  async getBoms(filters?: BomQuery, config?: RequestConfig) {
    return this.manufacturing.getBoms(filters, config);
  }

  async getBomById(id: string, config?: RequestConfig) {
    return this.manufacturing.getBomById(id, config);
  }

  async createBom(data: any, config?: RequestConfig) {
    return this.manufacturing.createBom(data, config);
  }

  async updateBom(id: string, data: any, config?: RequestConfig) {
    return this.manufacturing.updateBom(id, data, config);
  }

  async deleteBom(id: string, config?: RequestConfig) {
    return this.manufacturing.deleteBom(id, config);
  }

  async getBomExplosion(id: string, explodePhantoms = true, config?: RequestConfig) {
    return this.manufacturing.getBomExplosion(id, explodePhantoms, config);
  }

  async cloneBom(id: string, data: any, config?: RequestConfig) {
    return this.manufacturing.cloneBom(id, data, config);
  }

  async getBomComponents(filters?: BomComponentQuery, config?: RequestConfig) {
    return this.manufacturing.getBomComponents(filters, config);
  }

  async createBomComponent(data: any, config?: RequestConfig) {
    return this.manufacturing.addBomComponent(data, config);
  }

  async updateBomComponent(id: string, data: any, config?: RequestConfig) {
    return this.manufacturing.updateBomComponent(id, data, config);
  }

  async deleteBomComponent(id: string, config?: RequestConfig) {
    return this.manufacturing.deleteBomComponent(id, config);
  }

  async getEcos(filters?: EcoQuery, config?: RequestConfig) {
    return this.manufacturing.getEcos(filters, config);
  }

  async getEcoById(id: string, config?: RequestConfig) {
    return this.manufacturing.getEcoById(id, config);
  }

  async createEco(data: any, config?: RequestConfig) {
    return this.manufacturing.createEco(data, config);
  }

  async updateEco(id: string, data: any, config?: RequestConfig) {
    return this.manufacturing.updateEco(id, data, config);
  }

  async approveEco(id: string, config?: RequestConfig) {
    return this.manufacturing.approveEco(id, config);
  }

  async rejectEco(id: string, data: any, config?: RequestConfig) {
    return this.manufacturing.rejectEco(id, data, config);
  }

  async getMrpRequirements(bomId: string, requiredQuantity: number, requiredDate: string, sourcingFilter?: string, config?: RequestConfig) {
    return this.manufacturing.runMrpRequirements({ requiredQuantity, requiredDate, sourcingFilter }, config);
  }

  async getBomLeadTime(bomId: string, config?: RequestConfig) {
    return this.manufacturing.getBomLeadTime(bomId, config);
  }

  async getBomStats(config?: RequestConfig) {
    return this.manufacturing.getBomStats(undefined, config);
  }

  async createBomQuick(itemId: string, bomCode: string, name: string, components: any[], config?: RequestConfig) {
    return this.manufacturing.createBomQuick({ itemId, bomCode, name, components }, config);
  }
}

// Export buildQuery function for external use
export { buildQuery } from "./utils/query-builder";