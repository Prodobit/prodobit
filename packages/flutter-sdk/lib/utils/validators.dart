import 'package:prodobit_flutter_sdk/utils/constants.dart';

/// Validation utilities for forms and data
class Validators {
  /// Combine multiple validators
  static String? Function(String?) combine(
    List<String? Function(String?)> validators,
  ) {
    return (String? value) {
      for (final validator in validators) {
        final error = validator(value);
        if (error != null) return error;
      }
      return null;
    };
  }

  /// Validate confirmed password
  static String? confirmPassword(String? value, String? originalPassword) {
    if (value == null || value.isEmpty) {
      return 'Please confirm your password';
    }

    if (value != originalPassword) {
      return 'Passwords do not match';
    }

    return null;
  }

  /// Validate currency amount
  static String? currencyAmount(String? value, {String? fieldName}) {
    if (value == null || value.isEmpty) {
      return '${fieldName ?? 'Amount'} is required';
    }

    final amount = double.tryParse(value);
    if (amount == null) {
      return '${fieldName ?? 'Amount'} must be a valid number';
    }

    if (amount < 0) {
      return '${fieldName ?? 'Amount'} cannot be negative';
    }

    // Check for reasonable decimal places (max 2 for currency)
    final decimalPlaces =
        value.split('.').length > 1 ? value.split('.')[1].length : 0;

    if (decimalPlaces > 2) {
      return '${fieldName ?? 'Amount'} cannot have more than 2 decimal places';
    }

    return null;
  }

  /// Validate email address
  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    if (!RegexPatterns.email.hasMatch(value)) {
      return 'Please enter a valid email address';
    }

    return null;
  }

  /// Validate item code
  static String? itemCode(String? value) {
    if (value == null || value.isEmpty) {
      return 'Item code is required';
    }

    if (!RegexPatterns.code.hasMatch(value)) {
      return 'Item code can only contain letters, numbers, hyphens and underscores';
    }

    if (value.length < 2) {
      return 'Item code must be at least 2 characters';
    }

    if (value.length > 20) {
      return 'Item code must be at most 20 characters';
    }

    return null;
  }

  /// Validate maximum length
  static String? maxLength(String? value, int maxLength, {String? fieldName}) {
    if (value != null && value.length > maxLength) {
      return '${fieldName ?? 'This field'} must be at most $maxLength characters';
    }

    return null;
  }

  /// Validate minimum length
  static String? minLength(String? value, int minLength, {String? fieldName}) {
    if (value == null || value.isEmpty) {
      return '${fieldName ?? 'This field'} is required';
    }

    if (value.length < minLength) {
      return '${fieldName ?? 'This field'} must be at least $minLength characters';
    }

    return null;
  }

  /// Validate non-negative number
  static String? nonNegativeNumber(String? value, {String? fieldName}) {
    final numericError = numeric(value, fieldName: fieldName);
    if (numericError != null) return numericError;

    final numericValue = double.parse(value!);
    if (numericValue < 0) {
      return '${fieldName ?? 'This field'} cannot be negative';
    }

    return null;
  }

  /// Validate numeric value
  static String? numeric(String? value, {String? fieldName}) {
    if (value == null || value.isEmpty) {
      return '${fieldName ?? 'This field'} is required';
    }

    final numericValue = double.tryParse(value);
    if (numericValue == null) {
      return '${fieldName ?? 'This field'} must be a valid number';
    }

    return null;
  }

  /// Validate password
  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }

    if (!value.contains(RegExp('[A-Z]'))) {
      return 'Password must contain at least one uppercase letter';
    }

    if (!value.contains(RegExp('[a-z]'))) {
      return 'Password must contain at least one lowercase letter';
    }

    if (!value.contains(RegExp('[0-9]'))) {
      return 'Password must contain at least one number';
    }

    return null;
  }

  /// Validate phone number
  static String? phone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }

    if (!RegexPatterns.phone.hasMatch(value)) {
      return 'Please enter a valid phone number';
    }

    return null;
  }

  /// Validate positive number
  static String? positiveNumber(String? value, {String? fieldName}) {
    final numericError = numeric(value, fieldName: fieldName);
    if (numericError != null) return numericError;

    final numericValue = double.parse(value!);
    if (numericValue <= 0) {
      return '${fieldName ?? 'This field'} must be greater than 0';
    }

    return null;
  }

  /// Validate required field
  static String? required(String? value, {String? fieldName}) {
    if (value == null || value.trim().isEmpty) {
      return '${fieldName ?? 'This field'} is required';
    }
    return null;
  }

  /// Validate URL
  static String? url(String? value) {
    if (value == null || value.isEmpty) {
      return null; // URL is optional in most cases
    }

    if (!RegexPatterns.url.hasMatch(value)) {
      return 'Please enter a valid URL';
    }

    return null;
  }
}
