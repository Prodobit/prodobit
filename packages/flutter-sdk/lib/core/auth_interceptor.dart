import 'dart:async';
import 'package:dio/dio.dart';
import 'package:prodobit_flutter_sdk/services/auth_service.dart';

/// Interceptor that handles automatic token refresh on 401 responses
/// and proactive token refresh before expiration
class AuthInterceptor extends QueuedInterceptor {
  AuthInterceptor(this._authService);

  final AuthService _authService;

  // Lock to prevent concurrent refresh attempts
  bool _isRefreshing = false;
  final List<Completer<void>> _refreshCompleters = [];

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Skip token check for auth endpoints to avoid circular dependencies
    if (_isAuthEndpoint(options.path)) {
      return handler.next(options);
    }

    // Check if token is expired or will expire soon
    try {
      final isExpired = await _authService.isTokenExpired();

      if (isExpired) {
        // Token is expired or will expire soon, refresh it proactively
        await _refreshTokenIfNeeded();
      }
    } catch (e) {
      // If token check fails, continue with the request
      // The 401 handler will catch it if needed
    }

    return handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    // Only handle 401 errors (Unauthorized)
    if (err.response?.statusCode != 401) {
      return handler.next(err);
    }

    // Skip refresh for auth endpoints to avoid infinite loops
    if (_isAuthEndpoint(err.requestOptions.path)) {
      return handler.next(err);
    }

    try {
      // Try to refresh the token
      await _refreshTokenIfNeeded();

      // Retry the failed request with the new token
      final options = err.requestOptions;
      final response = await Dio().fetch(options);

      return handler.resolve(response);
    } catch (e) {
      // Refresh failed, pass the error to the next handler
      // This will trigger logout in the AuthService
      return handler.next(err);
    }
  }

  /// Refresh token with lock to prevent concurrent refresh attempts
  Future<void> _refreshTokenIfNeeded() async {
    // If already refreshing, wait for the current refresh to complete
    if (_isRefreshing) {
      final completer = Completer<void>();
      _refreshCompleters.add(completer);
      return completer.future;
    }

    // Set the refreshing flag
    _isRefreshing = true;

    try {
      // Perform the token refresh
      await _authService.refreshToken();

      // Complete all waiting requests
      for (final completer in _refreshCompleters) {
        if (!completer.isCompleted) {
          completer.complete();
        }
      }
      _refreshCompleters.clear();
    } catch (e) {
      // Refresh failed, complete all waiting requests with error
      for (final completer in _refreshCompleters) {
        if (!completer.isCompleted) {
          completer.completeError(e);
        }
      }
      _refreshCompleters.clear();
      rethrow;
    } finally {
      _isRefreshing = false;
    }
  }

  /// Check if the endpoint is an auth endpoint to avoid circular dependencies
  bool _isAuthEndpoint(String path) {
    return path.contains('/auth/refresh') ||
        path.contains('/auth/logout') ||
        path.contains('/auth/request-otp') ||
        path.contains('/auth/verify-otp') ||
        path.contains('/auth/resend-otp');
  }
}
