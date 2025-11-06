// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateSalesOrderItemRequest {
  String get itemId;
  double get quantity;
  Money get unitPrice;
  String? get description;

  /// Create a copy of CreateSalesOrderItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateSalesOrderItemRequestCopyWith<CreateSalesOrderItemRequest>
      get copyWith => _$CreateSalesOrderItemRequestCopyWithImpl<
              CreateSalesOrderItemRequest>(
          this as CreateSalesOrderItemRequest, _$identity);

  /// Serializes this CreateSalesOrderItemRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateSalesOrderItemRequest &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, itemId, quantity, unitPrice, description);

  @override
  String toString() {
    return 'CreateSalesOrderItemRequest(itemId: $itemId, quantity: $quantity, unitPrice: $unitPrice, description: $description)';
  }
}

/// @nodoc
abstract mixin class $CreateSalesOrderItemRequestCopyWith<$Res> {
  factory $CreateSalesOrderItemRequestCopyWith(
          CreateSalesOrderItemRequest value,
          $Res Function(CreateSalesOrderItemRequest) _then) =
      _$CreateSalesOrderItemRequestCopyWithImpl;
  @useResult
  $Res call(
      {String itemId, double quantity, Money unitPrice, String? description});

  $MoneyCopyWith<$Res> get unitPrice;
}

