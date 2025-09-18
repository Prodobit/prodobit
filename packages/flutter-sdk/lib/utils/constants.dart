/// API endpoints constants
class ApiEndpoints {
  static const String auth = '/auth';
  static const String users = '/users';
  static const String inventory = '/inventory';
  static const String parties = '/parties';
  static const String sales = '/sales';
  static const String manufacturing = '/manufacturing';
  static const String assets = '/assets';
  static const String files = '/files';
}

/// Default values
class Defaults {
  static const String currency = 'USD';
  static const String unit = 'pcs';
  static const String language = 'en';
  static const int pageSize = 20;
  static const Duration timeout = Duration(seconds: 30);
}

/// Error codes
class ErrorCodes {
  static const String authRequired = 'AUTH_REQUIRED';
  static const String invalidCredentials = 'INVALID_CREDENTIALS';
  static const String tokenExpired = 'TOKEN_EXPIRED';
  static const String invalidToken = 'INVALID_TOKEN';
  static const String refreshFailed = 'REFRESH_FAILED';
  static const String validationError = 'VALIDATION_ERROR';
  static const String notFound = 'NOT_FOUND';
  static const String unauthorized = 'UNAUTHORIZED';
  static const String forbidden = 'FORBIDDEN';
  static const String conflict = 'CONFLICT';
  static const String rateLimitExceeded = 'RATE_LIMIT_EXCEEDED';
  static const String serverError = 'SERVER_ERROR';
}

/// Item types
class ItemTypes {
  static const String product = 'product';
  static const String service = 'service';
  static const String rawMaterial = 'raw_material';
  static const String component = 'component';
  static const String consumable = 'consumable';
}

/// Location types
class LocationTypes {
  static const String warehouse = 'warehouse';
  static const String store = 'store';
  static const String production = 'production';
  static const String office = 'office';
  static const String external = 'external';
}

/// Regular expressions for validation
class RegexPatterns {
  static final RegExp email = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );

  static final RegExp phone = RegExp(
    r'^[\+]?[1-9][\d]{0,15}$',
  );

  static final RegExp alphanumeric = RegExp(r'^[a-zA-Z0-9]+$');

  static final RegExp code = RegExp(r'^[A-Z0-9_-]+$');

  static final RegExp url = RegExp(
    r'^https?:\/\/(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b(?:[-a-zA-Z0-9()@:%_\+.~#?&=]*)$',
  );
}

/// Status constants
class Status {
  static const String active = 'active';
  static const String inactive = 'inactive';
  static const String draft = 'draft';
  static const String pending = 'pending';
  static const String approved = 'approved';
  static const String rejected = 'rejected';
  static const String completed = 'completed';
  static const String cancelled = 'cancelled';
}

/// Stock movement types
class StockMovementTypes {
  static const String stockIn = 'in';
  static const String stockOut = 'out';
  static const String transfer = 'transfer';
  static const String adjustment = 'adjustment';
  static const String production = 'production';
  static const String consumption = 'consumption';
}

/// Storage keys for secure storage
class StorageKeys {
  static const String accessToken = 'access_token';
  static const String refreshToken = 'refresh_token';
  static const String userProfile = 'user_profile';
  static const String organization = 'organization';
}

/// User roles
class UserRoles {
  static const String admin = 'admin';
  static const String manager = 'manager';
  static const String user = 'user';
  static const String viewer = 'viewer';
}
