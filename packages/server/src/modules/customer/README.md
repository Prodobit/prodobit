# Customer Module

## Overview
Manages customer master data using the party model. Customers can be either persons or organizations with associated addresses and contact mechanisms.

## Database Schema

### Core Tables

#### parties
```sql
parties {
  id: uuid PRIMARY KEY
  tenant_id: uuid NOT NULL REFERENCES tenants
  party_type: text NOT NULL -- 'person' | 'organization'
  code: text NOT NULL -- Unique within tenant
  status: text NOT NULL DEFAULT 'active'
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()
  deleted_at: timestamp(6) with timezone NULL

  UNIQUE (tenant_id, code)
  INDEX (tenant_id, party_type)
  INDEX (tenant_id, status)
}
```

#### persons
```sql
persons {
  id: uuid PRIMARY KEY
  party_id: uuid NOT NULL REFERENCES parties
  tenant_id: uuid NOT NULL REFERENCES tenants
  first_name: text NOT NULL
  last_name: text NOT NULL
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()
  deleted_at: timestamp(6) with timezone NULL

  UNIQUE (party_id)
  INDEX (tenant_id)
}
```

#### organizations
```sql
organizations {
  id: uuid PRIMARY KEY
  party_id: uuid NOT NULL REFERENCES parties
  tenant_id: uuid NOT NULL REFERENCES tenants
  name: text NOT NULL
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()
  deleted_at: timestamp(6) with timezone NULL

  UNIQUE (party_id)
  INDEX (tenant_id)
}
```

#### addresses
```sql
addresses {
  id: uuid PRIMARY KEY
  party_id: uuid NOT NULL REFERENCES parties
  tenant_id: uuid NOT NULL REFERENCES tenants
  address_type: text NOT NULL -- 'billing' | 'shipping' | 'other'
  line1: text NOT NULL
  line2: text NULL
  city: text NULL
  country: text NOT NULL DEFAULT 'TR'
  is_primary: boolean NOT NULL DEFAULT false
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()
  deleted_at: timestamp(6) with timezone NULL

  INDEX (party_id, address_type)
  INDEX (party_id, is_primary)
  INDEX (tenant_id)
}
```

#### contact_mechanisms
```sql
contact_mechanisms {
  id: uuid PRIMARY KEY
  party_id: uuid NOT NULL REFERENCES parties
  tenant_id: uuid NOT NULL REFERENCES tenants
  contact_type: text NOT NULL -- 'email' | 'phone' | 'mobile' | 'fax'
  contact_value: text NOT NULL
  is_primary: boolean NOT NULL DEFAULT false
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()
  deleted_at: timestamp(6) with timezone NULL

  INDEX (party_id, contact_type)
  INDEX (party_id, is_primary)
  INDEX (tenant_id)
}
```

#### party_roles
```sql
party_roles {
  id: uuid PRIMARY KEY
  party_id: uuid NOT NULL REFERENCES parties
  tenant_id: uuid NOT NULL REFERENCES tenants
  role_type: text NOT NULL -- 'customer' | 'supplier' | 'employee'
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()
  deleted_at: timestamp(6) with timezone NULL

  UNIQUE (party_id, role_type)
  INDEX (tenant_id, role_type)
}
```

## Party Model Architecture

```
Party (Base Entity)
  ├── Person (Individual Customer)
  │   ├── Addresses
  │   ├── Contact Mechanisms
  │   └── Party Roles (customer)
  │
  └── Organization (Company Customer)
      ├── Addresses
      ├── Contact Mechanisms
      └── Party Roles (customer)
```

## API Endpoints

### GET /customers
List all customers for current tenant
- Auth: Required
- Permission: customer:read
- Returns: Array of parties with customer role
- Uses: PartyService.listPartiesByType(tenantId, partyType, 'customer')

### GET /customers/:id
Get single customer by ID
- Auth: Required
- Permission: customer:read
- Validates: Party has customer role
- Returns: Party with full details (person/org, addresses, contacts, roles)
- Returns 404: If not found or not a customer

### POST /customers
Create new customer (person or organization)
- Auth: Required
- Permission: customer:create
- Body (Person):
  ```json
  {
    "partyType": "person",
    "firstName": "string",
    "lastName": "string",
    "code": "string",
    "customerCode": "string (optional)",
    "addresses": [...],
    "contacts": [...]
  }
  ```
- Body (Organization):
  ```json
  {
    "partyType": "organization",
    "name": "string",
    "code": "string",
    "customerCode": "string (optional)",
    "addresses": [...],
    "contacts": [...]
  }
  ```
- Returns: Created customer with all related data (201)

### PUT /customers/:id
Update customer
- Auth: Required
- Permission: customer:update
- Body: Partial customer data
- Returns: Updated customer
- Returns 404: If customer not found

### DELETE /customers/:id
Soft delete customer
- Auth: Required
- Permission: customer:delete
- Sets: deleted_at timestamp
- Returns: Success message

## Service Layer

Uses **PartyService** from core services:

### Key Methods

#### createPerson(data)
Creates person-type customer
- Creates party record
- Creates person record
- Creates party_roles record (type: 'customer')
- Optionally creates addresses
- Optionally creates contact mechanisms

#### createOrganization(data)
Creates organization-type customer
- Creates party record
- Creates organization record
- Creates party_roles record (type: 'customer')
- Optionally creates addresses
- Optionally creates contact mechanisms

#### listPartiesByType(tenantId, partyType, roleType)
Lists parties by role
- Filters by tenant
- Optionally filters by party type (person/organization)
- Filters by role type ('customer')

#### getPartyWithDetails(partyId, tenantId)
Retrieves party with all related data
- Returns party
- Includes person/organization details
- Includes addresses
- Includes contact mechanisms
- Includes party roles

#### updateParty(partyId, tenantId, data)
Updates party and related records

#### deleteParty(partyId, tenantId)
Soft deletes party and cascades to related records

## Business Rules

1. Party code must be unique within tenant
2. Customer must have party_role with type='customer'
3. Party type can be 'person' or 'organization'
4. Person requires firstName and lastName
5. Organization requires name
6. Default country is 'TR' (Turkey)
7. Only one primary address per party
8. Only one primary contact per party
9. Soft delete cascades to persons/organizations/addresses/contacts

## Data Model Features

### Multi-role Support
A party can have multiple roles:
- Customer
- Supplier
- Employee

Same party can be both customer and supplier.

### Flexible Contact Information
- Multiple addresses per customer
- Multiple contact mechanisms per customer
- Primary flag for default address/contact
- Address types: billing, shipping, other
- Contact types: email, phone, mobile, fax

### Code Management
- Party code: Business identifier
- Customer code: Optional customer-specific code
- Codes are unique per tenant

## Integration Points

- **Sales Module**: Links to sales_orders via customer_id
- **Party Module**: Uses core party model
- **RBAC**: Permission-based access control
- **Tenant**: Multi-tenant isolation

## Error Handling

- NOT_FOUND (404): Customer not found or party without customer role
- INTERNAL_ERROR (500): Database or service errors
- Validation errors: Handled by PartyService

## Notes

- Uses party model for flexibility (customers can also be suppliers/employees)
- Supports both individual and corporate customers
- All operations are tenant-scoped
- Soft delete with timestamp
- Turkish market default (country: 'TR')
- No dedicated customer table - uses party_roles for identification
