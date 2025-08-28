import type { Address, ContactMechanism, CreateOrganizationRequest, CreatePartyRequest, CreatePersonRequest, Organization, Party, PartyRole, Person, Response, UpdatePartyRequest, Pagination } from "@prodobit/types";
import type { RequestConfig, PartyFilters, ContactInfo, AddressInfo, RoleType, PartyType } from "../types";
import { BaseClient } from "./base-client";
export declare class PartyClient extends BaseClient {
    createPerson(data: CreatePersonRequest, config?: RequestConfig): Promise<Response<{
        party: Party;
        person: Person;
        roles: PartyRole[];
    }>>;
    createOrganization(data: CreateOrganizationRequest, config?: RequestConfig): Promise<Response<{
        party: Party;
        organization: Organization;
        roles: PartyRole[];
    }>>;
    getParties(query?: PartyFilters & Pagination, config?: RequestConfig): Promise<Response<Party[]>>;
    getParty(id: string, config?: RequestConfig): Promise<Response<{
        party: Party;
        specificData: Person | Organization;
        roles: PartyRole[];
        addresses: Address[];
        contacts: ContactMechanism[];
    }>>;
    updateParty(id: string, data: UpdatePartyRequest, config?: RequestConfig): Promise<Response<{
        party: Party;
        specificData: Person | Organization;
        roles: PartyRole[];
        addresses: Address[];
        contacts: ContactMechanism[];
    }>>;
    deleteParty(id: string, config?: RequestConfig): Promise<Response<void>>;
    getCustomers(config?: RequestConfig): Promise<Response<Party[]>>;
    getSuppliers(config?: RequestConfig): Promise<Response<Party[]>>;
    getEmployeeParties(config?: RequestConfig): Promise<Response<Party[]>>;
    createParty(data: CreatePartyRequest, config?: RequestConfig): Promise<Response<Party>>;
    /**
     * Create a person customer with minimal data
     */
    createPersonCustomer(firstName: string, lastName: string, email?: string, phone?: string, config?: RequestConfig): Promise<Response<{
        party: Party;
        person: Person;
        roles: PartyRole[];
    }>>;
    /**
     * Create a person supplier with minimal data
     */
    createPersonSupplier(firstName: string, lastName: string, email?: string, phone?: string, config?: RequestConfig): Promise<Response<{
        party: Party;
        person: Person;
        roles: PartyRole[];
    }>>;
    /**
     * Create an organization customer with minimal data
     */
    createOrganizationCustomer(name: string, email?: string, phone?: string, address?: string, config?: RequestConfig): Promise<Response<{
        party: Party;
        organization: Organization;
        roles: PartyRole[];
    }>>;
    /**
     * Create an organization supplier with minimal data
     */
    createOrganizationSupplier(name: string, email?: string, phone?: string, address?: string, config?: RequestConfig): Promise<Response<{
        party: Party;
        organization: Organization;
        roles: PartyRole[];
    }>>;
    /**
     * Create a person with multiple roles (e.g., customer + supplier)
     */
    createPersonWithRoles(firstName: string, lastName: string, roles: RoleType[], contacts?: ContactInfo[], addresses?: AddressInfo[], config?: RequestConfig): Promise<Response<{
        party: Party;
        person: Person;
        roles: PartyRole[];
    }>>;
    /**
     * Search parties by name/email/phone
     */
    searchParties(searchTerm: string, partyType?: PartyType, roleType?: RoleType, config?: RequestConfig): Promise<Response<Party[]>>;
}
//# sourceMappingURL=party-client.d.ts.map