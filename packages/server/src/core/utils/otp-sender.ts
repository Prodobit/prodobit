import { EmailService } from "./email.js";
import { SMSService } from "./sms.js";
import { OTPManager } from "./otp.js";

/**
 * Helper to send OTP via email or SMS
 */
export async function sendOTP(
  identifier: string,
  type: "email" | "phone"
): Promise<{
  success: boolean;
  code: string;
  expiresAt: Date;
  error?: string;
}> {
  // Generate and store OTP
  const { code, expiresAt } = OTPManager.storeOTP(identifier, type, {
    expiresInMinutes: 10,
  });

  // Send OTP via email or SMS
  let sendResult: { success: boolean; error?: string };
  if (type === "email") {
    sendResult = await EmailService.sendOTPEmail({
      email: identifier,
      code,
      expiresInMinutes: 10,
    });
  } else {
    sendResult = await SMSService.sendOTPSMS({
      phone: identifier,
      code,
      expiresInMinutes: 10,
    });
  }

  if (!sendResult.success) {
    return {
      success: false,
      code: "",
      expiresAt: new Date(),
      error: sendResult.error,
    };
  }

  return {
    success: true,
    code,
    expiresAt,
  };
}

/**
 * Helper to determine provider and identifier from request
 */
export function getProviderAndIdentifier(body: {
  email?: string;
  phone?: string;
}): { provider: "email" | "phone"; identifier: string } | null {
  if (body.email) {
    return { provider: "email", identifier: body.email };
  }
  if (body.phone) {
    return { provider: "phone", identifier: body.phone };
  }
  return null;
}
