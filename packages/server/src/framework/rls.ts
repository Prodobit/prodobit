import type { createDatabase } from "@prodobit/database";

export class RLSManager {
  constructor(private db: ReturnType<typeof createDatabase>) {}

  async setTenantId(tenantId: string) {
    try {
      await this.db.execute(`SET app.current_tenant_id = '${tenantId}'`);
    } catch (error) {
      console.error("Failed to set tenant ID for RLS:", error);
      throw error;
    }
  }

  async clearTenantId() {
    try {
      await this.db.execute(`RESET app.current_tenant_id`);
    } catch (error) {
      console.error("Failed to clear tenant ID for RLS:", error);
      throw error;
    }
  }

  async withTenant<T>(
    tenantId: string,
    operation: () => Promise<T>
  ): Promise<T> {
    await this.setTenantId(tenantId);
    try {
      return await operation();
    } finally {
      await this.clearTenantId();
    }
  }
}

// Middleware for automatic tenant isolation
export function tenantIsolationMiddleware() {
  return async (c: any, next: any) => {
    const user = c.get("user");
    const db = c.get("db");

    if (user?.tenantId && db) {
      const rlsManager = new RLSManager(db);
      await rlsManager.setTenantId(user.tenantId);

      // Store RLS manager in context for cleanup
      c.set("rlsManager", rlsManager);

      try {
        await next();
      } finally {
        await rlsManager.clearTenantId();
      }
    } else {
      await next();
    }
  };
}
