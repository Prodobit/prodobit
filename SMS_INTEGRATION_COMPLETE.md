# SMS Integration - Complete Implementation Guide

## 📋 Overview

Complete SMS OTP authentication has been successfully integrated into the Prodobit platform. Users can now authenticate using either **email** or **phone number**.

---

## 🎯 What Was Implemented

### 1. **Server Package** (`@prodobit/server`)

#### SMS Provider System
- **[sms-provider.ts](packages/server/src/core/utils/sms-provider.ts)** - SMS provider interface
- **[netgsm-provider.ts](packages/server/src/core/utils/netgsm-provider.ts)** - NetGSM implementation
- **[sms.ts](packages/server/src/core/utils/sms.ts)** - SMS service manager

#### OTP Manager Updates
- **[otp.ts](packages/server/src/core/utils/otp.ts)** - Now supports both email and phone
  - `storeOTP(identifier, type, options)` - type: "email" | "phone"
  - `verifyOTP(identifier, type, code)`
  - `hasValidOTP(identifier, type)`
  - `getOTPInfo(identifier, type)`

#### Authentication Flow
- **[auth.ts](packages/server/src/core/auth.ts)** - All endpoints updated:
  - `/check-user` - Accepts email OR phone
  - `/request-otp` - Sends OTP via email OR SMS
  - `/resend-otp` - Resends OTP via email OR SMS
  - `/verify-otp` - Verifies email OR phone OTP

#### Helper Utilities
- **[otp-sender.ts](packages/server/src/core/utils/otp-sender.ts)** - Helper functions for OTP sending

### 2. **Types Package** (`@prodobit/types`)

#### Updated Type Definitions
- **[auth.ts](packages/types/src/auth.ts)**:
  ```typescript
  // Provider now includes 'phone'
  provider: 'email' | 'phone' | 'google' | 'github' | 'microsoft'

  // Request types now accept phone
  requestOTPRequest: {
    email?: string;
    phone?: string;
    tenantId?: string;
  }

  verifyOTPRequest: {
    email?: string;
    phone?: string;
    code: string;
    tenantId?: string;
  }

  resendOTPRequest: {
    email?: string;
    phone?: string;
  }

  checkUserRequest: {
    email?: string;
    phone?: string;
  }
  ```

### 3. **SDK Package** (`@prodobit/sdk`)

#### Updated Auth Client
- **[auth-client.ts](packages/sdk/src/modules/auth-client.ts)**:
  ```typescript
  // Updated methods with auto-detection
  async loginWithOTP(
    identifier: string,      // email or phone
    tenantId?: string,
    type?: "email" | "phone" // auto-detect if not provided
  )

  async completeLogin(
    identifier: string,      // email or phone
    code: string,
    tenantId?: string,
    type?: "email" | "phone" // auto-detect if not provided
  )
  ```

#### Phone Utilities
- **[phone-utils.ts](packages/sdk/src/utils/phone-utils.ts)**:
  - `isValidTurkishPhone(phone)` - Validate Turkish phone numbers
  - `formatTurkishPhone(phone)` - Format to international (905xxxxxxxxx)
  - `isValidInternationalPhone(phone)` - Validate international numbers
  - `detectIdentifierType(identifier)` - Auto-detect email/phone
  - `formatPhoneDisplay(phone)` - Format for display (+90 5xx xxx xx xx)
  - `sanitizePhone(phone)` - Clean phone number

### 4. **React SDK Package** (`@prodobit/react-sdk`)

#### Updated Hooks
- **[useAuth.ts](packages/react-sdk/src/hooks/useAuth.ts)**:
  ```typescript
  const { requestOTP } = useAuth();

  // Use with email
  await requestOTP.mutateAsync({
    identifier: "user@example.com",
    tenantId: "tenant-id"
  });

  // Use with phone
  await requestOTP.mutateAsync({
    identifier: "905xxxxxxxxx",
    tenantId: "tenant-id",
    type: "phone" // optional, auto-detected
  });

  // Verify OTP
  const { verifyOTP } = useAuth();
  await verifyOTP.mutateAsync({
    identifier: "905xxxxxxxxx",
    code: "123456",
    tenantId: "tenant-id"
  });
  ```

