import 'package:prodobit_flutter_sdk/exceptions/prodobit_exception.dart';

/// Exception thrown when authentication fails
class AuthException extends ProdobitException {
  const AuthException(super.message, {super.code, super.details});

  /// Invalid credentials
  factory AuthException.invalidCredentials() => const AuthException(
        'Invalid username or password',
        code: 'INVALID_CREDENTIALS',
      );

  /// Token invalid
  factory AuthException.invalidToken() => const AuthException(
        'Invalid authentication token',
        code: 'INVALID_TOKEN',
      );

  /// Refresh token failed
  factory AuthException.refreshFailed() => const AuthException(
        'Failed to refresh authentication token',
        code: 'REFRESH_FAILED',
      );

  /// Authentication required
  factory AuthException.required() => const AuthException(
        'Authentication required',
        code: 'AUTH_REQUIRED',
      );

  /// Token expired
  factory AuthException.tokenExpired() => const AuthException(
        'Authentication token has expired',
        code: 'TOKEN_EXPIRED',
      );

  @override
  String toString() =>
      'AuthException: $message${code != null ? ' ($code)' : ''}';
}
