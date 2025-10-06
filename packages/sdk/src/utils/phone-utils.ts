/**
 * Phone number validation and formatting utilities
 */

/**
 * Validate Turkish phone number format
 * Accepts: 905xxxxxxxxx, 5xxxxxxxxx, +905xxxxxxxxx
 */
export function isValidTurkishPhone(phone: string): boolean {
  // Remove spaces, dashes, and parentheses
  const cleaned = phone.replace(/[\s\-\(\)]/g, "");

  // Turkish phone number patterns
  const patterns = [
    /^905\d{9}$/, // 905xxxxxxxxx
    /^5\d{9}$/, // 5xxxxxxxxx
    /^\+905\d{9}$/, // +905xxxxxxxxx
  ];

  return patterns.some((pattern) => pattern.test(cleaned));
}

/**
 * Format Turkish phone to international format (905xxxxxxxxx)
 */
export function formatTurkishPhone(phone: string): string | null {
  const cleaned = phone.replace(/[\s\-\(\)]/g, "");

  // Already in correct format
  if (/^905\d{9}$/.test(cleaned)) {
    return cleaned;
  }

  // Add country code if missing
  if (/^5\d{9}$/.test(cleaned)) {
    return `90${cleaned}`;
  }

  // Remove + prefix
  if (/^\+905\d{9}$/.test(cleaned)) {
    return cleaned.substring(1);
  }

  return null;
}

/**
 * Validate international phone number (basic validation)
 */
export function isValidInternationalPhone(phone: string): boolean {
  const cleaned = phone.replace(/[\s\-\(\)]/g, "");

  // Basic international format: starts with + or country code, 10-15 digits
  const pattern = /^(\+)?[1-9]\d{9,14}$/;

  return pattern.test(cleaned);
}

/**
 * Auto-detect if input is email or phone
 */
export function detectIdentifierType(
  identifier: string
): "email" | "phone" | "unknown" {
  // Email detection
  if (identifier.includes("@")) {
    return "email";
  }

  // Phone detection
  const cleaned = identifier.replace(/[\s\-\(\)]/g, "");
  if (/^(\+)?\d{10,15}$/.test(cleaned)) {
    return "phone";
  }

  return "unknown";
}

/**
 * Format phone for display (e.g., +90 5xx xxx xx xx)
 */
export function formatPhoneDisplay(phone: string): string {
  const cleaned = phone.replace(/[\s\-\(\)]/g, "");

  // Turkish format
  if (/^905\d{9}$/.test(cleaned)) {
    return `+90 ${cleaned.substring(2, 5)} ${cleaned.substring(5, 8)} ${cleaned.substring(8, 10)} ${cleaned.substring(10)}`;
  }

  // International format with +
  if (/^\+?\d{10,15}$/.test(cleaned)) {
    const withPlus = cleaned.startsWith("+") ? cleaned : `+${cleaned}`;
    return withPlus.replace(/(\+\d{2})(\d{3})(\d{3})(\d{2})(\d{2})/, "$1 $2 $3 $4 $5");
  }

  return phone;
}

/**
 * Sanitize phone number (remove all non-digit characters except +)
 */
export function sanitizePhone(phone: string): string {
  return phone.replace(/[^\d+]/g, "");
}
