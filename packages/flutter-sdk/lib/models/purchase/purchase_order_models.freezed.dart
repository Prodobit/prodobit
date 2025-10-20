// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_order_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PurchaseOrder _$PurchaseOrderFromJson(Map<String, dynamic> json) {
  return _PurchaseOrder.fromJson(json);
}

/// @nodoc
mixin _$PurchaseOrder {
  String get id => throw _privateConstructorUsedError;
  String get orderNumber => throw _privateConstructorUsedError;
  String get supplierId => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // 'draft', 'sent', 'acknowledged', 'approved', 'cancelled', 'closed'
  DateTime get orderDate => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  double get taxAmount => throw _privateConstructorUsedError;
  double get netAmount => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deliveryDate => throw _privateConstructorUsedError;
  DateTime? get acknowledgedAt => throw _privateConstructorUsedError;
  DateTime? get approvedAt => throw _privateConstructorUsedError;
  DateTime? get sentAt => throw _privateConstructorUsedError;
  DateTime? get cancelledAt => throw _privateConstructorUsedError;
  DateTime? get closedAt => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  String? get approvedBy => throw _privateConstructorUsedError;
  String? get cancelledBy => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get termsAndConditions => throw _privateConstructorUsedError;
  String? get paymentTerms => throw _privateConstructorUsedError;
  String? get deliveryAddress => throw _privateConstructorUsedError;
  String? get billingAddress => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseOrderCopyWith<PurchaseOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseOrderCopyWith<$Res> {
  factory $PurchaseOrderCopyWith(
          PurchaseOrder value, $Res Function(PurchaseOrder) then) =
      _$PurchaseOrderCopyWithImpl<$Res, PurchaseOrder>;
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
class _$PurchaseOrderCopyWithImpl<$Res, $Val extends PurchaseOrder>
    implements $PurchaseOrderCopyWith<$Res> {
  _$PurchaseOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderNumber: null == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      supplierId: null == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      netAmount: null == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      acknowledgedAt: freezed == acknowledgedAt
          ? _value.acknowledgedAt
          : acknowledgedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledAt: freezed == cancelledAt
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      closedAt: freezed == closedAt
          ? _value.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelledBy: freezed == cancelledBy
          ? _value.cancelledBy
          : cancelledBy // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _value.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _value.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddress: freezed == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddress: freezed == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PurchaseOrderImplCopyWith<$Res>
    implements $PurchaseOrderCopyWith<$Res> {
  factory _$$PurchaseOrderImplCopyWith(
          _$PurchaseOrderImpl value, $Res Function(_$PurchaseOrderImpl) then) =
      __$$PurchaseOrderImplCopyWithImpl<$Res>;
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
class __$$PurchaseOrderImplCopyWithImpl<$Res>
    extends _$PurchaseOrderCopyWithImpl<$Res, _$PurchaseOrderImpl>
    implements _$$PurchaseOrderImplCopyWith<$Res> {
  __$$PurchaseOrderImplCopyWithImpl(
      _$PurchaseOrderImpl _value, $Res Function(_$PurchaseOrderImpl) _then)
      : super(_value, _then);

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
    return _then(_$PurchaseOrderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderNumber: null == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      supplierId: null == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      netAmount: null == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      acknowledgedAt: freezed == acknowledgedAt
          ? _value.acknowledgedAt
          : acknowledgedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledAt: freezed == cancelledAt
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      closedAt: freezed == closedAt
          ? _value.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelledBy: freezed == cancelledBy
          ? _value.cancelledBy
          : cancelledBy // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _value.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _value.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddress: freezed == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddress: freezed == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
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
class _$PurchaseOrderImpl implements _PurchaseOrder {
  const _$PurchaseOrderImpl(
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

  factory _$PurchaseOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchaseOrderImplFromJson(json);

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

  @override
  String toString() {
    return 'PurchaseOrder(id: $id, orderNumber: $orderNumber, supplierId: $supplierId, status: $status, orderDate: $orderDate, totalAmount: $totalAmount, taxAmount: $taxAmount, netAmount: $netAmount, createdAt: $createdAt, updatedAt: $updatedAt, deliveryDate: $deliveryDate, acknowledgedAt: $acknowledgedAt, approvedAt: $approvedAt, sentAt: $sentAt, cancelledAt: $cancelledAt, closedAt: $closedAt, createdBy: $createdBy, approvedBy: $approvedBy, cancelledBy: $cancelledBy, notes: $notes, termsAndConditions: $termsAndConditions, paymentTerms: $paymentTerms, deliveryAddress: $deliveryAddress, billingAddress: $billingAddress, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseOrderImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseOrderImplCopyWith<_$PurchaseOrderImpl> get copyWith =>
      __$$PurchaseOrderImplCopyWithImpl<_$PurchaseOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchaseOrderImplToJson(
      this,
    );
  }
}

abstract class _PurchaseOrder implements PurchaseOrder {
  const factory _PurchaseOrder(
      {required final String id,
      required final String orderNumber,
      required final String supplierId,
      required final String status,
      required final DateTime orderDate,
      required final double totalAmount,
      required final double taxAmount,
      required final double netAmount,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final DateTime? deliveryDate,
      final DateTime? acknowledgedAt,
      final DateTime? approvedAt,
      final DateTime? sentAt,
      final DateTime? cancelledAt,
      final DateTime? closedAt,
      final String? createdBy,
      final String? approvedBy,
      final String? cancelledBy,
      final String? notes,
      final String? termsAndConditions,
      final String? paymentTerms,
      final String? deliveryAddress,
      final String? billingAddress,
      final Map<String, dynamic>? metadata}) = _$PurchaseOrderImpl;

  factory _PurchaseOrder.fromJson(Map<String, dynamic> json) =
      _$PurchaseOrderImpl.fromJson;

  @override
  String get id;
  @override
  String get orderNumber;
  @override
  String get supplierId;
  @override
  String get status;
  @override // 'draft', 'sent', 'acknowledged', 'approved', 'cancelled', 'closed'
  DateTime get orderDate;
  @override
  double get totalAmount;
  @override
  double get taxAmount;
  @override
  double get netAmount;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  DateTime? get deliveryDate;
  @override
  DateTime? get acknowledgedAt;
  @override
  DateTime? get approvedAt;
  @override
  DateTime? get sentAt;
  @override
  DateTime? get cancelledAt;
  @override
  DateTime? get closedAt;
  @override
  String? get createdBy;
  @override
  String? get approvedBy;
  @override
  String? get cancelledBy;
  @override
  String? get notes;
  @override
  String? get termsAndConditions;
  @override
  String? get paymentTerms;
  @override
  String? get deliveryAddress;
  @override
  String? get billingAddress;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$PurchaseOrderImplCopyWith<_$PurchaseOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PurchaseOrderLineItem _$PurchaseOrderLineItemFromJson(
    Map<String, dynamic> json) {
  return _PurchaseOrderLineItem.fromJson(json);
}

/// @nodoc
mixin _$PurchaseOrderLineItem {
  String get id => throw _privateConstructorUsedError;
  String get purchaseOrderId => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  double get unitPrice => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  double get discountAmount => throw _privateConstructorUsedError;
  double get taxAmount => throw _privateConstructorUsedError;
  double get netAmount => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // 'pending', 'acknowledged', 'received', 'cancelled'
  int? get sequence => throw _privateConstructorUsedError;
  DateTime? get requestedDeliveryDate => throw _privateConstructorUsedError;
  DateTime? get confirmedDeliveryDate => throw _privateConstructorUsedError;
  double? get receivedQuantity => throw _privateConstructorUsedError;
  double? get returnedQuantity => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get specification => throw _privateConstructorUsedError;
  Map<String, dynamic>? get attributes => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseOrderLineItemCopyWith<PurchaseOrderLineItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseOrderLineItemCopyWith<$Res> {
  factory $PurchaseOrderLineItemCopyWith(PurchaseOrderLineItem value,
          $Res Function(PurchaseOrderLineItem) then) =
      _$PurchaseOrderLineItemCopyWithImpl<$Res, PurchaseOrderLineItem>;
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
class _$PurchaseOrderLineItemCopyWithImpl<$Res,
        $Val extends PurchaseOrderLineItem>
    implements $PurchaseOrderLineItemCopyWith<$Res> {
  _$PurchaseOrderLineItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseOrderId: null == purchaseOrderId
          ? _value.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
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
      requestedDeliveryDate: freezed == requestedDeliveryDate
          ? _value.requestedDeliveryDate
          : requestedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      confirmedDeliveryDate: freezed == confirmedDeliveryDate
          ? _value.confirmedDeliveryDate
          : confirmedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      receivedQuantity: freezed == receivedQuantity
          ? _value.receivedQuantity
          : receivedQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      returnedQuantity: freezed == returnedQuantity
          ? _value.returnedQuantity
          : returnedQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PurchaseOrderLineItemImplCopyWith<$Res>
    implements $PurchaseOrderLineItemCopyWith<$Res> {
  factory _$$PurchaseOrderLineItemImplCopyWith(
          _$PurchaseOrderLineItemImpl value,
          $Res Function(_$PurchaseOrderLineItemImpl) then) =
      __$$PurchaseOrderLineItemImplCopyWithImpl<$Res>;
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
class __$$PurchaseOrderLineItemImplCopyWithImpl<$Res>
    extends _$PurchaseOrderLineItemCopyWithImpl<$Res,
        _$PurchaseOrderLineItemImpl>
    implements _$$PurchaseOrderLineItemImplCopyWith<$Res> {
  __$$PurchaseOrderLineItemImplCopyWithImpl(_$PurchaseOrderLineItemImpl _value,
      $Res Function(_$PurchaseOrderLineItemImpl) _then)
      : super(_value, _then);

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
    return _then(_$PurchaseOrderLineItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseOrderId: null == purchaseOrderId
          ? _value.purchaseOrderId
          : purchaseOrderId // ignore: cast_nullable_to_non_nullable
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
      requestedDeliveryDate: freezed == requestedDeliveryDate
          ? _value.requestedDeliveryDate
          : requestedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      confirmedDeliveryDate: freezed == confirmedDeliveryDate
          ? _value.confirmedDeliveryDate
          : confirmedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      receivedQuantity: freezed == receivedQuantity
          ? _value.receivedQuantity
          : receivedQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      returnedQuantity: freezed == returnedQuantity
          ? _value.returnedQuantity
          : returnedQuantity // ignore: cast_nullable_to_non_nullable
              as double?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
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
class _$PurchaseOrderLineItemImpl implements _PurchaseOrderLineItem {
  const _$PurchaseOrderLineItemImpl(
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

  factory _$PurchaseOrderLineItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchaseOrderLineItemImplFromJson(json);

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

  @override
  String toString() {
    return 'PurchaseOrderLineItem(id: $id, purchaseOrderId: $purchaseOrderId, itemId: $itemId, quantity: $quantity, unit: $unit, unitPrice: $unitPrice, totalPrice: $totalPrice, discountAmount: $discountAmount, taxAmount: $taxAmount, netAmount: $netAmount, status: $status, sequence: $sequence, requestedDeliveryDate: $requestedDeliveryDate, confirmedDeliveryDate: $confirmedDeliveryDate, receivedQuantity: $receivedQuantity, returnedQuantity: $returnedQuantity, notes: $notes, specification: $specification, attributes: $attributes, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseOrderLineItemImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseOrderLineItemImplCopyWith<_$PurchaseOrderLineItemImpl>
      get copyWith => __$$PurchaseOrderLineItemImplCopyWithImpl<
          _$PurchaseOrderLineItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchaseOrderLineItemImplToJson(
      this,
    );
  }
}

abstract class _PurchaseOrderLineItem implements PurchaseOrderLineItem {
  const factory _PurchaseOrderLineItem(
      {required final String id,
      required final String purchaseOrderId,
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
      final DateTime? requestedDeliveryDate,
      final DateTime? confirmedDeliveryDate,
      final double? receivedQuantity,
      final double? returnedQuantity,
      final String? notes,
      final String? specification,
      final Map<String, dynamic>? attributes,
      final Map<String, dynamic>? metadata}) = _$PurchaseOrderLineItemImpl;

  factory _PurchaseOrderLineItem.fromJson(Map<String, dynamic> json) =
      _$PurchaseOrderLineItemImpl.fromJson;

  @override
  String get id;
  @override
  String get purchaseOrderId;
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
  @override // 'pending', 'acknowledged', 'received', 'cancelled'
  int? get sequence;
  @override
  DateTime? get requestedDeliveryDate;
  @override
  DateTime? get confirmedDeliveryDate;
  @override
  double? get receivedQuantity;
  @override
  double? get returnedQuantity;
  @override
  String? get notes;
  @override
  String? get specification;
  @override
  Map<String, dynamic>? get attributes;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$PurchaseOrderLineItemImplCopyWith<_$PurchaseOrderLineItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreatePurchaseOrderRequest _$CreatePurchaseOrderRequestFromJson(
    Map<String, dynamic> json) {
  return _CreatePurchaseOrderRequest.fromJson(json);
}

/// @nodoc
mixin _$CreatePurchaseOrderRequest {
  String get supplierId => throw _privateConstructorUsedError;
  DateTime get orderDate => throw _privateConstructorUsedError;
  DateTime? get deliveryDate => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get termsAndConditions => throw _privateConstructorUsedError;
  String? get paymentTerms => throw _privateConstructorUsedError;
  String? get deliveryAddress => throw _privateConstructorUsedError;
  String? get billingAddress => throw _privateConstructorUsedError;
  List<CreatePurchaseOrderLineItemRequest>? get lineItems =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePurchaseOrderRequestCopyWith<CreatePurchaseOrderRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePurchaseOrderRequestCopyWith<$Res> {
  factory $CreatePurchaseOrderRequestCopyWith(CreatePurchaseOrderRequest value,
          $Res Function(CreatePurchaseOrderRequest) then) =
      _$CreatePurchaseOrderRequestCopyWithImpl<$Res,
          CreatePurchaseOrderRequest>;
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
class _$CreatePurchaseOrderRequestCopyWithImpl<$Res,
        $Val extends CreatePurchaseOrderRequest>
    implements $CreatePurchaseOrderRequestCopyWith<$Res> {
  _$CreatePurchaseOrderRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      supplierId: null == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _value.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _value.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddress: freezed == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddress: freezed == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      lineItems: freezed == lineItems
          ? _value.lineItems
          : lineItems // ignore: cast_nullable_to_non_nullable
              as List<CreatePurchaseOrderLineItemRequest>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatePurchaseOrderRequestImplCopyWith<$Res>
    implements $CreatePurchaseOrderRequestCopyWith<$Res> {
  factory _$$CreatePurchaseOrderRequestImplCopyWith(
          _$CreatePurchaseOrderRequestImpl value,
          $Res Function(_$CreatePurchaseOrderRequestImpl) then) =
      __$$CreatePurchaseOrderRequestImplCopyWithImpl<$Res>;
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
class __$$CreatePurchaseOrderRequestImplCopyWithImpl<$Res>
    extends _$CreatePurchaseOrderRequestCopyWithImpl<$Res,
        _$CreatePurchaseOrderRequestImpl>
    implements _$$CreatePurchaseOrderRequestImplCopyWith<$Res> {
  __$$CreatePurchaseOrderRequestImplCopyWithImpl(
      _$CreatePurchaseOrderRequestImpl _value,
      $Res Function(_$CreatePurchaseOrderRequestImpl) _then)
      : super(_value, _then);

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
    return _then(_$CreatePurchaseOrderRequestImpl(
      supplierId: null == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _value.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _value.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddress: freezed == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddress: freezed == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      lineItems: freezed == lineItems
          ? _value._lineItems
          : lineItems // ignore: cast_nullable_to_non_nullable
              as List<CreatePurchaseOrderLineItemRequest>?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatePurchaseOrderRequestImpl implements _CreatePurchaseOrderRequest {
  const _$CreatePurchaseOrderRequestImpl(
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

  factory _$CreatePurchaseOrderRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreatePurchaseOrderRequestImplFromJson(json);

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

  @override
  String toString() {
    return 'CreatePurchaseOrderRequest(supplierId: $supplierId, orderDate: $orderDate, deliveryDate: $deliveryDate, notes: $notes, termsAndConditions: $termsAndConditions, paymentTerms: $paymentTerms, deliveryAddress: $deliveryAddress, billingAddress: $billingAddress, lineItems: $lineItems, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePurchaseOrderRequestImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePurchaseOrderRequestImplCopyWith<_$CreatePurchaseOrderRequestImpl>
      get copyWith => __$$CreatePurchaseOrderRequestImplCopyWithImpl<
          _$CreatePurchaseOrderRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePurchaseOrderRequestImplToJson(
      this,
    );
  }
}

abstract class _CreatePurchaseOrderRequest
    implements CreatePurchaseOrderRequest {
  const factory _CreatePurchaseOrderRequest(
      {required final String supplierId,
      required final DateTime orderDate,
      final DateTime? deliveryDate,
      final String? notes,
      final String? termsAndConditions,
      final String? paymentTerms,
      final String? deliveryAddress,
      final String? billingAddress,
      final List<CreatePurchaseOrderLineItemRequest>? lineItems,
      final Map<String, dynamic>? metadata}) = _$CreatePurchaseOrderRequestImpl;

  factory _CreatePurchaseOrderRequest.fromJson(Map<String, dynamic> json) =
      _$CreatePurchaseOrderRequestImpl.fromJson;

  @override
  String get supplierId;
  @override
  DateTime get orderDate;
  @override
  DateTime? get deliveryDate;
  @override
  String? get notes;
  @override
  String? get termsAndConditions;
  @override
  String? get paymentTerms;
  @override
  String? get deliveryAddress;
  @override
  String? get billingAddress;
  @override
  List<CreatePurchaseOrderLineItemRequest>? get lineItems;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$CreatePurchaseOrderRequestImplCopyWith<_$CreatePurchaseOrderRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreatePurchaseOrderLineItemRequest _$CreatePurchaseOrderLineItemRequestFromJson(
    Map<String, dynamic> json) {
  return _CreatePurchaseOrderLineItemRequest.fromJson(json);
}

/// @nodoc
mixin _$CreatePurchaseOrderLineItemRequest {
  String get itemId => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  double get unitPrice => throw _privateConstructorUsedError;
  double? get discountAmount => throw _privateConstructorUsedError;
  double? get taxAmount => throw _privateConstructorUsedError;
  int? get sequence => throw _privateConstructorUsedError;
  DateTime? get requestedDeliveryDate => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get specification => throw _privateConstructorUsedError;
  Map<String, dynamic>? get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePurchaseOrderLineItemRequestCopyWith<
          CreatePurchaseOrderLineItemRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePurchaseOrderLineItemRequestCopyWith<$Res> {
  factory $CreatePurchaseOrderLineItemRequestCopyWith(
          CreatePurchaseOrderLineItemRequest value,
          $Res Function(CreatePurchaseOrderLineItemRequest) then) =
      _$CreatePurchaseOrderLineItemRequestCopyWithImpl<$Res,
          CreatePurchaseOrderLineItemRequest>;
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
class _$CreatePurchaseOrderLineItemRequestCopyWithImpl<$Res,
        $Val extends CreatePurchaseOrderLineItemRequest>
    implements $CreatePurchaseOrderLineItemRequestCopyWith<$Res> {
  _$CreatePurchaseOrderLineItemRequestCopyWithImpl(this._value, this._then);

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
    Object? requestedDeliveryDate = freezed,
    Object? notes = freezed,
    Object? specification = freezed,
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
      requestedDeliveryDate: freezed == requestedDeliveryDate
          ? _value.requestedDeliveryDate
          : requestedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatePurchaseOrderLineItemRequestImplCopyWith<$Res>
    implements $CreatePurchaseOrderLineItemRequestCopyWith<$Res> {
  factory _$$CreatePurchaseOrderLineItemRequestImplCopyWith(
          _$CreatePurchaseOrderLineItemRequestImpl value,
          $Res Function(_$CreatePurchaseOrderLineItemRequestImpl) then) =
      __$$CreatePurchaseOrderLineItemRequestImplCopyWithImpl<$Res>;
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
class __$$CreatePurchaseOrderLineItemRequestImplCopyWithImpl<$Res>
    extends _$CreatePurchaseOrderLineItemRequestCopyWithImpl<$Res,
        _$CreatePurchaseOrderLineItemRequestImpl>
    implements _$$CreatePurchaseOrderLineItemRequestImplCopyWith<$Res> {
  __$$CreatePurchaseOrderLineItemRequestImplCopyWithImpl(
      _$CreatePurchaseOrderLineItemRequestImpl _value,
      $Res Function(_$CreatePurchaseOrderLineItemRequestImpl) _then)
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
    Object? requestedDeliveryDate = freezed,
    Object? notes = freezed,
    Object? specification = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_$CreatePurchaseOrderLineItemRequestImpl(
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
      requestedDeliveryDate: freezed == requestedDeliveryDate
          ? _value.requestedDeliveryDate
          : requestedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
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
class _$CreatePurchaseOrderLineItemRequestImpl
    implements _CreatePurchaseOrderLineItemRequest {
  const _$CreatePurchaseOrderLineItemRequestImpl(
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

  factory _$CreatePurchaseOrderLineItemRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreatePurchaseOrderLineItemRequestImplFromJson(json);

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

  @override
  String toString() {
    return 'CreatePurchaseOrderLineItemRequest(itemId: $itemId, quantity: $quantity, unit: $unit, unitPrice: $unitPrice, discountAmount: $discountAmount, taxAmount: $taxAmount, sequence: $sequence, requestedDeliveryDate: $requestedDeliveryDate, notes: $notes, specification: $specification, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePurchaseOrderLineItemRequestImpl &&
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
      requestedDeliveryDate,
      notes,
      specification,
      const DeepCollectionEquality().hash(_attributes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePurchaseOrderLineItemRequestImplCopyWith<
          _$CreatePurchaseOrderLineItemRequestImpl>
      get copyWith => __$$CreatePurchaseOrderLineItemRequestImplCopyWithImpl<
          _$CreatePurchaseOrderLineItemRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePurchaseOrderLineItemRequestImplToJson(
      this,
    );
  }
}

abstract class _CreatePurchaseOrderLineItemRequest
    implements CreatePurchaseOrderLineItemRequest {
  const factory _CreatePurchaseOrderLineItemRequest(
          {required final String itemId,
          required final double quantity,
          required final String unit,
          required final double unitPrice,
          final double? discountAmount,
          final double? taxAmount,
          final int? sequence,
          final DateTime? requestedDeliveryDate,
          final String? notes,
          final String? specification,
          final Map<String, dynamic>? attributes}) =
      _$CreatePurchaseOrderLineItemRequestImpl;

  factory _CreatePurchaseOrderLineItemRequest.fromJson(
          Map<String, dynamic> json) =
      _$CreatePurchaseOrderLineItemRequestImpl.fromJson;

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
  DateTime? get requestedDeliveryDate;
  @override
  String? get notes;
  @override
  String? get specification;
  @override
  Map<String, dynamic>? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$CreatePurchaseOrderLineItemRequestImplCopyWith<
          _$CreatePurchaseOrderLineItemRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdatePurchaseOrderRequest _$UpdatePurchaseOrderRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdatePurchaseOrderRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdatePurchaseOrderRequest {
  DateTime? get orderDate => throw _privateConstructorUsedError;
  DateTime? get deliveryDate => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get termsAndConditions => throw _privateConstructorUsedError;
  String? get paymentTerms => throw _privateConstructorUsedError;
  String? get deliveryAddress => throw _privateConstructorUsedError;
  String? get billingAddress => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdatePurchaseOrderRequestCopyWith<UpdatePurchaseOrderRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePurchaseOrderRequestCopyWith<$Res> {
  factory $UpdatePurchaseOrderRequestCopyWith(UpdatePurchaseOrderRequest value,
          $Res Function(UpdatePurchaseOrderRequest) then) =
      _$UpdatePurchaseOrderRequestCopyWithImpl<$Res,
          UpdatePurchaseOrderRequest>;
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
class _$UpdatePurchaseOrderRequestCopyWithImpl<$Res,
        $Val extends UpdatePurchaseOrderRequest>
    implements $UpdatePurchaseOrderRequestCopyWith<$Res> {
  _$UpdatePurchaseOrderRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      orderDate: freezed == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _value.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _value.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddress: freezed == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddress: freezed == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdatePurchaseOrderRequestImplCopyWith<$Res>
    implements $UpdatePurchaseOrderRequestCopyWith<$Res> {
  factory _$$UpdatePurchaseOrderRequestImplCopyWith(
          _$UpdatePurchaseOrderRequestImpl value,
          $Res Function(_$UpdatePurchaseOrderRequestImpl) then) =
      __$$UpdatePurchaseOrderRequestImplCopyWithImpl<$Res>;
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
class __$$UpdatePurchaseOrderRequestImplCopyWithImpl<$Res>
    extends _$UpdatePurchaseOrderRequestCopyWithImpl<$Res,
        _$UpdatePurchaseOrderRequestImpl>
    implements _$$UpdatePurchaseOrderRequestImplCopyWith<$Res> {
  __$$UpdatePurchaseOrderRequestImplCopyWithImpl(
      _$UpdatePurchaseOrderRequestImpl _value,
      $Res Function(_$UpdatePurchaseOrderRequestImpl) _then)
      : super(_value, _then);

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
    return _then(_$UpdatePurchaseOrderRequestImpl(
      orderDate: freezed == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditions: freezed == termsAndConditions
          ? _value.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTerms: freezed == paymentTerms
          ? _value.paymentTerms
          : paymentTerms // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddress: freezed == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddress: freezed == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
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
class _$UpdatePurchaseOrderRequestImpl implements _UpdatePurchaseOrderRequest {
  const _$UpdatePurchaseOrderRequestImpl(
      {this.orderDate,
      this.deliveryDate,
      this.notes,
      this.termsAndConditions,
      this.paymentTerms,
      this.deliveryAddress,
      this.billingAddress,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$UpdatePurchaseOrderRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdatePurchaseOrderRequestImplFromJson(json);

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

  @override
  String toString() {
    return 'UpdatePurchaseOrderRequest(orderDate: $orderDate, deliveryDate: $deliveryDate, notes: $notes, termsAndConditions: $termsAndConditions, paymentTerms: $paymentTerms, deliveryAddress: $deliveryAddress, billingAddress: $billingAddress, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePurchaseOrderRequestImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePurchaseOrderRequestImplCopyWith<_$UpdatePurchaseOrderRequestImpl>
      get copyWith => __$$UpdatePurchaseOrderRequestImplCopyWithImpl<
          _$UpdatePurchaseOrderRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePurchaseOrderRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdatePurchaseOrderRequest
    implements UpdatePurchaseOrderRequest {
  const factory _UpdatePurchaseOrderRequest(
      {final DateTime? orderDate,
      final DateTime? deliveryDate,
      final String? notes,
      final String? termsAndConditions,
      final String? paymentTerms,
      final String? deliveryAddress,
      final String? billingAddress,
      final Map<String, dynamic>? metadata}) = _$UpdatePurchaseOrderRequestImpl;

  factory _UpdatePurchaseOrderRequest.fromJson(Map<String, dynamic> json) =
      _$UpdatePurchaseOrderRequestImpl.fromJson;

  @override
  DateTime? get orderDate;
  @override
  DateTime? get deliveryDate;
  @override
  String? get notes;
  @override
  String? get termsAndConditions;
  @override
  String? get paymentTerms;
  @override
  String? get deliveryAddress;
  @override
  String? get billingAddress;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$UpdatePurchaseOrderRequestImplCopyWith<_$UpdatePurchaseOrderRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdatePurchaseOrderLineItemRequest _$UpdatePurchaseOrderLineItemRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdatePurchaseOrderLineItemRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdatePurchaseOrderLineItemRequest {
  double? get quantity => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;
  double? get unitPrice => throw _privateConstructorUsedError;
  double? get discountAmount => throw _privateConstructorUsedError;
  double? get taxAmount => throw _privateConstructorUsedError;
  int? get sequence => throw _privateConstructorUsedError;
  DateTime? get requestedDeliveryDate => throw _privateConstructorUsedError;
  DateTime? get confirmedDeliveryDate => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get specification => throw _privateConstructorUsedError;
  Map<String, dynamic>? get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdatePurchaseOrderLineItemRequestCopyWith<
          UpdatePurchaseOrderLineItemRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePurchaseOrderLineItemRequestCopyWith<$Res> {
  factory $UpdatePurchaseOrderLineItemRequestCopyWith(
          UpdatePurchaseOrderLineItemRequest value,
          $Res Function(UpdatePurchaseOrderLineItemRequest) then) =
      _$UpdatePurchaseOrderLineItemRequestCopyWithImpl<$Res,
          UpdatePurchaseOrderLineItemRequest>;
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
class _$UpdatePurchaseOrderLineItemRequestCopyWithImpl<$Res,
        $Val extends UpdatePurchaseOrderLineItemRequest>
    implements $UpdatePurchaseOrderLineItemRequestCopyWith<$Res> {
  _$UpdatePurchaseOrderLineItemRequestCopyWithImpl(this._value, this._then);

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
    Object? requestedDeliveryDate = freezed,
    Object? confirmedDeliveryDate = freezed,
    Object? notes = freezed,
    Object? specification = freezed,
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
      requestedDeliveryDate: freezed == requestedDeliveryDate
          ? _value.requestedDeliveryDate
          : requestedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      confirmedDeliveryDate: freezed == confirmedDeliveryDate
          ? _value.confirmedDeliveryDate
          : confirmedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdatePurchaseOrderLineItemRequestImplCopyWith<$Res>
    implements $UpdatePurchaseOrderLineItemRequestCopyWith<$Res> {
  factory _$$UpdatePurchaseOrderLineItemRequestImplCopyWith(
          _$UpdatePurchaseOrderLineItemRequestImpl value,
          $Res Function(_$UpdatePurchaseOrderLineItemRequestImpl) then) =
      __$$UpdatePurchaseOrderLineItemRequestImplCopyWithImpl<$Res>;
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
class __$$UpdatePurchaseOrderLineItemRequestImplCopyWithImpl<$Res>
    extends _$UpdatePurchaseOrderLineItemRequestCopyWithImpl<$Res,
        _$UpdatePurchaseOrderLineItemRequestImpl>
    implements _$$UpdatePurchaseOrderLineItemRequestImplCopyWith<$Res> {
  __$$UpdatePurchaseOrderLineItemRequestImplCopyWithImpl(
      _$UpdatePurchaseOrderLineItemRequestImpl _value,
      $Res Function(_$UpdatePurchaseOrderLineItemRequestImpl) _then)
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
    Object? requestedDeliveryDate = freezed,
    Object? confirmedDeliveryDate = freezed,
    Object? notes = freezed,
    Object? specification = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_$UpdatePurchaseOrderLineItemRequestImpl(
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
      requestedDeliveryDate: freezed == requestedDeliveryDate
          ? _value.requestedDeliveryDate
          : requestedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      confirmedDeliveryDate: freezed == confirmedDeliveryDate
          ? _value.confirmedDeliveryDate
          : confirmedDeliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
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
class _$UpdatePurchaseOrderLineItemRequestImpl
    implements _UpdatePurchaseOrderLineItemRequest {
  const _$UpdatePurchaseOrderLineItemRequestImpl(
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

  factory _$UpdatePurchaseOrderLineItemRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdatePurchaseOrderLineItemRequestImplFromJson(json);

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

  @override
  String toString() {
    return 'UpdatePurchaseOrderLineItemRequest(quantity: $quantity, unit: $unit, unitPrice: $unitPrice, discountAmount: $discountAmount, taxAmount: $taxAmount, sequence: $sequence, requestedDeliveryDate: $requestedDeliveryDate, confirmedDeliveryDate: $confirmedDeliveryDate, notes: $notes, specification: $specification, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePurchaseOrderLineItemRequestImpl &&
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
      requestedDeliveryDate,
      confirmedDeliveryDate,
      notes,
      specification,
      const DeepCollectionEquality().hash(_attributes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePurchaseOrderLineItemRequestImplCopyWith<
          _$UpdatePurchaseOrderLineItemRequestImpl>
      get copyWith => __$$UpdatePurchaseOrderLineItemRequestImplCopyWithImpl<
          _$UpdatePurchaseOrderLineItemRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePurchaseOrderLineItemRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdatePurchaseOrderLineItemRequest
    implements UpdatePurchaseOrderLineItemRequest {
  const factory _UpdatePurchaseOrderLineItemRequest(
          {final double? quantity,
          final String? unit,
          final double? unitPrice,
          final double? discountAmount,
          final double? taxAmount,
          final int? sequence,
          final DateTime? requestedDeliveryDate,
          final DateTime? confirmedDeliveryDate,
          final String? notes,
          final String? specification,
          final Map<String, dynamic>? attributes}) =
      _$UpdatePurchaseOrderLineItemRequestImpl;

  factory _UpdatePurchaseOrderLineItemRequest.fromJson(
          Map<String, dynamic> json) =
      _$UpdatePurchaseOrderLineItemRequestImpl.fromJson;

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
  DateTime? get requestedDeliveryDate;
  @override
  DateTime? get confirmedDeliveryDate;
  @override
  String? get notes;
  @override
  String? get specification;
  @override
  Map<String, dynamic>? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$UpdatePurchaseOrderLineItemRequestImplCopyWith<
          _$UpdatePurchaseOrderLineItemRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PurchaseOrderFilters _$PurchaseOrderFiltersFromJson(Map<String, dynamic> json) {
  return _PurchaseOrderFilters.fromJson(json);
}

/// @nodoc
mixin _$PurchaseOrderFilters {
  String? get supplierId => throw _privateConstructorUsedError;
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
  $PurchaseOrderFiltersCopyWith<PurchaseOrderFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseOrderFiltersCopyWith<$Res> {
  factory $PurchaseOrderFiltersCopyWith(PurchaseOrderFilters value,
          $Res Function(PurchaseOrderFilters) then) =
      _$PurchaseOrderFiltersCopyWithImpl<$Res, PurchaseOrderFilters>;
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
class _$PurchaseOrderFiltersCopyWithImpl<$Res,
        $Val extends PurchaseOrderFilters>
    implements $PurchaseOrderFiltersCopyWith<$Res> {
  _$PurchaseOrderFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      supplierId: freezed == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PurchaseOrderFiltersImplCopyWith<$Res>
    implements $PurchaseOrderFiltersCopyWith<$Res> {
  factory _$$PurchaseOrderFiltersImplCopyWith(_$PurchaseOrderFiltersImpl value,
          $Res Function(_$PurchaseOrderFiltersImpl) then) =
      __$$PurchaseOrderFiltersImplCopyWithImpl<$Res>;
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
class __$$PurchaseOrderFiltersImplCopyWithImpl<$Res>
    extends _$PurchaseOrderFiltersCopyWithImpl<$Res, _$PurchaseOrderFiltersImpl>
    implements _$$PurchaseOrderFiltersImplCopyWith<$Res> {
  __$$PurchaseOrderFiltersImplCopyWithImpl(_$PurchaseOrderFiltersImpl _value,
      $Res Function(_$PurchaseOrderFiltersImpl) _then)
      : super(_value, _then);

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
    return _then(_$PurchaseOrderFiltersImpl(
      supplierId: freezed == supplierId
          ? _value.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
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
class _$PurchaseOrderFiltersImpl extends _PurchaseOrderFilters {
  const _$PurchaseOrderFiltersImpl(
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

  factory _$PurchaseOrderFiltersImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchaseOrderFiltersImplFromJson(json);

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

  @override
  String toString() {
    return 'PurchaseOrderFilters(supplierId: $supplierId, status: $status, orderNumber: $orderNumber, orderDateAfter: $orderDateAfter, orderDateBefore: $orderDateBefore, deliveryDateAfter: $deliveryDateAfter, deliveryDateBefore: $deliveryDateBefore, totalAmountMin: $totalAmountMin, totalAmountMax: $totalAmountMax, createdBy: $createdBy, itemIds: $itemIds, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseOrderFiltersImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseOrderFiltersImplCopyWith<_$PurchaseOrderFiltersImpl>
      get copyWith =>
          __$$PurchaseOrderFiltersImplCopyWithImpl<_$PurchaseOrderFiltersImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchaseOrderFiltersImplToJson(
      this,
    );
  }
}

abstract class _PurchaseOrderFilters extends PurchaseOrderFilters {
  const factory _PurchaseOrderFilters(
      {final String? supplierId,
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
      final String? sortOrder}) = _$PurchaseOrderFiltersImpl;
  const _PurchaseOrderFilters._() : super._();

  factory _PurchaseOrderFilters.fromJson(Map<String, dynamic> json) =
      _$PurchaseOrderFiltersImpl.fromJson;

  @override
  String? get supplierId;
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
  _$$PurchaseOrderFiltersImplCopyWith<_$PurchaseOrderFiltersImpl>
      get copyWith => throw _privateConstructorUsedError;
}
