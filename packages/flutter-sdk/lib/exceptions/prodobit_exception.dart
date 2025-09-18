/// Base exception class for all Prodobit SDK exceptions
abstract class ProdobitException implements Exception {
  const ProdobitException(this.message, {this.code, this.details});

  final String message;
  final String? code;
  final Map<String, dynamic>? details;

  @override
  String toString() =>
      'ProdobitException: $message${code != null ? ' ($code)' : ''}';
}
