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
export declare class FieldValidator {
    private rules;
    /**
     * Add validation rule
     */
    rule(validate: (value: any) => boolean | Promise<boolean>, message: string, code: string): this;
    /**
     * Required field validation
     */
    required(message?: string): this;
    /**
     * String validation
     */
    string(message?: string): this;
    /**
     * Number validation
     */
    number(message?: string): this;
    /**
     * Boolean validation
     */
    boolean(message?: string): this;
    /**
     * Email validation
     */
    email(message?: string): this;
    /**
     * UUID validation
     */
    uuid(message?: string): this;
    /**
     * Minimum length validation
     */
    minLength(min: number, message?: string): this;
    /**
     * Maximum length validation
     */
    maxLength(max: number, message?: string): this;
    /**
     * Minimum value validation
     */
    min(min: number, message?: string): this;
    /**
     * Maximum value validation
     */
    max(max: number, message?: string): this;
    /**
     * Enum validation
     */
    oneOf<T>(values: T[], message?: string): this;
    /**
     * Array validation
     */
    array(message?: string): this;
    /**
     * Array minimum length
     */
    arrayMinLength(min: number, message?: string): this;
    /**
     * Array maximum length
     */
    arrayMaxLength(max: number, message?: string): this;
    /**
     * Custom validation
     */
    custom(validate: (value: any) => boolean | Promise<boolean>, message: string, code?: string): this;
    /**
     * Conditional validation
     */
    when(condition: (context: any) => boolean, validator: FieldValidator): this;
    /**
     * Validate field value
     */
    validate(value: any, field: string, context?: any): Promise<ValidationError[]>;
}
/**
 * Schema Validator
 */
export declare class SchemaValidator {
    private fields;
    /**
     * Define field validation
     */
    field(name: string, validator: FieldValidator): this;
    /**
     * Validate entire object
     */
    validate(data: any, context?: any): Promise<ValidationResult>;
    /**
     * Validate and throw on error
     */
    validateOrThrow(data: any, context?: any): Promise<void>;
    /**
     * Get nested value from object
     */
    private getNestedValue;
}
/**
 * Built-in Validators
 */
export declare const validators: {
    /**
     * Create field validator
     */
    field(): FieldValidator;
    /**
     * Create schema validator
     */
    schema(): SchemaValidator;
    /**
     * Quick validators
     */
    required: () => FieldValidator;
    string: () => FieldValidator;
    number: () => FieldValidator;
    boolean: () => FieldValidator;
    email: () => FieldValidator;
    uuid: () => FieldValidator;
    array: () => FieldValidator;
    /**
     * Common field combinations
     */
    requiredString: () => FieldValidator;
    requiredNumber: () => FieldValidator;
    requiredEmail: () => FieldValidator;
    requiredUuid: () => FieldValidator;
    requiredArray: () => FieldValidator;
    /**
     * Optional field validators
     */
    optionalString: () => FieldValidator;
    optionalNumber: () => FieldValidator;
    optionalEmail: () => FieldValidator;
    optionalUuid: () => FieldValidator;
    optionalArray: () => FieldValidator;
};
/**
 * Validation Middleware
 */
export declare class ValidationMiddleware {
    private requestValidators;
    private responseValidators;
    /**
     * Register request validator for endpoint
     */
    registerRequestValidator(endpoint: string, validator: SchemaValidator): this;
    /**
     * Register response validator for endpoint
     */
    registerResponseValidator(endpoint: string, validator: SchemaValidator): this;
    /**
     * Validate request data
     */
    validateRequest(endpoint: string, data: any): Promise<void>;
    /**
     * Validate response data
     */
    validateResponse(endpoint: string, data: any): Promise<ValidationResult>;
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
export declare const defaultValidationConfig: ValidationConfig;
//# sourceMappingURL=validators.d.ts.map