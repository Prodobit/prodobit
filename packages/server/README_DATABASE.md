# Database Management with Drizzle

This document describes how to manage database schema and migrations using Drizzle ORM and Drizzle Kit.

## Overview

The Prodobit server uses [Drizzle ORM](https://orm.drizzle.team/) with PostgreSQL for database operations. Database schema changes are managed using [Drizzle Kit](https://orm.drizzle.team/kit-docs/overview)'s built-in migration system.

## Key Components

- **Schema Definition**: Located in `/packages/database/src/schema/`
- **Migration Files**: Generated in `/packages/database/drizzle/`
- **Configuration**: `/packages/database/drizzle.config.ts`

## Available Commands

All database commands should be run from the project root:

### Generate Migrations
```bash
pnpm db:generate
```
Analyzes schema changes and generates migration files.

### Run Migrations
```bash
pnpm db:migrate
```
Applies pending migrations to the database.

### Database Studio
```bash
pnpm db:studio
```
Opens Drizzle Studio for visual database exploration.

### Push Schema (Development Only)
```bash
pnpm db:push
```
Pushes schema changes directly without generating migration files. Use only in development.

## Workflow

### 1. Making Schema Changes

Edit schema files in `/packages/database/src/schema/`:

```typescript
// Example: Adding a new table
export const products = pgTable('products', {
  id: serial('id').primaryKey(),
  name: varchar('name', { length: 255 }).notNull(),
  price: decimal('price', { precision: 10, scale: 2 }).notNull(),
  createdAt: timestamp('created_at').defaultNow().notNull(),
});
```

### 2. Generate Migration

After making schema changes, generate a migration:

```bash
pnpm db:generate
```

This creates a new migration file in `/packages/database/drizzle/` with a descriptive name.

### 3. Review Migration

Always review the generated migration file before applying:

```sql
-- Example generated migration
CREATE TABLE IF NOT EXISTS "products" (
  "id" serial PRIMARY KEY NOT NULL,
  "name" varchar(255) NOT NULL,
  "price" numeric(10,2) NOT NULL,
  "created_at" timestamp DEFAULT now() NOT NULL
);
```

### 4. Apply Migration

Apply the migration to your database:

```bash
pnpm db:migrate
```

## Configuration

Database connection is configured via environment variables:

```bash
DB_HOST=localhost
DB_PORT=5432
DB_USER=postgres
DB_PASSWORD=postgres
DB_NAME=prodobit
DB_SSL=false
```

## Best Practices

### Development
- Use `pnpm db:generate` + `pnpm db:migrate` for all schema changes
- Never edit migration files manually
- Test migrations on a copy of production data before applying

### Production
- Always backup database before running migrations
- Run migrations during maintenance windows
- Monitor migration execution for long-running operations

### Schema Design
- Use descriptive table and column names
- Add appropriate indexes for query performance
- Use constraints to ensure data integrity
- Document complex schema relationships

## Troubleshooting

### Migration Conflicts
If multiple developers create migrations simultaneously:
1. Pull latest changes
2. Regenerate your migration
3. Resolve any conflicts in schema files
4. Generate a new migration if needed

### Failed Migrations
If a migration fails:
1. Check database logs for specific error
2. Ensure database user has sufficient permissions
3. Verify schema syntax in migration file
4. Restore from backup if necessary

### Connection Issues
Check environment variables and database connectivity:
```bash
# Test connection
psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d $DB_NAME
```

## Integration with Server

The server automatically connects to the database on startup. No manual migration triggering is required - use the standard Drizzle Kit commands for all migration operations.

Database connection health can be monitored via the `/health` endpoint.

## Resources

- [Drizzle ORM Documentation](https://orm.drizzle.team/)
- [Drizzle Kit Documentation](https://orm.drizzle.team/kit-docs/overview)
- [PostgreSQL Documentation](https://www.postgresql.org/docs/)