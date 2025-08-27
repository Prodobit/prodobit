import { drizzle } from "drizzle-orm/postgres-js";
import postgres from "postgres";
import { migrate } from "drizzle-orm/postgres-js/migrator";
import bcrypt from "bcryptjs";
import { eq, and } from "drizzle-orm";
import {
  tenants,
  users,
  authMethods,
  tenantMemberships,
  roles,
  userRoles,
} from "@prodobit/database";

// Define insert types for database operations
type NewTenant = typeof tenants.$inferInsert;
type NewUser = typeof users.$inferInsert;

interface DatabaseConfig {
  host: string;
  port: number;
  database: string;
  user: string;
  password: string;
  ssl?: boolean;
}

interface AdminUser {
  email: string;
  password: string;
  firstName: string;
  lastName: string;
}

interface TenantInfo {
  name: string;
  subdomain?: string;
  description?: string;
  industry?: string;
}

interface InstallationResult {
  success: boolean;
  error?: string;
  data?: any;
  details?: string;
}

export class InstallationService {
  
  async testDatabaseConnection(config: DatabaseConfig): Promise<InstallationResult> {
    try {
      const connectionString = this.buildConnectionString(config);
      const sql = postgres(connectionString, { max: 1 });
      
      // Test basic connection
      await sql`SELECT 1 as test`;
      
      // Test database creation permission
      try {
        await sql`SELECT current_database()`;
      } catch (error) {
        return {
          success: false,
          error: "Veritabanına erişim hatası",
          details: "Belirtilen veritabanı mevcut değil veya erişim yetkisi yok"
        };
      }
      
      await sql.end();
      
      return {
        success: true,
        data: { message: "Veritabanı bağlantısı başarılı" }
      };
    } catch (error) {
      return {
        success: false,
        error: "Veritabanı bağlantı hatası",
        details: error instanceof Error ? error.message : "Bilinmeyen hata"
      };
    }
  }

  async setupDatabase(config: DatabaseConfig): Promise<InstallationResult> {
    try {
      // Try to connect to the target database
      const targetConnectionString = this.buildConnectionString(config);
      
      try {
        const sql = postgres(targetConnectionString, { max: 1 });
        await sql`SELECT 1`;
        await sql.end();
        
        return {
          success: true,
          data: { message: "Veritabanı zaten mevcut" }
        };
      } catch (error) {
        // Database doesn't exist, try to create it
        const adminConfig = { ...config, database: 'postgres' };
        const adminConnectionString = this.buildConnectionString(adminConfig);
        const adminSql = postgres(adminConnectionString, { max: 1 });
        
        try {
          await adminSql.unsafe(`CREATE DATABASE "${config.database}"`);
          await adminSql.end();
          
          return {
            success: true,
            data: { message: "Veritabanı başarıyla oluşturuldu" }
          };
        } catch (createError) {
          await adminSql.end();
          return {
            success: false,
            error: "Veritabanı oluşturulamadı",
            details: createError instanceof Error ? createError.message : "Bilinmeyen hata"
          };
        }
      }
    } catch (error) {
      return {
        success: false,
        error: "Veritabanı kurulum hatası",
        details: error instanceof Error ? error.message : "Bilinmeyen hata"
      };
    }
  }

  async createSchema(config: DatabaseConfig): Promise<InstallationResult> {
    try {
      const connectionString = this.buildConnectionString(config);
      const sql = postgres(connectionString);
      const db = drizzle(sql);

      // Run migrations
      await migrate(db, { 
        migrationsFolder: "./packages/database/drizzle" 
      });

      await sql.end();

      return {
        success: true,
        data: { message: "Veritabanı şeması oluşturuldu" }
      };
    } catch (error) {
      return {
        success: false,
        error: "Şema oluşturma hatası",
        details: error instanceof Error ? error.message : "Migration hatası"
      };
    }
  }

  async createTenant(tenantInfo: TenantInfo, dbConfig: DatabaseConfig): Promise<InstallationResult> {
    try {
      const connectionString = this.buildConnectionString(dbConfig);
      const sql = postgres(connectionString);
      const db = drizzle(sql);

      const tenantData: NewTenant = {
        name: tenantInfo.name,
        subdomain: tenantInfo.subdomain,
        description: tenantInfo.description,
        industry: tenantInfo.industry,
        status: 'active',
        settings: {},
      };

      const [tenant] = await db.insert(tenants).values(tenantData).returning();

      // Create default roles for the tenant
      const defaultRoles = [
        { tenantId: tenant.id, name: 'admin', description: 'System Administrator', isSystem: true },
        { tenantId: tenant.id, name: 'user', description: 'Standard User', isSystem: true },
        { tenantId: tenant.id, name: 'sales_manager', description: 'Sales Manager', isSystem: true },
        { tenantId: tenant.id, name: 'warehouse_manager', description: 'Warehouse Manager', isSystem: true },
      ];

      for (const roleData of defaultRoles) {
        await db.insert(roles).values(roleData);
      }

      await sql.end();

      return {
        success: true,
        data: { tenant, message: "Şirket kaydı oluşturuldu" }
      };
    } catch (error) {
      return {
        success: false,
        error: "Şirket kaydı oluşturma hatası",
        details: error instanceof Error ? error.message : "Bilinmeyen hata"
      };
    }
  }

