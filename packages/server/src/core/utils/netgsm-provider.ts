import type { SMSProvider, SMSProviderConfig } from "./sms-provider.js";

/**
 * NetGSM SMS Provider
 * Implementation for NetGSM API SMS sending
 */
export class NetGSMProvider implements SMSProvider {
  private config: SMSProviderConfig;

  constructor(config: SMSProviderConfig) {
    this.config = config;
  }

  async sendSMS(options: {
    to: string;
    message: string;
  }): Promise<{
    success: boolean;
    messageId?: string;
    error?: string;
  }> {
    try {
      // Build XML payload for NetGSM API
      const xmlData = `<?xml version='1.0' encoding='iso-8859-9'?>
<mainbody>
  <header>
    <usercode>${this.escapeXml(this.config.username)}</usercode>
    <password>${this.escapeXml(this.config.password)}</password>
    <msgheader>${this.escapeXml(this.config.header)}</msgheader>
    <encoding>TR</encoding>
  </header>
  <body>
    <msg><![CDATA[${options.message}]]></msg>
    <no>${this.sanitizePhoneNumber(options.to)}</no>
  </body>
</mainbody>`;

      // Send request to NetGSM API
      const response = await fetch(this.config.providerUrl, {
        method: "POST",
        headers: {
          "Content-Type": "application/xml",
        },
        body: xmlData,
      });

      if (!response.ok) {
        console.error(
          `NetGSM API error: ${response.status} ${response.statusText}`
        );
        return {
          success: false,
          error: `HTTP ${response.status}: ${response.statusText}`,
        };
      }

      // Parse XML response
      const responseText = await response.text();
      const result = this.parseResponse(responseText);

      if (result.success) {
        return {
          success: true,
          messageId: result.code,
        };
      }

      return {
        success: false,
        error: `NetGSM error code: ${result.code}`,
      };
    } catch (error) {
      console.error("NetGSM send SMS error:", error);
      return {
        success: false,
        error: error instanceof Error ? error.message : "Unknown error",
      };
    }
  }

  /**
   * Parse NetGSM XML response
   * Success: code = "0" or "00"
   * Error: code contains error code
   */
  private parseResponse(xml: string): { success: boolean; code?: string } {
    try {
      // Simple XML parsing for <code> element
      const codeMatch = xml.match(/<code>(.*?)<\/code>/);
      if (!codeMatch) {
        return { success: false };
      }

      const code = codeMatch[1].trim();

      // NetGSM returns "00" or "0" for success
      if (code === "00" || code === "0") {
        return { success: true, code };
      }

      return { success: false, code };
    } catch (error) {
      console.error("Error parsing NetGSM response:", error);
      return { success: false };
    }
  }

  /**
   * Escape XML special characters
   */
  private escapeXml(unsafe: string): string {
    return unsafe
      .replace(/&/g, "&amp;")
      .replace(/</g, "&lt;")
      .replace(/>/g, "&gt;")
      .replace(/"/g, "&quot;")
      .replace(/'/g, "&apos;");
  }

  /**
   * Sanitize phone number (remove spaces, dashes, etc.)
   */
  private sanitizePhoneNumber(phone: string): string {
    return phone.replace(/[\s\-\(\)]/g, "");
  }
}
