import 'package:prodobit_flutter_sdk/models/models.dart';

/// Extensions for DateTime
extension DateTimeExtensions on DateTime {
  /// End of day
  DateTime get endOfDay => DateTime(year, month, day, 23, 59, 59, 999);

  /// Check if date is today
  bool get isToday {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  /// Check if date is yesterday
  bool get isYesterday {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return year == yesterday.year &&
        month == yesterday.month &&
        day == yesterday.day;
  }

  /// Start of day
  DateTime get startOfDay => DateTime(year, month, day);

  /// Format as user-friendly string
  String get userFriendly {
    if (isToday) return 'Today';
    if (isYesterday) return 'Yesterday';

    final now = DateTime.now();
    final difference = now.difference(this);

    if (difference.inDays < 7) {
      return '${difference.inDays} days ago';
    } else if (difference.inDays < 30) {
      return '${(difference.inDays / 7).floor()} weeks ago';
    } else if (difference.inDays < 365) {
      return '${(difference.inDays / 30).floor()} months ago';
    } else {
      return '${(difference.inDays / 365).floor()} years ago';
    }
  }
}

/// Extensions for Item
extension ItemExtensions on Item {
  /// Get display name (name with code)
  String get displayName => '$name ($code)';

  /// Check if item has image
  bool get hasImage => imageUrl?.isNotEmpty ?? false;
}

/// Extensions for List
extension ListExtensions<T> on List<T>? {
  /// Get first item or null
  T? get firstOrNull {
    if (isNullOrEmpty) return null;
    return this!.first;
  }

  /// Check if list is not null and not empty
  bool get isNotNullOrEmpty => !isNullOrEmpty;

  /// Check if list is null or empty
  bool get isNullOrEmpty => this == null || this!.isEmpty;

  /// Get last item or null
  T? get lastOrNull {
    if (isNullOrEmpty) return null;
    return this!.last;
  }
}

/// Extensions for Money model
extension MoneyExtensions on Money {
  /// Multiply money by a factor
  Money operator *(double factor) {
    return Money(amount: amount * factor, currency: currency);
  }

  /// Add two Money amounts (must be same currency)
  Money operator +(Money other) {
    if (currency != other.currency) {
      throw ArgumentError('Cannot add different currencies');
    }
    return Money(amount: amount + other.amount, currency: currency);
  }

  /// Subtract two Money amounts (must be same currency)
  Money operator -(Money other) {
    if (currency != other.currency) {
      throw ArgumentError('Cannot subtract different currencies');
    }
    return Money(amount: amount - other.amount, currency: currency);
  }

  /// Divide money by a factor
  Money operator /(double divisor) {
    return Money(amount: amount / divisor, currency: currency);
  }

  /// Convert to another currency (simplified - would need real exchange rates)
  Money convertTo(String newCurrency, {double exchangeRate = 1.0}) {
    return Money(
      amount: amount * exchangeRate,
      currency: newCurrency,
    );
  }

  /// Format money as string
  String formatted({bool showCurrency = true}) {
    final formatted = amount.toStringAsFixed(2);
    return showCurrency ? '$formatted $currency' : formatted;
  }
}

/// Extensions for StockEntry
extension StockEntryExtensions on StockEntry {
  /// Check if stock is low
  bool get isLowStock {
    if (minQuantity == null) return false;
    return availableQuantity <= minQuantity!;
  }

  /// Check if stock is out
  bool get isOutOfStock => availableQuantity <= 0;

  /// Get stock status
  String get stockStatus {
    if (isOutOfStock) return 'Out of Stock';
    if (isLowStock) return 'Low Stock';
    return 'In Stock';
  }
}

/// Extensions for String
extension StringExtensions on String? {
  /// Capitalize first letter
  String? get capitalized {
    if (isNullOrEmpty) return this;
    return '${this![0].toUpperCase()}${this!.substring(1)}';
  }

  /// Check if string is not null and not empty
  bool get isNotNullOrEmpty => !isNullOrEmpty;

  /// Check if string is null or empty
  bool get isNullOrEmpty => this == null || this!.isEmpty;

  /// Truncate string with ellipsis
  String? truncate(int length, {String suffix = '...'}) {
    if (isNullOrEmpty) return this;
    if (this!.length <= length) return this;
    return '${this!.substring(0, length)}$suffix';
  }
}
