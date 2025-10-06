import type {
  Address,
  ContactMechanism,
  CreateOrganizationRequest,
  CreatePartyRequest,
  CreatePersonRequest,
  Organization,
  Party,
  PartyRole,
  Person,
  Response,
  UpdatePartyRequest,
  Pagination,
  GetPartyResponse,
  PaginatedResponse,
} from "@prodobit/types";
import {
  createPersonRequest,
  createOrganizationRequest,
  createPartyRequest,
  updatePartyRequest,
} from "@prodobit/types";
import type {
  RequestConfig,
  PartyFilters,
  ContactInfo,
  AddressInfo,
  RoleType,
  PartyType,
} from "../types";
import { BaseClient } from "./base-client";
import { buildQuery } from "../utils/query-builder";
import { validateRequest } from "../utils/validation";

export class PartyClient extends BaseClient {
  // Create Person with automatic role assignments
  async createPerson(
    data: CreatePersonRequest,
    config?: RequestConfig
  ): Promise<
    Response<{
      party: Party;
      person: Person;
      roles: PartyRole[];
    }>
  > {
    const validatedData = validateRequest(createPersonRequest, data);
    return this.request(
      "POST",
      "/api/v1/parties/persons",
      validatedData,
      config
    );
  }

  // Create Organization with automatic role assignments
  async createOrganization(
    data: CreateOrganizationRequest,
    config?: RequestConfig
  ): Promise<
    Response<{
      party: Party;
      organization: Organization;
      roles: PartyRole[];
    }>
  > {
    const validatedData = validateRequest(createOrganizationRequest, data);
    return this.request(
      "POST",
      "/api/v1/parties/organizations",
      validatedData,
      config
    );
  }

  // Get parties with filtering
  async getParties(
    query?: PartyFilters & Pagination,
    config?: RequestConfig
  ): Promise<PaginatedResponse<Party[]>> {
    const queryString = buildQuery(query);
    const path = `/api/v1/parties${queryString ? `?${queryString}` : ""}`;
    return this.request("GET", path, undefined, config);
  }

  // Get single party with full details (includes addresses, contacts, roles)
  async getParty(
    id: string,
    config?: RequestConfig
  ): Promise<Response<GetPartyResponse>> {
    return this.request("GET", `/api/v1/parties/${id}`, undefined, config);
  }

  // Update party basic info
  async updateParty(
    id: string,
    data: UpdatePartyRequest,
    config?: RequestConfig
  ): Promise<Response<GetPartyResponse>> {
    const validatedData = validateRequest(updatePartyRequest, data);
    return this.request("PUT", `/api/v1/parties/${id}`, validatedData, config);
  }

  // Soft delete party
  async deleteParty(
    id: string,
    config?: RequestConfig
  ): Promise<Response<void>> {
    return this.request("DELETE", `/api/v1/parties/${id}`, undefined, config);
  }

  // Role-specific party methods

  // Get all customers (persons + organizations with customer role)
  async getCustomers(config?: RequestConfig): Promise<PaginatedResponse<Party[]>> {
    return this.request("GET", "/api/v1/customers", undefined, config);
  }

  // Get all suppliers (persons + organizations with supplier role)
  async getSuppliers(config?: RequestConfig): Promise<PaginatedResponse<Party[]>> {
    return this.request("GET", "/api/v1/suppliers", undefined, config);
  }

  // Get all employee parties
  async getEmployeeParties(config?: RequestConfig): Promise<PaginatedResponse<Party[]>> {
    return this.request("GET", "/api/v1/parties/employees", undefined, config);
  }

  // Legacy party methods for backward compatibility
  async createParty(
    data: CreatePartyRequest,
    config?: RequestConfig
  ): Promise<Response<Party>> {
    return this.request("POST", "/api/v1/parties", data, config);
  }

  // Smart Party Helper Methods for easier usage

  /**
   * Create a person customer with minimal data
   */
  async createPersonCustomer(
    firstName: string,
    lastName: string,
    email?: string,
    phone?: string,
    config?: RequestConfig
  ): Promise<Response<{ party: Party; person: Person; roles: PartyRole[] }>> {
    const data: CreatePersonRequest = {
      firstName,
      lastName,
      roles: ["customer"],
      ...(email && {
        contacts: [
          { contactType: "email", contactValue: email, isPrimary: true },
        ],
      }),
      ...(phone && {
        contacts: [
          { contactType: "phone", contactValue: phone, isPrimary: !email },
        ],
      }),
    };

    if (email && phone) {
      data.contacts = [
        { contactType: "email", contactValue: email, isPrimary: true },
        { contactType: "phone", contactValue: phone, isPrimary: false },
      ];
    }

    return this.createPerson(data, config);
  }

