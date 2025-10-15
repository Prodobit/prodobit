import type { Database } from "@prodobit/database";
import type { User } from "@prodobit/types";
import { Hono } from "hono";
import { testClient } from "hono/testing";
import { createMockDatabase, createMockUser } from "./test-helpers.js";

/**
 * Test server utilities for integration testing
 */

export interface TestServerOptions {
  user?: User | null;
  database?: Database;
  enabledModules?: Set<string>;
  environment?: "test" | "development" | "production";
}

export class TestServer {
  private app: Hono;
  private options: TestServerOptions;

  constructor(options: TestServerOptions = {}) {
    this.app = new Hono();
    this.options = {
      user: createMockUser(),
      database: createMockDatabase(),
      enabledModules: new Set(["core"]),
      environment: "test",
      ...options,
    };

    this.setupMiddleware();
  }

  private setupMiddleware() {
    // Set up context middleware
    this.app.use("*", async (c, next) => {
      c.set("db", this.options.database);
      c.set("user", this.options.user);
      c.set("enabledModules", this.options.enabledModules);
      c.env = { NODE_ENV: this.options.environment };
      await next();
    });

    // CORS middleware for testing
    this.app.use("*", async (c, next) => {
      c.header("Access-Control-Allow-Origin", "*");
      c.header(
        "Access-Control-Allow-Methods",
        "GET, POST, PUT, DELETE, OPTIONS"
      );
      c.header("Access-Control-Allow-Headers", "Content-Type, Authorization");

      if (c.req.method === "OPTIONS") {
        return c.text("", 204);
      }

      await next();
    });

    // Error handling middleware
    this.app.onError((error, c) => {
      console.error("Test server error:", error);

      if (error.name === "ValidationError") {
        return c.json({ error: error.message }, 400);
      }

      if (error.name === "NotFoundError") {
        return c.json({ error: "Not found" }, 404);
      }

      if (error.name === "UnauthorizedError") {
        return c.json({ error: "Unauthorized" }, 401);
      }

      if (error.name === "ForbiddenError") {
        return c.json({ error: "Forbidden" }, 403);
      }

      return c.json({ error: "Internal server error" }, 500);
    });

    // Health check endpoint
    this.app.get("/health", (c) => {
      return c.json({
        status: "ok",
        timestamp: new Date().toISOString(),
        environment: this.options.environment,
      });
    });
  }

  // Add routes to the test server
  route(path: string, handler: Hono) {
    this.app.route(path, handler);
    return this;
  }

  // Get test client
  getClient() {
    return testClient(this.app);
  }

  // Update server options
  setUser(user: User | null) {
    this.options.user = user;
    return this;
  }

  setDatabase(database: Database) {
    this.options.database = database;
    return this;
  }

  setEnabledModules(modules: Set<string>) {
    this.options.enabledModules = modules;
    return this;
  }

  // Authentication helpers
  withAuthenticatedUser(user?: User) {
    this.setUser(user || createMockUser());
    return this;
  }

  withUnauthenticatedUser() {
    this.setUser(null);
    return this;
  }

  withAdminUser() {
    this.setUser(createMockUser({ roles: ["admin"] }));
    return this;
  }

  withLimitedUser() {
    this.setUser(createMockUser({ roles: ["user"] }));
    return this;
  }

  // Module management
  enableModule(moduleName: string) {
    this.options.enabledModules?.add(moduleName);
    return this;
  }

  disableModule(moduleName: string) {
    this.options.enabledModules?.delete(moduleName);
    return this;
  }

  // Request helpers
  async get(path: string, options?: any) {
    const client = this.getClient();
    return await client.request(path, {
      method: "GET",
      ...options,
    });
  }

  async post(path: string, data?: any, options?: any) {
    const client = this.getClient();
    return await client.request(path, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        ...options?.headers,
      },
      body: data ? JSON.stringify(data) : undefined,
      ...options,
    });
  }

  async put(path: string, data?: any, options?: any) {
    const client = this.getClient();
    return await client.request(path, {
      method: "PUT",
      headers: {
        "Content-Type": "application/json",
        ...options?.headers,
      },
      body: data ? JSON.stringify(data) : undefined,
      ...options,
    });
  }

  async delete(path: string, options?: any) {
    const client = this.getClient();
    return await client.request(path, {
      method: "DELETE",
      ...options,
    });
  }

  // Assert response helpers
  async expectResponse(
    response: Response,
    expectedStatus: number,
    expectedBody?: any
  ) {
    expect(response.status).toBe(expectedStatus);

    if (expectedBody !== undefined) {
      const body = await response.json();
      expect(body).toEqual(expectedBody);
    }
  }

  async expectSuccessResponse(response: Response, expectedBody?: any) {
    await this.expectResponse(response, 200, expectedBody);
  }

  async expectCreatedResponse(response: Response, expectedBody?: any) {
    await this.expectResponse(response, 201, expectedBody);
  }

  async expectBadRequestResponse(response: Response, expectedError?: string) {
    expect(response.status).toBe(400);

    if (expectedError) {
      const body = await response.json();
      expect(body.error).toContain(expectedError);
    }
  }

  async expectUnauthorizedResponse(response: Response) {
    await this.expectResponse(response, 401);
  }

  async expectForbiddenResponse(response: Response) {
    await this.expectResponse(response, 403);
  }

  async expectNotFoundResponse(response: Response) {
    await this.expectResponse(response, 404);
  }

  // Utility methods
  getApp() {
    return this.app;
  }

  reset() {
    this.options = {
      user: createMockUser(),
      database: createMockDatabase(),
      enabledModules: new Set(["core"]),
      environment: "test",
    };
    return this;
  }
}

