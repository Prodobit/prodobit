# @prodobit/server

Modular Prodobit server with pluggable architecture.

## Features

- **Modular Architecture**: Enable/disable modules dynamically
- **Row Level Security**: Automatic tenant isolation with PostgreSQL RLS
- **RBAC**: Role-based access control system
- **Discovery API**: Runtime feature detection
- **TypeScript**: Full type safety

## Quick Start

```typescript
import { createServerApp, employeeModule } from "@prodobit/server";

const server = createServerApp({
  modules: [employeeModule],
  config: {
    port: 3001,
    database: {
      host: "localhost",
      port: 5432,
      user: "postgres",
      password: "postgres",
      database: "prodobit"
    }
  }
});

// Enable modules
await server.enableModule("employee");

// Start server
server.start();
```

## API Endpoints

### Core Endpoints

- `GET /health` - Health check
- `GET /api/v1` - API information
- `GET /api/v1/features` - Feature discovery
- `POST /api/v1/auth/*` - Authentication
- `GET /api/v1/tenants` - Tenant management
- `GET /api/v1/parties` - Party management

### Module Endpoints (when enabled)

- `GET /api/v1/employees` - Employee management (employee module)

## CLI Usage

```bash
# Start server with modules
prodobit server start --enable-modules employee,customer

# Manage modules
prodobit modules list
prodobit modules enable employee
prodobit modules disable employee

# Run migrations
prodobit migrate up
prodobit migrate status
```

## Module Development

Create a new module:

```typescript
// modules/mymodule/manifest.ts
export const myModule: ModuleManifest = {
  name: "mymodule",
  version: "1.0.0",
  description: "My custom module",
  migrations: ["1004_mymodule.sql"],
  permissions: {
    "myresource:read": ["admin", "user"],
    "myresource:write": ["admin"]
  },
  registerRoutes(app) {
    app.route("/api/v1/myresource", myRoutes);
  }
};
```

## SDK Usage

```typescript
import { ProdobitClient } from "@prodobit/sdk";

const client = new ProdobitClient({
  baseUrl: "http://localhost:3001"
});

// Discover available features
const features = await client.getFeatures();
console.log("Available modules:", features.data.enabled);

// Use module endpoints
if (features.data.enabled.includes("employee")) {
  const employees = await client.getEmployees();
}
```