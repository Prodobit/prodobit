# Integration Module

## Overview
API key management system for external integrations and partner applications. Supports scope-based access control, rate limiting, usage logging, and audit trails.

## Database Schema

### integration_keys
```sql
integration_keys {
  id: uuid PRIMARY KEY
  tenant_id: uuid NOT NULL REFERENCES tenants
  name: text NOT NULL -- "Mobile App", "Partner X"
  key: text NOT NULL -- Hashed API key (scrypt)
  key_prefix: text NOT NULL -- First 10 chars: "pd_live_ab"
  environment: text NOT NULL DEFAULT 'test' -- 'test' | 'live'
  status: text NOT NULL DEFAULT 'active' -- 'active' | 'revoked' | 'expired'
  scopes: jsonb NOT NULL DEFAULT [] -- ["asset-issue:read", "inventory:write"]
  metadata: jsonb NULL -- Custom data
  last_used_at: timestamp(6) with timezone NULL
  expires_at: timestamp(6) with timezone NULL
  created_by: uuid NULL
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()
  deleted_at: timestamp(6) with timezone NULL

  UNIQUE (key_prefix)
  INDEX (tenant_id)
  INDEX (status)
  INDEX (tenant_id, status)
}
```

### integration_scopes
```sql
integration_scopes {
  id: uuid PRIMARY KEY
  module: text NOT NULL -- "asset-issue", "inventory", "sales"
  resource: text NOT NULL -- "asset-issues", "items", "orders"
  action: text NOT NULL -- "read", "write", "delete"
  scope: text NOT NULL UNIQUE -- "asset-issue:read", "inventory:write"
  endpoint: text NULL -- "/api/v1/public/asset-issues"
  description: text NOT NULL
  is_public: boolean NOT NULL DEFAULT true
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()

  UNIQUE (scope)
  INDEX (module)
  INDEX (is_public)
}
```

### integration_logs
```sql
integration_logs {
  id: uuid PRIMARY KEY
  key_id: uuid NOT NULL REFERENCES integration_keys
  tenant_id: uuid NOT NULL REFERENCES tenants
  method: text NOT NULL -- "GET", "POST", "PUT", "DELETE"
  path: text NOT NULL -- "/api/v1/public/asset-issues"
  status_code: integer NOT NULL -- 200, 401, 403, 500
  response_time: integer NULL -- milliseconds
  ip_address: text NULL
  user_agent: text NULL
  error_message: text NULL
  metadata: jsonb NULL
  requested_at: timestamp(6) with timezone DEFAULT now()

  INDEX (key_id)
  INDEX (tenant_id)
  INDEX (requested_at)
  INDEX (key_id, requested_at)
}
```

### integration_rate_limits
```sql
integration_rate_limits {
  id: uuid PRIMARY KEY
  key_id: uuid NOT NULL REFERENCES integration_keys
  limit_type: text NOT NULL -- "per_minute" | "per_hour" | "per_day" | "per_month"
  max_requests: integer NOT NULL
  current_count: integer NOT NULL DEFAULT 0
  reset_at: timestamp(6) with timezone NOT NULL
  inserted_at: timestamp(6) with timezone DEFAULT now()
  updated_at: timestamp(6) with timezone DEFAULT now()

  UNIQUE (key_id, limit_type)
  INDEX (reset_at)
}
```

## Key Features

### API Key Management
- Generate secure API keys with scrypt hashing
- Key prefix format: `pd_live_` or `pd_test_`
- 32-character random suffix
- Environment separation (test vs live)
- Key expiration support
- Key revocation

### Scope-Based Access Control
- Granular permissions per module
- Format: `module:action`
- Examples: `asset-issue:read`, `inventory:write`
- Scope validation on key creation
- Public/private scope designation

### Rate Limiting
- Multiple limit types:
  - per_minute
  - per_hour
  - per_day
  - per_month
- Per-key limits
- Auto-reset counters
- Default limits on key creation

### Usage Logging
- Complete audit trail
- Request method, path, status
- Response time tracking
- IP address and user agent
- Error message capture
- Metadata support

### Security
- API keys hashed with scrypt
- Salt per key
- Timing-safe comparison
- Never expose raw keys after creation
- Key prefix for lookup (first 10 chars)

## API Key Lifecycle

### Key Statuses
- **active**: Key is valid and usable
- **revoked**: Key manually revoked
- **expired**: Key past expiration date

### Key Generation
```
Environment: test | live
Prefix: pd_test_ | pd_live_
Random: 32-char nanoid
Final: pd_live_abc123...xyz789
```

### Key Storage
```
Raw Key: pd_live_abc123...xyz789 (shown once)
Hash: salt:derivedKey (stored)
Prefix: pd_live_ab (indexed)
```

## Service Methods

### createApiKey(tenantId, data, createdBy?)
- Validates scopes
- Generates API key
- Hashes key with scrypt
- Creates default rate limits
- Returns raw key (one-time only)

### validateScopes(scopes)
- Checks if scopes exist
- Verifies scopes are public
- Returns boolean

### verifyApiKey(rawKey, storedHash)
- Timing-safe comparison
- Returns boolean

### logApiRequest(keyId, tenantId, request, response)
- Logs request details
- Updates last_used_at
- Captures errors

### checkRateLimit(keyId, limitType)
- Checks current count vs max
- Resets if past reset_at
- Increments counter
- Returns allowed/denied

## Integration Points

- **All Modules**: Can be accessed via API keys
- **Tenant Module**: Keys scoped to tenant
- **User Module**: Key creator tracking
- **RBAC**: Scope-based permissions

## Use Cases

### Mobile App Integration
```
Name: "Mobile App"
Environment: live
Scopes: ["asset-issue:read", "asset-issue:write", "task:read"]
Rate Limits: 1000/hour, 10000/day
```

### Partner Integration
```
Name: "Partner X - Read Only"
Environment: live
Scopes: ["inventory:read", "sales:read"]
Rate Limits: 100/minute, 50000/month
Expiration: 1 year
```

### Development Testing
```
Name: "Dev Testing"
Environment: test
Scopes: ["*:*"]
No expiration
Higher rate limits
```

## Business Rules

1. API keys must have at least one scope
2. Scopes must be valid and public
3. Key prefix must be unique
4. Raw key shown only once at creation
5. Rate limits auto-reset
6. All API calls logged
7. Expired keys rejected
8. Revoked keys rejected
9. Soft delete supported

## Security Best Practices

1. Never log raw API keys
2. Use scrypt for hashing
3. Separate test and live keys
4. Set key expiration
5. Monitor usage logs
6. Revoke unused keys
7. Enforce rate limits
8. Limit scope to minimum required

## Notes

- Secure API key generation with nanoid
- Scrypt hashing for security
- Complete audit trail
- Flexible rate limiting
- Scope-based permissions
- Environment separation
- All operations are tenant-scoped
- Keys hashed, never stored in plain text
