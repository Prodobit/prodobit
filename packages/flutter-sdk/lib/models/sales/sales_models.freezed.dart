// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateSalesOrderItemRequest _$CreateSalesOrderItemRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateSalesOrderItemRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateSalesOrderItemRequest {
  String get itemId => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  Money get unitPrice => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateSalesOrderItemRequestCopyWith<CreateSalesOrderItemRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSalesOrderItemRequestCopyWith<$Res> {
  factory $CreateSalesOrderItemRequestCopyWith(
          CreateSalesOrderItemRequest value,
          $Res Function(CreateSalesOrderItemRequest) then) =
      _$CreateSalesOrderItemRequestCopyWithImpl<$Res,
          CreateSalesOrderItemRequest>;
  @useResult
  $Res call(
      {String itemId, double quantity, Money unitPrice, String? description});

  $MoneyCopyWith<$Res> get unitPrice;
}

/// @nodoc
class _$CreateSalesOrderItemRequestCopyWithImpl<$Res,
        $Val extends CreateSalesOrderItemRequest>
    implements $CreateSalesOrderItemRequestCopyWith<$Res> {
  _$CreateSalesOrderItemRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? description = freezed,
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
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as Money,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get unitPrice {
    return $MoneyCopyWith<$Res>(_value.unitPrice, (value) {
      return _then(_value.copyWith(unitPrice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateSalesOrderItemRequestImplCopyWith<$Res>
    implements $CreateSalesOrderItemRequestCopyWith<$Res> {
  factory _$$CreateSalesOrderItemRequestImplCopyWith(
          _$CreateSalesOrderItemRequestImpl value,
          $Res Function(_$CreateSalesOrderItemRequestImpl) then) =
      __$$CreateSalesOrderItemRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String itemId, double quantity, Money unitPrice, String? description});

  @override
  $MoneyCopyWith<$Res> get unitPrice;
}

/// @nodoc
class __$$CreateSalesOrderItemRequestImplCopyWithImpl<$Res>
    extends _$CreateSalesOrderItemRequestCopyWithImpl<$Res,
        _$CreateSalesOrderItemRequestImpl>
    implements _$$CreateSalesOrderItemRequestImplCopyWith<$Res> {
  __$$CreateSalesOrderItemRequestImplCopyWithImpl(
      _$CreateSalesOrderItemRequestImpl _value,
      $Res Function(_$CreateSalesOrderItemRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? description = freezed,
  }) {
    return _then(_$CreateSalesOrderItemRequestImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as Money,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateSalesOrderItemRequestImpl
    implements _CreateSalesOrderItemRequest {
  const _$CreateSalesOrderItemRequestImpl(
      {required this.itemId,
      required this.quantity,
      required this.unitPrice,
      this.description});

  factory _$CreateSalesOrderItemRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateSalesOrderItemRequestImplFromJson(json);

  @override
  final String itemId;
  @override
  final double quantity;
  @override
  final Money unitPrice;
  @override
  final String? description;

  @override
  String toString() {
    return 'CreateSalesOrderItemRequest(itemId: $itemId, quantity: $quantity, unitPrice: $unitPrice, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSalesOrderItemRequestImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, itemId, quantity, unitPrice, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSalesOrderItemRequestImplCopyWith<_$CreateSalesOrderItemRequestImpl>
      get copyWith => __$$CreateSalesOrderItemRequestImplCopyWithImpl<
          _$CreateSalesOrderItemRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSalesOrderItemRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateSalesOrderItemRequest
    implements CreateSalesOrderItemRequest {
  const factory _CreateSalesOrderItemRequest(
      {required final String itemId,
      required final double quantity,
      required final Money unitPrice,
      final String? description}) = _$CreateSalesOrderItemRequestImpl;

  factory _CreateSalesOrderItemRequest.fromJson(Map<String, dynamic> json) =
      _$CreateSalesOrderItemRequestImpl.fromJson;

  @override
  String get itemId;
  @override
  double get quantity;
  @override
  Money get unitPrice;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$CreateSalesOrderItemRequestImplCopyWith<_$CreateSalesOrderItemRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateSalesOrderRequest _$CreateSalesOrderRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateSalesOrderRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateSalesOrderRequest {
  String get customerId => throw _privateConstructorUsedError;
  DateTime get orderDate => throw _privateConstructorUsedError;
  List<CreateSalesOrderItemRequest> get items =>
      throw _privateConstructorUsedError;
  DateTime? get deliveryDate => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateSalesOrderRequestCopyWith<CreateSalesOrderRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSalesOrderRequestCopyWith<$Res> {
  factory $CreateSalesOrderRequestCopyWith(CreateSalesOrderRequest value,
          $Res Function(CreateSalesOrderRequest) then) =
      _$CreateSalesOrderRequestCopyWithImpl<$Res, CreateSalesOrderRequest>;
  @useResult
  $Res call(
      {String customerId,
      DateTime orderDate,
      List<CreateSalesOrderItemRequest> items,
      DateTime? deliveryDate,
      String? notes});
}

/// @nodoc
class _$CreateSalesOrderRequestCopyWithImpl<$Res,
        $Val extends CreateSalesOrderRequest>
    implements $CreateSalesOrderRequestCopyWith<$Res> {
  _$CreateSalesOrderRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? orderDate = null,
    Object? items = null,
    Object? deliveryDate = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CreateSalesOrderItemRequest>,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateSalesOrderRequestImplCopyWith<$Res>
    implements $CreateSalesOrderRequestCopyWith<$Res> {
  factory _$$CreateSalesOrderRequestImplCopyWith(
          _$CreateSalesOrderRequestImpl value,
          $Res Function(_$CreateSalesOrderRequestImpl) then) =
      __$$CreateSalesOrderRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String customerId,
      DateTime orderDate,
      List<CreateSalesOrderItemRequest> items,
      DateTime? deliveryDate,
      String? notes});
}

/// @nodoc
class __$$CreateSalesOrderRequestImplCopyWithImpl<$Res>
    extends _$CreateSalesOrderRequestCopyWithImpl<$Res,
        _$CreateSalesOrderRequestImpl>
    implements _$$CreateSalesOrderRequestImplCopyWith<$Res> {
  __$$CreateSalesOrderRequestImplCopyWithImpl(
      _$CreateSalesOrderRequestImpl _value,
      $Res Function(_$CreateSalesOrderRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? orderDate = null,
    Object? items = null,
    Object? deliveryDate = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$CreateSalesOrderRequestImpl(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CreateSalesOrderItemRequest>,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateSalesOrderRequestImpl implements _CreateSalesOrderRequest {
  const _$CreateSalesOrderRequestImpl(
      {required this.customerId,
      required this.orderDate,
      required final List<CreateSalesOrderItemRequest> items,
      this.deliveryDate,
      this.notes})
      : _items = items;

  factory _$CreateSalesOrderRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateSalesOrderRequestImplFromJson(json);

  @override
  final String customerId;
  @override
  final DateTime orderDate;
  final List<CreateSalesOrderItemRequest> _items;
  @override
  List<CreateSalesOrderItemRequest> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final DateTime? deliveryDate;
  @override
  final String? notes;

  @override
  String toString() {
    return 'CreateSalesOrderRequest(customerId: $customerId, orderDate: $orderDate, items: $items, deliveryDate: $deliveryDate, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSalesOrderRequestImpl &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, customerId, orderDate,
      const DeepCollectionEquality().hash(_items), deliveryDate, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSalesOrderRequestImplCopyWith<_$CreateSalesOrderRequestImpl>
      get copyWith => __$$CreateSalesOrderRequestImplCopyWithImpl<
          _$CreateSalesOrderRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSalesOrderRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateSalesOrderRequest implements CreateSalesOrderRequest {
  const factory _CreateSalesOrderRequest(
      {required final String customerId,
      required final DateTime orderDate,
      required final List<CreateSalesOrderItemRequest> items,
      final DateTime? deliveryDate,
      final String? notes}) = _$CreateSalesOrderRequestImpl;

  factory _CreateSalesOrderRequest.fromJson(Map<String, dynamic> json) =
      _$CreateSalesOrderRequestImpl.fromJson;

  @override
  String get customerId;
  @override
  DateTime get orderDate;
  @override
  List<CreateSalesOrderItemRequest> get items;
  @override
  DateTime? get deliveryDate;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$CreateSalesOrderRequestImplCopyWith<_$CreateSalesOrderRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SalesOrder _$SalesOrderFromJson(Map<String, dynamic> json) {
  return _SalesOrder.fromJson(json);
}

/// @nodoc
mixin _$SalesOrder {
  String get id => throw _privateConstructorUsedError;
  String get orderNumber => throw _privateConstructorUsedError;
  String get customerId => throw _privateConstructorUsedError;
  String get customerName => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get orderDate => throw _privateConstructorUsedError;
  Money get total => throw _privateConstructorUsedError;
  List<SalesOrderItem> get items => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get deliveryDate => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get organizationId => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesOrderCopyWith<SalesOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesOrderCopyWith<$Res> {
  factory $SalesOrderCopyWith(
          SalesOrder value, $Res Function(SalesOrder) then) =
      _$SalesOrderCopyWithImpl<$Res, SalesOrder>;
  @useResult
  $Res call(
      {String id,
      String orderNumber,
      String customerId,
      String customerName,
      String status,
      DateTime orderDate,
      Money total,
      List<SalesOrderItem> items,
      DateTime createdAt,
      DateTime? deliveryDate,
      String? notes,
      String? organizationId,
      DateTime? updatedAt});

  $MoneyCopyWith<$Res> get total;
}

/// @nodoc
class _$SalesOrderCopyWithImpl<$Res, $Val extends SalesOrder>
    implements $SalesOrderCopyWith<$Res> {
  _$SalesOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderNumber = null,
    Object? customerId = null,
    Object? customerName = null,
    Object? status = null,
    Object? orderDate = null,
    Object? total = null,
    Object? items = null,
    Object? createdAt = null,
    Object? deliveryDate = freezed,
    Object? notes = freezed,
    Object? organizationId = freezed,
    Object? updatedAt = freezed,
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
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as Money,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SalesOrderItem>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get total {
    return $MoneyCopyWith<$Res>(_value.total, (value) {
      return _then(_value.copyWith(total: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SalesOrderImplCopyWith<$Res>
    implements $SalesOrderCopyWith<$Res> {
  factory _$$SalesOrderImplCopyWith(
          _$SalesOrderImpl value, $Res Function(_$SalesOrderImpl) then) =
      __$$SalesOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String orderNumber,
      String customerId,
      String customerName,
      String status,
      DateTime orderDate,
      Money total,
      List<SalesOrderItem> items,
      DateTime createdAt,
      DateTime? deliveryDate,
      String? notes,
      String? organizationId,
      DateTime? updatedAt});

  @override
  $MoneyCopyWith<$Res> get total;
}

/// @nodoc
class __$$SalesOrderImplCopyWithImpl<$Res>
    extends _$SalesOrderCopyWithImpl<$Res, _$SalesOrderImpl>
    implements _$$SalesOrderImplCopyWith<$Res> {
  __$$SalesOrderImplCopyWithImpl(
      _$SalesOrderImpl _value, $Res Function(_$SalesOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderNumber = null,
    Object? customerId = null,
    Object? customerName = null,
    Object? status = null,
    Object? orderDate = null,
    Object? total = null,
    Object? items = null,
    Object? createdAt = null,
    Object? deliveryDate = freezed,
    Object? notes = freezed,
    Object? organizationId = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SalesOrderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderNumber: null == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as Money,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SalesOrderItem>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SalesOrderImpl implements _SalesOrder {
  const _$SalesOrderImpl(
      {required this.id,
      required this.orderNumber,
      required this.customerId,
      required this.customerName,
      required this.status,
      required this.orderDate,
      required this.total,
      required final List<SalesOrderItem> items,
      required this.createdAt,
      this.deliveryDate,
      this.notes,
      this.organizationId,
      this.updatedAt})
      : _items = items;

  factory _$SalesOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesOrderImplFromJson(json);

  @override
  final String id;
  @override
  final String orderNumber;
  @override
  final String customerId;
  @override
  final String customerName;
  @override
  final String status;
  @override
  final DateTime orderDate;
  @override
  final Money total;
  final List<SalesOrderItem> _items;
  @override
  List<SalesOrderItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime? deliveryDate;
  @override
  final String? notes;
  @override
  final String? organizationId;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'SalesOrder(id: $id, orderNumber: $orderNumber, customerId: $customerId, customerName: $customerName, status: $status, orderDate: $orderDate, total: $total, items: $items, createdAt: $createdAt, deliveryDate: $deliveryDate, notes: $notes, organizationId: $organizationId, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesOrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      orderNumber,
      customerId,
      customerName,
      status,
      orderDate,
      total,
      const DeepCollectionEquality().hash(_items),
      createdAt,
      deliveryDate,
      notes,
      organizationId,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesOrderImplCopyWith<_$SalesOrderImpl> get copyWith =>
      __$$SalesOrderImplCopyWithImpl<_$SalesOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesOrderImplToJson(
      this,
    );
  }
}

abstract class _SalesOrder implements SalesOrder {
  const factory _SalesOrder(
      {required final String id,
      required final String orderNumber,
      required final String customerId,
      required final String customerName,
      required final String status,
      required final DateTime orderDate,
      required final Money total,
      required final List<SalesOrderItem> items,
      required final DateTime createdAt,
      final DateTime? deliveryDate,
      final String? notes,
      final String? organizationId,
      final DateTime? updatedAt}) = _$SalesOrderImpl;

  factory _SalesOrder.fromJson(Map<String, dynamic> json) =
      _$SalesOrderImpl.fromJson;

  @override
  String get id;
  @override
  String get orderNumber;
  @override
  String get customerId;
  @override
  String get customerName;
  @override
  String get status;
  @override
  DateTime get orderDate;
  @override
  Money get total;
  @override
  List<SalesOrderItem> get items;
  @override
  DateTime get createdAt;
  @override
  DateTime? get deliveryDate;
  @override
  String? get notes;
  @override
  String? get organizationId;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$SalesOrderImplCopyWith<_$SalesOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateSalesOrderRequest _$UpdateSalesOrderRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateSalesOrderRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateSalesOrderRequest {
  String? get orderNumber => throw _privateConstructorUsedError;
  DateTime? get orderDate => throw _privateConstructorUsedError;
  DateTime? get deliveryDate => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateSalesOrderRequestCopyWith<UpdateSalesOrderRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSalesOrderRequestCopyWith<$Res> {
  factory $UpdateSalesOrderRequestCopyWith(UpdateSalesOrderRequest value,
          $Res Function(UpdateSalesOrderRequest) then) =
      _$UpdateSalesOrderRequestCopyWithImpl<$Res, UpdateSalesOrderRequest>;
  @useResult
  $Res call(
      {String? orderNumber,
      DateTime? orderDate,
      DateTime? deliveryDate,
      String? status,
      String? notes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$UpdateSalesOrderRequestCopyWithImpl<$Res,
        $Val extends UpdateSalesOrderRequest>
    implements $UpdateSalesOrderRequestCopyWith<$Res> {
  _$UpdateSalesOrderRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderNumber = freezed,
    Object? orderDate = freezed,
    Object? deliveryDate = freezed,
    Object? status = freezed,
    Object? notes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDate: freezed == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
abstract class _$$UpdateSalesOrderRequestImplCopyWith<$Res>
    implements $UpdateSalesOrderRequestCopyWith<$Res> {
  factory _$$UpdateSalesOrderRequestImplCopyWith(
          _$UpdateSalesOrderRequestImpl value,
          $Res Function(_$UpdateSalesOrderRequestImpl) then) =
      __$$UpdateSalesOrderRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? orderNumber,
      DateTime? orderDate,
      DateTime? deliveryDate,
      String? status,
      String? notes,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$UpdateSalesOrderRequestImplCopyWithImpl<$Res>
    extends _$UpdateSalesOrderRequestCopyWithImpl<$Res,
        _$UpdateSalesOrderRequestImpl>
    implements _$$UpdateSalesOrderRequestImplCopyWith<$Res> {
  __$$UpdateSalesOrderRequestImplCopyWithImpl(
      _$UpdateSalesOrderRequestImpl _value,
      $Res Function(_$UpdateSalesOrderRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderNumber = freezed,
    Object? orderDate = freezed,
    Object? deliveryDate = freezed,
    Object? status = freezed,
    Object? notes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$UpdateSalesOrderRequestImpl(
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDate: freezed == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
class _$UpdateSalesOrderRequestImpl implements _UpdateSalesOrderRequest {
  const _$UpdateSalesOrderRequestImpl(
      {this.orderNumber,
      this.orderDate,
      this.deliveryDate,
      this.status,
      this.notes,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$UpdateSalesOrderRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateSalesOrderRequestImplFromJson(json);

  @override
  final String? orderNumber;
  @override
  final DateTime? orderDate;
  @override
  final DateTime? deliveryDate;
  @override
  final String? status;
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
    return 'UpdateSalesOrderRequest(orderNumber: $orderNumber, orderDate: $orderDate, deliveryDate: $deliveryDate, status: $status, notes: $notes, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSalesOrderRequestImpl &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderNumber,
      orderDate,
      deliveryDate,
      status,
      notes,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSalesOrderRequestImplCopyWith<_$UpdateSalesOrderRequestImpl>
      get copyWith => __$$UpdateSalesOrderRequestImplCopyWithImpl<
          _$UpdateSalesOrderRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateSalesOrderRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateSalesOrderRequest implements UpdateSalesOrderRequest {
  const factory _UpdateSalesOrderRequest(
      {final String? orderNumber,
      final DateTime? orderDate,
      final DateTime? deliveryDate,
      final String? status,
      final String? notes,
      final Map<String, dynamic>? metadata}) = _$UpdateSalesOrderRequestImpl;

  factory _UpdateSalesOrderRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateSalesOrderRequestImpl.fromJson;

  @override
  String? get orderNumber;
  @override
  DateTime? get orderDate;
  @override
  DateTime? get deliveryDate;
  @override
  String? get status;
  @override
  String? get notes;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$UpdateSalesOrderRequestImplCopyWith<_$UpdateSalesOrderRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SalesOrderItem _$SalesOrderItemFromJson(Map<String, dynamic> json) {
  return _SalesOrderItem.fromJson(json);
}

/// @nodoc
mixin _$SalesOrderItem {
  String get id => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  String get itemName => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  Money get unitPrice => throw _privateConstructorUsedError;
  Money get totalPrice => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesOrderItemCopyWith<SalesOrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesOrderItemCopyWith<$Res> {
  factory $SalesOrderItemCopyWith(
          SalesOrderItem value, $Res Function(SalesOrderItem) then) =
      _$SalesOrderItemCopyWithImpl<$Res, SalesOrderItem>;
  @useResult
  $Res call(
      {String id,
      String itemId,
      String itemName,
      double quantity,
      Money unitPrice,
      Money totalPrice,
      String? description});

  $MoneyCopyWith<$Res> get unitPrice;
  $MoneyCopyWith<$Res> get totalPrice;
}

/// @nodoc
class _$SalesOrderItemCopyWithImpl<$Res, $Val extends SalesOrderItem>
    implements $SalesOrderItemCopyWith<$Res> {
  _$SalesOrderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? itemId = null,
    Object? itemName = null,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? totalPrice = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as Money,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as Money,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get unitPrice {
    return $MoneyCopyWith<$Res>(_value.unitPrice, (value) {
      return _then(_value.copyWith(unitPrice: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get totalPrice {
    return $MoneyCopyWith<$Res>(_value.totalPrice, (value) {
      return _then(_value.copyWith(totalPrice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SalesOrderItemImplCopyWith<$Res>
    implements $SalesOrderItemCopyWith<$Res> {
  factory _$$SalesOrderItemImplCopyWith(_$SalesOrderItemImpl value,
          $Res Function(_$SalesOrderItemImpl) then) =
      __$$SalesOrderItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String itemId,
      String itemName,
      double quantity,
      Money unitPrice,
      Money totalPrice,
      String? description});

  @override
  $MoneyCopyWith<$Res> get unitPrice;
  @override
  $MoneyCopyWith<$Res> get totalPrice;
}

/// @nodoc
class __$$SalesOrderItemImplCopyWithImpl<$Res>
    extends _$SalesOrderItemCopyWithImpl<$Res, _$SalesOrderItemImpl>
    implements _$$SalesOrderItemImplCopyWith<$Res> {
  __$$SalesOrderItemImplCopyWithImpl(
      _$SalesOrderItemImpl _value, $Res Function(_$SalesOrderItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? itemId = null,
    Object? itemName = null,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? totalPrice = null,
    Object? description = freezed,
  }) {
    return _then(_$SalesOrderItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as Money,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as Money,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SalesOrderItemImpl implements _SalesOrderItem {
  const _$SalesOrderItemImpl(
      {required this.id,
      required this.itemId,
      required this.itemName,
      required this.quantity,
      required this.unitPrice,
      required this.totalPrice,
      this.description});

  factory _$SalesOrderItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesOrderItemImplFromJson(json);

  @override
  final String id;
  @override
  final String itemId;
  @override
  final String itemName;
  @override
  final double quantity;
  @override
  final Money unitPrice;
  @override
  final Money totalPrice;
  @override
  final String? description;

  @override
  String toString() {
    return 'SalesOrderItem(id: $id, itemId: $itemId, itemName: $itemName, quantity: $quantity, unitPrice: $unitPrice, totalPrice: $totalPrice, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesOrderItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, itemId, itemName, quantity,
      unitPrice, totalPrice, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesOrderItemImplCopyWith<_$SalesOrderItemImpl> get copyWith =>
      __$$SalesOrderItemImplCopyWithImpl<_$SalesOrderItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesOrderItemImplToJson(
      this,
    );
  }
}

abstract class _SalesOrderItem implements SalesOrderItem {
  const factory _SalesOrderItem(
      {required final String id,
      required final String itemId,
      required final String itemName,
      required final double quantity,
      required final Money unitPrice,
      required final Money totalPrice,
      final String? description}) = _$SalesOrderItemImpl;

  factory _SalesOrderItem.fromJson(Map<String, dynamic> json) =
      _$SalesOrderItemImpl.fromJson;

  @override
  String get id;
  @override
  String get itemId;
  @override
  String get itemName;
  @override
  double get quantity;
  @override
  Money get unitPrice;
  @override
  Money get totalPrice;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$SalesOrderItemImplCopyWith<_$SalesOrderItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
