/**
 * Accounting Module Seed Functions
 *
 * Seeds the database with Chart of Accounts templates and Tax templates
 */

import type { PostgresJsDatabase } from "drizzle-orm/postgres-js";
import { eq } from "drizzle-orm";
import {
  coaTemplates,
  coaTemplateAccounts,
  taxTemplates,
} from "@prodobit/database";

import { TDHP_TEMPLATE, type CoaTemplate } from "./coa-templates";
import { US_GAAP_TEMPLATE } from "./coa-templates-usgaap";
import { IFRS_TEMPLATE } from "./coa-templates-ifrs";
import { ALL_TAX_TEMPLATES } from "./tax-templates";

export * from "./coa-templates";
export * from "./coa-templates-usgaap";
export * from "./coa-templates-ifrs";
export * from "./tax-templates";

// All COA templates
export const ALL_COA_TEMPLATES: CoaTemplate[] = [
  TDHP_TEMPLATE,
  US_GAAP_TEMPLATE,
  IFRS_TEMPLATE,
];

/**
 * Seed Chart of Accounts templates
 */
export async function seedCoaTemplates(db: PostgresJsDatabase<any>): Promise<void> {
  console.log("🌱 Seeding Chart of Accounts templates...");

  for (const template of ALL_COA_TEMPLATES) {
    // Check if template already exists
    const existing = await db
      .select()
      .from(coaTemplates)
      .where(eq(coaTemplates.code, template.code))
      .limit(1);

    if (existing.length > 0) {
      console.log(`  ⏭️  Template ${template.code} already exists, skipping...`);
      continue;
    }

    // Insert template
    const [insertedTemplate] = await db
      .insert(coaTemplates)
      .values({
        code: template.code,
        name: template.name,
        country: template.country,
        description: template.description,
        isSystem: true,
      })
      .returning();

    console.log(`  ✅ Created template: ${template.code} (${template.accounts.length} accounts)`);

    // Insert accounts in batches
    const batchSize = 100;
    for (let i = 0; i < template.accounts.length; i += batchSize) {
      const batch = template.accounts.slice(i, i + batchSize);
      await db.insert(coaTemplateAccounts).values(
        batch.map((account) => ({
          templateId: insertedTemplate.id,
          code: account.code,
          name: account.name,
          nameEn: account.nameEn,
          accountType: account.accountType,
          parentCode: account.parentCode,
          level: account.level,
          isGroup: account.isGroup,
          reportCategory: account.reportCategory,
        }))
      );
    }
  }

  console.log("✅ Chart of Accounts templates seeded successfully!");
}

/**
 * Seed Tax Rate templates
 */
export async function seedTaxTemplates(db: PostgresJsDatabase<any>): Promise<void> {
  console.log("🌱 Seeding Tax Rate templates...");

  for (const template of ALL_TAX_TEMPLATES) {
    for (const rate of template.rates) {
      // Check if tax template already exists
      const existing = await db
        .select()
        .from(taxTemplates)
        .where(eq(taxTemplates.country, template.country))
        .limit(1);

      // Only check first rate to see if we should skip this country
      if (existing.length > 0 && rate === template.rates[0]) {
        console.log(`  ⏭️  Tax templates for ${template.country} already exist, skipping...`);
        break;
      }

      if (existing.length > 0) {
        continue; // Skip if country already seeded
      }

      // Insert tax rate
      await db.insert(taxTemplates).values({
        country: template.country,
        code: rate.code,
        name: rate.name,
      });
    }

    // Log if we inserted rates
    const check = await db
      .select()
      .from(taxTemplates)
      .where(eq(taxTemplates.country, template.country))
      .limit(1);

    if (check.length > 0) {
      console.log(`  ✅ Seeded tax templates for: ${template.country} (${template.rates.length} rates)`);
    }
  }

  console.log("✅ Tax Rate templates seeded successfully!");
}

/**
 * Seed all accounting templates
 */
export async function seedAccountingTemplates(db: PostgresJsDatabase<any>): Promise<void> {
  console.log("═══════════════════════════════════════════════════════════════");
  console.log("  ACCOUNTING MODULE SEED");
  console.log("═══════════════════════════════════════════════════════════════");

  await seedCoaTemplates(db);
  await seedTaxTemplates(db);

  console.log("═══════════════════════════════════════════════════════════════");
  console.log("  ACCOUNTING MODULE SEED COMPLETE");
  console.log("═══════════════════════════════════════════════════════════════");
}

/**
 * Get all available COA template codes
 */
export function getAvailableCoaTemplates(): string[] {
  return ALL_COA_TEMPLATES.map((t) => t.code);
}

/**
 * Get COA template by code
 */
export function getCoaTemplateByCode(code: string): CoaTemplate | undefined {
  return ALL_COA_TEMPLATES.find((t) => t.code === code);
}

/**
 * Get all available countries with tax templates
 */
export function getAvailableTaxCountries(): string[] {
  return ALL_TAX_TEMPLATES.map((t) => t.country);
}