/// @nodoc
class _$CreateSalesOrderItemRequestCopyWithImpl<$Res>
    implements $CreateSalesOrderItemRequestCopyWith<$Res> {
  _$CreateSalesOrderItemRequestCopyWithImpl(this._self, this._then);

  final CreateSalesOrderItemRequest _self;
  final $Res Function(CreateSalesOrderItemRequest) _then;

  /// Create a copy of CreateSalesOrderItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? description = freezed,
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
      unitPrice: null == unitPrice
          ? _self.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as Money,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of CreateSalesOrderItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get unitPrice {
    return $MoneyCopyWith<$Res>(_self.unitPrice, (value) {
      return _then(_self.copyWith(unitPrice: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CreateSalesOrderItemRequest].
extension CreateSalesOrderItemRequestPatterns on CreateSalesOrderItemRequest {
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
    TResult Function(_CreateSalesOrderItemRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateSalesOrderItemRequest() when $default != null:
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
    TResult Function(_CreateSalesOrderItemRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSalesOrderItemRequest():
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
    TResult? Function(_CreateSalesOrderItemRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSalesOrderItemRequest() when $default != null:
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
    TResult Function(String itemId, double quantity, Money unitPrice,
            String? description)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateSalesOrderItemRequest() when $default != null:
        return $default(
            _that.itemId, _that.quantity, _that.unitPrice, _that.description);
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
    TResult Function(String itemId, double quantity, Money unitPrice,
            String? description)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSalesOrderItemRequest():
        return $default(
            _that.itemId, _that.quantity, _that.unitPrice, _that.description);
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
    TResult? Function(String itemId, double quantity, Money unitPrice,
            String? description)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSalesOrderItemRequest() when $default != null:
        return $default(
            _that.itemId, _that.quantity, _that.unitPrice, _that.description);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateSalesOrderItemRequest implements CreateSalesOrderItemRequest {
  const _CreateSalesOrderItemRequest(
      {required this.itemId,
      required this.quantity,
      required this.unitPrice,
      this.description});
  factory _CreateSalesOrderItemRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSalesOrderItemRequestFromJson(json);

  @override
  final String itemId;
  @override
  final double quantity;
  @override
  final Money unitPrice;
  @override
  final String? description;

  /// Create a copy of CreateSalesOrderItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateSalesOrderItemRequestCopyWith<_CreateSalesOrderItemRequest>
      get copyWith => __$CreateSalesOrderItemRequestCopyWithImpl<
          _CreateSalesOrderItemRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateSalesOrderItemRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateSalesOrderItemRequest &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, itemId, quantity, unitPrice, description);

  @override
  String toString() {
    return 'CreateSalesOrderItemRequest(itemId: $itemId, quantity: $quantity, unitPrice: $unitPrice, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$CreateSalesOrderItemRequestCopyWith<$Res>
    implements $CreateSalesOrderItemRequestCopyWith<$Res> {
  factory _$CreateSalesOrderItemRequestCopyWith(
          _CreateSalesOrderItemRequest value,
          $Res Function(_CreateSalesOrderItemRequest) _then) =
      __$CreateSalesOrderItemRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String itemId, double quantity, Money unitPrice, String? description});

  @override
  $MoneyCopyWith<$Res> get unitPrice;
}

/// @nodoc
class __$CreateSalesOrderItemRequestCopyWithImpl<$Res>
    implements _$CreateSalesOrderItemRequestCopyWith<$Res> {
  __$CreateSalesOrderItemRequestCopyWithImpl(this._self, this._then);

  final _CreateSalesOrderItemRequest _self;
  final $Res Function(_CreateSalesOrderItemRequest) _then;

  /// Create a copy of CreateSalesOrderItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? itemId = null,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? description = freezed,
  }) {
    return _then(_CreateSalesOrderItemRequest(
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unitPrice: null == unitPrice
          ? _self.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as Money,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of CreateSalesOrderItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get unitPrice {
    return $MoneyCopyWith<$Res>(_self.unitPrice, (value) {
      return _then(_self.copyWith(unitPrice: value));
    });
  }
}

/// @nodoc
mixin _$CreateSalesOrderRequest {
  String get customerId;
  DateTime get orderDate;
  List<CreateSalesOrderItemRequest> get items;
  DateTime? get deliveryDate;
  String? get notes;

  /// Create a copy of CreateSalesOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateSalesOrderRequestCopyWith<CreateSalesOrderRequest> get copyWith =>
      _$CreateSalesOrderRequestCopyWithImpl<CreateSalesOrderRequest>(
          this as CreateSalesOrderRequest, _$identity);

  /// Serializes this CreateSalesOrderRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateSalesOrderRequest &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            const DeepCollectionEquality().equals(other.items, items) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, customerId, orderDate,
      const DeepCollectionEquality().hash(items), deliveryDate, notes);

  @override
  String toString() {
    return 'CreateSalesOrderRequest(customerId: $customerId, orderDate: $orderDate, items: $items, deliveryDate: $deliveryDate, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $CreateSalesOrderRequestCopyWith<$Res> {
  factory $CreateSalesOrderRequestCopyWith(CreateSalesOrderRequest value,
          $Res Function(CreateSalesOrderRequest) _then) =
      _$CreateSalesOrderRequestCopyWithImpl;
  @useResult
  $Res call(
      {String customerId,
      DateTime orderDate,
      List<CreateSalesOrderItemRequest> items,
      DateTime? deliveryDate,
      String? notes});
}

/// @nodoc
class _$CreateSalesOrderRequestCopyWithImpl<$Res>
    implements $CreateSalesOrderRequestCopyWith<$Res> {
  _$CreateSalesOrderRequestCopyWithImpl(this._self, this._then);

  final CreateSalesOrderRequest _self;
  final $Res Function(CreateSalesOrderRequest) _then;

  /// Create a copy of CreateSalesOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? orderDate = null,
    Object? items = null,
    Object? deliveryDate = freezed,
    Object? notes = freezed,
  }) {
    return _then(_self.copyWith(
      customerId: null == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _self.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CreateSalesOrderItemRequest>,
      deliveryDate: freezed == deliveryDate
          ? _self.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateSalesOrderRequest].
extension CreateSalesOrderRequestPatterns on CreateSalesOrderRequest {
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
    TResult Function(_CreateSalesOrderRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateSalesOrderRequest() when $default != null:
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
    TResult Function(_CreateSalesOrderRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSalesOrderRequest():
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
    TResult? Function(_CreateSalesOrderRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSalesOrderRequest() when $default != null:
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
            String customerId,
            DateTime orderDate,
            List<CreateSalesOrderItemRequest> items,
            DateTime? deliveryDate,
            String? notes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateSalesOrderRequest() when $default != null:
        return $default(_that.customerId, _that.orderDate, _that.items,
            _that.deliveryDate, _that.notes);
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
            String customerId,
            DateTime orderDate,
            List<CreateSalesOrderItemRequest> items,
            DateTime? deliveryDate,
            String? notes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSalesOrderRequest():
        return $default(_that.customerId, _that.orderDate, _that.items,
            _that.deliveryDate, _that.notes);
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
            String customerId,
            DateTime orderDate,
            List<CreateSalesOrderItemRequest> items,
            DateTime? deliveryDate,
            String? notes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSalesOrderRequest() when $default != null:
        return $default(_that.customerId, _that.orderDate, _that.items,
            _that.deliveryDate, _that.notes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateSalesOrderRequest implements CreateSalesOrderRequest {
  const _CreateSalesOrderRequest(
      {required this.customerId,
      required this.orderDate,
      required final List<CreateSalesOrderItemRequest> items,
      this.deliveryDate,
      this.notes})
      : _items = items;
  factory _CreateSalesOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSalesOrderRequestFromJson(json);

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

  /// Create a copy of CreateSalesOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateSalesOrderRequestCopyWith<_CreateSalesOrderRequest> get copyWith =>
      __$CreateSalesOrderRequestCopyWithImpl<_CreateSalesOrderRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateSalesOrderRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateSalesOrderRequest &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, customerId, orderDate,
      const DeepCollectionEquality().hash(_items), deliveryDate, notes);

  @override
  String toString() {
    return 'CreateSalesOrderRequest(customerId: $customerId, orderDate: $orderDate, items: $items, deliveryDate: $deliveryDate, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$CreateSalesOrderRequestCopyWith<$Res>
    implements $CreateSalesOrderRequestCopyWith<$Res> {
  factory _$CreateSalesOrderRequestCopyWith(_CreateSalesOrderRequest value,
          $Res Function(_CreateSalesOrderRequest) _then) =
      __$CreateSalesOrderRequestCopyWithImpl;
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
class __$CreateSalesOrderRequestCopyWithImpl<$Res>
    implements _$CreateSalesOrderRequestCopyWith<$Res> {
  __$CreateSalesOrderRequestCopyWithImpl(this._self, this._then);

  final _CreateSalesOrderRequest _self;
  final $Res Function(_CreateSalesOrderRequest) _then;

  /// Create a copy of CreateSalesOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? customerId = null,
    Object? orderDate = null,
    Object? items = null,
    Object? deliveryDate = freezed,
    Object? notes = freezed,
  }) {
    return _then(_CreateSalesOrderRequest(
      customerId: null == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _self.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CreateSalesOrderItemRequest>,
      deliveryDate: freezed == deliveryDate
          ? _self.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$SalesOrder {
  String get id;
  String get orderNumber;
  String get customerId;
  String get customerName;
  String get status;
  DateTime get orderDate;
  Money get total;
  List<SalesOrderItem> get items;
  DateTime get createdAt;
  DateTime? get deliveryDate;
  String? get notes;
  String? get organizationId;
  DateTime? get updatedAt;

  /// Create a copy of SalesOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SalesOrderCopyWith<SalesOrder> get copyWith =>
      _$SalesOrderCopyWithImpl<SalesOrder>(this as SalesOrder, _$identity);

  /// Serializes this SalesOrder to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SalesOrder &&
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
            const DeepCollectionEquality().equals(other.items, items) &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(items),
      createdAt,
      deliveryDate,
      notes,
      organizationId,
      updatedAt);

  @override
  String toString() {
    return 'SalesOrder(id: $id, orderNumber: $orderNumber, customerId: $customerId, customerName: $customerName, status: $status, orderDate: $orderDate, total: $total, items: $items, createdAt: $createdAt, deliveryDate: $deliveryDate, notes: $notes, organizationId: $organizationId, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $SalesOrderCopyWith<$Res> {
  factory $SalesOrderCopyWith(
          SalesOrder value, $Res Function(SalesOrder) _then) =
      _$SalesOrderCopyWithImpl;
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
class _$SalesOrderCopyWithImpl<$Res> implements $SalesOrderCopyWith<$Res> {
  _$SalesOrderCopyWithImpl(this._self, this._then);

  final SalesOrder _self;
  final $Res Function(SalesOrder) _then;

  /// Create a copy of SalesOrder
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderNumber: null == orderNumber
          ? _self.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _self.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _self.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as Money,
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SalesOrderItem>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryDate: freezed == deliveryDate
          ? _self.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationId: freezed == organizationId
          ? _self.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of SalesOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get total {
    return $MoneyCopyWith<$Res>(_self.total, (value) {
      return _then(_self.copyWith(total: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SalesOrder].
extension SalesOrderPatterns on SalesOrder {
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
    TResult Function(_SalesOrder value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SalesOrder() when $default != null:
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
    TResult Function(_SalesOrder value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SalesOrder():
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
    TResult? Function(_SalesOrder value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SalesOrder() when $default != null:
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
            DateTime? updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SalesOrder() when $default != null:
        return $default(
            _that.id,
            _that.orderNumber,
            _that.customerId,
            _that.customerName,
            _that.status,
            _that.orderDate,
            _that.total,
            _that.items,
            _that.createdAt,
            _that.deliveryDate,
            _that.notes,
            _that.organizationId,
            _that.updatedAt);
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
            DateTime? updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SalesOrder():
        return $default(
            _that.id,
            _that.orderNumber,
            _that.customerId,
            _that.customerName,
            _that.status,
            _that.orderDate,
            _that.total,
            _that.items,
            _that.createdAt,
            _that.deliveryDate,
            _that.notes,
            _that.organizationId,
            _that.updatedAt);
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
            DateTime? updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SalesOrder() when $default != null:
        return $default(
            _that.id,
            _that.orderNumber,
            _that.customerId,
            _that.customerName,
            _that.status,
            _that.orderDate,
            _that.total,
            _that.items,
            _that.createdAt,
            _that.deliveryDate,
            _that.notes,
            _that.organizationId,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SalesOrder implements SalesOrder {
  const _SalesOrder(
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
  factory _SalesOrder.fromJson(Map<String, dynamic> json) =>
      _$SalesOrderFromJson(json);

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

  /// Create a copy of SalesOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SalesOrderCopyWith<_SalesOrder> get copyWith =>
      __$SalesOrderCopyWithImpl<_SalesOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SalesOrderToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SalesOrder &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'SalesOrder(id: $id, orderNumber: $orderNumber, customerId: $customerId, customerName: $customerName, status: $status, orderDate: $orderDate, total: $total, items: $items, createdAt: $createdAt, deliveryDate: $deliveryDate, notes: $notes, organizationId: $organizationId, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$SalesOrderCopyWith<$Res>
    implements $SalesOrderCopyWith<$Res> {
  factory _$SalesOrderCopyWith(
          _SalesOrder value, $Res Function(_SalesOrder) _then) =
      __$SalesOrderCopyWithImpl;
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
class __$SalesOrderCopyWithImpl<$Res> implements _$SalesOrderCopyWith<$Res> {
  __$SalesOrderCopyWithImpl(this._self, this._then);

  final _SalesOrder _self;
  final $Res Function(_SalesOrder) _then;

  /// Create a copy of SalesOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_SalesOrder(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderNumber: null == orderNumber
          ? _self.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _self.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _self.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as Money,
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SalesOrderItem>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryDate: freezed == deliveryDate
          ? _self.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationId: freezed == organizationId
          ? _self.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of SalesOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get total {
    return $MoneyCopyWith<$Res>(_self.total, (value) {
      return _then(_self.copyWith(total: value));
    });
  }
}

/// @nodoc
mixin _$UpdateSalesOrderRequest {
  String? get orderNumber;
  DateTime? get orderDate;
  DateTime? get deliveryDate;
  String? get status;
  String? get notes;
  Map<String, dynamic>? get metadata;

  /// Create a copy of UpdateSalesOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateSalesOrderRequestCopyWith<UpdateSalesOrderRequest> get copyWith =>
      _$UpdateSalesOrderRequestCopyWithImpl<UpdateSalesOrderRequest>(
          this as UpdateSalesOrderRequest, _$identity);

  /// Serializes this UpdateSalesOrderRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateSalesOrderRequest &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderNumber,
      orderDate,
      deliveryDate,
      status,
      notes,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'UpdateSalesOrderRequest(orderNumber: $orderNumber, orderDate: $orderDate, deliveryDate: $deliveryDate, status: $status, notes: $notes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $UpdateSalesOrderRequestCopyWith<$Res> {
  factory $UpdateSalesOrderRequestCopyWith(UpdateSalesOrderRequest value,
          $Res Function(UpdateSalesOrderRequest) _then) =
      _$UpdateSalesOrderRequestCopyWithImpl;
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
class _$UpdateSalesOrderRequestCopyWithImpl<$Res>
    implements $UpdateSalesOrderRequestCopyWith<$Res> {
  _$UpdateSalesOrderRequestCopyWithImpl(this._self, this._then);

  final UpdateSalesOrderRequest _self;
  final $Res Function(UpdateSalesOrderRequest) _then;

  /// Create a copy of UpdateSalesOrderRequest
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      orderNumber: freezed == orderNumber
          ? _self.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDate: freezed == orderDate
          ? _self.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryDate: freezed == deliveryDate
          ? _self.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
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

/// Adds pattern-matching-related methods to [UpdateSalesOrderRequest].
extension UpdateSalesOrderRequestPatterns on UpdateSalesOrderRequest {
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
    TResult Function(_UpdateSalesOrderRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateSalesOrderRequest() when $default != null:
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
    TResult Function(_UpdateSalesOrderRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateSalesOrderRequest():
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
    TResult? Function(_UpdateSalesOrderRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateSalesOrderRequest() when $default != null:
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
            String? orderNumber,
            DateTime? orderDate,
            DateTime? deliveryDate,
            String? status,
            String? notes,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateSalesOrderRequest() when $default != null:
        return $default(_that.orderNumber, _that.orderDate, _that.deliveryDate,
            _that.status, _that.notes, _that.metadata);
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
            String? orderNumber,
            DateTime? orderDate,
            DateTime? deliveryDate,
            String? status,
            String? notes,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateSalesOrderRequest():
        return $default(_that.orderNumber, _that.orderDate, _that.deliveryDate,
            _that.status, _that.notes, _that.metadata);
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
            String? orderNumber,
            DateTime? orderDate,
            DateTime? deliveryDate,
            String? status,
            String? notes,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateSalesOrderRequest() when $default != null:
        return $default(_that.orderNumber, _that.orderDate, _that.deliveryDate,
            _that.status, _that.notes, _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateSalesOrderRequest implements UpdateSalesOrderRequest {
  const _UpdateSalesOrderRequest(
      {this.orderNumber,
      this.orderDate,
      this.deliveryDate,
      this.status,
      this.notes,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _UpdateSalesOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateSalesOrderRequestFromJson(json);

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

  /// Create a copy of UpdateSalesOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateSalesOrderRequestCopyWith<_UpdateSalesOrderRequest> get copyWith =>
      __$UpdateSalesOrderRequestCopyWithImpl<_UpdateSalesOrderRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateSalesOrderRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateSalesOrderRequest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderNumber,
      orderDate,
      deliveryDate,
      status,
      notes,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'UpdateSalesOrderRequest(orderNumber: $orderNumber, orderDate: $orderDate, deliveryDate: $deliveryDate, status: $status, notes: $notes, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$UpdateSalesOrderRequestCopyWith<$Res>
    implements $UpdateSalesOrderRequestCopyWith<$Res> {
  factory _$UpdateSalesOrderRequestCopyWith(_UpdateSalesOrderRequest value,
          $Res Function(_UpdateSalesOrderRequest) _then) =
      __$UpdateSalesOrderRequestCopyWithImpl;
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
class __$UpdateSalesOrderRequestCopyWithImpl<$Res>
    implements _$UpdateSalesOrderRequestCopyWith<$Res> {
  __$UpdateSalesOrderRequestCopyWithImpl(this._self, this._then);

  final _UpdateSalesOrderRequest _self;
  final $Res Function(_UpdateSalesOrderRequest) _then;

  /// Create a copy of UpdateSalesOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderNumber = freezed,
    Object? orderDate = freezed,
    Object? deliveryDate = freezed,
    Object? status = freezed,
    Object? notes = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_UpdateSalesOrderRequest(
      orderNumber: freezed == orderNumber
          ? _self.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDate: freezed == orderDate
          ? _self.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryDate: freezed == deliveryDate
          ? _self.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
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
mixin _$SalesOrderItem {
  String get id;
  String get itemId;
  String get itemName;
  double get quantity;
  Money get unitPrice;
  Money get totalPrice;
  String? get description;

  /// Create a copy of SalesOrderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SalesOrderItemCopyWith<SalesOrderItem> get copyWith =>
      _$SalesOrderItemCopyWithImpl<SalesOrderItem>(
          this as SalesOrderItem, _$identity);

  /// Serializes this SalesOrderItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SalesOrderItem &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, itemId, itemName, quantity,
      unitPrice, totalPrice, description);

  @override
  String toString() {
    return 'SalesOrderItem(id: $id, itemId: $itemId, itemName: $itemName, quantity: $quantity, unitPrice: $unitPrice, totalPrice: $totalPrice, description: $description)';
  }
}

/// @nodoc
abstract mixin class $SalesOrderItemCopyWith<$Res> {
  factory $SalesOrderItemCopyWith(
          SalesOrderItem value, $Res Function(SalesOrderItem) _then) =
      _$SalesOrderItemCopyWithImpl;
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
class _$SalesOrderItemCopyWithImpl<$Res>
    implements $SalesOrderItemCopyWith<$Res> {
  _$SalesOrderItemCopyWithImpl(this._self, this._then);

  final SalesOrderItem _self;
  final $Res Function(SalesOrderItem) _then;

  /// Create a copy of SalesOrderItem
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _self.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unitPrice: null == unitPrice
          ? _self.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as Money,
      totalPrice: null == totalPrice
          ? _self.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as Money,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of SalesOrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get unitPrice {
    return $MoneyCopyWith<$Res>(_self.unitPrice, (value) {
      return _then(_self.copyWith(unitPrice: value));
    });
  }

  /// Create a copy of SalesOrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get totalPrice {
    return $MoneyCopyWith<$Res>(_self.totalPrice, (value) {
      return _then(_self.copyWith(totalPrice: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SalesOrderItem].
extension SalesOrderItemPatterns on SalesOrderItem {
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
    TResult Function(_SalesOrderItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SalesOrderItem() when $default != null:
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
    TResult Function(_SalesOrderItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SalesOrderItem():
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
    TResult? Function(_SalesOrderItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SalesOrderItem() when $default != null:
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
    TResult Function(String id, String itemId, String itemName, double quantity,
            Money unitPrice, Money totalPrice, String? description)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SalesOrderItem() when $default != null:
        return $default(_that.id, _that.itemId, _that.itemName, _that.quantity,
            _that.unitPrice, _that.totalPrice, _that.description);
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
    TResult Function(String id, String itemId, String itemName, double quantity,
            Money unitPrice, Money totalPrice, String? description)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SalesOrderItem():
        return $default(_that.id, _that.itemId, _that.itemName, _that.quantity,
            _that.unitPrice, _that.totalPrice, _that.description);
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
            String itemId,
            String itemName,
            double quantity,
            Money unitPrice,
            Money totalPrice,
            String? description)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SalesOrderItem() when $default != null:
        return $default(_that.id, _that.itemId, _that.itemName, _that.quantity,
            _that.unitPrice, _that.totalPrice, _that.description);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SalesOrderItem implements SalesOrderItem {
  const _SalesOrderItem(
      {required this.id,
      required this.itemId,
      required this.itemName,
      required this.quantity,
      required this.unitPrice,
      required this.totalPrice,
      this.description});
  factory _SalesOrderItem.fromJson(Map<String, dynamic> json) =>
      _$SalesOrderItemFromJson(json);

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

  /// Create a copy of SalesOrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SalesOrderItemCopyWith<_SalesOrderItem> get copyWith =>
      __$SalesOrderItemCopyWithImpl<_SalesOrderItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SalesOrderItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SalesOrderItem &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, itemId, itemName, quantity,
      unitPrice, totalPrice, description);

  @override
  String toString() {
    return 'SalesOrderItem(id: $id, itemId: $itemId, itemName: $itemName, quantity: $quantity, unitPrice: $unitPrice, totalPrice: $totalPrice, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$SalesOrderItemCopyWith<$Res>
    implements $SalesOrderItemCopyWith<$Res> {
  factory _$SalesOrderItemCopyWith(
          _SalesOrderItem value, $Res Function(_SalesOrderItem) _then) =
      __$SalesOrderItemCopyWithImpl;
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
class __$SalesOrderItemCopyWithImpl<$Res>
    implements _$SalesOrderItemCopyWith<$Res> {
  __$SalesOrderItemCopyWithImpl(this._self, this._then);

  final _SalesOrderItem _self;
  final $Res Function(_SalesOrderItem) _then;

  /// Create a copy of SalesOrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? itemId = null,
    Object? itemName = null,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? totalPrice = null,
    Object? description = freezed,
  }) {
    return _then(_SalesOrderItem(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _self.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      unitPrice: null == unitPrice
          ? _self.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as Money,
      totalPrice: null == totalPrice
          ? _self.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as Money,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of SalesOrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get unitPrice {
    return $MoneyCopyWith<$Res>(_self.unitPrice, (value) {
      return _then(_self.copyWith(unitPrice: value));
    });
  }

  /// Create a copy of SalesOrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get totalPrice {
    return $MoneyCopyWith<$Res>(_self.totalPrice, (value) {
      return _then(_self.copyWith(totalPrice: value));
    });
  }
}

// dart format on