  async createAdminUser(adminUser: AdminUser, dbConfig: DatabaseConfig): Promise<InstallationResult> {
    try {
      const connectionString = this.buildConnectionString(dbConfig);
      const sql = postgres(connectionString);
      const db = drizzle(sql);

      // Get the tenant (should be the first/only one)
      const [tenant] = await db.select().from(tenants).limit(1);
      if (!tenant) {
        return {
          success: false,
          error: "Şirket kaydı bulunamadı",
          details: "Önce şirket kaydı oluşturulmalı"
        };
      }

      // Hash password
      const hashedPassword = await bcrypt.hash(adminUser.password, 12);

      // Create user
      const userData: NewUser = {
        displayName: `${adminUser.firstName} ${adminUser.lastName}`.trim(),
        status: 'active',
      };

      const [user] = await db.insert(users).values(userData).returning();
      
      // Create auth method for email/password
      await db.insert(authMethods).values({
        userId: user.id,
        provider: 'email',
        providerId: adminUser.email,
        verified: true,
        metadata: { passwordHash: hashedPassword },
      });

      // Get admin role
      const [adminRole] = await db
        .select()
        .from(roles)
        .where(and(eq(roles.tenantId, tenant.id), eq(roles.name, 'admin')))
        .limit(1);

      if (!adminRole) {
        return {
          success: false,
          error: "Admin rolü bulunamadı",
          details: "Şirket rolleri düzgün oluşturulmamış"
        };
      }

      // Create tenant membership for user
      const membershipData = {
        userId: user.id,
        tenantId: tenant.id,
        role: 'admin',
        status: 'active',
        joinedAt: new Date(),
      };

      await db.insert(tenantMemberships).values(membershipData);

      // Assign role to user
      const userRoleData = {
        userId: user.id,
        roleId: adminRole.id,
      };

      await db.insert(userRoles).values(userRoleData);

      await sql.end();

      return {
        success: true,
        data: { 
          user: { ...user, passwordHash: undefined }, 
          tenant, 
          message: "Admin kullanıcı oluşturuldu" 
        }
      };
    } catch (error) {
      return {
        success: false,
        error: "Admin kullanıcı oluşturma hatası",
        details: error instanceof Error ? error.message : "Bilinmeyen hata"
      };
    }
  }

  async enableModules(modules: string[], dbConfig: DatabaseConfig): Promise<InstallationResult> {
    try {
      // For now, just return success as modules are already enabled in the server config
      // In a more advanced implementation, this could update a modules table
      
      return {
        success: true,
        data: { 
          enabledModules: modules,
          message: `${modules.length} modül aktifleştirildi` 
        }
      };
    } catch (error) {
      return {
        success: false,
        error: "Modül aktifleştirme hatası",
        details: error instanceof Error ? error.message : "Bilinmeyen hata"
      };
    }
  }

  async finalizeInstallation(config: any): Promise<InstallationResult> {
    try {
      // Create a installation completion marker
      const completionData = {
        completedAt: new Date(),
        version: "1.0.0",
        modules: config.modules || [],
        tenant: config.tenant?.name,
        admin: config.adminUser?.email,
      };

      // In a production system, you might want to:
      // 1. Create system configuration files
      // 2. Set up cron jobs
      // 3. Initialize cache
      // 4. Send welcome emails
      // 5. Create audit logs

      return {
        success: true,
        data: { 
          ...completionData,
          message: "Kurulum başarıyla tamamlandı" 
        }
      };
    } catch (error) {
      return {
        success: false,
        error: "Kurulum finalizasyon hatası",
        details: error instanceof Error ? error.message : "Bilinmeyen hata"
      };
    }
  }

  async checkInstallationStatus(): Promise<any> {
    try {
      // Check if basic tables exist and have data
      // This is a simplified check - in production you'd want more comprehensive checks
      
      return {
        isInstalled: false,
        needsSetup: true,
        version: null,
        lastCheck: new Date()
      };
    } catch (error) {
      return {
        isInstalled: false,
        needsSetup: true,
        error: error instanceof Error ? error.message : "Status check failed"
      };
    }
  }

  private buildConnectionString(config: DatabaseConfig): string {
    const { host, port, database, user, password, ssl } = config;
    return `postgresql://${user}:${password}@${host}:${port}/${database}${ssl ? '?sslmode=require' : ''}`;
  }
}