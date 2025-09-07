import { describe, it, expect } from 'vitest'
import {
  ConfigValidationError,
  ConfigValidationAggregateError,
  validateRequired,
  validateString,
  validateNumber,
  validateBoolean,
  validateArray,
  validateObject,
  validateEnum,
  validateUrl,
  validateEmail,
  validateOptional
} from '../validation.js'
import type { ConfigValidationResult } from '../../types/config-source.js'

describe('Validation Utilities', () => {
  describe('ConfigValidationError', () => {
    it('should create error with correct message format', () => {
      const error = new ConfigValidationError('server.port', 'Invalid port number', 'abc', 'number')

      expect(error.message).toBe("Configuration error at 'server.port': Invalid port number")
      expect(error.name).toBe('ConfigValidationError')
      expect(error.path).toBe('server.port')
      expect(error.value).toBe('abc')
      expect(error.expected).toBe('number')
    })

    it('should create errors from validation result', () => {
      const result: ConfigValidationResult = {
        success: false,
        errors: [
          { path: 'server.port', message: 'Invalid port', value: 'abc' },
          { path: 'database.host', message: 'Host required', value: null }
        ]
      }

      const errors = ConfigValidationError.fromValidationResult(result)

      expect(errors).toHaveLength(2)
      expect(errors[0].path).toBe('server.port')
      expect(errors[1].path).toBe('database.host')
    })
  })

  describe('ConfigValidationAggregateError', () => {
    it('should format single error correctly', () => {
      const error = new ConfigValidationError('server.port', 'Invalid port', 'abc')
      const aggregate = new ConfigValidationAggregateError([error])

      expect(aggregate.message).toBe("Configuration error at 'server.port': Invalid port")
      expect(aggregate.errors).toEqual([error])
    })

    it('should format multiple errors correctly', () => {
      const errors = [
        new ConfigValidationError('server.port', 'Invalid port', 'abc'),
        new ConfigValidationError('database.host', 'Host required', null)
      ]
      const aggregate = new ConfigValidationAggregateError(errors)

      expect(aggregate.message).toContain('Multiple configuration validation errors:')
      expect(aggregate.message).toContain("- Configuration error at 'server.port': Invalid port")
      expect(aggregate.message).toContain("- Configuration error at 'database.host': Host required")
    })
  })

  describe('validateRequired', () => {
    it('should return value when present', () => {
      expect(validateRequired('value', 'path', 'field')).toBe('value')
      expect(validateRequired(0, 'path', 'field')).toBe(0)
      expect(validateRequired(false, 'path', 'field')).toBe(false)
    })

    it('should throw error for null values', () => {
      expect(() => validateRequired(null, 'server.port', 'port')).toThrow(
        "Configuration error at 'server.port': port is required"
      )
    })

    it('should throw error for undefined values', () => {
      expect(() => validateRequired(undefined, 'server.host', 'host')).toThrow(
        "Configuration error at 'server.host': host is required"
      )
    })
  })

  describe('validateString', () => {
    it('should validate valid strings', () => {
      expect(validateString('hello', 'path')).toBe('hello')
    })

    it('should throw error for non-string values', () => {
      expect(() => validateString(123, 'server.host')).toThrow(
        "Configuration error at 'server.host': Expected string value"
      )
    })

    it('should reject empty strings by default', () => {
      expect(() => validateString('', 'server.host')).toThrow(
        "Configuration error at 'server.host': String cannot be empty"
      )
    })

    it('should allow empty strings when configured', () => {
      expect(validateString('', 'path', { allowEmpty: true })).toBe('')
    })

    it('should validate minimum length', () => {
      expect(() => validateString('ab', 'path', { minLength: 3 })).toThrow(
        "Configuration error at 'path': String must be at least 3 characters long"
      )
    })

    it('should validate maximum length', () => {
      expect(() => validateString('toolong', 'path', { maxLength: 5 })).toThrow(
        "Configuration error at 'path': String must be at most 5 characters long"
      )
    })

    it('should validate pattern matching', () => {
      const pattern = /^[a-z]+$/
      expect(() => validateString('Invalid123', 'path', { pattern })).toThrow(
        "Configuration error at 'path': String does not match required pattern"
      )
      
      expect(validateString('valid', 'path', { pattern })).toBe('valid')
    })
  })

  describe('validateNumber', () => {
    it('should validate valid numbers', () => {
      expect(validateNumber(42, 'path')).toBe(42)
      expect(validateNumber(3.14, 'path')).toBe(3.14)
      expect(validateNumber(-10, 'path')).toBe(-10)
    })

    it('should throw error for non-number values', () => {
      expect(() => validateNumber('123', 'server.port')).toThrow(
        "Configuration error at 'server.port': Expected number value"
      )
    })

    it('should throw error for NaN', () => {
      expect(() => validateNumber(NaN, 'server.port')).toThrow(
        "Configuration error at 'server.port': Number cannot be NaN"
      )
    })

    it('should throw error for infinite values', () => {
      expect(() => validateNumber(Infinity, 'server.port')).toThrow(
        "Configuration error at 'server.port': Number must be finite"
      )
    })

    it('should validate integer requirement', () => {
      expect(() => validateNumber(3.14, 'path', { integer: true })).toThrow(
        "Configuration error at 'path': Expected integer value"
      )
      
      expect(validateNumber(42, 'path', { integer: true })).toBe(42)
    })

    it('should validate minimum value', () => {
      expect(() => validateNumber(5, 'path', { min: 10 })).toThrow(
        "Configuration error at 'path': Number must be at least 10"
      )
    })

    it('should validate maximum value', () => {
      expect(() => validateNumber(15, 'path', { max: 10 })).toThrow(
        "Configuration error at 'path': Number must be at most 10"
      )
    })
  })

  describe('validateBoolean', () => {
    it('should validate boolean values', () => {
      expect(validateBoolean(true, 'path')).toBe(true)
      expect(validateBoolean(false, 'path')).toBe(false)
    })

    it('should throw error for non-boolean values', () => {
      expect(() => validateBoolean('true', 'server.ssl.enabled')).toThrow(
        "Configuration error at 'server.ssl.enabled': Expected boolean value"
      )
    })
  })

  describe('validateArray', () => {
    const stringValidator = (item: unknown, path: string) => validateString(item, path)

    it('should validate valid arrays', () => {
      const result = validateArray(['a', 'b', 'c'], 'path', stringValidator)
      expect(result).toEqual(['a', 'b', 'c'])
    })

    it('should throw error for non-array values', () => {
      expect(() => validateArray('not-array', 'features', stringValidator)).toThrow(
        "Configuration error at 'features': Expected array value"
      )
    })

    it('should validate minimum length', () => {
      expect(() => validateArray(['a'], 'path', stringValidator, { minLength: 2 })).toThrow(
        "Configuration error at 'path': Array must have at least 2 items"
      )
    })

    it('should validate maximum length', () => {
      expect(() => validateArray(['a', 'b', 'c'], 'path', stringValidator, { maxLength: 2 })).toThrow(
        "Configuration error at 'path': Array must have at most 2 items"
      )
    })

    it('should validate item uniqueness', () => {
      expect(() => validateArray(['a', 'b', 'a'], 'path', stringValidator, { unique: true })).toThrow(
        "Configuration error at 'path[2]': Duplicate item in array"
      )
    })

    it('should validate each array item', () => {
      expect(() => validateArray(['a', 123, 'c'], 'path', stringValidator)).toThrow(
        "Configuration error at 'path[1]': Expected string value"
      )
    })
  })

  describe('validateObject', () => {
    const objectValidator = (obj: Record<string, unknown>) => ({
      name: validateString(obj.name, 'name'),
      value: validateNumber(obj.value, 'value')
    })

    it('should validate valid objects', () => {
      const input = { name: 'test', value: 42 }
      const result = validateObject(input, 'config', objectValidator)
      
      expect(result).toEqual({ name: 'test', value: 42 })
    })

    it('should throw error for non-object values', () => {
      expect(() => validateObject('not-object', 'config', objectValidator)).toThrow(
        "Configuration error at 'config': Expected object value"
      )
      
      expect(() => validateObject(['array'], 'config', objectValidator)).toThrow(
        "Configuration error at 'config': Expected object value"
      )
      
      expect(() => validateObject(null, 'config', objectValidator)).toThrow(
        "Configuration error at 'config': Expected object value"
      )
    })
  })

  describe('validateEnum', () => {
    const allowedValues = ['development', 'production', 'test'] as const

    it('should validate valid enum values', () => {
      expect(validateEnum('production', 'environment', allowedValues)).toBe('production')
    })

    it('should throw error for invalid enum values', () => {
      expect(() => validateEnum('staging', 'environment', allowedValues)).toThrow(
        "Configuration error at 'environment': Invalid enum value. Allowed values: development, production, test"
      )
    })

    it('should throw error for non-string values', () => {
      expect(() => validateEnum(123, 'environment', allowedValues)).toThrow(
        "Configuration error at 'environment': Expected string value for enum"
      )
    })
  })

  describe('validateUrl', () => {
    it('should validate valid URLs', () => {
      expect(validateUrl('https://example.com', 'api.url')).toBe('https://example.com')
      expect(validateUrl('http://localhost:3000', 'api.url')).toBe('http://localhost:3000')
    })

    it('should throw error for invalid URLs', () => {
      expect(() => validateUrl('not-a-url', 'api.url')).toThrow(
        "Configuration error at 'api.url': Invalid URL format"
      )
    })

    it('should throw error for non-string values', () => {
      expect(() => validateUrl(123, 'api.url')).toThrow(
        "Configuration error at 'api.url': Expected string value"
      )
    })
  })

  describe('validateEmail', () => {
    it('should validate valid email addresses', () => {
      expect(validateEmail('user@example.com', 'admin.email')).toBe('user@example.com')
      expect(validateEmail('test.email+tag@domain.co.uk', 'admin.email')).toBe('test.email+tag@domain.co.uk')
    })

    it('should throw error for invalid email addresses', () => {
      expect(() => validateEmail('invalid-email', 'admin.email')).toThrow(
        "Configuration error at 'admin.email': Invalid email format"
      )
      
      expect(() => validateEmail('user@', 'admin.email')).toThrow(
        "Configuration error at 'admin.email': Invalid email format"
      )
      
      expect(() => validateEmail('@domain.com', 'admin.email')).toThrow(
        "Configuration error at 'admin.email': Invalid email format"
      )
    })

    it('should throw error for non-string values', () => {
      expect(() => validateEmail(123, 'admin.email')).toThrow(
        "Configuration error at 'admin.email': Expected string value"
      )
    })
  })

  describe('validateOptional', () => {
    it('should return undefined for null and undefined values', () => {
      expect(validateOptional(null, 'path', validateString)).toBeUndefined()
      expect(validateOptional(undefined, 'path', validateString)).toBeUndefined()
    })

    it('should validate present values', () => {
      expect(validateOptional('hello', 'path', validateString)).toBe('hello')
    })

    it('should propagate validation errors from inner validator', () => {
      expect(() => validateOptional(123, 'path', validateString)).toThrow(
        "Configuration error at 'path': Expected string value"
      )
    })
  })
})