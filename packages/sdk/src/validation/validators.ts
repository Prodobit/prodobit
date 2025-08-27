// Runtime Validation Utilities

import { ProdobitError } from '../types';

/**
 * Validation Result
 */
export interface ValidationResult {
  isValid: boolean;
  errors: ValidationError[];
}

/**
 * Validation Error
 */
export interface ValidationError {
  field: string;
  message: string;
  code: string;
  value?: any;
}

/**
 * Validation Rule
 */
export interface ValidationRule {
  validate: (value: any, context?: any) => boolean | Promise<boolean>;
  message: string;
  code: string;
}

/**
 * Field Validator
 */
export class FieldValidator {
  private rules: ValidationRule[] = [];

  /**
   * Add validation rule
   */
  rule(validate: (value: any) => boolean | Promise<boolean>, message: string, code: string): this {
    this.rules.push({ validate, message, code });
    return this;
  }

  /**
   * Required field validation
   */
  required(message = 'This field is required'): this {
    return this.rule(
      (value) => value !== null && value !== undefined && value !== '',
      message,
      'REQUIRED'
    );
  }

  /**
   * String validation
   */
  string(message = 'Must be a string'): this {
    return this.rule(
      (value) => typeof value === 'string',
      message,
      'STRING'
    );
  }

  /**
   * Number validation
   */
  number(message = 'Must be a number'): this {
    return this.rule(
      (value) => typeof value === 'number' && !isNaN(value),
      message,
      'NUMBER'
    );
  }

  /**
   * Boolean validation
   */
  boolean(message = 'Must be a boolean'): this {
    return this.rule(
      (value) => typeof value === 'boolean',
      message,
      'BOOLEAN'
    );
  }

  /**
   * Email validation
   */
  email(message = 'Must be a valid email'): this {
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return this.rule(
      (value) => typeof value === 'string' && emailRegex.test(value),
      message,
      'EMAIL'
    );
  }

  /**
   * UUID validation
   */
  uuid(message = 'Must be a valid UUID'): this {
    const uuidRegex = /^[0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i;
    return this.rule(
      (value) => typeof value === 'string' && uuidRegex.test(value),
      message,
      'UUID'
    );
  }

  /**
   * Minimum length validation
   */
  minLength(min: number, message?: string): this {
    return this.rule(
      (value) => typeof value === 'string' && value.length >= min,
      message || `Must be at least ${min} characters`,
      'MIN_LENGTH'
    );
  }

  /**
   * Maximum length validation
   */
  maxLength(max: number, message?: string): this {
    return this.rule(
      (value) => typeof value === 'string' && value.length <= max,
      message || `Must be at most ${max} characters`,
      'MAX_LENGTH'
    );
  }

  /**
   * Minimum value validation
   */
  min(min: number, message?: string): this {
    return this.rule(
      (value) => typeof value === 'number' && value >= min,
      message || `Must be at least ${min}`,
      'MIN_VALUE'
    );
  }

  /**
   * Maximum value validation
   */
  max(max: number, message?: string): this {
    return this.rule(
      (value) => typeof value === 'number' && value <= max,
      message || `Must be at most ${max}`,
      'MAX_VALUE'
    );
  }

  /**
   * Enum validation
   */
  oneOf<T>(values: T[], message?: string): this {
    return this.rule(
      (value) => values.includes(value),
      message || `Must be one of: ${values.join(', ')}`,
      'ONE_OF'
    );
  }

  /**
   * Array validation
   */
  array(message = 'Must be an array'): this {
    return this.rule(
      (value) => Array.isArray(value),
      message,
      'ARRAY'
    );
  }

  /**
   * Array minimum length
   */
  arrayMinLength(min: number, message?: string): this {
    return this.rule(
      (value) => Array.isArray(value) && value.length >= min,
      message || `Must have at least ${min} items`,
      'ARRAY_MIN_LENGTH'
    );
  }

  /**
   * Array maximum length
   */
  arrayMaxLength(max: number, message?: string): this {
    return this.rule(
      (value) => Array.isArray(value) && value.length <= max,
      message || `Must have at most ${max} items`,
      'ARRAY_MAX_LENGTH'
    );
  }

  /**
   * Custom validation
   */
  custom(validate: (value: any) => boolean | Promise<boolean>, message: string, code = 'CUSTOM'): this {
    return this.rule(validate, message, code);
  }

  /**
   * Conditional validation
   */
  when(condition: (context: any) => boolean, validator: FieldValidator): this {
    validator.rules.forEach(rule => {
      this.rules.push({
        validate: (value, context) => {
          if (condition(context)) {
            return rule.validate(value, context);
          }
          return true; // Skip validation if condition is false
        },
        message: rule.message,
        code: rule.code,
      });
    });
    return this;
  }

  /**
   * Validate field value
   */
  async validate(value: any, field: string, context?: any): Promise<ValidationError[]> {
    const errors: ValidationError[] = [];

    for (const rule of this.rules) {
      try {
        const isValid = await rule.validate(value, context);
        if (!isValid) {
          errors.push({
            field,
            message: rule.message,
            code: rule.code,
            value,
          });
        }
      } catch (error) {
        errors.push({
          field,
          message: `Validation error: ${error instanceof Error ? error.message : 'Unknown error'}`,
          code: 'VALIDATION_ERROR',
          value,
        });
      }
    }

    return errors;
  }
}

/**
 * Schema Validator
 */
export class SchemaValidator {
  private fields: Record<string, FieldValidator> = {};

