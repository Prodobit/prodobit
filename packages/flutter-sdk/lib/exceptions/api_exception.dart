import 'package:prodobit_flutter_sdk/exceptions/prodobit_exception.dart';

/// Exception thrown when API calls fail
class ApiException extends ProdobitException {
  const ApiException(
    super.message, {
    super.code,
    super.details,
    this.statusCode,
    this.response,
  });

  /// Create an ApiException from HTTP status code
  factory ApiException.fromStatusCode(
    int statusCode, {
    String? message,
    Map<String, dynamic>? response,
  }) {
    final defaultMessage = _getDefaultMessage(statusCode);
    return ApiException(
      message ?? defaultMessage,
      code: statusCode.toString(),
      statusCode: statusCode,
      response: response,
    );
  }

  final int? statusCode;
  final Map<String, dynamic>? response;

  @override
  String toString() =>
      'ApiException: $message${statusCode != null ? ' ($statusCode)' : ''}';

  static String _getDefaultMessage(int statusCode) {
    switch (statusCode) {
      case 400:
        return 'Bad Request - Invalid parameters';
      case 401:
        return 'Unauthorized - Authentication required';
      case 403:
        return 'Forbidden - Insufficient permissions';
      case 404:
        return 'Not Found - Resource not found';
      case 422:
        return 'Validation Error - Invalid data provided';
      case 429:
        return 'Rate Limit Exceeded - Too many requests';
      case 500:
        return 'Internal Server Error - Server error occurred';
      case 502:
        return 'Bad Gateway - Server is temporarily unavailable';
      case 503:
        return 'Service Unavailable - Server is overloaded';
      default:
        return 'HTTP Error $statusCode';
    }
  }
}
