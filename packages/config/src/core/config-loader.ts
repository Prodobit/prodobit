import {
  createPlatformAdapter,
  type AdapterOptions,
} from "../platform/adapter-factory.js";
import type { PlatformAdapter } from "../platform/adapters.js";
import { supportsFileSystem } from "../platform/runtime-detection.js";
import { ProdobitConfigSchema, type ProdobitConfig } from "../schemas/index.js";
import {
  DefaultSource,
  EnvironmentSource,
  FileSource,
} from "../sources/index.js";
import type {
  ConfigLoadOptions,
  ConfigSource,
  ConfigValidationErrorInfo,
  ConfigValidationResult,
} from "../types/config-source.js";

export interface ConfigLoaderOptions
  extends ConfigLoadOptions,
    AdapterOptions {}

export class ConfigLoader {
  private sources: ConfigSource[] = [];
  private loadedConfig: ProdobitConfig | null = null;
  private watchers: Array<() => Promise<void>> = [];
  private adapter: PlatformAdapter;

  constructor(options: ConfigLoaderOptions = {}) {
    this.adapter = createPlatformAdapter(options);
    this.initializeDefaultSources(options);

    if (options.sources) {
      this.sources.push(...options.sources);
    }

    // Sort sources by priority (highest first)
    this.sources.sort((a, b) => b.priority - a.priority);
  }

  async load(): Promise<ProdobitConfig> {
    const mergedConfig = await this.loadAndMergeConfigs();
    const validationResult = this.validateConfig(mergedConfig);

    if (!validationResult.success) {
      const errorDetails = validationResult.errors
        .map((error) => `${error.path}: ${error.message}`)
        .join("\n");

      throw new Error(`Configuration validation failed:\n${errorDetails}`);
    }

    this.loadedConfig = validationResult.data as ProdobitConfig;
    return this.loadedConfig;
  }

  async watch(callback: (config: ProdobitConfig) => void): Promise<void> {
    for (const source of this.sources) {
      if (source.watch) {
        const watchCallback = async (sourceConfig: Record<string, unknown>) => {
          try {
            const newConfig = await this.load();
            callback(newConfig);
          } catch (error) {
            console.error(
              `Error reloading configuration from ${source.name}:`,
              error
            );
          }
        };

        await source.watch(watchCallback);

        if (source.close) {
          this.watchers.push(() => source.close!());
        }
      }
    }
  }

  async close(): Promise<void> {
    await Promise.all(this.watchers.map((close) => close()));
    this.watchers = [];
  }

  getLoadedConfig(): ProdobitConfig | null {
    return this.loadedConfig;
  }

  getAdapter(): PlatformAdapter {
    return this.adapter;
  }

  addSource(source: ConfigSource): void {
    this.sources.push(source);
    this.sources.sort((a, b) => b.priority - a.priority);
  }

  private initializeDefaultSources(options: ConfigLoaderOptions): void {
    // Default configuration (lowest priority)
    this.sources.push(new DefaultSource());

    // Configuration files (only if file system is supported)
    if (supportsFileSystem()) {
      const configFiles = [
        "prodobit.config.json",
        "prodobit.config.js",
        ".prodobitrc.json",
        ".prodobitrc.js",
      ];

      for (const configFile of configFiles) {
        this.sources.push(
          new FileSource(this.adapter, {
            path: configFile,
            required: false,
          })
        );
      }

      // Environment-specific config file
      if (options.environment) {
        this.sources.push(
          new FileSource(this.adapter, {
            path: `prodobit.config.${options.environment}.json`,
            required: false,
          })
        );
      }
    }

    // Environment variables (highest priority)
    this.sources.push(new EnvironmentSource(this.adapter));
  }

  private async loadAndMergeConfigs(): Promise<Record<string, unknown>> {
    let mergedConfig: Record<string, unknown> = {};

    // Load from sources in reverse priority order (lowest to highest)
    const reversedSources = [...this.sources].reverse();

    for (const source of reversedSources) {
      try {
        const sourceConfig = await source.load();
        if (sourceConfig) {
          mergedConfig = this.deepMerge(mergedConfig, sourceConfig);
        }
      } catch (error) {
        console.error(
          `Error loading configuration from ${source.name}:`,
          error
        );
        throw error;
      }
    }

    return mergedConfig;
  }

  private validateConfig(
    config: Record<string, unknown>
  ): ConfigValidationResult {
    try {
      const result = ProdobitConfigSchema(config);
      
      // Check if result is an ArkErrors object (failed validation)
      if (result.constructor.name === 'ArkErrors') {
        // Convert ArkErrors to string to get error messages
        return {
          success: false,
          errors: [{
            path: "validation",
            message: result.toString(),
            value: config,
          }],
        };
      }

      // For arktype 2.x, successful validation returns the validated data directly
      return {
        success: true,
        errors: [],
        data: result,
      };
    } catch (error) {
      return {
        success: false,
        errors: [
          {
            path: "root",
            message:
              error instanceof Error
                ? error.message
                : "Unknown validation error",
            value: config,
          },
        ],
      };
    }
  }

  private parseArkTypeError(error: Error): ConfigValidationErrorInfo[] {
    // Parse ArkType validation errors
    const errorMessage = error.message;
    const errors: ConfigValidationErrorInfo[] = [];

    // This is a simplified parser - ArkType error format may vary
    const lines = errorMessage.split("\n");

    for (const line of lines) {
      const trimmedLine = line.trim();
      if (
        trimmedLine &&
        !trimmedLine.startsWith("at") &&
        !trimmedLine.startsWith("Expected")
      ) {
        errors.push({
          path: "unknown",
          message: trimmedLine,
        });
      }
    }

    if (errors.length === 0) {
      errors.push({
        path: "root",
        message: errorMessage,
      });
    }

    return errors;
  }

  private deepMerge(
    target: Record<string, unknown>,
    source: Record<string, unknown>
  ): Record<string, unknown> {
    const result = { ...target };

    for (const [key, value] of Object.entries(source)) {
      if (value === null || value === undefined) {
        continue;
      }

      if (
        typeof value === "object" &&
        !Array.isArray(value) &&
        typeof result[key] === "object" &&
        !Array.isArray(result[key]) &&
        result[key] !== null
      ) {
        result[key] = this.deepMerge(
          result[key] as Record<string, unknown>,
          value as Record<string, unknown>
        );
      } else {
        result[key] = value;
      }
    }

    return result;
  }
}
