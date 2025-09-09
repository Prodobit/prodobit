import type { Database } from "@prodobit/database";

export interface HealthCheck {
  status: "ok" | "error";
  error?: string;
}

export interface HealthResponse {
  status: "ok" | "degraded";
  message: string;
  timestamp: string;
  version: string;
  modules: string[];
  checks: {
    database: HealthCheck;
    [key: string]: HealthCheck;
  };
}

export class HealthService {
  constructor(private db: Database) {}

  /**
   * Perform database health check
   */
  private async checkDatabase(): Promise<HealthCheck> {
    try {
      await this.db.$client`SELECT 1`;
      return { status: "ok" };
    } catch (error) {
      return {
        status: "error",
        error: error instanceof Error ? error.message : "Unknown database error"
      };
    }
  }

  /**
   * Add more health checks here as needed
   */
  private async checkExternalServices(): Promise<Record<string, HealthCheck>> {
    // Example: Add Redis, external APIs, etc.
    return {};
  }

  /**
   * Get comprehensive health status
   */
  async getHealthStatus(enabledModules: Set<string>): Promise<HealthResponse> {
    const timestamp = new Date().toISOString();
    const version = "1.0.0";

    // Perform all health checks
    const databaseCheck = await this.checkDatabase();
    const externalChecks = await this.checkExternalServices();

    const allChecks = {
      database: databaseCheck,
      ...externalChecks,
    };

    // Determine overall health status
    const hasErrors = Object.values(allChecks).some(check => check.status === "error");
    const overallStatus = hasErrors ? "degraded" : "ok";
    const message = overallStatus === "ok" 
      ? "Server is healthy" 
      : "Server has issues";

    return {
      status: overallStatus,
      message,
      timestamp,
      version,
      modules: Array.from(enabledModules),
      checks: allChecks,
    };
  }

  /**
   * Simple health check for basic endpoints
   */
  async isHealthy(): Promise<boolean> {
    const dbCheck = await this.checkDatabase();
    return dbCheck.status === "ok";
  }

  /**
   * Get basic health info without detailed checks
   */
  getBasicHealthInfo(): Pick<HealthResponse, "message" | "version" | "status"> {
    return {
      message: "🚀 Prodobit Server is running",
      version: "1.0.0",
      status: "ok"
    };
  }
}