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
import { BrandClient } from "./modules/brand-client";
import { MediaClient } from "./modules/media-client";
import { WarrantyClient } from "./modules/warranty-client";
import { AssignmentClient } from "./modules/assignment-client";
import { AssetPurchaseClient } from "./modules/asset-purchase-client";
import { DepartmentClient } from "./modules/department-client";
import { LocationTypeClient } from "./modules/location-type-client";
import { AssetTypeClient } from "./modules/asset-type-client";
import { AssetIssueClient } from "./modules/asset-issue-client";
import { TaskClient } from "./modules/task-client";
import { MaintenanceClient } from "./modules/maintenance-client";
import { CalibrationClient } from "./modules/calibration-client";
import { ServiceClient } from "./modules/service-client";
import { buildQuery } from "./utils/query-builder";
import type {
  Attribute,
  AttributeQuery,
  BomQuery,
  BomComponentQuery,
  EcoQuery,
  Brand,
  BrandQuery,
  CreateBrandRequest,
  UpdateBrandRequest,
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
  private brand: BrandClient;
  private media: MediaClient;
  private warranty: WarrantyClient;
  private assignment: AssignmentClient;
  private assetPurchase: AssetPurchaseClient;
  private department: DepartmentClient;
  private locationType: LocationTypeClient;
  private assetType: AssetTypeClient;
  private assetIssue: AssetIssueClient;
  private task: TaskClient;
  private maintenance: MaintenanceClient;
  private calibration: CalibrationClient;
  private service: ServiceClient;

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
    this.brand = new BrandClient(config);
    this.media = new MediaClient(config);
    this.warranty = new WarrantyClient(config);
    this.assignment = new AssignmentClient(config);
    this.assetPurchase = new AssetPurchaseClient(config);
    this.department = new DepartmentClient(config);
    this.locationType = new LocationTypeClient(config);
    this.assetType = new AssetTypeClient(config);
    this.assetIssue = new AssetIssueClient(config);
    this.task = new TaskClient(config);
    this.maintenance = new MaintenanceClient(config);
    this.calibration = new CalibrationClient(config);
    this.service = new ServiceClient(config);
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

  async loginWithOTP(email: string, tenantId?: string) {
    return this.auth.loginWithOTP(email, tenantId);
  }

  async completeLogin(email: string, code: string, tenantId?: string) {
    return this.auth.completeLogin(email, code, tenantId);
  }

  async signOut(allDevices = false) {
    return this.auth.signOut(allDevices);
  }

  // Session Management
  async getSessions(config?: RequestConfig) {
    return this.auth.getSessions(config);
  }

  async revokeSession(sessionId: string, data?: any, config?: RequestConfig) {
    return this.auth.revokeSession(sessionId, data, config);
  }

  async revokeAllSessions(data?: any, config?: RequestConfig) {
    return this.auth.revokeAllSessions(data, config);
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


  async getAssets(filters?: AssetFilters, config?: RequestConfig) {
    return this.locationAsset.getAssets(filters, config);
  }

  async searchAssets(searchTerm: string, filters?: Record<string, unknown>, config?: RequestConfig) {
    return this.locationAsset.searchAssets(searchTerm, filters, config);
  }

  async getAsset(assetId: string, config?: RequestConfig) {
    return this.locationAsset.getAsset(assetId, config);
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

  async createLocationQuick(name: string, locationType?: string, parentLocationId?: string, config?: RequestConfig) {
    return this.locationAsset.createLocationQuick(name, locationType, parentLocationId, config);
  }

  async createAssetQuick(name: string, locationId: string, assetType?: string, config?: RequestConfig) {
    return this.locationAsset.createAssetQuick(name, locationId, assetType, config);
  }

  // Asset nested resource methods
  async getAssetIssuesNested(assetId: string, config?: RequestConfig) {
    return this.auth.makeRequest("GET", `/api/v1/assets/${assetId}/issues`, undefined, config);
  }

  async getAssetMaintenancePlansNested(assetId: string, config?: RequestConfig) {
    return this.auth.makeRequest("GET", `/api/v1/assets/${assetId}/maintenance-plans`, undefined, config);
  }

  async getAssetMaintenanceRecordsNested(assetId: string, config?: RequestConfig) {
    return this.auth.makeRequest("GET", `/api/v1/assets/${assetId}/maintenance-records`, undefined, config);
  }

  async getAssetCalibrationPlansNested(assetId: string, config?: RequestConfig) {
    return this.auth.makeRequest("GET", `/api/v1/assets/${assetId}/calibration-plans`, undefined, config);
  }

  async getAssetCalibrationRecordsNested(assetId: string, config?: RequestConfig) {
    return this.auth.makeRequest("GET", `/api/v1/assets/${assetId}/calibration-records`, undefined, config);
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

  async getSpareParts(config?: RequestConfig): Promise<Response<ItemBase[]>> {
    return this.auth.makeRequest("GET", "/api/v1/items/spare-parts", undefined, config);
  }

  async getConsumables(config?: RequestConfig): Promise<Response<ItemBase[]>> {
    return this.auth.makeRequest("GET", "/api/v1/items/consumables", undefined, config);
  }

  async createSparePart(
    data: CreateItemRequest,
    config?: RequestConfig
  ): Promise<Response<ItemBase>> {
    return this.auth.makeRequest("POST", "/api/v1/items/spare-parts", data, config);
  }

  async createConsumable(
    data: CreateItemRequest,
    config?: RequestConfig
  ): Promise<Response<ItemBase>> {
    return this.auth.makeRequest("POST", "/api/v1/items/consumables", data, config);
  }

  // Asset Stock Usages methods
  async getAssetStockUsages(
    filters?: {
      assetId?: string;
      itemId?: string;
      usageType?: "maintenance" | "repair" | "calibration" | "replacement" | "routine";
      maintenanceRecordId?: string;
      calibrationRecordId?: string;
      usedById?: string;
      fromDate?: string;
      toDate?: string;
    },
    config?: RequestConfig
  ): Promise<Response<any[]>> {
    const queryString = buildQuery(filters);
    const path = `/api/v1/asset-stock-usages${queryString ? `?${queryString}` : ""}`;
    return this.auth.makeRequest("GET", path, undefined, config);
  }

  async getAssetStockUsage(
    id: string,
    config?: RequestConfig
  ): Promise<Response<any>> {
    return this.auth.makeRequest("GET", `/api/v1/asset-stock-usages/${id}`, undefined, config);
  }

  async createAssetStockUsage(
    data: {
      assetId: string;
      itemId: string;
      usageType: "maintenance" | "repair" | "calibration" | "replacement" | "routine";
      quantity: number;
      unit?: string;
      usedAt?: string;
      usedById?: string;
      unitCost?: number;
      totalCost?: number;
      currency?: string;
      notes?: string;
      lotNumber?: string;
      serialNumber?: string;
      maintenanceRecordId?: string;
      calibrationRecordId?: string;
      stockTransactionId?: string;
    },
    config?: RequestConfig
  ): Promise<Response<any>> {
    return this.auth.makeRequest("POST", "/api/v1/asset-stock-usages", data, config);
  }

  async bulkCreateAssetStockUsages(
    usages: Array<{
      assetId: string;
      itemId: string;
      usageType: "maintenance" | "repair" | "calibration" | "replacement" | "routine";
      quantity: number;
      unit?: string;
      usedAt?: string;
      usedById?: string;
      unitCost?: number;
      totalCost?: number;
      currency?: string;
      notes?: string;
      lotNumber?: string;
      serialNumber?: string;
      maintenanceRecordId?: string;
      calibrationRecordId?: string;
      stockTransactionId?: string;
    }>,
    config?: RequestConfig
  ): Promise<Response<any[]>> {
    return this.auth.makeRequest("POST", "/api/v1/asset-stock-usages/bulk", { usages }, config);
  }

  async updateAssetStockUsage(
    id: string,
    data: {
      usageType?: "maintenance" | "repair" | "calibration" | "replacement" | "routine";
      quantity?: number;
      unit?: string;
      usedAt?: string;
      usedById?: string;
      unitCost?: number;
      totalCost?: number;
      currency?: string;
      notes?: string;
      lotNumber?: string;
      serialNumber?: string;
      maintenanceRecordId?: string;
      calibrationRecordId?: string;
      stockTransactionId?: string;
    },
    config?: RequestConfig
  ): Promise<Response<any>> {
    return this.auth.makeRequest("PUT", `/api/v1/asset-stock-usages/${id}`, data, config);
  }

  async deleteAssetStockUsage(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.auth.makeRequest("DELETE", `/api/v1/asset-stock-usages/${id}`, undefined, config);
  }

  async getAssetUsageStats(
    assetId: string,
    config?: RequestConfig
  ): Promise<Response<{
    totalUsages: number;
    usagesByType: Record<string, number>;
    totalCost: number;
    recentUsages: any[];
  }>> {
    return this.auth.makeRequest("GET", `/api/v1/asset-stock-usages/stats/${assetId}`, undefined, config);
  }

  // ============ ASSET METERS ============

  async getAssetMeters(
    filters?: {
      assetId?: string;
      meterType?: string;
      isActive?: boolean;
    },
    config?: RequestConfig
  ): Promise<Response<any[]>> {
    const queryString = buildQuery(filters);
    const path = `/api/v1/asset-meters${queryString ? `?${queryString}` : ""}`;
    return this.auth.makeRequest("GET", path, undefined, config);
  }

  async getAssetMeter(
    id: string,
    config?: RequestConfig
  ): Promise<Response<any>> {
    return this.auth.makeRequest("GET", `/api/v1/asset-meters/${id}`, undefined, config);
  }

  async createAssetMeter(
    data: {
      assetId: string;
      meterType: string;
      name: string;
      unit: string;
      description?: string;
      initialReading?: number;
      installationDate?: string;
      rolloverValue?: number;
      hasRollover?: boolean;
    },
    config?: RequestConfig
  ): Promise<Response<any>> {
    return this.auth.makeRequest("POST", "/api/v1/asset-meters", data, config);
  }

  async updateAssetMeter(
    id: string,
    data: {
      name?: string;
      unit?: string;
      description?: string | null;
      rolloverValue?: number | null;
      hasRollover?: boolean;
      isActive?: boolean;
    },
    config?: RequestConfig
  ): Promise<Response<any>> {
    return this.auth.makeRequest("PUT", `/api/v1/asset-meters/${id}`, data, config);
  }

  async deleteAssetMeter(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.auth.makeRequest("DELETE", `/api/v1/asset-meters/${id}`, undefined, config);
  }

  async getMeterStats(
    meterId: string,
    config?: RequestConfig
  ): Promise<Response<any>> {
    return this.auth.makeRequest("GET", `/api/v1/asset-meters/${meterId}/stats`, undefined, config);
  }

  async getMeterReadings(
    meterId: string,
    config?: RequestConfig
  ): Promise<Response<any[]>> {
    return this.auth.makeRequest("GET", `/api/v1/asset-meters/${meterId}/readings`, undefined, config);
  }

  async createMeterReading(
    meterId: string,
    data: {
      reading: number;
      readingDate?: string;
      readingSource?: string;
      notes?: string;
    },
    config?: RequestConfig
  ): Promise<Response<any>> {
    return this.auth.makeRequest("POST", `/api/v1/asset-meters/${meterId}/readings`, data, config);
  }

  // ============ ASSET STATUS HISTORY ============

  async getAssetStatusHistory(
    filters?: {
      assetId?: string;
      status?: string;
      changeReason?: string;
      changedById?: string;
      fromDate?: string;
      toDate?: string;
    },
    config?: RequestConfig
  ): Promise<Response<any[]>> {
    const queryString = buildQuery(filters);
    const path = `/api/v1/asset-status-history${queryString ? `?${queryString}` : ""}`;
    return this.auth.makeRequest("GET", path, undefined, config);
  }

  async getAssetStatusHistoryById(
    id: string,
    config?: RequestConfig
  ): Promise<Response<any>> {
    return this.auth.makeRequest("GET", `/api/v1/asset-status-history/${id}`, undefined, config);
  }

  async getAssetHistoryByAsset(
    assetId: string,
    config?: RequestConfig
  ): Promise<Response<any[]>> {
    return this.auth.makeRequest("GET", `/api/v1/asset-status-history/asset/${assetId}`, undefined, config);
  }

  async getAssetLifecycleSummary(
    assetId: string,
    config?: RequestConfig
  ): Promise<Response<any>> {
    return this.auth.makeRequest("GET", `/api/v1/asset-status-history/asset/${assetId}/lifecycle`, undefined, config);
  }

  async updateAssetStatus(
    assetId: string,
    data: {
      status: string;
      changeReason?: string;
      reasonDetails?: string;
      notes?: string;
      maintenanceRecordId?: string;
      calibrationRecordId?: string;
      issueId?: string;
    },
    config?: RequestConfig
  ): Promise<Response<any>> {
    return this.auth.makeRequest("POST", `/api/v1/asset-status-history/asset/${assetId}/status`, data, config);
  }

  async getAssetsByStatus(
    status: string,
    config?: RequestConfig
  ): Promise<Response<any[]>> {
    return this.auth.makeRequest("GET", `/api/v1/asset-status-history/by-status/${status}`, undefined, config);
  }

  // ============ MAINTENANCE PLAN TRIGGERS ============

  async getMaintenancePlanTriggers(
    filters?: {
      maintenancePlanId?: string;
      triggerType?: string;
      meterId?: string;
      isActive?: boolean;
    },
    config?: RequestConfig
  ): Promise<Response<any[]>> {
    const queryString = buildQuery(filters);
    const path = `/api/v1/maintenance-plan-triggers${queryString ? `?${queryString}` : ""}`;
    return this.auth.makeRequest("GET", path, undefined, config);
  }

  async getMaintenancePlanTrigger(
    id: string,
    config?: RequestConfig
  ): Promise<Response<any>> {
    return this.auth.makeRequest("GET", `/api/v1/maintenance-plan-triggers/${id}`, undefined, config);
  }

  async getDueTriggers(
    config?: RequestConfig
  ): Promise<Response<any[]>> {
    return this.auth.makeRequest("GET", "/api/v1/maintenance-plan-triggers/due", undefined, config);
  }

  async createMaintenancePlanTrigger(
    data: {
      maintenancePlanId: string;
      triggerType: "time" | "meter" | "both";
      triggerMode?: "first" | "all";
      name?: string;
      description?: string;
      intervalDays?: number;
      intervalMonths?: number;
      meterId?: string;
      meterInterval?: number;
      meterThreshold?: number;
      priority?: number;
    },
    config?: RequestConfig
  ): Promise<Response<any>> {
    return this.auth.makeRequest("POST", "/api/v1/maintenance-plan-triggers", data, config);
  }

  async updateMaintenancePlanTrigger(
    id: string,
    data: {
      triggerType?: "time" | "meter" | "both";
      triggerMode?: "first" | "all";
      name?: string | null;
      description?: string | null;
      intervalDays?: number | null;
      intervalMonths?: number | null;
      meterId?: string | null;
      meterInterval?: number | null;
      meterThreshold?: number | null;
      isActive?: boolean;
      priority?: number | null;
    },
    config?: RequestConfig
  ): Promise<Response<any>> {
    return this.auth.makeRequest("PUT", `/api/v1/maintenance-plan-triggers/${id}`, data, config);
  }

  async deleteMaintenancePlanTrigger(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.auth.makeRequest("DELETE", `/api/v1/maintenance-plan-triggers/${id}`, undefined, config);
  }

  async markTriggerTriggered(
    id: string,
    currentMeterReading?: number,
    config?: RequestConfig
  ): Promise<Response<any>> {
    return this.auth.makeRequest("POST", `/api/v1/maintenance-plan-triggers/${id}/triggered`, { currentMeterReading }, config);
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
    this.brand.setTokenInfo(tokenInfo);
    this.media.setTokenInfo(tokenInfo);
    this.warranty.setTokenInfo(tokenInfo);
    this.assignment.setTokenInfo(tokenInfo);
    this.assetPurchase.setTokenInfo(tokenInfo);
    this.department.setTokenInfo(tokenInfo);
    this.locationType.setTokenInfo(tokenInfo);
    this.assetType.setTokenInfo(tokenInfo);
    this.assetIssue.setTokenInfo(tokenInfo);
    this.task.setTokenInfo(tokenInfo);
    this.maintenance.setTokenInfo(tokenInfo);
    this.calibration.setTokenInfo(tokenInfo);
    this.service.setTokenInfo(tokenInfo);
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
    this.brand.clearTokenInfo();
    this.media.clearTokenInfo();
    this.warranty.clearTokenInfo();
    this.assignment.clearTokenInfo();
    this.assetPurchase.clearTokenInfo();
    this.department.clearTokenInfo();
    this.locationType.clearTokenInfo();
    this.assetType.clearTokenInfo();
    this.assetIssue.clearTokenInfo();
    this.task.clearTokenInfo();
    this.maintenance.clearTokenInfo();
    this.calibration.clearTokenInfo();
    this.service.clearTokenInfo();
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

  get warrantyClient(): WarrantyClient {
    return this.warranty;
  }

  get assignmentClient(): AssignmentClient {
    return this.assignment;
  }

  get assetPurchaseClient(): AssetPurchaseClient {
    return this.assetPurchase;
  }

  get departmentClient(): DepartmentClient {
    return this.department;
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

  // Brand method delegations
  async getBrands(filters?: Partial<BrandQuery>, config?: RequestConfig): Promise<Response<Brand[]>> {
    return this.brand.getBrands(filters, config);
  }

  async getBrand(id: string, config?: RequestConfig): Promise<Response<Brand>> {
    return this.brand.getBrand(id, config);
  }

  async createBrand(data: CreateBrandRequest, config?: RequestConfig): Promise<Response<Brand>> {
    return this.brand.createBrand(data, config);
  }

  async updateBrand(id: string, data: UpdateBrandRequest, config?: RequestConfig): Promise<Response<Brand>> {
    return this.brand.updateBrand(id, data, config);
  }

  async deleteBrand(id: string, config?: RequestConfig): Promise<Response<Brand>> {
    return this.brand.deleteBrand(id, config);
  }

  // Brand client getter
  get brandClient(): BrandClient {
    return this.brand;
  }

  // Media method delegations
  async uploadItemImage(
    itemId: string,
    file: File | Blob,
    metadata?: Partial<typeof import("@prodobit/types").uploadItemImageRequest.infer>,
    config?: RequestConfig
  ) {
    return this.media.uploadItemImage(itemId, file, metadata, config);
  }

  async listItemImages(itemId: string, config?: RequestConfig) {
    return this.media.listItemImages(itemId, config);
  }

  async getItemImage(imageId: string, config?: RequestConfig) {
    return this.media.getItemImage(imageId, config);
  }

  async deleteItemImage(imageId: string, config?: RequestConfig) {
    return this.media.deleteItemImage(imageId, config);
  }

  async setPrimaryImage(imageId: string, itemId: string, config?: RequestConfig) {
    return this.media.setPrimaryImage(imageId, itemId, config);
  }

  async reorderImages(itemId: string, imageIds: string[], config?: RequestConfig) {
    return this.media.reorderImages(itemId, imageIds, config);
  }

  async updateAltText(imageId: string, altText: string, config?: RequestConfig) {
    return this.media.updateAltText(imageId, altText, config);
  }

  async getStorageStats(config?: RequestConfig) {
    return this.media.getStorageStats(config);
  }

  // Asset image method delegations
  async uploadAssetImage(
    assetId: string,
    file: File | Blob,
    metadata?: Partial<typeof import("@prodobit/types").uploadItemImageRequest.infer>,
    config?: RequestConfig
  ) {
    return this.media.uploadAssetImage(assetId, file, metadata, config);
  }

  async listAssetImages(assetId: string, config?: RequestConfig) {
    return this.media.listAssetImages(assetId, config);
  }

  async updateAssetImage(
    imageId: string,
    updates: { displayOrder?: number; isPrimary?: boolean; altText?: string },
    config?: RequestConfig
  ) {
    return this.media.updateAssetImage(imageId, updates, config);
  }

  async deleteAssetImage(imageId: string, config?: RequestConfig) {
    return this.media.deleteAssetImage(imageId, config);
  }

  // Media client getter
  get mediaClient(): MediaClient {
    return this.media;
  }

  // Warranty method delegations
  async getWarranties(query?: any, config?: RequestConfig) {
    return this.warranty.getAll(query);
  }

  async getWarranty(id: string, config?: RequestConfig) {
    return this.warranty.getById(id);
  }

  async getAssetWarranties(assetId: string, config?: RequestConfig) {
    return this.warranty.getByAsset(assetId);
  }

  async getActiveAssetWarranty(assetId: string, config?: RequestConfig) {
    return this.warranty.getActiveByAsset(assetId);
  }

  async getExpiringWarranties(days: number = 30, config?: RequestConfig) {
    return this.warranty.getExpiring(days);
  }

  async createWarranty(data: any, config?: RequestConfig) {
    return this.warranty.create(data);
  }

  async updateWarranty(id: string, data: any, config?: RequestConfig) {
    return this.warranty.update(id, data);
  }

  async deleteWarranty(id: string, config?: RequestConfig) {
    return this.warranty.delete(id);
  }

  // Assignment method delegations
  async getAssignments(query?: any, config?: RequestConfig) {
    return this.assignment.getAll(query);
  }

  async getAssignment(id: string, config?: RequestConfig) {
    return this.assignment.getById(id);
  }

  async getAssetAssignmentHistory(assetId: string, config?: RequestConfig) {
    return this.assignment.getAssetHistory(assetId);
  }

  async getActiveAssignments(assignedTo: string, config?: RequestConfig) {
    return this.assignment.getActiveAssignments(assignedTo);
  }

  async createAssignment(data: any, config?: RequestConfig) {
    return this.assignment.create(data);
  }

  async returnAssignment(id: string, returnCondition?: "good" | "damaged" | "needs_repair", config?: RequestConfig) {
    return this.assignment.return(id, returnCondition);
  }

  async transferAssignment(id: string, newAssignedTo: string, newAssignedType: "user" | "department" | "location", config?: RequestConfig) {
    return this.assignment.transfer(id, newAssignedTo, newAssignedType);
  }

  async updateAssignment(id: string, data: any, config?: RequestConfig) {
    return this.assignment.update(id, data);
  }

  async deleteAssignment(id: string, config?: RequestConfig) {
    return this.assignment.delete(id);
  }

  // Asset Purchase method delegations
  async getAssetPurchases(query?: any, config?: RequestConfig) {
    return this.assetPurchase.getAll(query);
  }

  async getAssetPurchase(id: string, config?: RequestConfig) {
    return this.assetPurchase.getById(id);
  }

  async getAssetPurchasesByAsset(assetId: string, config?: RequestConfig) {
    return this.assetPurchase.getByAsset(assetId);
  }

  async createAssetPurchase(data: any, config?: RequestConfig) {
    return this.assetPurchase.create(data);
  }

  async updateAssetPurchase(id: string, data: any, config?: RequestConfig) {
    return this.assetPurchase.update(id, data);
  }

  async deleteAssetPurchase(id: string, config?: RequestConfig) {
    return this.assetPurchase.delete(id);
  }

  // Department method delegations
  async getDepartments(query?: any, config?: RequestConfig) {
    return this.department.getAll(query);
  }

  async getDepartment(id: string, config?: RequestConfig) {
    return this.department.getById(id);
  }

  async getDepartmentHierarchy(id: string, config?: RequestConfig) {
    return this.department.getHierarchy(id);
  }

  async createDepartment(data: any, config?: RequestConfig) {
    return this.department.create(data);
  }

  async updateDepartment(id: string, data: any, config?: RequestConfig) {
    return this.department.update(id, data);
  }

  async deleteDepartment(id: string, config?: RequestConfig) {
    return this.department.delete(id);
  }

  async getDepartmentMembers(departmentId: string, query?: any, config?: RequestConfig) {
    return this.department.getMembers(departmentId, query);
  }

  async addDepartmentMember(departmentId: string, data: any, config?: RequestConfig) {
    return this.department.addMember(departmentId, data);
  }

  async updateDepartmentMember(memberId: string, data: any, config?: RequestConfig) {
    return this.department.updateMember(memberId, data);
  }

  async removeDepartmentMember(memberId: string, config?: RequestConfig) {
    return this.department.removeMember(memberId);
  }

  // LocationType methods
  async getLocationTypes(params?: { category?: string }, config?: RequestConfig) {
    return this.locationType.list(params, config);
  }

  async getLocationTypeById(id: string, config?: RequestConfig) {
    return this.locationType.get(id, config);
  }

  async createLocationType(data: any, config?: RequestConfig) {
    return this.locationType.create(data, config);
  }

  async updateLocationType(id: string, data: any, config?: RequestConfig) {
    return this.locationType.update(id, data, config);
  }

  async deleteLocationType(id: string, config?: RequestConfig) {
    return this.locationType.delete(id, config);
  }

  // AssetType methods
  async getAssetTypes(params?: { category?: string }, config?: RequestConfig) {
    return this.assetType.list(params, config);
  }

  async getAssetTypeById(id: string, config?: RequestConfig) {
    return this.assetType.get(id, config);
  }

  async createAssetType(data: any, config?: RequestConfig) {
    return this.assetType.create(data, config);
  }

  async updateAssetType(id: string, data: any, config?: RequestConfig) {
    return this.assetType.update(id, data, config);
  }

  async deleteAssetType(id: string, config?: RequestConfig) {
    return this.assetType.delete(id, config);
  }

  // AssetIssue methods
  async getAssetIssues(query?: any, config?: RequestConfig) {
    return this.assetIssue.getAll(query, config);
  }

  async getAssetIssueById(id: string, config?: RequestConfig) {
    return this.assetIssue.getById(id, config);
  }

  async getAssetIssuesByAsset(assetId: string, config?: RequestConfig) {
    return this.assetIssue.getByAsset(assetId, config);
  }

  async getCriticalAssetIssues(config?: RequestConfig) {
    return this.assetIssue.getCritical(config);
  }

  async getAssetIssueStatistics(config?: RequestConfig) {
    return this.assetIssue.getStatistics(config);
  }

  async createAssetIssue(data: any, config?: RequestConfig) {
    return this.assetIssue.create(data, config);
  }

  async updateAssetIssue(id: string, data: any, config?: RequestConfig) {
    return this.assetIssue.update(id, data, config);
  }

  async deleteAssetIssue(id: string, config?: RequestConfig) {
    return this.assetIssue.delete(id, config);
  }

  // Task methods
  async getTasks(query?: any, config?: RequestConfig) {
    return this.task.getAll(query, config);
  }

  async getTaskById(id: string, config?: RequestConfig) {
    return this.task.getById(id, config);
  }

  async getTaskSubtasks(parentTaskId: string, config?: RequestConfig) {
    return this.task.getSubtasks(parentTaskId, config);
  }

  async getOverdueTasks(config?: RequestConfig) {
    return this.task.getOverdue(config);
  }

  async getUpcomingTasks(days: number, config?: RequestConfig) {
    return this.task.getUpcoming(days, config);
  }

  async getMyTasks(config?: RequestConfig) {
    return this.task.getMyTasks(config);
  }

  async getTaskDependencies(taskId: string, config?: RequestConfig) {
    return this.task.getDependencies(taskId, config);
  }

  async createTask(data: any, config?: RequestConfig) {
    return this.task.create(data, config);
  }

  async updateTask(id: string, data: any, config?: RequestConfig) {
    return this.task.update(id, data, config);
  }

  async deleteTask(id: string, config?: RequestConfig) {
    return this.task.delete(id, config);
  }

  async addTaskDependency(taskId: string, data: any, config?: RequestConfig) {
    return this.task.addDependency(taskId, data, config);
  }

  async removeTaskDependency(dependencyId: string, config?: RequestConfig) {
    return this.task.removeDependency(dependencyId, config);
  }

  // Maintenance methods
  async getMaintenancePlans(query?: any, config?: RequestConfig) {
    return this.maintenance.getPlans(query, config);
  }

  async getMaintenancePlanById(id: string, config?: RequestConfig) {
    return this.maintenance.getPlanById(id, config);
  }

  async getMaintenancePlansByAsset(assetId: string, config?: RequestConfig) {
    return this.maintenance.getPlansByAsset(assetId, config);
  }

  async getUpcomingMaintenancePlans(days: number, config?: RequestConfig) {
    return this.maintenance.getUpcomingPlans(days, config);
  }

  async createMaintenancePlan(data: any, config?: RequestConfig) {
    return this.maintenance.createPlan(data, config);
  }

  async updateMaintenancePlan(id: string, data: any, config?: RequestConfig) {
    return this.maintenance.updatePlan(id, data, config);
  }

  async deleteMaintenancePlan(id: string, config?: RequestConfig) {
    return this.maintenance.deletePlan(id, config);
  }

  async getMaintenanceRecords(query?: any, config?: RequestConfig) {
    return this.maintenance.getRecords(query, config);
  }

  async getMaintenanceRecordById(id: string, config?: RequestConfig) {
    return this.maintenance.getRecordById(id, config);
  }

  async getMaintenanceRecordsByPlan(planId: string, config?: RequestConfig) {
    return this.maintenance.getRecordsByPlan(planId, config);
  }

  async getMaintenanceRecordsByAsset(assetId: string, config?: RequestConfig) {
    return this.maintenance.getRecordsByAsset(assetId, config);
  }

  async createMaintenanceRecord(data: any, config?: RequestConfig) {
    return this.maintenance.createRecord(data, config);
  }

  async updateMaintenanceRecord(id: string, data: any, config?: RequestConfig) {
    return this.maintenance.updateRecord(id, data, config);
  }

  async deleteMaintenanceRecord(id: string, config?: RequestConfig) {
    return this.maintenance.deleteRecord(id, config);
  }

  // Calibration methods
  async getCalibrationPlans(query?: any, config?: RequestConfig) {
    return this.calibration.getPlans(query, config);
  }

  async getCalibrationPlanById(id: string, config?: RequestConfig) {
    return this.calibration.getPlanById(id, config);
  }

  async getCalibrationPlansByAsset(assetId: string, config?: RequestConfig) {
    return this.calibration.getPlansByAsset(assetId, config);
  }

  async getUpcomingCalibrationPlans(days: number, config?: RequestConfig) {
    return this.calibration.getUpcomingPlans(days, config);
  }

  async getOverdueCalibrationPlans(config?: RequestConfig) {
    return this.calibration.getOverduePlans(config);
  }

  async createCalibrationPlan(data: any, config?: RequestConfig) {
    return this.calibration.createPlan(data, config);
  }

  async updateCalibrationPlan(id: string, data: any, config?: RequestConfig) {
    return this.calibration.updatePlan(id, data, config);
  }

  async deleteCalibrationPlan(id: string, config?: RequestConfig) {
    return this.calibration.deletePlan(id, config);
  }

  async getCalibrationRecords(query?: any, config?: RequestConfig) {
    return this.calibration.getRecords(query, config);
  }

  async getCalibrationRecordById(id: string, config?: RequestConfig) {
    return this.calibration.getRecordById(id, config);
  }

  async getCalibrationRecordsByPlan(planId: string, config?: RequestConfig) {
    return this.calibration.getRecordsByPlan(planId, config);
  }

  async getCalibrationRecordsByAsset(assetId: string, config?: RequestConfig) {
    return this.calibration.getRecordsByAsset(assetId, config);
  }

  async getExpiringCalibrationCertificates(days: number, config?: RequestConfig) {
    return this.calibration.getExpiringCertificates(days, config);
  }

  async createCalibrationRecord(data: any, config?: RequestConfig) {
    return this.calibration.createRecord(data, config);
  }

  async updateCalibrationRecord(id: string, data: any, config?: RequestConfig) {
    return this.calibration.updateRecord(id, data, config);
  }

  async deleteCalibrationRecord(id: string, config?: RequestConfig) {
    return this.calibration.deleteRecord(id, config);
  }

  // Service module getter
  get serviceClient(): ServiceClient {
    return this.service;
  }

  // Service Contract methods
  async getServiceContracts(query?: any, config?: RequestConfig) {
    return this.service.getContracts(query, config);
  }

  async getServiceContractById(id: string, config?: RequestConfig) {
    return this.service.getContractById(id, config);
  }

  async getServiceContractsByCustomer(customerId: string, config?: RequestConfig) {
    return this.service.getContractsByCustomer(customerId, config);
  }

  async getExpiringServiceContracts(days: number = 30, config?: RequestConfig) {
    return this.service.getExpiringContracts(days, config);
  }

  async createServiceContract(data: any, config?: RequestConfig) {
    return this.service.createContract(data, config);
  }

  async updateServiceContract(id: string, data: any, config?: RequestConfig) {
    return this.service.updateContract(id, data, config);
  }

  async deleteServiceContract(id: string, config?: RequestConfig) {
    return this.service.deleteContract(id, config);
  }

  async getServiceContractAssets(contractId: string, config?: RequestConfig) {
    return this.service.getContractAssets(contractId, config);
  }

  async addServiceContractAsset(contractId: string, data: any, config?: RequestConfig) {
    return this.service.addContractAsset(contractId, data, config);
  }

  async removeServiceContractAsset(contractId: string, assetId: string, config?: RequestConfig) {
    return this.service.removeContractAsset(contractId, assetId, config);
  }

  async getServiceContractsForAsset(assetId: string, config?: RequestConfig) {
    return this.service.getContractsForAsset(assetId, config);
  }

  // Service Ticket methods
  async getServiceTickets(query?: any, config?: RequestConfig) {
    return this.service.getTickets(query, config);
  }

  async getServiceTicketById(id: string, config?: RequestConfig) {
    return this.service.getTicketById(id, config);
  }

  async getServiceTicketsByContract(contractId: string, config?: RequestConfig) {
    return this.service.getTicketsByContract(contractId, config);
  }

  async getServiceTicketsByAsset(assetId: string, config?: RequestConfig) {
    return this.service.getTicketsByAsset(assetId, config);
  }

  async getOpenServiceTickets(config?: RequestConfig) {
    return this.service.getOpenTickets(config);
  }

  async getOverdueServiceTickets(config?: RequestConfig) {
    return this.service.getOverdueTickets(config);
  }

  async getServiceTicketStatistics(config?: RequestConfig) {
    return this.service.getTicketStatistics(config);
  }

  async createServiceTicket(data: any, config?: RequestConfig) {
    return this.service.createTicket(data, config);
  }

  async updateServiceTicket(id: string, data: any, config?: RequestConfig) {
    return this.service.updateTicket(id, data, config);
  }

  async deleteServiceTicket(id: string, config?: RequestConfig) {
    return this.service.deleteTicket(id, config);
  }

  async getServiceTicketComments(ticketId: string, config?: RequestConfig) {
    return this.service.getTicketComments(ticketId, config);
  }

  async addServiceTicketComment(ticketId: string, data: any, config?: RequestConfig) {
    return this.service.addTicketComment(ticketId, data, config);
  }

  async getServiceTicketStatusHistory(ticketId: string, config?: RequestConfig) {
    return this.service.getTicketStatusHistory(ticketId, config);
  }
}

// Export buildQuery function for external use
export { buildQuery } from "./utils/query-builder";