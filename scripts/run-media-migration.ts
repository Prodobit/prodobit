#!/usr/bin/env tsx
/**
 * Media Module Migration Runner
 *
 * Bu script media modülü için migration'ları çalıştırır.
 *
 * Kullanım:
 *   tsx scripts/run-media-migration.ts
 *
 * Environment variables gerekli:
 *   DATABASE_URL - PostgreSQL connection string
 */

import { drizzle } from 'drizzle-orm/postgres-js';
import { migrate } from 'drizzle-orm/postgres-js/migrator';
import postgres from 'postgres';
import * as dotenv from 'dotenv';
import { fileURLToPath } from 'url';
import { dirname, join } from 'path';

// Load environment variables
dotenv.config();

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

async function runMigrations() {
  const databaseUrl = process.env.DATABASE_URL;

  if (!databaseUrl) {
    console.error('❌ DATABASE_URL environment variable is required');
    process.exit(1);
  }

  console.log('🔄 Connecting to database...');

  // Create connection for migrations
  const migrationClient = postgres(databaseUrl, { max: 1 });
  const db = drizzle(migrationClient);

  try {
    console.log('🚀 Running migrations...');

    await migrate(db, {
      migrationsFolder: join(__dirname, '../packages/database/drizzle')
    });

    console.log('✅ Migrations completed successfully!');
    console.log('');
    console.log('📋 Media module tables created:');
    console.log('   - media (media files and metadata)');
    console.log('   - item_images (item image relationships with variants)');
    console.log('');
    console.log('🎉 Media module is ready to use!');
  } catch (error) {
    console.error('❌ Migration failed:', error);
    process.exit(1);
  } finally {
    await migrationClient.end();
  }
}

runMigrations().catch((error) => {
  console.error('Fatal error:', error);
  process.exit(1);
});
