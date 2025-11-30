import Redis from "ioredis";

// Redis connection configuration
const REDIS_HOST = process.env["REDIS_HOST"] || "localhost";
const REDIS_PORT = parseInt(process.env["REDIS_PORT"] || "6379", 10);
const REDIS_PASSWORD = process.env["REDIS_PASSWORD"];
const REDIS_TLS = process.env["REDIS_TLS"] === "true" || REDIS_PORT === 25061;

let redisClient: Redis | null = null;

/**
 * Get or create Redis client singleton
 */
export function getRedisClient(): Redis {
  if (!redisClient) {
    redisClient = new Redis({
      host: REDIS_HOST,
      port: REDIS_PORT,
      password: REDIS_PASSWORD,
      tls: REDIS_TLS ? {} : undefined,
      retryStrategy: (times) => {
        const delay = Math.min(times * 50, 2000);
        return delay;
      },
      maxRetriesPerRequest: 3,
      enableReadyCheck: true,
      connectTimeout: 10000,
    });

    redisClient.on("error", (err) => {
      console.error("Redis connection error:", err.message);
    });

    redisClient.on("connect", () => {
      // Redis connected successfully
    });

    redisClient.on("ready", () => {
      // Redis is ready
    });
  }

  return redisClient;
}

/**
 * Close Redis connection
 */
export async function closeRedisConnection(): Promise<void> {
  if (redisClient) {
    await redisClient.quit();
    redisClient = null;
  }
}

/**
 * Check if Redis is connected
 */
export function isRedisConnected(): boolean {
  return redisClient?.status === "ready";
}

export { Redis };
