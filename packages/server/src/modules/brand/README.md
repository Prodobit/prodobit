# Brand Module

## Overview
Manages brand/manufacturer master data. Brands can be associated with items/products to track product manufacturers and organize inventory.

## Database Schema

### brands
```sql
brands {
  id: uuid PRIMARY KEY
  tenant_id: uuid NOT NULL REFERENCES tenants
  name: text NOT NULL
  code: text NULL
  description: text NULL
  logo: text NULL -- URL to logo image
  website: text NULL
  status: text NOT NULL DEFAULT 'active'
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()
  deleted_at: timestamp(6) with timezone NULL

  UNIQUE (tenant_id, name)
  UNIQUE (tenant_id, code) WHERE code IS NOT NULL
  INDEX (tenant_id, status)
}
```

## API Endpoints

### GET /brands
List all brands with optional filters
- Auth: Required
- Permission: brand:read
- Query Parameters:
  - status: Filter by status (active/inactive)
  - search: Search by name or code (case-insensitive)
- Returns: Array of brands sorted by creation date (newest first)

### GET /brands/:id
Get single brand by ID
- Auth: Required
- Permission: brand:read
- Returns: Brand record or 404

### POST /brands
Create new brand
- Auth: Required
- Permission: brand:create
- Body:
  ```json
  {
    "name": "string (required)",
    "code": "string (optional)",
    "description": "string (optional)",
    "logo": "string URL (optional)",
    "website": "string URL (optional)",
    "status": "active | inactive (default: active)"
  }
  ```
- Returns: Created brand (201)
- Errors:
  - 409: Brand name already exists in tenant

### PUT /brands/:id
Update brand
- Auth: Required
- Permission: brand:update
- Body: Partial brand data
- Returns: Updated brand or 404

### DELETE /brands/:id
Soft delete brand
- Auth: Required
- Permission: brand:delete
- Returns: Deleted brand or 404

## Service Methods

### listBrands(tenantId, filters?)
List brands with optional filtering
- Parameters: tenantId, optional filters (status, search)
- Returns: Array of brands
- Ordering: Newest first (insertedAt DESC)

### getBrand(brandId, tenantId)
Get single brand
- Parameters: brandId, tenantId
- Returns: Brand or null
- Excludes: Soft deleted records

### createBrand(tenantId, data)
Create new brand
- Parameters: tenantId, CreateBrandRequest
- Returns: Created brand
- Default status: 'active'

### updateBrand(brandId, tenantId, data)
Update existing brand
- Parameters: brandId, tenantId, UpdateBrandRequest
- Returns: Updated brand or null
- Updates: updatedAt timestamp automatically

### deleteBrand(brandId, tenantId)
Soft delete brand
- Parameters: brandId, tenantId
- Returns: Deleted brand or null
- Sets: deletedAt and updatedAt timestamps

### brandExistsByName(tenantId, name, excludeBrandId?)
Check if brand name exists
- Parameters: tenantId, name, optional excludeBrandId
- Returns: boolean
- Use case: Duplicate validation during create/update

## Business Rules

1. Brand name must be unique within tenant
2. Brand code must be unique within tenant (if provided)
3. Name is required, code is optional
4. Default status is 'active'
5. Soft delete (deletedAt timestamp)
6. Case-insensitive search on name and code
7. All operations are tenant-scoped

## Features

### Search Functionality
Supports case-insensitive search across:
- Brand name
- Brand code

Uses ILIKE for partial matching.

### Status Management
- active: Brand is active and can be used
- inactive: Brand is inactive but not deleted
- Soft deleted brands excluded from queries

### Logo Management
- Logo field stores URL to image
- Image storage handled by Media module
- Optional field

## Integration Points

- **Item Module**: Items can reference brands
- **Media Module**: Logo images stored via Media service
- **Inventory**: Brand used for product organization
- **RBAC**: Permission-based access control
- **Tenant**: Multi-tenant isolation

## Validation

### Create
- Name: Required, must be unique in tenant
- Code: Optional, must be unique in tenant if provided
- Status: Optional, defaults to 'active'

### Update
- Name: Must remain unique in tenant (excluding current brand)
- Code: Must remain unique in tenant if provided

## Notes

- Simple master data table
- No complex relationships
- Used for product categorization
- Logo URLs point to media service
- Supports manufacturer/brand tracking
- All queries exclude soft-deleted records automatically
