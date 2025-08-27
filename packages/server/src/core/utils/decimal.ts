import Decimal from 'decimal.js';

/**
 * Decimal utilities for precise financial and quantity calculations
 */
export class DecimalUtils {
  /**
   * Convert number to database decimal string
   */
  static toDecimalString(value: number | string | null | undefined): string | null {
    if (value === null || value === undefined) return null;
    return new Decimal(value).toString();
  }

  /**
   * Convert database decimal string to number for calculations
   */
  static fromDecimalString(value: string | null | undefined): number {
    if (!value) return 0;
    return new Decimal(value).toNumber();
  }

  /**
   * Perform precise decimal multiplication
   */
  static multiply(a: number | string, b: number | string): string {
    return new Decimal(a).mul(new Decimal(b)).toString();
  }

  /**
   * Perform precise decimal addition
   */
  static add(a: number | string, b: number | string): string {
    return new Decimal(a).add(new Decimal(b)).toString();
  }

  /**
   * Perform precise decimal subtraction
   */
  static subtract(a: number | string, b: number | string): string {
    return new Decimal(a).sub(new Decimal(b)).toString();
  }

  /**
   * Format decimal for display
   */
  static format(value: string | number, decimalPlaces: number = 2): string {
    return new Decimal(value).toFixed(decimalPlaces);
  }

  /**
   * Convert object with decimal fields for database insert/update
   */
  static prepareForDatabase<T extends Record<string, any>>(
    data: T, 
    decimalFields: string[]
  ): T {
    const result = { ...data } as T;
    
    decimalFields.forEach(field => {
      if (field in result && result[field] !== undefined && result[field] !== null) {
        const value = result[field];
        if (typeof value === 'number') {
          (result as any)[field] = DecimalUtils.toDecimalString(value);
        }
      }
    });
    
    return result;
  }

  /**
   * Convert object with decimal fields from database for calculations
   */
  static parseFromDatabase<T extends Record<string, any>>(
    data: T,
    decimalFields: string[]
  ): T {
    const result = { ...data } as T;
    
    decimalFields.forEach(field => {
      if (field in result && result[field] !== undefined && result[field] !== null) {
        const value = result[field];
        if (typeof value === 'string') {
          (result as any)[field] = DecimalUtils.fromDecimalString(value);
        }
      }
    });
    
    return result;
  }
}