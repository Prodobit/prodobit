// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_reservation_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StockReservation _$StockReservationFromJson(Map<String, dynamic> json) {
  return _StockReservation.fromJson(json);
}

/// @nodoc
mixin _$StockReservation {
  String get id => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  String get locationId => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  double get reservedQuantity => throw _privateConstructorUsedError;
  double get consumedQuantity => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // 'active', 'consumed', 'released', 'expired'
  String get purpose =>
      throw _privateConstructorUsedError; // 'sales_order', 'production_order', 'transfer', 'custom'
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String? get referenceId => throw _privateConstructorUsedError;
  String? get referenceType => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  DateTime? get releasedAt => throw _privateConstructorUsedError;
  DateTime? get consumedAt => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockReservationCopyWith<StockReservation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockReservationCopyWith<$Res> {
  factory $StockReservationCopyWith(
          StockReservation value, $Res Function(StockReservation) then) =
      _$StockReservationCopyWithImpl<$Res, StockReservation>;
  @useResult
  $Res call(
      {String id,
      String itemId,
      String locationId,
      double quantity,
      double reservedQuantity,
      double consumedQuantity,
      String status,
      String purpose,
      DateTime createdAt,
      DateTime updatedAt,
      String? referenceId,
      String? referenceType,
      String? notes,
      DateTime? expiresAt,
      DateTime? releasedAt,
      DateTime? consumedAt,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$StockReservationCopyWithImpl<$Res, $Val extends StockReservation>
    implements $StockReservationCopyWith<$Res> {
  _$StockReservationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? itemId = null,
    Object? locationId = null,
    Object? quantity = null,
    Object? reservedQuantity = null,
    Object? consumedQuantity = null,
    Object? status = null,
    Object? purpose = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? referenceId = freezed,
    Object? referenceType = freezed,
    Object? notes = freezed,
    Object? expiresAt = freezed,
    Object? releasedAt = freezed,
    Object? consumedAt = freezed,
    Object? metadata = freezed,
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
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      reservedQuantity: null == reservedQuantity
          ? _value.reservedQuantity
          : reservedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      consumedQuantity: null == consumedQuantity
          ? _value.consumedQuantity
          : consumedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceType: freezed == referenceType
          ? _value.referenceType
          : referenceType // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      releasedAt: freezed == releasedAt
          ? _value.releasedAt
          : releasedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      consumedAt: freezed == consumedAt
          ? _value.consumedAt
          : consumedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockReservationImplCopyWith<$Res>
    implements $StockReservationCopyWith<$Res> {
  factory _$$StockReservationImplCopyWith(_$StockReservationImpl value,
          $Res Function(_$StockReservationImpl) then) =
      __$$StockReservationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String itemId,
      String locationId,
      double quantity,
      double reservedQuantity,
      double consumedQuantity,
      String status,
      String purpose,
      DateTime createdAt,
      DateTime updatedAt,
      String? referenceId,
      String? referenceType,
      String? notes,
      DateTime? expiresAt,
      DateTime? releasedAt,
      DateTime? consumedAt,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$StockReservationImplCopyWithImpl<$Res>
    extends _$StockReservationCopyWithImpl<$Res, _$StockReservationImpl>
    implements _$$StockReservationImplCopyWith<$Res> {
  __$$StockReservationImplCopyWithImpl(_$StockReservationImpl _value,
      $Res Function(_$StockReservationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? itemId = null,
    Object? locationId = null,
    Object? quantity = null,
    Object? reservedQuantity = null,
    Object? consumedQuantity = null,
    Object? status = null,
    Object? purpose = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? referenceId = freezed,
    Object? referenceType = freezed,
    Object? notes = freezed,
    Object? expiresAt = freezed,
    Object? releasedAt = freezed,
    Object? consumedAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$StockReservationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      reservedQuantity: null == reservedQuantity
          ? _value.reservedQuantity
          : reservedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      consumedQuantity: null == consumedQuantity
          ? _value.consumedQuantity
          : consumedQuantity // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceType: freezed == referenceType
          ? _value.referenceType
          : referenceType // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      releasedAt: freezed == releasedAt
          ? _value.releasedAt
          : releasedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      consumedAt: freezed == consumedAt
          ? _value.consumedAt
          : consumedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockReservationImpl implements _StockReservation {
  const _$StockReservationImpl(
      {required this.id,
      required this.itemId,
      required this.locationId,
      required this.quantity,
      required this.reservedQuantity,
      required this.consumedQuantity,
      required this.status,
      required this.purpose,
      required this.createdAt,
      required this.updatedAt,
      this.referenceId,
      this.referenceType,
      this.notes,
      this.expiresAt,
      this.releasedAt,
      this.consumedAt,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$StockReservationImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockReservationImplFromJson(json);

  @override
  final String id;
  @override
  final String itemId;
  @override
  final String locationId;
  @override
  final double quantity;
  @override
  final double reservedQuantity;
  @override
  final double consumedQuantity;
  @override
  final String status;
// 'active', 'consumed', 'released', 'expired'
  @override
  final String purpose;
// 'sales_order', 'production_order', 'transfer', 'custom'
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String? referenceId;
  @override
  final String? referenceType;
  @override
  final String? notes;
  @override
  final DateTime? expiresAt;
  @override
  final DateTime? releasedAt;
  @override
  final DateTime? consumedAt;
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
    return 'StockReservation(id: $id, itemId: $itemId, locationId: $locationId, quantity: $quantity, reservedQuantity: $reservedQuantity, consumedQuantity: $consumedQuantity, status: $status, purpose: $purpose, createdAt: $createdAt, updatedAt: $updatedAt, referenceId: $referenceId, referenceType: $referenceType, notes: $notes, expiresAt: $expiresAt, releasedAt: $releasedAt, consumedAt: $consumedAt, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockReservationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.reservedQuantity, reservedQuantity) ||
                other.reservedQuantity == reservedQuantity) &&
            (identical(other.consumedQuantity, consumedQuantity) ||
                other.consumedQuantity == consumedQuantity) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.referenceType, referenceType) ||
                other.referenceType == referenceType) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.releasedAt, releasedAt) ||
                other.releasedAt == releasedAt) &&
            (identical(other.consumedAt, consumedAt) ||
                other.consumedAt == consumedAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      itemId,
      locationId,
      quantity,
      reservedQuantity,
      consumedQuantity,
      status,
      purpose,
      createdAt,
      updatedAt,
      referenceId,
      referenceType,
      notes,
      expiresAt,
      releasedAt,
      consumedAt,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockReservationImplCopyWith<_$StockReservationImpl> get copyWith =>
      __$$StockReservationImplCopyWithImpl<_$StockReservationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockReservationImplToJson(
      this,
    );
  }
}

abstract class _StockReservation implements StockReservation {
  const factory _StockReservation(
      {required final String id,
      required final String itemId,
      required final String locationId,
      required final double quantity,
      required final double reservedQuantity,
      required final double consumedQuantity,
      required final String status,
      required final String purpose,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final String? referenceId,
      final String? referenceType,
      final String? notes,
      final DateTime? expiresAt,
      final DateTime? releasedAt,
      final DateTime? consumedAt,
      final Map<String, dynamic>? metadata}) = _$StockReservationImpl;

  factory _StockReservation.fromJson(Map<String, dynamic> json) =
      _$StockReservationImpl.fromJson;

  @override
  String get id;
  @override
  String get itemId;
  @override
  String get locationId;
  @override
  double get quantity;
  @override
  double get reservedQuantity;
  @override
  double get consumedQuantity;
  @override
  String get status;
  @override // 'active', 'consumed', 'released', 'expired'
  String get purpose;
  @override // 'sales_order', 'production_order', 'transfer', 'custom'
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String? get referenceId;
  @override
  String? get referenceType;
  @override
  String? get notes;
  @override
  DateTime? get expiresAt;
  @override
  DateTime? get releasedAt;
  @override
  DateTime? get consumedAt;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$StockReservationImplCopyWith<_$StockReservationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateStockReservationRequest _$CreateStockReservationRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateStockReservationRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateStockReservationRequest {
  String get itemId => throw _privateConstructorUsedError;
  String get locationId => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  String get purpose => throw _privateConstructorUsedError;
  String? get referenceId => throw _privateConstructorUsedError;
  String? get referenceType => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateStockReservationRequestCopyWith<CreateStockReservationRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateStockReservationRequestCopyWith<$Res> {
  factory $CreateStockReservationRequestCopyWith(
          CreateStockReservationRequest value,
          $Res Function(CreateStockReservationRequest) then) =
      _$CreateStockReservationRequestCopyWithImpl<$Res,
          CreateStockReservationRequest>;
  @useResult
  $Res call(
      {String itemId,
      String locationId,
      double quantity,
      String purpose,
      String? referenceId,
      String? referenceType,
      String? notes,
      DateTime? expiresAt,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$CreateStockReservationRequestCopyWithImpl<$Res,
        $Val extends CreateStockReservationRequest>
    implements $CreateStockReservationRequestCopyWith<$Res> {
  _$CreateStockReservationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? locationId = null,
    Object? quantity = null,
    Object? purpose = null,
    Object? referenceId = freezed,
    Object? referenceType = freezed,
    Object? notes = freezed,
    Object? expiresAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceType: freezed == referenceType
          ? _value.referenceType
          : referenceType // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateStockReservationRequestImplCopyWith<$Res>
    implements $CreateStockReservationRequestCopyWith<$Res> {
  factory _$$CreateStockReservationRequestImplCopyWith(
          _$CreateStockReservationRequestImpl value,
          $Res Function(_$CreateStockReservationRequestImpl) then) =
      __$$CreateStockReservationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String itemId,
      String locationId,
      double quantity,
      String purpose,
      String? referenceId,
      String? referenceType,
      String? notes,
      DateTime? expiresAt,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$CreateStockReservationRequestImplCopyWithImpl<$Res>
    extends _$CreateStockReservationRequestCopyWithImpl<$Res,
        _$CreateStockReservationRequestImpl>
    implements _$$CreateStockReservationRequestImplCopyWith<$Res> {
  __$$CreateStockReservationRequestImplCopyWithImpl(
      _$CreateStockReservationRequestImpl _value,
      $Res Function(_$CreateStockReservationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? locationId = null,
    Object? quantity = null,
    Object? purpose = null,
    Object? referenceId = freezed,
    Object? referenceType = freezed,
    Object? notes = freezed,
    Object? expiresAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$CreateStockReservationRequestImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceType: freezed == referenceType
          ? _value.referenceType
          : referenceType // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateStockReservationRequestImpl
    implements _CreateStockReservationRequest {
  const _$CreateStockReservationRequestImpl(
      {required this.itemId,
      required this.locationId,
      required this.quantity,
      required this.purpose,
      this.referenceId,
      this.referenceType,
      this.notes,
      this.expiresAt,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$CreateStockReservationRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateStockReservationRequestImplFromJson(json);

  @override
  final String itemId;
  @override
  final String locationId;
  @override
  final double quantity;
  @override
  final String purpose;
  @override
  final String? referenceId;
  @override
  final String? referenceType;
  @override
  final String? notes;
  @override
  final DateTime? expiresAt;
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
    return 'CreateStockReservationRequest(itemId: $itemId, locationId: $locationId, quantity: $quantity, purpose: $purpose, referenceId: $referenceId, referenceType: $referenceType, notes: $notes, expiresAt: $expiresAt, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateStockReservationRequestImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.referenceType, referenceType) ||
                other.referenceType == referenceType) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemId,
      locationId,
      quantity,
      purpose,
      referenceId,
      referenceType,
      notes,
      expiresAt,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateStockReservationRequestImplCopyWith<
          _$CreateStockReservationRequestImpl>
      get copyWith => __$$CreateStockReservationRequestImplCopyWithImpl<
          _$CreateStockReservationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateStockReservationRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateStockReservationRequest
    implements CreateStockReservationRequest {
  const factory _CreateStockReservationRequest(
          {required final String itemId,
          required final String locationId,
          required final double quantity,
          required final String purpose,
          final String? referenceId,
          final String? referenceType,
          final String? notes,
          final DateTime? expiresAt,
          final Map<String, dynamic>? metadata}) =
      _$CreateStockReservationRequestImpl;

  factory _CreateStockReservationRequest.fromJson(Map<String, dynamic> json) =
      _$CreateStockReservationRequestImpl.fromJson;

  @override
  String get itemId;
  @override
  String get locationId;
  @override
  double get quantity;
  @override
  String get purpose;
  @override
  String? get referenceId;
  @override
  String? get referenceType;
  @override
  String? get notes;
  @override
  DateTime? get expiresAt;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$CreateStockReservationRequestImplCopyWith<
          _$CreateStockReservationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateStockReservationRequest _$UpdateStockReservationRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateStockReservationRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateStockReservationRequest {
  double? get quantity => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateStockReservationRequestCopyWith<UpdateStockReservationRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStockReservationRequestCopyWith<$Res> {
  factory $UpdateStockReservationRequestCopyWith(
          UpdateStockReservationRequest value,
          $Res Function(UpdateStockReservationRequest) then) =
      _$UpdateStockReservationRequestCopyWithImpl<$Res,
          UpdateStockReservationRequest>;
  @useResult
  $Res call(
      {double? quantity,
      String? notes,
      DateTime? expiresAt,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$UpdateStockReservationRequestCopyWithImpl<$Res,
        $Val extends UpdateStockReservationRequest>
    implements $UpdateStockReservationRequestCopyWith<$Res> {
  _$UpdateStockReservationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = freezed,
    Object? notes = freezed,
    Object? expiresAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateStockReservationRequestImplCopyWith<$Res>
    implements $UpdateStockReservationRequestCopyWith<$Res> {
  factory _$$UpdateStockReservationRequestImplCopyWith(
          _$UpdateStockReservationRequestImpl value,
          $Res Function(_$UpdateStockReservationRequestImpl) then) =
      __$$UpdateStockReservationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? quantity,
      String? notes,
      DateTime? expiresAt,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$UpdateStockReservationRequestImplCopyWithImpl<$Res>
    extends _$UpdateStockReservationRequestCopyWithImpl<$Res,
        _$UpdateStockReservationRequestImpl>
    implements _$$UpdateStockReservationRequestImplCopyWith<$Res> {
  __$$UpdateStockReservationRequestImplCopyWithImpl(
      _$UpdateStockReservationRequestImpl _value,
      $Res Function(_$UpdateStockReservationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = freezed,
    Object? notes = freezed,
    Object? expiresAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$UpdateStockReservationRequestImpl(
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateStockReservationRequestImpl
    implements _UpdateStockReservationRequest {
  const _$UpdateStockReservationRequestImpl(
      {this.quantity,
      this.notes,
      this.expiresAt,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$UpdateStockReservationRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateStockReservationRequestImplFromJson(json);

  @override
  final double? quantity;
  @override
  final String? notes;
  @override
  final DateTime? expiresAt;
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
    return 'UpdateStockReservationRequest(quantity: $quantity, notes: $notes, expiresAt: $expiresAt, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStockReservationRequestImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, quantity, notes, expiresAt,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStockReservationRequestImplCopyWith<
          _$UpdateStockReservationRequestImpl>
      get copyWith => __$$UpdateStockReservationRequestImplCopyWithImpl<
          _$UpdateStockReservationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateStockReservationRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateStockReservationRequest
    implements UpdateStockReservationRequest {
  const factory _UpdateStockReservationRequest(
          {final double? quantity,
          final String? notes,
          final DateTime? expiresAt,
          final Map<String, dynamic>? metadata}) =
      _$UpdateStockReservationRequestImpl;

  factory _UpdateStockReservationRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateStockReservationRequestImpl.fromJson;

  @override
  double? get quantity;
  @override
  String? get notes;
  @override
  DateTime? get expiresAt;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$UpdateStockReservationRequestImplCopyWith<
          _$UpdateStockReservationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StockReservationFilters _$StockReservationFiltersFromJson(
    Map<String, dynamic> json) {
  return _StockReservationFilters.fromJson(json);
}

/// @nodoc
mixin _$StockReservationFilters {
  String? get itemId => throw _privateConstructorUsedError;
  String? get locationId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get purpose => throw _privateConstructorUsedError;
  String? get referenceId => throw _privateConstructorUsedError;
  String? get referenceType => throw _privateConstructorUsedError;
  DateTime? get createdAfter => throw _privateConstructorUsedError;
  DateTime? get createdBefore => throw _privateConstructorUsedError;
  DateTime? get expiresAfter => throw _privateConstructorUsedError;
  DateTime? get expiresBefore => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String? get sortBy => throw _privateConstructorUsedError;
  String? get sortOrder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockReservationFiltersCopyWith<StockReservationFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockReservationFiltersCopyWith<$Res> {
  factory $StockReservationFiltersCopyWith(StockReservationFilters value,
          $Res Function(StockReservationFilters) then) =
      _$StockReservationFiltersCopyWithImpl<$Res, StockReservationFilters>;
  @useResult
  $Res call(
      {String? itemId,
      String? locationId,
      String? status,
      String? purpose,
      String? referenceId,
      String? referenceType,
      DateTime? createdAfter,
      DateTime? createdBefore,
      DateTime? expiresAfter,
      DateTime? expiresBefore,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class _$StockReservationFiltersCopyWithImpl<$Res,
        $Val extends StockReservationFilters>
    implements $StockReservationFiltersCopyWith<$Res> {
  _$StockReservationFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = freezed,
    Object? locationId = freezed,
    Object? status = freezed,
    Object? purpose = freezed,
    Object? referenceId = freezed,
    Object? referenceType = freezed,
    Object? createdAfter = freezed,
    Object? createdBefore = freezed,
    Object? expiresAfter = freezed,
    Object? expiresBefore = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_value.copyWith(
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceType: freezed == referenceType
          ? _value.referenceType
          : referenceType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAfter: freezed == createdAfter
          ? _value.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _value.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresAfter: freezed == expiresAfter
          ? _value.expiresAfter
          : expiresAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresBefore: freezed == expiresBefore
          ? _value.expiresBefore
          : expiresBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
abstract class _$$StockReservationFiltersImplCopyWith<$Res>
    implements $StockReservationFiltersCopyWith<$Res> {
  factory _$$StockReservationFiltersImplCopyWith(
          _$StockReservationFiltersImpl value,
          $Res Function(_$StockReservationFiltersImpl) then) =
      __$$StockReservationFiltersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? itemId,
      String? locationId,
      String? status,
      String? purpose,
      String? referenceId,
      String? referenceType,
      DateTime? createdAfter,
      DateTime? createdBefore,
      DateTime? expiresAfter,
      DateTime? expiresBefore,
      int? page,
      int? limit,
      String? sortBy,
      String? sortOrder});
}

/// @nodoc
class __$$StockReservationFiltersImplCopyWithImpl<$Res>
    extends _$StockReservationFiltersCopyWithImpl<$Res,
        _$StockReservationFiltersImpl>
    implements _$$StockReservationFiltersImplCopyWith<$Res> {
  __$$StockReservationFiltersImplCopyWithImpl(
      _$StockReservationFiltersImpl _value,
      $Res Function(_$StockReservationFiltersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = freezed,
    Object? locationId = freezed,
    Object? status = freezed,
    Object? purpose = freezed,
    Object? referenceId = freezed,
    Object? referenceType = freezed,
    Object? createdAfter = freezed,
    Object? createdBefore = freezed,
    Object? expiresAfter = freezed,
    Object? expiresBefore = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortOrder = freezed,
  }) {
    return _then(_$StockReservationFiltersImpl(
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceType: freezed == referenceType
          ? _value.referenceType
          : referenceType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAfter: freezed == createdAfter
          ? _value.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _value.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresAfter: freezed == expiresAfter
          ? _value.expiresAfter
          : expiresAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresBefore: freezed == expiresBefore
          ? _value.expiresBefore
          : expiresBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
class _$StockReservationFiltersImpl extends _StockReservationFilters {
  const _$StockReservationFiltersImpl(
      {this.itemId,
      this.locationId,
      this.status,
      this.purpose,
      this.referenceId,
      this.referenceType,
      this.createdAfter,
      this.createdBefore,
      this.expiresAfter,
      this.expiresBefore,
      this.page,
      this.limit,
      this.sortBy,
      this.sortOrder})
      : super._();

  factory _$StockReservationFiltersImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockReservationFiltersImplFromJson(json);

  @override
  final String? itemId;
  @override
  final String? locationId;
  @override
  final String? status;
  @override
  final String? purpose;
  @override
  final String? referenceId;
  @override
  final String? referenceType;
  @override
  final DateTime? createdAfter;
  @override
  final DateTime? createdBefore;
  @override
  final DateTime? expiresAfter;
  @override
  final DateTime? expiresBefore;
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
    return 'StockReservationFilters(itemId: $itemId, locationId: $locationId, status: $status, purpose: $purpose, referenceId: $referenceId, referenceType: $referenceType, createdAfter: $createdAfter, createdBefore: $createdBefore, expiresAfter: $expiresAfter, expiresBefore: $expiresBefore, page: $page, limit: $limit, sortBy: $sortBy, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockReservationFiltersImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.referenceType, referenceType) ||
                other.referenceType == referenceType) &&
            (identical(other.createdAfter, createdAfter) ||
                other.createdAfter == createdAfter) &&
            (identical(other.createdBefore, createdBefore) ||
                other.createdBefore == createdBefore) &&
            (identical(other.expiresAfter, expiresAfter) ||
                other.expiresAfter == expiresAfter) &&
            (identical(other.expiresBefore, expiresBefore) ||
                other.expiresBefore == expiresBefore) &&
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
      itemId,
      locationId,
      status,
      purpose,
      referenceId,
      referenceType,
      createdAfter,
      createdBefore,
      expiresAfter,
      expiresBefore,
      page,
      limit,
      sortBy,
      sortOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockReservationFiltersImplCopyWith<_$StockReservationFiltersImpl>
      get copyWith => __$$StockReservationFiltersImplCopyWithImpl<
          _$StockReservationFiltersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockReservationFiltersImplToJson(
      this,
    );
  }
}

abstract class _StockReservationFilters extends StockReservationFilters {
  const factory _StockReservationFilters(
      {final String? itemId,
      final String? locationId,
      final String? status,
      final String? purpose,
      final String? referenceId,
      final String? referenceType,
      final DateTime? createdAfter,
      final DateTime? createdBefore,
      final DateTime? expiresAfter,
      final DateTime? expiresBefore,
      final int? page,
      final int? limit,
      final String? sortBy,
      final String? sortOrder}) = _$StockReservationFiltersImpl;
  const _StockReservationFilters._() : super._();

  factory _StockReservationFilters.fromJson(Map<String, dynamic> json) =
      _$StockReservationFiltersImpl.fromJson;

  @override
  String? get itemId;
  @override
  String? get locationId;
  @override
  String? get status;
  @override
  String? get purpose;
  @override
  String? get referenceId;
  @override
  String? get referenceType;
  @override
  DateTime? get createdAfter;
  @override
  DateTime? get createdBefore;
  @override
  DateTime? get expiresAfter;
  @override
  DateTime? get expiresBefore;
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
  _$$StockReservationFiltersImplCopyWith<_$StockReservationFiltersImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsumeStockReservationRequest _$ConsumeStockReservationRequestFromJson(
    Map<String, dynamic> json) {
  return _ConsumeStockReservationRequest.fromJson(json);
}

/// @nodoc
mixin _$ConsumeStockReservationRequest {
  double get quantity => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsumeStockReservationRequestCopyWith<ConsumeStockReservationRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsumeStockReservationRequestCopyWith<$Res> {
  factory $ConsumeStockReservationRequestCopyWith(
          ConsumeStockReservationRequest value,
          $Res Function(ConsumeStockReservationRequest) then) =
      _$ConsumeStockReservationRequestCopyWithImpl<$Res,
          ConsumeStockReservationRequest>;
  @useResult
  $Res call({double quantity, String? notes});
}

/// @nodoc
class _$ConsumeStockReservationRequestCopyWithImpl<$Res,
        $Val extends ConsumeStockReservationRequest>
    implements $ConsumeStockReservationRequestCopyWith<$Res> {
  _$ConsumeStockReservationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsumeStockReservationRequestImplCopyWith<$Res>
    implements $ConsumeStockReservationRequestCopyWith<$Res> {
  factory _$$ConsumeStockReservationRequestImplCopyWith(
          _$ConsumeStockReservationRequestImpl value,
          $Res Function(_$ConsumeStockReservationRequestImpl) then) =
      __$$ConsumeStockReservationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double quantity, String? notes});
}

/// @nodoc
class __$$ConsumeStockReservationRequestImplCopyWithImpl<$Res>
    extends _$ConsumeStockReservationRequestCopyWithImpl<$Res,
        _$ConsumeStockReservationRequestImpl>
    implements _$$ConsumeStockReservationRequestImplCopyWith<$Res> {
  __$$ConsumeStockReservationRequestImplCopyWithImpl(
      _$ConsumeStockReservationRequestImpl _value,
      $Res Function(_$ConsumeStockReservationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? notes = freezed,
  }) {
    return _then(_$ConsumeStockReservationRequestImpl(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsumeStockReservationRequestImpl
    implements _ConsumeStockReservationRequest {
  const _$ConsumeStockReservationRequestImpl(
      {required this.quantity, this.notes});

  factory _$ConsumeStockReservationRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConsumeStockReservationRequestImplFromJson(json);

  @override
  final double quantity;
  @override
  final String? notes;

  @override
  String toString() {
    return 'ConsumeStockReservationRequest(quantity: $quantity, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsumeStockReservationRequestImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, quantity, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsumeStockReservationRequestImplCopyWith<
          _$ConsumeStockReservationRequestImpl>
      get copyWith => __$$ConsumeStockReservationRequestImplCopyWithImpl<
          _$ConsumeStockReservationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsumeStockReservationRequestImplToJson(
      this,
    );
  }
}

abstract class _ConsumeStockReservationRequest
    implements ConsumeStockReservationRequest {
  const factory _ConsumeStockReservationRequest(
      {required final double quantity,
      final String? notes}) = _$ConsumeStockReservationRequestImpl;

  factory _ConsumeStockReservationRequest.fromJson(Map<String, dynamic> json) =
      _$ConsumeStockReservationRequestImpl.fromJson;

  @override
  double get quantity;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$ConsumeStockReservationRequestImplCopyWith<
          _$ConsumeStockReservationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