  /**
   * Create a person supplier with minimal data
   */
  async createPersonSupplier(
    firstName: string,
    lastName: string,
    email?: string,
    phone?: string,
    config?: RequestConfig
  ): Promise<Response<{ party: Party; person: Person; roles: PartyRole[] }>> {
    const data: CreatePersonRequest = {
      firstName,
      lastName,
      roles: ["supplier"],
      ...(email && {
        contacts: [
          { contactType: "email", contactValue: email, isPrimary: true },
        ],
      }),
      ...(phone && {
        contacts: [
          { contactType: "phone", contactValue: phone, isPrimary: !email },
        ],
      }),
    };

    if (email && phone) {
      data.contacts = [
        { contactType: "email", contactValue: email, isPrimary: true },
        { contactType: "phone", contactValue: phone, isPrimary: false },
      ];
    }

    return this.createPerson(data, config);
  }

  /**
   * Create an organization customer with minimal data
   */
  async createOrganizationCustomer(
    name: string,
    email?: string,
    phone?: string,
    address?: string,
    config?: RequestConfig
  ): Promise<
    Response<{ party: Party; organization: Organization; roles: PartyRole[] }>
  > {
    const data: CreateOrganizationRequest = {
      name,
      roles: ["customer"],
      ...(email && {
        contacts: [
          { contactType: "email", contactValue: email, isPrimary: true },
        ],
      }),
      ...(phone && {
        contacts: [
          { contactType: "phone", contactValue: phone, isPrimary: !email },
        ],
      }),
      ...(address && {
        addresses: [
          {
            addressType: "billing",
            line1: address,
            country: "US",
            isPrimary: true,
          },
        ],
      }),
    };

    if (email && phone) {
      data.contacts = [
        { contactType: "email", contactValue: email, isPrimary: true },
        { contactType: "phone", contactValue: phone, isPrimary: false },
      ];
    }

    return this.createOrganization(data, config);
  }

  /**
   * Create an organization supplier with minimal data
   */
  async createOrganizationSupplier(
    name: string,
    email?: string,
    phone?: string,
    address?: string,
    config?: RequestConfig
  ): Promise<
    Response<{ party: Party; organization: Organization; roles: PartyRole[] }>
  > {
    const data: CreateOrganizationRequest = {
      name,
      roles: ["supplier"],
      ...(email && {
        contacts: [
          { contactType: "email", contactValue: email, isPrimary: true },
        ],
      }),
      ...(phone && {
        contacts: [
          { contactType: "phone", contactValue: phone, isPrimary: !email },
        ],
      }),
      ...(address && {
        addresses: [
          {
            addressType: "billing",
            line1: address,
            country: "US",
            isPrimary: true,
          },
        ],
      }),
    };

    if (email && phone) {
      data.contacts = [
        { contactType: "email", contactValue: email, isPrimary: true },
        { contactType: "phone", contactValue: phone, isPrimary: false },
      ];
    }

    return this.createOrganization(data, config);
  }

  /**
   * Create a person with multiple roles (e.g., customer + supplier)
   */
  async createPersonWithRoles(
    firstName: string,
    lastName: string,
    roles: RoleType[],
    contacts?: ContactInfo[],
    addresses?: AddressInfo[],
    config?: RequestConfig
  ): Promise<Response<{ party: Party; person: Person; roles: PartyRole[] }>> {
    const data: CreatePersonRequest = {
      firstName,
      lastName,
      roles,
      ...(contacts && {
        contacts: contacts.map((c) => ({
          contactType: c.type,
          contactValue: c.value,
          isPrimary: c.isPrimary || false,
        })),
      }),
      ...(addresses && {
        addresses: addresses.map((a) => ({
          addressType: a.type,
          line1: a.line1,
          city: a.city,
          country: "US", // Default country, should be provided by caller
          isPrimary: false,
        })),
      }),
    };

    return this.createPerson(data, config);
  }

  /**
   * Search parties by name/email/phone
   */
  async searchParties(
    searchTerm: string,
    partyType?: PartyType,
    roleType?: RoleType,
    config?: RequestConfig
  ): Promise<Response<Party[]>> {
    // Note: This assumes the backend implements search functionality
    // You might need to implement this in the backend if not available
    const params = new URLSearchParams();
    params.append("search", searchTerm);
    if (partyType) params.append("partyType", partyType);
    if (roleType) params.append("roleType", roleType);

    return this.request(
      "GET",
      `/api/v1/parties/search?${params.toString()}`,
      undefined,
      config
    );
  }
}
