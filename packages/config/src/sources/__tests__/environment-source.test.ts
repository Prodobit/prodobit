import { beforeEach, describe, expect, it, vi } from "vitest";
import type { PlatformAdapter } from "../../platform/adapters.js";
import { EnvironmentSource } from "../environment-source.js";

describe("EnvironmentSource", () => {
  let mockAdapter: PlatformAdapter;

  beforeEach(() => {
    mockAdapter = {
      name: "node",
      getAllEnvironmentVariables: vi.fn(),
      getEnvironmentVariable: vi.fn(),
      readFile: vi.fn(),
      fileExists: vi.fn(),
      watchFile: vi.fn(),
      getWorkingDirectory: vi.fn(),
      resolvePath: vi.fn(),
      getPlatformInfo: vi.fn(),
    };
  });

  describe("constructor", () => {
    it("should create EnvironmentSource with default options", () => {
      const source = new EnvironmentSource(mockAdapter);

      expect(source.name).toBe("environment");
      expect(source.priority).toBe(100); // Highest priority
    });

    it("should create EnvironmentSource with custom options", () => {
      const customTransform = (key: string, value: string) => [
        key.toUpperCase(),
        value,
      ];
      const options = {
        prefix: "MYAPP_",
        separator: "__",
        transform: customTransform,
      };

      const source = new EnvironmentSource(mockAdapter, options);

      expect(source.name).toBe("environment");
      expect(source.priority).toBe(100);
    });
  });

  describe("load", () => {
    it("should return null when no environment variables match prefix", async () => {
      mockAdapter.getAllEnvironmentVariables = vi.fn().mockReturnValue({
        OTHER_VAR: "value",
        DIFFERENT_PREFIX_VAR: "value",
      });

      const source = new EnvironmentSource(mockAdapter);
      const result = await source.load();

      expect(result).toBeNull();
    });

    it("should load and transform environment variables with default prefix", async () => {
      mockAdapter.getAllEnvironmentVariables = vi.fn().mockReturnValue({
        PRODOBIT_SERVER_PORT: "3000",
        PRODOBIT_DATABASE_HOST: "localhost",
        PRODOBIT_DEBUG: "true",
        OTHER_VAR: "ignored",
      });

      const source = new EnvironmentSource(mockAdapter);
      const result = await source.load();

      expect(result).toEqual({
        server: {
          port: 3000,
        },
        database: {
          host: "localhost",
        },
        debug: true,
      });
    });

    it("should use custom prefix when provided", async () => {
      mockAdapter.getAllEnvironmentVariables = vi.fn().mockReturnValue({
        MYAPP_SERVER_PORT: "4000",
        PRODOBIT_SERVER_HOST: "ignored", // Different prefix
      });

      const source = new EnvironmentSource(mockAdapter, { prefix: "MYAPP_" });
      const result = await source.load();

      expect(result).toEqual({
        server: {
          port: 4000,
        },
      });
    });

    it("should parse different value types correctly", async () => {
      mockAdapter.getAllEnvironmentVariables = vi.fn().mockReturnValue({
        PRODOBIT_STRING_VAL: "hello",
        PRODOBIT_NUMBER_VAL: "42",
        PRODOBIT_FLOAT_VAL: "3.14",
        PRODOBIT_BOOLEAN_TRUE: "true",
        PRODOBIT_BOOLEAN_FALSE: "false",
        PRODOBIT_ARRAY_VAL: "a,b,c",
        PRODOBIT_JSON_OBJECT: '{"key":"value"}',
        PRODOBIT_JSON_ARRAY: "[1,2,3]",
      });

      const source = new EnvironmentSource(mockAdapter);
      const result = await source.load();

      expect(result).toEqual({
        string: {
          val: "hello",
        },
        number: {
          val: 42,
        },
        float: {
          val: 3.14,
        },
        boolean: {
          true: true,
          false: false,
        },
        array: {
          val: ["a", "b", "c"],
        },
        json: {
          object: { key: "value" },
          array: [1, 2, 3],
        },
      });
    });

    it("should handle invalid JSON gracefully", async () => {
      mockAdapter.getAllEnvironmentVariables = vi.fn().mockReturnValue({
        PRODOBIT_INVALID_JSON: "{invalid-json}",
        PRODOBIT_INCOMPLETE_JSON: '{"incomplete"',
      });

      const source = new EnvironmentSource(mockAdapter);
      const result = await source.load();

      expect(result).toEqual({
        invalid: {
          json: "{invalid-json}",
        },
        incomplete: {
          json: '{"incomplete"',
        },
      });
    });

    it("should create nested objects for dot notation", async () => {
      mockAdapter.getAllEnvironmentVariables = vi.fn().mockReturnValue({
        PRODOBIT_DATABASE_CONNECTION_HOST: "db-host",
        PRODOBIT_DATABASE_CONNECTION_PORT: "5432",
        PRODOBIT_DATABASE_POOL_MIN: "2",
        PRODOBIT_SERVER_CORS_ENABLED: "true",
      });

      const source = new EnvironmentSource(mockAdapter);
      const result = await source.load();

      expect(result).toEqual({
        database: {
          connection: {
            host: "db-host",
            port: 5432,
          },
          pool: {
            min: 2,
          },
        },
        server: {
          cors: {
            enabled: true,
          },
        },
      });
    });

    it("should skip empty config keys", async () => {
      mockAdapter.getAllEnvironmentVariables = vi.fn().mockReturnValue({
        PRODOBIT_: "ignored", // Empty key after prefix
        PRODOBIT_VALID_KEY: "value",
      });

      const source = new EnvironmentSource(mockAdapter);
      const result = await source.load();

      expect(result).toEqual({
        valid: {
          key: "value",
        },
      });
    });

    it("should skip undefined environment variables", async () => {
      mockAdapter.getAllEnvironmentVariables = vi.fn().mockReturnValue({
        PRODOBIT_DEFINED: "value",
        PRODOBIT_UNDEFINED: undefined,
      });

      const source = new EnvironmentSource(mockAdapter);
      const result = await source.load();

      expect(result).toEqual({
        defined: "value",
      });
    });

    it("should use custom transform function when provided", async () => {
      mockAdapter.getAllEnvironmentVariables = vi.fn().mockReturnValue({
        PRODOBIT_TEST_VALUE: "original",
      });

      const customTransform = (key: string, value: string) => {
        return [key.toUpperCase(), `transformed-${value}`];
      };

      const source = new EnvironmentSource(mockAdapter, {
        transform: customTransform,
      });
      const result = await source.load();

      expect(result).toEqual({
        TEST_VALUE: "transformed-original",
      });
    });

    it("should handle overwriting nested values correctly", async () => {
      mockAdapter.getAllEnvironmentVariables = vi.fn().mockReturnValue({
        PRODOBIT_CONFIG_NESTED_VALUE: "first",
        PRODOBIT_CONFIG_NESTED: "second", // This should overwrite the nested object
      });

      const source = new EnvironmentSource(mockAdapter);
      const result = await source.load();

      // The order of processing determines the final structure
      // In this case, 'nested' will be overwritten by the string value
      expect(result?.config?.nested).toBeDefined();
    });

    it("should parse negative numbers correctly", async () => {
      mockAdapter.getAllEnvironmentVariables = vi.fn().mockReturnValue({
        PRODOBIT_NEGATIVE_INT: "-42",
        PRODOBIT_NEGATIVE_FLOAT: "-3.14",
      });

      const source = new EnvironmentSource(mockAdapter);
      const result = await source.load();

      expect(result).toEqual({
        negative: {
          int: -42,
          float: -3.14,
        },
      });
    });

    it("should handle empty arrays correctly", async () => {
      mockAdapter.getAllEnvironmentVariables = vi.fn().mockReturnValue({
        PRODOBIT_EMPTY_ARRAY: "",
        PRODOBIT_SINGLE_COMMA: ",",
        PRODOBIT_COMMA_SEPARATED: "a,b,c",
      });

      const source = new EnvironmentSource(mockAdapter);
      const result = await source.load();

      expect(result).toEqual({
        empty: {
          array: "",
        },
        single: {
          comma: ["", ""],
        },
        comma: {
          separated: ["a", "b", "c"],
        },
      });
    });

    it("should preserve array values with spaces when comma separated", async () => {
      mockAdapter.getAllEnvironmentVariables = vi.fn().mockReturnValue({
        PRODOBIT_ARRAY_WITH_SPACES: "item 1, item 2, item 3",
      });

      const source = new EnvironmentSource(mockAdapter);
      const result = await source.load();

      expect(result).toEqual({
        array: {
          with: {
            spaces: ["item 1", "item 2", "item 3"],
          },
        },
      });
    });
  });

  describe("priority and name", () => {
    it("should have correct priority for environment variables", () => {
      const source = new EnvironmentSource(mockAdapter);

      expect(source.priority).toBe(100); // Highest priority
      expect(source.name).toBe("environment");
    });
  });
});
