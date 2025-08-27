# @prodobit/config

A comprehensive configuration management system for the Prodobit framework with TypeScript support, runtime validation, and modular architecture.

## Features

- **Type-safe configuration** with ArkType runtime validation
- **Multiple configuration sources** with priority-based merging
- **Environment-specific configurations** 
- **Module management** with dependency resolution
- **Hot reloading** in development mode
- **Zero dependencies** on runtime (except ArkType)
- **Full TypeScript support** with strict type checking

## Installation

```bash
npm install @prodobit/config
```

## Quick Start

### Node.js

```typescript
import { ConfigManager } from '@prodobit/config';

// Initialize configuration manager (auto-detects Node.js)
const config = new ConfigManager({
  environment: 'development',
  autoReload: true,
});

// Load configuration
const appConfig = await config.initialize();

// Access configuration sections
const dbConfig = config.getConfigSection('database');
const authConfig = config.getConfigSection('auth');

// Check if module is ready
if (config.isModuleReady('inventory')) {
  // Use inventory module
}
```

### Cloudflare Workers

```typescript
import { ConfigManager, CloudflareWorkerAdapter } from '@prodobit/config';

// Create adapter with worker environment
const adapter = new CloudflareWorkerAdapter(env);

const config = new ConfigManager({
  customAdapter: adapter,
  environment: 'production',
});

const appConfig = await config.initialize();
```

### Vercel Edge Runtime

```typescript
import { ConfigManager } from '@prodobit/config';

// Auto-detects Vercel Edge environment
const config = new ConfigManager({
  environment: 'production',
});

const appConfig = await config.initialize();
```

## Configuration Sources

Configuration is loaded from multiple sources in priority order:

1. **Environment Variables** (highest priority)
2. **Environment-specific config files** (e.g., `prodobit.config.development.json`)
3. **General config files** (`prodobit.config.json`, `.prodobitrc.json`)
4. **Default values** (lowest priority)

### Environment Variables

Use the `PRODOBIT_` prefix and nested paths with underscores:

```bash
# Database configuration
PRODOBIT_DATABASE_HOST=localhost
PRODOBIT_DATABASE_PORT=5432
PRODOBIT_DATABASE_PASSWORD=secret

# JSON values
PRODOBIT_CORS_ORIGINS='["http://localhost:3000", "http://localhost:3001"]'

# Boolean values
PRODOBIT_SERVER_ENABLE_SWAGGER=true
```

### Configuration Files

Create a `prodobit.config.json` file:

```json
{
  "base": {
    "environment": "development",
    "debug": true,
    "logLevel": "debug"
  },
  "database": {
    "connection": {
      "host": "localhost",
      "port": 5432,
      "database": "prodobit_dev",
      "user": "postgres",
      "password": "password"
    }
  },
  "modules": {
    "manifest": {
      "modules": [
        {
          "id": "core",
          "name": "Core System",
          "version": "1.0.0",
          "description": "Core functionality",
          "category": "core",
          "dependencies": [],
          "enabled": true,
          "autoStart": true,
          "priority": 100
        },
        {
          "id": "inventory",
          "name": "Inventory Management",
          "version": "1.0.0",
          "description": "Stock and inventory management",
          "category": "business",
          "dependencies": ["core"],
          "enabled": true,
          "autoStart": true,
          "priority": 80
        }
      ]
    }
  }
}
```

## Module Management

### Enable/Disable Modules

```typescript
// Enable a module
await config.enableModule('manufacturing');

// Disable a module
await config.disableModule('manufacturing');

// Check module status
const isReady = config.isModuleReady('inventory');
const moduleState = config.getModuleState('inventory');
```

### Module Configuration

Configure individual modules:

```json
{
  "modules": {
    "moduleConfigs": {
      "inventory": {
        "trackLots": true,
        "allowNegativeStock": false,
        "stockValuationMethod": "FIFO"
      },
      "manufacturing": {
        "enableRouting": true,
        "defaultLeadTimeDays": 7
      }
    }
  }
}
```

## Type Safety

All configuration is fully typed with ArkType schemas:

```typescript
import type { ProdobitConfig, DatabaseConfig } from '@prodobit/config';

// Type-safe access
const config: ProdobitConfig = await configManager.initialize();
const dbConfig: DatabaseConfig = config.database;

// Type validation at runtime
const isValid = DatabaseConfigSchema(userInput);
```

## Environment Detection

```typescript
// Check environment
if (config.isDevelopment()) {
  // Development-specific logic
}

if (config.isProduction()) {
  // Production-specific logic
}

// Access environment info
const env = detectEnvironment();
console.log(`Running in ${env.environment} mode`);
```

