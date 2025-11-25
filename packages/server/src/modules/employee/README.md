# Employee Module

## Overview
Manages employee records and their complete lifecycle including user account creation, authentication, party roles, and tenant membership.

## Database Schema

### Table: employees
```sql
employees {
  id: uuid PRIMARY KEY
  party_role_id: uuid NOT NULL
  tenant_id: uuid NOT NULL
  employee_code: text NOT NULL
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()
  deleted_at: timestamp(6) with timezone NULL
}
```

**Related Tables:**
- users (via party_role → party → user)
- auth_methods (authentication providers)
- parties (party data)
- persons (personal information)
- party_roles (employee role linkage)
- tenant_memberships (tenant access)
- roles (permission roles)

## Key Features

### Complete Employee Creation
Creates a full employee record with 8 related tables in a single transaction:
1. User account
2. Auth method (email/phone)
3. Party record
4. Person record
5. Party role (employee type)
6. Employee record
7. Tenant membership
8. Role assignment

### Employee Code Generation
Auto-generates employee codes with format: `EMP{timestamp}{random}`
Example: `EMP123456AB`

### Soft Delete
Uses `deleted_at` timestamp for soft deletion. Records are never physically deleted.

## API Endpoints

### GET /employees
List all employees for current tenant
- Auth: Required
- Permission: employee:read
- Returns: Array of employee records

### GET /employees/:id
Get single employee by ID
- Auth: Required
- Permission: employee:read
- Returns: Employee record or 404

### POST /employees
Create new employee with complete user setup
- Auth: Required
- Permission: employee:write
- Body:
  ```json
  {
    "firstName": "string",
    "lastName": "string",
    "middleName": "string (optional)",
    "authType": "email | phone",
    "authValue": "string",
    "employeeCode": "string (optional)",
    "role": "string (optional)"
  }
  ```
- Returns: Created employee + user + all related records

### PUT /employees/:id
Update employee record
- Auth: Required
- Permission: employee:write
- Body: Partial employee data
- Returns: Updated employee record

### DELETE /employees/:id
Soft delete employee
- Auth: Required
- Permission: employee:write
- Returns: Success message

## Service Methods

### createCompleteEmployee(data)
Creates complete employee setup in transaction
- Parameters: CreateEmployeeData
- Returns: All created records (user, authMethod, party, person, partyRole, employee, membership)
- Throws: Error if default role not found or constraint violation

### createEmployee(data)
Create only employee record (requires existing party_role_id)
- Parameters: { partyRoleId, employeeCode, tenantId }
- Returns: Employee record

### getEmployeesByTenant(tenantId)
Get all employees for tenant
- Parameters: tenantId
- Returns: Array of employees

### getEmployeeById(id, tenantId)
Get single employee
- Parameters: id, tenantId
- Returns: Employee or undefined

### updateEmployee(id, tenantId, data)
Update employee
- Parameters: id, tenantId, partial data
- Returns: Updated employee

### deleteEmployee(id, tenantId)
Soft delete employee
- Parameters: id, tenantId
- Returns: void

## Business Rules

1. Employee code must be unique per tenant
2. Employee must have associated party_role_id
3. Default 'user' role must exist in tenant
4. Auth value (email/phone) must be unique
5. First login required for auth verification
6. All operations are tenant-scoped

## Transaction Flow

```
POST /employees
  → Validate input
  → Start transaction
    → Create user
    → Create auth_method (unverified)
    → Create party
    → Create person
    → Create party_role (type: employee)
    → Create employee
    → Find/verify default role
    → Create tenant_membership
  → Commit transaction
  → Return all records
```

## Error Handling

- 23505: Duplicate employee code (409 Conflict)
- Missing tenant: 400 Bad Request
- Not found: 404 Not Found
- Validation errors: 400 with details
- Missing default role: 500 Internal Error

## Integration Points

- **Auth Module**: User and auth_method creation
- **Party Module**: Party and person management
- **Tenant Module**: Membership and role assignment
- **RBAC**: Permission checks on all endpoints

## Notes

- Employee creation is a complex multi-table operation
- Uses database transactions for atomicity
- Auth methods are created as unverified
- Employee status managed via tenant_membership.status
- Supports both email and phone authentication
