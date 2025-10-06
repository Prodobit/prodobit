import type { SMSProvider } from "./sms-provider.js";
import { NetGSMProvider } from "./netgsm-provider.js";

/**
 * SMS Service
 * Manages SMS sending through configured provider
 */
export class SMSService {
  private static provider: SMSProvider | null = null;
  private static initialized = false;

  /**
   * Initialize SMS service with provider
   */
  static initialize(provider: SMSProvider): void {
    this.provider = provider;
    this.initialized = true;
    console.log("SMS service initialized successfully");
  }

  /**
   * Initialize with NetGSM provider using environment variables
   */
  static initializeWithNetGSM(): void {
    const username = process.env.SMS_USERNAME;
    const password = process.env.SMS_PASSWORD;
    const header = process.env.SMS_HEADER;
    const providerUrl = process.env.SMS_PROVIDER_URL;

    if (!username || !password || !header || !providerUrl) {
      console.warn(
        "SMS service not initialized: Missing environment variables (SMS_USERNAME, SMS_PASSWORD, SMS_HEADER, SMS_PROVIDER_URL)"
      );
      return;
    }

    const netgsmProvider = new NetGSMProvider({
      username,
      password,
      header,
      providerUrl,
    });

    this.initialize(netgsmProvider);
  }

  /**
   * Check if SMS service is initialized
   */
  static isInitialized(): boolean {
    return this.initialized && this.provider !== null;
  }

  /**
   * Send OTP SMS
   */
  static async sendOTPSMS(options: {
    phone: string;
    code: string;
    expiresInMinutes?: number;
  }): Promise<{
    success: boolean;
    messageId?: string;
    error?: string;
  }> {
    if (!this.provider) {
      console.error("SMS service not initialized");
      return {
        success: false,
        error: "SMS service not configured",
      };
    }

    const expiresIn = options.expiresInMinutes || 10;
    const message = `Dogrulama kodunuz: ${options.code}. Bu kod ${expiresIn} dakika gecerlidir.`;

    return this.provider.sendSMS({
      to: options.phone,
      message,
    });
  }

  /**
   * Send welcome SMS
   */
  static async sendWelcomeSMS(
    phone: string,
    displayName?: string
  ): Promise<{
    success: boolean;
    messageId?: string;
    error?: string;
  }> {
    if (!this.provider) {
      console.error("SMS service not initialized");
      return {
        success: false,
        error: "SMS service not configured",
      };
    }

    const name = displayName || "Kullanici";
    const message = `Merhaba ${name}! Hesabiniz basariyla olusturuldu.`;

    return this.provider.sendSMS({
      to: phone,
      message,
    });
  }

  /**
   * Send custom SMS
   */
  static async sendSMS(options: {
    phone: string;
    message: string;
  }): Promise<{
    success: boolean;
    messageId?: string;
    error?: string;
  }> {
    if (!this.provider) {
      console.error("SMS service not initialized");
      return {
        success: false,
        error: "SMS service not configured",
      };
    }

    return this.provider.sendSMS({
      to: options.phone,
      message: options.message,
    });
  }
}
