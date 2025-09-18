import crypto from 'crypto';

export class CSRFTokenManager {
  /**
   * Generate a cryptographically secure CSRF token
   */
  static generateToken(): string {
    return crypto.randomBytes(32).toString('base64url');
  }

  /**
   * Hash a CSRF token for database storage
   */
  static hashToken(token: string): string {
    return crypto.createHash('sha256').update(token).digest('hex');
  }

  /**
   * Verify CSRF token against stored hash
   */
  static verifyToken(token: string, hash: string): boolean {
    const computedHash = this.hashToken(token);
    return crypto.timingSafeEqual(
      Buffer.from(computedHash, 'hex'),
      Buffer.from(hash, 'hex')
    );
  }

  /**
   * Double-Submit Cookie Pattern validation
   * Compares CSRF token from header/body against cookie value
   */
  static validateDoubleSubmit(headerToken: string, cookieToken: string): boolean {
    if (!headerToken || !cookieToken) return false;
    
    return crypto.timingSafeEqual(
      Buffer.from(headerToken),
      Buffer.from(cookieToken)
    );
  }

  /**
   * Extract CSRF token from request headers or body
   */
  static extractTokenFromRequest(headers: Record<string, string | undefined>, body?: any): string | null {
    // Check X-CSRF-Token header first
    const headerToken = headers['x-csrf-token'] || headers['X-CSRF-Token'];
    if (headerToken) return headerToken;

    // Check request body
    if (body && body.csrfToken) return body.csrfToken;

    return null;
  }

  /**
   * Generate token pair for double-submit pattern
   */
  static generateTokenPair(): { token: string; hash: string } {
    const token = this.generateToken();
    const hash = this.hashToken(token);
    return { token, hash };
  }
}