// Factory functions
export const createTestServer = (options?: TestServerOptions) => {
  return new TestServer(options);
};

export const createAuthenticatedTestServer = (user?: User) => {
  return new TestServer({
    user: user || createMockUser(),
  });
};

export const createUnauthenticatedTestServer = () => {
  return new TestServer({
    user: null,
  });
};

// Test scenarios for common setups
export const testServerScenarios = {
  withCoreModule: () => createTestServer().enableModule("core"),
  withSalesModule: () =>
    createTestServer().enableModule("core").enableModule("sales"),
  withAllModules: () =>
    createTestServer()
      .enableModule("core")
      .enableModule("sales")
      .enableModule("inventory")
      .enableModule("manufacturing")
      .enableModule("brand"),

  asAdmin: () => createTestServer().withAdminUser(),
  asUser: () => createTestServer().withLimitedUser(),
  asGuest: () => createTestServer().withUnauthenticatedUser(),
};

// Integration test helpers
export class IntegrationTestSuite {
  private server: TestServer;

  constructor(server?: TestServer) {
    this.server = server || createTestServer();
  }

  async testAuthFlow() {
    // Test login
    const loginResponse = await this.server.post("/auth/login", {
      email: "test@example.com",
      password: "password",
    });

    await this.server.expectSuccessResponse(loginResponse);

    const loginBody = await loginResponse.json();
    expect(loginBody.token).toBeDefined();
    expect(loginBody.user).toBeDefined();

    // Test authenticated request
    const profileResponse = await this.server.get("/auth/me", {
      headers: {
        Authorization: `Bearer ${loginBody.token}`,
      },
    });

    await this.server.expectSuccessResponse(profileResponse);

    // Test logout
    const logoutResponse = await this.server.post("/auth/logout");
    await this.server.expectSuccessResponse(logoutResponse);

    return { loginResponse, profileResponse, logoutResponse };
  }

  async testCRUDOperations(
    resourcePath: string,
    createData: any,
    updateData: any
  ) {
    // Create
    const createResponse = await this.server.post(resourcePath, createData);
    await this.server.expectCreatedResponse(createResponse);

    const createdResource = await createResponse.json();
    const resourceId =
      createdResource.id ||
      createdResource[Object.keys(createdResource)[0]]?.id;

    // Read
    const readResponse = await this.server.get(`${resourcePath}/${resourceId}`);
    await this.server.expectSuccessResponse(readResponse);

    // Update
    const updateResponse = await this.server.put(
      `${resourcePath}/${resourceId}`,
      updateData
    );
    await this.server.expectSuccessResponse(updateResponse);

    // Delete
    const deleteResponse = await this.server.delete(
      `${resourcePath}/${resourceId}`
    );
    await this.server.expectSuccessResponse(deleteResponse);

    // Verify deletion
    const verifyResponse = await this.server.get(
      `${resourcePath}/${resourceId}`
    );
    await this.server.expectNotFoundResponse(verifyResponse);

    return {
      createResponse,
      readResponse,
      updateResponse,
      deleteResponse,
      resourceId,
    };
  }

  async testPermissions(resourcePath: string, data: any) {
    // Test as unauthenticated user
    this.server.withUnauthenticatedUser();
    const unauthorizedResponse = await this.server.post(resourcePath, data);
    await this.server.expectUnauthorizedResponse(unauthorizedResponse);

    // Test as limited user
    this.server.withLimitedUser();
    const limitedResponse = await this.server.post(resourcePath, data);
    // This might be 403 or 200 depending on the endpoint
    expect([200, 403]).toContain(limitedResponse.status);

    // Test as admin
    this.server.withAdminUser();
    const adminResponse = await this.server.post(resourcePath, data);
    expect([200, 201]).toContain(adminResponse.status);

    return {
      unauthorizedResponse,
      limitedResponse,
      adminResponse,
    };
  }

  async testValidation(
    resourcePath: string,
    invalidData: any,
    expectedErrors: string[]
  ) {
    const response = await this.server.post(resourcePath, invalidData);
    await this.server.expectBadRequestResponse(response);

    const body = await response.json();
    expectedErrors.forEach((error) => {
      expect(body.error || body.message).toContain(error);
    });

    return response;
  }

  getServer() {
    return this.server;
  }
}

export const createIntegrationTestSuite = (server?: TestServer) => {
  return new IntegrationTestSuite(server);
};
