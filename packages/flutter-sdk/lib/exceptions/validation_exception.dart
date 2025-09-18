import 'package:prodobit_flutter_sdk/exceptions/prodobit_exception.dart';

/// Exception thrown when validation fails
class ValidationException extends ProdobitException {
  const ValidationException(
    super.message, {
    super.code,
    super.details,
    this.field,
    this.violations = const [],
  });

  /// Create from validation errors
  factory ValidationException.fromViolations(
    List<ValidationViolation> violations, {
    String? message,
  }) {
    final defaultMessage =
        violations.isNotEmpty ? violations.first.message : 'Validation failed';

    return ValidationException(
      message ?? defaultMessage,
      code: 'VALIDATION_ERROR',
      violations: violations,
      details: {
        'violations': violations.map((v) => v.toJson()).toList(),
      },
    );
  }

  final String? field;
  final List<ValidationViolation> violations;

  @override
  String toString() {
    final buffer = StringBuffer('ValidationException: $message');
    if (violations.isNotEmpty) {
      buffer.write('\nViolations:');
      for (final violation in violations) {
        buffer.write('\n  - ${violation.field}: ${violation.message}');
      }
    }
    return buffer.toString();
  }
}

/// Individual validation violation
class ValidationViolation {
  const ValidationViolation({
    required this.field,
    required this.message,
    this.code,
    this.rejectedValue,
  });

  final String field;
  final String message;
  final String? code;
  final dynamic rejectedValue;

  Map<String, dynamic> toJson() => {
        'field': field,
        'message': message,
        if (code != null) 'code': code,
        if (rejectedValue != null) 'rejectedValue': rejectedValue,
      };

  @override
  String toString() => 'ValidationViolation(field: $field, message: $message)';
}
