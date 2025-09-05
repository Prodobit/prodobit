export interface EmailProvider {
  sendEmail(options: {
    to: string;
    subject: string;
    html?: string;
    text?: string;
  }): Promise<{
    success: boolean;
    messageId?: string;
    error?: string;
  }>;
}

export interface EmailProviderConfig {
  fromEmail: string;
  fromName: string;
}