  /**
   * Define field validation
   */
  field(name: string, validator: FieldValidator): this {
    this.fields[name] = validator;
    return this;
  }

  /**
   * Validate entire object
   */
  async validate(data: any, context?: any): Promise<ValidationResult> {
    const errors: ValidationError[] = [];

    // Validate each defined field
    for (const [fieldName, validator] of Object.entries(this.fields)) {
      const value = this.getNestedValue(data, fieldName);
      const fieldErrors = await validator.validate(value, fieldName, { ...context, data });
      errors.push(...fieldErrors);
    }

    return {
      isValid: errors.length === 0,
      errors,
    };
  }

  /**
   * Validate and throw on error
   */
  async validateOrThrow(data: any, context?: any): Promise<void> {
    const result = await this.validate(data, context);
    if (!result.isValid) {
      throw ProdobitError.validationError(
        `Validation failed: ${result.errors.map(e => e.message).join(', ')}`,
        result.errors
      );
    }
  }

  /**
   * Get nested value from object
   */
  private getNestedValue(obj: any, path: string): any {
    return path.split('.').reduce((current, key) => {
      return current && typeof current === 'object' ? current[key] : undefined;
    }, obj);
  }
}

/**
 * Built-in Validators
 */
export const validators = {
  /**
   * Create field validator
   */
  field(): FieldValidator {
    return new FieldValidator();
  },

  /**
   * Create schema validator
   */
  schema(): SchemaValidator {
    return new SchemaValidator();
  },

  /**
   * Quick validators
   */
  required: () => validators.field().required(),
  string: () => validators.field().string(),
  number: () => validators.field().number(),
  boolean: () => validators.field().boolean(),
  email: () => validators.field().email(),
  uuid: () => validators.field().uuid(),
  array: () => validators.field().array(),

  /**
   * Common field combinations
   */
  requiredString: () => validators.field().required().string(),
  requiredNumber: () => validators.field().required().number(),
  requiredEmail: () => validators.field().required().email(),
  requiredUuid: () => validators.field().required().uuid(),
  requiredArray: () => validators.field().required().array(),

  /**
   * Optional field validators
   */
  optionalString: () => validators.field().string(),
  optionalNumber: () => validators.field().number(),
  optionalEmail: () => validators.field().email(),
  optionalUuid: () => validators.field().uuid(),
  optionalArray: () => validators.field().array(),
};

/**
 * Validation Middleware
 */
export class ValidationMiddleware {
  private requestValidators: Map<string, SchemaValidator> = new Map();
  private responseValidators: Map<string, SchemaValidator> = new Map();

  /**
   * Register request validator for endpoint
   */
  registerRequestValidator(endpoint: string, validator: SchemaValidator): this {
    this.requestValidators.set(endpoint, validator);
    return this;
  }

  /**
   * Register response validator for endpoint
   */
  registerResponseValidator(endpoint: string, validator: SchemaValidator): this {
    this.responseValidators.set(endpoint, validator);
    return this;
  }

  /**
   * Validate request data
   */
  async validateRequest(endpoint: string, data: any): Promise<void> {
    const validator = this.requestValidators.get(endpoint);
    if (validator) {
      await validator.validateOrThrow(data);
    }
  }

  /**
   * Validate response data
   */
  async validateResponse(endpoint: string, data: any): Promise<ValidationResult> {
    const validator = this.responseValidators.get(endpoint);
    if (validator) {
      return await validator.validate(data);
    }
    return { isValid: true, errors: [] };
  }
}

/**
 * Global validation configuration
 */
export interface ValidationConfig {
  enabled: boolean;
  validateRequests: boolean;
  validateResponses: boolean;
  failOnValidationError: boolean;
  logValidationErrors: boolean;
}

export const defaultValidationConfig: ValidationConfig = {
  enabled: true,
  validateRequests: true,
  validateResponses: false, // Usually disabled in production for performance
  failOnValidationError: true,
  logValidationErrors: true,
};