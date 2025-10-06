export interface SMSProvider {
  sendSMS(options: {
    to: string;
    message: string;
  }): Promise<{
    success: boolean;
    messageId?: string;
    error?: string;
  }>;
}

export interface SMSProviderConfig {
  username: string;
  password: string;
  header: string;
  providerUrl: string;
}
