import { eq } from "drizzle-orm";
import type { Database } from "./index.js";
import { users, authMethods, tenants, tenantMemberships } from "./schema/index.js";

// Sistem tenant'ı için sabit slug
export const SYSTEM_TENANT_SLUG = "system";

export interface SystemSetupConfig {
  systemTenant: {
    name: string;
    description?: string;
  };
  superAdmin: {
    email: string;
    displayName: string;
  };
}

export interface SetupResult {
  success: boolean;
  created: {
    systemTenant: boolean;
    superAdmin: boolean;
  };
  systemTenantId?: string;
  error?: string;
}

/**
 * Setup sistem tenant'ı ve super admin kullanıcısını oluşturur
 */
export async function setupSystem(
  db: Database, 
  config: SystemSetupConfig
): Promise<SetupResult> {
  try {
    console.log("🔧 Setting up system tenant and super admin...");

    const result: SetupResult = {
      success: true,
      created: {
        systemTenant: false,
        superAdmin: false,
      }
    };

    // 1. Sistem tenant'ını oluştur veya bul
    console.log("📋 Creating/finding system tenant...");
    let systemTenant = await db
      .select()
      .from(tenants)
      .where(eq(tenants.slug, SYSTEM_TENANT_SLUG))
      .limit(1);

    let systemTenantId: string;

    if (systemTenant.length === 0) {
      const [newSystemTenant] = await db.insert(tenants).values({
        name: config.systemTenant.name,
        slug: SYSTEM_TENANT_SLUG,
        description: config.systemTenant.description || "System tenant for SaaS administration",
        status: "active",
        settings: {
          isSystemTenant: true,
          businessIntelligence: true,
          customerManagement: true,
        },
      }).returning();
      
      systemTenantId = newSystemTenant.id;
      result.created.systemTenant = true;
      console.log(`✅ System tenant created with ID: ${systemTenantId}`);
    } else {
      systemTenantId = systemTenant[0].id;
      console.log(`ℹ️  System tenant already exists with ID: ${systemTenantId}`);
    }

    result.systemTenantId = systemTenantId;

    // 2. Super admin kullanıcısını oluştur
    console.log("👤 Creating super admin...");
    const existingSuperAdmin = await db
      .select({ authMethod: authMethods, user: users })
      .from(authMethods)
      .innerJoin(users, eq(authMethods.userId, users.id))
      .where(eq(authMethods.providerId, config.superAdmin.email))
      .limit(1);

    if (existingSuperAdmin.length === 0) {
      // Super admin user'ı oluştur
      const [superAdminUser] = await db
        .insert(users)
        .values({
          displayName: config.superAdmin.displayName,
          status: "active",
          twoFactorEnabled: false,
        })
        .returning();

      // Auth method oluştur
      await db.insert(authMethods).values({
        userId: superAdminUser.id,
        provider: "email",
        providerId: config.superAdmin.email,
        verified: true,
        metadata: {
          email: config.superAdmin.email,
          isSystemAdmin: true,
        },
      });

      // Sistem tenant'ına membership ekle
      await db.insert(tenantMemberships).values({
        userId: superAdminUser.id,
        tenantId: systemTenantId,
        role: "system_admin",
        status: "active",
        permissions: { "*": ["*"] }, // Sistem tenant içinde full yetki
        accessLevel: "full",
        resourceRestrictions: {},
        joinedAt: new Date(),
      });

      result.created.superAdmin = true;
      console.log(`✅ Super admin created: ${config.superAdmin.email}`);
    } else {
      // Mevcut super admin'in sistem tenant'ında membership'i var mı kontrol et
      const existingMembership = await db
        .select()
        .from(tenantMemberships)
        .where(
          eq(tenantMemberships.userId, existingSuperAdmin[0].user.id)
        )
        .limit(1);

      if (existingMembership.length === 0) {
        // Sistem tenant'ına membership ekle
        await db.insert(tenantMemberships).values({
          userId: existingSuperAdmin[0].user.id,
          tenantId: systemTenantId,
          role: "system_admin",
          status: "active",
          permissions: { "*": ["*"] },
          accessLevel: "full",
          resourceRestrictions: {},
          joinedAt: new Date(),
        });
        console.log("✅ Added system tenant membership to existing super admin");
      }
      
      console.log(`ℹ️  Super admin already exists: ${config.superAdmin.email}`);
    }

    console.log("🎉 System setup completed successfully");
    return result;

  } catch (error) {
    console.error("❌ System setup failed:", error);
    return {
      success: false,
      created: {
        systemTenant: false,
        superAdmin: false,
      },
      error: error instanceof Error ? error.message : "Unknown error",
    };
  }
}

/**
 * Sistem tenant'ını slug ile bulur
 */
export async function getSystemTenant(db: Database) {
  return await db
    .select()
    .from(tenants)
    .where(eq(tenants.slug, SYSTEM_TENANT_SLUG))
    .limit(1);
}

/**
 * Sistem durumunu kontrol eder
 */
export async function checkSystemSetup(db: Database): Promise<{
  systemTenantExists: boolean;
  superAdminExists: boolean;
  needsSetup: boolean;
}> {
  try {
    // Sistem tenant kontrolü
    const systemTenant = await getSystemTenant(db);

    // Super admin kontrolü (sistem tenant'ında system_admin rolü olan kullanıcı)
    let superAdminExists = false;
    if (systemTenant.length > 0) {
      const superAdmin = await db
        .select()
        .from(tenantMemberships)
        .where(
          eq(tenantMemberships.tenantId, systemTenant[0].id)
        )
        .limit(1);
      superAdminExists = superAdmin.length > 0;
    }

    const systemTenantExists = systemTenant.length > 0;

    return {
      systemTenantExists,
      superAdminExists,
      needsSetup: !systemTenantExists || !superAdminExists,
    };
  } catch (error) {
    console.error("Error checking system setup:", error);
    return {
      systemTenantExists: false,
      superAdminExists: false,
      needsSetup: true,
    };
  }
}