---

## 🔧 Configuration

### Environment Variables

Add to your `.env` file:

```bash
# SMS Provider Configuration (NetGSM)
SMS_USERNAME=your_netgsm_username
SMS_PASSWORD=your_netgsm_password
SMS_HEADER=YourCompanyName
SMS_PROVIDER_URL=https://api.netgsm.com.tr/sms/send/otp
```

### Server Initialization

The SMS service is automatically initialized in [index.ts](packages/server/src/index.ts):

```typescript
// SMS service initialized with NetGSM from environment
SMSService.initializeWithNetGSM();
```

---

## 📱 Usage Examples

### Backend (Server)

```typescript
import { SMSService } from "@prodobit/server";

// Send OTP SMS
await SMSService.sendOTPSMS({
  phone: "905xxxxxxxxx",
  code: "123456",
  expiresInMinutes: 10
});

// Send welcome SMS
await SMSService.sendWelcomeSMS(
  "905xxxxxxxxx",
  "User Name"
);
```

### Frontend (React SDK)

```typescript
import { useAuth, isValidTurkishPhone, formatTurkishPhone } from "@prodobit/react-sdk";

function LoginWithPhone() {
  const { requestOTP, verifyOTP } = useAuth();
  const [phone, setPhone] = useState("");
  const [code, setCode] = useState("");

  const handleRequestOTP = async () => {
    // Validate and format phone
    if (!isValidTurkishPhone(phone)) {
      alert("Invalid phone number");
      return;
    }

    const formatted = formatTurkishPhone(phone);

    // Request OTP
    await requestOTP.mutateAsync({
      identifier: formatted,
      type: "phone"
    });
  };

  const handleVerifyOTP = async () => {
    await verifyOTP.mutateAsync({
      identifier: formatTurkishPhone(phone),
      code,
      tenantId: "tenant-id"
    });
  };

  return (
    <div>
      <input
        value={phone}
        onChange={(e) => setPhone(e.target.value)}
        placeholder="Phone number"
      />
      <button onClick={handleRequestOTP}>Send OTP</button>

      <input
        value={code}
        onChange={(e) => setCode(e.target.value)}
        placeholder="Verification code"
      />
      <button onClick={handleVerifyOTP}>Verify</button>
    </div>
  );
}
```

### Auto-Detection Example

```typescript
// Auto-detects email vs phone
const { requestOTP } = useAuth();

// Email will be auto-detected
await requestOTP.mutateAsync({
  identifier: "user@example.com"
});

// Phone will be auto-detected
await requestOTP.mutateAsync({
  identifier: "905xxxxxxxxx"
});
```

---

## 🏗️ Architecture

### SMS Provider Pattern

```
SMSService
    ↓
SMSProvider (interface)
    ↓
NetGSMProvider (implementation)
```

### Adding New Providers

1. Create provider class implementing `SMSProvider`:

```typescript
import type { SMSProvider, SMSProviderConfig } from "@prodobit/server";

export class TwilioProvider implements SMSProvider {
  async sendSMS(options: {
    to: string;
    message: string;
  }): Promise<{
    success: boolean;
    messageId?: string;
    error?: string;
  }> {
    // Implementation
  }
}
```

2. Initialize in server:

```typescript
import { SMSService } from "@prodobit/server";
import { TwilioProvider } from "./twilio-provider";

const twilioProvider = new TwilioProvider(config);
SMSService.initialize(twilioProvider);
```

---

## 📊 Database Schema

### auth_methods Table

The `provider` field now supports "phone":

```sql
CREATE TYPE auth_provider AS ENUM (
  'email',
  'phone',     -- NEW
  'google',
  'github',
  'microsoft'
);
```

### Example Records

```sql
-- Email-based auth
INSERT INTO auth_methods (user_id, provider, provider_id, verified)
VALUES ('user-123', 'email', 'user@example.com', true);

-- Phone-based auth
INSERT INTO auth_methods (user_id, provider, provider_id, verified)
VALUES ('user-123', 'phone', '905xxxxxxxxx', true);
```

---

