# Migration Cleanup Backup - Sep 9, 2025

## Current State Before Reset

### Existing Migration Files
- Drizzle migrations: 0000-0009 (10 files)
- Server migrations: 001-004 (4 files)

### Issues Found
1. Column "description" already exists error
2. Column "subdomain" already exists error  
3. Dual migration systems conflicting
4. Role ID type inconsistencies (UUID ↔ TEXT)

### Schema Files to Preserve
- All files in `packages/database/src/schema/`
- Current schema definitions are the source of truth

### Next Steps
1. Remove all migration files
2. Reset Drizzle state completely
3. Generate single initial migration from current schema
4. Remove server migrations (consolidate to database package only)

### Recovery Plan
If issues occur, current schema files contain all table definitions.