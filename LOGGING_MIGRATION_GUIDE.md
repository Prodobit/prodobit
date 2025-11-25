# Logging Migration Guide

## Overview
Bu guide console.log kullanımlarını structured logging (Pino) ile değiştirmek için hazırlanmıştır.

## Kurulum Tamamlandı

- ✅ Pino logger kuruldu
- ✅ Logger middleware eklendi
- ✅ Environment configuration hazır
- ✅ Development: Pretty print
- ✅ Production: JSON + optional Logflare

## Migration Pattern

### 1. Import Logger

```typescript
// Routes ve middleware'lerde (context var)
const log = c.get("logger");

// Service ve utility dosyalarında
import { createLogger } from "@prodobit/server";
const log = createLogger({ module: "inventory", service: "StockService" });
```

### 2. Console.log → Logger Dönüşümü

#### ❌ Önce (Console.log)
```typescript
console.log("Stock created:", stockId);
console.error("Failed to create stock:", error);
console.warn("Low stock level:", { itemId, quantity });
```

#### ✅ Sonra (Structured Logging)
```typescript
log.info({ stockId }, "Stock created");
log.error({ err: error }, "Failed to create stock");
log.warn({ itemId, quantity }, "Low stock level");
```

### 3. Migration Örnekleri

#### Route Handler
```typescript
// ❌ Önce
customerRoutes.get("/", async (c) => {
  console.log("Listing customers");
  try {
    const customers = await service.list();
    console.log("Found customers:", customers.length);
    return c.json({ customers });
  } catch (error) {
    console.error("List customers error:", error);
    return c.json({ error: "Failed" }, 500);
  }
});

// ✅ Sonra
customerRoutes.get("/", async (c) => {
  const log = c.get("logger");
  log.debug("Listing customers");

  try {
    const customers = await service.list();
    log.info({ count: customers.length }, "Customers listed");
    return c.json({ customers });
  } catch (error) {
    log.error({ err: error }, "Failed to list customers");
    return c.json({ error: "Failed" }, 500);
  }
});
```

#### Service Class
```typescript
// ❌ Önce
export class StockService {
  async createStock(data) {
    console.log("Creating stock:", data);
    const stock = await this.db.insert(stocks).values(data);
    console.log("Stock created:", stock.id);
    return stock;
  }
}

// ✅ Sonra
import { createLogger } from "@prodobit/server";

export class StockService {
  private log = createLogger({ module: "inventory", service: "StockService" });

  async createStock(data) {
    this.log.debug({ data }, "Creating stock");
    const stock = await this.db.insert(stocks).values(data);
    this.log.info({ stockId: stock.id }, "Stock created");
    return stock;
  }
}
```

#### Error Handling
```typescript
// ❌ Önce
try {
  await dangerousOperation();
} catch (error) {
  console.error("Operation failed:", error);
  console.error("Stack:", error.stack);
}

// ✅ Sonra
import { logError } from "@prodobit/server";

try {
  await dangerousOperation();
} catch (error) {
  logError(log, error, "Operation failed", { operation: "dangerous" });
  // Pino automatically includes stack trace
}
```

#### Performance Measurement
```typescript
// ❌ Önce
const start = Date.now();
const result = await expensiveOperation();
console.log("Operation took:", Date.now() - start, "ms");

// ✅ Sonra
import { measureTime } from "@prodobit/server";

const result = await measureTime(
  log,
  "expensive operation",
  () => expensiveOperation()
);
// Automatically logs duration
```

## Log Levels

```typescript
log.trace("Very detailed debug info");    // Development only
log.debug("Debug information");           // Development
log.info("General information");          // Always
log.warn("Warning message");              // Always
log.error("Error occurred");              // Always
log.fatal("Fatal error, app crashing");   // Always
```

## Context-Aware Logging

```typescript
// Automatic context from middleware
const log = c.get("logger");
// Already has: requestId, method, path

// After auth
// Already has: tenantId, userId

// Manual context
const log = createLogger({
  module: "sales",
  service: "OrderService",
  tenantId: "tenant-123"
});
```

## Sensitive Data

Automatically redacted fields:
- password
- token
- apiKey
- secret
- authorization
- cookie

```typescript
log.info({
  user: "john@example.com",
  password: "secret123"  // Automatically becomes [REDACTED]
}, "User login");
```

## Environment Configuration

### Development (.env)
```bash
NODE_ENV=development
LOG_LEVEL=debug
```

### Production (.env)
```bash
NODE_ENV=production
LOG_LEVEL=info

# Optional: Logflare for real-time monitoring
LOGFLARE_API_KEY=your-key
LOGFLARE_SOURCE_TOKEN=your-token
```

## Migration Checklist

- [ ] Install dependencies: `pnpm install`
- [ ] Update .env with LOG_LEVEL
- [ ] Migrate console.log in routes (use c.get("logger"))
- [ ] Migrate console.log in services (use createLogger)
- [ ] Migrate console.error to log.error with err object
- [ ] Replace console.warn with log.warn
- [ ] Remove debug console.logs or change to log.debug
- [ ] Test in development (pretty print)
- [ ] Test in production (JSON output)
- [ ] Optional: Setup Logflare for monitoring

## Files to Migrate (290 occurrences)

Run this to find all console.log usage:
```bash
grep -r "console\.\(log\|error\|warn\|info\|debug\)" packages/server/src --exclude-dir=node_modules
```

### Priority Order
1. **High**: Error handlers (console.error)
2. **Medium**: Route handlers
3. **Low**: Debug logs (can be removed or kept as log.debug)

## Testing

```bash
# Development mode (pretty print)
pnpm dev

# Production mode (JSON)
NODE_ENV=production pnpm start

# Check logs
tail -f logs/app.log  # If using file transport
```

## Benefits

✅ Structured data (easy to query)
✅ Log levels (filter by severity)
✅ Context (tenant, user, request tracking)
✅ Performance (Pino is very fast)
✅ Production-ready (JSON format)
✅ External services (Logflare, Datadog, etc.)
✅ Automatic redaction of sensitive data
✅ Pretty print in development

## Need Help?

- Logger docs: core/logger/index.ts
- Middleware: core/logger/middleware.ts
- Config: core/logger/config.ts
- Examples: See index.ts start() function
