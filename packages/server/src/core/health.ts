import { Hono } from "hono";
import type { Database } from "@prodobit/database";

const health = new Hono();

interface HealthResponse {
  status: 'healthy' | 'degraded' | 'unhealthy';
  timestamp: string;
  uptime: number;
  version?: string;
  database: {
    connected: boolean;
  };
  services: {
    [key: string]: {
      status: 'up' | 'down';
      responseTime?: number;
      details?: any;
    };
  };
}

/**
 * GET /health - Basic health check
 */
health.get("/", async (c) => {
  const startTime = Date.now();
  const db = c.get("db") as Database;

  try {
    const healthData: HealthResponse = {
      status: 'healthy',
      timestamp: new Date().toISOString(),
      uptime: process.uptime(),
      version: process.env.npm_package_version,
      database: {
        connected: false,
      },
      services: {}
    };

    // Check database connection
    try {
      await db.execute('SELECT 1');
      healthData.database.connected = true;
      healthData.services.database = {
        status: 'up',
        responseTime: Date.now() - startTime
      };
    } catch (error) {
      healthData.database.connected = false;
      healthData.services.database = {
        status: 'down',
        details: error instanceof Error ? error.message : 'Unknown error'
      };
      healthData.status = 'unhealthy';
    }

    // Set appropriate HTTP status code
    const httpStatus = healthData.status === 'healthy' ? 200 : 
                      healthData.status === 'degraded' ? 200 : 503;

    return c.json(healthData, httpStatus);
  } catch (error) {
    console.error('Health check failed:', error);
    
    return c.json({
      status: 'unhealthy',
      timestamp: new Date().toISOString(),
      error: error instanceof Error ? error.message : 'Health check failed'
    }, 503);
  }
});

/**
 * GET /health/live - Kubernetes liveness probe
 */
health.get("/live", (c) => {
  return c.json({
    status: 'alive',
    timestamp: new Date().toISOString()
  });
});

/**
 * GET /health/ready - Kubernetes readiness probe
 */
health.get("/ready", async (c) => {
  const db = c.get("db") as Database;

  try {
    // Check database connection
    await db.execute('SELECT 1');
    
    return c.json({
      status: 'ready',
      timestamp: new Date().toISOString()
    });
  } catch (error) {
    return c.json({
      status: 'not-ready',
      timestamp: new Date().toISOString(),
      reason: error instanceof Error ? error.message : 'Database check failed'
    }, 503);
  }
});

export default health;