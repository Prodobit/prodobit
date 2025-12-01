/**
 * Database Seed Script
 *
 * Seeds the database with initial data (COA templates, Tax templates, etc.)
 *
 * Usage:
 *   pnpm db:seed
 */

import { drizzle } from "drizzle-orm/postgres-js";
import postgres from "postgres";
import { seedAccountingTemplates } from "@prodobit/server";

async function main() {
  const connectionString =
    process.env.DATABASE_URL ||
    `postgres://${process.env.DB_USER || "postgres"}:${process.env.DB_PASSWORD || "postgres"}@${process.env.DB_HOST || "localhost"}:${process.env.DB_PORT || 5432}/${process.env.DB_NAME || "prodobit"}`;

  console.log("🔌 Connecting to database...");

  const client = postgres(connectionString);
  const db = drizzle(client);

  try {
    await seedAccountingTemplates(db);
    console.log("\n✅ Database seeding completed successfully!");
  } catch (error) {
    console.error("\n❌ Database seeding failed:", error);
    process.exit(1);
  } finally {
    await client.end();
  }
}

main();
