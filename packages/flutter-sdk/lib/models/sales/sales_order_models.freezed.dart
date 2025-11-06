// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_order_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SalesOrderLineItem {
  String get id;
  String get salesOrderId;
  String get itemId;
  double get quantity;
  String get unit;
  double get unitPrice;
  double get totalPrice;
  double get discountAmount;
  double get taxAmount;
  double get netAmount;
  String
      get status; // 'pending', 'confirmed', 'shipped', 'delivered', 'cancelled'
  int? get sequence;
  String? get notes;
  DateTime? get requestedDeliveryDate;
  DateTime? get confirmedDeliveryDate;
  DateTime? get actualDeliveryDate;
  double? get shippedQuantity;
  double? get deliveredQuantity;
  double? get returnedQuantity;
  String? get lotNumber;
  String? get serialNumber;
  Map<String, dynamic>? get attributes;
  Map<String, dynamic>? get metadata;

  /// Create a copy of SalesOrderLineItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SalesOrderLineItemCopyWith<SalesOrderLineItem> get copyWith =>
      _$SalesOrderLineItemCopyWithImpl<SalesOrderLineItem>(
          this as SalesOrderLineItem, _$identity);

  /// Serializes this SalesOrderLineItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SalesOrderLineItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.salesOrderId, salesOrderId) ||
                other.salesOrderId == salesOrderId) &&
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
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.requestedDeliveryDate, requestedDeliveryDate) ||
                other.requestedDeliveryDate == requestedDeliveryDate) &&
            (identical(other.confirmedDeliveryDate, confirmedDeliveryDate) ||
                other.confirmedDeliveryDate == confirmedDeliveryDate) &&
            (identical(other.actualDeliveryDate, actualDeliveryDate) ||
                other.actualDeliveryDate == actualDeliveryDate) &&
            (identical(other.shippedQuantity, shippedQuantity) ||
                other.shippedQuantity == shippedQuantity) &&
            (identical(other.deliveredQuantity, deliveredQuantity) ||
                other.deliveredQuantity == deliveredQuantity) &&
            (identical(other.returnedQuantity, returnedQuantity) ||
                other.returnedQuantity == returnedQuantity) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        salesOrderId,
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
        notes,
        requestedDeliveryDate,
        confirmedDeliveryDate,
        actualDeliveryDate,
        shippedQuantity,
        deliveredQuantity,
        returnedQuantity,
        lotNumber,
        serialNumber,
        const DeepCollectionEquality().hash(attributes),
        const DeepCollectionEquality().hash(metadata)
      ]);

  @override
  String toString() {
    return 'SalesOrderLineItem(id: $id, salesOrderId: $salesOrderId, itemId: $itemId, quantity: $quantity, unit: $unit, unitPrice: $unitPrice, totalPrice: $totalPrice, discountAmount: $discountAmount, taxAmount: $taxAmount, netAmount: $netAmount, status: $status, sequence: $sequence, notes: $notes, requestedDeliveryDate: $requestedDeliveryDate, confirmedDeliveryDate: $confirmedDeliveryDate, actualDeliveryDate: $actualDeliveryDate, shippedQuantity: $shippedQuantity, deliveredQuantity: $deliveredQuantity, returnedQuantity: $returnedQuantity, lotNumber: $lotNumber, serialNumber: $serialNumber, attributes: $attributes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $SalesOrderLineItemCopyWith<$Res> {
  factory $SalesOrderLineItemCopyWith(
          SalesOrderLineItem value, $Res Function(SalesOrderLineItem) _then) =
      _$SalesOrderLineItemCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String salesOrderId,
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
      String? notes,
      DateTime? requestedDeliveryDate,
      DateTime? confirmedDeliveryDate,
      DateTime? actualDeliveryDate,
      double? shippedQuantity,
      double? deliveredQuantity,
      double? returnedQuantity,
      String? lotNumber,
      String? serialNumber,
      Map<String, dynamic>? attributes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$SalesOrderLineItemCopyWithImpl<$Res>
    implements $SalesOrderLineItemCopyWith<$Res> {
  _$SalesOrderLineItemCopyWithImpl(this._self, this._then);

  final SalesOrderLineItem _self;
  final $Res Function(SalesOrderLineItem) _then;

  /// Create a copy of SalesOrderLineItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? salesOrderId = null,
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
    Object? notes = freezed,
    Object? requestedDeliveryDate = freezed,
    Object? confirmedDeliveryDate = freezed,
    Object? actualDeliveryDate = freezed,
    Object? shippedQuantity = freezed,
    Object? deliveredQuantity = freezed,
    Object? returnedQuantity = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? attributes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      salesOrderId: null == salesOrderId
          ? _self.salesOrderId
          : salesOrderId // ignore: cast_nullable_to_non_nullable
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
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedDeliveryDate: freezed == requestedDeliveryDate
          ? _self.requestedDeliveryDate
          : requestedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      confirmedDeliveryDate: freezed == confirmedDeliveryDate
          ? _self.confirmedDeliveryDate
          : confirmedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualDeliveryDate: freezed == actualDeliveryDate
          ? _self.actualDeliveryDate
          : actualDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      shippedQuantity: freezed == shippedQuantity
          ? _self.shippedQuantity
          : shippedQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveredQuantity: freezed == deliveredQuantity
          ? _self.deliveredQuantity
          : deliveredQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      returnedQuantity: freezed == returnedQuantity
          ? _self.returnedQuantity
          : returnedQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      lotNumber: freezed == lotNumber
          ? _self.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
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

/// Adds pattern-matching-related methods to [SalesOrderLineItem].
extension SalesOrderLineItemPatterns on SalesOrderLineItem {
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
    TResult Function(_SalesOrderLineItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SalesOrderLineItem() when $default != null:
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
    TResult Function(_SalesOrderLineItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SalesOrderLineItem():
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
    TResult? Function(_SalesOrderLineItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SalesOrderLineItem() when $default != null:
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
            String salesOrderId,
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
            String? notes,
            DateTime? requestedDeliveryDate,
            DateTime? confirmedDeliveryDate,
            DateTime? actualDeliveryDate,
            double? shippedQuantity,
            double? deliveredQuantity,
            double? returnedQuantity,
            String? lotNumber,
            String? serialNumber,
            Map<String, dynamic>? attributes,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SalesOrderLineItem() when $default != null:
        return $default(
            _that.id,
            _that.salesOrderId,
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
            _that.notes,
            _that.requestedDeliveryDate,
            _that.confirmedDeliveryDate,
            _that.actualDeliveryDate,
            _that.shippedQuantity,
            _that.deliveredQuantity,
            _that.returnedQuantity,
            _that.lotNumber,
            _that.serialNumber,
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
            String salesOrderId,
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
            String? notes,
            DateTime? requestedDeliveryDate,
            DateTime? confirmedDeliveryDate,
            DateTime? actualDeliveryDate,
            double? shippedQuantity,
            double? deliveredQuantity,
            double? returnedQuantity,
            String? lotNumber,
            String? serialNumber,
            Map<String, dynamic>? attributes,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SalesOrderLineItem():
        return $default(
            _that.id,
            _that.salesOrderId,
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
            _that.notes,
            _that.requestedDeliveryDate,
            _that.confirmedDeliveryDate,
            _that.actualDeliveryDate,
            _that.shippedQuantity,
            _that.deliveredQuantity,
            _that.returnedQuantity,
            _that.lotNumber,
            _that.serialNumber,
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
            String salesOrderId,
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
            String? notes,
            DateTime? requestedDeliveryDate,
            DateTime? confirmedDeliveryDate,
            DateTime? actualDeliveryDate,
            double? shippedQuantity,
            double? deliveredQuantity,
            double? returnedQuantity,
            String? lotNumber,
            String? serialNumber,
            Map<String, dynamic>? attributes,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SalesOrderLineItem() when $default != null:
        return $default(
            _that.id,
            _that.salesOrderId,
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
            _that.notes,
            _that.requestedDeliveryDate,
            _that.confirmedDeliveryDate,
            _that.actualDeliveryDate,
            _that.shippedQuantity,
            _that.deliveredQuantity,
            _that.returnedQuantity,
            _that.lotNumber,
            _that.serialNumber,
            _that.attributes,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SalesOrderLineItem implements SalesOrderLineItem {
  const _SalesOrderLineItem(
      {required this.id,
      required this.salesOrderId,
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
      this.notes,
      this.requestedDeliveryDate,
      this.confirmedDeliveryDate,
      this.actualDeliveryDate,
      this.shippedQuantity,
      this.deliveredQuantity,
      this.returnedQuantity,
      this.lotNumber,
      this.serialNumber,
      final Map<String, dynamic>? attributes,
      final Map<String, dynamic>? metadata})
      : _attributes = attributes,
        _metadata = metadata;
  factory _SalesOrderLineItem.fromJson(Map<String, dynamic> json) =>
      _$SalesOrderLineItemFromJson(json);

  @override
  final String id;
  @override
  final String salesOrderId;
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
// 'pending', 'confirmed', 'shipped', 'delivered', 'cancelled'
  @override
  final int? sequence;
  @override
  final String? notes;
  @override
  final DateTime? requestedDeliveryDate;
  @override
  final DateTime? confirmedDeliveryDate;
  @override
  final DateTime? actualDeliveryDate;
  @override
  final double? shippedQuantity;
  @override
  final double? deliveredQuantity;
  @override
  final double? returnedQuantity;
  @override
  final String? lotNumber;
  @override
  final String? serialNumber;
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

  /// Create a copy of SalesOrderLineItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SalesOrderLineItemCopyWith<_SalesOrderLineItem> get copyWith =>
      __$SalesOrderLineItemCopyWithImpl<_SalesOrderLineItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SalesOrderLineItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SalesOrderLineItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.salesOrderId, salesOrderId) ||
                other.salesOrderId == salesOrderId) &&
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
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.requestedDeliveryDate, requestedDeliveryDate) ||
                other.requestedDeliveryDate == requestedDeliveryDate) &&
            (identical(other.confirmedDeliveryDate, confirmedDeliveryDate) ||
                other.confirmedDeliveryDate == confirmedDeliveryDate) &&
            (identical(other.actualDeliveryDate, actualDeliveryDate) ||
                other.actualDeliveryDate == actualDeliveryDate) &&
            (identical(other.shippedQuantity, shippedQuantity) ||
                other.shippedQuantity == shippedQuantity) &&
            (identical(other.deliveredQuantity, deliveredQuantity) ||
                other.deliveredQuantity == deliveredQuantity) &&
            (identical(other.returnedQuantity, returnedQuantity) ||
                other.returnedQuantity == returnedQuantity) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        salesOrderId,
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
        notes,
        requestedDeliveryDate,
        confirmedDeliveryDate,
        actualDeliveryDate,
        shippedQuantity,
        deliveredQuantity,
        returnedQuantity,
        lotNumber,
        serialNumber,
        const DeepCollectionEquality().hash(_attributes),
        const DeepCollectionEquality().hash(_metadata)
      ]);

  @override
  String toString() {
    return 'SalesOrderLineItem(id: $id, salesOrderId: $salesOrderId, itemId: $itemId, quantity: $quantity, unit: $unit, unitPrice: $unitPrice, totalPrice: $totalPrice, discountAmount: $discountAmount, taxAmount: $taxAmount, netAmount: $netAmount, status: $status, sequence: $sequence, notes: $notes, requestedDeliveryDate: $requestedDeliveryDate, confirmedDeliveryDate: $confirmedDeliveryDate, actualDeliveryDate: $actualDeliveryDate, shippedQuantity: $shippedQuantity, deliveredQuantity: $deliveredQuantity, returnedQuantity: $returnedQuantity, lotNumber: $lotNumber, serialNumber: $serialNumber, attributes: $attributes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$SalesOrderLineItemCopyWith<$Res>
    implements $SalesOrderLineItemCopyWith<$Res> {
  factory _$SalesOrderLineItemCopyWith(
          _SalesOrderLineItem value, $Res Function(_SalesOrderLineItem) _then) =
      __$SalesOrderLineItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String salesOrderId,
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
      String? notes,
      DateTime? requestedDeliveryDate,
      DateTime? confirmedDeliveryDate,
      DateTime? actualDeliveryDate,
      double? shippedQuantity,
      double? deliveredQuantity,
      double? returnedQuantity,
      String? lotNumber,
      String? serialNumber,
      Map<String, dynamic>? attributes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$SalesOrderLineItemCopyWithImpl<$Res>
    implements _$SalesOrderLineItemCopyWith<$Res> {
  __$SalesOrderLineItemCopyWithImpl(this._self, this._then);

  final _SalesOrderLineItem _self;
  final $Res Function(_SalesOrderLineItem) _then;

  /// Create a copy of SalesOrderLineItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? salesOrderId = null,
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
    Object? notes = freezed,
    Object? requestedDeliveryDate = freezed,
    Object? confirmedDeliveryDate = freezed,
    Object? actualDeliveryDate = freezed,
    Object? shippedQuantity = freezed,
    Object? deliveredQuantity = freezed,
    Object? returnedQuantity = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? attributes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_SalesOrderLineItem(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      salesOrderId: null == salesOrderId
          ? _self.salesOrderId
          : salesOrderId // ignore: cast_nullable_to_non_nullable
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
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedDeliveryDate: freezed == requestedDeliveryDate
          ? _self.requestedDeliveryDate
          : requestedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      confirmedDeliveryDate: freezed == confirmedDeliveryDate
          ? _self.confirmedDeliveryDate
          : confirmedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualDeliveryDate: freezed == actualDeliveryDate
          ? _self.actualDeliveryDate
          : actualDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      shippedQuantity: freezed == shippedQuantity
          ? _self.shippedQuantity
          : shippedQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveredQuantity: freezed == deliveredQuantity
          ? _self.deliveredQuantity
          : deliveredQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      returnedQuantity: freezed == returnedQuantity
          ? _self.returnedQuantity
          : returnedQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      lotNumber: freezed == lotNumber
          ? _self.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
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
mixin _$CreateSalesOrderLineItemRequest {
  String get itemId;
  double get quantity;
  String get unit;
  double get unitPrice;
  double? get discountAmount;
  double? get taxAmount;
  int? get sequence;
  String? get notes;
  DateTime? get requestedDeliveryDate;
  String? get lotNumber;
  String? get serialNumber;
  Map<String, dynamic>? get attributes;

  /// Create a copy of CreateSalesOrderLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateSalesOrderLineItemRequestCopyWith<CreateSalesOrderLineItemRequest>
      get copyWith => _$CreateSalesOrderLineItemRequestCopyWithImpl<
              CreateSalesOrderLineItemRequest>(
          this as CreateSalesOrderLineItemRequest, _$identity);

  /// Serializes this CreateSalesOrderLineItemRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateSalesOrderLineItemRequest &&
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
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.requestedDeliveryDate, requestedDeliveryDate) ||
                other.requestedDeliveryDate == requestedDeliveryDate) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
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
      notes,
      requestedDeliveryDate,
      lotNumber,
      serialNumber,
      const DeepCollectionEquality().hash(attributes));

  @override
  String toString() {
    return 'CreateSalesOrderLineItemRequest(itemId: $itemId, quantity: $quantity, unit: $unit, unitPrice: $unitPrice, discountAmount: $discountAmount, taxAmount: $taxAmount, sequence: $sequence, notes: $notes, requestedDeliveryDate: $requestedDeliveryDate, lotNumber: $lotNumber, serialNumber: $serialNumber, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class $CreateSalesOrderLineItemRequestCopyWith<$Res> {
  factory $CreateSalesOrderLineItemRequestCopyWith(
          CreateSalesOrderLineItemRequest value,
          $Res Function(CreateSalesOrderLineItemRequest) _then) =
      _$CreateSalesOrderLineItemRequestCopyWithImpl;
  @useResult
  $Res call(
      {String itemId,
      double quantity,
      String unit,
      double unitPrice,
      double? discountAmount,
      double? taxAmount,
      int? sequence,
      String? notes,
      DateTime? requestedDeliveryDate,
      String? lotNumber,
      String? serialNumber,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class _$CreateSalesOrderLineItemRequestCopyWithImpl<$Res>
    implements $CreateSalesOrderLineItemRequestCopyWith<$Res> {
  _$CreateSalesOrderLineItemRequestCopyWithImpl(this._self, this._then);

  final CreateSalesOrderLineItemRequest _self;
  final $Res Function(CreateSalesOrderLineItemRequest) _then;

  /// Create a copy of CreateSalesOrderLineItemRequest
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
    Object? notes = freezed,
    Object? requestedDeliveryDate = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
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
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedDeliveryDate: freezed == requestedDeliveryDate
          ? _self.requestedDeliveryDate
          : requestedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lotNumber: freezed == lotNumber
          ? _self.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateSalesOrderLineItemRequest].
extension CreateSalesOrderLineItemRequestPatterns
    on CreateSalesOrderLineItemRequest {
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
    TResult Function(_CreateSalesOrderLineItemRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateSalesOrderLineItemRequest() when $default != null:
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
    TResult Function(_CreateSalesOrderLineItemRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSalesOrderLineItemRequest():
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
    TResult? Function(_CreateSalesOrderLineItemRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSalesOrderLineItemRequest() when $default != null:
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
            String? notes,
            DateTime? requestedDeliveryDate,
            String? lotNumber,
            String? serialNumber,
            Map<String, dynamic>? attributes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateSalesOrderLineItemRequest() when $default != null:
        return $default(
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.unitPrice,
            _that.discountAmount,
            _that.taxAmount,
            _that.sequence,
            _that.notes,
            _that.requestedDeliveryDate,
            _that.lotNumber,
            _that.serialNumber,
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
            String? notes,
            DateTime? requestedDeliveryDate,
            String? lotNumber,
            String? serialNumber,
            Map<String, dynamic>? attributes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSalesOrderLineItemRequest():
        return $default(
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.unitPrice,
            _that.discountAmount,
            _that.taxAmount,
            _that.sequence,
            _that.notes,
            _that.requestedDeliveryDate,
            _that.lotNumber,
            _that.serialNumber,
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
            String? notes,
            DateTime? requestedDeliveryDate,
            String? lotNumber,
            String? serialNumber,
            Map<String, dynamic>? attributes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSalesOrderLineItemRequest() when $default != null:
        return $default(
            _that.itemId,
            _that.quantity,
            _that.unit,
            _that.unitPrice,
            _that.discountAmount,
            _that.taxAmount,
            _that.sequence,
            _that.notes,
            _that.requestedDeliveryDate,
            _that.lotNumber,
            _that.serialNumber,
            _that.attributes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateSalesOrderLineItemRequest
    implements CreateSalesOrderLineItemRequest {
  const _CreateSalesOrderLineItemRequest(
      {required this.itemId,
      required this.quantity,
      required this.unit,
      required this.unitPrice,
      this.discountAmount,
      this.taxAmount,
      this.sequence,
      this.notes,
      this.requestedDeliveryDate,
      this.lotNumber,
      this.serialNumber,
      final Map<String, dynamic>? attributes})
      : _attributes = attributes;
  factory _CreateSalesOrderLineItemRequest.fromJson(
          Map<String, dynamic> json) =>
      _$CreateSalesOrderLineItemRequestFromJson(json);

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
  final String? notes;
  @override
  final DateTime? requestedDeliveryDate;
  @override
  final String? lotNumber;
  @override
  final String? serialNumber;
  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of CreateSalesOrderLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateSalesOrderLineItemRequestCopyWith<_CreateSalesOrderLineItemRequest>
      get copyWith => __$CreateSalesOrderLineItemRequestCopyWithImpl<
          _CreateSalesOrderLineItemRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateSalesOrderLineItemRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateSalesOrderLineItemRequest &&
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
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.requestedDeliveryDate, requestedDeliveryDate) ||
                other.requestedDeliveryDate == requestedDeliveryDate) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
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
      notes,
      requestedDeliveryDate,
      lotNumber,
      serialNumber,
      const DeepCollectionEquality().hash(_attributes));

  @override
  String toString() {
    return 'CreateSalesOrderLineItemRequest(itemId: $itemId, quantity: $quantity, unit: $unit, unitPrice: $unitPrice, discountAmount: $discountAmount, taxAmount: $taxAmount, sequence: $sequence, notes: $notes, requestedDeliveryDate: $requestedDeliveryDate, lotNumber: $lotNumber, serialNumber: $serialNumber, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class _$CreateSalesOrderLineItemRequestCopyWith<$Res>
    implements $CreateSalesOrderLineItemRequestCopyWith<$Res> {
  factory _$CreateSalesOrderLineItemRequestCopyWith(
          _CreateSalesOrderLineItemRequest value,
          $Res Function(_CreateSalesOrderLineItemRequest) _then) =
      __$CreateSalesOrderLineItemRequestCopyWithImpl;
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
      String? notes,
      DateTime? requestedDeliveryDate,
      String? lotNumber,
      String? serialNumber,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class __$CreateSalesOrderLineItemRequestCopyWithImpl<$Res>
    implements _$CreateSalesOrderLineItemRequestCopyWith<$Res> {
  __$CreateSalesOrderLineItemRequestCopyWithImpl(this._self, this._then);

  final _CreateSalesOrderLineItemRequest _self;
  final $Res Function(_CreateSalesOrderLineItemRequest) _then;

  /// Create a copy of CreateSalesOrderLineItemRequest
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
    Object? notes = freezed,
    Object? requestedDeliveryDate = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_CreateSalesOrderLineItemRequest(
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
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedDeliveryDate: freezed == requestedDeliveryDate
          ? _self.requestedDeliveryDate
          : requestedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lotNumber: freezed == lotNumber
          ? _self.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$UpdateSalesOrderLineItemRequest {
  double? get quantity;
  String? get unit;
  double? get unitPrice;
  double? get discountAmount;
  double? get taxAmount;
  int? get sequence;
  String? get notes;
  DateTime? get requestedDeliveryDate;
  DateTime? get confirmedDeliveryDate;
  String? get lotNumber;
  String? get serialNumber;
  Map<String, dynamic>? get attributes;

  /// Create a copy of UpdateSalesOrderLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateSalesOrderLineItemRequestCopyWith<UpdateSalesOrderLineItemRequest>
      get copyWith => _$UpdateSalesOrderLineItemRequestCopyWithImpl<
              UpdateSalesOrderLineItemRequest>(
          this as UpdateSalesOrderLineItemRequest, _$identity);

  /// Serializes this UpdateSalesOrderLineItemRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateSalesOrderLineItemRequest &&
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
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.requestedDeliveryDate, requestedDeliveryDate) ||
                other.requestedDeliveryDate == requestedDeliveryDate) &&
            (identical(other.confirmedDeliveryDate, confirmedDeliveryDate) ||
                other.confirmedDeliveryDate == confirmedDeliveryDate) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
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
      notes,
      requestedDeliveryDate,
      confirmedDeliveryDate,
      lotNumber,
      serialNumber,
      const DeepCollectionEquality().hash(attributes));

  @override
  String toString() {
    return 'UpdateSalesOrderLineItemRequest(quantity: $quantity, unit: $unit, unitPrice: $unitPrice, discountAmount: $discountAmount, taxAmount: $taxAmount, sequence: $sequence, notes: $notes, requestedDeliveryDate: $requestedDeliveryDate, confirmedDeliveryDate: $confirmedDeliveryDate, lotNumber: $lotNumber, serialNumber: $serialNumber, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class $UpdateSalesOrderLineItemRequestCopyWith<$Res> {
  factory $UpdateSalesOrderLineItemRequestCopyWith(
          UpdateSalesOrderLineItemRequest value,
          $Res Function(UpdateSalesOrderLineItemRequest) _then) =
      _$UpdateSalesOrderLineItemRequestCopyWithImpl;
  @useResult
  $Res call(
      {double? quantity,
      String? unit,
      double? unitPrice,
      double? discountAmount,
      double? taxAmount,
      int? sequence,
      String? notes,
      DateTime? requestedDeliveryDate,
      DateTime? confirmedDeliveryDate,
      String? lotNumber,
      String? serialNumber,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class _$UpdateSalesOrderLineItemRequestCopyWithImpl<$Res>
    implements $UpdateSalesOrderLineItemRequestCopyWith<$Res> {
  _$UpdateSalesOrderLineItemRequestCopyWithImpl(this._self, this._then);

  final UpdateSalesOrderLineItemRequest _self;
  final $Res Function(UpdateSalesOrderLineItemRequest) _then;

  /// Create a copy of UpdateSalesOrderLineItemRequest
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
    Object? notes = freezed,
    Object? requestedDeliveryDate = freezed,
    Object? confirmedDeliveryDate = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
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
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedDeliveryDate: freezed == requestedDeliveryDate
          ? _self.requestedDeliveryDate
          : requestedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      confirmedDeliveryDate: freezed == confirmedDeliveryDate
          ? _self.confirmedDeliveryDate
          : confirmedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lotNumber: freezed == lotNumber
          ? _self.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateSalesOrderLineItemRequest].
extension UpdateSalesOrderLineItemRequestPatterns
    on UpdateSalesOrderLineItemRequest {
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
    TResult Function(_UpdateSalesOrderLineItemRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateSalesOrderLineItemRequest() when $default != null:
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
    TResult Function(_UpdateSalesOrderLineItemRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateSalesOrderLineItemRequest():
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
    TResult? Function(_UpdateSalesOrderLineItemRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateSalesOrderLineItemRequest() when $default != null:
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
            String? notes,
            DateTime? requestedDeliveryDate,
            DateTime? confirmedDeliveryDate,
            String? lotNumber,
            String? serialNumber,
            Map<String, dynamic>? attributes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateSalesOrderLineItemRequest() when $default != null:
        return $default(
            _that.quantity,
            _that.unit,
            _that.unitPrice,
            _that.discountAmount,
            _that.taxAmount,
            _that.sequence,
            _that.notes,
            _that.requestedDeliveryDate,
            _that.confirmedDeliveryDate,
            _that.lotNumber,
            _that.serialNumber,
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
            String? notes,
            DateTime? requestedDeliveryDate,
            DateTime? confirmedDeliveryDate,
            String? lotNumber,
            String? serialNumber,
            Map<String, dynamic>? attributes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateSalesOrderLineItemRequest():
        return $default(
            _that.quantity,
            _that.unit,
            _that.unitPrice,
            _that.discountAmount,
            _that.taxAmount,
            _that.sequence,
            _that.notes,
            _that.requestedDeliveryDate,
            _that.confirmedDeliveryDate,
            _that.lotNumber,
            _that.serialNumber,
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
            String? notes,
            DateTime? requestedDeliveryDate,
            DateTime? confirmedDeliveryDate,
            String? lotNumber,
            String? serialNumber,
            Map<String, dynamic>? attributes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateSalesOrderLineItemRequest() when $default != null:
        return $default(
            _that.quantity,
            _that.unit,
            _that.unitPrice,
            _that.discountAmount,
            _that.taxAmount,
            _that.sequence,
            _that.notes,
            _that.requestedDeliveryDate,
            _that.confirmedDeliveryDate,
            _that.lotNumber,
            _that.serialNumber,
            _that.attributes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateSalesOrderLineItemRequest
    implements UpdateSalesOrderLineItemRequest {
  const _UpdateSalesOrderLineItemRequest(
      {this.quantity,
      this.unit,
      this.unitPrice,
      this.discountAmount,
      this.taxAmount,
      this.sequence,
      this.notes,
      this.requestedDeliveryDate,
      this.confirmedDeliveryDate,
      this.lotNumber,
      this.serialNumber,
      final Map<String, dynamic>? attributes})
      : _attributes = attributes;
  factory _UpdateSalesOrderLineItemRequest.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateSalesOrderLineItemRequestFromJson(json);

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
  final String? notes;
  @override
  final DateTime? requestedDeliveryDate;
  @override
  final DateTime? confirmedDeliveryDate;
  @override
  final String? lotNumber;
  @override
  final String? serialNumber;
  final Map<String, dynamic>? _attributes;
  @override
  Map<String, dynamic>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of UpdateSalesOrderLineItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateSalesOrderLineItemRequestCopyWith<_UpdateSalesOrderLineItemRequest>
      get copyWith => __$UpdateSalesOrderLineItemRequestCopyWithImpl<
          _UpdateSalesOrderLineItemRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateSalesOrderLineItemRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateSalesOrderLineItemRequest &&
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
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.requestedDeliveryDate, requestedDeliveryDate) ||
                other.requestedDeliveryDate == requestedDeliveryDate) &&
            (identical(other.confirmedDeliveryDate, confirmedDeliveryDate) ||
                other.confirmedDeliveryDate == confirmedDeliveryDate) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
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
      notes,
      requestedDeliveryDate,
      confirmedDeliveryDate,
      lotNumber,
      serialNumber,
      const DeepCollectionEquality().hash(_attributes));

  @override
  String toString() {
    return 'UpdateSalesOrderLineItemRequest(quantity: $quantity, unit: $unit, unitPrice: $unitPrice, discountAmount: $discountAmount, taxAmount: $taxAmount, sequence: $sequence, notes: $notes, requestedDeliveryDate: $requestedDeliveryDate, confirmedDeliveryDate: $confirmedDeliveryDate, lotNumber: $lotNumber, serialNumber: $serialNumber, attributes: $attributes)';
  }
}

/// @nodoc
abstract mixin class _$UpdateSalesOrderLineItemRequestCopyWith<$Res>
    implements $UpdateSalesOrderLineItemRequestCopyWith<$Res> {
  factory _$UpdateSalesOrderLineItemRequestCopyWith(
          _UpdateSalesOrderLineItemRequest value,
          $Res Function(_UpdateSalesOrderLineItemRequest) _then) =
      __$UpdateSalesOrderLineItemRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double? quantity,
      String? unit,
      double? unitPrice,
      double? discountAmount,
      double? taxAmount,
      int? sequence,
      String? notes,
      DateTime? requestedDeliveryDate,
      DateTime? confirmedDeliveryDate,
      String? lotNumber,
      String? serialNumber,
      Map<String, dynamic>? attributes});
}

/// @nodoc
class __$UpdateSalesOrderLineItemRequestCopyWithImpl<$Res>
    implements _$UpdateSalesOrderLineItemRequestCopyWith<$Res> {
  __$UpdateSalesOrderLineItemRequestCopyWithImpl(this._self, this._then);

  final _UpdateSalesOrderLineItemRequest _self;
  final $Res Function(_UpdateSalesOrderLineItemRequest) _then;

  /// Create a copy of UpdateSalesOrderLineItemRequest
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
    Object? notes = freezed,
    Object? requestedDeliveryDate = freezed,
    Object? confirmedDeliveryDate = freezed,
    Object? lotNumber = freezed,
    Object? serialNumber = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_UpdateSalesOrderLineItemRequest(
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
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedDeliveryDate: freezed == requestedDeliveryDate
          ? _self.requestedDeliveryDate
          : requestedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      confirmedDeliveryDate: freezed == confirmedDeliveryDate
          ? _self.confirmedDeliveryDate
          : confirmedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lotNumber: freezed == lotNumber
          ? _self.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _self.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$UpdateSalesOrderStatusRequest {
  String get status;
  String? get notes;
  DateTime? get statusDate;

  /// Create a copy of UpdateSalesOrderStatusRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateSalesOrderStatusRequestCopyWith<UpdateSalesOrderStatusRequest>
      get copyWith => _$UpdateSalesOrderStatusRequestCopyWithImpl<
              UpdateSalesOrderStatusRequest>(
          this as UpdateSalesOrderStatusRequest, _$identity);

  /// Serializes this UpdateSalesOrderStatusRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateSalesOrderStatusRequest &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.statusDate, statusDate) ||
                other.statusDate == statusDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, notes, statusDate);

  @override
  String toString() {
    return 'UpdateSalesOrderStatusRequest(status: $status, notes: $notes, statusDate: $statusDate)';
  }
}

/// @nodoc
abstract mixin class $UpdateSalesOrderStatusRequestCopyWith<$Res> {
  factory $UpdateSalesOrderStatusRequestCopyWith(
          UpdateSalesOrderStatusRequest value,
          $Res Function(UpdateSalesOrderStatusRequest) _then) =
      _$UpdateSalesOrderStatusRequestCopyWithImpl;
  @useResult
  $Res call({String status, String? notes, DateTime? statusDate});
}

/// @nodoc
class _$UpdateSalesOrderStatusRequestCopyWithImpl<$Res>
    implements $UpdateSalesOrderStatusRequestCopyWith<$Res> {
  _$UpdateSalesOrderStatusRequestCopyWithImpl(this._self, this._then);

  final UpdateSalesOrderStatusRequest _self;
  final $Res Function(UpdateSalesOrderStatusRequest) _then;

  /// Create a copy of UpdateSalesOrderStatusRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? notes = freezed,
    Object? statusDate = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      statusDate: freezed == statusDate
          ? _self.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateSalesOrderStatusRequest].
extension UpdateSalesOrderStatusRequestPatterns
    on UpdateSalesOrderStatusRequest {
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
    TResult Function(_UpdateSalesOrderStatusRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateSalesOrderStatusRequest() when $default != null:
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
    TResult Function(_UpdateSalesOrderStatusRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateSalesOrderStatusRequest():
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
    TResult? Function(_UpdateSalesOrderStatusRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateSalesOrderStatusRequest() when $default != null:
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
    TResult Function(String status, String? notes, DateTime? statusDate)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateSalesOrderStatusRequest() when $default != null:
        return $default(_that.status, _that.notes, _that.statusDate);
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
    TResult Function(String status, String? notes, DateTime? statusDate)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateSalesOrderStatusRequest():
        return $default(_that.status, _that.notes, _that.statusDate);
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
    TResult? Function(String status, String? notes, DateTime? statusDate)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateSalesOrderStatusRequest() when $default != null:
        return $default(_that.status, _that.notes, _that.statusDate);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateSalesOrderStatusRequest implements UpdateSalesOrderStatusRequest {
  const _UpdateSalesOrderStatusRequest(
      {required this.status, this.notes, this.statusDate});
  factory _UpdateSalesOrderStatusRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateSalesOrderStatusRequestFromJson(json);

  @override
  final String status;
  @override
  final String? notes;
  @override
  final DateTime? statusDate;

  /// Create a copy of UpdateSalesOrderStatusRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateSalesOrderStatusRequestCopyWith<_UpdateSalesOrderStatusRequest>
      get copyWith => __$UpdateSalesOrderStatusRequestCopyWithImpl<
          _UpdateSalesOrderStatusRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateSalesOrderStatusRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateSalesOrderStatusRequest &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.statusDate, statusDate) ||
                other.statusDate == statusDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, notes, statusDate);

  @override
  String toString() {
    return 'UpdateSalesOrderStatusRequest(status: $status, notes: $notes, statusDate: $statusDate)';
  }
}

/// @nodoc
abstract mixin class _$UpdateSalesOrderStatusRequestCopyWith<$Res>
    implements $UpdateSalesOrderStatusRequestCopyWith<$Res> {
  factory _$UpdateSalesOrderStatusRequestCopyWith(
          _UpdateSalesOrderStatusRequest value,
          $Res Function(_UpdateSalesOrderStatusRequest) _then) =
      __$UpdateSalesOrderStatusRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String status, String? notes, DateTime? statusDate});
}

/// @nodoc
class __$UpdateSalesOrderStatusRequestCopyWithImpl<$Res>
    implements _$UpdateSalesOrderStatusRequestCopyWith<$Res> {
  __$UpdateSalesOrderStatusRequestCopyWithImpl(this._self, this._then);

  final _UpdateSalesOrderStatusRequest _self;
  final $Res Function(_UpdateSalesOrderStatusRequest) _then;

  /// Create a copy of UpdateSalesOrderStatusRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? notes = freezed,
    Object? statusDate = freezed,
  }) {
    return _then(_UpdateSalesOrderStatusRequest(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      statusDate: freezed == statusDate
          ? _self.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
mixin _$SalesOrderHistory {
  String get id;
  String get salesOrderId;
  String
      get eventType; // 'created', 'status_changed', 'item_added', 'item_updated', 'item_removed', 'shipped', 'delivered'
  String get description;
  DateTime get eventDate;
  String? get performedBy;
  String? get oldValue;
  String? get newValue;
  String? get notes;
  Map<String, dynamic>? get metadata;

  /// Create a copy of SalesOrderHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SalesOrderHistoryCopyWith<SalesOrderHistory> get copyWith =>
      _$SalesOrderHistoryCopyWithImpl<SalesOrderHistory>(
          this as SalesOrderHistory, _$identity);

  /// Serializes this SalesOrderHistory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SalesOrderHistory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.salesOrderId, salesOrderId) ||
                other.salesOrderId == salesOrderId) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.eventDate, eventDate) ||
                other.eventDate == eventDate) &&
            (identical(other.performedBy, performedBy) ||
                other.performedBy == performedBy) &&
            (identical(other.oldValue, oldValue) ||
                other.oldValue == oldValue) &&
            (identical(other.newValue, newValue) ||
                other.newValue == newValue) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      salesOrderId,
      eventType,
      description,
      eventDate,
      performedBy,
      oldValue,
      newValue,
      notes,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'SalesOrderHistory(id: $id, salesOrderId: $salesOrderId, eventType: $eventType, description: $description, eventDate: $eventDate, performedBy: $performedBy, oldValue: $oldValue, newValue: $newValue, notes: $notes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $SalesOrderHistoryCopyWith<$Res> {
  factory $SalesOrderHistoryCopyWith(
          SalesOrderHistory value, $Res Function(SalesOrderHistory) _then) =
      _$SalesOrderHistoryCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String salesOrderId,
      String eventType,
      String description,
      DateTime eventDate,
      String? performedBy,
      String? oldValue,
      String? newValue,
      String? notes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$SalesOrderHistoryCopyWithImpl<$Res>
    implements $SalesOrderHistoryCopyWith<$Res> {
  _$SalesOrderHistoryCopyWithImpl(this._self, this._then);

  final SalesOrderHistory _self;
  final $Res Function(SalesOrderHistory) _then;

  /// Create a copy of SalesOrderHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? salesOrderId = null,
    Object? eventType = null,
    Object? description = null,
    Object? eventDate = null,
    Object? performedBy = freezed,
    Object? oldValue = freezed,
    Object? newValue = freezed,
    Object? notes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      salesOrderId: null == salesOrderId
          ? _self.salesOrderId
          : salesOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _self.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      eventDate: null == eventDate
          ? _self.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      performedBy: freezed == performedBy
          ? _self.performedBy
          : performedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      oldValue: freezed == oldValue
          ? _self.oldValue
          : oldValue // ignore: cast_nullable_to_non_nullable
              as String?,
      newValue: freezed == newValue
          ? _self.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SalesOrderHistory].
extension SalesOrderHistoryPatterns on SalesOrderHistory {
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
    TResult Function(_SalesOrderHistory value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SalesOrderHistory() when $default != null:
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
    TResult Function(_SalesOrderHistory value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SalesOrderHistory():
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
    TResult? Function(_SalesOrderHistory value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SalesOrderHistory() when $default != null:
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
            String salesOrderId,
            String eventType,
            String description,
            DateTime eventDate,
            String? performedBy,
            String? oldValue,
            String? newValue,
            String? notes,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SalesOrderHistory() when $default != null:
        return $default(
            _that.id,
            _that.salesOrderId,
            _that.eventType,
            _that.description,
            _that.eventDate,
            _that.performedBy,
            _that.oldValue,
            _that.newValue,
            _that.notes,
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
            String salesOrderId,
            String eventType,
            String description,
            DateTime eventDate,
            String? performedBy,
            String? oldValue,
            String? newValue,
            String? notes,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SalesOrderHistory():
        return $default(
            _that.id,
            _that.salesOrderId,
            _that.eventType,
            _that.description,
            _that.eventDate,
            _that.performedBy,
            _that.oldValue,
            _that.newValue,
            _that.notes,
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
            String salesOrderId,
            String eventType,
            String description,
            DateTime eventDate,
            String? performedBy,
            String? oldValue,
            String? newValue,
            String? notes,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SalesOrderHistory() when $default != null:
        return $default(
            _that.id,
            _that.salesOrderId,
            _that.eventType,
            _that.description,
            _that.eventDate,
            _that.performedBy,
            _that.oldValue,
            _that.newValue,
            _that.notes,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SalesOrderHistory implements SalesOrderHistory {
  const _SalesOrderHistory(
      {required this.id,
      required this.salesOrderId,
      required this.eventType,
      required this.description,
      required this.eventDate,
      this.performedBy,
      this.oldValue,
      this.newValue,
      this.notes,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _SalesOrderHistory.fromJson(Map<String, dynamic> json) =>
      _$SalesOrderHistoryFromJson(json);

  @override
  final String id;
  @override
  final String salesOrderId;
  @override
  final String eventType;
// 'created', 'status_changed', 'item_added', 'item_updated', 'item_removed', 'shipped', 'delivered'
  @override
  final String description;
  @override
  final DateTime eventDate;
  @override
  final String? performedBy;
  @override
  final String? oldValue;
  @override
  final String? newValue;
  @override
  final String? notes;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of SalesOrderHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SalesOrderHistoryCopyWith<_SalesOrderHistory> get copyWith =>
      __$SalesOrderHistoryCopyWithImpl<_SalesOrderHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SalesOrderHistoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SalesOrderHistory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.salesOrderId, salesOrderId) ||
                other.salesOrderId == salesOrderId) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.eventDate, eventDate) ||
                other.eventDate == eventDate) &&
            (identical(other.performedBy, performedBy) ||
                other.performedBy == performedBy) &&
            (identical(other.oldValue, oldValue) ||
                other.oldValue == oldValue) &&
            (identical(other.newValue, newValue) ||
                other.newValue == newValue) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      salesOrderId,
      eventType,
      description,
      eventDate,
      performedBy,
      oldValue,
      newValue,
      notes,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'SalesOrderHistory(id: $id, salesOrderId: $salesOrderId, eventType: $eventType, description: $description, eventDate: $eventDate, performedBy: $performedBy, oldValue: $oldValue, newValue: $newValue, notes: $notes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$SalesOrderHistoryCopyWith<$Res>
    implements $SalesOrderHistoryCopyWith<$Res> {
  factory _$SalesOrderHistoryCopyWith(
          _SalesOrderHistory value, $Res Function(_SalesOrderHistory) _then) =
      __$SalesOrderHistoryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String salesOrderId,
      String eventType,
      String description,
      DateTime eventDate,
      String? performedBy,
      String? oldValue,
      String? newValue,
      String? notes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$SalesOrderHistoryCopyWithImpl<$Res>
    implements _$SalesOrderHistoryCopyWith<$Res> {
  __$SalesOrderHistoryCopyWithImpl(this._self, this._then);

  final _SalesOrderHistory _self;
  final $Res Function(_SalesOrderHistory) _then;

  /// Create a copy of SalesOrderHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? salesOrderId = null,
    Object? eventType = null,
    Object? description = null,
    Object? eventDate = null,
    Object? performedBy = freezed,
    Object? oldValue = freezed,
    Object? newValue = freezed,
    Object? notes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_SalesOrderHistory(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      salesOrderId: null == salesOrderId
          ? _self.salesOrderId
          : salesOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _self.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      eventDate: null == eventDate
          ? _self.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      performedBy: freezed == performedBy
          ? _self.performedBy
          : performedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      oldValue: freezed == oldValue
          ? _self.oldValue
          : oldValue // ignore: cast_nullable_to_non_nullable
              as String?,
      newValue: freezed == newValue
          ? _self.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
mixin _$SalesOrderFilters {
  String? get customerId;
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

  /// Create a copy of SalesOrderFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SalesOrderFiltersCopyWith<SalesOrderFilters> get copyWith =>
      _$SalesOrderFiltersCopyWithImpl<SalesOrderFilters>(
          this as SalesOrderFilters, _$identity);

  /// Serializes this SalesOrderFilters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SalesOrderFilters &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
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
      customerId,
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
    return 'SalesOrderFilters(customerId: $customerId, status: $status, orderNumber: $orderNumber, orderDateAfter: $orderDateAfter, orderDateBefore: $orderDateBefore, deliveryDateAfter: $deliveryDateAfter, deliveryDateBefore: $deliveryDateBefore, totalAmountMin: $totalAmountMin, totalAmountMax: $totalAmountMax, createdBy: $createdBy, itemIds: $itemIds, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class $SalesOrderFiltersCopyWith<$Res> {
  factory $SalesOrderFiltersCopyWith(
          SalesOrderFilters value, $Res Function(SalesOrderFilters) _then) =
      _$SalesOrderFiltersCopyWithImpl;
  @useResult
  $Res call(
      {String? customerId,
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
class _$SalesOrderFiltersCopyWithImpl<$Res>
    implements $SalesOrderFiltersCopyWith<$Res> {
  _$SalesOrderFiltersCopyWithImpl(this._self, this._then);

  final SalesOrderFilters _self;
  final $Res Function(SalesOrderFilters) _then;

  /// Create a copy of SalesOrderFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = freezed,
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
      customerId: freezed == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
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

/// Adds pattern-matching-related methods to [SalesOrderFilters].
extension SalesOrderFiltersPatterns on SalesOrderFilters {
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
    TResult Function(_SalesOrderFilters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SalesOrderFilters() when $default != null:
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
    TResult Function(_SalesOrderFilters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SalesOrderFilters():
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
    TResult? Function(_SalesOrderFilters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SalesOrderFilters() when $default != null:
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
            String? customerId,
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
      case _SalesOrderFilters() when $default != null:
        return $default(
            _that.customerId,
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
            String? customerId,
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
      case _SalesOrderFilters():
        return $default(
            _that.customerId,
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
            String? customerId,
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
      case _SalesOrderFilters() when $default != null:
        return $default(
            _that.customerId,
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
class _SalesOrderFilters extends SalesOrderFilters {
  const _SalesOrderFilters(
      {this.customerId,
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
  factory _SalesOrderFilters.fromJson(Map<String, dynamic> json) =>
      _$SalesOrderFiltersFromJson(json);

  @override
  final String? customerId;
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

  /// Create a copy of SalesOrderFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SalesOrderFiltersCopyWith<_SalesOrderFilters> get copyWith =>
      __$SalesOrderFiltersCopyWithImpl<_SalesOrderFilters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SalesOrderFiltersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SalesOrderFilters &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
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
      customerId,
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
    return 'SalesOrderFilters(customerId: $customerId, status: $status, orderNumber: $orderNumber, orderDateAfter: $orderDateAfter, orderDateBefore: $orderDateBefore, deliveryDateAfter: $deliveryDateAfter, deliveryDateBefore: $deliveryDateBefore, totalAmountMin: $totalAmountMin, totalAmountMax: $totalAmountMax, createdBy: $createdBy, itemIds: $itemIds, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }
}

/// @nodoc
abstract mixin class _$SalesOrderFiltersCopyWith<$Res>
    implements $SalesOrderFiltersCopyWith<$Res> {
  factory _$SalesOrderFiltersCopyWith(
          _SalesOrderFilters value, $Res Function(_SalesOrderFilters) _then) =
      __$SalesOrderFiltersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? customerId,
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
class __$SalesOrderFiltersCopyWithImpl<$Res>
    implements _$SalesOrderFiltersCopyWith<$Res> {
  __$SalesOrderFiltersCopyWithImpl(this._self, this._then);

  final _SalesOrderFilters _self;
  final $Res Function(_SalesOrderFilters) _then;

  /// Create a copy of SalesOrderFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? customerId = freezed,
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
    return _then(_SalesOrderFilters(
      customerId: freezed == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
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
