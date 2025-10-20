import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:prodobit_flutter_sdk/core/prodobit_config.dart';
import 'package:prodobit_flutter_sdk/exceptions/exceptions.dart';

/// HTTP client for making API requests to Prodobit backend
class ApiClient {
  ApiClient(this.config) {
    _setupDio();
  }

  final ProdobitConfig config;
  late final Dio _dio;
  late final Logger _logger;

  /// Get the configured Dio instance
  Dio get dio => _dio;

  /// Perform a DELETE request
  Future<T> delete<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.delete<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return response.data!;
    } on DioException catch (e) {
      if (e.error is ProdobitException) {
        throw e.error! as ProdobitException;
      }
      rethrow;
    }
  }

  /// Perform a GET request
  Future<T> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.get<T>(
        path,
        queryParameters: queryParameters,
        options: options,
      );
      return response.data!;
    } on DioException catch (e) {
      if (e.error is ProdobitException) {
        throw e.error! as ProdobitException;
      }
      rethrow;
    }
  }

  /// Perform a POST request
  Future<T> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.post<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return response.data!;
    } on DioException catch (e) {
      if (e.error is ProdobitException) {
        throw e.error! as ProdobitException;
      }
      rethrow;
    }
  }

  /// Perform a PUT request
  Future<T> put<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.put<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return response.data!;
    } on DioException catch (e) {
      if (e.error is ProdobitException) {
        throw e.error! as ProdobitException;
      }
      rethrow;
    }
  }

  /// Remove authorization token
  void removeAuthToken() {
    _dio.options.headers.remove('Authorization');
  }

  /// Remove organization context
  void removeOrganization() {
    _dio.options.headers.remove('X-Organization-ID');
  }

  /// Set authorization token
  void setAuthToken(String token) {
    _dio.options.headers['Authorization'] = 'Bearer $token';
  }

  /// Set organization context
  void setOrganization(String organizationId) {
    _dio.options.headers['X-Organization-ID'] = organizationId;
  }

  /// Upload file with progress tracking
  Future<T> uploadFile<T>(
    String path,
    String filePath, {
    String fieldName = 'file',
    Map<String, dynamic>? additionalData,
    ProgressCallback? onProgress,
  }) async {
    try {
      final formData = FormData.fromMap({
        fieldName: await MultipartFile.fromFile(filePath),
        ...?additionalData,
      });

      final response = await _dio.post<T>(
        path,
        data: formData,
        onSendProgress: onProgress,
      );

      return response.data!;
    } on DioException catch (e) {
      if (e.error is ProdobitException) {
        throw e.error! as ProdobitException;
      }
      rethrow;
    }
  }

  void _handleError(DioException error, ErrorInterceptorHandler handler) {
    _logger.e('❌ API Error: ${error.message}');

    ProdobitException exception;

    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        exception = ApiException(
          'Request timeout - please check your connection',
          code: 'TIMEOUT',
          details: {'type': error.type.name},
        );
        break;

      case DioExceptionType.connectionError:
        exception = ApiException(
          'Connection error - unable to reach server',
          code: 'CONNECTION_ERROR',
          details: {'message': error.message},
        );
        break;

      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode;
        final responseData = error.response?.data;

        if (statusCode != null) {
          // Try to extract error message from response
          String? errorMessage;
          if (responseData is Map<String, dynamic>) {
            // Try direct message field first
            errorMessage = responseData['message'] as String?;

            // If no message, check if error is a map with message field
            if (errorMessage == null && responseData['error'] is Map<String, dynamic>) {
              final errorMap = responseData['error'] as Map<String, dynamic>;
              errorMessage = errorMap['message'] as String?;
            }
            // Fallback to error as string (legacy format)
            else if (errorMessage == null && responseData['error'] is String) {
              errorMessage = responseData['error'] as String;
            }
          }

          exception = ApiException.fromStatusCode(
            statusCode,
            message: errorMessage,
            response:
                responseData is Map<String, dynamic> ? responseData : null,
          );
        } else {
          exception = const ApiException(
            'Invalid response from server',
            code: 'INVALID_RESPONSE',
          );
        }
        break;

      case DioExceptionType.cancel:
        exception = const ApiException(
          'Request was cancelled',
          code: 'CANCELLED',
        );
        break;

      case DioExceptionType.badCertificate:
        exception = ApiException(
          'Certificate verification failed',
          code: 'BAD_CERTIFICATE',
          details: {'message': error.message},
        );
        break;

      case DioExceptionType.unknown:
        exception = ApiException(
          error.message ?? 'Unknown error occurred',
          code: 'UNKNOWN',
          details: {'type': error.type.name},
        );
        break;
    }

    handler.reject(
      DioException(
        requestOptions: error.requestOptions,
        error: exception,
        type: error.type,
        response: error.response,
      ),
    );
  }

  void _onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    _logger.i('🚀 ${options.method.toUpperCase()} ${options.path}');
    handler.next(options);
  }

  void _onResponse(Response response, ResponseInterceptorHandler handler) {
    _logger.i('✅ ${response.statusCode} ${response.requestOptions.path}');
    handler.next(response);
  }

  void _setupDio() {
    _logger = Logger(
      level: config.enableLogging ? Level.debug : Level.error,
      printer: PrettyPrinter(
        methodCount: 0,
        errorMethodCount: 5,
      ),
    );

    _dio = Dio(
      BaseOptions(
        baseUrl: config.apiBaseUrl,
        connectTimeout: config.connectTimeout,
        receiveTimeout: config.receiveTimeout,
        sendTimeout: config.timeout,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          ...config.headers,
        },
      ),
    );

    // Add logging interceptor
    if (config.enableLogging) {
      _dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          logPrint: (object) => _logger.d(object),
        ),
      );
    }

    // Add error handling interceptor
    _dio.interceptors.add(
      InterceptorsWrapper(
        onError: _handleError,
        onRequest: _onRequest,
        onResponse: _onResponse,
      ),
    );
  }
}