## 🔐 Security Considerations

1. **Rate Limiting**: Implement rate limiting for SMS to prevent abuse
2. **Cost Management**: Monitor SMS usage - each message has a cost
3. **Phone Validation**: Always validate phone numbers before sending
4. **Credentials**: Keep SMS credentials secure in environment variables
5. **OTP Expiry**: OTPs expire after 10 minutes by default
6. **Max Attempts**: 3 failed attempts invalidate the OTP

---

## 🧪 Testing

### Phone Validation

```typescript
import {
  isValidTurkishPhone,
  formatTurkishPhone,
  detectIdentifierType
} from "@prodobit/sdk";

// Valid formats
isValidTurkishPhone("905xxxxxxxxx"); // true
isValidTurkishPhone("5xxxxxxxxx");    // true
isValidTurkishPhone("+905xxxxxxxxx"); // true

// Formatting
formatTurkishPhone("5xxxxxxxxx");    // "905xxxxxxxxx"
formatTurkishPhone("+905xxxxxxxxx"); // "905xxxxxxxxx"

// Auto-detection
detectIdentifierType("user@example.com"); // "email"
detectIdentifierType("905xxxxxxxxx");      // "phone"
```

---

## 📝 API Endpoints

### Request OTP
```bash
POST /api/v1/auth/request-otp
Content-Type: application/json

# With email
{
  "email": "user@example.com",
  "tenantId": "optional-tenant-id"
}

# With phone
{
  "phone": "905xxxxxxxxx",
  "tenantId": "optional-tenant-id"
}
```

### Verify OTP
```bash
POST /api/v1/auth/verify-otp
Content-Type: application/json

# With email
{
  "email": "user@example.com",
  "code": "123456",
  "tenantId": "tenant-id"
}

# With phone
{
  "phone": "905xxxxxxxxx",
  "code": "123456",
  "tenantId": "tenant-id"
}
```

### Resend OTP
```bash
POST /api/v1/auth/resend-otp
Content-Type: application/json

# With email
{
  "email": "user@example.com"
}

# With phone
{
  "phone": "905xxxxxxxxx"
}
```

---

## 🚀 Deployment Checklist

- [ ] Set SMS environment variables in production
- [ ] Test SMS delivery in production
- [ ] Configure rate limiting for SMS endpoints
- [ ] Monitor SMS usage and costs
- [ ] Set up alerts for failed SMS deliveries
- [ ] Document phone number format requirements for users

---

## 🐛 Troubleshooting

### SMS Not Sending

1. Check environment variables are set
2. Verify NetGSM credentials
3. Check NetGSM account balance
4. Verify phone number format (905xxxxxxxxx)
5. Check server logs for SMS errors

### Debug Logs

```bash
# Server logs show:
SMS service initialized successfully
NetGSM API error: [status code]
```

### Common Issues

| Issue | Solution |
|-------|----------|
| SMS not received | Check phone format, NetGSM balance |
| Invalid phone error | Use formatTurkishPhone() utility |
| OTP expired | Request new OTP (10 min expiry) |
| Too many attempts | Request new OTP after 3 failed attempts |

---

## 📚 Related Documentation

- [Server SMS Setup](packages/server/SMS_SETUP.md)
- [NetGSM API Docs](https://www.netgsm.com.tr/dokuman/)
- [Phone Utilities Reference](packages/sdk/src/utils/phone-utils.ts)

---

## ✅ Migration Notes

### Existing Users

- Email-based authentication continues to work unchanged
- No breaking changes for existing users
- Users can have both email and phone auth methods

### New Features

- Phone number authentication
- SMS OTP delivery
- Auto-detection of email vs phone
- Phone validation utilities
- Multi-provider SMS support (extensible)

---

## 🎉 Summary

✅ Complete SMS OTP authentication
✅ Email and Phone support
✅ NetGSM provider integration
✅ Phone validation utilities
✅ SDK and React SDK integration
✅ Auto-detection of identifier type
✅ Backward compatible with email auth
✅ Extensible provider pattern
✅ Type-safe implementation
✅ Comprehensive documentation

The system now supports both email and phone-based authentication seamlessly!
