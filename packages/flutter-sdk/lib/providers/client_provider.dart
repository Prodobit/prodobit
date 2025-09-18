import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prodobit_flutter_sdk/core/prodobit_client.dart';

/// Provider for Prodobit client instance
/// This should be overridden in your app with your specific configuration
final prodobitClientProvider = Provider<ProdobitClient>((ref) {
  throw UnimplementedError(
    'prodobitClientProvider must be overridden with your Prodobit client configuration',
  );
});

/// Example of how to override in your app:
/// 
/// ```dart
/// final prodobitClientProvider = Provider<ProdobitClient>((ref) {
///   return ProdobitClient(
///     baseUrl: 'https://your-api.com',
///     enableLogging: kDebugMode,
///   );
/// });
/// ```