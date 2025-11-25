# Supplier Module

## Overview
Manages supplier master data using the party model. Suppliers can be either persons or organizations with associated addresses and contact mechanisms. Identical structure to Customer module but with 'supplier' role type.

## Database Schema

### suppliers
```sql
suppliers {
  id: uuid PRIMARY KEY
  party_role_id: uuid NOT NULL REFERENCES party_roles
  tenant_id: uuid NOT NULL REFERENCES tenants
  supplier_code: text NOT NULL
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()
  deleted_at: timestamp(6) with timezone NULL

  UNIQUE (tenant_id, supplier_code)
  UNIQUE (party_role_id)
}
```

### Related Tables
Same party infrastructure as Customer module:
- parties (base entity)
- persons (individual suppliers)
- organizations (company suppliers)
- addresses (supplier addresses)
- contact_mechanisms (supplier contacts)
- party_roles (role_type: 'supplier')

## Party Model Architecture

```
Party (Base Entity)
  ├── Person (Individual Supplier)
  │   ├── Addresses
  │   ├── Contact Mechanisms
  │   └── Party Roles (supplier)
  │
  └── Organization (Company Supplier)
      ├── Addresses
      ├── Contact Mechanisms
      └── Party Roles (supplier)
```

## API Endpoints

### GET /suppliers
List all suppliers for current tenant
- Auth: Required
- Permission: supplier:read
- Returns: Array of parties with supplier role

### GET /suppliers/:id
Get single supplier by ID
- Auth: Required
- Permission: supplier:read
- Validates: Party has supplier role
- Returns: Party with full details
- Returns 404: If not found or not a supplier

### POST /suppliers
Create new supplier (person or organization)
- Auth: Required
- Permission: supplier:create
- Body (Person):
  ```json
  {
    "partyType": "person",
    "firstName": "string",
    "lastName": "string",
    "code": "string",
    "supplierCode": "string (optional)",
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
    "supplierCode": "string (optional)",
    "addresses": [...],
    "contacts": [...]
  }
  ```
- Returns: Created supplier (201)

### PUT /suppliers/:id
Update supplier
- Auth: Required
- Permission: supplier:update
- Body: Partial supplier data
- Returns: Updated supplier

### DELETE /suppliers/:id
Soft delete supplier
- Auth: Required
- Permission: supplier:delete
- Returns: Success message

## Service Layer

Uses **PartyService** from core services with role_type='supplier'.

## Business Rules

1. Supplier code must be unique within tenant
2. Supplier must have party_role with type='supplier'
3. Party type can be 'person' or 'organization'
4. Default country is 'TR' (Turkey)
5. Soft delete cascades to related records
6. Same party can be both customer and supplier (multi-role support)

## Integration Points

- **Purchase Module**: Links to purchase_orders via supplier_id
- **Party Module**: Uses core party model
- **RBAC**: Permission-based access control
- **Tenant**: Multi-tenant isolation

## Notes

- Identical architecture to Customer module
- Uses shared party infrastructure
- Supplier code is separate from party code
- Supports both individual and corporate suppliers
- All operations are tenant-scoped
