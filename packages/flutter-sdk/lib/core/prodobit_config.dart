import 'package:equatable/equatable.dart';

/// Configuration for Prodobit client
class ProdobitConfig extends Equatable {
  const ProdobitConfig({
    required this.baseUrl,
    this.apiVersion = 'v1',
    this.timeout = const Duration(seconds: 30),
    this.connectTimeout = const Duration(seconds: 15),
    this.receiveTimeout = const Duration(seconds: 30),
    this.enableLogging = false,
    this.maxRetries = 3,
    this.retryInterval = const Duration(seconds: 1),
    this.cacheEnabled = true,
    this.cacheDuration = const Duration(minutes: 5),
    this.headers = const {},
  });

  /// Base URL for the Prodobit API
  final String baseUrl;

  /// API version to use
  final String apiVersion;

  /// Request timeout duration
  final Duration timeout;

  /// Connection timeout duration
  final Duration connectTimeout;

  /// Response receive timeout duration
  final Duration receiveTimeout;

  /// Enable request/response logging
  final bool enableLogging;

  /// Maximum number of retry attempts
  final int maxRetries;

  /// Interval between retry attempts
  final Duration retryInterval;

  /// Enable response caching
  final bool cacheEnabled;

  /// Cache duration for responses
  final Duration cacheDuration;

  /// Default headers to include in all requests
  final Map<String, String> headers;

  /// Complete API base URL with version
  String get apiBaseUrl => '$baseUrl/api/$apiVersion';

  @override
  List<Object?> get props => [
        baseUrl,
        apiVersion,
        timeout,
        connectTimeout,
        receiveTimeout,
        enableLogging,
        maxRetries,
        retryInterval,
        cacheEnabled,
        cacheDuration,
        headers,
      ];

  /// Create a copy with modified values
  ProdobitConfig copyWith({
    String? baseUrl,
    String? apiVersion,
    Duration? timeout,
    Duration? connectTimeout,
    Duration? receiveTimeout,
    bool? enableLogging,
    int? maxRetries,
    Duration? retryInterval,
    bool? cacheEnabled,
    Duration? cacheDuration,
    Map<String, String>? headers,
  }) {
    return ProdobitConfig(
      baseUrl: baseUrl ?? this.baseUrl,
      apiVersion: apiVersion ?? this.apiVersion,
      timeout: timeout ?? this.timeout,
      connectTimeout: connectTimeout ?? this.connectTimeout,
      receiveTimeout: receiveTimeout ?? this.receiveTimeout,
      enableLogging: enableLogging ?? this.enableLogging,
      maxRetries: maxRetries ?? this.maxRetries,
      retryInterval: retryInterval ?? this.retryInterval,
      cacheEnabled: cacheEnabled ?? this.cacheEnabled,
      cacheDuration: cacheDuration ?? this.cacheDuration,
      headers: headers ?? this.headers,
    );
  }
}
