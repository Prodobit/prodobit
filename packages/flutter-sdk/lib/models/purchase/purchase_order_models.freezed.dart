// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_order_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PurchaseOrder {
  String get id;
  String get orderNumber;
  String get supplierId;
  String
      get status; // 'draft', 'sent', 'acknowledged', 'approved', 'cancelled', 'closed'
  DateTime get orderDate;
  double get totalAmount;
  double get taxAmount;
  double get netAmount;
  DateTime get createdAt;
  DateTime get updatedAt;
  DateTime? get deliveryDate;
  DateTime? get acknowledgedAt;
  DateTime? get approvedAt;
  DateTime? get sentAt;
  DateTime? get cancelledAt;
  DateTime? get closedAt;
  String? get createdBy;
  String? get approvedBy;
  String? get cancelledBy;
  String? get notes;
  String? get termsAndConditions;
  String? get paymentTerms;
  String? get deliveryAddress;
  String? get billingAddress;
  Map<String, dynamic>? get metadata;

  /// Create a copy of PurchaseOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PurchaseOrderCopyWith<PurchaseOrder> get copyWith =>
      _$PurchaseOrderCopyWithImpl<PurchaseOrder>(
          this as PurchaseOrder, _$identity);

  /// Serializes this PurchaseOrder to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PurchaseOrder &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.netAmount, netAmount) ||
                other.netAmount == netAmount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.acknowledgedAt, acknowledgedAt) ||
                other.acknowledgedAt == acknowledgedAt) &&
            (identical(other.approvedAt, approvedAt) ||
                other.approvedAt == approvedAt) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.closedAt, closedAt) ||
                other.closedAt == closedAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy) &&
            (identical(other.cancelledBy, cancelledBy) ||
                other.cancelledBy == cancelledBy) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.termsAndConditions, termsAndConditions) ||
                other.termsAndConditions == termsAndConditions) &&
            (identical(other.paymentTerms, paymentTerms) ||
                other.paymentTerms == paymentTerms) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            (identical(other.billingAddress, billingAddress) ||
                other.billingAddress == billingAddress) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        orderNumber,
        supplierId,
        status,
        orderDate,
        totalAmount,
        taxAmount,
        netAmount,
        createdAt,
        updatedAt,
        deliveryDate,
        acknowledgedAt,
        approvedAt,
        sentAt,
        cancelledAt,
        closedAt,
        createdBy,
        approvedBy,
        cancelledBy,
        notes,
        termsAndConditions,
        paymentTerms,
        deliveryAddress,
        billingAddress,
        const DeepCollectionEquality().hash(metadata)
      ]);

  @override
  String toString() {
    return 'PurchaseOrder(id: $id, orderNumber: $orderNumber, supplierId: $supplierId, status: $status, orderDate: $orderDate, totalAmount: $totalAmount, taxAmount: $taxAmount, netAmount: $netAmount, createdAt: $createdAt, updatedAt: $updatedAt, deliveryDate: $deliveryDate, acknowledgedAt: $acknowledgedAt, approvedAt: $approvedAt, sentAt: $sentAt, cancelledAt: $cancelledAt, closedAt: $closedAt, createdBy: $createdBy, approvedBy: $approvedBy, cancelledBy: $cancelledBy, notes: $notes, termsAndConditions: $termsAndConditions, paymentTerms: $paymentTerms, deliveryAddress: $deliveryAddress, billingAddress: $billingAddress, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $PurchaseOrderCopyWith<$Res> {
  factory $PurchaseOrderCopyWith(
          PurchaseOrder value, $Res Function(PurchaseOrder) _then) =
      _$PurchaseOrderCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String orderNumber,
      String supplierId,
      String status,
      DateTime orderDate,
      double totalAmount,
      double taxAmount,
      double netAmount,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? deliveryDate,
      DateTime? acknowledgedAt,
      DateTime? approvedAt,
      DateTime? sentAt,
      DateTime? cancelledAt,
      DateTime? closedAt,
      String? createdBy,
      String? approvedBy,
      String? cancelledBy,
      String? notes,
      String? termsAndConditions,
      String? paymentTerms,
      String? deliveryAddress,
      String? billingAddress,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$PurchaseOrderCopyWithImpl<$Res>
    implements $PurchaseOrderCopyWith<$Res> {
  _$PurchaseOrderCopyWithImpl(this._self, this._then);

  final PurchaseOrder _self;
  final $Res Function(PurchaseOrder) _then;

  /// Create a copy of PurchaseOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderNumber = null,
    Object? supplierId = null,
    Object? status = null,
    Object? orderDate = null,
    Object? totalAmount = null,
    Object? taxAmount = null,
    Object? netAmount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deliveryDate = freezed,
    Object? acknowledgedAt = freezed,
    Object? approvedAt = freezed,
    Object? sentAt = freezed,
    Object? cancelledAt = freezed,
    Object? closedAt = freezed,
    Object? createdBy = freezed,
    Object? approvedBy = freezed,
    Object? cancelledBy = freezed,
    Object? notes = freezed,
    Object? termsAndConditions = freezed,
    Object? paymentTerms = freezed,
    Object? deliveryAddress = freezed,
    Object? billingAddress = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderNumber: null == orderNumber
          ? _self.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      supplierId: null == supplierId
          ? _self.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _self.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalAmount: null == totalAmount
          ? _self.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxAmount: null == taxAmount
          ? _self.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      netAmount: null == netAmount
          ? _self.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryDate: freezed == deliveryDate
          ? _self.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      acknowledgedAt: freezed == acknowledgedAt
          ? _self.acknowledgedAt
          : acknowledgedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAt: freezed == approvedAt
          ? _self.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sentAt: freezed == sentAt
          ? _self.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledAt: freezed == cancelledAt
          ? _self.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      closedAt: freezed == closedAt
          ? _self.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedBy: freezed == approvedBy
          ? _self.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelledBy: freezed == cancelledBy
          ? _self.cancelledBy
          : cancelledBy // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _self.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _self.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddress: freezed == deliveryAddress
          ? _self.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddress: freezed == billingAddress
          ? _self.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PurchaseOrder].
extension PurchaseOrderPatterns on PurchaseOrder {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PurchaseOrder value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PurchaseOrder() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PurchaseOrder value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseOrder():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PurchaseOrder value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseOrder() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String orderNumber,
            String supplierId,
            String status,
            DateTime orderDate,
            double totalAmount,
            double taxAmount,
            double netAmount,
            DateTime createdAt,
            DateTime updatedAt,
            DateTime? deliveryDate,
            DateTime? acknowledgedAt,
            DateTime? approvedAt,
            DateTime? sentAt,
            DateTime? cancelledAt,
            DateTime? closedAt,
            String? createdBy,
            String? approvedBy,
            String? cancelledBy,
            String? notes,
            String? termsAndConditions,
            String? paymentTerms,
            String? deliveryAddress,
            String? billingAddress,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PurchaseOrder() when $default != null:
        return $default(
            _that.id,
            _that.orderNumber,
            _that.supplierId,
            _that.status,
            _that.orderDate,
            _that.totalAmount,
            _that.taxAmount,
            _that.netAmount,
            _that.createdAt,
            _that.updatedAt,
            _that.deliveryDate,
            _that.acknowledgedAt,
            _that.approvedAt,
            _that.sentAt,
            _that.cancelledAt,
            _that.closedAt,
            _that.createdBy,
            _that.approvedBy,
            _that.cancelledBy,
            _that.notes,
            _that.termsAndConditions,
            _that.paymentTerms,
            _that.deliveryAddress,
            _that.billingAddress,
            _that.metadata);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String orderNumber,
            String supplierId,
            String status,
            DateTime orderDate,
            double totalAmount,
            double taxAmount,
            double netAmount,
            DateTime createdAt,
            DateTime updatedAt,
            DateTime? deliveryDate,
            DateTime? acknowledgedAt,
            DateTime? approvedAt,
            DateTime? sentAt,
            DateTime? cancelledAt,
            DateTime? closedAt,
            String? createdBy,
            String? approvedBy,
            String? cancelledBy,
            String? notes,
            String? termsAndConditions,
            String? paymentTerms,
            String? deliveryAddress,
            String? billingAddress,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseOrder():
        return $default(
            _that.id,
            _that.orderNumber,
            _that.supplierId,
            _that.status,
            _that.orderDate,
            _that.totalAmount,
            _that.taxAmount,
            _that.netAmount,
            _that.createdAt,
            _that.updatedAt,
            _that.deliveryDate,
            _that.acknowledgedAt,
            _that.approvedAt,
            _that.sentAt,
            _that.cancelledAt,
            _that.closedAt,
            _that.createdBy,
            _that.approvedBy,
            _that.cancelledBy,
            _that.notes,
            _that.termsAndConditions,
            _that.paymentTerms,
            _that.deliveryAddress,
            _that.billingAddress,
            _that.metadata);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String orderNumber,
            String supplierId,
            String status,
            DateTime orderDate,
            double totalAmount,
            double taxAmount,
            double netAmount,
            DateTime createdAt,
            DateTime updatedAt,
            DateTime? deliveryDate,
            DateTime? acknowledgedAt,
            DateTime? approvedAt,
            DateTime? sentAt,
            DateTime? cancelledAt,
            DateTime? closedAt,
            String? createdBy,
            String? approvedBy,
            String? cancelledBy,
            String? notes,
            String? termsAndConditions,
            String? paymentTerms,
            String? deliveryAddress,
            String? billingAddress,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseOrder() when $default != null:
        return $default(
            _that.id,
            _that.orderNumber,
            _that.supplierId,
            _that.status,
            _that.orderDate,
            _that.totalAmount,
            _that.taxAmount,
            _that.netAmount,
            _that.createdAt,
            _that.updatedAt,
            _that.deliveryDate,
            _that.acknowledgedAt,
            _that.approvedAt,
            _that.sentAt,
            _that.cancelledAt,
            _that.closedAt,
            _that.createdBy,
            _that.approvedBy,
            _that.cancelledBy,
            _that.notes,
            _that.termsAndConditions,
            _that.paymentTerms,
            _that.deliveryAddress,
            _that.billingAddress,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PurchaseOrder implements PurchaseOrder {
  const _PurchaseOrder(
      {required this.id,
      required this.orderNumber,
      required this.supplierId,
      required this.status,
      required this.orderDate,
      required this.totalAmount,
      required this.taxAmount,
      required this.netAmount,
      required this.createdAt,
      required this.updatedAt,
      this.deliveryDate,
      this.acknowledgedAt,
      this.approvedAt,
      this.sentAt,
      this.cancelledAt,
      this.closedAt,
      this.createdBy,
      this.approvedBy,
      this.cancelledBy,
      this.notes,
      this.termsAndConditions,
      this.paymentTerms,
      this.deliveryAddress,
      this.billingAddress,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _PurchaseOrder.fromJson(Map<String, dynamic> json) =>
      _$PurchaseOrderFromJson(json);

  @override
  final String id;
  @override
  final String orderNumber;
  @override
  final String supplierId;
  @override
  final String status;
// 'draft', 'sent', 'acknowledged', 'approved', 'cancelled', 'closed'
  @override
  final DateTime orderDate;
  @override
  final double totalAmount;
  @override
  final double taxAmount;
  @override
  final double netAmount;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime? deliveryDate;
  @override
  final DateTime? acknowledgedAt;
  @override
  final DateTime? approvedAt;
  @override
  final DateTime? sentAt;
  @override
  final DateTime? cancelledAt;
  @override
  final DateTime? closedAt;
  @override
  final String? createdBy;
  @override
  final String? approvedBy;
  @override
  final String? cancelledBy;
  @override
  final String? notes;
  @override
  final String? termsAndConditions;
  @override
  final String? paymentTerms;
  @override
  final String? deliveryAddress;
  @override
  final String? billingAddress;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of PurchaseOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PurchaseOrderCopyWith<_PurchaseOrder> get copyWith =>
      __$PurchaseOrderCopyWithImpl<_PurchaseOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PurchaseOrderToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PurchaseOrder &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.netAmount, netAmount) ||
                other.netAmount == netAmount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.acknowledgedAt, acknowledgedAt) ||
                other.acknowledgedAt == acknowledgedAt) &&
            (identical(other.approvedAt, approvedAt) ||
                other.approvedAt == approvedAt) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.closedAt, closedAt) ||
                other.closedAt == closedAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy) &&
            (identical(other.cancelledBy, cancelledBy) ||
                other.cancelledBy == cancelledBy) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.termsAndConditions, termsAndConditions) ||
                other.termsAndConditions == termsAndConditions) &&
            (identical(other.paymentTerms, paymentTerms) ||
                other.paymentTerms == paymentTerms) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            (identical(other.billingAddress, billingAddress) ||
                other.billingAddress == billingAddress) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        orderNumber,
        supplierId,
        status,
        orderDate,
        totalAmount,
        taxAmount,
        netAmount,
        createdAt,
        updatedAt,
        deliveryDate,
        acknowledgedAt,
        approvedAt,
        sentAt,
        cancelledAt,
        closedAt,
        createdBy,
        approvedBy,
        cancelledBy,
        notes,
        termsAndConditions,
        paymentTerms,
        deliveryAddress,
        billingAddress,
        const DeepCollectionEquality().hash(_metadata)
      ]);

  @override
  String toString() {
    return 'PurchaseOrder(id: $id, orderNumber: $orderNumber, supplierId: $supplierId, status: $status, orderDate: $orderDate, totalAmount: $totalAmount, taxAmount: $taxAmount, netAmount: $netAmount, createdAt: $createdAt, updatedAt: $updatedAt, deliveryDate: $deliveryDate, acknowledgedAt: $acknowledgedAt, approvedAt: $approvedAt, sentAt: $sentAt, cancelledAt: $cancelledAt, closedAt: $closedAt, createdBy: $createdBy, approvedBy: $approvedBy, cancelledBy: $cancelledBy, notes: $notes, termsAndConditions: $termsAndConditions, paymentTerms: $paymentTerms, deliveryAddress: $deliveryAddress, billingAddress: $billingAddress, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$PurchaseOrderCopyWith<$Res>
    implements $PurchaseOrderCopyWith<$Res> {
  factory _$PurchaseOrderCopyWith(
          _PurchaseOrder value, $Res Function(_PurchaseOrder) _then) =
      __$PurchaseOrderCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String orderNumber,
      String supplierId,
      String status,
      DateTime orderDate,
      double totalAmount,
      double taxAmount,
      double netAmount,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? deliveryDate,
      DateTime? acknowledgedAt,
      DateTime? approvedAt,
      DateTime? sentAt,
      DateTime? cancelledAt,
      DateTime? closedAt,
      String? createdBy,
      String? approvedBy,
      String? cancelledBy,
      String? notes,
      String? termsAndConditions,
      String? paymentTerms,
      String? deliveryAddress,
      String? billingAddress,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$PurchaseOrderCopyWithImpl<$Res>
    implements _$PurchaseOrderCopyWith<$Res> {
  __$PurchaseOrderCopyWithImpl(this._self, this._then);

  final _PurchaseOrder _self;
  final $Res Function(_PurchaseOrder) _then;

  /// Create a copy of PurchaseOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? orderNumber = null,
    Object? supplierId = null,
    Object? status = null,
    Object? orderDate = null,
    Object? totalAmount = null,
    Object? taxAmount = null,
    Object? netAmount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deliveryDate = freezed,
    Object? acknowledgedAt = freezed,
    Object? approvedAt = freezed,
    Object? sentAt = freezed,
    Object? cancelledAt = freezed,
    Object? closedAt = freezed,
    Object? createdBy = freezed,
    Object? approvedBy = freezed,
    Object? cancelledBy = freezed,
    Object? notes = freezed,
    Object? termsAndConditions = freezed,
    Object? paymentTerms = freezed,
    Object? deliveryAddress = freezed,
    Object? billingAddress = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_PurchaseOrder(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderNumber: null == orderNumber
          ? _self.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      supplierId: null == supplierId
          ? _self.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _self.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalAmount: null == totalAmount
          ? _self.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxAmount: null == taxAmount
          ? _self.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      netAmount: null == netAmount
          ? _self.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryDate: freezed == deliveryDate
          ? _self.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      acknowledgedAt: freezed == acknowledgedAt
          ? _self.acknowledgedAt
          : acknowledgedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAt: freezed == approvedAt
          ? _self.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sentAt: freezed == sentAt
          ? _self.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledAt: freezed == cancelledAt
          ? _self.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      closedAt: freezed == closedAt
          ? _self.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedBy: freezed == approvedBy
          ? _self.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelledBy: freezed == cancelledBy
          ? _self.cancelledBy
          : cancelledBy // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _self.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _self.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddress: freezed == deliveryAddress
          ? _self.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddress: freezed == billingAddress
          ? _self.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$PurchaseOrderLineItem {
  String get id;
  String get purchaseOrderId;
  String get itemId;
  double get quantity;
  String get unit;
  double get unitPrice;
  double get totalPrice;
  double get discountAmount;
  double get taxAmount;
  double get netAmount;
  String get status; // 'pending', 'acknowledged', 'received', 'cancelled'
  int? get sequence;
  DateTime? get requestedDeliveryDate;
  DateTime? get confirmedDeliveryDate;
  double? get receivedQuantity;
  double? get returnedQuantity;
  String? get notes;
  String? get specification;
  Map<String, dynamic>? get attributes;
  Map<String, dynamic>? get metadata;

  /// Create a copy of PurchaseOrderLineItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PurchaseOrderLineItemCopyWith<PurchaseOrderLineItem> get copyWith =>
      _$PurchaseOrderLineItemCopyWithImpl<PurchaseOrderLineItem>(
          this as PurchaseOrderLineItem, _$identity);

  /// Serializes this PurchaseOrderLineItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PurchaseOrderLineItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.purchaseOrderId, purchaseOrderId) ||
                other.purchaseOrderId == purchaseOrderId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.netAmount, netAmount) ||
                other.netAmount == netAmount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.requestedDeliveryDate, requestedDeliveryDate) ||
                other.requestedDeliveryDate == requestedDeliveryDate) &&
            (identical(other.confirmedDeliveryDate, confirmedDeliveryDate) ||
                other.confirmedDeliveryDate == confirmedDeliveryDate) &&
            (identical(other.receivedQuantity, receivedQuantity) ||
                other.receivedQuantity == receivedQuantity) &&
            (identical(other.returnedQuantity, returnedQuantity) ||
                other.returnedQuantity == returnedQuantity) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.specification, specification) ||
                other.specification == specification) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        purchaseOrderId,
        itemId,
        quantity,
        unit,
        unitPrice,
        totalPrice,
        discountAmount,
        taxAmount,
        netAmount,
        status,
        sequence,
        requestedDeliveryDate,
        confirmedDeliveryDate,
        receivedQuantity,
        returnedQuantity,
        notes,
        specification,
        const DeepCollectionEquality().hash(attributes),
        const DeepCollectionEquality().hash(metadata)
      ]);

  @override
  String toString() {
    return 'PurchaseOrderLineItem(id: $id, purchaseOrderId: $purchaseOrderId, itemId: $itemId, quantity: $quantity, unit: $unit, unitPrice: $unitPrice, totalPrice: $totalPrice, discountAmount: $discountAmount, taxAmount: $taxAmount, netAmount: $netAmount, status: $status, sequence: $sequence, requestedDeliveryDate: $requestedDeliveryDate, confirmedDeliveryDate: $confirmedDeliveryDate, receivedQuantity: $receivedQuantity, returnedQuantity: $returnedQuantity, notes: $notes, specification: $specification, attributes: $attributes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $PurchaseOrderLineItemCopyWith<$Res> {
  factory $PurchaseOrderLineItemCopyWith(PurchaseOrderLineItem value,
          $Res Function(PurchaseOrderLineItem) _then) =
      _$PurchaseOrderLineItemCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String purchaseOrderId,
      String itemId,
      double quantity,
      String unit,
      double unitPrice,
      double totalPrice,
      double discountAmount,
      double taxAmount,
      double netAmount,
      String status,
      int? sequence,
      DateTime? requestedDeliveryDate,
      DateTime? confirmedDeliveryDate,
      double? receivedQuantity,
      double? returnedQuantity,
      String? notes,
      String? specification,
      Map<String, dynamic>? attributes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$PurchaseOrderLineItemCopyWithImpl<$Res>
    implements $PurchaseOrderLineItemCopyWith<$Res> {
  _$PurchaseOrderLineItemCopyWithImpl(this._self, this._then);

  final PurchaseOrderLineItem _self;
  final $Res Function(PurchaseOrderLineItem) _then;

  /// Create a copy of PurchaseOrderLineItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? purchaseOrderId = null,
    Object? itemId = null,
    Object? quantity = null,
    Object? unit = null,
    Object? unitPrice = null,
    Object? totalPrice = null,
    Object? discountAmount = null,
    Object? taxAmount = null,
    Object? netAmount = null,
    Object? status = null,
    Object? sequence = freezed,
    Object? requestedDeliveryDate = freezed,
    Object? confirmedDeliveryDate = freezed,
    Object? receivedQuantity = freezed,
    Object? returnedQuantity = freezed,
    Object? notes = freezed,
    Object? specification = freezed,
    Object? attributes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseOrderId: null == purchaseOrderId
          ? _self.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _self.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _self.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: null == discountAmount
          ? _self.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxAmount: null == taxAmount
          ? _self.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      netAmount: null == netAmount
          ? _self.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      sequence: freezed == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      requestedDeliveryDate: freezed == requestedDeliveryDate
          ? _self.requestedDeliveryDate
          : requestedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      confirmedDeliveryDate: freezed == confirmedDeliveryDate
          ? _self.confirmedDeliveryDate
          : confirmedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      receivedQuantity: freezed == receivedQuantity
          ? _self.receivedQuantity
          : receivedQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      returnedQuantity: freezed == returnedQuantity
          ? _self.returnedQuantity
          : returnedQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _self.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PurchaseOrderLineItem].
extension PurchaseOrderLineItemPatterns on PurchaseOrderLineItem {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PurchaseOrderLineItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PurchaseOrderLineItem() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PurchaseOrderLineItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseOrderLineItem():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PurchaseOrderLineItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseOrderLineItem() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String purchaseOrderId,
            String itemId,
            double quantity,
            String unit,
            double unitPrice,
            double totalPrice,
            double discountAmount,
            double taxAmount,
            double netAmount,
            String status,
            int? sequence,
            DateTime? requestedDeliveryDate,
            DateTime? confirmedDeliveryDate,
            double? receivedQuantity,
            double? returnedQuantity,
            String? notes,
            String? specification,
            Map<String, dynamic>? attributes,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PurchaseOrderLineItem() when $default != null:
        return $default(
            _that.id,
            _that.purchaseOrderId,
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.unitPrice,
            _that.totalPrice,
            _that.discountAmount,
            _that.taxAmount,
            _that.netAmount,
            _that.status,
            _that.sequence,
            _that.requestedDeliveryDate,
            _that.confirmedDeliveryDate,
            _that.receivedQuantity,
            _that.returnedQuantity,
            _that.notes,
            _that.specification,
            _that.attributes,
            _that.metadata);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String purchaseOrderId,
            String itemId,
            double quantity,
            String unit,
            double unitPrice,
            double totalPrice,
            double discountAmount,
            double taxAmount,
            double netAmount,
            String status,
            int? sequence,
            DateTime? requestedDeliveryDate,
            DateTime? confirmedDeliveryDate,
            double? receivedQuantity,
            double? returnedQuantity,
            String? notes,
            String? specification,
            Map<String, dynamic>? attributes,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseOrderLineItem():
        return $default(
            _that.id,
            _that.purchaseOrderId,
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.unitPrice,
            _that.totalPrice,
            _that.discountAmount,
            _that.taxAmount,
            _that.netAmount,
            _that.status,
            _that.sequence,
            _that.requestedDeliveryDate,
            _that.confirmedDeliveryDate,
            _that.receivedQuantity,
            _that.returnedQuantity,
            _that.notes,
            _that.specification,
            _that.attributes,
            _that.metadata);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String purchaseOrderId,
            String itemId,
            double quantity,
            String unit,
            double unitPrice,
            double totalPrice,
            double discountAmount,
            double taxAmount,
            double netAmount,
            String status,
            int? sequence,
            DateTime? requestedDeliveryDate,
            DateTime? confirmedDeliveryDate,
            double? receivedQuantity,
            double? returnedQuantity,
            String? notes,
            String? specification,
            Map<String, dynamic>? attributes,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseOrderLineItem() when $default != null:
        return $default(
            _that.id,
            _that.purchaseOrderId,
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.unitPrice,
            _that.totalPrice,
            _that.discountAmount,
            _that.taxAmount,
            _that.netAmount,
            _that.status,
            _that.sequence,
            _that.requestedDeliveryDate,
            _that.confirmedDeliveryDate,
            _that.receivedQuantity,
            _that.returnedQuantity,
            _that.notes,
            _that.specification,
            _that.attributes,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PurchaseOrderLineItem implements PurchaseOrderLineItem {
  const _PurchaseOrderLineItem(
      {required this.id,
      required this.purchaseOrderId,
      required this.itemId,
      required this.quantity,
      required this.unit,
      required this.unitPrice,
      required this.totalPrice,
      required this.discountAmount,
      required this.taxAmount,
      required this.netAmount,
      required this.status,
      this.sequence,
      this.requestedDeliveryDate,
      this.confirmedDeliveryDate,
      this.receivedQuantity,
      this.returnedQuantity,
      this.notes,
      this.specification,
      final Map<String, dynamic>? attributes,
      final Map<String, dynamic>? metadata})
      : _attributes = attributes,
        _metadata = metadata;
  factory _PurchaseOrderLineItem.fromJson(Map<String, dynamic> json) =>
      _$PurchaseOrderLineItemFromJson(json);

  @override
  final String id;
  @override
  final String purchaseOrderId;
  @override
  final String itemId;
  @override
  final double quantity;
  @override
  final String unit;
  @override
  final double unitPrice;
  @override
  final double totalPrice;
  @override
  final double discountAmount;
  @override
  final double taxAmount;
  @override
  final double netAmount;
  @override
  final String status;
// 'pending', 'acknowledged', 'received', 'cancelled'
  @override
  final int? sequence;
  @override
  final DateTime? requestedDeliveryDate;
  @override
  final DateTime? confirmedDeliveryDate;
  @override
  final double? receivedQuantity;
  @override
  final double? returnedQuantity;
  @override
  final String? notes;
  @override
  final String? specification;
  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of PurchaseOrderLineItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PurchaseOrderLineItemCopyWith<_PurchaseOrderLineItem> get copyWith =>
      __$PurchaseOrderLineItemCopyWithImpl<_PurchaseOrderLineItem>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PurchaseOrderLineItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PurchaseOrderLineItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.purchaseOrderId, purchaseOrderId) ||
                other.purchaseOrderId == purchaseOrderId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.netAmount, netAmount) ||
                other.netAmount == netAmount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.requestedDeliveryDate, requestedDeliveryDate) ||
                other.requestedDeliveryDate == requestedDeliveryDate) &&
            (identical(other.confirmedDeliveryDate, confirmedDeliveryDate) ||
                other.confirmedDeliveryDate == confirmedDeliveryDate) &&
            (identical(other.receivedQuantity, receivedQuantity) ||
                other.receivedQuantity == receivedQuantity) &&
            (identical(other.returnedQuantity, returnedQuantity) ||
                other.returnedQuantity == returnedQuantity) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.specification, specification) ||
                other.specification == specification) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        purchaseOrderId,
        itemId,
        quantity,
        unit,
        unitPrice,
        totalPrice,
        discountAmount,
        taxAmount,
        netAmount,
        status,
        sequence,
        requestedDeliveryDate,
        confirmedDeliveryDate,
        receivedQuantity,
        returnedQuantity,
        notes,
        specification,
        const DeepCollectionEquality().hash(_attributes),
        const DeepCollectionEquality().hash(_metadata)
      ]);

  @override
  String toString() {
    return 'PurchaseOrderLineItem(id: $id, purchaseOrderId: $purchaseOrderId, itemId: $itemId, quantity: $quantity, unit: $unit, unitPrice: $unitPrice, totalPrice: $totalPrice, discountAmount: $discountAmount, taxAmount: $taxAmount, netAmount: $netAmount, status: $status, sequence: $sequence, requestedDeliveryDate: $requestedDeliveryDate, confirmedDeliveryDate: $confirmedDeliveryDate, receivedQuantity: $receivedQuantity, returnedQuantity: $returnedQuantity, notes: $notes, specification: $specification, attributes: $attributes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$PurchaseOrderLineItemCopyWith<$Res>
    implements $PurchaseOrderLineItemCopyWith<$Res> {
  factory _$PurchaseOrderLineItemCopyWith(_PurchaseOrderLineItem value,
          $Res Function(_PurchaseOrderLineItem) _then) =
      __$PurchaseOrderLineItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String purchaseOrderId,
      String itemId,
      double quantity,
      String unit,
      double unitPrice,
      double totalPrice,
      double discountAmount,
      double taxAmount,
      double netAmount,
      String status,
      int? sequence,
      DateTime? requestedDeliveryDate,
      DateTime? confirmedDeliveryDate,
      double? receivedQuantity,
      double? returnedQuantity,
      String? notes,
      String? specification,
      Map<String, dynamic>? attributes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$PurchaseOrderLineItemCopyWithImpl<$Res>
    implements _$PurchaseOrderLineItemCopyWith<$Res> {
  __$PurchaseOrderLineItemCopyWithImpl(this._self, this._then);

  final _PurchaseOrderLineItem _self;
  final $Res Function(_PurchaseOrderLineItem) _then;

  /// Create a copy of PurchaseOrderLineItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? purchaseOrderId = null,
    Object? itemId = null,
    Object? quantity = null,
    Object? unit = null,
    Object? unitPrice = null,
    Object? totalPrice = null,
    Object? discountAmount = null,
    Object? taxAmount = null,
    Object? netAmount = null,
    Object? status = null,
    Object? sequence = freezed,
    Object? requestedDeliveryDate = freezed,
    Object? confirmedDeliveryDate = freezed,
    Object? receivedQuantity = freezed,
    Object? returnedQuantity = freezed,
    Object? notes = freezed,
    Object? specification = freezed,
    Object? attributes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_PurchaseOrderLineItem(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseOrderId: null == purchaseOrderId
          ? _self.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _self.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _self.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: null == discountAmount
          ? _self.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxAmount: null == taxAmount
          ? _self.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      netAmount: null == netAmount
          ? _self.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      sequence: freezed == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      requestedDeliveryDate: freezed == requestedDeliveryDate
          ? _self.requestedDeliveryDate
          : requestedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      confirmedDeliveryDate: freezed == confirmedDeliveryDate
          ? _self.confirmedDeliveryDate
          : confirmedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      receivedQuantity: freezed == receivedQuantity
          ? _self.receivedQuantity
          : receivedQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      returnedQuantity: freezed == returnedQuantity
          ? _self.returnedQuantity
          : returnedQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _self.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$CreatePurchaseOrderRequest {
  String get supplierId;
  DateTime get orderDate;
  DateTime? get deliveryDate;
  String? get notes;
  String? get termsAndConditions;
  String? get paymentTerms;
  String? get deliveryAddress;
  String? get billingAddress;
  List<CreatePurchaseOrderLineItemRequest>? get lineItems;
  Map<String, dynamic>? get metadata;

  /// Create a copy of CreatePurchaseOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreatePurchaseOrderRequestCopyWith<CreatePurchaseOrderRequest>
      get copyWith =>
          _$CreatePurchaseOrderRequestCopyWithImpl<CreatePurchaseOrderRequest>(
              this as CreatePurchaseOrderRequest, _$identity);

  /// Serializes this CreatePurchaseOrderRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreatePurchaseOrderRequest &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.termsAndConditions, termsAndConditions) ||
                other.termsAndConditions == termsAndConditions) &&
            (identical(other.paymentTerms, paymentTerms) ||
                other.paymentTerms == paymentTerms) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            (identical(other.billingAddress, billingAddress) ||
                other.billingAddress == billingAddress) &&
            const DeepCollectionEquality().equals(other.lineItems, lineItems) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      supplierId,
      orderDate,
      deliveryDate,
      notes,
      termsAndConditions,
      paymentTerms,
      deliveryAddress,
      billingAddress,
      const DeepCollectionEquality().hash(lineItems),
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'CreatePurchaseOrderRequest(supplierId: $supplierId, orderDate: $orderDate, deliveryDate: $deliveryDate, notes: $notes, termsAndConditions: $termsAndConditions, paymentTerms: $paymentTerms, deliveryAddress: $deliveryAddress, billingAddress: $billingAddress, lineItems: $lineItems, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $CreatePurchaseOrderRequestCopyWith<$Res> {
  factory $CreatePurchaseOrderRequestCopyWith(CreatePurchaseOrderRequest value,
          $Res Function(CreatePurchaseOrderRequest) _then) =
      _$CreatePurchaseOrderRequestCopyWithImpl;
  @useResult
  $Res call(
      {String supplierId,
      DateTime orderDate,
      DateTime? deliveryDate,
      String? notes,
      String? termsAndConditions,
      String? paymentTerms,
      String? deliveryAddress,
      String? billingAddress,
      List<CreatePurchaseOrderLineItemRequest>? lineItems,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$CreatePurchaseOrderRequestCopyWithImpl<$Res>
    implements $CreatePurchaseOrderRequestCopyWith<$Res> {
  _$CreatePurchaseOrderRequestCopyWithImpl(this._self, this._then);

  final CreatePurchaseOrderRequest _self;
  final $Res Function(CreatePurchaseOrderRequest) _then;

  /// Create a copy of CreatePurchaseOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supplierId = null,
    Object? orderDate = null,
    Object? deliveryDate = freezed,
    Object? notes = freezed,
    Object? termsAndConditions = freezed,
    Object? paymentTerms = freezed,
    Object? deliveryAddress = freezed,
    Object? billingAddress = freezed,
    Object? lineItems = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      supplierId: null == supplierId
          ? _self.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _self.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryDate: freezed == deliveryDate
          ? _self.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _self.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _self.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddress: freezed == deliveryAddress
          ? _self.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddress: freezed == billingAddress
          ? _self.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      lineItems: freezed == lineItems
          ? _self.lineItems
          : lineItems // ignore: cast_nullable_to_non_nullable
              as List<CreatePurchaseOrderLineItemRequest>?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreatePurchaseOrderRequest].
extension CreatePurchaseOrderRequestPatterns on CreatePurchaseOrderRequest {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CreatePurchaseOrderRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePurchaseOrderRequest() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CreatePurchaseOrderRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePurchaseOrderRequest():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CreatePurchaseOrderRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePurchaseOrderRequest() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String supplierId,
            DateTime orderDate,
            DateTime? deliveryDate,
            String? notes,
            String? termsAndConditions,
            String? paymentTerms,
            String? deliveryAddress,
            String? billingAddress,
            List<CreatePurchaseOrderLineItemRequest>? lineItems,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePurchaseOrderRequest() when $default != null:
        return $default(
            _that.supplierId,
            _that.orderDate,
            _that.deliveryDate,
            _that.notes,
            _that.termsAndConditions,
            _that.paymentTerms,
            _that.deliveryAddress,
            _that.billingAddress,
            _that.lineItems,
            _that.metadata);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String supplierId,
            DateTime orderDate,
            DateTime? deliveryDate,
            String? notes,
            String? termsAndConditions,
            String? paymentTerms,
            String? deliveryAddress,
            String? billingAddress,
            List<CreatePurchaseOrderLineItemRequest>? lineItems,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePurchaseOrderRequest():
        return $default(
            _that.supplierId,
            _that.orderDate,
            _that.deliveryDate,
            _that.notes,
            _that.termsAndConditions,
            _that.paymentTerms,
            _that.deliveryAddress,
            _that.billingAddress,
            _that.lineItems,
            _that.metadata);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String supplierId,
            DateTime orderDate,
            DateTime? deliveryDate,
            String? notes,
            String? termsAndConditions,
            String? paymentTerms,
            String? deliveryAddress,
            String? billingAddress,
            List<CreatePurchaseOrderLineItemRequest>? lineItems,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePurchaseOrderRequest() when $default != null:
        return $default(
            _that.supplierId,
            _that.orderDate,
            _that.deliveryDate,
            _that.notes,
            _that.termsAndConditions,
            _that.paymentTerms,
            _that.deliveryAddress,
            _that.billingAddress,
            _that.lineItems,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreatePurchaseOrderRequest implements CreatePurchaseOrderRequest {
  const _CreatePurchaseOrderRequest(
      {required this.supplierId,
      required this.orderDate,
      this.deliveryDate,
      this.notes,
      this.termsAndConditions,
      this.paymentTerms,
      this.deliveryAddress,
      this.billingAddress,
      final List<CreatePurchaseOrderLineItemRequest>? lineItems,
      final Map<String, dynamic>? metadata})
      : _lineItems = lineItems,
        _metadata = metadata;
  factory _CreatePurchaseOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePurchaseOrderRequestFromJson(json);

  @override
  final String supplierId;
  @override
  final DateTime orderDate;
  @override
  final DateTime? deliveryDate;
  @override
  final String? notes;
  @override
  final String? termsAndConditions;
  @override
  final String? paymentTerms;
  @override
  final String? deliveryAddress;
  @override
  final String? billingAddress;
  final List<CreatePurchaseOrderLineItemRequest>? _lineItems;
  @override
  List<CreatePurchaseOrderLineItemRequest>? get lineItems {
    final value = _lineItems;
    if (value == null) return null;
    if (_lineItems is EqualUnmodifiableListView) return _lineItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of CreatePurchaseOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreatePurchaseOrderRequestCopyWith<_CreatePurchaseOrderRequest>
      get copyWith => __$CreatePurchaseOrderRequestCopyWithImpl<
          _CreatePurchaseOrderRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreatePurchaseOrderRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreatePurchaseOrderRequest &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.termsAndConditions, termsAndConditions) ||
                other.termsAndConditions == termsAndConditions) &&
            (identical(other.paymentTerms, paymentTerms) ||
                other.paymentTerms == paymentTerms) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            (identical(other.billingAddress, billingAddress) ||
                other.billingAddress == billingAddress) &&
            const DeepCollectionEquality()
                .equals(other._lineItems, _lineItems) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      supplierId,
      orderDate,
      deliveryDate,
      notes,
      termsAndConditions,
      paymentTerms,
      deliveryAddress,
      billingAddress,
      const DeepCollectionEquality().hash(_lineItems),
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'CreatePurchaseOrderRequest(supplierId: $supplierId, orderDate: $orderDate, deliveryDate: $deliveryDate, notes: $notes, termsAndConditions: $termsAndConditions, paymentTerms: $paymentTerms, deliveryAddress: $deliveryAddress, billingAddress: $billingAddress, lineItems: $lineItems, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$CreatePurchaseOrderRequestCopyWith<$Res>
    implements $CreatePurchaseOrderRequestCopyWith<$Res> {
  factory _$CreatePurchaseOrderRequestCopyWith(
          _CreatePurchaseOrderRequest value,
          $Res Function(_CreatePurchaseOrderRequest) _then) =
      __$CreatePurchaseOrderRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String supplierId,
      DateTime orderDate,
      DateTime? deliveryDate,
      String? notes,
      String? termsAndConditions,
      String? paymentTerms,
      String? deliveryAddress,
      String? billingAddress,
      List<CreatePurchaseOrderLineItemRequest>? lineItems,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$CreatePurchaseOrderRequestCopyWithImpl<$Res>
    implements _$CreatePurchaseOrderRequestCopyWith<$Res> {
  __$CreatePurchaseOrderRequestCopyWithImpl(this._self, this._then);

  final _CreatePurchaseOrderRequest _self;
  final $Res Function(_CreatePurchaseOrderRequest) _then;

  /// Create a copy of CreatePurchaseOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? supplierId = null,
    Object? orderDate = null,
    Object? deliveryDate = freezed,
    Object? notes = freezed,
    Object? termsAndConditions = freezed,
    Object? paymentTerms = freezed,
    Object? deliveryAddress = freezed,
    Object? billingAddress = freezed,
    Object? lineItems = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_CreatePurchaseOrderRequest(
      supplierId: null == supplierId
          ? _self.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _self.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryDate: freezed == deliveryDate
          ? _self.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _self.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _self.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddress: freezed == deliveryAddress
          ? _self.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddress: freezed == billingAddress
          ? _self.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      lineItems: freezed == lineItems
          ? _self._lineItems
          : lineItems // ignore: cast_nullable_to_non_nullable
              as List<CreatePurchaseOrderLineItemRequest>?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$CreatePurchaseOrderLineItemRequest {
  String get itemId;
  double get quantity;
  String get unit;
  double get unitPrice;
  double? get discountAmount;
  double? get taxAmount;
  int? get sequence;
  DateTime? get requestedDeliveryDate;
  String? get notes;
  String? get specification;
  Map<String, dynamic>? get attributes;

  /// Create a copy of CreatePurchaseOrderLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreatePurchaseOrderLineItemRequestCopyWith<
          CreatePurchaseOrderLineItemRequest>
      get copyWith => _$CreatePurchaseOrderLineItemRequestCopyWithImpl<
              CreatePurchaseOrderLineItemRequest>(
          this as CreatePurchaseOrderLineItemRequest, _$identity);

  /// Serializes this CreatePurchaseOrderLineItemRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreatePurchaseOrderLineItemRequest &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.requestedDeliveryDate, requestedDeliveryDate) ||
                other.requestedDeliveryDate == requestedDeliveryDate) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.specification, specification) ||
                other.specification == specification) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemId,
      quantity,
      unit,
      unitPrice,
      discountAmount,
      taxAmount,
      sequence,
      requestedDeliveryDate,
      notes,
      specification,
      const DeepCollectionEquality().hash(attributes));

  @override
  String toString() {
    return 'CreatePurchaseOrderLineItemRequest(itemId: $itemId, quantity: $quantity, unit: $unit, unitPrice: $unitPrice, discountAmount: $discountAmount, taxAmount: $taxAmount, sequence: $sequence, requestedDeliveryDate: $requestedDeliveryDate, notes: $notes, specification: $specification, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class $CreatePurchaseOrderLineItemRequestCopyWith<$Res> {
  factory $CreatePurchaseOrderLineItemRequestCopyWith(
          CreatePurchaseOrderLineItemRequest value,
          $Res Function(CreatePurchaseOrderLineItemRequest) _then) =
      _$CreatePurchaseOrderLineItemRequestCopyWithImpl;
  @useResult
  $Res call(
      {String itemId,
      double quantity,
      String unit,
      double unitPrice,
      double? discountAmount,
      double? taxAmount,
      int? sequence,
      DateTime? requestedDeliveryDate,
      String? notes,
      String? specification,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class _$CreatePurchaseOrderLineItemRequestCopyWithImpl<$Res>
    implements $CreatePurchaseOrderLineItemRequestCopyWith<$Res> {
  _$CreatePurchaseOrderLineItemRequestCopyWithImpl(this._self, this._then);

  final CreatePurchaseOrderLineItemRequest _self;
  final $Res Function(CreatePurchaseOrderLineItemRequest) _then;

  /// Create a copy of CreatePurchaseOrderLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? quantity = null,
    Object? unit = null,
    Object? unitPrice = null,
    Object? discountAmount = freezed,
    Object? taxAmount = freezed,
    Object? sequence = freezed,
    Object? requestedDeliveryDate = freezed,
    Object? notes = freezed,
    Object? specification = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_self.copyWith(
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _self.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: freezed == discountAmount
          ? _self.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      taxAmount: freezed == taxAmount
          ? _self.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      requestedDeliveryDate: freezed == requestedDeliveryDate
          ? _self.requestedDeliveryDate
          : requestedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _self.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreatePurchaseOrderLineItemRequest].
extension CreatePurchaseOrderLineItemRequestPatterns
    on CreatePurchaseOrderLineItemRequest {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CreatePurchaseOrderLineItemRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePurchaseOrderLineItemRequest() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CreatePurchaseOrderLineItemRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePurchaseOrderLineItemRequest():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CreatePurchaseOrderLineItemRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePurchaseOrderLineItemRequest() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String itemId,
            double quantity,
            String unit,
            double unitPrice,
            double? discountAmount,
            double? taxAmount,
            int? sequence,
            DateTime? requestedDeliveryDate,
            String? notes,
            String? specification,
            Map<String, dynamic>? attributes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreatePurchaseOrderLineItemRequest() when $default != null:
        return $default(
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.unitPrice,
            _that.discountAmount,
            _that.taxAmount,
            _that.sequence,
            _that.requestedDeliveryDate,
            _that.notes,
            _that.specification,
            _that.attributes);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String itemId,
            double quantity,
            String unit,
            double unitPrice,
            double? discountAmount,
            double? taxAmount,
            int? sequence,
            DateTime? requestedDeliveryDate,
            String? notes,
            String? specification,
            Map<String, dynamic>? attributes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePurchaseOrderLineItemRequest():
        return $default(
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.unitPrice,
            _that.discountAmount,
            _that.taxAmount,
            _that.sequence,
            _that.requestedDeliveryDate,
            _that.notes,
            _that.specification,
            _that.attributes);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String itemId,
            double quantity,
            String unit,
            double unitPrice,
            double? discountAmount,
            double? taxAmount,
            int? sequence,
            DateTime? requestedDeliveryDate,
            String? notes,
            String? specification,
            Map<String, dynamic>? attributes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreatePurchaseOrderLineItemRequest() when $default != null:
        return $default(
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.unitPrice,
            _that.discountAmount,
            _that.taxAmount,
            _that.sequence,
            _that.requestedDeliveryDate,
            _that.notes,
            _that.specification,
            _that.attributes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreatePurchaseOrderLineItemRequest
    implements CreatePurchaseOrderLineItemRequest {
  const _CreatePurchaseOrderLineItemRequest(
      {required this.itemId,
      required this.quantity,
      required this.unit,
      required this.unitPrice,
      this.discountAmount,
      this.taxAmount,
      this.sequence,
      this.requestedDeliveryDate,
      this.notes,
      this.specification,
      final Map<String, dynamic>? attributes})
      : _attributes = attributes;
  factory _CreatePurchaseOrderLineItemRequest.fromJson(
          Map<String, dynamic> json) =>
      _$CreatePurchaseOrderLineItemRequestFromJson(json);

  @override
  final String itemId;
  @override
  final double quantity;
  @override
  final String unit;
  @override
  final double unitPrice;
  @override
  final double? discountAmount;
  @override
  final double? taxAmount;
  @override
  final int? sequence;
  @override
  final DateTime? requestedDeliveryDate;
  @override
  final String? notes;
  @override
  final String? specification;
  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of CreatePurchaseOrderLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreatePurchaseOrderLineItemRequestCopyWith<
          _CreatePurchaseOrderLineItemRequest>
      get copyWith => __$CreatePurchaseOrderLineItemRequestCopyWithImpl<
          _CreatePurchaseOrderLineItemRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreatePurchaseOrderLineItemRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreatePurchaseOrderLineItemRequest &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.requestedDeliveryDate, requestedDeliveryDate) ||
                other.requestedDeliveryDate == requestedDeliveryDate) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.specification, specification) ||
                other.specification == specification) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemId,
      quantity,
      unit,
      unitPrice,
      discountAmount,
      taxAmount,
      sequence,
      requestedDeliveryDate,
      notes,
      specification,
      const DeepCollectionEquality().hash(_attributes));

  @override
  String toString() {
    return 'CreatePurchaseOrderLineItemRequest(itemId: $itemId, quantity: $quantity, unit: $unit, unitPrice: $unitPrice, discountAmount: $discountAmount, taxAmount: $taxAmount, sequence: $sequence, requestedDeliveryDate: $requestedDeliveryDate, notes: $notes, specification: $specification, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class _$CreatePurchaseOrderLineItemRequestCopyWith<$Res>
    implements $CreatePurchaseOrderLineItemRequestCopyWith<$Res> {
  factory _$CreatePurchaseOrderLineItemRequestCopyWith(
          _CreatePurchaseOrderLineItemRequest value,
          $Res Function(_CreatePurchaseOrderLineItemRequest) _then) =
      __$CreatePurchaseOrderLineItemRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String itemId,
      double quantity,
      String unit,
      double unitPrice,
      double? discountAmount,
      double? taxAmount,
      int? sequence,
      DateTime? requestedDeliveryDate,
      String? notes,
      String? specification,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class __$CreatePurchaseOrderLineItemRequestCopyWithImpl<$Res>
    implements _$CreatePurchaseOrderLineItemRequestCopyWith<$Res> {
  __$CreatePurchaseOrderLineItemRequestCopyWithImpl(this._self, this._then);

  final _CreatePurchaseOrderLineItemRequest _self;
  final $Res Function(_CreatePurchaseOrderLineItemRequest) _then;

  /// Create a copy of CreatePurchaseOrderLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? itemId = null,
    Object? quantity = null,
    Object? unit = null,
    Object? unitPrice = null,
    Object? discountAmount = freezed,
    Object? taxAmount = freezed,
    Object? sequence = freezed,
    Object? requestedDeliveryDate = freezed,
    Object? notes = freezed,
    Object? specification = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_CreatePurchaseOrderLineItemRequest(
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _self.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: freezed == discountAmount
          ? _self.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      taxAmount: freezed == taxAmount
          ? _self.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      requestedDeliveryDate: freezed == requestedDeliveryDate
          ? _self.requestedDeliveryDate
          : requestedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _self.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$UpdatePurchaseOrderRequest {
  DateTime? get orderDate;
  DateTime? get deliveryDate;
  String? get notes;
  String? get termsAndConditions;
  String? get paymentTerms;
  String? get deliveryAddress;
  String? get billingAddress;
  Map<String, dynamic>? get metadata;

  /// Create a copy of UpdatePurchaseOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdatePurchaseOrderRequestCopyWith<UpdatePurchaseOrderRequest>
      get copyWith =>
          _$UpdatePurchaseOrderRequestCopyWithImpl<UpdatePurchaseOrderRequest>(
              this as UpdatePurchaseOrderRequest, _$identity);

  /// Serializes this UpdatePurchaseOrderRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdatePurchaseOrderRequest &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.termsAndConditions, termsAndConditions) ||
                other.termsAndConditions == termsAndConditions) &&
            (identical(other.paymentTerms, paymentTerms) ||
                other.paymentTerms == paymentTerms) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            (identical(other.billingAddress, billingAddress) ||
                other.billingAddress == billingAddress) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderDate,
      deliveryDate,
      notes,
      termsAndConditions,
      paymentTerms,
      deliveryAddress,
      billingAddress,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'UpdatePurchaseOrderRequest(orderDate: $orderDate, deliveryDate: $deliveryDate, notes: $notes, termsAndConditions: $termsAndConditions, paymentTerms: $paymentTerms, deliveryAddress: $deliveryAddress, billingAddress: $billingAddress, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $UpdatePurchaseOrderRequestCopyWith<$Res> {
  factory $UpdatePurchaseOrderRequestCopyWith(UpdatePurchaseOrderRequest value,
          $Res Function(UpdatePurchaseOrderRequest) _then) =
      _$UpdatePurchaseOrderRequestCopyWithImpl;
  @useResult
  $Res call(
      {DateTime? orderDate,
      DateTime? deliveryDate,
      String? notes,
      String? termsAndConditions,
      String? paymentTerms,
      String? deliveryAddress,
      String? billingAddress,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$UpdatePurchaseOrderRequestCopyWithImpl<$Res>
    implements $UpdatePurchaseOrderRequestCopyWith<$Res> {
  _$UpdatePurchaseOrderRequestCopyWithImpl(this._self, this._then);

  final UpdatePurchaseOrderRequest _self;
  final $Res Function(UpdatePurchaseOrderRequest) _then;

  /// Create a copy of UpdatePurchaseOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderDate = freezed,
    Object? deliveryDate = freezed,
    Object? notes = freezed,
    Object? termsAndConditions = freezed,
    Object? paymentTerms = freezed,
    Object? deliveryAddress = freezed,
    Object? billingAddress = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      orderDate: freezed == orderDate
          ? _self.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryDate: freezed == deliveryDate
          ? _self.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _self.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _self.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddress: freezed == deliveryAddress
          ? _self.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddress: freezed == billingAddress
          ? _self.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdatePurchaseOrderRequest].
extension UpdatePurchaseOrderRequestPatterns on UpdatePurchaseOrderRequest {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UpdatePurchaseOrderRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdatePurchaseOrderRequest() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UpdatePurchaseOrderRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePurchaseOrderRequest():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UpdatePurchaseOrderRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePurchaseOrderRequest() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            DateTime? orderDate,
            DateTime? deliveryDate,
            String? notes,
            String? termsAndConditions,
            String? paymentTerms,
            String? deliveryAddress,
            String? billingAddress,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdatePurchaseOrderRequest() when $default != null:
        return $default(
            _that.orderDate,
            _that.deliveryDate,
            _that.notes,
            _that.termsAndConditions,
            _that.paymentTerms,
            _that.deliveryAddress,
            _that.billingAddress,
            _that.metadata);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            DateTime? orderDate,
            DateTime? deliveryDate,
            String? notes,
            String? termsAndConditions,
            String? paymentTerms,
            String? deliveryAddress,
            String? billingAddress,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePurchaseOrderRequest():
        return $default(
            _that.orderDate,
            _that.deliveryDate,
            _that.notes,
            _that.termsAndConditions,
            _that.paymentTerms,
            _that.deliveryAddress,
            _that.billingAddress,
            _that.metadata);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            DateTime? orderDate,
            DateTime? deliveryDate,
            String? notes,
            String? termsAndConditions,
            String? paymentTerms,
            String? deliveryAddress,
            String? billingAddress,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePurchaseOrderRequest() when $default != null:
        return $default(
            _that.orderDate,
            _that.deliveryDate,
            _that.notes,
            _that.termsAndConditions,
            _that.paymentTerms,
            _that.deliveryAddress,
            _that.billingAddress,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdatePurchaseOrderRequest implements UpdatePurchaseOrderRequest {
  const _UpdatePurchaseOrderRequest(
      {this.orderDate,
      this.deliveryDate,
      this.notes,
      this.termsAndConditions,
      this.paymentTerms,
      this.deliveryAddress,
      this.billingAddress,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _UpdatePurchaseOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdatePurchaseOrderRequestFromJson(json);

  @override
  final DateTime? orderDate;
  @override
  final DateTime? deliveryDate;
  @override
  final String? notes;
  @override
  final String? termsAndConditions;
  @override
  final String? paymentTerms;
  @override
  final String? deliveryAddress;
  @override
  final String? billingAddress;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of UpdatePurchaseOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdatePurchaseOrderRequestCopyWith<_UpdatePurchaseOrderRequest>
      get copyWith => __$UpdatePurchaseOrderRequestCopyWithImpl<
          _UpdatePurchaseOrderRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdatePurchaseOrderRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdatePurchaseOrderRequest &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.termsAndConditions, termsAndConditions) ||
                other.termsAndConditions == termsAndConditions) &&
            (identical(other.paymentTerms, paymentTerms) ||
                other.paymentTerms == paymentTerms) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            (identical(other.billingAddress, billingAddress) ||
                other.billingAddress == billingAddress) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderDate,
      deliveryDate,
      notes,
      termsAndConditions,
      paymentTerms,
      deliveryAddress,
      billingAddress,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'UpdatePurchaseOrderRequest(orderDate: $orderDate, deliveryDate: $deliveryDate, notes: $notes, termsAndConditions: $termsAndConditions, paymentTerms: $paymentTerms, deliveryAddress: $deliveryAddress, billingAddress: $billingAddress, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$UpdatePurchaseOrderRequestCopyWith<$Res>
    implements $UpdatePurchaseOrderRequestCopyWith<$Res> {
  factory _$UpdatePurchaseOrderRequestCopyWith(
          _UpdatePurchaseOrderRequest value,
          $Res Function(_UpdatePurchaseOrderRequest) _then) =
      __$UpdatePurchaseOrderRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {DateTime? orderDate,
      DateTime? deliveryDate,
      String? notes,
      String? termsAndConditions,
      String? paymentTerms,
      String? deliveryAddress,
      String? billingAddress,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$UpdatePurchaseOrderRequestCopyWithImpl<$Res>
    implements _$UpdatePurchaseOrderRequestCopyWith<$Res> {
  __$UpdatePurchaseOrderRequestCopyWithImpl(this._self, this._then);

  final _UpdatePurchaseOrderRequest _self;
  final $Res Function(_UpdatePurchaseOrderRequest) _then;

  /// Create a copy of UpdatePurchaseOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderDate = freezed,
    Object? deliveryDate = freezed,
    Object? notes = freezed,
    Object? termsAndConditions = freezed,
    Object? paymentTerms = freezed,
    Object? deliveryAddress = freezed,
    Object? billingAddress = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_UpdatePurchaseOrderRequest(
      orderDate: freezed == orderDate
          ? _self.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryDate: freezed == deliveryDate
          ? _self.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _self.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _self.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddress: freezed == deliveryAddress
          ? _self.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddress: freezed == billingAddress
          ? _self.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$UpdatePurchaseOrderLineItemRequest {
  double? get quantity;
  String? get unit;
  double? get unitPrice;
  double? get discountAmount;
  double? get taxAmount;
  int? get sequence;
  DateTime? get requestedDeliveryDate;
  DateTime? get confirmedDeliveryDate;
  String? get notes;
  String? get specification;
  Map<String, dynamic>? get attributes;

  /// Create a copy of UpdatePurchaseOrderLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdatePurchaseOrderLineItemRequestCopyWith<
          UpdatePurchaseOrderLineItemRequest>
      get copyWith => _$UpdatePurchaseOrderLineItemRequestCopyWithImpl<
              UpdatePurchaseOrderLineItemRequest>(
          this as UpdatePurchaseOrderLineItemRequest, _$identity);

  /// Serializes this UpdatePurchaseOrderLineItemRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdatePurchaseOrderLineItemRequest &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.requestedDeliveryDate, requestedDeliveryDate) ||
                other.requestedDeliveryDate == requestedDeliveryDate) &&
            (identical(other.confirmedDeliveryDate, confirmedDeliveryDate) ||
                other.confirmedDeliveryDate == confirmedDeliveryDate) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.specification, specification) ||
                other.specification == specification) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      quantity,
      unit,
      unitPrice,
      discountAmount,
      taxAmount,
      sequence,
      requestedDeliveryDate,
      confirmedDeliveryDate,
      notes,
      specification,
      const DeepCollectionEquality().hash(attributes));

  @override
  String toString() {
    return 'UpdatePurchaseOrderLineItemRequest(quantity: $quantity, unit: $unit, unitPrice: $unitPrice, discountAmount: $discountAmount, taxAmount: $taxAmount, sequence: $sequence, requestedDeliveryDate: $requestedDeliveryDate, confirmedDeliveryDate: $confirmedDeliveryDate, notes: $notes, specification: $specification, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class $UpdatePurchaseOrderLineItemRequestCopyWith<$Res> {
  factory $UpdatePurchaseOrderLineItemRequestCopyWith(
          UpdatePurchaseOrderLineItemRequest value,
          $Res Function(UpdatePurchaseOrderLineItemRequest) _then) =
      _$UpdatePurchaseOrderLineItemRequestCopyWithImpl;
  @useResult
  $Res call(
      {double? quantity,
      String? unit,
      double? unitPrice,
      double? discountAmount,
      double? taxAmount,
      int? sequence,
      DateTime? requestedDeliveryDate,
      DateTime? confirmedDeliveryDate,
      String? notes,
      String? specification,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class _$UpdatePurchaseOrderLineItemRequestCopyWithImpl<$Res>
    implements $UpdatePurchaseOrderLineItemRequestCopyWith<$Res> {
  _$UpdatePurchaseOrderLineItemRequestCopyWithImpl(this._self, this._then);

  final UpdatePurchaseOrderLineItemRequest _self;
  final $Res Function(UpdatePurchaseOrderLineItemRequest) _then;

  /// Create a copy of UpdatePurchaseOrderLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = freezed,
    Object? unit = freezed,
    Object? unitPrice = freezed,
    Object? discountAmount = freezed,
    Object? taxAmount = freezed,
    Object? sequence = freezed,
    Object? requestedDeliveryDate = freezed,
    Object? confirmedDeliveryDate = freezed,
    Object? notes = freezed,
    Object? specification = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_self.copyWith(
      quantity: freezed == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      unit: freezed == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      unitPrice: freezed == unitPrice
          ? _self.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discountAmount: freezed == discountAmount
          ? _self.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      taxAmount: freezed == taxAmount
          ? _self.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      requestedDeliveryDate: freezed == requestedDeliveryDate
          ? _self.requestedDeliveryDate
          : requestedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      confirmedDeliveryDate: freezed == confirmedDeliveryDate
          ? _self.confirmedDeliveryDate
          : confirmedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _self.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdatePurchaseOrderLineItemRequest].
extension UpdatePurchaseOrderLineItemRequestPatterns
    on UpdatePurchaseOrderLineItemRequest {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UpdatePurchaseOrderLineItemRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdatePurchaseOrderLineItemRequest() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UpdatePurchaseOrderLineItemRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePurchaseOrderLineItemRequest():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UpdatePurchaseOrderLineItemRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePurchaseOrderLineItemRequest() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            double? quantity,
            String? unit,
            double? unitPrice,
            double? discountAmount,
            double? taxAmount,
            int? sequence,
            DateTime? requestedDeliveryDate,
            DateTime? confirmedDeliveryDate,
            String? notes,
            String? specification,
            Map<String, dynamic>? attributes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdatePurchaseOrderLineItemRequest() when $default != null:
        return $default(
            _that.quantity,
            _that.unit,
            _that.unitPrice,
            _that.discountAmount,
            _that.taxAmount,
            _that.sequence,
            _that.requestedDeliveryDate,
            _that.confirmedDeliveryDate,
            _that.notes,
            _that.specification,
            _that.attributes);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            double? quantity,
            String? unit,
            double? unitPrice,
            double? discountAmount,
            double? taxAmount,
            int? sequence,
            DateTime? requestedDeliveryDate,
            DateTime? confirmedDeliveryDate,
            String? notes,
            String? specification,
            Map<String, dynamic>? attributes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePurchaseOrderLineItemRequest():
        return $default(
            _that.quantity,
            _that.unit,
            _that.unitPrice,
            _that.discountAmount,
            _that.taxAmount,
            _that.sequence,
            _that.requestedDeliveryDate,
            _that.confirmedDeliveryDate,
            _that.notes,
            _that.specification,
            _that.attributes);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            double? quantity,
            String? unit,
            double? unitPrice,
            double? discountAmount,
            double? taxAmount,
            int? sequence,
            DateTime? requestedDeliveryDate,
            DateTime? confirmedDeliveryDate,
            String? notes,
            String? specification,
            Map<String, dynamic>? attributes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdatePurchaseOrderLineItemRequest() when $default != null:
        return $default(
            _that.quantity,
            _that.unit,
            _that.unitPrice,
            _that.discountAmount,
            _that.taxAmount,
            _that.sequence,
            _that.requestedDeliveryDate,
            _that.confirmedDeliveryDate,
            _that.notes,
            _that.specification,
            _that.attributes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdatePurchaseOrderLineItemRequest
    implements UpdatePurchaseOrderLineItemRequest {
  const _UpdatePurchaseOrderLineItemRequest(
      {this.quantity,
      this.unit,
      this.unitPrice,
      this.discountAmount,
      this.taxAmount,
      this.sequence,
      this.requestedDeliveryDate,
      this.confirmedDeliveryDate,
      this.notes,
      this.specification,
      final Map<String, dynamic>? attributes})
      : _attributes = attributes;
  factory _UpdatePurchaseOrderLineItemRequest.fromJson(
          Map<String, dynamic> json) =>
      _$UpdatePurchaseOrderLineItemRequestFromJson(json);

  @override
  final double? quantity;
  @override
  final String? unit;
  @override
  final double? unitPrice;
  @override
  final double? discountAmount;
  @override
  final double? taxAmount;
  @override
  final int? sequence;
  @override
  final DateTime? requestedDeliveryDate;
  @override
  final DateTime? confirmedDeliveryDate;
  @override
  final String? notes;
  @override
  final String? specification;
  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of UpdatePurchaseOrderLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdatePurchaseOrderLineItemRequestCopyWith<
          _UpdatePurchaseOrderLineItemRequest>
      get copyWith => __$UpdatePurchaseOrderLineItemRequestCopyWithImpl<
          _UpdatePurchaseOrderLineItemRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdatePurchaseOrderLineItemRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdatePurchaseOrderLineItemRequest &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.requestedDeliveryDate, requestedDeliveryDate) ||
                other.requestedDeliveryDate == requestedDeliveryDate) &&
            (identical(other.confirmedDeliveryDate, confirmedDeliveryDate) ||
                other.confirmedDeliveryDate == confirmedDeliveryDate) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.specification, specification) ||
                other.specification == specification) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      quantity,
      unit,
      unitPrice,
      discountAmount,
      taxAmount,
      sequence,
      requestedDeliveryDate,
      confirmedDeliveryDate,
      notes,
      specification,
      const DeepCollectionEquality().hash(_attributes));

  @override
  String toString() {
    return 'UpdatePurchaseOrderLineItemRequest(quantity: $quantity, unit: $unit, unitPrice: $unitPrice, discountAmount: $discountAmount, taxAmount: $taxAmount, sequence: $sequence, requestedDeliveryDate: $requestedDeliveryDate, confirmedDeliveryDate: $confirmedDeliveryDate, notes: $notes, specification: $specification, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class _$UpdatePurchaseOrderLineItemRequestCopyWith<$Res>
    implements $UpdatePurchaseOrderLineItemRequestCopyWith<$Res> {
  factory _$UpdatePurchaseOrderLineItemRequestCopyWith(
          _UpdatePurchaseOrderLineItemRequest value,
          $Res Function(_UpdatePurchaseOrderLineItemRequest) _then) =
      __$UpdatePurchaseOrderLineItemRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double? quantity,
      String? unit,
      double? unitPrice,
      double? discountAmount,
      double? taxAmount,
      int? sequence,
      DateTime? requestedDeliveryDate,
      DateTime? confirmedDeliveryDate,
      String? notes,
      String? specification,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class __$UpdatePurchaseOrderLineItemRequestCopyWithImpl<$Res>
    implements _$UpdatePurchaseOrderLineItemRequestCopyWith<$Res> {
  __$UpdatePurchaseOrderLineItemRequestCopyWithImpl(this._self, this._then);

  final _UpdatePurchaseOrderLineItemRequest _self;
  final $Res Function(_UpdatePurchaseOrderLineItemRequest) _then;

  /// Create a copy of UpdatePurchaseOrderLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? quantity = freezed,
    Object? unit = freezed,
    Object? unitPrice = freezed,
    Object? discountAmount = freezed,
    Object? taxAmount = freezed,
    Object? sequence = freezed,
    Object? requestedDeliveryDate = freezed,
    Object? confirmedDeliveryDate = freezed,
    Object? notes = freezed,
    Object? specification = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_UpdatePurchaseOrderLineItemRequest(
      quantity: freezed == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      unit: freezed == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      unitPrice: freezed == unitPrice
          ? _self.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discountAmount: freezed == discountAmount
          ? _self.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      taxAmount: freezed == taxAmount
          ? _self.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _self.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      requestedDeliveryDate: freezed == requestedDeliveryDate
          ? _self.requestedDeliveryDate
          : requestedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      confirmedDeliveryDate: freezed == confirmedDeliveryDate
          ? _self.confirmedDeliveryDate
          : confirmedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _self.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$PurchaseOrderFilters {
  String? get supplierId;
  String? get status;
  String? get orderNumber;
  DateTime? get orderDateAfter;
  DateTime? get orderDateBefore;
  DateTime? get deliveryDateAfter;
  DateTime? get deliveryDateBefore;
  double? get totalAmountMin;
  double? get totalAmountMax;
  String? get createdBy;
  List<String>? get itemIds;
  int? get page;
  int? get limit;
  String? get sortBy;
  String? get sortOrder;

  /// Create a copy of PurchaseOrderFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PurchaseOrderFiltersCopyWith<PurchaseOrderFilters> get copyWith =>
      _$PurchaseOrderFiltersCopyWithImpl<PurchaseOrderFilters>(
          this as PurchaseOrderFilters, _$identity);

  /// Serializes this PurchaseOrderFilters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PurchaseOrderFilters &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.orderDateAfter, orderDateAfter) ||
                other.orderDateAfter == orderDateAfter) &&
            (identical(other.orderDateBefore, orderDateBefore) ||
                other.orderDateBefore == orderDateBefore) &&
            (identical(other.deliveryDateAfter, deliveryDateAfter) ||
                other.deliveryDateAfter == deliveryDateAfter) &&
            (identical(other.deliveryDateBefore, deliveryDateBefore) ||
                other.deliveryDateBefore == deliveryDateBefore) &&
            (identical(other.totalAmountMin, totalAmountMin) ||
                other.totalAmountMin == totalAmountMin) &&
            (identical(other.totalAmountMax, totalAmountMax) ||
                other.totalAmountMax == totalAmountMax) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            const DeepCollectionEquality().equals(other.itemIds, itemIds) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      supplierId,
      status,
      orderNumber,
      orderDateAfter,
      orderDateBefore,
      deliveryDateAfter,
      deliveryDateBefore,
      totalAmountMin,
      totalAmountMax,
      createdBy,
      const DeepCollectionEquality().hash(itemIds),
      page,
      limit,
      sortBy,
      sortOrder);

  @override
  String toString() {
    return 'PurchaseOrderFilters(supplierId: $supplierId, status: $status, orderNumber: $orderNumber, orderDateAfter: $orderDateAfter, orderDateBefore: $orderDateBefore, deliveryDateAfter: $deliveryDateAfter, deliveryDateBefore: $deliveryDateBefore, totalAmountMin: $totalAmountMin, totalAmountMax: $totalAmountMax, createdBy: $createdBy, itemIds: $itemIds, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class $PurchaseOrderFiltersCopyWith<$Res> {
  factory $PurchaseOrderFiltersCopyWith(PurchaseOrderFilters value,
          $Res Function(PurchaseOrderFilters) _then) =
      _$PurchaseOrderFiltersCopyWithImpl;
  @useResult
  $Res call(
      {String? supplierId,
      String? status,
      String? orderNumber,
      DateTime? orderDateAfter,
      DateTime? orderDateBefore,
      DateTime? deliveryDateAfter,
      DateTime? deliveryDateBefore,
      double? totalAmountMin,
      double? totalAmountMax,
      String? createdBy,
      List<String>? itemIds,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class _$PurchaseOrderFiltersCopyWithImpl<$Res>
    implements $PurchaseOrderFiltersCopyWith<$Res> {
  _$PurchaseOrderFiltersCopyWithImpl(this._self, this._then);

  final PurchaseOrderFilters _self;
  final $Res Function(PurchaseOrderFilters) _then;

  /// Create a copy of PurchaseOrderFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supplierId = freezed,
    Object? status = freezed,
    Object? orderNumber = freezed,
    Object? orderDateAfter = freezed,
    Object? orderDateBefore = freezed,
    Object? deliveryDateAfter = freezed,
    Object? deliveryDateBefore = freezed,
    Object? totalAmountMin = freezed,
    Object? totalAmountMax = freezed,
    Object? createdBy = freezed,
    Object? itemIds = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_self.copyWith(
      supplierId: freezed == supplierId
          ? _self.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNumber: freezed == orderNumber
          ? _self.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDateAfter: freezed == orderDateAfter
          ? _self.orderDateAfter
          : orderDateAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      orderDateBefore: freezed == orderDateBefore
          ? _self.orderDateBefore
          : orderDateBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryDateAfter: freezed == deliveryDateAfter
          ? _self.deliveryDateAfter
          : deliveryDateAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryDateBefore: freezed == deliveryDateBefore
          ? _self.deliveryDateBefore
          : deliveryDateBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalAmountMin: freezed == totalAmountMin
          ? _self.totalAmountMin
          : totalAmountMin // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmountMax: freezed == totalAmountMax
          ? _self.totalAmountMax
          : totalAmountMax // ignore: cast_nullable_to_non_nullable
              as double?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      itemIds: freezed == itemIds
          ? _self.itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _self.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PurchaseOrderFilters].
extension PurchaseOrderFiltersPatterns on PurchaseOrderFilters {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PurchaseOrderFilters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PurchaseOrderFilters() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PurchaseOrderFilters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseOrderFilters():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PurchaseOrderFilters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseOrderFilters() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? supplierId,
            String? status,
            String? orderNumber,
            DateTime? orderDateAfter,
            DateTime? orderDateBefore,
            DateTime? deliveryDateAfter,
            DateTime? deliveryDateBefore,
            double? totalAmountMin,
            double? totalAmountMax,
            String? createdBy,
            List<String>? itemIds,
            int? page,
            int? limit,
            String? sortBy,
            String? sortOrder)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PurchaseOrderFilters() when $default != null:
        return $default(
            _that.supplierId,
            _that.status,
            _that.orderNumber,
            _that.orderDateAfter,
            _that.orderDateBefore,
            _that.deliveryDateAfter,
            _that.deliveryDateBefore,
            _that.totalAmountMin,
            _that.totalAmountMax,
            _that.createdBy,
            _that.itemIds,
            _that.page,
            _that.limit,
            _that.sortBy,
            _that.sortOrder);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? supplierId,
            String? status,
            String? orderNumber,
            DateTime? orderDateAfter,
            DateTime? orderDateBefore,
            DateTime? deliveryDateAfter,
            DateTime? deliveryDateBefore,
            double? totalAmountMin,
            double? totalAmountMax,
            String? createdBy,
            List<String>? itemIds,
            int? page,
            int? limit,
            String? sortBy,
            String? sortOrder)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseOrderFilters():
        return $default(
            _that.supplierId,
            _that.status,
            _that.orderNumber,
            _that.orderDateAfter,
            _that.orderDateBefore,
            _that.deliveryDateAfter,
            _that.deliveryDateBefore,
            _that.totalAmountMin,
            _that.totalAmountMax,
            _that.createdBy,
            _that.itemIds,
            _that.page,
            _that.limit,
            _that.sortBy,
            _that.sortOrder);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String? supplierId,
            String? status,
            String? orderNumber,
            DateTime? orderDateAfter,
            DateTime? orderDateBefore,
            DateTime? deliveryDateAfter,
            DateTime? deliveryDateBefore,
            double? totalAmountMin,
            double? totalAmountMax,
            String? createdBy,
            List<String>? itemIds,
            int? page,
            int? limit,
            String? sortBy,
            String? sortOrder)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseOrderFilters() when $default != null:
        return $default(
            _that.supplierId,
            _that.status,
            _that.orderNumber,
            _that.orderDateAfter,
            _that.orderDateBefore,
            _that.deliveryDateAfter,
            _that.deliveryDateBefore,
            _that.totalAmountMin,
            _that.totalAmountMax,
            _that.createdBy,
            _that.itemIds,
            _that.page,
            _that.limit,
            _that.sortBy,
            _that.sortOrder);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PurchaseOrderFilters extends PurchaseOrderFilters {
  const _PurchaseOrderFilters(
      {this.supplierId,
      this.status,
      this.orderNumber,
      this.orderDateAfter,
      this.orderDateBefore,
      this.deliveryDateAfter,
      this.deliveryDateBefore,
      this.totalAmountMin,
      this.totalAmountMax,
      this.createdBy,
      final List<String>? itemIds,
      this.page,
      this.limit,
      this.sortBy,
      this.sortOrder})
      : _itemIds = itemIds,
        super._();
  factory _PurchaseOrderFilters.fromJson(Map<String, dynamic> json) =>
      _$PurchaseOrderFiltersFromJson(json);

  @override
  final String? supplierId;
  @override
  final String? status;
  @override
  final String? orderNumber;
  @override
  final DateTime? orderDateAfter;
  @override
  final DateTime? orderDateBefore;
  @override
  final DateTime? deliveryDateAfter;
  @override
  final DateTime? deliveryDateBefore;
  @override
  final double? totalAmountMin;
  @override
  final double? totalAmountMax;
  @override
  final String? createdBy;
  final List<String>? _itemIds;
  @override
  List<String>? get itemIds {
    final value = _itemIds;
    if (value == null) return null;
    if (_itemIds is EqualUnmodifiableListView) return _itemIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? page;
  @override
  final int? limit;
  @override
  final String? sortBy;
  @override
  final String? sortOrder;

  /// Create a copy of PurchaseOrderFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PurchaseOrderFiltersCopyWith<_PurchaseOrderFilters> get copyWith =>
      __$PurchaseOrderFiltersCopyWithImpl<_PurchaseOrderFilters>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PurchaseOrderFiltersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PurchaseOrderFilters &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.orderDateAfter, orderDateAfter) ||
                other.orderDateAfter == orderDateAfter) &&
            (identical(other.orderDateBefore, orderDateBefore) ||
                other.orderDateBefore == orderDateBefore) &&
            (identical(other.deliveryDateAfter, deliveryDateAfter) ||
                other.deliveryDateAfter == deliveryDateAfter) &&
            (identical(other.deliveryDateBefore, deliveryDateBefore) ||
                other.deliveryDateBefore == deliveryDateBefore) &&
            (identical(other.totalAmountMin, totalAmountMin) ||
                other.totalAmountMin == totalAmountMin) &&
            (identical(other.totalAmountMax, totalAmountMax) ||
                other.totalAmountMax == totalAmountMax) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            const DeepCollectionEquality().equals(other._itemIds, _itemIds) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      supplierId,
      status,
      orderNumber,
      orderDateAfter,
      orderDateBefore,
      deliveryDateAfter,
      deliveryDateBefore,
      totalAmountMin,
      totalAmountMax,
      createdBy,
      const DeepCollectionEquality().hash(_itemIds),
      page,
      limit,
      sortBy,
      sortOrder);

  @override
  String toString() {
    return 'PurchaseOrderFilters(supplierId: $supplierId, status: $status, orderNumber: $orderNumber, orderDateAfter: $orderDateAfter, orderDateBefore: $orderDateBefore, deliveryDateAfter: $deliveryDateAfter, deliveryDateBefore: $deliveryDateBefore, totalAmountMin: $totalAmountMin, totalAmountMax: $totalAmountMax, createdBy: $createdBy, itemIds: $itemIds, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class _$PurchaseOrderFiltersCopyWith<$Res>
    implements $PurchaseOrderFiltersCopyWith<$Res> {
  factory _$PurchaseOrderFiltersCopyWith(_PurchaseOrderFilters value,
          $Res Function(_PurchaseOrderFilters) _then) =
      __$PurchaseOrderFiltersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? supplierId,
      String? status,
      String? orderNumber,
      DateTime? orderDateAfter,
      DateTime? orderDateBefore,
      DateTime? deliveryDateAfter,
      DateTime? deliveryDateBefore,
      double? totalAmountMin,
      double? totalAmountMax,
      String? createdBy,
      List<String>? itemIds,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class __$PurchaseOrderFiltersCopyWithImpl<$Res>
    implements _$PurchaseOrderFiltersCopyWith<$Res> {
  __$PurchaseOrderFiltersCopyWithImpl(this._self, this._then);

  final _PurchaseOrderFilters _self;
  final $Res Function(_PurchaseOrderFilters) _then;

  /// Create a copy of PurchaseOrderFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? supplierId = freezed,
    Object? status = freezed,
    Object? orderNumber = freezed,
    Object? orderDateAfter = freezed,
    Object? orderDateBefore = freezed,
    Object? deliveryDateAfter = freezed,
    Object? deliveryDateBefore = freezed,
    Object? totalAmountMin = freezed,
    Object? totalAmountMax = freezed,
    Object? createdBy = freezed,
    Object? itemIds = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_PurchaseOrderFilters(
      supplierId: freezed == supplierId
          ? _self.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNumber: freezed == orderNumber
          ? _self.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDateAfter: freezed == orderDateAfter
          ? _self.orderDateAfter
          : orderDateAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      orderDateBefore: freezed == orderDateBefore
          ? _self.orderDateBefore
          : orderDateBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryDateAfter: freezed == deliveryDateAfter
          ? _self.deliveryDateAfter
          : deliveryDateAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryDateBefore: freezed == deliveryDateBefore
          ? _self.deliveryDateBefore
          : deliveryDateBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalAmountMin: freezed == totalAmountMin
          ? _self.totalAmountMin
          : totalAmountMin // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmountMax: freezed == totalAmountMax
          ? _self.totalAmountMax
          : totalAmountMax // ignore: cast_nullable_to_non_nullable
              as double?,
      createdBy: freezed == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      itemIds: freezed == itemIds
          ? _self._itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _self.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _self.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
