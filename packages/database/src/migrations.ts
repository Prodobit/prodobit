import { migrate } from "drizzle-orm/postgres-js/migrator";
import { readdir } from "node:fs/promises";
import { resolve, dirname } from "node:path";
import { fileURLToPath } from "node:url";
import type { Database } from "./index.js";

export interface MigrationStatus {
  needsMigration: boolean;
  upToDate: boolean;
  pendingCount: number;
  appliedCount: number;
  error?: string;
}

export interface MigrationResult {
  success: boolean;
  appliedCount?: number;
  error?: string;
}

/**
 * Get migration folder path - always correct since we're in the database package
 */
function getMigrationFolderPath(): string {
  // ES modules equivalent of __dirname
  const __filename = fileURLToPath(import.meta.url);
  const __dirname = dirname(__filename);
  
  // We're in database package, so drizzle folder is relative to this file
  return resolve(__dirname, "..", "drizzle");
}

/**
 * Check if database migrations are needed
 */
export async function checkMigrationStatus(
  db: Database
): Promise<MigrationStatus> {
  try {
    const migrationFolder = getMigrationFolderPath();

    // Count migration files
    const files = await readdir(migrationFolder);
    const migrationFiles = files.filter((f) => f.endsWith(".sql"));
    const totalMigrations = migrationFiles.length;

    // Check applied migrations from drizzle migrations table
    try {
      const appliedMigrations = await db.execute(`
        SELECT COUNT(*) as count 
        FROM __drizzle_migrations
      `);

      const appliedCount = Number(appliedMigrations[0]?.count || 0);
      const pendingCount = Math.max(0, totalMigrations - appliedCount);

      return {
        needsMigration: pendingCount > 0,
        upToDate: pendingCount === 0,
        pendingCount,
        appliedCount,
      };
    } catch (error) {
      // Migration table doesn't exist yet, all migrations are pending
      return {
        needsMigration: totalMigrations > 0,
        upToDate: false,
        pendingCount: totalMigrations,
        appliedCount: 0,
      };
    }
  } catch (error) {
    return {
      needsMigration: false,
      upToDate: false,
      pendingCount: 0,
      appliedCount: 0,
      error: error instanceof Error ? error.message : "Unknown error",
    };
  }
}

/**
 * Run pending database migrations
 */
export async function runMigrations(db: Database): Promise<MigrationResult> {
  try {
    console.log("🔄 Running database migrations...");

    const migrationFolder = getMigrationFolderPath();
    console.log(`📂 Migration folder: ${migrationFolder}`);

    // Use Drizzle's migrate function
    await migrate(db, { migrationsFolder: migrationFolder });

    // Get final count
    const status = await checkMigrationStatus(db);

    console.log("✅ Migrations completed successfully");

    return {
      success: true,
      appliedCount: status.appliedCount,
    };
  } catch (error) {
    console.error("❌ Migration failed:", error);

    return {
      success: false,
      error: error instanceof Error ? error.message : "Unknown error",
    };
  }
}
