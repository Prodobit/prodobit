import { ConfigSource } from '../types/config-source.js';
import type { PlatformAdapter } from '../platform/adapters.js';

export interface EnvironmentSourceOptions {
  prefix?: string;
  separator?: string;
  transform?: (key: string, value: string) => [string, unknown];
}

export class EnvironmentSource implements ConfigSource {
  readonly name = 'environment';
  readonly priority = 100; // Highest priority

  private readonly options: Required<EnvironmentSourceOptions>;
  private readonly adapter: PlatformAdapter;

  constructor(adapter: PlatformAdapter, options: EnvironmentSourceOptions = {}) {
    this.adapter = adapter;
    this.options = {
      prefix: options.prefix ?? 'PRODOBIT_',
      separator: options.separator ?? '_',
      transform: options.transform ?? this.defaultTransform,
    };
  }

  async load(): Promise<Record<string, unknown> | null> {
    const config: Record<string, unknown> = {};
    const prefix = this.options.prefix;
    const separator = this.options.separator;

    const envVars = this.adapter.getAllEnvironmentVariables();

    for (const [key, value] of Object.entries(envVars)) {
      if (!key.startsWith(prefix) || value === undefined) {
        continue;
      }

      const configKey = key.substring(prefix.length);
      if (configKey.length === 0) {
        continue;
      }

      const [transformedKey, transformedValue] = this.options.transform(configKey, value);
      this.setNestedValue(config, transformedKey, transformedValue, separator);
    }

    return Object.keys(config).length > 0 ? config : null;
  }

  private defaultTransform(key: string, value: string): [string, unknown] {
    const normalizedKey = key.toLowerCase().replace(/_/g, '.');
    
    // Try to parse as JSON first
    if ((value.startsWith('{') && value.endsWith('}')) || 
        (value.startsWith('[') && value.endsWith(']'))) {
      try {
        return [normalizedKey, JSON.parse(value)];
      } catch {
        // Fall through to other parsing
      }
    }

    // Parse boolean
    if (value === 'true' || value === 'false') {
      return [normalizedKey, value === 'true'];
    }

    // Parse number
    if (/^-?\d+(\.\d+)?$/.test(value)) {
      const numValue = Number(value);
      if (!isNaN(numValue)) {
        return [normalizedKey, numValue];
      }
    }

    // Parse comma-separated array
    if (value.includes(',')) {
      const arrayValue = value.split(',').map(item => item.trim());
      return [normalizedKey, arrayValue];
    }

    return [normalizedKey, value];
  }

  private setNestedValue(
    obj: Record<string, unknown>,
    path: string,
    value: unknown,
    separator: string
  ): void {
    const keys = path.split('.');
    let current = obj;

    for (let i = 0; i < keys.length - 1; i++) {
      const key = keys[i];
      if (!(key in current) || typeof current[key] !== 'object' || current[key] === null) {
        current[key] = {};
      }
      current = current[key] as Record<string, unknown>;
    }

    const lastKey = keys[keys.length - 1];
    current[lastKey] = value;
  }
}