## Configuration Watching

```typescript
// Watch for configuration changes
const unsubscribe = config.onChange((newConfig) => {
  console.log('Configuration updated:', newConfig);
});

// Stop watching
unsubscribe();
```

## Custom Configuration Sources

```typescript
import { ConfigSource } from '@prodobit/config';

class DatabaseConfigSource implements ConfigSource {
  readonly name = 'database';
  readonly priority = 75;

  async load() {
    // Load config from database
    return await loadConfigFromDatabase();
  }
}

// Add custom source
config.addSource(new DatabaseConfigSource());
```

## Validation

```typescript
import { validateString, validateNumber } from '@prodobit/config';

// Manual validation
const port = validateNumber(process.env.PORT, 'server.port', {
  min: 1,
  max: 65535,
  integer: true
});

const host = validateString(process.env.HOST, 'server.host', {
  minLength: 1,
  pattern: /^[a-zA-Z0-9.-]+$/
});
```

## Configuration Schema

The configuration schema includes:

- **base**: Environment, debug settings, log levels
- **database**: Connection settings, pool configuration, migrations
- **auth**: JWT, sessions, OAuth, password policies, 2FA
- **server**: HTTP server, CORS, compression, rate limiting
- **modules**: Module definitions, states, and configurations
- **pagination**: Default pagination settings
- **security**: Security policies and limits
- **fileUpload**: File upload restrictions and settings

## Best Practices

1. **Use environment variables for secrets**:
   ```bash
   PRODOBIT_AUTH_JWT_ACCESS_TOKEN_SECRET=your-secret-key
   PRODOBIT_DATABASE_PASSWORD=db-password
   ```

2. **Organize config files by environment**:
   ```
   prodobit.config.json              # Base config
   prodobit.config.development.json  # Development overrides
   prodobit.config.production.json   # Production overrides
   ```

3. **Validate configuration early**:
   ```typescript
   try {
     await config.initialize();
   } catch (error) {
     console.error('Configuration validation failed:', error);
     process.exit(1);
   }
   ```

4. **Use module dependencies**:
   ```json
   {
     "id": "sales",
     "dependencies": ["core", "inventory", "customer"]
   }
   ```

## Platform Support

The configuration system works across multiple runtime environments:

| Platform | File System | Environment Variables | File Watching | Auto-Detection |
|----------|-------------|----------------------|---------------|----------------|
| Node.js | ✅ | ✅ | ✅ | ✅ |
| Cloudflare Workers | ❌ | ✅ | ❌ | ✅ |
| Vercel Edge | ❌ | ✅ | ❌ | ✅ |
| Deno | ✅ | ✅ | ✅ | ✅ |
| Browser | ❌ | ❌ | ❌ | ✅ |

### Runtime Detection

```typescript
import { detectRuntime, isNodeEnvironment } from '@prodobit/config';

const runtime = detectRuntime();
console.log(`Running in ${runtime.environment}`);

if (isNodeEnvironment()) {
  // Node.js specific logic
}
```

### Custom Adapters

```typescript
import { PlatformAdapter, ConfigManager } from '@prodobit/config';

class CustomAdapter implements PlatformAdapter {
  readonly name = 'custom';

  getEnvironmentVariable(key: string) {
    return myCustomEnvSource[key];
  }

  getAllEnvironmentVariables() {
    return myCustomEnvSource;
  }

  getWorkingDirectory() {
    return '/custom/path';
  }

  getPlatformInfo() {
    return { platform: 'custom' };
  }
}

const config = new ConfigManager({
  customAdapter: new CustomAdapter(),
});
```

## API Reference

### ConfigManager

- `initialize()` - Load and validate configuration
- `reload()` - Reload configuration from sources
- `getConfig()` - Get complete configuration object
- `getConfigSection(section)` - Get specific configuration section
- `getAdapter()` - Get the platform adapter
- `enableModule(id)` - Enable a module
- `disableModule(id)` - Disable a module
- `isModuleReady(id)` - Check if module is ready
- `onChange(callback)` - Watch for configuration changes

### Platform Detection

- `detectRuntime()` - Get current runtime info
- `isNodeEnvironment()` - Check if running in Node.js
- `isEdgeEnvironment()` - Check if running in edge runtime
- `supportsFileSystem()` - Check if file system is available
- `supportsWatching()` - Check if file watching is supported

### Utilities

- `validateString()`, `validateNumber()`, etc. - Manual validation helpers
- `expandEnvironmentVariables(value, adapter)` - Expand ${VAR} syntax
- `createPlatformAdapter(options)` - Create platform-specific adapter

## License

MIT License. See LICENSE file for details.