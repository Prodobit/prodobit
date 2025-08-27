import { Resend } from "resend";
import type { CreateEmailOptions } from "resend";

export interface EmailOptions {
  to: string;
  subject: string;
  html?: string;
  text?: string;
}

export interface OTPEmailOptions {
  email: string;
  code: string;
  expiresInMinutes?: number | undefined;
  userName?: string | undefined;
}

export class EmailService {
  private static isDevelopment = process.env["NODE_ENV"] !== "production";
  private static resend = new Resend(
    process.env["RESEND_API_KEY"] || "re_erPysJ4U_NDz5vk61q1RV5qdkGXknmQAx"
  );

  // Email configuration
  private static fromEmail =
    process.env["FROM_EMAIL"] || "no-reply@updates.prodobit.com";
  private static fromName = process.env["FROM_NAME"] || "Prodobit";

  /**
   * Send email using Resend
   */
  static async sendEmail(options: EmailOptions): Promise<{
    success: boolean;
    messageId?: string;
    error?: string;
  }> {
    try {
      if (this.isDevelopment) {
        // Development mode - log AND send real email
        console.log("📧 EMAIL (Development Mode):");
        console.log("To:", options.to);
        console.log("Subject:", options.subject);
        console.log("From:", `${this.fromName} <${this.fromEmail}>`);
        console.log("Content:", options.html || options.text);
        console.log("─".repeat(50));
      }

      // Send email via Resend - ensure we have either html or text
      if (!options.html && !options.text) {
        throw new Error("Either html or text content is required");
      }

      // Create properly typed email payload for Resend
      const emailPayload: any = {
        from: `${this.fromName} <${this.fromEmail}>`,
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
      console.error("Email send error:", error);
      return {
        success: false,
        error: error instanceof Error ? error.message : "Unknown error",
      };
    }
  }

  /**
   * Send OTP verification email
   */
  static async sendOTPEmail(options: OTPEmailOptions): Promise<{
    success: boolean;
    messageId?: string;
    error?: string;
  }> {
    const { email, code, expiresInMinutes = 10, userName } = options;

    const subject = "Your Prodobit Verification Code";
    const html = this.generateOTPEmailHTML(code, expiresInMinutes, userName);
    const text = this.generateOTPEmailText(code, expiresInMinutes, userName);

    return this.sendEmail({
      to: email,
      subject,
      html,
      text,
    });
  }

  /**
   * Generate HTML email template for OTP
   */
  private static generateOTPEmailHTML(
    code: string,
    expiresInMinutes: number,
    userName?: string
  ): string {
    return `
    <!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Your Prodobit Verification Code</title>
      <style>
        * { box-sizing: border-box; }
        body { 
          font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
          line-height: 1.6;
          color: #333;
          max-width: 600px;
          margin: 0 auto;
          padding: 0;
          background-color: #f8fafc;
        }
        .container {
          background: white;
          border-radius: 12px;
          box-shadow: 0 4px 6px rgba(0, 0, 0, 0.07);
          margin: 20px;
          overflow: hidden;
        }
        .header {
          background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
          color: white;
          text-align: center;
          padding: 40px 20px;
        }
        .header h1 {
          margin: 0;
          font-size: 24px;
          font-weight: 600;
        }
        .content {
          padding: 40px 30px;
        }
        .greeting {
          font-size: 16px;
          margin-bottom: 20px;
        }
        .code-section {
          text-align: center;
          margin: 30px 0;
        }
        .code-container {
          background: linear-gradient(135deg, #f8fafc 0%, #e2e8f0 100%);
          border: 2px dashed #cbd5e0;
          border-radius: 12px;
          padding: 25px;
          display: inline-block;
          margin: 10px 0;
        }
        .code {
          font-size: 36px;
          font-weight: 700;
          color: #4c51bf;
          letter-spacing: 8px;
          font-family: 'Monaco', 'Menlo', 'Ubuntu Mono', monospace;
          text-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        .expiry {
          background: #fef7e0;
          border: 1px solid #f6e05e;
          border-radius: 8px;
          padding: 12px;
          margin: 20px 0;
          color: #744210;
          text-align: center;
          font-weight: 500;
        }
        .warning {
          background: #fed7d7;
          border: 1px solid #fc8181;
          border-radius: 8px;
          padding: 12px;
          margin: 20px 0;
          color: #c53030;
          text-align: center;
          font-weight: 500;
        }
        .footer {
          background: #f7fafc;
          padding: 20px 30px;
          text-align: center;
          color: #718096;
          font-size: 14px;
          border-top: 1px solid #e2e8f0;
        }
        .logo {
          font-size: 28px;
          margin-bottom: 5px;
        }
        @media (max-width: 480px) {
          .container { margin: 10px; }
          .content { padding: 30px 20px; }
          .header { padding: 30px 20px; }
          .code { font-size: 32px; letter-spacing: 6px; }
        }
      </style>
    </head>
    <body>
      <div class="container">
        <div class="header">
          <div class="logo">🚀</div>
          <h1>Prodobit Verification</h1>
        </div>
        
        <div class="content">
          <div class="greeting">
            Hello${userName ? ` ${userName}` : ""},
          </div>
          
          <p>We received a request to sign in to your Prodobit account. Use the verification code below to complete your sign-in:</p>
          
          <div class="code-section">
            <div class="code-container">
              <div class="code">${code}</div>
            </div>
          </div>
          
          <div class="expiry">
            ⏰ This code will expire in ${expiresInMinutes} minutes
          </div>
          
          <div class="warning">
            🛡️ Never share this code with anyone. Prodobit will never ask for your verification code.
          </div>
          
          <p>If you didn't request this code, please ignore this email and your account will remain secure.</p>
        </div>
        
        <div class="footer">
          <p>This is an automated message from Prodobit.<br>
          For support, visit <a href="https://prodobit.com/support" style="color: #4c51bf;">prodobit.com/support</a></p>
        </div>
      </div>
    </body>
    </html>
    `;
  }

  /**
   * Generate plain text email for OTP
   */
  private static generateOTPEmailText(
    code: string,
    expiresInMinutes: number,
    userName?: string
  ): string {
    return `
PRODOBIT VERIFICATION CODE

Hello${userName ? ` ${userName}` : ""},

Your verification code is: ${code}

This code will expire in ${expiresInMinutes} minutes.

If you didn't request this code, please ignore this email.

⚠️ Never share this code with anyone.

This is an automated message from Prodobit.
    `.trim();
  }

  /**
   * Send user invitation email
   */
  static async sendInvitationEmail({
    email,
    inviterName,
    tenantName,
    roleName,
    invitationUrl,
    message,
    expiresInDays = 7,
  }: {
    email: string;
    inviterName: string;
    tenantName: string;
    roleName: string;
    invitationUrl: string;
    message?: string;
    expiresInDays?: number;
  }): Promise<{ success: boolean; messageId?: string; error?: string }> {
    const subject = `You're invited to join ${tenantName} on Prodobit`;
    const html = this.generateInvitationEmailHTML({
      inviterName,
      tenantName,
      roleName,
      invitationUrl,
      ...(message !== undefined ? { message } : {}),
      expiresInDays,
    });
    const text = this.generateInvitationEmailText({
      inviterName,
      tenantName,
      roleName,
      invitationUrl,
      ...(message !== undefined ? { message } : {}),
      expiresInDays,
    });

    return this.sendEmail({
      to: email,
      subject,
      html,
      text,
    });
  }

  /**
   * Generate HTML email template for invitation
   */
  private static generateInvitationEmailHTML({
    inviterName,
    tenantName,
    roleName,
    invitationUrl,
    message,
    expiresInDays,
  }: {
    inviterName: string;
    tenantName: string;
    roleName: string;
    invitationUrl: string;
    message?: string;
    expiresInDays: number;
  }): string {
    return `
    <!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>You're invited to ${tenantName}</title>
      <style>
        * { box-sizing: border-box; }
        body { 
          font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
          line-height: 1.6;
          color: #333;
          max-width: 600px;
          margin: 0 auto;
          padding: 0;
          background-color: #f8fafc;
        }
        .container {
          background: white;
          border-radius: 12px;
          box-shadow: 0 4px 6px rgba(0, 0, 0, 0.07);
          margin: 20px;
          overflow: hidden;
        }
        .header {
          background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
          color: white;
          text-align: center;
          padding: 40px 20px;
        }
        .header h1 {
          margin: 0;
          font-size: 24px;
          font-weight: 600;
        }
        .content {
          padding: 40px 30px;
        }
        .invitation-box {
          background: linear-gradient(135deg, #f0f9ff 0%, #e0f2fe 100%);
          border: 2px solid #0ea5e9;
          border-radius: 12px;
          padding: 25px;
          margin: 25px 0;
          text-align: center;
        }
        .tenant-info {
          background: #f8fafc;
          border-radius: 8px;
          padding: 20px;
          margin: 20px 0;
          border-left: 4px solid #4c51bf;
        }
        .role-badge {
          background: #edf2f7;
          color: #4a5568;
          padding: 4px 12px;
          border-radius: 20px;
          font-size: 14px;
          font-weight: 500;
          display: inline-block;
          margin: 5px 0;
        }
        .cta-button {
          background: #4c51bf;
          color: white;
          padding: 15px 30px;
          border-radius: 8px;
          text-decoration: none;
          display: inline-block;
          font-weight: 600;
          margin: 20px 0;
          border: none;
          cursor: pointer;
        }
        .cta-button:hover {
          background: #434190;
        }
        .message-box {
          background: #fefcbf;
          border: 1px solid #f6e05e;
          border-radius: 8px;
          padding: 15px;
          margin: 20px 0;
          font-style: italic;
        }
        .expiry {
          background: #fed7d7;
          border: 1px solid #fc8181;
          border-radius: 8px;
          padding: 12px;
          margin: 20px 0;
          color: #c53030;
          text-align: center;
          font-weight: 500;
        }
        .footer {
          background: #f7fafc;
          padding: 20px 30px;
          text-align: center;
          color: #718096;
          font-size: 14px;
          border-top: 1px solid #e2e8f0;
        }
        .logo {
          font-size: 28px;
          margin-bottom: 5px;
        }
        @media (max-width: 480px) {
          .container { margin: 10px; }
          .content { padding: 30px 20px; }
          .header { padding: 30px 20px; }
        }
      </style>
    </head>
    <body>
      <div class="container">
        <div class="header">
          <div class="logo">✉️</div>
          <h1>You're Invited!</h1>
        </div>
        
        <div class="content">
          <div class="invitation-box">
            <h2 style="margin: 0 0 15px 0; color: #1e40af;">
              Join ${tenantName} on Prodobit
            </h2>
            <p style="margin: 0; color: #374151;">
              <strong>${inviterName}</strong> has invited you to collaborate
            </p>
          </div>
          
          <div class="tenant-info">
            <h3 style="margin: 0 0 10px 0; color: #374151;">Organization Details</h3>
            <p style="margin: 5px 0;"><strong>Organization:</strong> ${tenantName}</p>
            <p style="margin: 5px 0;"><strong>Role:</strong> <span class="role-badge">${roleName}</span></p>
            <p style="margin: 5px 0;"><strong>Invited by:</strong> ${inviterName}</p>
          </div>
          
          ${
            message
              ? `
          <div class="message-box">
            <strong>Personal Message:</strong><br>
            "${message}"
          </div>
          `
              : ""
          }
          
          <div style="text-align: center;">
            <a href="${invitationUrl}" class="cta-button">Accept Invitation</a>
          </div>
          
          <div class="expiry">
            ⏰ This invitation will expire in ${expiresInDays} days
          </div>
          
          <p>By accepting this invitation, you'll be able to access ${tenantName}'s workspace and collaborate with the team using your assigned ${roleName} role.</p>
          
          <p><strong>What happens next?</strong></p>
          <ul>
            <li>Click the "Accept Invitation" button above</li>
            <li>Create your Prodobit account (if you don't have one)</li>
            <li>Start collaborating with ${tenantName}</li>
          </ul>
          
          <p style="font-size: 14px; color: #718096;">
            If you don't want to join ${tenantName}, you can safely ignore this email.
          </p>
        </div>
        
        <div class="footer">
          <p>This invitation was sent through Prodobit.<br>
          For support, visit <a href="https://prodobit.com/support" style="color: #4c51bf;">prodobit.com/support</a></p>
        </div>
      </div>
    </body>
    </html>
    `;
  }

  /**
   * Generate plain text email for invitation
   */
  private static generateInvitationEmailText({
    inviterName,
    tenantName,
    roleName,
    invitationUrl,
    message,
    expiresInDays,
  }: {
    inviterName: string;
    tenantName: string;
    roleName: string;
    invitationUrl: string;
    message?: string;
    expiresInDays: number;
  }): string {
    return `
YOU'RE INVITED TO JOIN ${tenantName.toUpperCase()} ON PRODOBIT

${inviterName} has invited you to join ${tenantName} as a ${roleName}.

Organization: ${tenantName}
Role: ${roleName}
Invited by: ${inviterName}

${message ? `Personal Message: "${message}"` : ""}

To accept this invitation, visit:
${invitationUrl}

This invitation will expire in ${expiresInDays} days.

By accepting, you'll be able to access ${tenantName}'s workspace and start collaborating with the team.

If you don't want to join ${tenantName}, you can safely ignore this email.

This invitation was sent through Prodobit.
    `.trim();
  }

  /**
   * Send welcome email (for after successful verification)
   */
  static async sendWelcomeEmail(
    email: string,
    userName?: string
  ): Promise<{ success: boolean; messageId?: string; error?: string }> {
    const subject = "🎉 Welcome to Prodobit!";
    const html = `
    <!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Welcome to Prodobit!</title>
      <style>
        * { box-sizing: border-box; }
        body { 
          font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
          line-height: 1.6;
          color: #333;
          max-width: 600px;
          margin: 0 auto;
          padding: 0;
          background-color: #f8fafc;
        }
        .container {
          background: white;
          border-radius: 12px;
          box-shadow: 0 4px 6px rgba(0, 0, 0, 0.07);
          margin: 20px;
          overflow: hidden;
        }
        .header {
          background: linear-gradient(135deg, #48bb78 0%, #38a169 100%);
          color: white;
          text-align: center;
          padding: 40px 20px;
        }
        .header h1 {
          margin: 0;
          font-size: 28px;
          font-weight: 600;
        }
        .content {
          padding: 40px 30px;
        }
        .welcome-box {
          background: linear-gradient(135deg, #f0fff4 0%, #c6f6d5 100%);
          border: 1px solid #9ae6b4;
          border-radius: 12px;
          padding: 25px;
          margin: 25px 0;
          text-align: center;
        }
        .features {
          display: grid;
          grid-template-columns: 1fr 1fr;
          gap: 15px;
          margin: 25px 0;
        }
        .feature {
          background: #f7fafc;
          padding: 20px;
          border-radius: 8px;
          text-align: center;
          border: 1px solid #e2e8f0;
        }
        .feature-icon {
          font-size: 24px;
          margin-bottom: 8px;
        }
        .cta {
          background: #4c51bf;
          color: white;
          padding: 15px 30px;
          border-radius: 8px;
          text-decoration: none;
          display: inline-block;
          font-weight: 600;
          margin: 20px 0;
        }
        .footer {
          background: #f7fafc;
          padding: 20px 30px;
          text-align: center;
          color: #718096;
          font-size: 14px;
          border-top: 1px solid #e2e8f0;
        }
        .logo {
          font-size: 32px;
          margin-bottom: 10px;
        }
        @media (max-width: 480px) {
          .container { margin: 10px; }
          .content { padding: 30px 20px; }
          .features { grid-template-columns: 1fr; }
        }
      </style>
    </head>
    <body>
      <div class="container">
        <div class="header">
          <div class="logo">🎉</div>
          <h1>Welcome to Prodobit!</h1>
        </div>
        
        <div class="content">
          <p>Hello${userName ? ` ${userName}` : ""},</p>
          
          <div class="welcome-box">
            <h2 style="margin: 0 0 15px 0; color: #2d3748;">🚀 Your account is ready!</h2>
            <p style="margin: 0; color: #4a5568;">You can now start building amazing business applications with our powerful platform.</p>
          </div>
          
          <div class="features">
            <div class="feature">
              <div class="feature-icon">⚡</div>
              <h3 style="margin: 0 0 5px 0; font-size: 16px;">Fast Development</h3>
              <p style="margin: 0; font-size: 14px; color: #718096;">Build apps quickly</p>
            </div>
            <div class="feature">
              <div class="feature-icon">🔒</div>
              <h3 style="margin: 0 0 5px 0; font-size: 16px;">Secure & Scalable</h3>
              <p style="margin: 0; font-size: 14px; color: #718096;">Enterprise ready</p>
            </div>
            <div class="feature">
              <div class="feature-icon">🌐</div>
              <h3 style="margin: 0 0 5px 0; font-size: 16px;">Multi-Tenant</h3>
              <p style="margin: 0; font-size: 14px; color: #718096;">SaaS ready platform</p>
            </div>
            <div class="feature">
              <div class="feature-icon">📊</div>
              <h3 style="margin: 0 0 5px 0; font-size: 16px;">Analytics</h3>
              <p style="margin: 0; font-size: 14px; color: #718096;">Powerful insights</p>
            </div>
          </div>
          
          <div style="text-align: center;">
            <a href="https://docs.prodobit.com/getting-started" class="cta">Get Started →</a>
          </div>
          
          <p>If you have any questions, feel free to reach out to our support team at <a href="mailto:support@prodobit.com" style="color: #4c51bf;">support@prodobit.com</a></p>
          
          <p>Best regards,<br><strong>The Prodobit Team</strong></p>
        </div>
        
        <div class="footer">
          <p>This is a welcome message from Prodobit.<br>
          Visit our <a href="https://docs.prodobit.com" style="color: #4c51bf;">documentation</a> to learn more.</p>
        </div>
      </div>
    </body>
    </html>
    `;

    const text = `
Welcome to Prodobit!

Hello${userName ? ` ${userName}` : ""},

Your account has been successfully created! You can now access all Prodobit features and start building amazing business applications.

If you have any questions, feel free to reach out to our support team.

Best regards,
The Prodobit Team
    `.trim();

    return this.sendEmail({
      to: email,
      subject,
      html,
      text,
    });
  }
}

export default EmailService;
