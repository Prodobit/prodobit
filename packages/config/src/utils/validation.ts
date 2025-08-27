import type { ConfigValidationResult } from '../types/config-source.js';

export class ConfigValidationError extends Error {
  constructor(
    public readonly path: string,
    message: string,
    public readonly value?: unknown,
    public readonly expected?: string
  ) {
    super(`Configuration error at '${path}': ${message}`);
    this.name = 'ConfigValidationError';
  }

  static fromValidationResult(result: ConfigValidationResult): ConfigValidationError[] {
    return result.errors.map(error => 
      new ConfigValidationError(error.path, error.message, error.value, error.expected)
    );
  }
}

export class ConfigValidationAggregateError extends Error {
  constructor(public readonly errors: ConfigValidationError[]) {
    const message = errors.length === 1 
      ? errors[0].message
      : `Multiple configuration validation errors:\n${errors.map(e => `  - ${e.message}`).join('\n')}`;
    
    super(message);
    this.name = 'ConfigValidationAggregateError';
  }
}

export function validateRequired<T>(value: T, path: string, fieldName: string): T {
  if (value === null || value === undefined) {
    throw new ConfigValidationError(
      path,
      `${fieldName} is required`,
      value,
      'non-null value'
    );
  }
  return value;
}

export function validateString(value: unknown, path: string, options: {
  minLength?: number;
  maxLength?: number;
  pattern?: RegExp;
  allowEmpty?: boolean;
} = {}): string {
  if (typeof value !== 'string') {
    throw new ConfigValidationError(
      path,
      'Expected string value',
      value,
      'string'
    );
  }

  if (!options.allowEmpty && value.length === 0) {
    throw new ConfigValidationError(
      path,
      'String cannot be empty',
      value,
      'non-empty string'
    );
  }

  if (options.minLength !== undefined && value.length < options.minLength) {
    throw new ConfigValidationError(
      path,
      `String must be at least ${options.minLength} characters long`,
      value,
      `string with minimum length ${options.minLength}`
    );
  }

  if (options.maxLength !== undefined && value.length > options.maxLength) {
    throw new ConfigValidationError(
      path,
      `String must be at most ${options.maxLength} characters long`,
      value,
      `string with maximum length ${options.maxLength}`
    );
  }

  if (options.pattern && !options.pattern.test(value)) {
    throw new ConfigValidationError(
      path,
      `String does not match required pattern: ${options.pattern}`,
      value,
      `string matching ${options.pattern}`
    );
  }

  return value;
}

export function validateNumber(value: unknown, path: string, options: {
  min?: number;
  max?: number;
  integer?: boolean;
} = {}): number {
  if (typeof value !== 'number') {
    throw new ConfigValidationError(
      path,
      'Expected number value',
      value,
      'number'
    );
  }

  if (isNaN(value)) {
    throw new ConfigValidationError(
      path,
      'Number cannot be NaN',
      value,
      'valid number'
    );
  }

  if (!isFinite(value)) {
    throw new ConfigValidationError(
      path,
      'Number must be finite',
      value,
      'finite number'
    );
  }

  if (options.integer && !Number.isInteger(value)) {
    throw new ConfigValidationError(
      path,
      'Expected integer value',
      value,
      'integer'
    );
  }

  if (options.min !== undefined && value < options.min) {
    throw new ConfigValidationError(
      path,
      `Number must be at least ${options.min}`,
      value,
      `number >= ${options.min}`
    );
  }

  if (options.max !== undefined && value > options.max) {
    throw new ConfigValidationError(
      path,
      `Number must be at most ${options.max}`,
      value,
      `number <= ${options.max}`
    );
  }

  return value;
}

export function validateBoolean(value: unknown, path: string): boolean {
  if (typeof value !== 'boolean') {
    throw new ConfigValidationError(
      path,
      'Expected boolean value',
      value,
      'boolean'
    );
  }

  return value;
}

export function validateArray<T>(
  value: unknown,
  path: string,
  validator: (item: unknown, itemPath: string) => T,
  options: {
    minLength?: number;
    maxLength?: number;
    unique?: boolean;
  } = {}
): T[] {
  if (!Array.isArray(value)) {
    throw new ConfigValidationError(
      path,
      'Expected array value',
      value,
      'array'
    );
  }

  if (options.minLength !== undefined && value.length < options.minLength) {
    throw new ConfigValidationError(
      path,
      `Array must have at least ${options.minLength} items`,
      value,
      `array with minimum length ${options.minLength}`
    );
  }

  if (options.maxLength !== undefined && value.length > options.maxLength) {
    throw new ConfigValidationError(
      path,
      `Array must have at most ${options.maxLength} items`,
      value,
      `array with maximum length ${options.maxLength}`
    );
  }

  const validatedItems = value.map((item, index) => 
    validator(item, `${path}[${index}]`)
  );

  if (options.unique) {
    const seen = new Set();
    for (let i = 0; i < validatedItems.length; i++) {
      const item = validatedItems[i];
      const serialized = JSON.stringify(item);
      
      if (seen.has(serialized)) {
        throw new ConfigValidationError(
          `${path}[${i}]`,
          'Duplicate item in array',
          item,
          'unique item'
        );
      }
      seen.add(serialized);
    }
  }

  return validatedItems;
}

export function validateObject<T>(
  value: unknown,
  path: string,
  validator: (obj: Record<string, unknown>) => T
): T {
  if (value === null || typeof value !== 'object' || Array.isArray(value)) {
    throw new ConfigValidationError(
      path,
      'Expected object value',
      value,
      'object'
    );
  }

  return validator(value as Record<string, unknown>);
}

export function validateEnum<T extends string>(
  value: unknown,
  path: string,
  allowedValues: readonly T[]
): T {
  if (typeof value !== 'string') {
    throw new ConfigValidationError(
      path,
      'Expected string value for enum',
      value,
      'string'
    );
  }

  if (!allowedValues.includes(value as T)) {
    throw new ConfigValidationError(
      path,
      `Invalid enum value. Allowed values: ${allowedValues.join(', ')}`,
      value,
      `one of: ${allowedValues.join(', ')}`
    );
  }

  return value as T;
}

export function validateUrl(value: unknown, path: string): string {
  const str = validateString(value, path);
  
  try {
    new URL(str);
  } catch {
    throw new ConfigValidationError(
      path,
      'Invalid URL format',
      value,
      'valid URL'
    );
  }

  return str;
}

export function validateEmail(value: unknown, path: string): string {
  const str = validateString(value, path);
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  
  if (!emailRegex.test(str)) {
    throw new ConfigValidationError(
      path,
      'Invalid email format',
      value,
      'valid email address'
    );
  }

  return str;
}

export function validateOptional<T>(
  value: unknown,
  path: string,
  validator: (val: unknown, path: string) => T
): T | undefined {
  if (value === undefined || value === null) {
    return undefined;
  }
  return validator(value, path);
}