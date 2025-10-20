// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_order_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SalesOrderLineItem _$SalesOrderLineItemFromJson(Map<String, dynamic> json) {
  return _SalesOrderLineItem.fromJson(json);
}

/// @nodoc
mixin _$SalesOrderLineItem {
  String get id => throw _privateConstructorUsedError;
  String get salesOrderId => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  double get unitPrice => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  double get discountAmount => throw _privateConstructorUsedError;
  double get taxAmount => throw _privateConstructorUsedError;
  double get netAmount => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // 'pending', 'confirmed', 'shipped', 'delivered', 'cancelled'
  int? get sequence => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  DateTime? get requestedDeliveryDate => throw _privateConstructorUsedError;
  DateTime? get confirmedDeliveryDate => throw _privateConstructorUsedError;
  DateTime? get actualDeliveryDate => throw _privateConstructorUsedError;
  double? get shippedQuantity => throw _privateConstructorUsedError;
  double? get deliveredQuantity => throw _privateConstructorUsedError;
  double? get returnedQuantity => throw _privateConstructorUsedError;
  String? get lotNumber => throw _privateConstructorUsedError;
  String? get serialNumber => throw _privateConstructorUsedError;
  Map<String, dynamic>? get attributes => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesOrderLineItemCopyWith<SalesOrderLineItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesOrderLineItemCopyWith<$Res> {
  factory $SalesOrderLineItemCopyWith(
          SalesOrderLineItem value, $Res Function(SalesOrderLineItem) then) =
      _$SalesOrderLineItemCopyWithImpl<$Res, SalesOrderLineItem>;
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
class _$SalesOrderLineItemCopyWithImpl<$Res, $Val extends SalesOrderLineItem>
    implements $SalesOrderLineItemCopyWith<$Res> {
  _$SalesOrderLineItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      salesOrderId: null == salesOrderId
          ? _value.salesOrderId
          : salesOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      netAmount: null == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedDeliveryDate: freezed == requestedDeliveryDate
          ? _value.requestedDeliveryDate
          : requestedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      confirmedDeliveryDate: freezed == confirmedDeliveryDate
          ? _value.confirmedDeliveryDate
          : confirmedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualDeliveryDate: freezed == actualDeliveryDate
          ? _value.actualDeliveryDate
          : actualDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      shippedQuantity: freezed == shippedQuantity
          ? _value.shippedQuantity
          : shippedQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveredQuantity: freezed == deliveredQuantity
          ? _value.deliveredQuantity
          : deliveredQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      returnedQuantity: freezed == returnedQuantity
          ? _value.returnedQuantity
          : returnedQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SalesOrderLineItemImplCopyWith<$Res>
    implements $SalesOrderLineItemCopyWith<$Res> {
  factory _$$SalesOrderLineItemImplCopyWith(_$SalesOrderLineItemImpl value,
          $Res Function(_$SalesOrderLineItemImpl) then) =
      __$$SalesOrderLineItemImplCopyWithImpl<$Res>;
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
class __$$SalesOrderLineItemImplCopyWithImpl<$Res>
    extends _$SalesOrderLineItemCopyWithImpl<$Res, _$SalesOrderLineItemImpl>
    implements _$$SalesOrderLineItemImplCopyWith<$Res> {
  __$$SalesOrderLineItemImplCopyWithImpl(_$SalesOrderLineItemImpl _value,
      $Res Function(_$SalesOrderLineItemImpl) _then)
      : super(_value, _then);

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
    return _then(_$SalesOrderLineItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      salesOrderId: null == salesOrderId
          ? _value.salesOrderId
          : salesOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      netAmount: null == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedDeliveryDate: freezed == requestedDeliveryDate
          ? _value.requestedDeliveryDate
          : requestedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      confirmedDeliveryDate: freezed == confirmedDeliveryDate
          ? _value.confirmedDeliveryDate
          : confirmedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualDeliveryDate: freezed == actualDeliveryDate
          ? _value.actualDeliveryDate
          : actualDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      shippedQuantity: freezed == shippedQuantity
          ? _value.shippedQuantity
          : shippedQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveredQuantity: freezed == deliveredQuantity
          ? _value.deliveredQuantity
          : deliveredQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      returnedQuantity: freezed == returnedQuantity
          ? _value.returnedQuantity
          : returnedQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SalesOrderLineItemImpl implements _SalesOrderLineItem {
  const _$SalesOrderLineItemImpl(
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

  factory _$SalesOrderLineItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesOrderLineItemImplFromJson(json);

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

  @override
  String toString() {
    return 'SalesOrderLineItem(id: $id, salesOrderId: $salesOrderId, itemId: $itemId, quantity: $quantity, unit: $unit, unitPrice: $unitPrice, totalPrice: $totalPrice, discountAmount: $discountAmount, taxAmount: $taxAmount, netAmount: $netAmount, status: $status, sequence: $sequence, notes: $notes, requestedDeliveryDate: $requestedDeliveryDate, confirmedDeliveryDate: $confirmedDeliveryDate, actualDeliveryDate: $actualDeliveryDate, shippedQuantity: $shippedQuantity, deliveredQuantity: $deliveredQuantity, returnedQuantity: $returnedQuantity, lotNumber: $lotNumber, serialNumber: $serialNumber, attributes: $attributes, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesOrderLineItemImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesOrderLineItemImplCopyWith<_$SalesOrderLineItemImpl> get copyWith =>
      __$$SalesOrderLineItemImplCopyWithImpl<_$SalesOrderLineItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesOrderLineItemImplToJson(
      this,
    );
  }
}

abstract class _SalesOrderLineItem implements SalesOrderLineItem {
  const factory _SalesOrderLineItem(
      {required final String id,
      required final String salesOrderId,
      required final String itemId,
      required final double quantity,
      required final String unit,
      required final double unitPrice,
      required final double totalPrice,
      required final double discountAmount,
      required final double taxAmount,
      required final double netAmount,
      required final String status,
      final int? sequence,
      final String? notes,
      final DateTime? requestedDeliveryDate,
      final DateTime? confirmedDeliveryDate,
      final DateTime? actualDeliveryDate,
      final double? shippedQuantity,
      final double? deliveredQuantity,
      final double? returnedQuantity,
      final String? lotNumber,
      final String? serialNumber,
      final Map<String, dynamic>? attributes,
      final Map<String, dynamic>? metadata}) = _$SalesOrderLineItemImpl;

  factory _SalesOrderLineItem.fromJson(Map<String, dynamic> json) =
      _$SalesOrderLineItemImpl.fromJson;

  @override
  String get id;
  @override
  String get salesOrderId;
  @override
  String get itemId;
  @override
  double get quantity;
  @override
  String get unit;
  @override
  double get unitPrice;
  @override
  double get totalPrice;
  @override
  double get discountAmount;
  @override
  double get taxAmount;
  @override
  double get netAmount;
  @override
  String get status;
  @override // 'pending', 'confirmed', 'shipped', 'delivered', 'cancelled'
  int? get sequence;
  @override
  String? get notes;
  @override
  DateTime? get requestedDeliveryDate;
  @override
  DateTime? get confirmedDeliveryDate;
  @override
  DateTime? get actualDeliveryDate;
  @override
  double? get shippedQuantity;
  @override
  double? get deliveredQuantity;
  @override
  double? get returnedQuantity;
  @override
  String? get lotNumber;
  @override
  String? get serialNumber;
  @override
  Map<String, dynamic>? get attributes;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$SalesOrderLineItemImplCopyWith<_$SalesOrderLineItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateSalesOrderLineItemRequest _$CreateSalesOrderLineItemRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateSalesOrderLineItemRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateSalesOrderLineItemRequest {
  String get itemId => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  double get unitPrice => throw _privateConstructorUsedError;
  double? get discountAmount => throw _privateConstructorUsedError;
  double? get taxAmount => throw _privateConstructorUsedError;
  int? get sequence => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  DateTime? get requestedDeliveryDate => throw _privateConstructorUsedError;
  String? get lotNumber => throw _privateConstructorUsedError;
  String? get serialNumber => throw _privateConstructorUsedError;
  Map<String, dynamic>? get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateSalesOrderLineItemRequestCopyWith<CreateSalesOrderLineItemRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSalesOrderLineItemRequestCopyWith<$Res> {
  factory $CreateSalesOrderLineItemRequestCopyWith(
          CreateSalesOrderLineItemRequest value,
          $Res Function(CreateSalesOrderLineItemRequest) then) =
      _$CreateSalesOrderLineItemRequestCopyWithImpl<$Res,
          CreateSalesOrderLineItemRequest>;
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
class _$CreateSalesOrderLineItemRequestCopyWithImpl<$Res,
        $Val extends CreateSalesOrderLineItemRequest>
    implements $CreateSalesOrderLineItemRequestCopyWith<$Res> {
  _$CreateSalesOrderLineItemRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: freezed == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedDeliveryDate: freezed == requestedDeliveryDate
          ? _value.requestedDeliveryDate
          : requestedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateSalesOrderLineItemRequestImplCopyWith<$Res>
    implements $CreateSalesOrderLineItemRequestCopyWith<$Res> {
  factory _$$CreateSalesOrderLineItemRequestImplCopyWith(
          _$CreateSalesOrderLineItemRequestImpl value,
          $Res Function(_$CreateSalesOrderLineItemRequestImpl) then) =
      __$$CreateSalesOrderLineItemRequestImplCopyWithImpl<$Res>;
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
class __$$CreateSalesOrderLineItemRequestImplCopyWithImpl<$Res>
    extends _$CreateSalesOrderLineItemRequestCopyWithImpl<$Res,
        _$CreateSalesOrderLineItemRequestImpl>
    implements _$$CreateSalesOrderLineItemRequestImplCopyWith<$Res> {
  __$$CreateSalesOrderLineItemRequestImplCopyWithImpl(
      _$CreateSalesOrderLineItemRequestImpl _value,
      $Res Function(_$CreateSalesOrderLineItemRequestImpl) _then)
      : super(_value, _then);

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
    return _then(_$CreateSalesOrderLineItemRequestImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: freezed == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedDeliveryDate: freezed == requestedDeliveryDate
          ? _value.requestedDeliveryDate
          : requestedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateSalesOrderLineItemRequestImpl
    implements _CreateSalesOrderLineItemRequest {
  const _$CreateSalesOrderLineItemRequestImpl(
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

  factory _$CreateSalesOrderLineItemRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateSalesOrderLineItemRequestImplFromJson(json);

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

  @override
  String toString() {
    return 'CreateSalesOrderLineItemRequest(itemId: $itemId, quantity: $quantity, unit: $unit, unitPrice: $unitPrice, discountAmount: $discountAmount, taxAmount: $taxAmount, sequence: $sequence, notes: $notes, requestedDeliveryDate: $requestedDeliveryDate, lotNumber: $lotNumber, serialNumber: $serialNumber, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSalesOrderLineItemRequestImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSalesOrderLineItemRequestImplCopyWith<
          _$CreateSalesOrderLineItemRequestImpl>
      get copyWith => __$$CreateSalesOrderLineItemRequestImplCopyWithImpl<
          _$CreateSalesOrderLineItemRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSalesOrderLineItemRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateSalesOrderLineItemRequest
    implements CreateSalesOrderLineItemRequest {
  const factory _CreateSalesOrderLineItemRequest(
          {required final String itemId,
          required final double quantity,
          required final String unit,
          required final double unitPrice,
          final double? discountAmount,
          final double? taxAmount,
          final int? sequence,
          final String? notes,
          final DateTime? requestedDeliveryDate,
          final String? lotNumber,
          final String? serialNumber,
          final Map<String, dynamic>? attributes}) =
      _$CreateSalesOrderLineItemRequestImpl;

  factory _CreateSalesOrderLineItemRequest.fromJson(Map<String, dynamic> json) =
      _$CreateSalesOrderLineItemRequestImpl.fromJson;

  @override
  String get itemId;
  @override
  double get quantity;
  @override
  String get unit;
  @override
  double get unitPrice;
  @override
  double? get discountAmount;
  @override
  double? get taxAmount;
  @override
  int? get sequence;
  @override
  String? get notes;
  @override
  DateTime? get requestedDeliveryDate;
  @override
  String? get lotNumber;
  @override
  String? get serialNumber;
  @override
  Map<String, dynamic>? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$CreateSalesOrderLineItemRequestImplCopyWith<
          _$CreateSalesOrderLineItemRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateSalesOrderLineItemRequest _$UpdateSalesOrderLineItemRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateSalesOrderLineItemRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateSalesOrderLineItemRequest {
  double? get quantity => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;
  double? get unitPrice => throw _privateConstructorUsedError;
  double? get discountAmount => throw _privateConstructorUsedError;
  double? get taxAmount => throw _privateConstructorUsedError;
  int? get sequence => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  DateTime? get requestedDeliveryDate => throw _privateConstructorUsedError;
  DateTime? get confirmedDeliveryDate => throw _privateConstructorUsedError;
  String? get lotNumber => throw _privateConstructorUsedError;
  String? get serialNumber => throw _privateConstructorUsedError;
  Map<String, dynamic>? get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateSalesOrderLineItemRequestCopyWith<UpdateSalesOrderLineItemRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSalesOrderLineItemRequestCopyWith<$Res> {
  factory $UpdateSalesOrderLineItemRequestCopyWith(
          UpdateSalesOrderLineItemRequest value,
          $Res Function(UpdateSalesOrderLineItemRequest) then) =
      _$UpdateSalesOrderLineItemRequestCopyWithImpl<$Res,
          UpdateSalesOrderLineItemRequest>;
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
class _$UpdateSalesOrderLineItemRequestCopyWithImpl<$Res,
        $Val extends UpdateSalesOrderLineItemRequest>
    implements $UpdateSalesOrderLineItemRequestCopyWith<$Res> {
  _$UpdateSalesOrderLineItemRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discountAmount: freezed == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedDeliveryDate: freezed == requestedDeliveryDate
          ? _value.requestedDeliveryDate
          : requestedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      confirmedDeliveryDate: freezed == confirmedDeliveryDate
          ? _value.confirmedDeliveryDate
          : confirmedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateSalesOrderLineItemRequestImplCopyWith<$Res>
    implements $UpdateSalesOrderLineItemRequestCopyWith<$Res> {
  factory _$$UpdateSalesOrderLineItemRequestImplCopyWith(
          _$UpdateSalesOrderLineItemRequestImpl value,
          $Res Function(_$UpdateSalesOrderLineItemRequestImpl) then) =
      __$$UpdateSalesOrderLineItemRequestImplCopyWithImpl<$Res>;
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
class __$$UpdateSalesOrderLineItemRequestImplCopyWithImpl<$Res>
    extends _$UpdateSalesOrderLineItemRequestCopyWithImpl<$Res,
        _$UpdateSalesOrderLineItemRequestImpl>
    implements _$$UpdateSalesOrderLineItemRequestImplCopyWith<$Res> {
  __$$UpdateSalesOrderLineItemRequestImplCopyWithImpl(
      _$UpdateSalesOrderLineItemRequestImpl _value,
      $Res Function(_$UpdateSalesOrderLineItemRequestImpl) _then)
      : super(_value, _then);

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
    return _then(_$UpdateSalesOrderLineItemRequestImpl(
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discountAmount: freezed == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedDeliveryDate: freezed == requestedDeliveryDate
          ? _value.requestedDeliveryDate
          : requestedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      confirmedDeliveryDate: freezed == confirmedDeliveryDate
          ? _value.confirmedDeliveryDate
          : confirmedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lotNumber: freezed == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      serialNumber: freezed == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateSalesOrderLineItemRequestImpl
    implements _UpdateSalesOrderLineItemRequest {
  const _$UpdateSalesOrderLineItemRequestImpl(
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

  factory _$UpdateSalesOrderLineItemRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateSalesOrderLineItemRequestImplFromJson(json);

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

  @override
  String toString() {
    return 'UpdateSalesOrderLineItemRequest(quantity: $quantity, unit: $unit, unitPrice: $unitPrice, discountAmount: $discountAmount, taxAmount: $taxAmount, sequence: $sequence, notes: $notes, requestedDeliveryDate: $requestedDeliveryDate, confirmedDeliveryDate: $confirmedDeliveryDate, lotNumber: $lotNumber, serialNumber: $serialNumber, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSalesOrderLineItemRequestImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSalesOrderLineItemRequestImplCopyWith<
          _$UpdateSalesOrderLineItemRequestImpl>
      get copyWith => __$$UpdateSalesOrderLineItemRequestImplCopyWithImpl<
          _$UpdateSalesOrderLineItemRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateSalesOrderLineItemRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateSalesOrderLineItemRequest
    implements UpdateSalesOrderLineItemRequest {
  const factory _UpdateSalesOrderLineItemRequest(
          {final double? quantity,
          final String? unit,
          final double? unitPrice,
          final double? discountAmount,
          final double? taxAmount,
          final int? sequence,
          final String? notes,
          final DateTime? requestedDeliveryDate,
          final DateTime? confirmedDeliveryDate,
          final String? lotNumber,
          final String? serialNumber,
          final Map<String, dynamic>? attributes}) =
      _$UpdateSalesOrderLineItemRequestImpl;

  factory _UpdateSalesOrderLineItemRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateSalesOrderLineItemRequestImpl.fromJson;

  @override
  double? get quantity;
  @override
  String? get unit;
  @override
  double? get unitPrice;
  @override
  double? get discountAmount;
  @override
  double? get taxAmount;
  @override
  int? get sequence;
  @override
  String? get notes;
  @override
  DateTime? get requestedDeliveryDate;
  @override
  DateTime? get confirmedDeliveryDate;
  @override
  String? get lotNumber;
  @override
  String? get serialNumber;
  @override
  Map<String, dynamic>? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$UpdateSalesOrderLineItemRequestImplCopyWith<
          _$UpdateSalesOrderLineItemRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateSalesOrderStatusRequest _$UpdateSalesOrderStatusRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateSalesOrderStatusRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateSalesOrderStatusRequest {
  String get status => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  DateTime? get statusDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateSalesOrderStatusRequestCopyWith<UpdateSalesOrderStatusRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSalesOrderStatusRequestCopyWith<$Res> {
  factory $UpdateSalesOrderStatusRequestCopyWith(
          UpdateSalesOrderStatusRequest value,
          $Res Function(UpdateSalesOrderStatusRequest) then) =
      _$UpdateSalesOrderStatusRequestCopyWithImpl<$Res,
          UpdateSalesOrderStatusRequest>;
  @useResult
  $Res call({String status, String? notes, DateTime? statusDate});
}

/// @nodoc
class _$UpdateSalesOrderStatusRequestCopyWithImpl<$Res,
        $Val extends UpdateSalesOrderStatusRequest>
    implements $UpdateSalesOrderStatusRequestCopyWith<$Res> {
  _$UpdateSalesOrderStatusRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? notes = freezed,
    Object? statusDate = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      statusDate: freezed == statusDate
          ? _value.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateSalesOrderStatusRequestImplCopyWith<$Res>
    implements $UpdateSalesOrderStatusRequestCopyWith<$Res> {
  factory _$$UpdateSalesOrderStatusRequestImplCopyWith(
          _$UpdateSalesOrderStatusRequestImpl value,
          $Res Function(_$UpdateSalesOrderStatusRequestImpl) then) =
      __$$UpdateSalesOrderStatusRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? notes, DateTime? statusDate});
}

/// @nodoc
class __$$UpdateSalesOrderStatusRequestImplCopyWithImpl<$Res>
    extends _$UpdateSalesOrderStatusRequestCopyWithImpl<$Res,
        _$UpdateSalesOrderStatusRequestImpl>
    implements _$$UpdateSalesOrderStatusRequestImplCopyWith<$Res> {
  __$$UpdateSalesOrderStatusRequestImplCopyWithImpl(
      _$UpdateSalesOrderStatusRequestImpl _value,
      $Res Function(_$UpdateSalesOrderStatusRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? notes = freezed,
    Object? statusDate = freezed,
  }) {
    return _then(_$UpdateSalesOrderStatusRequestImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      statusDate: freezed == statusDate
          ? _value.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateSalesOrderStatusRequestImpl
    implements _UpdateSalesOrderStatusRequest {
  const _$UpdateSalesOrderStatusRequestImpl(
      {required this.status, this.notes, this.statusDate});

  factory _$UpdateSalesOrderStatusRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateSalesOrderStatusRequestImplFromJson(json);

  @override
  final String status;
  @override
  final String? notes;
  @override
  final DateTime? statusDate;

  @override
  String toString() {
    return 'UpdateSalesOrderStatusRequest(status: $status, notes: $notes, statusDate: $statusDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSalesOrderStatusRequestImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.statusDate, statusDate) ||
                other.statusDate == statusDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, notes, statusDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSalesOrderStatusRequestImplCopyWith<
          _$UpdateSalesOrderStatusRequestImpl>
      get copyWith => __$$UpdateSalesOrderStatusRequestImplCopyWithImpl<
          _$UpdateSalesOrderStatusRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateSalesOrderStatusRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateSalesOrderStatusRequest
    implements UpdateSalesOrderStatusRequest {
  const factory _UpdateSalesOrderStatusRequest(
      {required final String status,
      final String? notes,
      final DateTime? statusDate}) = _$UpdateSalesOrderStatusRequestImpl;

  factory _UpdateSalesOrderStatusRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateSalesOrderStatusRequestImpl.fromJson;

  @override
  String get status;
  @override
  String? get notes;
  @override
  DateTime? get statusDate;
  @override
  @JsonKey(ignore: true)
  _$$UpdateSalesOrderStatusRequestImplCopyWith<
          _$UpdateSalesOrderStatusRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SalesOrderHistory _$SalesOrderHistoryFromJson(Map<String, dynamic> json) {
  return _SalesOrderHistory.fromJson(json);
}

/// @nodoc
mixin _$SalesOrderHistory {
  String get id => throw _privateConstructorUsedError;
  String get salesOrderId => throw _privateConstructorUsedError;
  String get eventType =>
      throw _privateConstructorUsedError; // 'created', 'status_changed', 'item_added', 'item_updated', 'item_removed', 'shipped', 'delivered'
  String get description => throw _privateConstructorUsedError;
  DateTime get eventDate => throw _privateConstructorUsedError;
  String? get performedBy => throw _privateConstructorUsedError;
  String? get oldValue => throw _privateConstructorUsedError;
  String? get newValue => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesOrderHistoryCopyWith<SalesOrderHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesOrderHistoryCopyWith<$Res> {
  factory $SalesOrderHistoryCopyWith(
          SalesOrderHistory value, $Res Function(SalesOrderHistory) then) =
      _$SalesOrderHistoryCopyWithImpl<$Res, SalesOrderHistory>;
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
class _$SalesOrderHistoryCopyWithImpl<$Res, $Val extends SalesOrderHistory>
    implements $SalesOrderHistoryCopyWith<$Res> {
  _$SalesOrderHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      salesOrderId: null == salesOrderId
          ? _value.salesOrderId
          : salesOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      eventDate: null == eventDate
          ? _value.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      performedBy: freezed == performedBy
          ? _value.performedBy
          : performedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      oldValue: freezed == oldValue
          ? _value.oldValue
          : oldValue // ignore: cast_nullable_to_non_nullable
              as String?,
      newValue: freezed == newValue
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SalesOrderHistoryImplCopyWith<$Res>
    implements $SalesOrderHistoryCopyWith<$Res> {
  factory _$$SalesOrderHistoryImplCopyWith(_$SalesOrderHistoryImpl value,
          $Res Function(_$SalesOrderHistoryImpl) then) =
      __$$SalesOrderHistoryImplCopyWithImpl<$Res>;
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
class __$$SalesOrderHistoryImplCopyWithImpl<$Res>
    extends _$SalesOrderHistoryCopyWithImpl<$Res, _$SalesOrderHistoryImpl>
    implements _$$SalesOrderHistoryImplCopyWith<$Res> {
  __$$SalesOrderHistoryImplCopyWithImpl(_$SalesOrderHistoryImpl _value,
      $Res Function(_$SalesOrderHistoryImpl) _then)
      : super(_value, _then);

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
    return _then(_$SalesOrderHistoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      salesOrderId: null == salesOrderId
          ? _value.salesOrderId
          : salesOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      eventDate: null == eventDate
          ? _value.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      performedBy: freezed == performedBy
          ? _value.performedBy
          : performedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      oldValue: freezed == oldValue
          ? _value.oldValue
          : oldValue // ignore: cast_nullable_to_non_nullable
              as String?,
      newValue: freezed == newValue
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SalesOrderHistoryImpl implements _SalesOrderHistory {
  const _$SalesOrderHistoryImpl(
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

  factory _$SalesOrderHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesOrderHistoryImplFromJson(json);

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

  @override
  String toString() {
    return 'SalesOrderHistory(id: $id, salesOrderId: $salesOrderId, eventType: $eventType, description: $description, eventDate: $eventDate, performedBy: $performedBy, oldValue: $oldValue, newValue: $newValue, notes: $notes, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesOrderHistoryImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesOrderHistoryImplCopyWith<_$SalesOrderHistoryImpl> get copyWith =>
      __$$SalesOrderHistoryImplCopyWithImpl<_$SalesOrderHistoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesOrderHistoryImplToJson(
      this,
    );
  }
}

abstract class _SalesOrderHistory implements SalesOrderHistory {
  const factory _SalesOrderHistory(
      {required final String id,
      required final String salesOrderId,
      required final String eventType,
      required final String description,
      required final DateTime eventDate,
      final String? performedBy,
      final String? oldValue,
      final String? newValue,
      final String? notes,
      final Map<String, dynamic>? metadata}) = _$SalesOrderHistoryImpl;

  factory _SalesOrderHistory.fromJson(Map<String, dynamic> json) =
      _$SalesOrderHistoryImpl.fromJson;

  @override
  String get id;
  @override
  String get salesOrderId;
  @override
  String get eventType;
  @override // 'created', 'status_changed', 'item_added', 'item_updated', 'item_removed', 'shipped', 'delivered'
  String get description;
  @override
  DateTime get eventDate;
  @override
  String? get performedBy;
  @override
  String? get oldValue;
  @override
  String? get newValue;
  @override
  String? get notes;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$SalesOrderHistoryImplCopyWith<_$SalesOrderHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SalesOrderFilters _$SalesOrderFiltersFromJson(Map<String, dynamic> json) {
  return _SalesOrderFilters.fromJson(json);
}

/// @nodoc
mixin _$SalesOrderFilters {
  String? get customerId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get orderNumber => throw _privateConstructorUsedError;
  DateTime? get orderDateAfter => throw _privateConstructorUsedError;
  DateTime? get orderDateBefore => throw _privateConstructorUsedError;
  DateTime? get deliveryDateAfter => throw _privateConstructorUsedError;
  DateTime? get deliveryDateBefore => throw _privateConstructorUsedError;
  double? get totalAmountMin => throw _privateConstructorUsedError;
  double? get totalAmountMax => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  List<String>? get itemIds => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String? get sortBy => throw _privateConstructorUsedError;
  String? get sortOrder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesOrderFiltersCopyWith<SalesOrderFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesOrderFiltersCopyWith<$Res> {
  factory $SalesOrderFiltersCopyWith(
          SalesOrderFilters value, $Res Function(SalesOrderFilters) then) =
      _$SalesOrderFiltersCopyWithImpl<$Res, SalesOrderFilters>;
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
class _$SalesOrderFiltersCopyWithImpl<$Res, $Val extends SalesOrderFilters>
    implements $SalesOrderFiltersCopyWith<$Res> {
  _$SalesOrderFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDateAfter: freezed == orderDateAfter
          ? _value.orderDateAfter
          : orderDateAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      orderDateBefore: freezed == orderDateBefore
          ? _value.orderDateBefore
          : orderDateBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryDateAfter: freezed == deliveryDateAfter
          ? _value.deliveryDateAfter
          : deliveryDateAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryDateBefore: freezed == deliveryDateBefore
          ? _value.deliveryDateBefore
          : deliveryDateBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalAmountMin: freezed == totalAmountMin
          ? _value.totalAmountMin
          : totalAmountMin // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmountMax: freezed == totalAmountMax
          ? _value.totalAmountMax
          : totalAmountMax // ignore: cast_nullable_to_non_nullable
              as double?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      itemIds: freezed == itemIds
          ? _value.itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SalesOrderFiltersImplCopyWith<$Res>
    implements $SalesOrderFiltersCopyWith<$Res> {
  factory _$$SalesOrderFiltersImplCopyWith(_$SalesOrderFiltersImpl value,
          $Res Function(_$SalesOrderFiltersImpl) then) =
      __$$SalesOrderFiltersImplCopyWithImpl<$Res>;
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
class __$$SalesOrderFiltersImplCopyWithImpl<$Res>
    extends _$SalesOrderFiltersCopyWithImpl<$Res, _$SalesOrderFiltersImpl>
    implements _$$SalesOrderFiltersImplCopyWith<$Res> {
  __$$SalesOrderFiltersImplCopyWithImpl(_$SalesOrderFiltersImpl _value,
      $Res Function(_$SalesOrderFiltersImpl) _then)
      : super(_value, _then);

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
    return _then(_$SalesOrderFiltersImpl(
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDateAfter: freezed == orderDateAfter
          ? _value.orderDateAfter
          : orderDateAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      orderDateBefore: freezed == orderDateBefore
          ? _value.orderDateBefore
          : orderDateBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryDateAfter: freezed == deliveryDateAfter
          ? _value.deliveryDateAfter
          : deliveryDateAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryDateBefore: freezed == deliveryDateBefore
          ? _value.deliveryDateBefore
          : deliveryDateBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalAmountMin: freezed == totalAmountMin
          ? _value.totalAmountMin
          : totalAmountMin // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmountMax: freezed == totalAmountMax
          ? _value.totalAmountMax
          : totalAmountMax // ignore: cast_nullable_to_non_nullable
              as double?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      itemIds: freezed == itemIds
          ? _value._itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: freezed == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SalesOrderFiltersImpl extends _SalesOrderFilters {
  const _$SalesOrderFiltersImpl(
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

  factory _$SalesOrderFiltersImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesOrderFiltersImplFromJson(json);

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

  @override
  String toString() {
    return 'SalesOrderFilters(customerId: $customerId, status: $status, orderNumber: $orderNumber, orderDateAfter: $orderDateAfter, orderDateBefore: $orderDateBefore, deliveryDateAfter: $deliveryDateAfter, deliveryDateBefore: $deliveryDateBefore, totalAmountMin: $totalAmountMin, totalAmountMax: $totalAmountMax, createdBy: $createdBy, itemIds: $itemIds, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesOrderFiltersImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesOrderFiltersImplCopyWith<_$SalesOrderFiltersImpl> get copyWith =>
      __$$SalesOrderFiltersImplCopyWithImpl<_$SalesOrderFiltersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesOrderFiltersImplToJson(
      this,
    );
  }
}

abstract class _SalesOrderFilters extends SalesOrderFilters {
  const factory _SalesOrderFilters(
      {final String? customerId,
      final String? status,
      final String? orderNumber,
      final DateTime? orderDateAfter,
      final DateTime? orderDateBefore,
      final DateTime? deliveryDateAfter,
      final DateTime? deliveryDateBefore,
      final double? totalAmountMin,
      final double? totalAmountMax,
      final String? createdBy,
      final List<String>? itemIds,
      final int? page,
      final int? limit,
      final String? sortBy,
      final String? sortOrder}) = _$SalesOrderFiltersImpl;
  const _SalesOrderFilters._() : super._();

  factory _SalesOrderFilters.fromJson(Map<String, dynamic> json) =
      _$SalesOrderFiltersImpl.fromJson;

  @override
  String? get customerId;
  @override
  String? get status;
  @override
  String? get orderNumber;
  @override
  DateTime? get orderDateAfter;
  @override
  DateTime? get orderDateBefore;
  @override
  DateTime? get deliveryDateAfter;
  @override
  DateTime? get deliveryDateBefore;
  @override
  double? get totalAmountMin;
  @override
  double? get totalAmountMax;
  @override
  String? get createdBy;
  @override
  List<String>? get itemIds;
  @override
  int? get page;
  @override
  int? get limit;
  @override
  String? get sortBy;
  @override
  String? get sortOrder;
  @override
  @JsonKey(ignore: true)
  _$$SalesOrderFiltersImplCopyWith<_$SalesOrderFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
