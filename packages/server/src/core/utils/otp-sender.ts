import { EmailService } from "./email.js";
import { SMSService } from "./sms.js";
import { OTPManager } from "./otp.js";

/**
 * Check if the identifier is a test user (bypasses OTP)
 * TEST_USER env var can be a single identifier or comma-separated list
 */
export function isTestUser(identifier: string): boolean {
  const testUsers = process.env.TEST_USER;
  if (!testUsers) return false;

  const normalizedIdentifier = identifier.toLowerCase().trim();
  const testUserList = testUsers.split(',').map(u => u.toLowerCase().trim());

  return testUserList.includes(normalizedIdentifier);
}

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
  remainingRequests?: number;
}> {
  // Check if this is a test user - skip OTP sending
  if (isTestUser(identifier)) {
    console.log(`[TEST_USER] Skipping OTP send for test user: ${identifier}`);
    return {
      success: true,
      code: "000000", // Dummy code, any code will work for test users
      expiresAt: new Date(Date.now() + 10 * 60 * 1000), // 10 minutes
      remainingRequests: 999,
    };
  }

  // Generate and store OTP (now async with Redis)
  const storeResult = await OTPManager.storeOTP(identifier, type, {
    expiresInMinutes: 10,
  });

  // Check if rate limited
  if (!storeResult.success) {
    return {
      success: false,
      code: "",
      expiresAt: new Date(),
      error: storeResult.error,
      remainingRequests: storeResult.remainingRequests,
    };
  }

  const { code, expiresAt } = storeResult;

  // Send OTP via email or SMS
  let sendResult: { success: boolean; error?: string };
  if (type === "email") {
    sendResult = await EmailService.sendOTPEmail({
      email: identifier,
      code: code!,
      expiresInMinutes: 10,
    });
  } else {
    sendResult = await SMSService.sendOTPSMS({
      phone: identifier,
      code: code!,
      expiresInMinutes: 10,
    });
  }

  if (!sendResult.success) {
    // Delete the stored OTP if sending failed
    await OTPManager.deleteOTP(identifier, type);
    return {
      success: false,
      code: "",
      expiresAt: new Date(),
      error: sendResult.error,
    };
  }

  return {
    success: true,
    code: code!,
    expiresAt: expiresAt!,
    remainingRequests: storeResult.remainingRequests,
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
