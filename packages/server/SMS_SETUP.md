# SMS Integration Setup

This document describes how to set up SMS integration for OTP (One-Time Password) authentication.

## Environment Variables

Add the following environment variables to your `.env` file:

```bash
# SMS Provider Configuration (NetGSM)
SMS_USERNAME=your_netgsm_username
SMS_PASSWORD=your_netgsm_password
SMS_HEADER=YourCompanyName
SMS_PROVIDER_URL=https://api.netgsm.com.tr/sms/send/otp
```

### Variable Descriptions

- **SMS_USERNAME**: Your NetGSM API username
- **SMS_PASSWORD**: Your NetGSM API password
- **SMS_HEADER**: The sender name that will appear in SMS messages (max 11 characters)
- **SMS_PROVIDER_URL**: NetGSM API endpoint for sending OTP SMS

## Features

### Phone-based Authentication

Users can now authenticate using their phone number instead of email:

1. **Request OTP**: Send POST request to `/api/v1/auth/request-otp` with `phone` field
2. **Verify OTP**: Send POST request to `/api/v1/auth/verify-otp` with `phone` and `code` fields

### Example Usage

#### Request OTP via Phone

```bash
curl -X POST http://localhost:3001/api/v1/auth/request-otp \
  -H "Content-Type: application/json" \
  -d '{
    "phone": "905xxxxxxxxx"
  }'
```

#### Verify OTP

```bash
curl -X POST http://localhost:3001/api/v1/auth/verify-otp \
  -H "Content-Type: application/json" \
  -d '{
    "phone": "905xxxxxxxxx",
    "code": "123456",
    "tenantId": "your-tenant-id"
  }'
```

## Architecture

### SMS Provider Pattern

The SMS integration follows an adapter pattern similar to email providers:

```
SMSService
    ↓
SMSProvider (interface)
    ↓
NetGSMProvider (implementation)
```

### Adding New SMS Providers

To add a new SMS provider:

1. Create a new provider class implementing `SMSProvider` interface
2. Implement the `sendSMS` method
3. Initialize it in `SMSService`

Example:

```typescript
import type { SMSProvider, SMSProviderConfig } from "./sms-provider.js";

export class TwilioProvider implements SMSProvider {
  async sendSMS(options: {
    to: string;
    message: string;
  }): Promise<{
    success: boolean;
    messageId?: string;
    error?: string;
  }> {
    // Your implementation here
  }
}
```

## OTP Manager Updates

The `OTPManager` now supports both email and phone:

```typescript
// Store OTP for phone
OTPManager.storeOTP(phoneNumber, "phone", { expiresInMinutes: 10 });

// Verify OTP for phone
OTPManager.verifyOTP(phoneNumber, "phone", code);
```

## Database Changes

The `auth_methods` table now supports `phone` as a provider:

```sql
provider: 'email' | 'phone' | 'google' | 'github' | 'microsoft'
```

## Security Considerations

1. **Rate Limiting**: Consider implementing rate limiting for SMS sending to prevent abuse
2. **Cost Management**: SMS messages have a cost - monitor usage
3. **Phone Number Validation**: Validate phone numbers before sending SMS
4. **Credentials**: Keep SMS credentials secure in environment variables

## NetGSM Specific Notes

### Response Codes

- `00` or `0`: Success
- Other codes: Error (check NetGSM documentation for specific error codes)

### Phone Number Format

Phone numbers should be in international format without `+` or `00`:
- Correct: `905xxxxxxxxx`
- Incorrect: `+905xxxxxxxxx` or `005xxxxxxxxx`

### Message Encoding

Messages are sent with Turkish character support (`encoding: TR`).

## Troubleshooting

### SMS Not Sending

1. Check environment variables are set correctly
2. Verify NetGSM credentials
3. Check NetGSM account balance
4. Verify phone number format

### Debug Logs

SMS errors are logged to console:
```
SMS service not initialized: Missing environment variables
NetGSM API error: [status code]
```

## Testing

For development/testing, you can use a test SMS provider that logs to console instead of sending actual SMS.

## Migration from Email-only to Email + Phone

Existing email-based users are not affected. The system now supports both:
- Email-based authentication (existing)
- Phone-based authentication (new)
- Users can have both email and phone auth methods

## Future Enhancements

- Support for multiple SMS providers
- SMS templates
- Internationalization for SMS messages
- SMS delivery status tracking
