import 'package:dio/dio.dart';

/// Cache configuration for offline support
/// Currently disabled - will be re-enabled with proper cache implementation
class CacheSetup {
  static bool _initialized = false;

  /// Initialize cache
  static Future<void> initialize({
    int maxStaleHours = 24,
  }) async {
    if (_initialized) return;

    // Cache initialization disabled for now
    // Will be re-enabled with proper implementation
    _initialized = true;
  }

  /// Get cache interceptor for Dio
  static Interceptor? getCacheInterceptor() {
    // Cache disabled for now
    return null;
  }

  /// Clear all cached data
  static Future<void> clearCache() async {
    // No-op for now
  }

  /// Get cache size in bytes
  static Future<int> getCacheSize() async {
    return 0;
  }
}
