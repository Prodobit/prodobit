import { Resend } from "resend";
import type { EmailProvider, EmailProviderConfig } from "./email-provider.js";

export class ResendEmailProvider implements EmailProvider {
  private resend: Resend;
  private config: EmailProviderConfig;

  constructor(apiKey: string, config: EmailProviderConfig) {
    this.resend = new Resend(apiKey);
    this.config = config;
  }

  async sendEmail(options: {
    to: string;
    subject: string;
    html?: string;
    text?: string;
  }): Promise<{
    success: boolean;
    messageId?: string;
    error?: string;
  }> {
    try {
      if (!options.html && !options.text) {
        throw new Error("Either html or text content is required");
      }

      const emailPayload: any = {
        from: `${this.config.fromName} <${this.config.fromEmail}>`,
        to: [options.to],
        subject: options.subject,
      };

      if (options.html) emailPayload.html = options.html;
      if (options.text) emailPayload.text = options.text;

      const result = await this.resend.emails.send(emailPayload);

      if (result.error) {
        console.error("Resend error:", result.error);
        return {
          success: false,
          error: result.error.message || "Failed to send email",
        };
      }

      return {
        success: true,
        messageId: result.data?.id,
      };
    } catch (error) {
      console.error("Resend provider error:", error);
      return {
        success: false,
        error: error instanceof Error ? error.message : "Unknown error",
      };
    }
  }
}